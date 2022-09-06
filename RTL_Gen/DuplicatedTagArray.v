module DuplicatedTagArray(
  input         clock,
  input         reset,
  output        io_read_0_ready,
  input         io_read_0_valid,
  input  [7:0]  io_read_0_bits_idx,
  output        io_read_1_ready,
  input         io_read_1_valid,
  input  [7:0]  io_read_1_bits_idx,
  output        io_read_2_ready,
  input         io_read_2_valid,
  input  [7:0]  io_read_2_bits_idx,
  output [29:0] io_resp_0_0,
  output [29:0] io_resp_0_1,
  output [29:0] io_resp_0_2,
  output [29:0] io_resp_0_3,
  output [29:0] io_resp_1_0,
  output [29:0] io_resp_1_1,
  output [29:0] io_resp_1_2,
  output [29:0] io_resp_1_3,
  output [29:0] io_resp_2_0,
  output [29:0] io_resp_2_1,
  output [29:0] io_resp_2_2,
  output [29:0] io_resp_2_3,
  input         io_write_valid,
  input  [7:0]  io_write_bits_idx,
  input  [3:0]  io_write_bits_way_en,
  input  [23:0] io_write_bits_tag,
  input         io_cacheOp_req_valid,
  input  [63:0] io_cacheOp_req_bits_wayNum,
  input  [63:0] io_cacheOp_req_bits_index,
  input  [63:0] io_cacheOp_req_bits_opCode,
  input  [63:0] io_cacheOp_req_bits_write_tag_low,
  input  [63:0] io_cacheOp_req_bits_write_tag_ecc,
  output        io_cacheOp_resp_valid,
  output [63:0] io_cacheOp_resp_bits_read_tag_low,
  output [63:0] io_cacheOp_resp_bits_read_tag_ecc
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  array_0_clock; // @[TagArray.scala 113:43]
  wire  array_0_reset; // @[TagArray.scala 113:43]
  wire  array_0_io_read_ready; // @[TagArray.scala 113:43]
  wire  array_0_io_read_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_0_io_read_bits_idx; // @[TagArray.scala 113:43]
  wire [23:0] array_0_io_resp_0; // @[TagArray.scala 113:43]
  wire [23:0] array_0_io_resp_1; // @[TagArray.scala 113:43]
  wire [23:0] array_0_io_resp_2; // @[TagArray.scala 113:43]
  wire [23:0] array_0_io_resp_3; // @[TagArray.scala 113:43]
  wire  array_0_io_write_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_0_io_write_bits_idx; // @[TagArray.scala 113:43]
  wire [3:0] array_0_io_write_bits_way_en; // @[TagArray.scala 113:43]
  wire [23:0] array_0_io_write_bits_tag; // @[TagArray.scala 113:43]
  wire  array_0_io_ecc_read_ready; // @[TagArray.scala 113:43]
  wire  array_0_io_ecc_read_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_0_io_ecc_read_bits_idx; // @[TagArray.scala 113:43]
  wire [5:0] array_0_io_ecc_resp_0; // @[TagArray.scala 113:43]
  wire [5:0] array_0_io_ecc_resp_1; // @[TagArray.scala 113:43]
  wire [5:0] array_0_io_ecc_resp_2; // @[TagArray.scala 113:43]
  wire [5:0] array_0_io_ecc_resp_3; // @[TagArray.scala 113:43]
  wire  array_0_io_ecc_write_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_0_io_ecc_write_bits_idx; // @[TagArray.scala 113:43]
  wire [3:0] array_0_io_ecc_write_bits_way_en; // @[TagArray.scala 113:43]
  wire [5:0] array_0_io_ecc_write_bits_ecc; // @[TagArray.scala 113:43]
  wire  array_1_clock; // @[TagArray.scala 113:43]
  wire  array_1_reset; // @[TagArray.scala 113:43]
  wire  array_1_io_read_ready; // @[TagArray.scala 113:43]
  wire  array_1_io_read_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_1_io_read_bits_idx; // @[TagArray.scala 113:43]
  wire [23:0] array_1_io_resp_0; // @[TagArray.scala 113:43]
  wire [23:0] array_1_io_resp_1; // @[TagArray.scala 113:43]
  wire [23:0] array_1_io_resp_2; // @[TagArray.scala 113:43]
  wire [23:0] array_1_io_resp_3; // @[TagArray.scala 113:43]
  wire  array_1_io_write_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_1_io_write_bits_idx; // @[TagArray.scala 113:43]
  wire [3:0] array_1_io_write_bits_way_en; // @[TagArray.scala 113:43]
  wire [23:0] array_1_io_write_bits_tag; // @[TagArray.scala 113:43]
  wire  array_1_io_ecc_read_ready; // @[TagArray.scala 113:43]
  wire  array_1_io_ecc_read_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_1_io_ecc_read_bits_idx; // @[TagArray.scala 113:43]
  wire [5:0] array_1_io_ecc_resp_0; // @[TagArray.scala 113:43]
  wire [5:0] array_1_io_ecc_resp_1; // @[TagArray.scala 113:43]
  wire [5:0] array_1_io_ecc_resp_2; // @[TagArray.scala 113:43]
  wire [5:0] array_1_io_ecc_resp_3; // @[TagArray.scala 113:43]
  wire  array_1_io_ecc_write_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_1_io_ecc_write_bits_idx; // @[TagArray.scala 113:43]
  wire [3:0] array_1_io_ecc_write_bits_way_en; // @[TagArray.scala 113:43]
  wire [5:0] array_1_io_ecc_write_bits_ecc; // @[TagArray.scala 113:43]
  wire  array_2_clock; // @[TagArray.scala 113:43]
  wire  array_2_reset; // @[TagArray.scala 113:43]
  wire  array_2_io_read_ready; // @[TagArray.scala 113:43]
  wire  array_2_io_read_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_2_io_read_bits_idx; // @[TagArray.scala 113:43]
  wire [23:0] array_2_io_resp_0; // @[TagArray.scala 113:43]
  wire [23:0] array_2_io_resp_1; // @[TagArray.scala 113:43]
  wire [23:0] array_2_io_resp_2; // @[TagArray.scala 113:43]
  wire [23:0] array_2_io_resp_3; // @[TagArray.scala 113:43]
  wire  array_2_io_write_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_2_io_write_bits_idx; // @[TagArray.scala 113:43]
  wire [3:0] array_2_io_write_bits_way_en; // @[TagArray.scala 113:43]
  wire [23:0] array_2_io_write_bits_tag; // @[TagArray.scala 113:43]
  wire  array_2_io_ecc_read_ready; // @[TagArray.scala 113:43]
  wire  array_2_io_ecc_read_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_2_io_ecc_read_bits_idx; // @[TagArray.scala 113:43]
  wire [5:0] array_2_io_ecc_resp_0; // @[TagArray.scala 113:43]
  wire [5:0] array_2_io_ecc_resp_1; // @[TagArray.scala 113:43]
  wire [5:0] array_2_io_ecc_resp_2; // @[TagArray.scala 113:43]
  wire [5:0] array_2_io_ecc_resp_3; // @[TagArray.scala 113:43]
  wire  array_2_io_ecc_write_valid; // @[TagArray.scala 113:43]
  wire [7:0] array_2_io_ecc_write_bits_idx; // @[TagArray.scala 113:43]
  wire [3:0] array_2_io_ecc_write_bits_way_en; // @[TagArray.scala 113:43]
  wire [5:0] array_2_io_ecc_write_bits_ecc; // @[TagArray.scala 113:43]
  wire [23:0] _ecc_syndromeUInt_T = 24'haaad5b & io_write_bits_tag; // @[ECC.scala 148:74]
  wire  _ecc_syndromeUInt_T_1 = ^_ecc_syndromeUInt_T; // @[ECC.scala 148:79]
  wire [23:0] _ecc_syndromeUInt_T_3 = 24'h33366d & io_write_bits_tag; // @[ECC.scala 148:74]
  wire  _ecc_syndromeUInt_T_4 = ^_ecc_syndromeUInt_T_3; // @[ECC.scala 148:79]
  wire [23:0] _ecc_syndromeUInt_T_6 = 24'hc3c78e & io_write_bits_tag; // @[ECC.scala 148:74]
  wire  _ecc_syndromeUInt_T_7 = ^_ecc_syndromeUInt_T_6; // @[ECC.scala 148:79]
  wire [23:0] _ecc_syndromeUInt_T_9 = 24'hfc07f0 & io_write_bits_tag; // @[ECC.scala 148:74]
  wire  _ecc_syndromeUInt_T_10 = ^_ecc_syndromeUInt_T_9; // @[ECC.scala 148:79]
  wire [23:0] _ecc_syndromeUInt_T_12 = 24'hfff800 & io_write_bits_tag; // @[ECC.scala 148:74]
  wire  _ecc_syndromeUInt_T_13 = ^_ecc_syndromeUInt_T_12; // @[ECC.scala 148:79]
  wire [28:0] _ecc_T = {_ecc_syndromeUInt_T_13,_ecc_syndromeUInt_T_10,_ecc_syndromeUInt_T_7,_ecc_syndromeUInt_T_4,
    _ecc_syndromeUInt_T_1,io_write_bits_tag}; // @[Cat.scala 31:58]
  wire  _ecc_T_1 = ^_ecc_T; // @[ECC.scala 82:55]
  wire [29:0] _ecc_T_3 = {_ecc_T_1,_ecc_syndromeUInt_T_13,_ecc_syndromeUInt_T_10,_ecc_syndromeUInt_T_7,
    _ecc_syndromeUInt_T_4,_ecc_syndromeUInt_T_1,io_write_bits_tag}; // @[Cat.scala 31:58]
  wire [5:0] ecc = _ecc_T_3[29:24]; // @[TagArray.scala 117:11]
  wire  _T_12 = io_cacheOp_req_bits_opCode == 64'h2; // @[CacheInstruction.scala 94:54]
  wire [31:0] _array_0_io_read_bits_way_en_T_1 = 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
  wire  _GEN_0 = _T_12 | io_read_0_valid; // @[TagArray.scala 130:22 146:49 148:32]
  wire [63:0] _GEN_1 = _T_12 ? io_cacheOp_req_bits_index : {{56'd0}, io_read_0_bits_idx}; // @[TagArray.scala 130:22 146:49 149:35]
  wire  _GEN_3 = _T_12 | io_read_1_valid; // @[TagArray.scala 130:22 146:49 148:32]
  wire [63:0] _GEN_4 = _T_12 ? io_cacheOp_req_bits_index : {{56'd0}, io_read_1_bits_idx}; // @[TagArray.scala 130:22 146:49 149:35]
  wire  _GEN_6 = _T_12 | io_read_2_valid; // @[TagArray.scala 130:22 146:49 148:32]
  wire [63:0] _GEN_7 = _T_12 ? io_cacheOp_req_bits_index : {{56'd0}, io_read_2_bits_idx}; // @[TagArray.scala 130:22 146:49 149:35]
  wire  _T_13 = io_cacheOp_req_bits_opCode == 64'h0; // @[CacheInstruction.scala 92:54]
  wire  _GEN_10 = _T_13 | io_read_0_valid; // @[TagArray.scala 131:32 154:53 156:36]
  wire [63:0] _GEN_11 = _T_13 ? io_cacheOp_req_bits_index : {{56'd0}, io_read_0_bits_idx}; // @[TagArray.scala 132:31 154:53 157:39]
  wire  _GEN_13 = _T_13 | io_read_1_valid; // @[TagArray.scala 131:32 154:53 156:36]
  wire [63:0] _GEN_14 = _T_13 ? io_cacheOp_req_bits_index : {{56'd0}, io_read_1_bits_idx}; // @[TagArray.scala 132:31 154:53 157:39]
  wire  _GEN_16 = _T_13 | io_read_2_valid; // @[TagArray.scala 131:32 154:53 156:36]
  wire [63:0] _GEN_17 = _T_13 ? io_cacheOp_req_bits_index : {{56'd0}, io_read_2_bits_idx}; // @[TagArray.scala 132:31 154:53 157:39]
  wire  _GEN_19 = _T_13 | _T_12; // @[TagArray.scala 154:53 160:25]
  wire  _T_14 = io_cacheOp_req_bits_opCode == 64'h6; // @[CacheInstruction.scala 98:54]
  wire  _GEN_20 = _T_14 | io_write_valid; // @[TagArray.scala 122:29 162:50 164:33]
  wire [63:0] _GEN_21 = _T_14 ? io_cacheOp_req_bits_index : {{56'd0}, io_write_bits_idx}; // @[TagArray.scala 123:28 162:50 165:36]
  wire [31:0] _GEN_22 = _T_14 ? _array_0_io_read_bits_way_en_T_1 : {{28'd0}, io_write_bits_way_en}; // @[TagArray.scala 123:28 162:50 166:39]
  wire [63:0] _GEN_23 = _T_14 ? io_cacheOp_req_bits_write_tag_low : {{40'd0}, io_write_bits_tag}; // @[TagArray.scala 123:28 162:50 167:36]
  wire  _GEN_26 = _T_14 | _GEN_19; // @[TagArray.scala 162:50 169:25]
  wire  _T_15 = io_cacheOp_req_bits_opCode == 64'h4; // @[CacheInstruction.scala 96:54]
  wire  _GEN_27 = _T_15 | io_write_valid; // @[TagArray.scala 124:33 171:52 173:37]
  wire [63:0] _GEN_28 = _T_15 ? io_cacheOp_req_bits_index : {{56'd0}, io_write_bits_idx}; // @[TagArray.scala 125:36 171:52 174:40]
  wire [31:0] _GEN_29 = _T_15 ? _array_0_io_read_bits_way_en_T_1 : {{28'd0}, io_write_bits_way_en}; // @[TagArray.scala 126:39 171:52 175:43]
  wire [63:0] _GEN_30 = _T_15 ? io_cacheOp_req_bits_write_tag_ecc : {{58'd0}, ecc}; // @[TagArray.scala 128:36 171:52 176:40]
  wire  _GEN_35 = _T_15 | _GEN_26; // @[TagArray.scala 171:52 178:25]
  wire [63:0] _GEN_37 = io_cacheOp_req_valid ? _GEN_1 : {{56'd0}, io_read_0_bits_idx}; // @[TagArray.scala 130:22 145:29]
  wire [63:0] _GEN_40 = io_cacheOp_req_valid ? _GEN_4 : {{56'd0}, io_read_1_bits_idx}; // @[TagArray.scala 130:22 145:29]
  wire [63:0] _GEN_43 = io_cacheOp_req_valid ? _GEN_7 : {{56'd0}, io_read_2_bits_idx}; // @[TagArray.scala 130:22 145:29]
  wire  cacheOpShouldResp = io_cacheOp_req_valid & _GEN_35; // @[TagArray.scala 145:29]
  wire [63:0] _GEN_47 = io_cacheOp_req_valid ? _GEN_11 : {{56'd0}, io_read_0_bits_idx}; // @[TagArray.scala 145:29 132:31]
  wire [63:0] _GEN_50 = io_cacheOp_req_valid ? _GEN_14 : {{56'd0}, io_read_1_bits_idx}; // @[TagArray.scala 145:29 132:31]
  wire [63:0] _GEN_53 = io_cacheOp_req_valid ? _GEN_17 : {{56'd0}, io_read_2_bits_idx}; // @[TagArray.scala 145:29 132:31]
  wire [63:0] _GEN_56 = io_cacheOp_req_valid ? _GEN_21 : {{56'd0}, io_write_bits_idx}; // @[TagArray.scala 123:28 145:29]
  wire [31:0] _GEN_57 = io_cacheOp_req_valid ? _GEN_22 : {{28'd0}, io_write_bits_way_en}; // @[TagArray.scala 123:28 145:29]
  wire [63:0] _GEN_58 = io_cacheOp_req_valid ? _GEN_23 : {{40'd0}, io_write_bits_tag}; // @[TagArray.scala 123:28 145:29]
  wire [63:0] _GEN_62 = io_cacheOp_req_valid ? _GEN_28 : {{56'd0}, io_write_bits_idx}; // @[TagArray.scala 145:29 125:36]
  wire [31:0] _GEN_63 = io_cacheOp_req_valid ? _GEN_29 : {{28'd0}, io_write_bits_way_en}; // @[TagArray.scala 145:29 126:39]
  wire [63:0] _GEN_64 = io_cacheOp_req_valid ? _GEN_30 : {{58'd0}, ecc}; // @[TagArray.scala 145:29 128:36]
  reg  io_cacheOp_resp_valid_REG; // @[TagArray.scala 181:35]
  reg [63:0] io_cacheOp_resp_bits_read_tag_low_REG; // @[TagArray.scala 182:91]
  wire [23:0] _GEN_69 = array_0_io_resp_0; // @[TagArray.scala 182:{43,43}]
  wire [23:0] _GEN_70 = 2'h1 == io_cacheOp_resp_bits_read_tag_low_REG[1:0] ? array_0_io_resp_1 : _GEN_69; // @[TagArray.scala 182:{43,43}]
  wire [23:0] _GEN_71 = 2'h2 == io_cacheOp_resp_bits_read_tag_low_REG[1:0] ? array_0_io_resp_2 : _GEN_70; // @[TagArray.scala 182:{43,43}]
  wire [23:0] _GEN_72 = 2'h3 == io_cacheOp_resp_bits_read_tag_low_REG[1:0] ? array_0_io_resp_3 : _GEN_71; // @[TagArray.scala 182:{43,43}]
  wire [23:0] _io_cacheOp_resp_bits_read_tag_low_T_2 = io_cacheOp_resp_valid ? _GEN_72 : 24'h0; // @[TagArray.scala 182:43]
  reg [63:0] io_cacheOp_resp_bits_read_tag_ecc_REG; // @[TagArray.scala 183:95]
  wire [5:0] _GEN_73 = array_0_io_ecc_resp_0; // @[TagArray.scala 183:{43,43}]
  wire [5:0] _GEN_74 = 2'h1 == io_cacheOp_resp_bits_read_tag_ecc_REG[1:0] ? array_0_io_ecc_resp_1 : _GEN_73; // @[TagArray.scala 183:{43,43}]
  wire [5:0] _GEN_75 = 2'h2 == io_cacheOp_resp_bits_read_tag_ecc_REG[1:0] ? array_0_io_ecc_resp_2 : _GEN_74; // @[TagArray.scala 183:{43,43}]
  wire [5:0] _GEN_76 = 2'h3 == io_cacheOp_resp_bits_read_tag_ecc_REG[1:0] ? array_0_io_ecc_resp_3 : _GEN_75; // @[TagArray.scala 183:{43,43}]
  wire [5:0] _io_cacheOp_resp_bits_read_tag_ecc_T_2 = io_cacheOp_resp_valid ? _GEN_76 : 6'h0; // @[TagArray.scala 183:43]
  TagArray array_0 ( // @[TagArray.scala 113:43]
    .clock(array_0_clock),
    .reset(array_0_reset),
    .io_read_ready(array_0_io_read_ready),
    .io_read_valid(array_0_io_read_valid),
    .io_read_bits_idx(array_0_io_read_bits_idx),
    .io_resp_0(array_0_io_resp_0),
    .io_resp_1(array_0_io_resp_1),
    .io_resp_2(array_0_io_resp_2),
    .io_resp_3(array_0_io_resp_3),
    .io_write_valid(array_0_io_write_valid),
    .io_write_bits_idx(array_0_io_write_bits_idx),
    .io_write_bits_way_en(array_0_io_write_bits_way_en),
    .io_write_bits_tag(array_0_io_write_bits_tag),
    .io_ecc_read_ready(array_0_io_ecc_read_ready),
    .io_ecc_read_valid(array_0_io_ecc_read_valid),
    .io_ecc_read_bits_idx(array_0_io_ecc_read_bits_idx),
    .io_ecc_resp_0(array_0_io_ecc_resp_0),
    .io_ecc_resp_1(array_0_io_ecc_resp_1),
    .io_ecc_resp_2(array_0_io_ecc_resp_2),
    .io_ecc_resp_3(array_0_io_ecc_resp_3),
    .io_ecc_write_valid(array_0_io_ecc_write_valid),
    .io_ecc_write_bits_idx(array_0_io_ecc_write_bits_idx),
    .io_ecc_write_bits_way_en(array_0_io_ecc_write_bits_way_en),
    .io_ecc_write_bits_ecc(array_0_io_ecc_write_bits_ecc)
  );
  TagArray array_1 ( // @[TagArray.scala 113:43]
    .clock(array_1_clock),
    .reset(array_1_reset),
    .io_read_ready(array_1_io_read_ready),
    .io_read_valid(array_1_io_read_valid),
    .io_read_bits_idx(array_1_io_read_bits_idx),
    .io_resp_0(array_1_io_resp_0),
    .io_resp_1(array_1_io_resp_1),
    .io_resp_2(array_1_io_resp_2),
    .io_resp_3(array_1_io_resp_3),
    .io_write_valid(array_1_io_write_valid),
    .io_write_bits_idx(array_1_io_write_bits_idx),
    .io_write_bits_way_en(array_1_io_write_bits_way_en),
    .io_write_bits_tag(array_1_io_write_bits_tag),
    .io_ecc_read_ready(array_1_io_ecc_read_ready),
    .io_ecc_read_valid(array_1_io_ecc_read_valid),
    .io_ecc_read_bits_idx(array_1_io_ecc_read_bits_idx),
    .io_ecc_resp_0(array_1_io_ecc_resp_0),
    .io_ecc_resp_1(array_1_io_ecc_resp_1),
    .io_ecc_resp_2(array_1_io_ecc_resp_2),
    .io_ecc_resp_3(array_1_io_ecc_resp_3),
    .io_ecc_write_valid(array_1_io_ecc_write_valid),
    .io_ecc_write_bits_idx(array_1_io_ecc_write_bits_idx),
    .io_ecc_write_bits_way_en(array_1_io_ecc_write_bits_way_en),
    .io_ecc_write_bits_ecc(array_1_io_ecc_write_bits_ecc)
  );
  TagArray array_2 ( // @[TagArray.scala 113:43]
    .clock(array_2_clock),
    .reset(array_2_reset),
    .io_read_ready(array_2_io_read_ready),
    .io_read_valid(array_2_io_read_valid),
    .io_read_bits_idx(array_2_io_read_bits_idx),
    .io_resp_0(array_2_io_resp_0),
    .io_resp_1(array_2_io_resp_1),
    .io_resp_2(array_2_io_resp_2),
    .io_resp_3(array_2_io_resp_3),
    .io_write_valid(array_2_io_write_valid),
    .io_write_bits_idx(array_2_io_write_bits_idx),
    .io_write_bits_way_en(array_2_io_write_bits_way_en),
    .io_write_bits_tag(array_2_io_write_bits_tag),
    .io_ecc_read_ready(array_2_io_ecc_read_ready),
    .io_ecc_read_valid(array_2_io_ecc_read_valid),
    .io_ecc_read_bits_idx(array_2_io_ecc_read_bits_idx),
    .io_ecc_resp_0(array_2_io_ecc_resp_0),
    .io_ecc_resp_1(array_2_io_ecc_resp_1),
    .io_ecc_resp_2(array_2_io_ecc_resp_2),
    .io_ecc_resp_3(array_2_io_ecc_resp_3),
    .io_ecc_write_valid(array_2_io_ecc_write_valid),
    .io_ecc_write_bits_idx(array_2_io_ecc_write_bits_idx),
    .io_ecc_write_bits_way_en(array_2_io_ecc_write_bits_way_en),
    .io_ecc_write_bits_ecc(array_2_io_ecc_write_bits_ecc)
  );
  assign io_read_0_ready = array_0_io_read_ready & array_0_io_ecc_read_ready; // @[TagArray.scala 137:48]
  assign io_read_1_ready = array_1_io_read_ready & array_1_io_ecc_read_ready; // @[TagArray.scala 137:48]
  assign io_read_2_ready = array_2_io_read_ready & array_2_io_ecc_read_ready; // @[TagArray.scala 137:48]
  assign io_resp_0_0 = {array_0_io_ecc_resp_0,array_0_io_resp_0}; // @[Cat.scala 31:58]
  assign io_resp_0_1 = {array_0_io_ecc_resp_1,array_0_io_resp_1}; // @[Cat.scala 31:58]
  assign io_resp_0_2 = {array_0_io_ecc_resp_2,array_0_io_resp_2}; // @[Cat.scala 31:58]
  assign io_resp_0_3 = {array_0_io_ecc_resp_3,array_0_io_resp_3}; // @[Cat.scala 31:58]
  assign io_resp_1_0 = {array_1_io_ecc_resp_0,array_1_io_resp_0}; // @[Cat.scala 31:58]
  assign io_resp_1_1 = {array_1_io_ecc_resp_1,array_1_io_resp_1}; // @[Cat.scala 31:58]
  assign io_resp_1_2 = {array_1_io_ecc_resp_2,array_1_io_resp_2}; // @[Cat.scala 31:58]
  assign io_resp_1_3 = {array_1_io_ecc_resp_3,array_1_io_resp_3}; // @[Cat.scala 31:58]
  assign io_resp_2_0 = {array_2_io_ecc_resp_0,array_2_io_resp_0}; // @[Cat.scala 31:58]
  assign io_resp_2_1 = {array_2_io_ecc_resp_1,array_2_io_resp_1}; // @[Cat.scala 31:58]
  assign io_resp_2_2 = {array_2_io_ecc_resp_2,array_2_io_resp_2}; // @[Cat.scala 31:58]
  assign io_resp_2_3 = {array_2_io_ecc_resp_3,array_2_io_resp_3}; // @[Cat.scala 31:58]
  assign io_cacheOp_resp_valid = io_cacheOp_resp_valid_REG; // @[TagArray.scala 181:25]
  assign io_cacheOp_resp_bits_read_tag_low = {{40'd0}, _io_cacheOp_resp_bits_read_tag_low_T_2}; // @[TagArray.scala 182:37]
  assign io_cacheOp_resp_bits_read_tag_ecc = {{58'd0}, _io_cacheOp_resp_bits_read_tag_ecc_T_2}; // @[TagArray.scala 183:37]
  assign array_0_clock = clock;
  assign array_0_reset = reset;
  assign array_0_io_read_valid = io_cacheOp_req_valid ? _GEN_0 : io_read_0_valid; // @[TagArray.scala 130:22 145:29]
  assign array_0_io_read_bits_idx = _GEN_37[7:0];
  assign array_0_io_write_valid = io_cacheOp_req_valid ? _GEN_20 : io_write_valid; // @[TagArray.scala 122:29 145:29]
  assign array_0_io_write_bits_idx = _GEN_56[7:0];
  assign array_0_io_write_bits_way_en = _GEN_57[3:0];
  assign array_0_io_write_bits_tag = _GEN_58[23:0];
  assign array_0_io_ecc_read_valid = io_cacheOp_req_valid ? _GEN_10 : io_read_0_valid; // @[TagArray.scala 145:29 131:32]
  assign array_0_io_ecc_read_bits_idx = _GEN_47[7:0];
  assign array_0_io_ecc_write_valid = io_cacheOp_req_valid ? _GEN_27 : io_write_valid; // @[TagArray.scala 145:29 124:33]
  assign array_0_io_ecc_write_bits_idx = _GEN_62[7:0];
  assign array_0_io_ecc_write_bits_way_en = _GEN_63[3:0];
  assign array_0_io_ecc_write_bits_ecc = _GEN_64[5:0];
  assign array_1_clock = clock;
  assign array_1_reset = reset;
  assign array_1_io_read_valid = io_cacheOp_req_valid ? _GEN_3 : io_read_1_valid; // @[TagArray.scala 130:22 145:29]
  assign array_1_io_read_bits_idx = _GEN_40[7:0];
  assign array_1_io_write_valid = io_cacheOp_req_valid ? _GEN_20 : io_write_valid; // @[TagArray.scala 122:29 145:29]
  assign array_1_io_write_bits_idx = _GEN_56[7:0];
  assign array_1_io_write_bits_way_en = _GEN_57[3:0];
  assign array_1_io_write_bits_tag = _GEN_58[23:0];
  assign array_1_io_ecc_read_valid = io_cacheOp_req_valid ? _GEN_13 : io_read_1_valid; // @[TagArray.scala 145:29 131:32]
  assign array_1_io_ecc_read_bits_idx = _GEN_50[7:0];
  assign array_1_io_ecc_write_valid = io_cacheOp_req_valid ? _GEN_27 : io_write_valid; // @[TagArray.scala 145:29 124:33]
  assign array_1_io_ecc_write_bits_idx = _GEN_62[7:0];
  assign array_1_io_ecc_write_bits_way_en = _GEN_63[3:0];
  assign array_1_io_ecc_write_bits_ecc = _GEN_64[5:0];
  assign array_2_clock = clock;
  assign array_2_reset = reset;
  assign array_2_io_read_valid = io_cacheOp_req_valid ? _GEN_6 : io_read_2_valid; // @[TagArray.scala 130:22 145:29]
  assign array_2_io_read_bits_idx = _GEN_43[7:0];
  assign array_2_io_write_valid = io_cacheOp_req_valid ? _GEN_20 : io_write_valid; // @[TagArray.scala 122:29 145:29]
  assign array_2_io_write_bits_idx = _GEN_56[7:0];
  assign array_2_io_write_bits_way_en = _GEN_57[3:0];
  assign array_2_io_write_bits_tag = _GEN_58[23:0];
  assign array_2_io_ecc_read_valid = io_cacheOp_req_valid ? _GEN_16 : io_read_2_valid; // @[TagArray.scala 145:29 131:32]
  assign array_2_io_ecc_read_bits_idx = _GEN_53[7:0];
  assign array_2_io_ecc_write_valid = io_cacheOp_req_valid ? _GEN_27 : io_write_valid; // @[TagArray.scala 145:29 124:33]
  assign array_2_io_ecc_write_bits_idx = _GEN_62[7:0];
  assign array_2_io_ecc_write_bits_way_en = _GEN_63[3:0];
  assign array_2_io_ecc_write_bits_ecc = _GEN_64[5:0];
  always @(posedge clock) begin
    io_cacheOp_resp_valid_REG <= io_cacheOp_req_valid & cacheOpShouldResp; // @[TagArray.scala 181:57]
    io_cacheOp_resp_bits_read_tag_low_REG <= io_cacheOp_req_bits_wayNum; // @[TagArray.scala 182:91]
    io_cacheOp_resp_bits_read_tag_ecc_REG <= io_cacheOp_req_bits_wayNum; // @[TagArray.scala 183:95]
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
  io_cacheOp_resp_valid_REG = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  io_cacheOp_resp_bits_read_tag_low_REG = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  io_cacheOp_resp_bits_read_tag_ecc_REG = _RAND_2[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
