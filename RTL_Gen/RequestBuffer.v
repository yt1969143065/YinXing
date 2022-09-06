module RequestBuffer(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [2:0]  io_in_bits_channel,
  input  [2:0]  io_in_bits_opcode,
  input  [2:0]  io_in_bits_param,
  input  [2:0]  io_in_bits_size,
  input  [5:0]  io_in_bits_source,
  input  [7:0]  io_in_bits_set,
  input  [20:0] io_in_bits_tag,
  input  [5:0]  io_in_bits_off,
  input  [2:0]  io_in_bits_bufIdx,
  input         io_in_bits_needHint,
  input         io_in_bits_isPrefetch,
  input  [1:0]  io_in_bits_alias,
  input         io_in_bits_preferCache,
  input         io_in_bits_dirty,
  input         io_in_bits_fromProbeHelper,
  input         io_in_bits_fromCmoHelper,
  input         io_in_bits_needProbeAckData,
  input         io_out_ready,
  output        io_out_valid,
  output [2:0]  io_out_bits_channel,
  output [2:0]  io_out_bits_opcode,
  output [2:0]  io_out_bits_param,
  output [2:0]  io_out_bits_size,
  output [5:0]  io_out_bits_source,
  output [7:0]  io_out_bits_set,
  output [20:0] io_out_bits_tag,
  output [5:0]  io_out_bits_off,
  output [2:0]  io_out_bits_bufIdx,
  output        io_out_bits_needHint,
  output        io_out_bits_isPrefetch,
  output [1:0]  io_out_bits_alias,
  output        io_out_bits_preferCache,
  output        io_out_bits_dirty,
  output        io_out_bits_fromProbeHelper,
  output        io_out_bits_fromCmoHelper,
  output        io_out_bits_needProbeAckData,
  input         io_mshr_status_0_valid,
  input  [7:0]  io_mshr_status_0_bits_set,
  input         io_mshr_status_0_bits_will_free,
  input         io_mshr_status_1_valid,
  input  [7:0]  io_mshr_status_1_bits_set,
  input         io_mshr_status_1_bits_will_free,
  input         io_mshr_status_2_valid,
  input  [7:0]  io_mshr_status_2_bits_set,
  input         io_mshr_status_2_bits_will_free,
  input         io_mshr_status_3_valid,
  input  [7:0]  io_mshr_status_3_bits_set,
  input         io_mshr_status_3_bits_will_free,
  input         io_mshr_status_4_valid,
  input  [7:0]  io_mshr_status_4_bits_set,
  input         io_mshr_status_4_bits_will_free,
  input         io_mshr_status_5_valid,
  input  [7:0]  io_mshr_status_5_bits_set,
  input         io_mshr_status_5_bits_will_free,
  input         io_mshr_status_6_valid,
  input  [7:0]  io_mshr_status_6_bits_set,
  input         io_mshr_status_6_bits_will_free,
  input         io_mshr_status_7_valid,
  input  [7:0]  io_mshr_status_7_bits_set,
  input         io_mshr_status_7_bits_will_free,
  input         io_mshr_status_8_valid,
  input  [7:0]  io_mshr_status_8_bits_set,
  input         io_mshr_status_8_bits_will_free,
  input         io_mshr_status_9_valid,
  input  [7:0]  io_mshr_status_9_bits_set,
  input         io_mshr_status_9_bits_will_free,
  input         io_mshr_status_10_valid,
  input  [7:0]  io_mshr_status_10_bits_set,
  input         io_mshr_status_10_bits_will_free,
  input         io_mshr_status_11_valid,
  input  [7:0]  io_mshr_status_11_bits_set,
  input         io_mshr_status_11_bits_will_free,
  input         io_mshr_status_12_valid,
  input  [7:0]  io_mshr_status_12_bits_set,
  input         io_mshr_status_12_bits_will_free,
  input         io_mshr_status_13_valid,
  input  [7:0]  io_mshr_status_13_bits_set,
  input         io_mshr_status_13_bits_will_free,
  output [5:0]  perfinfo_0,
  output [5:0]  perfinfo_1,
  output [5:0]  perfinfo_2,
  output [5:0]  perfinfo_3,
  output [5:0]  perfinfo_4,
  output [5:0]  perfinfo_5
);
`ifdef RANDOMIZE_MEM_INIT
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
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
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
`endif // RANDOMIZE_REG_INIT
  reg [2:0] buffer_channel [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_channel_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_channel_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_channel_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg [2:0] buffer_opcode [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_opcode_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_opcode_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_opcode_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg [2:0] buffer_param [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_param_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_param_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_param_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg [2:0] buffer_size [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_size_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_size_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_size_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg [5:0] buffer_source [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_source_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_source_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_source_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg [7:0] buffer_set [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire [7:0] buffer_set_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_set_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_set_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg [20:0] buffer_tag [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire [20:0] buffer_tag_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_tag_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_tag_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg [5:0] buffer_off [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire [5:0] buffer_off_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_off_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_off_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg [2:0] buffer_bufIdx [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire [2:0] buffer_bufIdx_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_bufIdx_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_bufIdx_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg  buffer_needHint [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needHint_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_needHint_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg  buffer_isPrefetch [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_isPrefetch_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_isPrefetch_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg [1:0] buffer_alias [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_alias_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_alias_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg  buffer_preferCache [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_preferCache_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_preferCache_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg  buffer_dirty [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_dirty_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_dirty_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg  buffer_fromProbeHelper [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromProbeHelper_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromProbeHelper_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg  buffer_fromCmoHelper [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_fromCmoHelper_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_fromCmoHelper_MPORT_en; // @[RequestBuffer.scala 16:19]
  reg  buffer_needProbeAckData [0:3]; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_req_deps_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_1_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_1_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_2_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_2_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_3_en; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_3_data; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_MPORT_data; // @[RequestBuffer.scala 16:19]
  wire [1:0] buffer_needProbeAckData_MPORT_addr; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_MPORT_mask; // @[RequestBuffer.scala 16:19]
  wire  buffer_needProbeAckData_MPORT_en; // @[RequestBuffer.scala 16:19]
  wire  issue_arb_clock; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_reset; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_0_ready; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_0_valid; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_0_bits_channel; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_0_bits_opcode; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_0_bits_param; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_0_bits_size; // @[RequestBuffer.scala 28:25]
  wire [5:0] issue_arb_io_in_0_bits_source; // @[RequestBuffer.scala 28:25]
  wire [7:0] issue_arb_io_in_0_bits_set; // @[RequestBuffer.scala 28:25]
  wire [20:0] issue_arb_io_in_0_bits_tag; // @[RequestBuffer.scala 28:25]
  wire [5:0] issue_arb_io_in_0_bits_off; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_0_bits_bufIdx; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_0_bits_needHint; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_0_bits_isPrefetch; // @[RequestBuffer.scala 28:25]
  wire [1:0] issue_arb_io_in_0_bits_alias; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_0_bits_preferCache; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_0_bits_dirty; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_0_bits_fromProbeHelper; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_0_bits_fromCmoHelper; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_0_bits_needProbeAckData; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_1_ready; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_1_valid; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_1_bits_channel; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_1_bits_opcode; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_1_bits_param; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_1_bits_size; // @[RequestBuffer.scala 28:25]
  wire [5:0] issue_arb_io_in_1_bits_source; // @[RequestBuffer.scala 28:25]
  wire [7:0] issue_arb_io_in_1_bits_set; // @[RequestBuffer.scala 28:25]
  wire [20:0] issue_arb_io_in_1_bits_tag; // @[RequestBuffer.scala 28:25]
  wire [5:0] issue_arb_io_in_1_bits_off; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_1_bits_bufIdx; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_1_bits_needHint; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_1_bits_isPrefetch; // @[RequestBuffer.scala 28:25]
  wire [1:0] issue_arb_io_in_1_bits_alias; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_1_bits_preferCache; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_1_bits_dirty; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_1_bits_fromProbeHelper; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_1_bits_fromCmoHelper; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_1_bits_needProbeAckData; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_2_ready; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_2_valid; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_2_bits_channel; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_2_bits_opcode; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_2_bits_param; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_2_bits_size; // @[RequestBuffer.scala 28:25]
  wire [5:0] issue_arb_io_in_2_bits_source; // @[RequestBuffer.scala 28:25]
  wire [7:0] issue_arb_io_in_2_bits_set; // @[RequestBuffer.scala 28:25]
  wire [20:0] issue_arb_io_in_2_bits_tag; // @[RequestBuffer.scala 28:25]
  wire [5:0] issue_arb_io_in_2_bits_off; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_2_bits_bufIdx; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_2_bits_needHint; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_2_bits_isPrefetch; // @[RequestBuffer.scala 28:25]
  wire [1:0] issue_arb_io_in_2_bits_alias; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_2_bits_preferCache; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_2_bits_dirty; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_2_bits_fromProbeHelper; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_2_bits_fromCmoHelper; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_2_bits_needProbeAckData; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_3_ready; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_3_valid; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_3_bits_channel; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_3_bits_opcode; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_3_bits_param; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_3_bits_size; // @[RequestBuffer.scala 28:25]
  wire [5:0] issue_arb_io_in_3_bits_source; // @[RequestBuffer.scala 28:25]
  wire [7:0] issue_arb_io_in_3_bits_set; // @[RequestBuffer.scala 28:25]
  wire [20:0] issue_arb_io_in_3_bits_tag; // @[RequestBuffer.scala 28:25]
  wire [5:0] issue_arb_io_in_3_bits_off; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_in_3_bits_bufIdx; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_3_bits_needHint; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_3_bits_isPrefetch; // @[RequestBuffer.scala 28:25]
  wire [1:0] issue_arb_io_in_3_bits_alias; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_3_bits_preferCache; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_3_bits_dirty; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_3_bits_fromProbeHelper; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_3_bits_fromCmoHelper; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_in_3_bits_needProbeAckData; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_out_ready; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_out_valid; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_out_bits_channel; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_out_bits_opcode; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_out_bits_param; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_out_bits_size; // @[RequestBuffer.scala 28:25]
  wire [5:0] issue_arb_io_out_bits_source; // @[RequestBuffer.scala 28:25]
  wire [7:0] issue_arb_io_out_bits_set; // @[RequestBuffer.scala 28:25]
  wire [20:0] issue_arb_io_out_bits_tag; // @[RequestBuffer.scala 28:25]
  wire [5:0] issue_arb_io_out_bits_off; // @[RequestBuffer.scala 28:25]
  wire [2:0] issue_arb_io_out_bits_bufIdx; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_out_bits_needHint; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_out_bits_isPrefetch; // @[RequestBuffer.scala 28:25]
  wire [1:0] issue_arb_io_out_bits_alias; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_out_bits_preferCache; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_out_bits_dirty; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_out_bits_fromProbeHelper; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_out_bits_fromCmoHelper; // @[RequestBuffer.scala 28:25]
  wire  issue_arb_io_out_bits_needProbeAckData; // @[RequestBuffer.scala 28:25]
  wire [1:0] issue_arb_io_chosen; // @[RequestBuffer.scala 28:25]
  wire  output_pipe_clock; // @[Decoupled.scala 361:21]
  wire  output_pipe_reset; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_enq_bits_channel; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] output_pipe_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [7:0] output_pipe_io_enq_bits_set; // @[Decoupled.scala 361:21]
  wire [20:0] output_pipe_io_enq_bits_tag; // @[Decoupled.scala 361:21]
  wire [5:0] output_pipe_io_enq_bits_off; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_enq_bits_bufIdx; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_needHint; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_isPrefetch; // @[Decoupled.scala 361:21]
  wire [1:0] output_pipe_io_enq_bits_alias; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_preferCache; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_dirty; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_fromProbeHelper; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_fromCmoHelper; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_needProbeAckData; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_deq_bits_channel; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [5:0] output_pipe_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [7:0] output_pipe_io_deq_bits_set; // @[Decoupled.scala 361:21]
  wire [20:0] output_pipe_io_deq_bits_tag; // @[Decoupled.scala 361:21]
  wire [5:0] output_pipe_io_deq_bits_off; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_deq_bits_bufIdx; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_needHint; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_isPrefetch; // @[Decoupled.scala 361:21]
  wire [1:0] output_pipe_io_deq_bits_alias; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_preferCache; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_dirty; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_fromProbeHelper; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_fromCmoHelper; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_needProbeAckData; // @[Decoupled.scala 361:21]
  reg  valids_0; // @[RequestBuffer.scala 17:23]
  reg  valids_1; // @[RequestBuffer.scala 17:23]
  reg  valids_2; // @[RequestBuffer.scala 17:23]
  reg  valids_3; // @[RequestBuffer.scala 17:23]
  reg [13:0] wait_table_0; // @[RequestBuffer.scala 19:23]
  reg [13:0] wait_table_1; // @[RequestBuffer.scala 19:23]
  reg [13:0] wait_table_2; // @[RequestBuffer.scala 19:23]
  reg [13:0] wait_table_3; // @[RequestBuffer.scala 19:23]
  reg  buffer_dep_mask_0_0; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_0_1; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_0_2; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_0_3; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_1_0; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_1_1; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_1_2; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_1_3; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_2_0; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_2_1; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_2_2; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_2_3; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_3_0; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_3_1; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_3_2; // @[RequestBuffer.scala 25:28]
  reg  buffer_dep_mask_3_3; // @[RequestBuffer.scala 25:28]
  reg  rdys_0; // @[RequestBuffer.scala 26:21]
  reg  rdys_1; // @[RequestBuffer.scala 26:21]
  reg  rdys_2; // @[RequestBuffer.scala 26:21]
  reg  rdys_3; // @[RequestBuffer.scala 26:21]
  wire  _T = issue_arb_io_in_0_ready & issue_arb_io_in_0_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = _T ? 1'h0 : valids_0; // @[RequestBuffer.scala 32:36 33:17 17:23]
  wire  _T_1 = issue_arb_io_in_1_ready & issue_arb_io_in_1_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_1 = _T_1 ? 1'h0 : valids_1; // @[RequestBuffer.scala 32:36 33:17 17:23]
  wire  _T_2 = issue_arb_io_in_2_ready & issue_arb_io_in_2_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_2 = _T_2 ? 1'h0 : valids_2; // @[RequestBuffer.scala 32:36 33:17 17:23]
  wire  _T_3 = issue_arb_io_in_3_ready & issue_arb_io_in_3_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_3 = _T_3 ? 1'h0 : valids_3; // @[RequestBuffer.scala 32:36 33:17 17:23]
  wire [3:0] _full_T = {valids_0,valids_1,valids_2,valids_3}; // @[Cat.scala 31:58]
  wire  full = &_full_T; // @[RequestBuffer.scala 39:30]
  wire  no_ready_entry = ~output_pipe_io_deq_valid; // @[RequestBuffer.scala 40:24]
  wire  _io_out_valid_T_2 = ~full; // @[RequestBuffer.scala 43:63]
  wire  _conflict_mask_s_conflict_T_2 = io_mshr_status_0_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_0 = io_mshr_status_0_valid & _conflict_mask_s_conflict_T_2 & ~io_mshr_status_0_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_7 = io_mshr_status_1_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_1 = io_mshr_status_1_valid & _conflict_mask_s_conflict_T_7 & ~io_mshr_status_1_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_12 = io_mshr_status_2_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_2 = io_mshr_status_2_valid & _conflict_mask_s_conflict_T_12 & ~io_mshr_status_2_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_17 = io_mshr_status_3_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_3 = io_mshr_status_3_valid & _conflict_mask_s_conflict_T_17 & ~io_mshr_status_3_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_22 = io_mshr_status_4_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_4 = io_mshr_status_4_valid & _conflict_mask_s_conflict_T_22 & ~io_mshr_status_4_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_27 = io_mshr_status_5_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_5 = io_mshr_status_5_valid & _conflict_mask_s_conflict_T_27 & ~io_mshr_status_5_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_32 = io_mshr_status_6_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_6 = io_mshr_status_6_valid & _conflict_mask_s_conflict_T_32 & ~io_mshr_status_6_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_37 = io_mshr_status_7_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_7 = io_mshr_status_7_valid & _conflict_mask_s_conflict_T_37 & ~io_mshr_status_7_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_42 = io_mshr_status_8_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_8 = io_mshr_status_8_valid & _conflict_mask_s_conflict_T_42 & ~io_mshr_status_8_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_47 = io_mshr_status_9_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_9 = io_mshr_status_9_valid & _conflict_mask_s_conflict_T_47 & ~io_mshr_status_9_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_52 = io_mshr_status_10_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_10 = io_mshr_status_10_valid & _conflict_mask_s_conflict_T_52 & ~io_mshr_status_10_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_57 = io_mshr_status_11_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_11 = io_mshr_status_11_valid & _conflict_mask_s_conflict_T_57 & ~io_mshr_status_11_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_62 = io_mshr_status_12_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_12 = io_mshr_status_12_valid & _conflict_mask_s_conflict_T_62 & ~io_mshr_status_12_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire  _conflict_mask_s_conflict_T_67 = io_mshr_status_13_bits_set == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  conflict_mask_13 = io_mshr_status_13_valid & _conflict_mask_s_conflict_T_67 & ~io_mshr_status_13_bits_will_free; // @[RequestBuffer.scala 54:66]
  wire [6:0] conflict_lo = {conflict_mask_7,conflict_mask_8,conflict_mask_9,conflict_mask_10,conflict_mask_11,
    conflict_mask_12,conflict_mask_13}; // @[Cat.scala 31:58]
  wire [13:0] _conflict_T = {conflict_mask_0,conflict_mask_1,conflict_mask_2,conflict_mask_3,conflict_mask_4,
    conflict_mask_5,conflict_mask_6,conflict_lo}; // @[Cat.scala 31:58]
  wire  conflict = |_conflict_T; // @[RequestBuffer.scala 57:40]
  wire [28:0] _dup_mask_T = {buffer_tag_dup_mask_MPORT_data,buffer_set_dup_mask_MPORT_1_data}; // @[Cat.scala 31:58]
  wire [28:0] _dup_mask_T_1 = {io_in_bits_tag,io_in_bits_set}; // @[Cat.scala 31:58]
  wire  dup_mask_0 = valids_0 & _dup_mask_T == _dup_mask_T_1; // @[RequestBuffer.scala 60:15]
  wire [28:0] _dup_mask_T_3 = {buffer_tag_dup_mask_MPORT_2_data,buffer_set_dup_mask_MPORT_3_data}; // @[Cat.scala 31:58]
  wire  dup_mask_1 = valids_1 & _dup_mask_T_3 == _dup_mask_T_1; // @[RequestBuffer.scala 60:15]
  wire [28:0] _dup_mask_T_6 = {buffer_tag_dup_mask_MPORT_4_data,buffer_set_dup_mask_MPORT_5_data}; // @[Cat.scala 31:58]
  wire  dup_mask_2 = valids_2 & _dup_mask_T_6 == _dup_mask_T_1; // @[RequestBuffer.scala 60:15]
  wire [28:0] _dup_mask_T_9 = {buffer_tag_dup_mask_MPORT_6_data,buffer_set_dup_mask_MPORT_7_data}; // @[Cat.scala 31:58]
  wire  dup_mask_3 = valids_3 & _dup_mask_T_9 == _dup_mask_T_1; // @[RequestBuffer.scala 60:15]
  wire [3:0] _dup_T_1 = {dup_mask_0,dup_mask_1,dup_mask_2,dup_mask_3}; // @[Cat.scala 31:58]
  wire  dup = io_in_valid & io_in_bits_isPrefetch & |_dup_T_1; // @[RequestBuffer.scala 62:69]
  wire [7:0] _req_deps_T = buffer_set_req_deps_MPORT_data; // @[RequestBuffer.scala 50:10]
  wire  _req_deps_T_2 = _req_deps_T == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  req_deps_0 = valids_0 & _req_deps_T_2; // @[RequestBuffer.scala 64:15]
  wire [7:0] _req_deps_T_3 = buffer_set_req_deps_MPORT_1_data; // @[RequestBuffer.scala 50:10]
  wire  _req_deps_T_5 = _req_deps_T_3 == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  req_deps_1 = valids_1 & _req_deps_T_5; // @[RequestBuffer.scala 64:15]
  wire [7:0] _req_deps_T_6 = buffer_set_req_deps_MPORT_2_data; // @[RequestBuffer.scala 50:10]
  wire  _req_deps_T_8 = _req_deps_T_6 == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  req_deps_2 = valids_2 & _req_deps_T_8; // @[RequestBuffer.scala 64:15]
  wire [7:0] _req_deps_T_9 = buffer_set_req_deps_MPORT_3_data; // @[RequestBuffer.scala 50:10]
  wire  _req_deps_T_11 = _req_deps_T_9 == io_in_bits_set; // @[RequestBuffer.scala 50:37]
  wire  req_deps_3 = valids_3 & _req_deps_T_11; // @[RequestBuffer.scala 64:15]
  wire [3:0] _insert_idx_T = {valids_3,valids_2,valids_1,valids_0}; // @[RequestBuffer.scala 66:50]
  wire [3:0] _insert_idx_T_1 = ~_insert_idx_T; // @[RequestBuffer.scala 66:36]
  wire [1:0] _insert_idx_T_6 = _insert_idx_T_1[2] ? 2'h2 : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] _insert_idx_T_7 = _insert_idx_T_1[1] ? 2'h1 : _insert_idx_T_6; // @[Mux.scala 47:70]
  wire [1:0] insert_idx = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7; // @[Mux.scala 47:70]
  wire  _alloc_T_5 = _io_out_valid_T_2 & io_in_valid & ~(no_ready_entry & io_out_ready); // @[RequestBuffer.scala 67:36]
  wire  _alloc_T_6 = ~dup; // @[RequestBuffer.scala 67:86]
  wire  alloc = _io_out_valid_T_2 & io_in_valid & ~(no_ready_entry & io_out_ready) & ~dup; // @[RequestBuffer.scala 67:83]
  wire  _GEN_4 = 2'h0 == insert_idx | _GEN_0; // @[RequestBuffer.scala 70:{24,24}]
  wire  _GEN_5 = 2'h1 == insert_idx | _GEN_1; // @[RequestBuffer.scala 70:{24,24}]
  wire  _GEN_6 = 2'h2 == insert_idx | _GEN_2; // @[RequestBuffer.scala 70:{24,24}]
  wire  _GEN_7 = 2'h3 == insert_idx | _GEN_3; // @[RequestBuffer.scala 70:{24,24}]
  wire [6:0] wait_table_lo = {conflict_mask_6,conflict_mask_5,conflict_mask_4,conflict_mask_3,conflict_mask_2,
    conflict_mask_1,conflict_mask_0}; // @[RequestBuffer.scala 71:60]
  wire [13:0] _wait_table_T = {conflict_mask_13,conflict_mask_12,conflict_mask_11,conflict_mask_10,conflict_mask_9,
    conflict_mask_8,conflict_mask_7,wait_table_lo}; // @[RequestBuffer.scala 71:60]
  wire  _GEN_12 = 2'h0 == insert_idx ? req_deps_0 : buffer_dep_mask_0_0; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_13 = 2'h1 == insert_idx ? req_deps_0 : buffer_dep_mask_1_0; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_14 = 2'h2 == insert_idx ? req_deps_0 : buffer_dep_mask_2_0; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_15 = 2'h3 == insert_idx ? req_deps_0 : buffer_dep_mask_3_0; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_16 = 2'h0 == insert_idx ? req_deps_1 : buffer_dep_mask_0_1; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_17 = 2'h1 == insert_idx ? req_deps_1 : buffer_dep_mask_1_1; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_18 = 2'h2 == insert_idx ? req_deps_1 : buffer_dep_mask_2_1; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_19 = 2'h3 == insert_idx ? req_deps_1 : buffer_dep_mask_3_1; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_20 = 2'h0 == insert_idx ? req_deps_2 : buffer_dep_mask_0_2; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_21 = 2'h1 == insert_idx ? req_deps_2 : buffer_dep_mask_1_2; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_22 = 2'h2 == insert_idx ? req_deps_2 : buffer_dep_mask_2_2; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_23 = 2'h3 == insert_idx ? req_deps_2 : buffer_dep_mask_3_2; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_24 = 2'h0 == insert_idx ? req_deps_3 : buffer_dep_mask_0_3; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_25 = 2'h1 == insert_idx ? req_deps_3 : buffer_dep_mask_1_3; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_26 = 2'h2 == insert_idx ? req_deps_3 : buffer_dep_mask_2_3; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire  _GEN_27 = 2'h3 == insert_idx ? req_deps_3 : buffer_dep_mask_3_3; // @[RequestBuffer.scala 25:28 72:{33,33}]
  wire [3:0] _rdys_T_1 = {req_deps_0,req_deps_1,req_deps_2,req_deps_3}; // @[Cat.scala 31:58]
  wire  _GEN_61 = alloc ? _GEN_12 : buffer_dep_mask_0_0; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_62 = alloc ? _GEN_13 : buffer_dep_mask_1_0; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_63 = alloc ? _GEN_14 : buffer_dep_mask_2_0; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_64 = alloc ? _GEN_15 : buffer_dep_mask_3_0; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_65 = alloc ? _GEN_16 : buffer_dep_mask_0_1; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_66 = alloc ? _GEN_17 : buffer_dep_mask_1_1; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_67 = alloc ? _GEN_18 : buffer_dep_mask_2_1; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_68 = alloc ? _GEN_19 : buffer_dep_mask_3_1; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_69 = alloc ? _GEN_20 : buffer_dep_mask_0_2; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_70 = alloc ? _GEN_21 : buffer_dep_mask_1_2; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_71 = alloc ? _GEN_22 : buffer_dep_mask_2_2; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_72 = alloc ? _GEN_23 : buffer_dep_mask_3_2; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_73 = alloc ? _GEN_24 : buffer_dep_mask_0_3; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_74 = alloc ? _GEN_25 : buffer_dep_mask_1_3; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_75 = alloc ? _GEN_26 : buffer_dep_mask_2_3; // @[RequestBuffer.scala 68:14 25:28]
  wire  _GEN_76 = alloc ? _GEN_27 : buffer_dep_mask_3_3; // @[RequestBuffer.scala 68:14 25:28]
  wire  _free_mask_T = io_mshr_status_0_valid & io_mshr_status_0_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_1 = io_mshr_status_1_valid & io_mshr_status_1_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_2 = io_mshr_status_2_valid & io_mshr_status_2_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_3 = io_mshr_status_3_valid & io_mshr_status_3_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_4 = io_mshr_status_4_valid & io_mshr_status_4_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_5 = io_mshr_status_5_valid & io_mshr_status_5_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_6 = io_mshr_status_6_valid & io_mshr_status_6_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_7 = io_mshr_status_7_valid & io_mshr_status_7_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_8 = io_mshr_status_8_valid & io_mshr_status_8_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_9 = io_mshr_status_9_valid & io_mshr_status_9_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_10 = io_mshr_status_10_valid & io_mshr_status_10_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_11 = io_mshr_status_11_valid & io_mshr_status_11_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_12 = io_mshr_status_12_valid & io_mshr_status_12_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire  _free_mask_T_13 = io_mshr_status_13_valid & io_mshr_status_13_bits_will_free; // @[RequestBuffer.scala 77:59]
  wire [6:0] free_mask_lo = {_free_mask_T_6,_free_mask_T_5,_free_mask_T_4,_free_mask_T_3,_free_mask_T_2,_free_mask_T_1,
    _free_mask_T}; // @[RequestBuffer.scala 77:87]
  wire [13:0] free_mask = {_free_mask_T_13,_free_mask_T_12,_free_mask_T_11,_free_mask_T_10,_free_mask_T_9,_free_mask_T_8
    ,_free_mask_T_7,free_mask_lo}; // @[RequestBuffer.scala 77:87]
  wire [13:0] _wait_next_T = ~free_mask; // @[RequestBuffer.scala 82:46]
  wire [13:0] wait_next = wait_table_0 & _wait_next_T; // @[RequestBuffer.scala 82:43]
  wire  _T_34 = issue_arb_io_out_ready & issue_arb_io_out_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_81 = 2'h0 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_0_0; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_82 = 2'h1 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_0_1; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_83 = 2'h2 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_0_2; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_84 = 2'h3 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_0_3; // @[RequestBuffer.scala 84:{44,44}]
  wire  dep_mask_next__0 = _T_34 ? _GEN_81 : buffer_dep_mask_0_0; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next__1 = _T_34 ? _GEN_82 : buffer_dep_mask_0_1; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next__2 = _T_34 ? _GEN_83 : buffer_dep_mask_0_2; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next__3 = _T_34 ? _GEN_84 : buffer_dep_mask_0_3; // @[RequestBuffer.scala 83:36]
  wire [3:0] _rdys_0_T_2 = {dep_mask_next__0,dep_mask_next__1,dep_mask_next__2,dep_mask_next__3}; // @[Cat.scala 31:58]
  wire [13:0] wait_next_1 = wait_table_1 & _wait_next_T; // @[RequestBuffer.scala 82:43]
  wire  _GEN_99 = 2'h0 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_1_0; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_100 = 2'h1 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_1_1; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_101 = 2'h2 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_1_2; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_102 = 2'h3 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_1_3; // @[RequestBuffer.scala 84:{44,44}]
  wire  dep_mask_next_1_0 = _T_34 ? _GEN_99 : buffer_dep_mask_1_0; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next_1_1 = _T_34 ? _GEN_100 : buffer_dep_mask_1_1; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next_1_2 = _T_34 ? _GEN_101 : buffer_dep_mask_1_2; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next_1_3 = _T_34 ? _GEN_102 : buffer_dep_mask_1_3; // @[RequestBuffer.scala 83:36]
  wire [3:0] _rdys_1_T_2 = {dep_mask_next_1_0,dep_mask_next_1_1,dep_mask_next_1_2,dep_mask_next_1_3}; // @[Cat.scala 31:58]
  wire [13:0] wait_next_2 = wait_table_2 & _wait_next_T; // @[RequestBuffer.scala 82:43]
  wire  _GEN_117 = 2'h0 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_2_0; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_118 = 2'h1 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_2_1; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_119 = 2'h2 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_2_2; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_120 = 2'h3 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_2_3; // @[RequestBuffer.scala 84:{44,44}]
  wire  dep_mask_next_2_0 = _T_34 ? _GEN_117 : buffer_dep_mask_2_0; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next_2_1 = _T_34 ? _GEN_118 : buffer_dep_mask_2_1; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next_2_2 = _T_34 ? _GEN_119 : buffer_dep_mask_2_2; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next_2_3 = _T_34 ? _GEN_120 : buffer_dep_mask_2_3; // @[RequestBuffer.scala 83:36]
  wire [3:0] _rdys_2_T_2 = {dep_mask_next_2_0,dep_mask_next_2_1,dep_mask_next_2_2,dep_mask_next_2_3}; // @[Cat.scala 31:58]
  wire [13:0] wait_next_3 = wait_table_3 & _wait_next_T; // @[RequestBuffer.scala 82:43]
  wire  _GEN_135 = 2'h0 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_3_0; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_136 = 2'h1 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_3_1; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_137 = 2'h2 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_3_2; // @[RequestBuffer.scala 84:{44,44}]
  wire  _GEN_138 = 2'h3 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_3_3; // @[RequestBuffer.scala 84:{44,44}]
  wire  dep_mask_next_3_0 = _T_34 ? _GEN_135 : buffer_dep_mask_3_0; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next_3_1 = _T_34 ? _GEN_136 : buffer_dep_mask_3_1; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next_3_2 = _T_34 ? _GEN_137 : buffer_dep_mask_3_2; // @[RequestBuffer.scala 83:36]
  wire  dep_mask_next_3_3 = _T_34 ? _GEN_138 : buffer_dep_mask_3_3; // @[RequestBuffer.scala 83:36]
  wire [3:0] _rdys_3_T_2 = {dep_mask_next_3_0,dep_mask_next_3_1,dep_mask_next_3_2,dep_mask_next_3_3}; // @[Cat.scala 31:58]
  wire  _T_46 = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  wire  _T_67 = ~io_in_bits_isPrefetch; // @[RequestBuffer.scala 105:68]
  reg  perfinfo_0_REG; // @[RequestBuffer.scala 117:24]
  reg  perfinfo_1_REG; // @[RequestBuffer.scala 117:24]
  reg  perfinfo_2_REG; // @[RequestBuffer.scala 117:24]
  reg  perfinfo_3_REG; // @[RequestBuffer.scala 117:24]
  reg  perfinfo_4_REG; // @[RequestBuffer.scala 117:24]
  reg  perfinfo_5_REG; // @[RequestBuffer.scala 117:24]
  FastArbiter_2 issue_arb ( // @[RequestBuffer.scala 28:25]
    .clock(issue_arb_clock),
    .reset(issue_arb_reset),
    .io_in_0_ready(issue_arb_io_in_0_ready),
    .io_in_0_valid(issue_arb_io_in_0_valid),
    .io_in_0_bits_channel(issue_arb_io_in_0_bits_channel),
    .io_in_0_bits_opcode(issue_arb_io_in_0_bits_opcode),
    .io_in_0_bits_param(issue_arb_io_in_0_bits_param),
    .io_in_0_bits_size(issue_arb_io_in_0_bits_size),
    .io_in_0_bits_source(issue_arb_io_in_0_bits_source),
    .io_in_0_bits_set(issue_arb_io_in_0_bits_set),
    .io_in_0_bits_tag(issue_arb_io_in_0_bits_tag),
    .io_in_0_bits_off(issue_arb_io_in_0_bits_off),
    .io_in_0_bits_bufIdx(issue_arb_io_in_0_bits_bufIdx),
    .io_in_0_bits_needHint(issue_arb_io_in_0_bits_needHint),
    .io_in_0_bits_isPrefetch(issue_arb_io_in_0_bits_isPrefetch),
    .io_in_0_bits_alias(issue_arb_io_in_0_bits_alias),
    .io_in_0_bits_preferCache(issue_arb_io_in_0_bits_preferCache),
    .io_in_0_bits_dirty(issue_arb_io_in_0_bits_dirty),
    .io_in_0_bits_fromProbeHelper(issue_arb_io_in_0_bits_fromProbeHelper),
    .io_in_0_bits_fromCmoHelper(issue_arb_io_in_0_bits_fromCmoHelper),
    .io_in_0_bits_needProbeAckData(issue_arb_io_in_0_bits_needProbeAckData),
    .io_in_1_ready(issue_arb_io_in_1_ready),
    .io_in_1_valid(issue_arb_io_in_1_valid),
    .io_in_1_bits_channel(issue_arb_io_in_1_bits_channel),
    .io_in_1_bits_opcode(issue_arb_io_in_1_bits_opcode),
    .io_in_1_bits_param(issue_arb_io_in_1_bits_param),
    .io_in_1_bits_size(issue_arb_io_in_1_bits_size),
    .io_in_1_bits_source(issue_arb_io_in_1_bits_source),
    .io_in_1_bits_set(issue_arb_io_in_1_bits_set),
    .io_in_1_bits_tag(issue_arb_io_in_1_bits_tag),
    .io_in_1_bits_off(issue_arb_io_in_1_bits_off),
    .io_in_1_bits_bufIdx(issue_arb_io_in_1_bits_bufIdx),
    .io_in_1_bits_needHint(issue_arb_io_in_1_bits_needHint),
    .io_in_1_bits_isPrefetch(issue_arb_io_in_1_bits_isPrefetch),
    .io_in_1_bits_alias(issue_arb_io_in_1_bits_alias),
    .io_in_1_bits_preferCache(issue_arb_io_in_1_bits_preferCache),
    .io_in_1_bits_dirty(issue_arb_io_in_1_bits_dirty),
    .io_in_1_bits_fromProbeHelper(issue_arb_io_in_1_bits_fromProbeHelper),
    .io_in_1_bits_fromCmoHelper(issue_arb_io_in_1_bits_fromCmoHelper),
    .io_in_1_bits_needProbeAckData(issue_arb_io_in_1_bits_needProbeAckData),
    .io_in_2_ready(issue_arb_io_in_2_ready),
    .io_in_2_valid(issue_arb_io_in_2_valid),
    .io_in_2_bits_channel(issue_arb_io_in_2_bits_channel),
    .io_in_2_bits_opcode(issue_arb_io_in_2_bits_opcode),
    .io_in_2_bits_param(issue_arb_io_in_2_bits_param),
    .io_in_2_bits_size(issue_arb_io_in_2_bits_size),
    .io_in_2_bits_source(issue_arb_io_in_2_bits_source),
    .io_in_2_bits_set(issue_arb_io_in_2_bits_set),
    .io_in_2_bits_tag(issue_arb_io_in_2_bits_tag),
    .io_in_2_bits_off(issue_arb_io_in_2_bits_off),
    .io_in_2_bits_bufIdx(issue_arb_io_in_2_bits_bufIdx),
    .io_in_2_bits_needHint(issue_arb_io_in_2_bits_needHint),
    .io_in_2_bits_isPrefetch(issue_arb_io_in_2_bits_isPrefetch),
    .io_in_2_bits_alias(issue_arb_io_in_2_bits_alias),
    .io_in_2_bits_preferCache(issue_arb_io_in_2_bits_preferCache),
    .io_in_2_bits_dirty(issue_arb_io_in_2_bits_dirty),
    .io_in_2_bits_fromProbeHelper(issue_arb_io_in_2_bits_fromProbeHelper),
    .io_in_2_bits_fromCmoHelper(issue_arb_io_in_2_bits_fromCmoHelper),
    .io_in_2_bits_needProbeAckData(issue_arb_io_in_2_bits_needProbeAckData),
    .io_in_3_ready(issue_arb_io_in_3_ready),
    .io_in_3_valid(issue_arb_io_in_3_valid),
    .io_in_3_bits_channel(issue_arb_io_in_3_bits_channel),
    .io_in_3_bits_opcode(issue_arb_io_in_3_bits_opcode),
    .io_in_3_bits_param(issue_arb_io_in_3_bits_param),
    .io_in_3_bits_size(issue_arb_io_in_3_bits_size),
    .io_in_3_bits_source(issue_arb_io_in_3_bits_source),
    .io_in_3_bits_set(issue_arb_io_in_3_bits_set),
    .io_in_3_bits_tag(issue_arb_io_in_3_bits_tag),
    .io_in_3_bits_off(issue_arb_io_in_3_bits_off),
    .io_in_3_bits_bufIdx(issue_arb_io_in_3_bits_bufIdx),
    .io_in_3_bits_needHint(issue_arb_io_in_3_bits_needHint),
    .io_in_3_bits_isPrefetch(issue_arb_io_in_3_bits_isPrefetch),
    .io_in_3_bits_alias(issue_arb_io_in_3_bits_alias),
    .io_in_3_bits_preferCache(issue_arb_io_in_3_bits_preferCache),
    .io_in_3_bits_dirty(issue_arb_io_in_3_bits_dirty),
    .io_in_3_bits_fromProbeHelper(issue_arb_io_in_3_bits_fromProbeHelper),
    .io_in_3_bits_fromCmoHelper(issue_arb_io_in_3_bits_fromCmoHelper),
    .io_in_3_bits_needProbeAckData(issue_arb_io_in_3_bits_needProbeAckData),
    .io_out_ready(issue_arb_io_out_ready),
    .io_out_valid(issue_arb_io_out_valid),
    .io_out_bits_channel(issue_arb_io_out_bits_channel),
    .io_out_bits_opcode(issue_arb_io_out_bits_opcode),
    .io_out_bits_param(issue_arb_io_out_bits_param),
    .io_out_bits_size(issue_arb_io_out_bits_size),
    .io_out_bits_source(issue_arb_io_out_bits_source),
    .io_out_bits_set(issue_arb_io_out_bits_set),
    .io_out_bits_tag(issue_arb_io_out_bits_tag),
    .io_out_bits_off(issue_arb_io_out_bits_off),
    .io_out_bits_bufIdx(issue_arb_io_out_bits_bufIdx),
    .io_out_bits_needHint(issue_arb_io_out_bits_needHint),
    .io_out_bits_isPrefetch(issue_arb_io_out_bits_isPrefetch),
    .io_out_bits_alias(issue_arb_io_out_bits_alias),
    .io_out_bits_preferCache(issue_arb_io_out_bits_preferCache),
    .io_out_bits_dirty(issue_arb_io_out_bits_dirty),
    .io_out_bits_fromProbeHelper(issue_arb_io_out_bits_fromProbeHelper),
    .io_out_bits_fromCmoHelper(issue_arb_io_out_bits_fromCmoHelper),
    .io_out_bits_needProbeAckData(issue_arb_io_out_bits_needProbeAckData),
    .io_chosen(issue_arb_io_chosen)
  );
  Queue_231 output_pipe ( // @[Decoupled.scala 361:21]
    .clock(output_pipe_clock),
    .reset(output_pipe_reset),
    .io_enq_ready(output_pipe_io_enq_ready),
    .io_enq_valid(output_pipe_io_enq_valid),
    .io_enq_bits_channel(output_pipe_io_enq_bits_channel),
    .io_enq_bits_opcode(output_pipe_io_enq_bits_opcode),
    .io_enq_bits_param(output_pipe_io_enq_bits_param),
    .io_enq_bits_size(output_pipe_io_enq_bits_size),
    .io_enq_bits_source(output_pipe_io_enq_bits_source),
    .io_enq_bits_set(output_pipe_io_enq_bits_set),
    .io_enq_bits_tag(output_pipe_io_enq_bits_tag),
    .io_enq_bits_off(output_pipe_io_enq_bits_off),
    .io_enq_bits_bufIdx(output_pipe_io_enq_bits_bufIdx),
    .io_enq_bits_needHint(output_pipe_io_enq_bits_needHint),
    .io_enq_bits_isPrefetch(output_pipe_io_enq_bits_isPrefetch),
    .io_enq_bits_alias(output_pipe_io_enq_bits_alias),
    .io_enq_bits_preferCache(output_pipe_io_enq_bits_preferCache),
    .io_enq_bits_dirty(output_pipe_io_enq_bits_dirty),
    .io_enq_bits_fromProbeHelper(output_pipe_io_enq_bits_fromProbeHelper),
    .io_enq_bits_fromCmoHelper(output_pipe_io_enq_bits_fromCmoHelper),
    .io_enq_bits_needProbeAckData(output_pipe_io_enq_bits_needProbeAckData),
    .io_deq_ready(output_pipe_io_deq_ready),
    .io_deq_valid(output_pipe_io_deq_valid),
    .io_deq_bits_channel(output_pipe_io_deq_bits_channel),
    .io_deq_bits_opcode(output_pipe_io_deq_bits_opcode),
    .io_deq_bits_param(output_pipe_io_deq_bits_param),
    .io_deq_bits_size(output_pipe_io_deq_bits_size),
    .io_deq_bits_source(output_pipe_io_deq_bits_source),
    .io_deq_bits_set(output_pipe_io_deq_bits_set),
    .io_deq_bits_tag(output_pipe_io_deq_bits_tag),
    .io_deq_bits_off(output_pipe_io_deq_bits_off),
    .io_deq_bits_bufIdx(output_pipe_io_deq_bits_bufIdx),
    .io_deq_bits_needHint(output_pipe_io_deq_bits_needHint),
    .io_deq_bits_isPrefetch(output_pipe_io_deq_bits_isPrefetch),
    .io_deq_bits_alias(output_pipe_io_deq_bits_alias),
    .io_deq_bits_preferCache(output_pipe_io_deq_bits_preferCache),
    .io_deq_bits_dirty(output_pipe_io_deq_bits_dirty),
    .io_deq_bits_fromProbeHelper(output_pipe_io_deq_bits_fromProbeHelper),
    .io_deq_bits_fromCmoHelper(output_pipe_io_deq_bits_fromCmoHelper),
    .io_deq_bits_needProbeAckData(output_pipe_io_deq_bits_needProbeAckData)
  );
  assign buffer_channel_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_channel_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_channel_issue_arb_io_in_0_bits_MPORT_data =
    buffer_channel[buffer_channel_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_channel_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_channel_issue_arb_io_in_1_bits_MPORT_data =
    buffer_channel[buffer_channel_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_channel_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_channel_issue_arb_io_in_2_bits_MPORT_data =
    buffer_channel[buffer_channel_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_channel_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_channel_issue_arb_io_in_3_bits_MPORT_data =
    buffer_channel[buffer_channel_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_dup_mask_MPORT_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_addr = 2'h0;
  assign buffer_channel_dup_mask_MPORT_data = buffer_channel[buffer_channel_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_channel_dup_mask_MPORT_1_data = buffer_channel[buffer_channel_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_channel_dup_mask_MPORT_2_data = buffer_channel[buffer_channel_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_channel_dup_mask_MPORT_3_data = buffer_channel[buffer_channel_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_channel_dup_mask_MPORT_4_data = buffer_channel[buffer_channel_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_channel_dup_mask_MPORT_5_data = buffer_channel[buffer_channel_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_channel_dup_mask_MPORT_6_data = buffer_channel[buffer_channel_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_channel_dup_mask_MPORT_7_data = buffer_channel[buffer_channel_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_req_deps_MPORT_en = 1'h1;
  assign buffer_channel_req_deps_MPORT_addr = 2'h0;
  assign buffer_channel_req_deps_MPORT_data = buffer_channel[buffer_channel_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_req_deps_MPORT_1_en = 1'h1;
  assign buffer_channel_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_channel_req_deps_MPORT_1_data = buffer_channel[buffer_channel_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_req_deps_MPORT_2_en = 1'h1;
  assign buffer_channel_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_channel_req_deps_MPORT_2_data = buffer_channel[buffer_channel_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_req_deps_MPORT_3_en = 1'h1;
  assign buffer_channel_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_channel_req_deps_MPORT_3_data = buffer_channel[buffer_channel_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_channel_MPORT_data = io_in_bits_channel;
  assign buffer_channel_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_channel_MPORT_mask = 1'h1;
  assign buffer_channel_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_opcode_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_opcode_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_opcode_issue_arb_io_in_0_bits_MPORT_data =
    buffer_opcode[buffer_opcode_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_opcode_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_opcode_issue_arb_io_in_1_bits_MPORT_data =
    buffer_opcode[buffer_opcode_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_opcode_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_opcode_issue_arb_io_in_2_bits_MPORT_data =
    buffer_opcode[buffer_opcode_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_opcode_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_opcode_issue_arb_io_in_3_bits_MPORT_data =
    buffer_opcode[buffer_opcode_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_dup_mask_MPORT_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_addr = 2'h0;
  assign buffer_opcode_dup_mask_MPORT_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_opcode_dup_mask_MPORT_1_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_opcode_dup_mask_MPORT_2_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_opcode_dup_mask_MPORT_3_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_opcode_dup_mask_MPORT_4_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_opcode_dup_mask_MPORT_5_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_opcode_dup_mask_MPORT_6_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_opcode_dup_mask_MPORT_7_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_req_deps_MPORT_en = 1'h1;
  assign buffer_opcode_req_deps_MPORT_addr = 2'h0;
  assign buffer_opcode_req_deps_MPORT_data = buffer_opcode[buffer_opcode_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_req_deps_MPORT_1_en = 1'h1;
  assign buffer_opcode_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_opcode_req_deps_MPORT_1_data = buffer_opcode[buffer_opcode_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_req_deps_MPORT_2_en = 1'h1;
  assign buffer_opcode_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_opcode_req_deps_MPORT_2_data = buffer_opcode[buffer_opcode_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_req_deps_MPORT_3_en = 1'h1;
  assign buffer_opcode_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_opcode_req_deps_MPORT_3_data = buffer_opcode[buffer_opcode_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_opcode_MPORT_data = io_in_bits_opcode;
  assign buffer_opcode_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_opcode_MPORT_mask = 1'h1;
  assign buffer_opcode_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_param_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_param_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_param_issue_arb_io_in_0_bits_MPORT_data = buffer_param[buffer_param_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_param_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_param_issue_arb_io_in_1_bits_MPORT_data = buffer_param[buffer_param_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_param_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_param_issue_arb_io_in_2_bits_MPORT_data = buffer_param[buffer_param_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_param_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_param_issue_arb_io_in_3_bits_MPORT_data = buffer_param[buffer_param_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_dup_mask_MPORT_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_addr = 2'h0;
  assign buffer_param_dup_mask_MPORT_data = buffer_param[buffer_param_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_param_dup_mask_MPORT_1_data = buffer_param[buffer_param_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_param_dup_mask_MPORT_2_data = buffer_param[buffer_param_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_param_dup_mask_MPORT_3_data = buffer_param[buffer_param_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_param_dup_mask_MPORT_4_data = buffer_param[buffer_param_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_param_dup_mask_MPORT_5_data = buffer_param[buffer_param_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_param_dup_mask_MPORT_6_data = buffer_param[buffer_param_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_param_dup_mask_MPORT_7_data = buffer_param[buffer_param_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_req_deps_MPORT_en = 1'h1;
  assign buffer_param_req_deps_MPORT_addr = 2'h0;
  assign buffer_param_req_deps_MPORT_data = buffer_param[buffer_param_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_req_deps_MPORT_1_en = 1'h1;
  assign buffer_param_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_param_req_deps_MPORT_1_data = buffer_param[buffer_param_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_req_deps_MPORT_2_en = 1'h1;
  assign buffer_param_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_param_req_deps_MPORT_2_data = buffer_param[buffer_param_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_req_deps_MPORT_3_en = 1'h1;
  assign buffer_param_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_param_req_deps_MPORT_3_data = buffer_param[buffer_param_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_param_MPORT_data = io_in_bits_param;
  assign buffer_param_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_param_MPORT_mask = 1'h1;
  assign buffer_param_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_size_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_size_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_size_issue_arb_io_in_0_bits_MPORT_data = buffer_size[buffer_size_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_size_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_size_issue_arb_io_in_1_bits_MPORT_data = buffer_size[buffer_size_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_size_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_size_issue_arb_io_in_2_bits_MPORT_data = buffer_size[buffer_size_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_size_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_size_issue_arb_io_in_3_bits_MPORT_data = buffer_size[buffer_size_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_dup_mask_MPORT_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_addr = 2'h0;
  assign buffer_size_dup_mask_MPORT_data = buffer_size[buffer_size_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_size_dup_mask_MPORT_1_data = buffer_size[buffer_size_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_size_dup_mask_MPORT_2_data = buffer_size[buffer_size_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_size_dup_mask_MPORT_3_data = buffer_size[buffer_size_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_size_dup_mask_MPORT_4_data = buffer_size[buffer_size_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_size_dup_mask_MPORT_5_data = buffer_size[buffer_size_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_size_dup_mask_MPORT_6_data = buffer_size[buffer_size_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_size_dup_mask_MPORT_7_data = buffer_size[buffer_size_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_req_deps_MPORT_en = 1'h1;
  assign buffer_size_req_deps_MPORT_addr = 2'h0;
  assign buffer_size_req_deps_MPORT_data = buffer_size[buffer_size_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_req_deps_MPORT_1_en = 1'h1;
  assign buffer_size_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_size_req_deps_MPORT_1_data = buffer_size[buffer_size_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_req_deps_MPORT_2_en = 1'h1;
  assign buffer_size_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_size_req_deps_MPORT_2_data = buffer_size[buffer_size_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_req_deps_MPORT_3_en = 1'h1;
  assign buffer_size_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_size_req_deps_MPORT_3_data = buffer_size[buffer_size_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_size_MPORT_data = io_in_bits_size;
  assign buffer_size_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_size_MPORT_mask = 1'h1;
  assign buffer_size_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_source_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_source_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_source_issue_arb_io_in_0_bits_MPORT_data =
    buffer_source[buffer_source_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_source_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_source_issue_arb_io_in_1_bits_MPORT_data =
    buffer_source[buffer_source_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_source_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_source_issue_arb_io_in_2_bits_MPORT_data =
    buffer_source[buffer_source_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_source_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_source_issue_arb_io_in_3_bits_MPORT_data =
    buffer_source[buffer_source_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_dup_mask_MPORT_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_addr = 2'h0;
  assign buffer_source_dup_mask_MPORT_data = buffer_source[buffer_source_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_source_dup_mask_MPORT_1_data = buffer_source[buffer_source_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_source_dup_mask_MPORT_2_data = buffer_source[buffer_source_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_source_dup_mask_MPORT_3_data = buffer_source[buffer_source_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_source_dup_mask_MPORT_4_data = buffer_source[buffer_source_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_source_dup_mask_MPORT_5_data = buffer_source[buffer_source_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_source_dup_mask_MPORT_6_data = buffer_source[buffer_source_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_source_dup_mask_MPORT_7_data = buffer_source[buffer_source_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_req_deps_MPORT_en = 1'h1;
  assign buffer_source_req_deps_MPORT_addr = 2'h0;
  assign buffer_source_req_deps_MPORT_data = buffer_source[buffer_source_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_req_deps_MPORT_1_en = 1'h1;
  assign buffer_source_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_source_req_deps_MPORT_1_data = buffer_source[buffer_source_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_req_deps_MPORT_2_en = 1'h1;
  assign buffer_source_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_source_req_deps_MPORT_2_data = buffer_source[buffer_source_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_req_deps_MPORT_3_en = 1'h1;
  assign buffer_source_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_source_req_deps_MPORT_3_data = buffer_source[buffer_source_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_source_MPORT_data = io_in_bits_source;
  assign buffer_source_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_source_MPORT_mask = 1'h1;
  assign buffer_source_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_set_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_set_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_set_issue_arb_io_in_0_bits_MPORT_data = buffer_set[buffer_set_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_set_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_set_issue_arb_io_in_1_bits_MPORT_data = buffer_set[buffer_set_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_set_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_set_issue_arb_io_in_2_bits_MPORT_data = buffer_set[buffer_set_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_set_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_set_issue_arb_io_in_3_bits_MPORT_data = buffer_set[buffer_set_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_dup_mask_MPORT_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_addr = 2'h0;
  assign buffer_set_dup_mask_MPORT_data = buffer_set[buffer_set_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_set_dup_mask_MPORT_1_data = buffer_set[buffer_set_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_set_dup_mask_MPORT_2_data = buffer_set[buffer_set_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_set_dup_mask_MPORT_3_data = buffer_set[buffer_set_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_set_dup_mask_MPORT_4_data = buffer_set[buffer_set_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_set_dup_mask_MPORT_5_data = buffer_set[buffer_set_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_set_dup_mask_MPORT_6_data = buffer_set[buffer_set_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_set_dup_mask_MPORT_7_data = buffer_set[buffer_set_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_req_deps_MPORT_en = 1'h1;
  assign buffer_set_req_deps_MPORT_addr = 2'h0;
  assign buffer_set_req_deps_MPORT_data = buffer_set[buffer_set_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_req_deps_MPORT_1_en = 1'h1;
  assign buffer_set_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_set_req_deps_MPORT_1_data = buffer_set[buffer_set_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_req_deps_MPORT_2_en = 1'h1;
  assign buffer_set_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_set_req_deps_MPORT_2_data = buffer_set[buffer_set_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_req_deps_MPORT_3_en = 1'h1;
  assign buffer_set_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_set_req_deps_MPORT_3_data = buffer_set[buffer_set_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_set_MPORT_data = io_in_bits_set;
  assign buffer_set_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_set_MPORT_mask = 1'h1;
  assign buffer_set_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_tag_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_tag_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_tag_issue_arb_io_in_0_bits_MPORT_data = buffer_tag[buffer_tag_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_tag_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_tag_issue_arb_io_in_1_bits_MPORT_data = buffer_tag[buffer_tag_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_tag_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_tag_issue_arb_io_in_2_bits_MPORT_data = buffer_tag[buffer_tag_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_tag_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_tag_issue_arb_io_in_3_bits_MPORT_data = buffer_tag[buffer_tag_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_dup_mask_MPORT_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_addr = 2'h0;
  assign buffer_tag_dup_mask_MPORT_data = buffer_tag[buffer_tag_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_tag_dup_mask_MPORT_1_data = buffer_tag[buffer_tag_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_tag_dup_mask_MPORT_2_data = buffer_tag[buffer_tag_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_tag_dup_mask_MPORT_3_data = buffer_tag[buffer_tag_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_tag_dup_mask_MPORT_4_data = buffer_tag[buffer_tag_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_tag_dup_mask_MPORT_5_data = buffer_tag[buffer_tag_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_tag_dup_mask_MPORT_6_data = buffer_tag[buffer_tag_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_tag_dup_mask_MPORT_7_data = buffer_tag[buffer_tag_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_req_deps_MPORT_en = 1'h1;
  assign buffer_tag_req_deps_MPORT_addr = 2'h0;
  assign buffer_tag_req_deps_MPORT_data = buffer_tag[buffer_tag_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_req_deps_MPORT_1_en = 1'h1;
  assign buffer_tag_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_tag_req_deps_MPORT_1_data = buffer_tag[buffer_tag_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_req_deps_MPORT_2_en = 1'h1;
  assign buffer_tag_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_tag_req_deps_MPORT_2_data = buffer_tag[buffer_tag_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_req_deps_MPORT_3_en = 1'h1;
  assign buffer_tag_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_tag_req_deps_MPORT_3_data = buffer_tag[buffer_tag_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_tag_MPORT_data = io_in_bits_tag;
  assign buffer_tag_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_tag_MPORT_mask = 1'h1;
  assign buffer_tag_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_off_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_off_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_off_issue_arb_io_in_0_bits_MPORT_data = buffer_off[buffer_off_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_off_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_off_issue_arb_io_in_1_bits_MPORT_data = buffer_off[buffer_off_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_off_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_off_issue_arb_io_in_2_bits_MPORT_data = buffer_off[buffer_off_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_off_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_off_issue_arb_io_in_3_bits_MPORT_data = buffer_off[buffer_off_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_dup_mask_MPORT_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_addr = 2'h0;
  assign buffer_off_dup_mask_MPORT_data = buffer_off[buffer_off_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_off_dup_mask_MPORT_1_data = buffer_off[buffer_off_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_off_dup_mask_MPORT_2_data = buffer_off[buffer_off_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_off_dup_mask_MPORT_3_data = buffer_off[buffer_off_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_off_dup_mask_MPORT_4_data = buffer_off[buffer_off_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_off_dup_mask_MPORT_5_data = buffer_off[buffer_off_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_off_dup_mask_MPORT_6_data = buffer_off[buffer_off_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_off_dup_mask_MPORT_7_data = buffer_off[buffer_off_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_req_deps_MPORT_en = 1'h1;
  assign buffer_off_req_deps_MPORT_addr = 2'h0;
  assign buffer_off_req_deps_MPORT_data = buffer_off[buffer_off_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_req_deps_MPORT_1_en = 1'h1;
  assign buffer_off_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_off_req_deps_MPORT_1_data = buffer_off[buffer_off_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_req_deps_MPORT_2_en = 1'h1;
  assign buffer_off_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_off_req_deps_MPORT_2_data = buffer_off[buffer_off_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_req_deps_MPORT_3_en = 1'h1;
  assign buffer_off_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_off_req_deps_MPORT_3_data = buffer_off[buffer_off_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_off_MPORT_data = io_in_bits_off;
  assign buffer_off_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_off_MPORT_mask = 1'h1;
  assign buffer_off_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_data =
    buffer_bufIdx[buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_data =
    buffer_bufIdx[buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_data =
    buffer_bufIdx[buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_data =
    buffer_bufIdx[buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_dup_mask_MPORT_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_addr = 2'h0;
  assign buffer_bufIdx_dup_mask_MPORT_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_bufIdx_dup_mask_MPORT_1_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_bufIdx_dup_mask_MPORT_2_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_bufIdx_dup_mask_MPORT_3_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_bufIdx_dup_mask_MPORT_4_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_bufIdx_dup_mask_MPORT_5_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_bufIdx_dup_mask_MPORT_6_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_bufIdx_dup_mask_MPORT_7_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_req_deps_MPORT_en = 1'h1;
  assign buffer_bufIdx_req_deps_MPORT_addr = 2'h0;
  assign buffer_bufIdx_req_deps_MPORT_data = buffer_bufIdx[buffer_bufIdx_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_req_deps_MPORT_1_en = 1'h1;
  assign buffer_bufIdx_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_bufIdx_req_deps_MPORT_1_data = buffer_bufIdx[buffer_bufIdx_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_req_deps_MPORT_2_en = 1'h1;
  assign buffer_bufIdx_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_bufIdx_req_deps_MPORT_2_data = buffer_bufIdx[buffer_bufIdx_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_req_deps_MPORT_3_en = 1'h1;
  assign buffer_bufIdx_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_bufIdx_req_deps_MPORT_3_data = buffer_bufIdx[buffer_bufIdx_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_bufIdx_MPORT_data = io_in_bits_bufIdx;
  assign buffer_bufIdx_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_bufIdx_MPORT_mask = 1'h1;
  assign buffer_bufIdx_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_needHint_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_needHint_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_needHint_issue_arb_io_in_0_bits_MPORT_data =
    buffer_needHint[buffer_needHint_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_needHint_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_needHint_issue_arb_io_in_1_bits_MPORT_data =
    buffer_needHint[buffer_needHint_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_needHint_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_needHint_issue_arb_io_in_2_bits_MPORT_data =
    buffer_needHint[buffer_needHint_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_needHint_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_needHint_issue_arb_io_in_3_bits_MPORT_data =
    buffer_needHint[buffer_needHint_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_dup_mask_MPORT_en = 1'h1;
  assign buffer_needHint_dup_mask_MPORT_addr = 2'h0;
  assign buffer_needHint_dup_mask_MPORT_data = buffer_needHint[buffer_needHint_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_needHint_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_needHint_dup_mask_MPORT_1_data = buffer_needHint[buffer_needHint_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_needHint_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_needHint_dup_mask_MPORT_2_data = buffer_needHint[buffer_needHint_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_needHint_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_needHint_dup_mask_MPORT_3_data = buffer_needHint[buffer_needHint_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_needHint_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_needHint_dup_mask_MPORT_4_data = buffer_needHint[buffer_needHint_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_needHint_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_needHint_dup_mask_MPORT_5_data = buffer_needHint[buffer_needHint_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_needHint_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_needHint_dup_mask_MPORT_6_data = buffer_needHint[buffer_needHint_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_needHint_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_needHint_dup_mask_MPORT_7_data = buffer_needHint[buffer_needHint_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_req_deps_MPORT_en = 1'h1;
  assign buffer_needHint_req_deps_MPORT_addr = 2'h0;
  assign buffer_needHint_req_deps_MPORT_data = buffer_needHint[buffer_needHint_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_req_deps_MPORT_1_en = 1'h1;
  assign buffer_needHint_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_needHint_req_deps_MPORT_1_data = buffer_needHint[buffer_needHint_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_req_deps_MPORT_2_en = 1'h1;
  assign buffer_needHint_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_needHint_req_deps_MPORT_2_data = buffer_needHint[buffer_needHint_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_req_deps_MPORT_3_en = 1'h1;
  assign buffer_needHint_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_needHint_req_deps_MPORT_3_data = buffer_needHint[buffer_needHint_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needHint_MPORT_data = io_in_bits_needHint;
  assign buffer_needHint_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_needHint_MPORT_mask = 1'h1;
  assign buffer_needHint_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_isPrefetch_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_isPrefetch_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_isPrefetch_issue_arb_io_in_0_bits_MPORT_data =
    buffer_isPrefetch[buffer_isPrefetch_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_isPrefetch_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_isPrefetch_issue_arb_io_in_1_bits_MPORT_data =
    buffer_isPrefetch[buffer_isPrefetch_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_isPrefetch_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_isPrefetch_issue_arb_io_in_2_bits_MPORT_data =
    buffer_isPrefetch[buffer_isPrefetch_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_isPrefetch_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_isPrefetch_issue_arb_io_in_3_bits_MPORT_data =
    buffer_isPrefetch[buffer_isPrefetch_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_dup_mask_MPORT_en = 1'h1;
  assign buffer_isPrefetch_dup_mask_MPORT_addr = 2'h0;
  assign buffer_isPrefetch_dup_mask_MPORT_data = buffer_isPrefetch[buffer_isPrefetch_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_isPrefetch_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_isPrefetch_dup_mask_MPORT_1_data = buffer_isPrefetch[buffer_isPrefetch_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_isPrefetch_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_isPrefetch_dup_mask_MPORT_2_data = buffer_isPrefetch[buffer_isPrefetch_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_isPrefetch_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_isPrefetch_dup_mask_MPORT_3_data = buffer_isPrefetch[buffer_isPrefetch_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_isPrefetch_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_isPrefetch_dup_mask_MPORT_4_data = buffer_isPrefetch[buffer_isPrefetch_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_isPrefetch_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_isPrefetch_dup_mask_MPORT_5_data = buffer_isPrefetch[buffer_isPrefetch_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_isPrefetch_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_isPrefetch_dup_mask_MPORT_6_data = buffer_isPrefetch[buffer_isPrefetch_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_isPrefetch_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_isPrefetch_dup_mask_MPORT_7_data = buffer_isPrefetch[buffer_isPrefetch_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_req_deps_MPORT_en = 1'h1;
  assign buffer_isPrefetch_req_deps_MPORT_addr = 2'h0;
  assign buffer_isPrefetch_req_deps_MPORT_data = buffer_isPrefetch[buffer_isPrefetch_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_req_deps_MPORT_1_en = 1'h1;
  assign buffer_isPrefetch_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_isPrefetch_req_deps_MPORT_1_data = buffer_isPrefetch[buffer_isPrefetch_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_req_deps_MPORT_2_en = 1'h1;
  assign buffer_isPrefetch_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_isPrefetch_req_deps_MPORT_2_data = buffer_isPrefetch[buffer_isPrefetch_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_req_deps_MPORT_3_en = 1'h1;
  assign buffer_isPrefetch_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_isPrefetch_req_deps_MPORT_3_data = buffer_isPrefetch[buffer_isPrefetch_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_isPrefetch_MPORT_data = io_in_bits_isPrefetch;
  assign buffer_isPrefetch_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_isPrefetch_MPORT_mask = 1'h1;
  assign buffer_isPrefetch_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_alias_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_alias_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_alias_issue_arb_io_in_0_bits_MPORT_data = buffer_alias[buffer_alias_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_alias_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_alias_issue_arb_io_in_1_bits_MPORT_data = buffer_alias[buffer_alias_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_alias_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_alias_issue_arb_io_in_2_bits_MPORT_data = buffer_alias[buffer_alias_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_alias_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_alias_issue_arb_io_in_3_bits_MPORT_data = buffer_alias[buffer_alias_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_dup_mask_MPORT_en = 1'h1;
  assign buffer_alias_dup_mask_MPORT_addr = 2'h0;
  assign buffer_alias_dup_mask_MPORT_data = buffer_alias[buffer_alias_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_alias_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_alias_dup_mask_MPORT_1_data = buffer_alias[buffer_alias_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_alias_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_alias_dup_mask_MPORT_2_data = buffer_alias[buffer_alias_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_alias_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_alias_dup_mask_MPORT_3_data = buffer_alias[buffer_alias_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_alias_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_alias_dup_mask_MPORT_4_data = buffer_alias[buffer_alias_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_alias_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_alias_dup_mask_MPORT_5_data = buffer_alias[buffer_alias_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_alias_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_alias_dup_mask_MPORT_6_data = buffer_alias[buffer_alias_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_alias_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_alias_dup_mask_MPORT_7_data = buffer_alias[buffer_alias_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_req_deps_MPORT_en = 1'h1;
  assign buffer_alias_req_deps_MPORT_addr = 2'h0;
  assign buffer_alias_req_deps_MPORT_data = buffer_alias[buffer_alias_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_req_deps_MPORT_1_en = 1'h1;
  assign buffer_alias_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_alias_req_deps_MPORT_1_data = buffer_alias[buffer_alias_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_req_deps_MPORT_2_en = 1'h1;
  assign buffer_alias_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_alias_req_deps_MPORT_2_data = buffer_alias[buffer_alias_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_req_deps_MPORT_3_en = 1'h1;
  assign buffer_alias_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_alias_req_deps_MPORT_3_data = buffer_alias[buffer_alias_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_alias_MPORT_data = io_in_bits_alias;
  assign buffer_alias_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_alias_MPORT_mask = 1'h1;
  assign buffer_alias_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_preferCache_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_preferCache_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_preferCache_issue_arb_io_in_0_bits_MPORT_data =
    buffer_preferCache[buffer_preferCache_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_preferCache_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_preferCache_issue_arb_io_in_1_bits_MPORT_data =
    buffer_preferCache[buffer_preferCache_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_preferCache_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_preferCache_issue_arb_io_in_2_bits_MPORT_data =
    buffer_preferCache[buffer_preferCache_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_preferCache_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_preferCache_issue_arb_io_in_3_bits_MPORT_data =
    buffer_preferCache[buffer_preferCache_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_dup_mask_MPORT_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_addr = 2'h0;
  assign buffer_preferCache_dup_mask_MPORT_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_preferCache_dup_mask_MPORT_1_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_preferCache_dup_mask_MPORT_2_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_preferCache_dup_mask_MPORT_3_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_preferCache_dup_mask_MPORT_4_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_preferCache_dup_mask_MPORT_5_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_preferCache_dup_mask_MPORT_6_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_preferCache_dup_mask_MPORT_7_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_req_deps_MPORT_en = 1'h1;
  assign buffer_preferCache_req_deps_MPORT_addr = 2'h0;
  assign buffer_preferCache_req_deps_MPORT_data = buffer_preferCache[buffer_preferCache_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_req_deps_MPORT_1_en = 1'h1;
  assign buffer_preferCache_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_preferCache_req_deps_MPORT_1_data = buffer_preferCache[buffer_preferCache_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_req_deps_MPORT_2_en = 1'h1;
  assign buffer_preferCache_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_preferCache_req_deps_MPORT_2_data = buffer_preferCache[buffer_preferCache_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_req_deps_MPORT_3_en = 1'h1;
  assign buffer_preferCache_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_preferCache_req_deps_MPORT_3_data = buffer_preferCache[buffer_preferCache_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_preferCache_MPORT_data = io_in_bits_preferCache;
  assign buffer_preferCache_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_preferCache_MPORT_mask = 1'h1;
  assign buffer_preferCache_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_dirty_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_dirty_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_dirty_issue_arb_io_in_0_bits_MPORT_data = buffer_dirty[buffer_dirty_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_dirty_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_dirty_issue_arb_io_in_1_bits_MPORT_data = buffer_dirty[buffer_dirty_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_dirty_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_dirty_issue_arb_io_in_2_bits_MPORT_data = buffer_dirty[buffer_dirty_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_dirty_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_dirty_issue_arb_io_in_3_bits_MPORT_data = buffer_dirty[buffer_dirty_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_dup_mask_MPORT_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_addr = 2'h0;
  assign buffer_dirty_dup_mask_MPORT_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_dirty_dup_mask_MPORT_1_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_dirty_dup_mask_MPORT_2_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_dirty_dup_mask_MPORT_3_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_dirty_dup_mask_MPORT_4_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_dirty_dup_mask_MPORT_5_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_dirty_dup_mask_MPORT_6_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_dirty_dup_mask_MPORT_7_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_req_deps_MPORT_en = 1'h1;
  assign buffer_dirty_req_deps_MPORT_addr = 2'h0;
  assign buffer_dirty_req_deps_MPORT_data = buffer_dirty[buffer_dirty_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_req_deps_MPORT_1_en = 1'h1;
  assign buffer_dirty_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_dirty_req_deps_MPORT_1_data = buffer_dirty[buffer_dirty_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_req_deps_MPORT_2_en = 1'h1;
  assign buffer_dirty_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_dirty_req_deps_MPORT_2_data = buffer_dirty[buffer_dirty_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_req_deps_MPORT_3_en = 1'h1;
  assign buffer_dirty_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_dirty_req_deps_MPORT_3_data = buffer_dirty[buffer_dirty_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_dirty_MPORT_data = io_in_bits_dirty;
  assign buffer_dirty_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_dirty_MPORT_mask = 1'h1;
  assign buffer_dirty_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_addr = 2'h0;
  assign buffer_fromProbeHelper_dup_mask_MPORT_data = buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_addr]
    ; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_fromProbeHelper_dup_mask_MPORT_1_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_2_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_3_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_fromProbeHelper_dup_mask_MPORT_4_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_fromProbeHelper_dup_mask_MPORT_5_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_fromProbeHelper_dup_mask_MPORT_6_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_fromProbeHelper_dup_mask_MPORT_7_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_req_deps_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_req_deps_MPORT_addr = 2'h0;
  assign buffer_fromProbeHelper_req_deps_MPORT_data = buffer_fromProbeHelper[buffer_fromProbeHelper_req_deps_MPORT_addr]
    ; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_req_deps_MPORT_1_en = 1'h1;
  assign buffer_fromProbeHelper_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_fromProbeHelper_req_deps_MPORT_1_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_req_deps_MPORT_2_en = 1'h1;
  assign buffer_fromProbeHelper_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_fromProbeHelper_req_deps_MPORT_2_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_req_deps_MPORT_3_en = 1'h1;
  assign buffer_fromProbeHelper_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_fromProbeHelper_req_deps_MPORT_3_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromProbeHelper_MPORT_data = io_in_bits_fromProbeHelper;
  assign buffer_fromProbeHelper_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_fromProbeHelper_MPORT_mask = 1'h1;
  assign buffer_fromProbeHelper_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_data =
    buffer_fromCmoHelper[buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_data =
    buffer_fromCmoHelper[buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_data =
    buffer_fromCmoHelper[buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_data =
    buffer_fromCmoHelper[buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_addr = 2'h0;
  assign buffer_fromCmoHelper_dup_mask_MPORT_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_fromCmoHelper_dup_mask_MPORT_1_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_2_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_3_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_fromCmoHelper_dup_mask_MPORT_4_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_fromCmoHelper_dup_mask_MPORT_5_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_fromCmoHelper_dup_mask_MPORT_6_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_fromCmoHelper_dup_mask_MPORT_7_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_req_deps_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_req_deps_MPORT_addr = 2'h0;
  assign buffer_fromCmoHelper_req_deps_MPORT_data = buffer_fromCmoHelper[buffer_fromCmoHelper_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_req_deps_MPORT_1_en = 1'h1;
  assign buffer_fromCmoHelper_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_fromCmoHelper_req_deps_MPORT_1_data = buffer_fromCmoHelper[buffer_fromCmoHelper_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_req_deps_MPORT_2_en = 1'h1;
  assign buffer_fromCmoHelper_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_fromCmoHelper_req_deps_MPORT_2_data = buffer_fromCmoHelper[buffer_fromCmoHelper_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_req_deps_MPORT_3_en = 1'h1;
  assign buffer_fromCmoHelper_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_fromCmoHelper_req_deps_MPORT_3_data = buffer_fromCmoHelper[buffer_fromCmoHelper_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_fromCmoHelper_MPORT_data = io_in_bits_fromCmoHelper;
  assign buffer_fromCmoHelper_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_fromCmoHelper_MPORT_mask = 1'h1;
  assign buffer_fromCmoHelper_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_addr = 2'h0;
  assign buffer_needProbeAckData_dup_mask_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_needProbeAckData_dup_mask_MPORT_1_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_2_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_3_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_needProbeAckData_dup_mask_MPORT_4_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_needProbeAckData_dup_mask_MPORT_5_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_needProbeAckData_dup_mask_MPORT_6_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_needProbeAckData_dup_mask_MPORT_7_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_req_deps_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_req_deps_MPORT_addr = 2'h0;
  assign buffer_needProbeAckData_req_deps_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_req_deps_MPORT_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_req_deps_MPORT_1_en = 1'h1;
  assign buffer_needProbeAckData_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_needProbeAckData_req_deps_MPORT_1_data =
    buffer_needProbeAckData[buffer_needProbeAckData_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_req_deps_MPORT_2_en = 1'h1;
  assign buffer_needProbeAckData_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_needProbeAckData_req_deps_MPORT_2_data =
    buffer_needProbeAckData[buffer_needProbeAckData_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_req_deps_MPORT_3_en = 1'h1;
  assign buffer_needProbeAckData_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_needProbeAckData_req_deps_MPORT_3_data =
    buffer_needProbeAckData[buffer_needProbeAckData_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 16:19]
  assign buffer_needProbeAckData_MPORT_data = io_in_bits_needProbeAckData;
  assign buffer_needProbeAckData_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_needProbeAckData_MPORT_mask = 1'h1;
  assign buffer_needProbeAckData_MPORT_en = _alloc_T_5 & _alloc_T_6;
  assign io_in_ready = ~full; // @[RequestBuffer.scala 45:18]
  assign io_out_valid = no_ready_entry & io_in_valid & ~full | output_pipe_io_deq_valid; // @[RequestBuffer.scala 43:70]
  assign io_out_bits_channel = no_ready_entry ? io_in_bits_channel : output_pipe_io_deq_bits_channel; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_opcode = no_ready_entry ? io_in_bits_opcode : output_pipe_io_deq_bits_opcode; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_param = no_ready_entry ? io_in_bits_param : output_pipe_io_deq_bits_param; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_size = no_ready_entry ? io_in_bits_size : output_pipe_io_deq_bits_size; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_source = no_ready_entry ? io_in_bits_source : output_pipe_io_deq_bits_source; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_set = no_ready_entry ? io_in_bits_set : output_pipe_io_deq_bits_set; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_tag = no_ready_entry ? io_in_bits_tag : output_pipe_io_deq_bits_tag; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_off = no_ready_entry ? io_in_bits_off : output_pipe_io_deq_bits_off; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_bufIdx = no_ready_entry ? io_in_bits_bufIdx : output_pipe_io_deq_bits_bufIdx; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_needHint = no_ready_entry ? io_in_bits_needHint : output_pipe_io_deq_bits_needHint; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_isPrefetch = no_ready_entry ? io_in_bits_isPrefetch : output_pipe_io_deq_bits_isPrefetch; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_alias = no_ready_entry ? io_in_bits_alias : output_pipe_io_deq_bits_alias; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_preferCache = no_ready_entry ? io_in_bits_preferCache : output_pipe_io_deq_bits_preferCache; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_dirty = no_ready_entry ? io_in_bits_dirty : output_pipe_io_deq_bits_dirty; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_fromProbeHelper = no_ready_entry ? io_in_bits_fromProbeHelper :
    output_pipe_io_deq_bits_fromProbeHelper; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_fromCmoHelper = no_ready_entry ? io_in_bits_fromCmoHelper : output_pipe_io_deq_bits_fromCmoHelper; // @[RequestBuffer.scala 41:21]
  assign io_out_bits_needProbeAckData = no_ready_entry ? io_in_bits_needProbeAckData :
    output_pipe_io_deq_bits_needProbeAckData; // @[RequestBuffer.scala 41:21]
  assign perfinfo_0 = {{5'd0}, perfinfo_0_REG}; // @[RequestBuffer.scala 117:14]
  assign perfinfo_1 = {{5'd0}, perfinfo_1_REG}; // @[RequestBuffer.scala 117:14]
  assign perfinfo_2 = {{5'd0}, perfinfo_2_REG}; // @[RequestBuffer.scala 117:14]
  assign perfinfo_3 = {{5'd0}, perfinfo_3_REG}; // @[RequestBuffer.scala 117:14]
  assign perfinfo_4 = {{5'd0}, perfinfo_4_REG}; // @[RequestBuffer.scala 117:14]
  assign perfinfo_5 = {{5'd0}, perfinfo_5_REG}; // @[RequestBuffer.scala 117:14]
  assign issue_arb_clock = clock;
  assign issue_arb_reset = reset;
  assign issue_arb_io_in_0_valid = valids_0 & rdys_0; // @[RequestBuffer.scala 30:43]
  assign issue_arb_io_in_0_bits_channel = buffer_channel_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_opcode = buffer_opcode_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_param = buffer_param_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_size = buffer_size_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_source = buffer_source_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_set = buffer_set_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_tag = buffer_tag_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_off = buffer_off_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_bufIdx = buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_needHint = buffer_needHint_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_isPrefetch = buffer_isPrefetch_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_alias = buffer_alias_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_preferCache = buffer_preferCache_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_dirty = buffer_dirty_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_fromProbeHelper = buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_fromCmoHelper = buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_0_bits_needProbeAckData = buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_valid = valids_1 & rdys_1; // @[RequestBuffer.scala 30:43]
  assign issue_arb_io_in_1_bits_channel = buffer_channel_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_opcode = buffer_opcode_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_param = buffer_param_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_size = buffer_size_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_source = buffer_source_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_set = buffer_set_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_tag = buffer_tag_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_off = buffer_off_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_bufIdx = buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_needHint = buffer_needHint_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_isPrefetch = buffer_isPrefetch_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_alias = buffer_alias_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_preferCache = buffer_preferCache_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_dirty = buffer_dirty_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_fromProbeHelper = buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_fromCmoHelper = buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_1_bits_needProbeAckData = buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_valid = valids_2 & rdys_2; // @[RequestBuffer.scala 30:43]
  assign issue_arb_io_in_2_bits_channel = buffer_channel_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_opcode = buffer_opcode_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_param = buffer_param_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_size = buffer_size_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_source = buffer_source_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_set = buffer_set_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_tag = buffer_tag_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_off = buffer_off_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_bufIdx = buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_needHint = buffer_needHint_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_isPrefetch = buffer_isPrefetch_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_alias = buffer_alias_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_preferCache = buffer_preferCache_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_dirty = buffer_dirty_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_fromProbeHelper = buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_fromCmoHelper = buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_2_bits_needProbeAckData = buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_valid = valids_3 & rdys_3; // @[RequestBuffer.scala 30:43]
  assign issue_arb_io_in_3_bits_channel = buffer_channel_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_opcode = buffer_opcode_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_param = buffer_param_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_size = buffer_size_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_source = buffer_source_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_set = buffer_set_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_tag = buffer_tag_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_off = buffer_off_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_bufIdx = buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_needHint = buffer_needHint_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_isPrefetch = buffer_isPrefetch_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_alias = buffer_alias_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_preferCache = buffer_preferCache_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_dirty = buffer_dirty_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_fromProbeHelper = buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_fromCmoHelper = buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_in_3_bits_needProbeAckData = buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 31:29]
  assign issue_arb_io_out_ready = output_pipe_io_enq_ready; // @[Decoupled.scala 365:17]
  assign output_pipe_clock = clock;
  assign output_pipe_reset = reset;
  assign output_pipe_io_enq_valid = issue_arb_io_out_valid; // @[Decoupled.scala 363:22]
  assign output_pipe_io_enq_bits_channel = issue_arb_io_out_bits_channel; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_opcode = issue_arb_io_out_bits_opcode; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_param = issue_arb_io_out_bits_param; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_size = issue_arb_io_out_bits_size; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_source = issue_arb_io_out_bits_source; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_set = issue_arb_io_out_bits_set; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_tag = issue_arb_io_out_bits_tag; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_off = issue_arb_io_out_bits_off; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_bufIdx = issue_arb_io_out_bits_bufIdx; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_needHint = issue_arb_io_out_bits_needHint; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_isPrefetch = issue_arb_io_out_bits_isPrefetch; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_alias = issue_arb_io_out_bits_alias; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_preferCache = issue_arb_io_out_bits_preferCache; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_dirty = issue_arb_io_out_bits_dirty; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_fromProbeHelper = issue_arb_io_out_bits_fromProbeHelper; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_fromCmoHelper = issue_arb_io_out_bits_fromCmoHelper; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_needProbeAckData = issue_arb_io_out_bits_needProbeAckData; // @[Decoupled.scala 364:21]
  assign output_pipe_io_deq_ready = io_out_ready; // @[RequestBuffer.scala 37:21]
  always @(posedge clock) begin
    if (buffer_channel_MPORT_en & buffer_channel_MPORT_mask) begin
      buffer_channel[buffer_channel_MPORT_addr] <= buffer_channel_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_opcode_MPORT_en & buffer_opcode_MPORT_mask) begin
      buffer_opcode[buffer_opcode_MPORT_addr] <= buffer_opcode_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_param_MPORT_en & buffer_param_MPORT_mask) begin
      buffer_param[buffer_param_MPORT_addr] <= buffer_param_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_size_MPORT_en & buffer_size_MPORT_mask) begin
      buffer_size[buffer_size_MPORT_addr] <= buffer_size_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_source_MPORT_en & buffer_source_MPORT_mask) begin
      buffer_source[buffer_source_MPORT_addr] <= buffer_source_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_set_MPORT_en & buffer_set_MPORT_mask) begin
      buffer_set[buffer_set_MPORT_addr] <= buffer_set_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_tag_MPORT_en & buffer_tag_MPORT_mask) begin
      buffer_tag[buffer_tag_MPORT_addr] <= buffer_tag_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_off_MPORT_en & buffer_off_MPORT_mask) begin
      buffer_off[buffer_off_MPORT_addr] <= buffer_off_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_bufIdx_MPORT_en & buffer_bufIdx_MPORT_mask) begin
      buffer_bufIdx[buffer_bufIdx_MPORT_addr] <= buffer_bufIdx_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_needHint_MPORT_en & buffer_needHint_MPORT_mask) begin
      buffer_needHint[buffer_needHint_MPORT_addr] <= buffer_needHint_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_isPrefetch_MPORT_en & buffer_isPrefetch_MPORT_mask) begin
      buffer_isPrefetch[buffer_isPrefetch_MPORT_addr] <= buffer_isPrefetch_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_alias_MPORT_en & buffer_alias_MPORT_mask) begin
      buffer_alias[buffer_alias_MPORT_addr] <= buffer_alias_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_preferCache_MPORT_en & buffer_preferCache_MPORT_mask) begin
      buffer_preferCache[buffer_preferCache_MPORT_addr] <= buffer_preferCache_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_dirty_MPORT_en & buffer_dirty_MPORT_mask) begin
      buffer_dirty[buffer_dirty_MPORT_addr] <= buffer_dirty_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_fromProbeHelper_MPORT_en & buffer_fromProbeHelper_MPORT_mask) begin
      buffer_fromProbeHelper[buffer_fromProbeHelper_MPORT_addr] <= buffer_fromProbeHelper_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_fromCmoHelper_MPORT_en & buffer_fromCmoHelper_MPORT_mask) begin
      buffer_fromCmoHelper[buffer_fromCmoHelper_MPORT_addr] <= buffer_fromCmoHelper_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (buffer_needProbeAckData_MPORT_en & buffer_needProbeAckData_MPORT_mask) begin
      buffer_needProbeAckData[buffer_needProbeAckData_MPORT_addr] <= buffer_needProbeAckData_MPORT_data; // @[RequestBuffer.scala 16:19]
    end
    if (reset) begin // @[RequestBuffer.scala 17:23]
      valids_0 <= 1'h0; // @[RequestBuffer.scala 17:23]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      valids_0 <= _GEN_4;
    end else if (_T) begin // @[RequestBuffer.scala 32:36]
      valids_0 <= 1'h0; // @[RequestBuffer.scala 33:17]
    end
    if (reset) begin // @[RequestBuffer.scala 17:23]
      valids_1 <= 1'h0; // @[RequestBuffer.scala 17:23]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      valids_1 <= _GEN_5;
    end else if (_T_1) begin // @[RequestBuffer.scala 32:36]
      valids_1 <= 1'h0; // @[RequestBuffer.scala 33:17]
    end
    if (reset) begin // @[RequestBuffer.scala 17:23]
      valids_2 <= 1'h0; // @[RequestBuffer.scala 17:23]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      valids_2 <= _GEN_6;
    end else if (_T_2) begin // @[RequestBuffer.scala 32:36]
      valids_2 <= 1'h0; // @[RequestBuffer.scala 33:17]
    end
    if (reset) begin // @[RequestBuffer.scala 17:23]
      valids_3 <= 1'h0; // @[RequestBuffer.scala 17:23]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      valids_3 <= _GEN_7;
    end else if (_T_3) begin // @[RequestBuffer.scala 32:36]
      valids_3 <= 1'h0; // @[RequestBuffer.scala 33:17]
    end
    if (valids_0) begin // @[RequestBuffer.scala 79:20]
      wait_table_0 <= wait_next; // @[RequestBuffer.scala 86:21]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      if (2'h0 == insert_idx) begin // @[RequestBuffer.scala 71:28]
        wait_table_0 <= _wait_table_T; // @[RequestBuffer.scala 71:28]
      end
    end
    if (valids_1) begin // @[RequestBuffer.scala 79:20]
      wait_table_1 <= wait_next_1; // @[RequestBuffer.scala 86:21]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      if (2'h1 == insert_idx) begin // @[RequestBuffer.scala 71:28]
        wait_table_1 <= _wait_table_T; // @[RequestBuffer.scala 71:28]
      end
    end
    if (valids_2) begin // @[RequestBuffer.scala 79:20]
      wait_table_2 <= wait_next_2; // @[RequestBuffer.scala 86:21]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      if (2'h2 == insert_idx) begin // @[RequestBuffer.scala 71:28]
        wait_table_2 <= _wait_table_T; // @[RequestBuffer.scala 71:28]
      end
    end
    if (valids_3) begin // @[RequestBuffer.scala 79:20]
      wait_table_3 <= wait_next_3; // @[RequestBuffer.scala 86:21]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      if (2'h3 == insert_idx) begin // @[RequestBuffer.scala 71:28]
        wait_table_3 <= _wait_table_T; // @[RequestBuffer.scala 71:28]
      end
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h0 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_0_0 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_0_0 <= _GEN_61;
      end
    end else begin
      buffer_dep_mask_0_0 <= _GEN_61;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h1 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_0_1 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_0_1 <= _GEN_65;
      end
    end else begin
      buffer_dep_mask_0_1 <= _GEN_65;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h2 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_0_2 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_0_2 <= _GEN_69;
      end
    end else begin
      buffer_dep_mask_0_2 <= _GEN_69;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h3 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_0_3 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_0_3 <= _GEN_73;
      end
    end else begin
      buffer_dep_mask_0_3 <= _GEN_73;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h0 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_1_0 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_1_0 <= _GEN_62;
      end
    end else begin
      buffer_dep_mask_1_0 <= _GEN_62;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h1 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_1_1 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_1_1 <= _GEN_66;
      end
    end else begin
      buffer_dep_mask_1_1 <= _GEN_66;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h2 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_1_2 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_1_2 <= _GEN_70;
      end
    end else begin
      buffer_dep_mask_1_2 <= _GEN_70;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h3 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_1_3 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_1_3 <= _GEN_74;
      end
    end else begin
      buffer_dep_mask_1_3 <= _GEN_74;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h0 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_2_0 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_2_0 <= _GEN_63;
      end
    end else begin
      buffer_dep_mask_2_0 <= _GEN_63;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h1 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_2_1 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_2_1 <= _GEN_67;
      end
    end else begin
      buffer_dep_mask_2_1 <= _GEN_67;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h2 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_2_2 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_2_2 <= _GEN_71;
      end
    end else begin
      buffer_dep_mask_2_2 <= _GEN_71;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h3 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_2_3 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_2_3 <= _GEN_75;
      end
    end else begin
      buffer_dep_mask_2_3 <= _GEN_75;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h0 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_3_0 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_3_0 <= _GEN_64;
      end
    end else begin
      buffer_dep_mask_3_0 <= _GEN_64;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h1 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_3_1 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_3_1 <= _GEN_68;
      end
    end else begin
      buffer_dep_mask_3_1 <= _GEN_68;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h2 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_3_2 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_3_2 <= _GEN_72;
      end
    end else begin
      buffer_dep_mask_3_2 <= _GEN_72;
    end
    if (_T_34) begin // @[RequestBuffer.scala 89:34]
      if (2'h3 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 90:47]
        buffer_dep_mask_3_3 <= 1'h0; // @[RequestBuffer.scala 90:47]
      end else begin
        buffer_dep_mask_3_3 <= _GEN_76;
      end
    end else begin
      buffer_dep_mask_3_3 <= _GEN_76;
    end
    if (reset) begin // @[RequestBuffer.scala 26:21]
      rdys_0 <= 1'h0; // @[RequestBuffer.scala 26:21]
    end else if (valids_0) begin // @[RequestBuffer.scala 79:20]
      rdys_0 <= ~(|wait_next) & ~(|_rdys_0_T_2); // @[RequestBuffer.scala 87:15]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      if (2'h0 == insert_idx) begin // @[RequestBuffer.scala 74:22]
        rdys_0 <= ~conflict & ~(|_rdys_T_1); // @[RequestBuffer.scala 74:22]
      end
    end
    if (reset) begin // @[RequestBuffer.scala 26:21]
      rdys_1 <= 1'h0; // @[RequestBuffer.scala 26:21]
    end else if (valids_1) begin // @[RequestBuffer.scala 79:20]
      rdys_1 <= ~(|wait_next_1) & ~(|_rdys_1_T_2); // @[RequestBuffer.scala 87:15]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      if (2'h1 == insert_idx) begin // @[RequestBuffer.scala 74:22]
        rdys_1 <= ~conflict & ~(|_rdys_T_1); // @[RequestBuffer.scala 74:22]
      end
    end
    if (reset) begin // @[RequestBuffer.scala 26:21]
      rdys_2 <= 1'h0; // @[RequestBuffer.scala 26:21]
    end else if (valids_2) begin // @[RequestBuffer.scala 79:20]
      rdys_2 <= ~(|wait_next_2) & ~(|_rdys_2_T_2); // @[RequestBuffer.scala 87:15]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      if (2'h2 == insert_idx) begin // @[RequestBuffer.scala 74:22]
        rdys_2 <= ~conflict & ~(|_rdys_T_1); // @[RequestBuffer.scala 74:22]
      end
    end
    if (reset) begin // @[RequestBuffer.scala 26:21]
      rdys_3 <= 1'h0; // @[RequestBuffer.scala 26:21]
    end else if (valids_3) begin // @[RequestBuffer.scala 79:20]
      rdys_3 <= ~(|wait_next_3) & ~(|_rdys_3_T_2); // @[RequestBuffer.scala 87:15]
    end else if (alloc) begin // @[RequestBuffer.scala 68:14]
      if (2'h3 == insert_idx) begin // @[RequestBuffer.scala 74:22]
        rdys_3 <= ~conflict & ~(|_rdys_T_1); // @[RequestBuffer.scala 74:22]
      end
    end
    perfinfo_0_REG <= dup & _io_out_valid_T_2; // @[RequestBuffer.scala 108:40]
    perfinfo_1_REG <= no_ready_entry & _T_46; // @[RequestBuffer.scala 109:51]
    perfinfo_2_REG <= _io_out_valid_T_2 & io_in_valid & ~(no_ready_entry & io_out_ready) & ~dup; // @[RequestBuffer.scala 67:83]
    perfinfo_3_REG <= &_full_T; // @[RequestBuffer.scala 39:30]
    perfinfo_4_REG <= _T_46 & io_in_bits_isPrefetch; // @[RequestBuffer.scala 112:49]
    perfinfo_5_REG <= _T_46 & _T_67; // @[RequestBuffer.scala 113:49]
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_channel[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_opcode[initvar] = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_param[initvar] = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_size[initvar] = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_source[initvar] = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_set[initvar] = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_tag[initvar] = _RAND_6[20:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_off[initvar] = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_bufIdx[initvar] = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_needHint[initvar] = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_isPrefetch[initvar] = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_alias[initvar] = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_preferCache[initvar] = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_dirty[initvar] = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_fromProbeHelper[initvar] = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_fromCmoHelper[initvar] = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_needProbeAckData[initvar] = _RAND_16[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  valids_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  valids_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  valids_2 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  valids_3 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  wait_table_0 = _RAND_21[13:0];
  _RAND_22 = {1{`RANDOM}};
  wait_table_1 = _RAND_22[13:0];
  _RAND_23 = {1{`RANDOM}};
  wait_table_2 = _RAND_23[13:0];
  _RAND_24 = {1{`RANDOM}};
  wait_table_3 = _RAND_24[13:0];
  _RAND_25 = {1{`RANDOM}};
  buffer_dep_mask_0_0 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  buffer_dep_mask_0_1 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  buffer_dep_mask_0_2 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  buffer_dep_mask_0_3 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  buffer_dep_mask_1_0 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  buffer_dep_mask_1_1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  buffer_dep_mask_1_2 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  buffer_dep_mask_1_3 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  buffer_dep_mask_2_0 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  buffer_dep_mask_2_1 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  buffer_dep_mask_2_2 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  buffer_dep_mask_2_3 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  buffer_dep_mask_3_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  buffer_dep_mask_3_1 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  buffer_dep_mask_3_2 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  buffer_dep_mask_3_3 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  rdys_0 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  rdys_1 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  rdys_2 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  rdys_3 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  perfinfo_0_REG = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  perfinfo_1_REG = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  perfinfo_2_REG = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  perfinfo_3_REG = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  perfinfo_4_REG = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  perfinfo_5_REG = _RAND_50[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
