module MSHRAlloc(
  input         clock,
  output        io_a_req_ready,
  input         io_a_req_valid,
  input  [2:0]  io_a_req_bits_channel,
  input  [2:0]  io_a_req_bits_opcode,
  input  [2:0]  io_a_req_bits_param,
  input  [2:0]  io_a_req_bits_size,
  input  [5:0]  io_a_req_bits_source,
  input  [7:0]  io_a_req_bits_set,
  input  [20:0] io_a_req_bits_tag,
  input  [5:0]  io_a_req_bits_off,
  input  [2:0]  io_a_req_bits_bufIdx,
  input         io_a_req_bits_needHint,
  input         io_a_req_bits_isPrefetch,
  input  [1:0]  io_a_req_bits_alias,
  input         io_a_req_bits_preferCache,
  input         io_a_req_bits_dirty,
  input         io_a_req_bits_fromProbeHelper,
  input         io_a_req_bits_fromCmoHelper,
  input         io_a_req_bits_needProbeAckData,
  output        io_breq_ready,
  input         io_breq_valid,
  input  [2:0]  io_breq_bits_channel,
  input  [2:0]  io_breq_bits_opcode,
  input  [2:0]  io_breq_bits_param,
  input  [2:0]  io_breq_bits_size,
  input  [5:0]  io_breq_bits_source,
  input  [7:0]  io_breq_bits_set,
  input  [20:0] io_breq_bits_tag,
  input  [5:0]  io_breq_bits_off,
  input  [2:0]  io_breq_bits_bufIdx,
  input         io_breq_bits_needHint,
  input         io_breq_bits_isPrefetch,
  input  [1:0]  io_breq_bits_alias,
  input         io_breq_bits_preferCache,
  input         io_breq_bits_dirty,
  input         io_breq_bits_fromProbeHelper,
  input         io_breq_bits_fromCmoHelper,
  input         io_breq_bits_needProbeAckData,
  output        io_c_req_ready,
  input         io_c_req_valid,
  input  [2:0]  io_c_req_bits_opcode,
  input  [2:0]  io_c_req_bits_param,
  input  [2:0]  io_c_req_bits_size,
  input  [5:0]  io_c_req_bits_source,
  input  [7:0]  io_c_req_bits_set,
  input  [20:0] io_c_req_bits_tag,
  input  [5:0]  io_c_req_bits_off,
  input  [2:0]  io_c_req_bits_bufIdx,
  input         io_c_req_bits_dirty,
  input         io_status_0_valid,
  input  [7:0]  io_status_0_bits_set,
  input         io_status_0_bits_nestB,
  input         io_status_0_bits_nestC,
  input         io_status_0_bits_is_prefetch,
  input         io_status_1_valid,
  input  [7:0]  io_status_1_bits_set,
  input         io_status_1_bits_nestB,
  input         io_status_1_bits_nestC,
  input         io_status_1_bits_is_prefetch,
  input         io_status_2_valid,
  input  [7:0]  io_status_2_bits_set,
  input         io_status_2_bits_nestB,
  input         io_status_2_bits_nestC,
  input         io_status_2_bits_is_prefetch,
  input         io_status_3_valid,
  input  [7:0]  io_status_3_bits_set,
  input         io_status_3_bits_nestB,
  input         io_status_3_bits_nestC,
  input         io_status_3_bits_is_prefetch,
  input         io_status_4_valid,
  input  [7:0]  io_status_4_bits_set,
  input         io_status_4_bits_nestB,
  input         io_status_4_bits_nestC,
  input         io_status_4_bits_is_prefetch,
  input         io_status_5_valid,
  input  [7:0]  io_status_5_bits_set,
  input         io_status_5_bits_nestB,
  input         io_status_5_bits_nestC,
  input         io_status_5_bits_is_prefetch,
  input         io_status_6_valid,
  input  [7:0]  io_status_6_bits_set,
  input         io_status_6_bits_nestB,
  input         io_status_6_bits_nestC,
  input         io_status_6_bits_is_prefetch,
  input         io_status_7_valid,
  input  [7:0]  io_status_7_bits_set,
  input         io_status_7_bits_nestB,
  input         io_status_7_bits_nestC,
  input         io_status_7_bits_is_prefetch,
  input         io_status_8_valid,
  input  [7:0]  io_status_8_bits_set,
  input         io_status_8_bits_nestB,
  input         io_status_8_bits_nestC,
  input         io_status_8_bits_is_prefetch,
  input         io_status_9_valid,
  input  [7:0]  io_status_9_bits_set,
  input         io_status_9_bits_nestB,
  input         io_status_9_bits_nestC,
  input         io_status_9_bits_is_prefetch,
  input         io_status_10_valid,
  input  [7:0]  io_status_10_bits_set,
  input         io_status_10_bits_nestB,
  input         io_status_10_bits_nestC,
  input         io_status_10_bits_is_prefetch,
  input         io_status_11_valid,
  input  [7:0]  io_status_11_bits_set,
  input         io_status_11_bits_nestB,
  input         io_status_11_bits_nestC,
  input         io_status_11_bits_is_prefetch,
  input         io_status_12_valid,
  input  [7:0]  io_status_12_bits_set,
  input         io_status_12_bits_nestB,
  input         io_status_12_bits_nestC,
  input         io_status_12_bits_is_prefetch,
  input         io_status_13_valid,
  input  [7:0]  io_status_13_bits_set,
  input         io_status_13_bits_nestB,
  input         io_status_13_bits_nestC,
  input         io_status_13_bits_is_prefetch,
  input         io_status_14_valid,
  input  [7:0]  io_status_14_bits_set,
  input         io_status_14_bits_nestC,
  input         io_status_14_bits_is_prefetch,
  input         io_status_15_valid,
  input  [7:0]  io_status_15_bits_set,
  input         io_status_15_bits_is_prefetch,
  output        io_alloc_0_valid,
  output [2:0]  io_alloc_0_bits_channel,
  output [2:0]  io_alloc_0_bits_opcode,
  output [2:0]  io_alloc_0_bits_param,
  output [2:0]  io_alloc_0_bits_size,
  output [5:0]  io_alloc_0_bits_source,
  output [7:0]  io_alloc_0_bits_set,
  output [20:0] io_alloc_0_bits_tag,
  output [5:0]  io_alloc_0_bits_off,
  output [2:0]  io_alloc_0_bits_bufIdx,
  output        io_alloc_0_bits_needHint,
  output        io_alloc_0_bits_isPrefetch,
  output [1:0]  io_alloc_0_bits_alias,
  output        io_alloc_0_bits_preferCache,
  output        io_alloc_0_bits_dirty,
  output        io_alloc_0_bits_fromProbeHelper,
  output        io_alloc_0_bits_fromCmoHelper,
  output        io_alloc_0_bits_needProbeAckData,
  output        io_alloc_1_valid,
  output [2:0]  io_alloc_1_bits_channel,
  output [2:0]  io_alloc_1_bits_opcode,
  output [2:0]  io_alloc_1_bits_param,
  output [2:0]  io_alloc_1_bits_size,
  output [5:0]  io_alloc_1_bits_source,
  output [7:0]  io_alloc_1_bits_set,
  output [20:0] io_alloc_1_bits_tag,
  output [5:0]  io_alloc_1_bits_off,
  output [2:0]  io_alloc_1_bits_bufIdx,
  output        io_alloc_1_bits_needHint,
  output        io_alloc_1_bits_isPrefetch,
  output [1:0]  io_alloc_1_bits_alias,
  output        io_alloc_1_bits_preferCache,
  output        io_alloc_1_bits_dirty,
  output        io_alloc_1_bits_fromProbeHelper,
  output        io_alloc_1_bits_fromCmoHelper,
  output        io_alloc_1_bits_needProbeAckData,
  output        io_alloc_2_valid,
  output [2:0]  io_alloc_2_bits_channel,
  output [2:0]  io_alloc_2_bits_opcode,
  output [2:0]  io_alloc_2_bits_param,
  output [2:0]  io_alloc_2_bits_size,
  output [5:0]  io_alloc_2_bits_source,
  output [7:0]  io_alloc_2_bits_set,
  output [20:0] io_alloc_2_bits_tag,
  output [5:0]  io_alloc_2_bits_off,
  output [2:0]  io_alloc_2_bits_bufIdx,
  output        io_alloc_2_bits_needHint,
  output        io_alloc_2_bits_isPrefetch,
  output [1:0]  io_alloc_2_bits_alias,
  output        io_alloc_2_bits_preferCache,
  output        io_alloc_2_bits_dirty,
  output        io_alloc_2_bits_fromProbeHelper,
  output        io_alloc_2_bits_fromCmoHelper,
  output        io_alloc_2_bits_needProbeAckData,
  output        io_alloc_3_valid,
  output [2:0]  io_alloc_3_bits_channel,
  output [2:0]  io_alloc_3_bits_opcode,
  output [2:0]  io_alloc_3_bits_param,
  output [2:0]  io_alloc_3_bits_size,
  output [5:0]  io_alloc_3_bits_source,
  output [7:0]  io_alloc_3_bits_set,
  output [20:0] io_alloc_3_bits_tag,
  output [5:0]  io_alloc_3_bits_off,
  output [2:0]  io_alloc_3_bits_bufIdx,
  output        io_alloc_3_bits_needHint,
  output        io_alloc_3_bits_isPrefetch,
  output [1:0]  io_alloc_3_bits_alias,
  output        io_alloc_3_bits_preferCache,
  output        io_alloc_3_bits_dirty,
  output        io_alloc_3_bits_fromProbeHelper,
  output        io_alloc_3_bits_fromCmoHelper,
  output        io_alloc_3_bits_needProbeAckData,
  output        io_alloc_4_valid,
  output [2:0]  io_alloc_4_bits_channel,
  output [2:0]  io_alloc_4_bits_opcode,
  output [2:0]  io_alloc_4_bits_param,
  output [2:0]  io_alloc_4_bits_size,
  output [5:0]  io_alloc_4_bits_source,
  output [7:0]  io_alloc_4_bits_set,
  output [20:0] io_alloc_4_bits_tag,
  output [5:0]  io_alloc_4_bits_off,
  output [2:0]  io_alloc_4_bits_bufIdx,
  output        io_alloc_4_bits_needHint,
  output        io_alloc_4_bits_isPrefetch,
  output [1:0]  io_alloc_4_bits_alias,
  output        io_alloc_4_bits_preferCache,
  output        io_alloc_4_bits_dirty,
  output        io_alloc_4_bits_fromProbeHelper,
  output        io_alloc_4_bits_fromCmoHelper,
  output        io_alloc_4_bits_needProbeAckData,
  output        io_alloc_5_valid,
  output [2:0]  io_alloc_5_bits_channel,
  output [2:0]  io_alloc_5_bits_opcode,
  output [2:0]  io_alloc_5_bits_param,
  output [2:0]  io_alloc_5_bits_size,
  output [5:0]  io_alloc_5_bits_source,
  output [7:0]  io_alloc_5_bits_set,
  output [20:0] io_alloc_5_bits_tag,
  output [5:0]  io_alloc_5_bits_off,
  output [2:0]  io_alloc_5_bits_bufIdx,
  output        io_alloc_5_bits_needHint,
  output        io_alloc_5_bits_isPrefetch,
  output [1:0]  io_alloc_5_bits_alias,
  output        io_alloc_5_bits_preferCache,
  output        io_alloc_5_bits_dirty,
  output        io_alloc_5_bits_fromProbeHelper,
  output        io_alloc_5_bits_fromCmoHelper,
  output        io_alloc_5_bits_needProbeAckData,
  output        io_alloc_6_valid,
  output [2:0]  io_alloc_6_bits_channel,
  output [2:0]  io_alloc_6_bits_opcode,
  output [2:0]  io_alloc_6_bits_param,
  output [2:0]  io_alloc_6_bits_size,
  output [5:0]  io_alloc_6_bits_source,
  output [7:0]  io_alloc_6_bits_set,
  output [20:0] io_alloc_6_bits_tag,
  output [5:0]  io_alloc_6_bits_off,
  output [2:0]  io_alloc_6_bits_bufIdx,
  output        io_alloc_6_bits_needHint,
  output        io_alloc_6_bits_isPrefetch,
  output [1:0]  io_alloc_6_bits_alias,
  output        io_alloc_6_bits_preferCache,
  output        io_alloc_6_bits_dirty,
  output        io_alloc_6_bits_fromProbeHelper,
  output        io_alloc_6_bits_fromCmoHelper,
  output        io_alloc_6_bits_needProbeAckData,
  output        io_alloc_7_valid,
  output [2:0]  io_alloc_7_bits_channel,
  output [2:0]  io_alloc_7_bits_opcode,
  output [2:0]  io_alloc_7_bits_param,
  output [2:0]  io_alloc_7_bits_size,
  output [5:0]  io_alloc_7_bits_source,
  output [7:0]  io_alloc_7_bits_set,
  output [20:0] io_alloc_7_bits_tag,
  output [5:0]  io_alloc_7_bits_off,
  output [2:0]  io_alloc_7_bits_bufIdx,
  output        io_alloc_7_bits_needHint,
  output        io_alloc_7_bits_isPrefetch,
  output [1:0]  io_alloc_7_bits_alias,
  output        io_alloc_7_bits_preferCache,
  output        io_alloc_7_bits_dirty,
  output        io_alloc_7_bits_fromProbeHelper,
  output        io_alloc_7_bits_fromCmoHelper,
  output        io_alloc_7_bits_needProbeAckData,
  output        io_alloc_8_valid,
  output [2:0]  io_alloc_8_bits_channel,
  output [2:0]  io_alloc_8_bits_opcode,
  output [2:0]  io_alloc_8_bits_param,
  output [2:0]  io_alloc_8_bits_size,
  output [5:0]  io_alloc_8_bits_source,
  output [7:0]  io_alloc_8_bits_set,
  output [20:0] io_alloc_8_bits_tag,
  output [5:0]  io_alloc_8_bits_off,
  output [2:0]  io_alloc_8_bits_bufIdx,
  output        io_alloc_8_bits_needHint,
  output        io_alloc_8_bits_isPrefetch,
  output [1:0]  io_alloc_8_bits_alias,
  output        io_alloc_8_bits_preferCache,
  output        io_alloc_8_bits_dirty,
  output        io_alloc_8_bits_fromProbeHelper,
  output        io_alloc_8_bits_fromCmoHelper,
  output        io_alloc_8_bits_needProbeAckData,
  output        io_alloc_9_valid,
  output [2:0]  io_alloc_9_bits_channel,
  output [2:0]  io_alloc_9_bits_opcode,
  output [2:0]  io_alloc_9_bits_param,
  output [2:0]  io_alloc_9_bits_size,
  output [5:0]  io_alloc_9_bits_source,
  output [7:0]  io_alloc_9_bits_set,
  output [20:0] io_alloc_9_bits_tag,
  output [5:0]  io_alloc_9_bits_off,
  output [2:0]  io_alloc_9_bits_bufIdx,
  output        io_alloc_9_bits_needHint,
  output        io_alloc_9_bits_isPrefetch,
  output [1:0]  io_alloc_9_bits_alias,
  output        io_alloc_9_bits_preferCache,
  output        io_alloc_9_bits_dirty,
  output        io_alloc_9_bits_fromProbeHelper,
  output        io_alloc_9_bits_fromCmoHelper,
  output        io_alloc_9_bits_needProbeAckData,
  output        io_alloc_10_valid,
  output [2:0]  io_alloc_10_bits_channel,
  output [2:0]  io_alloc_10_bits_opcode,
  output [2:0]  io_alloc_10_bits_param,
  output [2:0]  io_alloc_10_bits_size,
  output [5:0]  io_alloc_10_bits_source,
  output [7:0]  io_alloc_10_bits_set,
  output [20:0] io_alloc_10_bits_tag,
  output [5:0]  io_alloc_10_bits_off,
  output [2:0]  io_alloc_10_bits_bufIdx,
  output        io_alloc_10_bits_needHint,
  output        io_alloc_10_bits_isPrefetch,
  output [1:0]  io_alloc_10_bits_alias,
  output        io_alloc_10_bits_preferCache,
  output        io_alloc_10_bits_dirty,
  output        io_alloc_10_bits_fromProbeHelper,
  output        io_alloc_10_bits_fromCmoHelper,
  output        io_alloc_10_bits_needProbeAckData,
  output        io_alloc_11_valid,
  output [2:0]  io_alloc_11_bits_channel,
  output [2:0]  io_alloc_11_bits_opcode,
  output [2:0]  io_alloc_11_bits_param,
  output [2:0]  io_alloc_11_bits_size,
  output [5:0]  io_alloc_11_bits_source,
  output [7:0]  io_alloc_11_bits_set,
  output [20:0] io_alloc_11_bits_tag,
  output [5:0]  io_alloc_11_bits_off,
  output [2:0]  io_alloc_11_bits_bufIdx,
  output        io_alloc_11_bits_needHint,
  output        io_alloc_11_bits_isPrefetch,
  output [1:0]  io_alloc_11_bits_alias,
  output        io_alloc_11_bits_preferCache,
  output        io_alloc_11_bits_dirty,
  output        io_alloc_11_bits_fromProbeHelper,
  output        io_alloc_11_bits_fromCmoHelper,
  output        io_alloc_11_bits_needProbeAckData,
  output        io_alloc_12_valid,
  output [2:0]  io_alloc_12_bits_channel,
  output [2:0]  io_alloc_12_bits_opcode,
  output [2:0]  io_alloc_12_bits_param,
  output [2:0]  io_alloc_12_bits_size,
  output [5:0]  io_alloc_12_bits_source,
  output [7:0]  io_alloc_12_bits_set,
  output [20:0] io_alloc_12_bits_tag,
  output [5:0]  io_alloc_12_bits_off,
  output [2:0]  io_alloc_12_bits_bufIdx,
  output        io_alloc_12_bits_needHint,
  output        io_alloc_12_bits_isPrefetch,
  output [1:0]  io_alloc_12_bits_alias,
  output        io_alloc_12_bits_preferCache,
  output        io_alloc_12_bits_dirty,
  output        io_alloc_12_bits_fromProbeHelper,
  output        io_alloc_12_bits_fromCmoHelper,
  output        io_alloc_12_bits_needProbeAckData,
  output        io_alloc_13_valid,
  output [2:0]  io_alloc_13_bits_channel,
  output [2:0]  io_alloc_13_bits_opcode,
  output [2:0]  io_alloc_13_bits_param,
  output [2:0]  io_alloc_13_bits_size,
  output [5:0]  io_alloc_13_bits_source,
  output [7:0]  io_alloc_13_bits_set,
  output [20:0] io_alloc_13_bits_tag,
  output [5:0]  io_alloc_13_bits_off,
  output [2:0]  io_alloc_13_bits_bufIdx,
  output        io_alloc_13_bits_needHint,
  output        io_alloc_13_bits_isPrefetch,
  output [1:0]  io_alloc_13_bits_alias,
  output        io_alloc_13_bits_preferCache,
  output        io_alloc_13_bits_dirty,
  output        io_alloc_13_bits_fromProbeHelper,
  output        io_alloc_13_bits_fromCmoHelper,
  output        io_alloc_13_bits_needProbeAckData,
  output        io_alloc_14_valid,
  output [2:0]  io_alloc_14_bits_channel,
  output [2:0]  io_alloc_14_bits_opcode,
  output [2:0]  io_alloc_14_bits_param,
  output [2:0]  io_alloc_14_bits_size,
  output [5:0]  io_alloc_14_bits_source,
  output [7:0]  io_alloc_14_bits_set,
  output [20:0] io_alloc_14_bits_tag,
  output [5:0]  io_alloc_14_bits_off,
  output [2:0]  io_alloc_14_bits_bufIdx,
  output        io_alloc_14_bits_needHint,
  output        io_alloc_14_bits_isPrefetch,
  output [1:0]  io_alloc_14_bits_alias,
  output        io_alloc_14_bits_preferCache,
  output        io_alloc_14_bits_dirty,
  output        io_alloc_14_bits_fromProbeHelper,
  output        io_alloc_14_bits_fromCmoHelper,
  output        io_alloc_14_bits_needProbeAckData,
  output        io_alloc_15_valid,
  output [2:0]  io_alloc_15_bits_opcode,
  output [2:0]  io_alloc_15_bits_param,
  output [2:0]  io_alloc_15_bits_size,
  output [5:0]  io_alloc_15_bits_source,
  output [7:0]  io_alloc_15_bits_set,
  output [20:0] io_alloc_15_bits_tag,
  output [5:0]  io_alloc_15_bits_off,
  output [2:0]  io_alloc_15_bits_bufIdx,
  output        io_alloc_15_bits_dirty,
  input         io_dirRead_ready,
  output        io_dirRead_valid,
  output [15:0] io_dirRead_bits_idOH,
  output [20:0] io_dirRead_bits_tag,
  output [7:0]  io_dirRead_bits_set,
  output [2:0]  io_dirRead_bits_replacerInfo_channel,
  output [2:0]  io_dirRead_bits_replacerInfo_opcode,
  output [5:0]  io_dirRead_bits_source,
  output        io_bc_mask_valid,
  output        io_bc_mask_bits_0,
  output        io_bc_mask_bits_1,
  output        io_bc_mask_bits_2,
  output        io_bc_mask_bits_3,
  output        io_bc_mask_bits_4,
  output        io_bc_mask_bits_5,
  output        io_bc_mask_bits_6,
  output        io_bc_mask_bits_7,
  output        io_bc_mask_bits_8,
  output        io_bc_mask_bits_9,
  output        io_bc_mask_bits_10,
  output        io_bc_mask_bits_11,
  output        io_bc_mask_bits_12,
  output        io_bc_mask_bits_13,
  output        io_c_mask_valid,
  output        io_c_mask_bits_0,
  output        io_c_mask_bits_1,
  output        io_c_mask_bits_2,
  output        io_c_mask_bits_3,
  output        io_c_mask_bits_4,
  output        io_c_mask_bits_5,
  output        io_c_mask_bits_6,
  output        io_c_mask_bits_7,
  output        io_c_mask_bits_8,
  output        io_c_mask_bits_9,
  output        io_c_mask_bits_10,
  output        io_c_mask_bits_11,
  output        io_c_mask_bits_12,
  output        io_c_mask_bits_13,
  output        io_c_mask_bits_14,
  output [5:0]  perfinfo_0,
  output [5:0]  perfinfo_1,
  output [5:0]  perfinfo_2,
  output [5:0]  perfinfo_3,
  output [5:0]  perfinfo_4,
  output [5:0]  perfinfo_5,
  output [5:0]  perfinfo_6
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  mshrSelector_io_idle_0; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_1; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_2; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_3; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_4; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_5; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_6; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_7; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_8; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_9; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_10; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_11; // @[MSHRAlloc.scala 130:28]
  wire  mshrSelector_io_idle_12; // @[MSHRAlloc.scala 130:28]
  wire [13:0] mshrSelector_io_out_bits; // @[MSHRAlloc.scala 130:28]
  wire  c_match_vec_0 = io_status_0_valid & io_status_0_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_1 = io_status_1_valid & io_status_1_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_2 = io_status_2_valid & io_status_2_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_3 = io_status_3_valid & io_status_3_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_4 = io_status_4_valid & io_status_4_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_5 = io_status_5_valid & io_status_5_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_6 = io_status_6_valid & io_status_6_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_7 = io_status_7_valid & io_status_7_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_8 = io_status_8_valid & io_status_8_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_9 = io_status_9_valid & io_status_9_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_10 = io_status_10_valid & io_status_10_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_11 = io_status_11_valid & io_status_11_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_12 = io_status_12_valid & io_status_12_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_13 = io_status_13_valid & io_status_13_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_14 = io_status_14_valid & io_status_14_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  c_match_vec_15 = io_status_15_valid & io_status_15_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_0 = io_status_0_valid & io_status_0_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_1 = io_status_1_valid & io_status_1_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_2 = io_status_2_valid & io_status_2_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_3 = io_status_3_valid & io_status_3_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_4 = io_status_4_valid & io_status_4_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_5 = io_status_5_valid & io_status_5_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_6 = io_status_6_valid & io_status_6_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_7 = io_status_7_valid & io_status_7_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_8 = io_status_8_valid & io_status_8_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_9 = io_status_9_valid & io_status_9_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_10 = io_status_10_valid & io_status_10_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_11 = io_status_11_valid & io_status_11_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_12 = io_status_12_valid & io_status_12_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_13 = io_status_13_valid & io_status_13_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_14 = io_status_14_valid & io_status_14_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  b_match_vec_15 = io_status_15_valid & io_status_15_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_2 = io_status_0_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_0 = io_status_0_valid & io_status_0_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_6 = io_status_1_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_1 = io_status_1_valid & io_status_1_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_10 = io_status_2_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_2 = io_status_2_valid & io_status_2_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_14 = io_status_3_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_3 = io_status_3_valid & io_status_3_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_18 = io_status_4_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_4 = io_status_4_valid & io_status_4_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_22 = io_status_5_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_5 = io_status_5_valid & io_status_5_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_26 = io_status_6_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_6 = io_status_6_valid & io_status_6_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_30 = io_status_7_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_7 = io_status_7_valid & io_status_7_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_34 = io_status_8_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_8 = io_status_8_valid & io_status_8_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_38 = io_status_9_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_9 = io_status_9_valid & io_status_9_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_42 = io_status_10_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_10 = io_status_10_valid & io_status_10_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_46 = io_status_11_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_11 = io_status_11_valid & io_status_11_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_50 = io_status_12_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_12 = io_status_12_valid & io_status_12_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_54 = io_status_13_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_13 = io_status_13_valid & io_status_13_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_58 = io_status_14_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_14 = io_status_14_valid & io_status_14_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  _a_match_vec_T_62 = io_status_15_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:74]
  wire  a_match_vec_15 = io_status_15_valid & io_status_15_bits_set == io_a_req_bits_set; // @[MSHRAlloc.scala 71:40]
  wire  nestC_vec_0 = io_status_0_valid & io_status_0_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_1 = io_status_1_valid & io_status_1_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_2 = io_status_2_valid & io_status_2_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_3 = io_status_3_valid & io_status_3_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_4 = io_status_4_valid & io_status_4_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_5 = io_status_5_valid & io_status_5_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_6 = io_status_6_valid & io_status_6_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_7 = io_status_7_valid & io_status_7_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_8 = io_status_8_valid & io_status_8_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_9 = io_status_9_valid & io_status_9_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_10 = io_status_10_valid & io_status_10_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_11 = io_status_11_valid & io_status_11_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_12 = io_status_12_valid & io_status_12_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_13 = io_status_13_valid & io_status_13_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestC_vec_14 = io_status_14_valid & io_status_14_bits_nestC; // @[MSHRAlloc.scala 83:32]
  wire  nestB_vec_0 = io_status_0_valid & io_status_0_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_1 = io_status_1_valid & io_status_1_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_2 = io_status_2_valid & io_status_2_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_3 = io_status_3_valid & io_status_3_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_4 = io_status_4_valid & io_status_4_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_5 = io_status_5_valid & io_status_5_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_6 = io_status_6_valid & io_status_6_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_7 = io_status_7_valid & io_status_7_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_8 = io_status_8_valid & io_status_8_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_9 = io_status_9_valid & io_status_9_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_10 = io_status_10_valid & io_status_10_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_11 = io_status_11_valid & io_status_11_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_12 = io_status_12_valid & io_status_12_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire  nestB_vec_13 = io_status_13_valid & io_status_13_bits_nestB; // @[MSHRAlloc.scala 86:32]
  wire [7:0] conflict_c_lo = {c_match_vec_7,c_match_vec_6,c_match_vec_5,c_match_vec_4,c_match_vec_3,c_match_vec_2,
    c_match_vec_1,c_match_vec_0}; // @[MSHRAlloc.scala 89:38]
  wire [15:0] _conflict_c_T = {c_match_vec_15,c_match_vec_14,c_match_vec_13,c_match_vec_12,c_match_vec_11,c_match_vec_10
    ,c_match_vec_9,c_match_vec_8,conflict_c_lo}; // @[MSHRAlloc.scala 89:38]
  wire  conflict_c = |_conflict_c_T; // @[MSHRAlloc.scala 89:44]
  wire [7:0] conflict_blo = {b_match_vec_7,b_match_vec_6,b_match_vec_5,b_match_vec_4,b_match_vec_3,b_match_vec_2,
    b_match_vec_1,b_match_vec_0}; // @[MSHRAlloc.scala 90:38]
  wire [15:0] _conflict_bT = {b_match_vec_15,b_match_vec_14,b_match_vec_13,b_match_vec_12,b_match_vec_11,b_match_vec_10
    ,b_match_vec_9,b_match_vec_8,conflict_blo}; // @[MSHRAlloc.scala 90:38]
  wire  conflict_b = |_conflict_bT; // @[MSHRAlloc.scala 90:44]
  wire [7:0] conflict_a_lo = {a_match_vec_7,a_match_vec_6,a_match_vec_5,a_match_vec_4,a_match_vec_3,a_match_vec_2,
    a_match_vec_1,a_match_vec_0}; // @[MSHRAlloc.scala 91:38]
  wire [15:0] _conflict_a_T = {a_match_vec_15,a_match_vec_14,a_match_vec_13,a_match_vec_12,a_match_vec_11,a_match_vec_10
    ,a_match_vec_9,a_match_vec_8,conflict_a_lo}; // @[MSHRAlloc.scala 91:38]
  wire  conflict_a = |_conflict_a_T; // @[MSHRAlloc.scala 91:44]
  wire [7:0] may_nestC_lo_1 = {nestC_vec_7,nestC_vec_6,nestC_vec_5,nestC_vec_4,nestC_vec_3,nestC_vec_2,nestC_vec_1,
    nestC_vec_0}; // @[MSHRAlloc.scala 93:59]
  wire [15:0] _may_nestC_T_1 = {1'h0,nestC_vec_14,nestC_vec_13,nestC_vec_12,nestC_vec_11,nestC_vec_10,nestC_vec_9,
    nestC_vec_8,may_nestC_lo_1}; // @[MSHRAlloc.scala 93:59]
  wire [15:0] _may_nestC_T_2 = _conflict_c_T & _may_nestC_T_1; // @[MSHRAlloc.scala 93:41]
  wire  may_nestC = |_may_nestC_T_2; // @[MSHRAlloc.scala 93:66]
  wire [7:0] may_nestB_lo_1 = {nestB_vec_7,nestB_vec_6,nestB_vec_5,nestB_vec_4,nestB_vec_3,nestB_vec_2,nestB_vec_1,
    nestB_vec_0}; // @[MSHRAlloc.scala 94:59]
  wire [15:0] _may_nestB_T_1 = {2'h0,nestB_vec_13,nestB_vec_12,nestB_vec_11,nestB_vec_10,nestB_vec_9,nestB_vec_8,
    may_nestB_lo_1}; // @[MSHRAlloc.scala 94:59]
  wire [15:0] _may_nestB_T_2 = _conflict_bT & _may_nestB_T_1; // @[MSHRAlloc.scala 94:41]
  wire  may_nestB = |_may_nestB_T_2; // @[MSHRAlloc.scala 94:66]
  wire  _nestC_T = ~io_status_15_valid; // @[MSHRAlloc.scala 104:28]
  wire  nestC = may_nestC & ~io_status_15_valid; // @[MSHRAlloc.scala 104:25]
  wire  nestB = may_nestB & ~io_status_14_valid & _nestC_T; // @[MSHRAlloc.scala 105:50]
  wire  _mshrFree_T = ~io_status_0_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_1 = ~io_status_1_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_2 = ~io_status_2_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_3 = ~io_status_3_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_4 = ~io_status_4_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_5 = ~io_status_5_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_6 = ~io_status_6_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_7 = ~io_status_7_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_8 = ~io_status_8_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_9 = ~io_status_9_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_10 = ~io_status_10_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_11 = ~io_status_11_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_12 = ~io_status_12_valid; // @[MSHRAlloc.scala 108:47]
  wire  _mshrFree_T_13 = ~io_status_13_valid; // @[MSHRAlloc.scala 108:47]
  wire [6:0] mshrFree_lo = {_mshrFree_T_7,_mshrFree_T_8,_mshrFree_T_9,_mshrFree_T_10,_mshrFree_T_11,_mshrFree_T_12,
    _mshrFree_T_13}; // @[Cat.scala 31:58]
  wire [13:0] _mshrFree_T_14 = {_mshrFree_T,_mshrFree_T_1,_mshrFree_T_2,_mshrFree_T_3,_mshrFree_T_4,_mshrFree_T_5,
    _mshrFree_T_6,mshrFree_lo}; // @[Cat.scala 31:58]
  wire  mshrFree = |_mshrFree_T_14; // @[MSHRAlloc.scala 108:61]
  wire  _can_accept_c_T = ~conflict_c; // @[MSHRAlloc.scala 110:35]
  wire  can_accept_c = mshrFree & ~conflict_c | nestC; // @[MSHRAlloc.scala 110:48]
  wire  accept_c = io_c_req_valid & can_accept_c; // @[MSHRAlloc.scala 111:33]
  wire  _can_accept_bT = ~conflict_b; // @[MSHRAlloc.scala 113:36]
  wire  _can_accept_bT_3 = ~io_c_req_valid; // @[MSHRAlloc.scala 113:62]
  wire  can_accept_b = (mshrFree & ~conflict_b | nestB) & ~io_c_req_valid; // @[MSHRAlloc.scala 113:59]
  wire  accept_b = io_breq_valid & can_accept_b; // @[MSHRAlloc.scala 114:33]
  wire  _can_accept_a_T = ~conflict_a; // @[MSHRAlloc.scala 116:34]
  wire  _can_accept_a_T_4 = ~io_breq_valid; // @[MSHRAlloc.scala 116:68]
  wire  can_accept_a = mshrFree & ~conflict_a & _can_accept_bT_3 & ~io_breq_valid; // @[MSHRAlloc.scala 116:65]
  wire  accept_a = io_a_req_valid & can_accept_a; // @[MSHRAlloc.scala 117:33]
  wire  request_valid = io_c_req_valid | io_breq_valid | io_a_req_valid; // @[MSHRAlloc.scala 119:53]
  wire [2:0] _request_bits_T_channel = io_breq_valid ? io_breq_bits_channel : io_a_req_bits_channel; // @[MSHRAlloc.scala 122:8]
  wire [2:0] _request_bits_T_opcode = io_breq_valid ? io_breq_bits_opcode : io_a_req_bits_opcode; // @[MSHRAlloc.scala 122:8]
  wire [2:0] _request_bits_T_param = io_breq_valid ? io_breq_bits_param : io_a_req_bits_param; // @[MSHRAlloc.scala 122:8]
  wire [2:0] _request_bits_T_size = io_breq_valid ? io_breq_bits_size : io_a_req_bits_size; // @[MSHRAlloc.scala 122:8]
  wire [5:0] _request_bits_T_source = io_breq_valid ? io_breq_bits_source : io_a_req_bits_source; // @[MSHRAlloc.scala 122:8]
  wire [7:0] _request_bits_T_set = io_breq_valid ? io_breq_bits_set : io_a_req_bits_set; // @[MSHRAlloc.scala 122:8]
  wire [20:0] _request_bits_T_tag = io_breq_valid ? io_breq_bits_tag : io_a_req_bits_tag; // @[MSHRAlloc.scala 122:8]
  wire [5:0] _request_bits_T_off = io_breq_valid ? io_breq_bits_off : io_a_req_bits_off; // @[MSHRAlloc.scala 122:8]
  wire [2:0] _request_bits_T_bufIdx = io_breq_valid ? io_breq_bits_bufIdx : io_a_req_bits_bufIdx; // @[MSHRAlloc.scala 122:8]
  wire  _request_bits_T_needHint = io_breq_valid ? io_breq_bits_needHint : io_a_req_bits_needHint; // @[MSHRAlloc.scala 122:8]
  wire  _request_bits_T_isPrefetch = io_breq_valid ? io_breq_bits_isPrefetch : io_a_req_bits_isPrefetch; // @[MSHRAlloc.scala 122:8]
  wire [1:0] _request_bits_T_alias = io_breq_valid ? io_breq_bits_alias : io_a_req_bits_alias; // @[MSHRAlloc.scala 122:8]
  wire  _request_bits_T_preferCache = io_breq_valid ? io_breq_bits_preferCache : io_a_req_bits_preferCache; // @[MSHRAlloc.scala 122:8]
  wire  _request_bits_T_dirty = io_breq_valid ? io_breq_bits_dirty : io_a_req_bits_dirty; // @[MSHRAlloc.scala 122:8]
  wire  _request_bits_T_fromProbeHelper = io_breq_valid ? io_breq_bits_fromProbeHelper : io_a_req_bits_fromProbeHelper
    ; // @[MSHRAlloc.scala 122:8]
  wire  _request_bits_T_fromCmoHelper = io_breq_valid ? io_breq_bits_fromCmoHelper : io_a_req_bits_fromCmoHelper; // @[MSHRAlloc.scala 122:8]
  wire  _request_bits_T_needProbeAckData = io_breq_valid ? io_breq_bits_needProbeAckData :
    io_a_req_bits_needProbeAckData; // @[MSHRAlloc.scala 122:8]
  wire  _io_alloc_0_valid_T_6 = io_breq_valid & _can_accept_bT & _can_accept_bT_3; // @[MSHRAlloc.scala 137:39]
  wire  _io_alloc_0_valid_T_7 = io_c_req_valid & _can_accept_c_T | _io_alloc_0_valid_T_6; // @[MSHRAlloc.scala 136:39]
  wire  _io_alloc_0_valid_T_13 = io_a_req_valid & _can_accept_a_T & _can_accept_a_T_4 & _can_accept_bT_3; // @[MSHRAlloc.scala 138:58]
  wire  _io_alloc_0_valid_T_14 = _io_alloc_0_valid_T_7 | _io_alloc_0_valid_T_13; // @[MSHRAlloc.scala 137:58]
  wire  _io_alloc_0_valid_T_15 = mshrFree & io_dirRead_ready & _io_alloc_0_valid_T_14; // @[MSHRAlloc.scala 135:33]
  wire  nestB_valid = io_breq_valid & nestB & _can_accept_bT_3; // @[MSHRAlloc.scala 144:45]
  wire  nestC_valid = io_c_req_valid & nestC; // @[MSHRAlloc.scala 145:36]
  wire [2:0] _io_dirRead_valid_T = {accept_c,accept_b,accept_a}; // @[Cat.scala 31:58]
  wire [13:0] _io_dirRead_bits_idOH_T_1 = nestC_valid | nestB_valid ? 14'h0 : mshrSelector_io_out_bits; // @[MSHRAlloc.scala 164:8]
  wire [1:0] io_dirRead_bits_idOH_hi = {nestC_valid,nestB_valid}; // @[Cat.scala 31:58]
  wire  pretch_block_vec_0 = io_status_0_valid & io_status_0_bits_is_prefetch & _a_match_vec_T_2; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_1 = io_status_1_valid & io_status_1_bits_is_prefetch & _a_match_vec_T_6; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_2 = io_status_2_valid & io_status_2_bits_is_prefetch & _a_match_vec_T_10; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_3 = io_status_3_valid & io_status_3_bits_is_prefetch & _a_match_vec_T_14; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_4 = io_status_4_valid & io_status_4_bits_is_prefetch & _a_match_vec_T_18; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_5 = io_status_5_valid & io_status_5_bits_is_prefetch & _a_match_vec_T_22; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_6 = io_status_6_valid & io_status_6_bits_is_prefetch & _a_match_vec_T_26; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_7 = io_status_7_valid & io_status_7_bits_is_prefetch & _a_match_vec_T_30; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_8 = io_status_8_valid & io_status_8_bits_is_prefetch & _a_match_vec_T_34; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_9 = io_status_9_valid & io_status_9_bits_is_prefetch & _a_match_vec_T_38; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_10 = io_status_10_valid & io_status_10_bits_is_prefetch & _a_match_vec_T_42; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_11 = io_status_11_valid & io_status_11_bits_is_prefetch & _a_match_vec_T_46; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_12 = io_status_12_valid & io_status_12_bits_is_prefetch & _a_match_vec_T_50; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_13 = io_status_13_valid & io_status_13_bits_is_prefetch & _a_match_vec_T_54; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_14 = io_status_14_valid & io_status_14_bits_is_prefetch & _a_match_vec_T_58; // @[MSHRAlloc.scala 195:35]
  wire  pretch_block_vec_15 = io_status_15_valid & io_status_15_bits_is_prefetch & _a_match_vec_T_62; // @[MSHRAlloc.scala 195:35]
  wire [1:0] _T_1552 = io_status_1_valid + io_status_2_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_1025 = {{1'd0}, io_status_0_valid}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1554 = _GEN_1025 + _T_1552; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1556 = io_status_3_valid + io_status_4_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1558 = io_status_5_valid + io_status_6_valid; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1560 = _T_1556 + _T_1558; // @[Bitwise.scala 48:55]
  wire [2:0] _GEN_1026 = {{1'd0}, _T_1554[1:0]}; // @[Bitwise.scala 48:55]
  wire [3:0] _T_1562 = _GEN_1026 + _T_1560; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1564 = io_status_8_valid + io_status_9_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_1027 = {{1'd0}, io_status_7_valid}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1566 = _GEN_1027 + _T_1564; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1568 = io_status_10_valid + io_status_11_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _T_1570 = io_status_12_valid + io_status_13_valid; // @[Bitwise.scala 48:55]
  wire [2:0] _T_1572 = _T_1568 + _T_1570; // @[Bitwise.scala 48:55]
  wire [2:0] _GEN_1028 = {{1'd0}, _T_1566[1:0]}; // @[Bitwise.scala 48:55]
  wire [3:0] _T_1574 = _GEN_1028 + _T_1572; // @[Bitwise.scala 48:55]
  wire [7:0] lo = {pretch_block_vec_8,pretch_block_vec_9,pretch_block_vec_10,pretch_block_vec_11,pretch_block_vec_12,
    pretch_block_vec_13,pretch_block_vec_14,pretch_block_vec_15}; // @[Cat.scala 31:58]
  wire [15:0] _T_1587 = {pretch_block_vec_0,pretch_block_vec_1,pretch_block_vec_2,pretch_block_vec_3,pretch_block_vec_4,
    pretch_block_vec_5,pretch_block_vec_6,pretch_block_vec_7,lo}; // @[Cat.scala 31:58]
  wire  _T_1588 = |_T_1587; // @[MSHRAlloc.scala 203:102]
  reg [3:0] perfinfo_0_REG; // @[MSHRAlloc.scala 221:24]
  reg  perfinfo_1_REG; // @[MSHRAlloc.scala 221:24]
  reg  perfinfo_2_REG; // @[MSHRAlloc.scala 221:24]
  reg  perfinfo_3_REG; // @[MSHRAlloc.scala 221:24]
  reg  perfinfo_4_REG; // @[MSHRAlloc.scala 221:24]
  reg  perfinfo_5_REG; // @[MSHRAlloc.scala 221:24]
  reg  perfinfo_6_REG; // @[MSHRAlloc.scala 221:24]
  MSHRSelector mshrSelector ( // @[MSHRAlloc.scala 130:28]
    .io_idle_0(mshrSelector_io_idle_0),
    .io_idle_1(mshrSelector_io_idle_1),
    .io_idle_2(mshrSelector_io_idle_2),
    .io_idle_3(mshrSelector_io_idle_3),
    .io_idle_4(mshrSelector_io_idle_4),
    .io_idle_5(mshrSelector_io_idle_5),
    .io_idle_6(mshrSelector_io_idle_6),
    .io_idle_7(mshrSelector_io_idle_7),
    .io_idle_8(mshrSelector_io_idle_8),
    .io_idle_9(mshrSelector_io_idle_9),
    .io_idle_10(mshrSelector_io_idle_10),
    .io_idle_11(mshrSelector_io_idle_11),
    .io_idle_12(mshrSelector_io_idle_12),
    .io_out_bits(mshrSelector_io_out_bits)
  );
  assign io_a_req_ready = io_dirRead_ready & can_accept_a; // @[MSHRAlloc.scala 128:35]
  assign io_breq_ready = io_dirRead_ready & can_accept_b; // @[MSHRAlloc.scala 127:35]
  assign io_c_req_ready = io_dirRead_ready & can_accept_c; // @[MSHRAlloc.scala 126:35]
  assign io_alloc_0_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[0]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_0_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_0_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[1]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_1_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_1_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[2]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_2_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_2_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[3]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_3_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_3_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[4]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_4_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_4_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[5]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_5_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_5_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[6]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_6_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_6_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[7]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_7_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_7_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[8]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_8_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_8_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[9]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_9_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_9_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[10]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_10_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_10_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[11]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_11_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_11_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[12]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_12_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_12_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_valid = _io_alloc_0_valid_T_15 & mshrSelector_io_out_bits[13]; // @[MSHRAlloc.scala 140:7]
  assign io_alloc_13_bits_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_param = io_c_req_valid ? io_c_req_bits_param : _request_bits_T_param; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_size = io_c_req_valid ? io_c_req_bits_size : _request_bits_T_size; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_off = io_c_req_valid ? io_c_req_bits_off : _request_bits_T_off; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_bufIdx = io_c_req_valid ? io_c_req_bits_bufIdx : _request_bits_T_bufIdx; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_needHint = io_c_req_valid ? 1'h0 : _request_bits_T_needHint; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_isPrefetch = io_c_req_valid ? 1'h0 : _request_bits_T_isPrefetch; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_alias = io_c_req_valid ? 2'h0 : _request_bits_T_alias; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_preferCache = io_c_req_valid | _request_bits_T_preferCache; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_dirty = io_c_req_valid ? io_c_req_bits_dirty : _request_bits_T_dirty; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_fromProbeHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromProbeHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_fromCmoHelper = io_c_req_valid ? 1'h0 : _request_bits_T_fromCmoHelper; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_13_bits_needProbeAckData = io_c_req_valid ? 1'h0 : _request_bits_T_needProbeAckData; // @[MSHRAlloc.scala 120:22]
  assign io_alloc_14_valid = nestB_valid & io_dirRead_ready; // @[MSHRAlloc.scala 147:38]
  assign io_alloc_14_bits_channel = io_breq_bits_channel; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_opcode = io_breq_bits_opcode; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_param = io_breq_bits_param; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_size = io_breq_bits_size; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_source = io_breq_bits_source; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_set = io_breq_bits_set; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_tag = io_breq_bits_tag; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_off = io_breq_bits_off; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_bufIdx = io_breq_bits_bufIdx; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_needHint = io_breq_bits_needHint; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_isPrefetch = io_breq_bits_isPrefetch; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_alias = io_breq_bits_alias; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_preferCache = io_breq_bits_preferCache; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_dirty = io_breq_bits_dirty; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_fromProbeHelper = io_breq_bits_fromProbeHelper; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_fromCmoHelper = io_breq_bits_fromCmoHelper; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_14_bits_needProbeAckData = io_breq_bits_needProbeAckData; // @[MSHRAlloc.scala 148:22]
  assign io_alloc_15_valid = nestC_valid & io_dirRead_ready; // @[MSHRAlloc.scala 149:37]
  assign io_alloc_15_bits_opcode = io_c_req_bits_opcode; // @[MSHRAlloc.scala 150:21]
  assign io_alloc_15_bits_param = io_c_req_bits_param; // @[MSHRAlloc.scala 150:21]
  assign io_alloc_15_bits_size = io_c_req_bits_size; // @[MSHRAlloc.scala 150:21]
  assign io_alloc_15_bits_source = io_c_req_bits_source; // @[MSHRAlloc.scala 150:21]
  assign io_alloc_15_bits_set = io_c_req_bits_set; // @[MSHRAlloc.scala 150:21]
  assign io_alloc_15_bits_tag = io_c_req_bits_tag; // @[MSHRAlloc.scala 150:21]
  assign io_alloc_15_bits_off = io_c_req_bits_off; // @[MSHRAlloc.scala 150:21]
  assign io_alloc_15_bits_bufIdx = io_c_req_bits_bufIdx; // @[MSHRAlloc.scala 150:21]
  assign io_alloc_15_bits_dirty = io_c_req_bits_dirty; // @[MSHRAlloc.scala 150:21]
  assign io_dirRead_valid = request_valid & |_io_dirRead_valid_T & io_dirRead_ready; // @[MSHRAlloc.scala 157:77]
  assign io_dirRead_bits_idOH = {io_dirRead_bits_idOH_hi,_io_dirRead_bits_idOH_T_1}; // @[Cat.scala 31:58]
  assign io_dirRead_bits_tag = io_c_req_valid ? io_c_req_bits_tag : _request_bits_T_tag; // @[MSHRAlloc.scala 120:22]
  assign io_dirRead_bits_set = io_c_req_valid ? io_c_req_bits_set : _request_bits_T_set; // @[MSHRAlloc.scala 120:22]
  assign io_dirRead_bits_replacerInfo_channel = io_c_req_valid ? 3'h4 : _request_bits_T_channel; // @[MSHRAlloc.scala 120:22]
  assign io_dirRead_bits_replacerInfo_opcode = io_c_req_valid ? io_c_req_bits_opcode : _request_bits_T_opcode; // @[MSHRAlloc.scala 120:22]
  assign io_dirRead_bits_source = io_c_req_valid ? io_c_req_bits_source : _request_bits_T_source; // @[MSHRAlloc.scala 120:22]
  assign io_bc_mask_valid = io_alloc_14_valid; // @[MSHRAlloc.scala 152:20]
  assign io_bc_mask_bits_0 = io_status_0_valid & io_status_0_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_1 = io_status_1_valid & io_status_1_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_2 = io_status_2_valid & io_status_2_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_3 = io_status_3_valid & io_status_3_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_4 = io_status_4_valid & io_status_4_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_5 = io_status_5_valid & io_status_5_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_6 = io_status_6_valid & io_status_6_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_7 = io_status_7_valid & io_status_7_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_8 = io_status_8_valid & io_status_8_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_9 = io_status_9_valid & io_status_9_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_10 = io_status_10_valid & io_status_10_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_11 = io_status_11_valid & io_status_11_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_12 = io_status_12_valid & io_status_12_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_bc_mask_bits_13 = io_status_13_valid & io_status_13_bits_set == io_breq_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_valid = io_alloc_15_valid; // @[MSHRAlloc.scala 154:19]
  assign io_c_mask_bits_0 = io_status_0_valid & io_status_0_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_1 = io_status_1_valid & io_status_1_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_2 = io_status_2_valid & io_status_2_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_3 = io_status_3_valid & io_status_3_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_4 = io_status_4_valid & io_status_4_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_5 = io_status_5_valid & io_status_5_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_6 = io_status_6_valid & io_status_6_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_7 = io_status_7_valid & io_status_7_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_8 = io_status_8_valid & io_status_8_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_9 = io_status_9_valid & io_status_9_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_10 = io_status_10_valid & io_status_10_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_11 = io_status_11_valid & io_status_11_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_12 = io_status_12_valid & io_status_12_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_13 = io_status_13_valid & io_status_13_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign io_c_mask_bits_14 = io_status_14_valid & io_status_14_bits_set == io_c_req_bits_set; // @[MSHRAlloc.scala 71:40]
  assign perfinfo_0 = {{2'd0}, perfinfo_0_REG}; // @[MSHRAlloc.scala 221:14]
  assign perfinfo_1 = {{5'd0}, perfinfo_1_REG}; // @[MSHRAlloc.scala 221:14]
  assign perfinfo_2 = {{5'd0}, perfinfo_2_REG}; // @[MSHRAlloc.scala 221:14]
  assign perfinfo_3 = {{5'd0}, perfinfo_3_REG}; // @[MSHRAlloc.scala 221:14]
  assign perfinfo_4 = {{5'd0}, perfinfo_4_REG}; // @[MSHRAlloc.scala 221:14]
  assign perfinfo_5 = {{5'd0}, perfinfo_5_REG}; // @[MSHRAlloc.scala 221:14]
  assign perfinfo_6 = {{5'd0}, perfinfo_6_REG}; // @[MSHRAlloc.scala 221:14]
  assign mshrSelector_io_idle_0 = ~io_status_0_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_1 = ~io_status_1_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_2 = ~io_status_2_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_3 = ~io_status_3_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_4 = ~io_status_4_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_5 = ~io_status_5_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_6 = ~io_status_6_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_7 = ~io_status_7_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_8 = ~io_status_8_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_9 = ~io_status_9_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_10 = ~io_status_10_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_11 = ~io_status_11_valid; // @[MSHRAlloc.scala 131:52]
  assign mshrSelector_io_idle_12 = ~io_status_12_valid; // @[MSHRAlloc.scala 131:52]
  always @(posedge clock) begin
    perfinfo_0_REG <= _T_1562[2:0] + _T_1574[2:0]; // @[Bitwise.scala 48:55]
    perfinfo_1_REG <= io_status_14_valid; // @[MSHRAlloc.scala 221:24]
    perfinfo_2_REG <= io_status_15_valid; // @[MSHRAlloc.scala 221:24]
    perfinfo_3_REG <= io_a_req_valid & conflict_a; // @[MSHRAlloc.scala 214:45]
    perfinfo_4_REG <= io_a_req_valid & _T_1588; // @[MSHRAlloc.scala 215:45]
    perfinfo_5_REG <= io_breq_valid & conflict_b; // @[MSHRAlloc.scala 216:45]
    perfinfo_6_REG <= io_c_req_valid & conflict_c; // @[MSHRAlloc.scala 217:45]
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
  perfinfo_0_REG = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  perfinfo_1_REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  perfinfo_2_REG = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  perfinfo_3_REG = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  perfinfo_4_REG = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  perfinfo_5_REG = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  perfinfo_6_REG = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
