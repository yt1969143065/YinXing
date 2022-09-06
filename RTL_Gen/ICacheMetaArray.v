module ICacheMetaArray(
  input         clock,
  input         reset,
  input         io_write_valid,
  input  [7:0]  io_write_bits_virIdx,
  input  [23:0] io_write_bits_phyTag,
  input  [1:0]  io_write_bits_coh_state,
  input  [3:0]  io_write_bits_waymask,
  input         io_write_bits_bankIdx,
  output        io_read_ready,
  input         io_read_valid,
  input         io_read_bits_isDoubleLine,
  input  [7:0]  io_read_bits_vSetIdx_0,
  input  [7:0]  io_read_bits_vSetIdx_1,
  output [1:0]  io_readResp_metaData_0_0_coh_state,
  output [23:0] io_readResp_metaData_0_0_tag,
  output [1:0]  io_readResp_metaData_0_1_coh_state,
  output [23:0] io_readResp_metaData_0_1_tag,
  output [1:0]  io_readResp_metaData_0_2_coh_state,
  output [23:0] io_readResp_metaData_0_2_tag,
  output [1:0]  io_readResp_metaData_0_3_coh_state,
  output [23:0] io_readResp_metaData_0_3_tag,
  output [1:0]  io_readResp_metaData_1_0_coh_state,
  output [23:0] io_readResp_metaData_1_0_tag,
  output [1:0]  io_readResp_metaData_1_1_coh_state,
  output [23:0] io_readResp_metaData_1_1_tag,
  output [1:0]  io_readResp_metaData_1_2_coh_state,
  output [23:0] io_readResp_metaData_1_2_tag,
  output [1:0]  io_readResp_metaData_1_3_coh_state,
  output [23:0] io_readResp_metaData_1_3_tag,
  output        io_readResp_errors_0_0,
  output        io_readResp_errors_0_1,
  output        io_readResp_errors_0_2,
  output        io_readResp_errors_0_3,
  output        io_readResp_errors_1_0,
  output        io_readResp_errors_1_1,
  output        io_readResp_errors_1_2,
  output        io_readResp_errors_1_3,
  input         io_cacheOp_req_valid,
  input  [63:0] io_cacheOp_req_bits_wayNum,
  input  [63:0] io_cacheOp_req_bits_index,
  input  [63:0] io_cacheOp_req_bits_opCode,
  input  [63:0] io_cacheOp_req_bits_write_tag_low,
  output        io_cacheOp_resp_valid,
  output [63:0] io_cacheOp_resp_bits_read_tag_low
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
`endif // RANDOMIZE_REG_INIT
  wire  tagArrays_0_clock; // @[ICache.scala 166:26]
  wire  tagArrays_0_reset; // @[ICache.scala 166:26]
  wire  tagArrays_0_io_rreq_ready; // @[ICache.scala 166:26]
  wire  tagArrays_0_io_rreq_valid; // @[ICache.scala 166:26]
  wire [6:0] tagArrays_0_io_rreq_bits_setIdx; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_0_io_rresp_data_0; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_0_io_rresp_data_1; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_0_io_rresp_data_2; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_0_io_rresp_data_3; // @[ICache.scala 166:26]
  wire  tagArrays_0_io_wreq_valid; // @[ICache.scala 166:26]
  wire [6:0] tagArrays_0_io_wreq_bits_setIdx; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_0_io_wreq_bits_data_0; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_0_io_wreq_bits_data_1; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_0_io_wreq_bits_data_2; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_0_io_wreq_bits_data_3; // @[ICache.scala 166:26]
  wire [3:0] tagArrays_0_io_wreq_bits_waymask; // @[ICache.scala 166:26]
  wire  tagArrays_1_clock; // @[ICache.scala 166:26]
  wire  tagArrays_1_reset; // @[ICache.scala 166:26]
  wire  tagArrays_1_io_rreq_ready; // @[ICache.scala 166:26]
  wire  tagArrays_1_io_rreq_valid; // @[ICache.scala 166:26]
  wire [6:0] tagArrays_1_io_rreq_bits_setIdx; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_1_io_rresp_data_0; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_1_io_rresp_data_1; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_1_io_rresp_data_2; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_1_io_rresp_data_3; // @[ICache.scala 166:26]
  wire  tagArrays_1_io_wreq_valid; // @[ICache.scala 166:26]
  wire [6:0] tagArrays_1_io_wreq_bits_setIdx; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_1_io_wreq_bits_data_0; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_1_io_wreq_bits_data_1; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_1_io_wreq_bits_data_2; // @[ICache.scala 166:26]
  wire [26:0] tagArrays_1_io_wreq_bits_data_3; // @[ICache.scala 166:26]
  wire [3:0] tagArrays_1_io_wreq_bits_waymask; // @[ICache.scala 166:26]
  wire  _io_read_ready_T = ~io_write_valid; // @[ICache.scala 144:20]
  wire  port_0_read_0 = io_read_valid & ~io_read_bits_vSetIdx_0[0]; // @[ICache.scala 146:38]
  wire  port_0_read_1 = io_read_valid & io_read_bits_vSetIdx_0[0]; // @[ICache.scala 147:38]
  wire  port_1_read_1 = io_read_valid & io_read_bits_vSetIdx_1[0] & io_read_bits_isDoubleLine; // @[ICache.scala 148:69]
  wire  port_1_read_0 = io_read_valid & ~io_read_bits_vSetIdx_1[0] & io_read_bits_isDoubleLine; // @[ICache.scala 149:69]
  wire  _port_0_read_0_reg_T = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  reg  port_0_read_0_reg; // @[Reg.scala 16:16]
  reg  port_1_read_0_reg; // @[Reg.scala 16:16]
  wire [7:0] bank_0_idx = port_0_read_0 ? io_read_bits_vSetIdx_0 : io_read_bits_vSetIdx_1; // @[ICache.scala 156:23]
  wire [7:0] bank_1_idx = port_0_read_1 ? io_read_bits_vSetIdx_0 : io_read_bits_vSetIdx_1; // @[ICache.scala 157:23]
  wire  write_bank_0 = io_write_valid & ~io_write_bits_bankIdx; // @[ICache.scala 160:37]
  wire  write_bank_1 = io_write_valid & io_write_bits_bankIdx; // @[ICache.scala 161:37]
  wire [107:0] _read_meta_bits_T = {tagArrays_0_io_rresp_data_3,tagArrays_0_io_rresp_data_2,
    tagArrays_0_io_rresp_data_1,tagArrays_0_io_rresp_data_0}; // @[ICache.scala 197:53]
  wire [26:0] read_meta_bits__0 = _read_meta_bits_T[26:0]; // @[ICache.scala 197:53]
  wire [26:0] read_meta_bits__1 = _read_meta_bits_T[53:27]; // @[ICache.scala 197:53]
  wire [26:0] read_meta_bits__2 = _read_meta_bits_T[80:54]; // @[ICache.scala 197:53]
  wire [26:0] read_meta_bits__3 = _read_meta_bits_T[107:81]; // @[ICache.scala 197:53]
  wire [25:0] uncorrected = read_meta_bits__0[25:0]; // @[ECC.scala 85:24]
  wire [25:0] uncorrected_1 = read_meta_bits__1[25:0]; // @[ECC.scala 85:24]
  wire [25:0] uncorrected_2 = read_meta_bits__2[25:0]; // @[ECC.scala 85:24]
  wire [25:0] uncorrected_3 = read_meta_bits__3[25:0]; // @[ECC.scala 85:24]
  wire [103:0] _T_4 = {uncorrected_3,uncorrected_2,uncorrected_1,uncorrected}; // @[ICache.scala 201:50]
  wire [23:0] read_metas_0_0_tag = _T_4[23:0]; // @[ICache.scala 201:50]
  wire [1:0] read_metas_0_0_coh_state = _T_4[25:24]; // @[ICache.scala 201:50]
  wire [23:0] read_metas_0_1_tag = _T_4[49:26]; // @[ICache.scala 201:50]
  wire [1:0] read_metas_0_1_coh_state = _T_4[51:50]; // @[ICache.scala 201:50]
  wire [23:0] read_metas_0_2_tag = _T_4[75:52]; // @[ICache.scala 201:50]
  wire [1:0] read_metas_0_2_coh_state = _T_4[77:76]; // @[ICache.scala 201:50]
  wire [23:0] read_metas_0_3_tag = _T_4[101:78]; // @[ICache.scala 201:50]
  wire [1:0] read_metas_0_3_coh_state = _T_4[103:102]; // @[ICache.scala 201:50]
  reg  io_readResp_errors_0_0_REG; // @[ICache.scala 202:66]
  reg  io_readResp_errors_0_0_REG_1; // @[ICache.scala 202:105]
  reg  io_readResp_errors_0_0_REG_2; // @[ICache.scala 202:97]
  reg  io_readResp_errors_0_1_REG; // @[ICache.scala 202:66]
  reg  io_readResp_errors_0_1_REG_1; // @[ICache.scala 202:105]
  reg  io_readResp_errors_0_1_REG_2; // @[ICache.scala 202:97]
  reg  io_readResp_errors_0_2_REG; // @[ICache.scala 202:66]
  reg  io_readResp_errors_0_2_REG_1; // @[ICache.scala 202:105]
  reg  io_readResp_errors_0_2_REG_2; // @[ICache.scala 202:97]
  reg  io_readResp_errors_0_3_REG; // @[ICache.scala 202:66]
  reg  io_readResp_errors_0_3_REG_1; // @[ICache.scala 202:105]
  reg  io_readResp_errors_0_3_REG_2; // @[ICache.scala 202:97]
  wire [107:0] _read_meta_bits_T_5 = {tagArrays_1_io_rresp_data_3,tagArrays_1_io_rresp_data_2,
    tagArrays_1_io_rresp_data_1,tagArrays_1_io_rresp_data_0}; // @[ICache.scala 197:53]
  wire [26:0] read_meta_bits_1_0 = _read_meta_bits_T_5[26:0]; // @[ICache.scala 197:53]
  wire [26:0] read_meta_bits_1_1 = _read_meta_bits_T_5[53:27]; // @[ICache.scala 197:53]
  wire [26:0] read_meta_bits_1_2 = _read_meta_bits_T_5[80:54]; // @[ICache.scala 197:53]
  wire [26:0] read_meta_bits_1_3 = _read_meta_bits_T_5[107:81]; // @[ICache.scala 197:53]
  wire [25:0] uncorrected_4 = read_meta_bits_1_0[25:0]; // @[ECC.scala 85:24]
  wire [25:0] uncorrected_5 = read_meta_bits_1_1[25:0]; // @[ECC.scala 85:24]
  wire [25:0] uncorrected_6 = read_meta_bits_1_2[25:0]; // @[ECC.scala 85:24]
  wire [25:0] uncorrected_7 = read_meta_bits_1_3[25:0]; // @[ECC.scala 85:24]
  wire [103:0] _T_13 = {uncorrected_7,uncorrected_6,uncorrected_5,uncorrected_4}; // @[ICache.scala 201:50]
  wire [23:0] read_metas_1_0_tag = _T_13[23:0]; // @[ICache.scala 201:50]
  wire [1:0] read_metas_1_0_coh_state = _T_13[25:24]; // @[ICache.scala 201:50]
  wire [23:0] read_metas_1_1_tag = _T_13[49:26]; // @[ICache.scala 201:50]
  wire [1:0] read_metas_1_1_coh_state = _T_13[51:50]; // @[ICache.scala 201:50]
  wire [23:0] read_metas_1_2_tag = _T_13[75:52]; // @[ICache.scala 201:50]
  wire [1:0] read_metas_1_2_coh_state = _T_13[77:76]; // @[ICache.scala 201:50]
  wire [23:0] read_metas_1_3_tag = _T_13[101:78]; // @[ICache.scala 201:50]
  wire [1:0] read_metas_1_3_coh_state = _T_13[103:102]; // @[ICache.scala 201:50]
  reg  io_readResp_errors_1_0_REG; // @[ICache.scala 202:66]
  reg  io_readResp_errors_1_0_REG_1; // @[ICache.scala 202:105]
  reg  io_readResp_errors_1_0_REG_2; // @[ICache.scala 202:97]
  reg  io_readResp_errors_1_1_REG; // @[ICache.scala 202:66]
  reg  io_readResp_errors_1_1_REG_1; // @[ICache.scala 202:105]
  reg  io_readResp_errors_1_1_REG_2; // @[ICache.scala 202:97]
  reg  io_readResp_errors_1_2_REG; // @[ICache.scala 202:66]
  reg  io_readResp_errors_1_2_REG_1; // @[ICache.scala 202:105]
  reg  io_readResp_errors_1_2_REG_2; // @[ICache.scala 202:97]
  reg  io_readResp_errors_1_3_REG; // @[ICache.scala 202:66]
  reg  io_readResp_errors_1_3_REG_1; // @[ICache.scala 202:105]
  reg  io_readResp_errors_1_3_REG_2; // @[ICache.scala 202:97]
  wire [25:0] write_meta_bits_x5 = {io_write_bits_coh_state,io_write_bits_phyTag}; // @[ICache.scala 207:101]
  wire  _write_meta_bits_T = ^write_meta_bits_x5; // @[ECC.scala 82:55]
  wire [26:0] write_meta_bits = {_write_meta_bits_T,io_write_bits_coh_state,io_write_bits_phyTag}; // @[Cat.scala 31:58]
  wire  _T_22 = io_cacheOp_req_bits_opCode == 64'h2; // @[CacheInstruction.scala 94:54]
  wire  _T_23 = io_cacheOp_req_bits_opCode == 64'h0; // @[CacheInstruction.scala 92:54]
  wire  _T_24 = _T_22 | _T_23; // @[ICache.scala 233:61]
  wire  _GEN_36 = _T_24 | (port_0_read_0 | port_1_read_0); // @[ICache.scala 177:31 235:6 237:37]
  wire [63:0] _GEN_37 = _T_24 ? io_cacheOp_req_bits_index : {{57'd0}, bank_0_idx[7:1]}; // @[ICache.scala 235:6 SRAMTemplate.scala 43:{17,17}]
  wire  _GEN_38 = _T_24 | (port_0_read_1 | port_1_read_1); // @[ICache.scala 183:31 235:6 237:37]
  wire [63:0] _GEN_39 = _T_24 ? io_cacheOp_req_bits_index : {{57'd0}, bank_1_idx[7:1]}; // @[ICache.scala 235:6 SRAMTemplate.scala 43:{17,17}]
  wire  _T_25 = io_cacheOp_req_bits_opCode == 64'h6; // @[CacheInstruction.scala 98:54]
  wire [31:0] _T_27 = 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
  wire  _GEN_41 = _T_25 | write_bank_0; // @[ICache.scala 179:31 242:65 244:37]
  wire [63:0] _GEN_42 = _T_25 ? io_cacheOp_req_bits_index : {{57'd0}, io_write_bits_virIdx[7:1]}; // @[ICache.scala 242:65 SRAMTemplate.scala 43:{17,17}]
  wire [63:0] _GEN_43 = _T_25 ? io_cacheOp_req_bits_write_tag_low : {{37'd0}, write_meta_bits}; // @[ICache.scala 242:65 SRAMTemplate.scala 54:{15,15}]
  wire [31:0] _GEN_47 = _T_25 ? _T_27 : {{28'd0}, io_write_bits_waymask}; // @[ICache.scala 242:65 SRAMTemplate.scala 55:{24,24}]
  wire  _GEN_48 = _T_25 | write_bank_1; // @[ICache.scala 185:31 242:65 244:37]
  wire  _GEN_55 = _T_25 | _T_24; // @[ICache.scala 242:65 251:25]
  wire [63:0] _GEN_57 = io_cacheOp_req_valid ? _GEN_37 : {{57'd0}, bank_0_idx[7:1]}; // @[ICache.scala 231:29 SRAMTemplate.scala 43:17]
  wire [63:0] _GEN_59 = io_cacheOp_req_valid ? _GEN_39 : {{57'd0}, bank_1_idx[7:1]}; // @[ICache.scala 231:29 SRAMTemplate.scala 43:17]
  wire  cacheOpShouldResp = io_cacheOp_req_valid & _GEN_55; // @[ICache.scala 231:29]
  wire [63:0] _GEN_62 = io_cacheOp_req_valid ? _GEN_42 : {{57'd0}, io_write_bits_virIdx[7:1]}; // @[ICache.scala 231:29 SRAMTemplate.scala 43:17]
  wire [63:0] _GEN_63 = io_cacheOp_req_valid ? _GEN_43 : {{37'd0}, write_meta_bits}; // @[ICache.scala 231:29 SRAMTemplate.scala 54:15]
  wire [31:0] _GEN_67 = io_cacheOp_req_valid ? _GEN_47 : {{28'd0}, io_write_bits_waymask}; // @[ICache.scala 231:29 SRAMTemplate.scala 55:24]
  reg  io_cacheOp_resp_valid_REG; // @[ICache.scala 264:35]
  wire [23:0] _GEN_76 = 2'h1 == io_cacheOp_req_bits_wayNum[1:0] ? _read_meta_bits_T[47:24] : _read_meta_bits_T[23:0]; // @[ICache.scala 265:{43,43}]
  wire [23:0] _GEN_77 = 2'h2 == io_cacheOp_req_bits_wayNum[1:0] ? _read_meta_bits_T[71:48] : _GEN_76; // @[ICache.scala 265:{43,43}]
  wire [23:0] _GEN_78 = 2'h3 == io_cacheOp_req_bits_wayNum[1:0] ? _read_meta_bits_T[95:72] : _GEN_77; // @[ICache.scala 265:{43,43}]
  wire [23:0] _io_cacheOp_resp_bits_read_tag_low_T_6 = io_cacheOp_resp_valid ? _GEN_78 : 24'h0; // @[ICache.scala 265:43]
  SRAMTemplate tagArrays_0 ( // @[ICache.scala 166:26]
    .clock(tagArrays_0_clock),
    .reset(tagArrays_0_reset),
    .io_rreq_ready(tagArrays_0_io_rreq_ready),
    .io_rreq_valid(tagArrays_0_io_rreq_valid),
    .io_rreq_bits_setIdx(tagArrays_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(tagArrays_0_io_rresp_data_0),
    .io_rresp_data_1(tagArrays_0_io_rresp_data_1),
    .io_rresp_data_2(tagArrays_0_io_rresp_data_2),
    .io_rresp_data_3(tagArrays_0_io_rresp_data_3),
    .io_wreq_valid(tagArrays_0_io_wreq_valid),
    .io_wreq_bits_setIdx(tagArrays_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tagArrays_0_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tagArrays_0_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tagArrays_0_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tagArrays_0_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tagArrays_0_io_wreq_bits_waymask)
  );
  SRAMTemplate tagArrays_1 ( // @[ICache.scala 166:26]
    .clock(tagArrays_1_clock),
    .reset(tagArrays_1_reset),
    .io_rreq_ready(tagArrays_1_io_rreq_ready),
    .io_rreq_valid(tagArrays_1_io_rreq_valid),
    .io_rreq_bits_setIdx(tagArrays_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(tagArrays_1_io_rresp_data_0),
    .io_rresp_data_1(tagArrays_1_io_rresp_data_1),
    .io_rresp_data_2(tagArrays_1_io_rresp_data_2),
    .io_rresp_data_3(tagArrays_1_io_rresp_data_3),
    .io_wreq_valid(tagArrays_1_io_wreq_valid),
    .io_wreq_bits_setIdx(tagArrays_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tagArrays_1_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tagArrays_1_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tagArrays_1_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tagArrays_1_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tagArrays_1_io_wreq_bits_waymask)
  );
  assign io_read_ready = _io_read_ready_T & (tagArrays_0_io_rreq_ready & tagArrays_1_io_rreq_ready); // @[ICache.scala 192:36]
  assign io_readResp_metaData_0_0_coh_state = port_0_read_0_reg ? read_metas_0_0_coh_state : read_metas_1_0_coh_state; // @[ICache.scala 213:26 214:29]
  assign io_readResp_metaData_0_0_tag = port_0_read_0_reg ? read_metas_0_0_tag : read_metas_1_0_tag; // @[ICache.scala 213:26 214:29]
  assign io_readResp_metaData_0_1_coh_state = port_0_read_0_reg ? read_metas_0_1_coh_state : read_metas_1_1_coh_state; // @[ICache.scala 213:26 214:29]
  assign io_readResp_metaData_0_1_tag = port_0_read_0_reg ? read_metas_0_1_tag : read_metas_1_1_tag; // @[ICache.scala 213:26 214:29]
  assign io_readResp_metaData_0_2_coh_state = port_0_read_0_reg ? read_metas_0_2_coh_state : read_metas_1_2_coh_state; // @[ICache.scala 213:26 214:29]
  assign io_readResp_metaData_0_2_tag = port_0_read_0_reg ? read_metas_0_2_tag : read_metas_1_2_tag; // @[ICache.scala 213:26 214:29]
  assign io_readResp_metaData_0_3_coh_state = port_0_read_0_reg ? read_metas_0_3_coh_state : read_metas_1_3_coh_state; // @[ICache.scala 213:26 214:29]
  assign io_readResp_metaData_0_3_tag = port_0_read_0_reg ? read_metas_0_3_tag : read_metas_1_3_tag; // @[ICache.scala 213:26 214:29]
  assign io_readResp_metaData_1_0_coh_state = port_1_read_0_reg ? read_metas_0_0_coh_state : read_metas_1_0_coh_state; // @[ICache.scala 219:26 220:29]
  assign io_readResp_metaData_1_0_tag = port_1_read_0_reg ? read_metas_0_0_tag : read_metas_1_0_tag; // @[ICache.scala 219:26 220:29]
  assign io_readResp_metaData_1_1_coh_state = port_1_read_0_reg ? read_metas_0_1_coh_state : read_metas_1_1_coh_state; // @[ICache.scala 219:26 220:29]
  assign io_readResp_metaData_1_1_tag = port_1_read_0_reg ? read_metas_0_1_tag : read_metas_1_1_tag; // @[ICache.scala 219:26 220:29]
  assign io_readResp_metaData_1_2_coh_state = port_1_read_0_reg ? read_metas_0_2_coh_state : read_metas_1_2_coh_state; // @[ICache.scala 219:26 220:29]
  assign io_readResp_metaData_1_2_tag = port_1_read_0_reg ? read_metas_0_2_tag : read_metas_1_2_tag; // @[ICache.scala 219:26 220:29]
  assign io_readResp_metaData_1_3_coh_state = port_1_read_0_reg ? read_metas_0_3_coh_state : read_metas_1_3_coh_state; // @[ICache.scala 219:26 220:29]
  assign io_readResp_metaData_1_3_tag = port_1_read_0_reg ? read_metas_0_3_tag : read_metas_1_3_tag; // @[ICache.scala 219:26 220:29]
  assign io_readResp_errors_0_0 = io_readResp_errors_0_0_REG & io_readResp_errors_0_0_REG_2; // @[ICache.scala 202:87]
  assign io_readResp_errors_0_1 = io_readResp_errors_0_1_REG & io_readResp_errors_0_1_REG_2; // @[ICache.scala 202:87]
  assign io_readResp_errors_0_2 = io_readResp_errors_0_2_REG & io_readResp_errors_0_2_REG_2; // @[ICache.scala 202:87]
  assign io_readResp_errors_0_3 = io_readResp_errors_0_3_REG & io_readResp_errors_0_3_REG_2; // @[ICache.scala 202:87]
  assign io_readResp_errors_1_0 = io_readResp_errors_1_0_REG & io_readResp_errors_1_0_REG_2; // @[ICache.scala 202:87]
  assign io_readResp_errors_1_1 = io_readResp_errors_1_1_REG & io_readResp_errors_1_1_REG_2; // @[ICache.scala 202:87]
  assign io_readResp_errors_1_2 = io_readResp_errors_1_2_REG & io_readResp_errors_1_2_REG_2; // @[ICache.scala 202:87]
  assign io_readResp_errors_1_3 = io_readResp_errors_1_3_REG & io_readResp_errors_1_3_REG_2; // @[ICache.scala 202:87]
  assign io_cacheOp_resp_valid = io_cacheOp_resp_valid_REG; // @[ICache.scala 264:25]
  assign io_cacheOp_resp_bits_read_tag_low = {{40'd0}, _io_cacheOp_resp_bits_read_tag_low_T_6}; // @[ICache.scala 265:37]
  assign tagArrays_0_clock = clock;
  assign tagArrays_0_reset = reset;
  assign tagArrays_0_io_rreq_valid = io_cacheOp_req_valid ? _GEN_36 : port_0_read_0 | port_1_read_0; // @[ICache.scala 231:29 177:31]
  assign tagArrays_0_io_rreq_bits_setIdx = _GEN_57[6:0];
  assign tagArrays_0_io_wreq_valid = io_cacheOp_req_valid ? _GEN_41 : write_bank_0; // @[ICache.scala 231:29 179:31]
  assign tagArrays_0_io_wreq_bits_setIdx = _GEN_62[6:0];
  assign tagArrays_0_io_wreq_bits_data_0 = _GEN_63[26:0];
  assign tagArrays_0_io_wreq_bits_data_1 = _GEN_63[26:0];
  assign tagArrays_0_io_wreq_bits_data_2 = _GEN_63[26:0];
  assign tagArrays_0_io_wreq_bits_data_3 = _GEN_63[26:0];
  assign tagArrays_0_io_wreq_bits_waymask = _GEN_67[3:0];
  assign tagArrays_1_clock = clock;
  assign tagArrays_1_reset = reset;
  assign tagArrays_1_io_rreq_valid = io_cacheOp_req_valid ? _GEN_38 : port_0_read_1 | port_1_read_1; // @[ICache.scala 231:29 183:31]
  assign tagArrays_1_io_rreq_bits_setIdx = _GEN_59[6:0];
  assign tagArrays_1_io_wreq_valid = io_cacheOp_req_valid ? _GEN_48 : write_bank_1; // @[ICache.scala 231:29 185:31]
  assign tagArrays_1_io_wreq_bits_setIdx = _GEN_62[6:0];
  assign tagArrays_1_io_wreq_bits_data_0 = _GEN_63[26:0];
  assign tagArrays_1_io_wreq_bits_data_1 = _GEN_63[26:0];
  assign tagArrays_1_io_wreq_bits_data_2 = _GEN_63[26:0];
  assign tagArrays_1_io_wreq_bits_data_3 = _GEN_63[26:0];
  assign tagArrays_1_io_wreq_bits_waymask = _GEN_67[3:0];
  always @(posedge clock) begin
    if (_port_0_read_0_reg_T) begin // @[Reg.scala 17:18]
      port_0_read_0_reg <= port_0_read_0; // @[Reg.scala 17:22]
    end
    if (_port_0_read_0_reg_T) begin // @[Reg.scala 17:18]
      port_1_read_0_reg <= port_1_read_0; // @[Reg.scala 17:22]
    end
    io_readResp_errors_0_0_REG <= ^read_meta_bits__0; // @[ECC.scala 88:27]
    io_readResp_errors_0_0_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_0_0_REG_2 <= io_readResp_errors_0_0_REG_1; // @[ICache.scala 202:97]
    io_readResp_errors_0_1_REG <= ^read_meta_bits__1; // @[ECC.scala 88:27]
    io_readResp_errors_0_1_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_0_1_REG_2 <= io_readResp_errors_0_1_REG_1; // @[ICache.scala 202:97]
    io_readResp_errors_0_2_REG <= ^read_meta_bits__2; // @[ECC.scala 88:27]
    io_readResp_errors_0_2_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_0_2_REG_2 <= io_readResp_errors_0_2_REG_1; // @[ICache.scala 202:97]
    io_readResp_errors_0_3_REG <= ^read_meta_bits__3; // @[ECC.scala 88:27]
    io_readResp_errors_0_3_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_0_3_REG_2 <= io_readResp_errors_0_3_REG_1; // @[ICache.scala 202:97]
    io_readResp_errors_1_0_REG <= ^read_meta_bits_1_0; // @[ECC.scala 88:27]
    io_readResp_errors_1_0_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_1_0_REG_2 <= io_readResp_errors_1_0_REG_1; // @[ICache.scala 202:97]
    io_readResp_errors_1_1_REG <= ^read_meta_bits_1_1; // @[ECC.scala 88:27]
    io_readResp_errors_1_1_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_1_1_REG_2 <= io_readResp_errors_1_1_REG_1; // @[ICache.scala 202:97]
    io_readResp_errors_1_2_REG <= ^read_meta_bits_1_2; // @[ECC.scala 88:27]
    io_readResp_errors_1_2_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_1_2_REG_2 <= io_readResp_errors_1_2_REG_1; // @[ICache.scala 202:97]
    io_readResp_errors_1_3_REG <= ^read_meta_bits_1_3; // @[ECC.scala 88:27]
    io_readResp_errors_1_3_REG_1 <= io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
    io_readResp_errors_1_3_REG_2 <= io_readResp_errors_1_3_REG_1; // @[ICache.scala 202:97]
    io_cacheOp_resp_valid_REG <= io_cacheOp_req_valid & cacheOpShouldResp; // @[ICache.scala 264:57]
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
  port_0_read_0_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  port_1_read_0_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_readResp_errors_0_0_REG = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_readResp_errors_0_0_REG_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_readResp_errors_0_0_REG_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_readResp_errors_0_1_REG = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_readResp_errors_0_1_REG_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_readResp_errors_0_1_REG_2 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_readResp_errors_0_2_REG = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_readResp_errors_0_2_REG_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_readResp_errors_0_2_REG_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_readResp_errors_0_3_REG = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_readResp_errors_0_3_REG_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_readResp_errors_0_3_REG_2 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_readResp_errors_1_0_REG = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_readResp_errors_1_0_REG_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_readResp_errors_1_0_REG_2 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_readResp_errors_1_1_REG = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_readResp_errors_1_1_REG_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_readResp_errors_1_1_REG_2 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_readResp_errors_1_2_REG = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_readResp_errors_1_2_REG_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_readResp_errors_1_2_REG_2 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_readResp_errors_1_3_REG = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_readResp_errors_1_3_REG_1 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_readResp_errors_1_3_REG_2 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_cacheOp_resp_valid_REG = _RAND_26[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
