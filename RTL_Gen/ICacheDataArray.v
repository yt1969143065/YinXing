module ICacheDataArray(
  input          clock,
  input          reset,
  input          io_write_valid,
  input  [7:0]   io_write_bits_virIdx,
  input  [511:0] io_write_bits_data,
  input  [3:0]   io_write_bits_waymask,
  input          io_write_bits_bankIdx,
  output         io_read_ready,
  input          io_read_valid,
  input          io_read_bits_isDoubleLine,
  input  [7:0]   io_read_bits_vSetIdx_0,
  input  [7:0]   io_read_bits_vSetIdx_1,
  output [511:0] io_readResp_datas_0_0,
  output [511:0] io_readResp_datas_0_1,
  output [511:0] io_readResp_datas_0_2,
  output [511:0] io_readResp_datas_0_3,
  output [511:0] io_readResp_datas_1_0,
  output [511:0] io_readResp_datas_1_1,
  output [511:0] io_readResp_datas_1_2,
  output [511:0] io_readResp_datas_1_3,
  output [31:0]  io_readResp_codes_0_0,
  output [31:0]  io_readResp_codes_0_1,
  output [31:0]  io_readResp_codes_0_2,
  output [31:0]  io_readResp_codes_0_3,
  output [31:0]  io_readResp_codes_1_0,
  output [31:0]  io_readResp_codes_1_1,
  output [31:0]  io_readResp_codes_1_2,
  output [31:0]  io_readResp_codes_1_3,
  input          io_cacheOp_req_valid,
  input  [63:0]  io_cacheOp_req_bits_wayNum,
  input  [63:0]  io_cacheOp_req_bits_index,
  input  [63:0]  io_cacheOp_req_bits_opCode,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_0,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_1,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_2,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_3,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_4,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_5,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_6,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_7,
  input  [63:0]  io_cacheOp_req_bits_bank_num,
  output         io_cacheOp_resp_valid,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_0,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_1,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_2,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_3,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_4,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_5,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_6,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  dataArrays_0_clock; // @[ICache.scala 320:27]
  wire  dataArrays_0_reset; // @[ICache.scala 320:27]
  wire  dataArrays_0_io_rreq_ready; // @[ICache.scala 320:27]
  wire  dataArrays_0_io_rreq_valid; // @[ICache.scala 320:27]
  wire [6:0] dataArrays_0_io_rreq_bits_setIdx; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_0_io_rresp_data_0; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_0_io_rresp_data_1; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_0_io_rresp_data_2; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_0_io_rresp_data_3; // @[ICache.scala 320:27]
  wire  dataArrays_0_io_wreq_valid; // @[ICache.scala 320:27]
  wire [6:0] dataArrays_0_io_wreq_bits_setIdx; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_0_io_wreq_bits_data_0; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_0_io_wreq_bits_data_1; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_0_io_wreq_bits_data_2; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_0_io_wreq_bits_data_3; // @[ICache.scala 320:27]
  wire [3:0] dataArrays_0_io_wreq_bits_waymask; // @[ICache.scala 320:27]
  wire  dataArrays_1_clock; // @[ICache.scala 320:27]
  wire  dataArrays_1_reset; // @[ICache.scala 320:27]
  wire  dataArrays_1_io_rreq_ready; // @[ICache.scala 320:27]
  wire  dataArrays_1_io_rreq_valid; // @[ICache.scala 320:27]
  wire [6:0] dataArrays_1_io_rreq_bits_setIdx; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_1_io_rresp_data_0; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_1_io_rresp_data_1; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_1_io_rresp_data_2; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_1_io_rresp_data_3; // @[ICache.scala 320:27]
  wire  dataArrays_1_io_wreq_valid; // @[ICache.scala 320:27]
  wire [6:0] dataArrays_1_io_wreq_bits_setIdx; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_1_io_wreq_bits_data_0; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_1_io_wreq_bits_data_1; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_1_io_wreq_bits_data_2; // @[ICache.scala 320:27]
  wire [511:0] dataArrays_1_io_wreq_bits_data_3; // @[ICache.scala 320:27]
  wire [3:0] dataArrays_1_io_wreq_bits_waymask; // @[ICache.scala 320:27]
  wire  codeArrays_0_clock; // @[ICache.scala 346:27]
  wire  codeArrays_0_reset; // @[ICache.scala 346:27]
  wire  codeArrays_0_io_rreq_ready; // @[ICache.scala 346:27]
  wire  codeArrays_0_io_rreq_valid; // @[ICache.scala 346:27]
  wire [6:0] codeArrays_0_io_rreq_bits_setIdx; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_0_io_rresp_data_0; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_0_io_rresp_data_1; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_0_io_rresp_data_2; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_0_io_rresp_data_3; // @[ICache.scala 346:27]
  wire  codeArrays_0_io_wreq_valid; // @[ICache.scala 346:27]
  wire [6:0] codeArrays_0_io_wreq_bits_setIdx; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_0_io_wreq_bits_data_0; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_0_io_wreq_bits_data_1; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_0_io_wreq_bits_data_2; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_0_io_wreq_bits_data_3; // @[ICache.scala 346:27]
  wire [3:0] codeArrays_0_io_wreq_bits_waymask; // @[ICache.scala 346:27]
  wire  codeArrays_1_clock; // @[ICache.scala 346:27]
  wire  codeArrays_1_reset; // @[ICache.scala 346:27]
  wire  codeArrays_1_io_rreq_ready; // @[ICache.scala 346:27]
  wire  codeArrays_1_io_rreq_valid; // @[ICache.scala 346:27]
  wire [6:0] codeArrays_1_io_rreq_bits_setIdx; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_1_io_rresp_data_0; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_1_io_rresp_data_1; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_1_io_rresp_data_2; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_1_io_rresp_data_3; // @[ICache.scala 346:27]
  wire  codeArrays_1_io_wreq_valid; // @[ICache.scala 346:27]
  wire [6:0] codeArrays_1_io_wreq_bits_setIdx; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_1_io_wreq_bits_data_0; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_1_io_wreq_bits_data_1; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_1_io_wreq_bits_data_2; // @[ICache.scala 346:27]
  wire [31:0] codeArrays_1_io_wreq_bits_data_3; // @[ICache.scala 346:27]
  wire [3:0] codeArrays_1_io_wreq_bits_waymask; // @[ICache.scala 346:27]
  wire  port_0_read_0 = io_read_valid & ~io_read_bits_vSetIdx_0[0]; // @[ICache.scala 301:38]
  wire  port_0_read_1 = io_read_valid & io_read_bits_vSetIdx_0[0]; // @[ICache.scala 302:38]
  wire  port_1_read_1 = io_read_valid & io_read_bits_vSetIdx_1[0] & io_read_bits_isDoubleLine; // @[ICache.scala 303:69]
  wire  port_1_read_0 = io_read_valid & ~io_read_bits_vSetIdx_1[0] & io_read_bits_isDoubleLine; // @[ICache.scala 304:69]
  wire  _port_0_read_1_reg_T = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  reg  port_0_read_1_reg; // @[Reg.scala 16:16]
  reg  port_1_read_0_reg; // @[Reg.scala 16:16]
  wire [7:0] bank_0_idx = port_0_read_0 ? io_read_bits_vSetIdx_0 : io_read_bits_vSetIdx_1; // @[ICache.scala 309:23]
  wire [7:0] bank_1_idx = port_0_read_1 ? io_read_bits_vSetIdx_0 : io_read_bits_vSetIdx_1; // @[ICache.scala 310:23]
  wire  write_bank_0 = io_write_valid & ~io_write_bits_bankIdx; // @[ICache.scala 313:46]
  wire  write_bank_1 = io_write_valid & io_write_bits_bankIdx; // @[ICache.scala 314:46]
  wire [2047:0] _T_8 = {dataArrays_0_io_rresp_data_3,dataArrays_0_io_rresp_data_2,dataArrays_0_io_rresp_data_1,
    dataArrays_0_io_rresp_data_0}; // @[ICache.scala 377:50]
  wire [511:0] read_datas_0_0 = _T_8[511:0]; // @[ICache.scala 377:50]
  wire [511:0] read_datas_0_1 = _T_8[1023:512]; // @[ICache.scala 377:50]
  wire [511:0] read_datas_0_2 = _T_8[1535:1024]; // @[ICache.scala 377:50]
  wire [511:0] read_datas_0_3 = _T_8[2047:1536]; // @[ICache.scala 377:50]
  wire [127:0] _T_13 = {codeArrays_0_io_rresp_data_3,codeArrays_0_io_rresp_data_2,codeArrays_0_io_rresp_data_1,
    codeArrays_0_io_rresp_data_0}; // @[ICache.scala 378:50]
  wire [31:0] read_codes_0_0 = _T_13[31:0]; // @[ICache.scala 378:50]
  wire [31:0] read_codes_0_1 = _T_13[63:32]; // @[ICache.scala 378:50]
  wire [31:0] read_codes_0_2 = _T_13[95:64]; // @[ICache.scala 378:50]
  wire [31:0] read_codes_0_3 = _T_13[127:96]; // @[ICache.scala 378:50]
  wire [2047:0] _T_18 = {dataArrays_1_io_rresp_data_3,dataArrays_1_io_rresp_data_2,dataArrays_1_io_rresp_data_1,
    dataArrays_1_io_rresp_data_0}; // @[ICache.scala 377:50]
  wire [511:0] read_datas_1_0 = _T_18[511:0]; // @[ICache.scala 377:50]
  wire [511:0] read_datas_1_1 = _T_18[1023:512]; // @[ICache.scala 377:50]
  wire [511:0] read_datas_1_2 = _T_18[1535:1024]; // @[ICache.scala 377:50]
  wire [511:0] read_datas_1_3 = _T_18[2047:1536]; // @[ICache.scala 377:50]
  wire [127:0] _T_23 = {codeArrays_1_io_rresp_data_3,codeArrays_1_io_rresp_data_2,codeArrays_1_io_rresp_data_1,
    codeArrays_1_io_rresp_data_0}; // @[ICache.scala 378:50]
  wire [31:0] read_codes_1_0 = _T_23[31:0]; // @[ICache.scala 378:50]
  wire [31:0] read_codes_1_1 = _T_23[63:32]; // @[ICache.scala 378:50]
  wire [31:0] read_codes_1_2 = _T_23[95:64]; // @[ICache.scala 378:50]
  wire [31:0] read_codes_1_3 = _T_23[127:96]; // @[ICache.scala 378:50]
  wire  _T_35 = io_cacheOp_req_bits_opCode == 64'h7; // @[CacheInstruction.scala 99:54]
  wire [511:0] _write_data_T = {io_cacheOp_req_bits_write_data_vec_7,io_cacheOp_req_bits_write_data_vec_6,
    io_cacheOp_req_bits_write_data_vec_5,io_cacheOp_req_bits_write_data_vec_4,io_cacheOp_req_bits_write_data_vec_3,
    io_cacheOp_req_bits_write_data_vec_2,io_cacheOp_req_bits_write_data_vec_1,io_cacheOp_req_bits_write_data_vec_0}; // @[ICache.scala 419:64]
  wire [511:0] _GEN_13 = _T_35 ? _write_data_T : io_write_bits_data; // @[ICache.scala 410:66 419:18]
  wire [511:0] write_data = io_cacheOp_req_valid ? _GEN_13 : io_write_bits_data; // @[ICache.scala 399:29]
  wire [15:0] write_data_code_unit = write_data[15:0]; // @[ICache.scala 289:28]
  wire  _write_data_code_T = ^write_data_code_unit; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_2 = {_write_data_code_T,write_data_code_unit}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_1 = write_data[31:16]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_4 = ^write_data_code_unit_1; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_6 = {_write_data_code_T_4,write_data_code_unit_1}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_2 = write_data[47:32]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_8 = ^write_data_code_unit_2; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_10 = {_write_data_code_T_8,write_data_code_unit_2}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_3 = write_data[63:48]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_12 = ^write_data_code_unit_3; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_14 = {_write_data_code_T_12,write_data_code_unit_3}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_4 = write_data[79:64]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_16 = ^write_data_code_unit_4; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_18 = {_write_data_code_T_16,write_data_code_unit_4}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_5 = write_data[95:80]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_20 = ^write_data_code_unit_5; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_22 = {_write_data_code_T_20,write_data_code_unit_5}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_6 = write_data[111:96]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_24 = ^write_data_code_unit_6; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_26 = {_write_data_code_T_24,write_data_code_unit_6}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_7 = write_data[127:112]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_28 = ^write_data_code_unit_7; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_30 = {_write_data_code_T_28,write_data_code_unit_7}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_8 = write_data[143:128]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_32 = ^write_data_code_unit_8; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_34 = {_write_data_code_T_32,write_data_code_unit_8}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_9 = write_data[159:144]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_36 = ^write_data_code_unit_9; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_38 = {_write_data_code_T_36,write_data_code_unit_9}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_10 = write_data[175:160]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_40 = ^write_data_code_unit_10; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_42 = {_write_data_code_T_40,write_data_code_unit_10}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_11 = write_data[191:176]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_44 = ^write_data_code_unit_11; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_46 = {_write_data_code_T_44,write_data_code_unit_11}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_12 = write_data[207:192]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_48 = ^write_data_code_unit_12; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_50 = {_write_data_code_T_48,write_data_code_unit_12}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_13 = write_data[223:208]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_52 = ^write_data_code_unit_13; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_54 = {_write_data_code_T_52,write_data_code_unit_13}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_14 = write_data[239:224]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_56 = ^write_data_code_unit_14; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_58 = {_write_data_code_T_56,write_data_code_unit_14}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_15 = write_data[255:240]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_60 = ^write_data_code_unit_15; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_62 = {_write_data_code_T_60,write_data_code_unit_15}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_16 = write_data[271:256]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_64 = ^write_data_code_unit_16; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_66 = {_write_data_code_T_64,write_data_code_unit_16}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_17 = write_data[287:272]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_68 = ^write_data_code_unit_17; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_70 = {_write_data_code_T_68,write_data_code_unit_17}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_18 = write_data[303:288]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_72 = ^write_data_code_unit_18; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_74 = {_write_data_code_T_72,write_data_code_unit_18}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_19 = write_data[319:304]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_76 = ^write_data_code_unit_19; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_78 = {_write_data_code_T_76,write_data_code_unit_19}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_20 = write_data[335:320]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_80 = ^write_data_code_unit_20; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_82 = {_write_data_code_T_80,write_data_code_unit_20}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_21 = write_data[351:336]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_84 = ^write_data_code_unit_21; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_86 = {_write_data_code_T_84,write_data_code_unit_21}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_22 = write_data[367:352]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_88 = ^write_data_code_unit_22; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_90 = {_write_data_code_T_88,write_data_code_unit_22}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_23 = write_data[383:368]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_92 = ^write_data_code_unit_23; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_94 = {_write_data_code_T_92,write_data_code_unit_23}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_24 = write_data[399:384]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_96 = ^write_data_code_unit_24; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_98 = {_write_data_code_T_96,write_data_code_unit_24}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_25 = write_data[415:400]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_100 = ^write_data_code_unit_25; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_102 = {_write_data_code_T_100,write_data_code_unit_25}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_26 = write_data[431:416]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_104 = ^write_data_code_unit_26; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_106 = {_write_data_code_T_104,write_data_code_unit_26}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_27 = write_data[447:432]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_108 = ^write_data_code_unit_27; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_110 = {_write_data_code_T_108,write_data_code_unit_27}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_28 = write_data[463:448]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_112 = ^write_data_code_unit_28; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_114 = {_write_data_code_T_112,write_data_code_unit_28}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_29 = write_data[479:464]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_116 = ^write_data_code_unit_29; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_118 = {_write_data_code_T_116,write_data_code_unit_29}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_30 = write_data[495:480]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_120 = ^write_data_code_unit_30; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_122 = {_write_data_code_T_120,write_data_code_unit_30}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_31 = write_data[511:496]; // @[ICache.scala 289:28]
  wire  _write_data_code_T_124 = ^write_data_code_unit_31; // @[ECC.scala 82:55]
  wire [16:0] _write_data_code_T_126 = {_write_data_code_T_124,write_data_code_unit_31}; // @[Cat.scala 31:58]
  wire [7:0] write_data_code_lo_lo = {_write_data_code_T_30[16],_write_data_code_T_26[16],_write_data_code_T_22[16],
    _write_data_code_T_18[16],_write_data_code_T_14[16],_write_data_code_T_10[16],_write_data_code_T_6[16],
    _write_data_code_T_2[16]}; // @[ICache.scala 385:50]
  wire [15:0] write_data_code_lo = {_write_data_code_T_62[16],_write_data_code_T_58[16],_write_data_code_T_54[16],
    _write_data_code_T_50[16],_write_data_code_T_46[16],_write_data_code_T_42[16],_write_data_code_T_38[16],
    _write_data_code_T_34[16],write_data_code_lo_lo}; // @[ICache.scala 385:50]
  wire [7:0] write_data_code_hi_lo = {_write_data_code_T_94[16],_write_data_code_T_90[16],_write_data_code_T_86[16],
    _write_data_code_T_82[16],_write_data_code_T_78[16],_write_data_code_T_74[16],_write_data_code_T_70[16],
    _write_data_code_T_66[16]}; // @[ICache.scala 385:50]
  wire [15:0] write_data_code_hi = {_write_data_code_T_126[16],_write_data_code_T_122[16],_write_data_code_T_118[16],
    _write_data_code_T_114[16],_write_data_code_T_110[16],_write_data_code_T_106[16],_write_data_code_T_102[16],
    _write_data_code_T_98[16],write_data_code_hi_lo}; // @[ICache.scala 385:50]
  wire  _T_32 = io_cacheOp_req_bits_opCode == 64'h3; // @[CacheInstruction.scala 95:54]
  wire  _T_33 = io_cacheOp_req_bits_opCode == 64'h1; // @[CacheInstruction.scala 93:54]
  wire  _T_34 = _T_32 | _T_33; // @[ICache.scala 401:62]
  wire  _GEN_2 = _T_34 | (port_0_read_0 | port_1_read_0); // @[ICache.scala 330:32 403:6 405:38]
  wire [63:0] _GEN_3 = _T_34 ? io_cacheOp_req_bits_index : {{57'd0}, bank_0_idx[7:1]}; // @[ICache.scala 403:6 SRAMTemplate.scala 43:{17,17}]
  wire  _GEN_4 = _T_34 | (port_0_read_1 | port_1_read_1); // @[ICache.scala 336:32 403:6 405:38]
  wire [63:0] _GEN_5 = _T_34 ? io_cacheOp_req_bits_index : {{57'd0}, bank_1_idx[7:1]}; // @[ICache.scala 403:6 SRAMTemplate.scala 43:{17,17}]
  wire [31:0] _dataArrays_0_io_wreq_bits_waymask_T_1 = 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
  wire  _GEN_7 = _T_35 ? io_cacheOp_req_bits_bank_num == 64'h0 : write_bank_0; // @[ICache.scala 332:32 410:66 412:38]
  wire [63:0] _GEN_8 = _T_35 ? io_cacheOp_req_bits_index : {{57'd0}, io_write_bits_virIdx[7:1]}; // @[ICache.scala 410:66 413:44 SRAMTemplate.scala 43:17]
  wire [31:0] _GEN_9 = _T_35 ? _dataArrays_0_io_wreq_bits_waymask_T_1 : {{28'd0}, io_write_bits_waymask}; // @[ICache.scala 410:66 415:41 SRAMTemplate.scala 55:24]
  wire  _GEN_10 = _T_35 ? io_cacheOp_req_bits_bank_num == 64'h1 : write_bank_1; // @[ICache.scala 338:32 410:66 412:38]
  wire  _GEN_14 = _T_35 | _T_34; // @[ICache.scala 410:66 420:25]
  wire [63:0] _GEN_16 = io_cacheOp_req_valid ? _GEN_3 : {{57'd0}, bank_0_idx[7:1]}; // @[ICache.scala 399:29 SRAMTemplate.scala 43:17]
  wire [63:0] _GEN_18 = io_cacheOp_req_valid ? _GEN_5 : {{57'd0}, bank_1_idx[7:1]}; // @[ICache.scala 399:29 SRAMTemplate.scala 43:17]
  wire  cacheOpShouldResp = io_cacheOp_req_valid & _GEN_14; // @[ICache.scala 399:29]
  wire [63:0] _GEN_21 = io_cacheOp_req_valid ? _GEN_8 : {{57'd0}, io_write_bits_virIdx[7:1]}; // @[ICache.scala 399:29 SRAMTemplate.scala 43:17]
  wire [31:0] _GEN_22 = io_cacheOp_req_valid ? _GEN_9 : {{28'd0}, io_write_bits_waymask}; // @[ICache.scala 399:29 SRAMTemplate.scala 55:24]
  reg  io_cacheOp_resp_valid_REG; // @[ICache.scala 423:35]
  wire [511:0] dataresp_0 = io_cacheOp_req_bits_bank_num[0] ? read_datas_1_0 : read_datas_0_0; // @[ICache.scala 424:21]
  wire [511:0] dataresp_1 = io_cacheOp_req_bits_bank_num[0] ? read_datas_1_1 : read_datas_0_1; // @[ICache.scala 424:21]
  wire [511:0] dataresp_2 = io_cacheOp_req_bits_bank_num[0] ? read_datas_1_2 : read_datas_0_2; // @[ICache.scala 424:21]
  wire [511:0] dataresp_3 = io_cacheOp_req_bits_bank_num[0] ? read_datas_1_3 : read_datas_0_3; // @[ICache.scala 424:21]
  wire [511:0] _GEN_28 = 2'h1 == io_cacheOp_req_bits_wayNum[1:0] ? dataresp_1 : dataresp_0; // @[ICache.scala 432:{96,96}]
  wire [511:0] _GEN_29 = 2'h2 == io_cacheOp_req_bits_wayNum[1:0] ? dataresp_2 : _GEN_28; // @[ICache.scala 432:{96,96}]
  wire [511:0] _GEN_30 = 2'h3 == io_cacheOp_req_bits_wayNum[1:0] ? dataresp_3 : _GEN_29; // @[ICache.scala 432:{96,96}]
  SRAMTemplate_2 dataArrays_0 ( // @[ICache.scala 320:27]
    .clock(dataArrays_0_clock),
    .reset(dataArrays_0_reset),
    .io_rreq_ready(dataArrays_0_io_rreq_ready),
    .io_rreq_valid(dataArrays_0_io_rreq_valid),
    .io_rreq_bits_setIdx(dataArrays_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(dataArrays_0_io_rresp_data_0),
    .io_rresp_data_1(dataArrays_0_io_rresp_data_1),
    .io_rresp_data_2(dataArrays_0_io_rresp_data_2),
    .io_rresp_data_3(dataArrays_0_io_rresp_data_3),
    .io_wreq_valid(dataArrays_0_io_wreq_valid),
    .io_wreq_bits_setIdx(dataArrays_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(dataArrays_0_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(dataArrays_0_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(dataArrays_0_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(dataArrays_0_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(dataArrays_0_io_wreq_bits_waymask)
  );
  SRAMTemplate_2 dataArrays_1 ( // @[ICache.scala 320:27]
    .clock(dataArrays_1_clock),
    .reset(dataArrays_1_reset),
    .io_rreq_ready(dataArrays_1_io_rreq_ready),
    .io_rreq_valid(dataArrays_1_io_rreq_valid),
    .io_rreq_bits_setIdx(dataArrays_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(dataArrays_1_io_rresp_data_0),
    .io_rresp_data_1(dataArrays_1_io_rresp_data_1),
    .io_rresp_data_2(dataArrays_1_io_rresp_data_2),
    .io_rresp_data_3(dataArrays_1_io_rresp_data_3),
    .io_wreq_valid(dataArrays_1_io_wreq_valid),
    .io_wreq_bits_setIdx(dataArrays_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(dataArrays_1_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(dataArrays_1_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(dataArrays_1_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(dataArrays_1_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(dataArrays_1_io_wreq_bits_waymask)
  );
  SRAMTemplate_4 codeArrays_0 ( // @[ICache.scala 346:27]
    .clock(codeArrays_0_clock),
    .reset(codeArrays_0_reset),
    .io_rreq_ready(codeArrays_0_io_rreq_ready),
    .io_rreq_valid(codeArrays_0_io_rreq_valid),
    .io_rreq_bits_setIdx(codeArrays_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(codeArrays_0_io_rresp_data_0),
    .io_rresp_data_1(codeArrays_0_io_rresp_data_1),
    .io_rresp_data_2(codeArrays_0_io_rresp_data_2),
    .io_rresp_data_3(codeArrays_0_io_rresp_data_3),
    .io_wreq_valid(codeArrays_0_io_wreq_valid),
    .io_wreq_bits_setIdx(codeArrays_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(codeArrays_0_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(codeArrays_0_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(codeArrays_0_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(codeArrays_0_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(codeArrays_0_io_wreq_bits_waymask)
  );
  SRAMTemplate_4 codeArrays_1 ( // @[ICache.scala 346:27]
    .clock(codeArrays_1_clock),
    .reset(codeArrays_1_reset),
    .io_rreq_ready(codeArrays_1_io_rreq_ready),
    .io_rreq_valid(codeArrays_1_io_rreq_valid),
    .io_rreq_bits_setIdx(codeArrays_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(codeArrays_1_io_rresp_data_0),
    .io_rresp_data_1(codeArrays_1_io_rresp_data_1),
    .io_rresp_data_2(codeArrays_1_io_rresp_data_2),
    .io_rresp_data_3(codeArrays_1_io_rresp_data_3),
    .io_wreq_valid(codeArrays_1_io_wreq_valid),
    .io_wreq_bits_setIdx(codeArrays_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(codeArrays_1_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(codeArrays_1_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(codeArrays_1_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(codeArrays_1_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(codeArrays_1_io_wreq_bits_waymask)
  );
  assign io_read_ready = ~io_write_valid & (dataArrays_0_io_rreq_ready & dataArrays_1_io_rreq_ready) & (
    codeArrays_0_io_rreq_ready & codeArrays_1_io_rreq_ready); // @[ICache.scala 371:87]
  assign io_readResp_datas_0_0 = port_0_read_1_reg ? read_datas_1_0 : read_datas_0_0; // @[ICache.scala 388:30]
  assign io_readResp_datas_0_1 = port_0_read_1_reg ? read_datas_1_1 : read_datas_0_1; // @[ICache.scala 388:30]
  assign io_readResp_datas_0_2 = port_0_read_1_reg ? read_datas_1_2 : read_datas_0_2; // @[ICache.scala 388:30]
  assign io_readResp_datas_0_3 = port_0_read_1_reg ? read_datas_1_3 : read_datas_0_3; // @[ICache.scala 388:30]
  assign io_readResp_datas_1_0 = port_1_read_0_reg ? read_datas_0_0 : read_datas_1_0; // @[ICache.scala 389:30]
  assign io_readResp_datas_1_1 = port_1_read_0_reg ? read_datas_0_1 : read_datas_1_1; // @[ICache.scala 389:30]
  assign io_readResp_datas_1_2 = port_1_read_0_reg ? read_datas_0_2 : read_datas_1_2; // @[ICache.scala 389:30]
  assign io_readResp_datas_1_3 = port_1_read_0_reg ? read_datas_0_3 : read_datas_1_3; // @[ICache.scala 389:30]
  assign io_readResp_codes_0_0 = port_0_read_1_reg ? read_codes_1_0 : read_codes_0_0; // @[ICache.scala 390:30]
  assign io_readResp_codes_0_1 = port_0_read_1_reg ? read_codes_1_1 : read_codes_0_1; // @[ICache.scala 390:30]
  assign io_readResp_codes_0_2 = port_0_read_1_reg ? read_codes_1_2 : read_codes_0_2; // @[ICache.scala 390:30]
  assign io_readResp_codes_0_3 = port_0_read_1_reg ? read_codes_1_3 : read_codes_0_3; // @[ICache.scala 390:30]
  assign io_readResp_codes_1_0 = port_1_read_0_reg ? read_codes_0_0 : read_codes_1_0; // @[ICache.scala 391:30]
  assign io_readResp_codes_1_1 = port_1_read_0_reg ? read_codes_0_1 : read_codes_1_1; // @[ICache.scala 391:30]
  assign io_readResp_codes_1_2 = port_1_read_0_reg ? read_codes_0_2 : read_codes_1_2; // @[ICache.scala 391:30]
  assign io_readResp_codes_1_3 = port_1_read_0_reg ? read_codes_0_3 : read_codes_1_3; // @[ICache.scala 391:30]
  assign io_cacheOp_resp_valid = io_cacheOp_resp_valid_REG; // @[ICache.scala 423:25]
  assign io_cacheOp_resp_bits_read_data_vec_0 = _GEN_30[63:0]; // @[ICache.scala 432:96]
  assign io_cacheOp_resp_bits_read_data_vec_1 = _GEN_30[127:64]; // @[ICache.scala 432:96]
  assign io_cacheOp_resp_bits_read_data_vec_2 = _GEN_30[191:128]; // @[ICache.scala 432:96]
  assign io_cacheOp_resp_bits_read_data_vec_3 = _GEN_30[255:192]; // @[ICache.scala 432:96]
  assign io_cacheOp_resp_bits_read_data_vec_4 = _GEN_30[319:256]; // @[ICache.scala 432:96]
  assign io_cacheOp_resp_bits_read_data_vec_5 = _GEN_30[383:320]; // @[ICache.scala 432:96]
  assign io_cacheOp_resp_bits_read_data_vec_6 = _GEN_30[447:384]; // @[ICache.scala 432:96]
  assign io_cacheOp_resp_bits_read_data_vec_7 = _GEN_30[511:448]; // @[ICache.scala 432:96]
  assign dataArrays_0_clock = clock;
  assign dataArrays_0_reset = reset;
  assign dataArrays_0_io_rreq_valid = io_cacheOp_req_valid ? _GEN_2 : port_0_read_0 | port_1_read_0; // @[ICache.scala 399:29 330:32]
  assign dataArrays_0_io_rreq_bits_setIdx = _GEN_16[6:0];
  assign dataArrays_0_io_wreq_valid = io_cacheOp_req_valid ? _GEN_7 : write_bank_0; // @[ICache.scala 399:29 332:32]
  assign dataArrays_0_io_wreq_bits_setIdx = _GEN_21[6:0];
  assign dataArrays_0_io_wreq_bits_data_0 = io_cacheOp_req_valid ? _GEN_13 : io_write_bits_data; // @[ICache.scala 399:29]
  assign dataArrays_0_io_wreq_bits_data_1 = io_cacheOp_req_valid ? _GEN_13 : io_write_bits_data; // @[ICache.scala 399:29]
  assign dataArrays_0_io_wreq_bits_data_2 = io_cacheOp_req_valid ? _GEN_13 : io_write_bits_data; // @[ICache.scala 399:29]
  assign dataArrays_0_io_wreq_bits_data_3 = io_cacheOp_req_valid ? _GEN_13 : io_write_bits_data; // @[ICache.scala 399:29]
  assign dataArrays_0_io_wreq_bits_waymask = _GEN_22[3:0];
  assign dataArrays_1_clock = clock;
  assign dataArrays_1_reset = reset;
  assign dataArrays_1_io_rreq_valid = io_cacheOp_req_valid ? _GEN_4 : port_0_read_1 | port_1_read_1; // @[ICache.scala 399:29 336:32]
  assign dataArrays_1_io_rreq_bits_setIdx = _GEN_18[6:0];
  assign dataArrays_1_io_wreq_valid = io_cacheOp_req_valid ? _GEN_10 : write_bank_1; // @[ICache.scala 399:29 338:32]
  assign dataArrays_1_io_wreq_bits_setIdx = _GEN_21[6:0];
  assign dataArrays_1_io_wreq_bits_data_0 = io_cacheOp_req_valid ? _GEN_13 : io_write_bits_data; // @[ICache.scala 399:29]
  assign dataArrays_1_io_wreq_bits_data_1 = io_cacheOp_req_valid ? _GEN_13 : io_write_bits_data; // @[ICache.scala 399:29]
  assign dataArrays_1_io_wreq_bits_data_2 = io_cacheOp_req_valid ? _GEN_13 : io_write_bits_data; // @[ICache.scala 399:29]
  assign dataArrays_1_io_wreq_bits_data_3 = io_cacheOp_req_valid ? _GEN_13 : io_write_bits_data; // @[ICache.scala 399:29]
  assign dataArrays_1_io_wreq_bits_waymask = _GEN_22[3:0];
  assign codeArrays_0_clock = clock;
  assign codeArrays_0_reset = reset;
  assign codeArrays_0_io_rreq_valid = port_0_read_0 | port_1_read_0; // @[ICache.scala 356:49]
  assign codeArrays_0_io_rreq_bits_setIdx = bank_0_idx[7:1]; // @[ICache.scala 357:54]
  assign codeArrays_0_io_wreq_valid = io_write_valid & ~io_write_bits_bankIdx; // @[ICache.scala 313:46]
  assign codeArrays_0_io_wreq_bits_setIdx = io_write_bits_virIdx[7:1]; // @[ICache.scala 359:86]
  assign codeArrays_0_io_wreq_bits_data_0 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 385:50]
  assign codeArrays_0_io_wreq_bits_data_1 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 385:50]
  assign codeArrays_0_io_wreq_bits_data_2 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 385:50]
  assign codeArrays_0_io_wreq_bits_data_3 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 385:50]
  assign codeArrays_0_io_wreq_bits_waymask = io_write_bits_waymask; // @[SRAMTemplate.scala 55:24]
  assign codeArrays_1_clock = clock;
  assign codeArrays_1_reset = reset;
  assign codeArrays_1_io_rreq_valid = port_0_read_1 | port_1_read_1; // @[ICache.scala 362:49]
  assign codeArrays_1_io_rreq_bits_setIdx = bank_1_idx[7:1]; // @[ICache.scala 363:54]
  assign codeArrays_1_io_wreq_valid = io_write_valid & io_write_bits_bankIdx; // @[ICache.scala 314:46]
  assign codeArrays_1_io_wreq_bits_setIdx = io_write_bits_virIdx[7:1]; // @[ICache.scala 365:86]
  assign codeArrays_1_io_wreq_bits_data_0 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 385:50]
  assign codeArrays_1_io_wreq_bits_data_1 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 385:50]
  assign codeArrays_1_io_wreq_bits_data_2 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 385:50]
  assign codeArrays_1_io_wreq_bits_data_3 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 385:50]
  assign codeArrays_1_io_wreq_bits_waymask = io_write_bits_waymask; // @[SRAMTemplate.scala 55:24]
  always @(posedge clock) begin
    if (_port_0_read_1_reg_T) begin // @[Reg.scala 17:18]
      port_0_read_1_reg <= port_0_read_1; // @[Reg.scala 17:22]
    end
    if (_port_0_read_1_reg_T) begin // @[Reg.scala 17:18]
      port_1_read_0_reg <= port_1_read_0; // @[Reg.scala 17:22]
    end
    io_cacheOp_resp_valid_REG <= io_cacheOp_req_valid & cacheOpShouldResp; // @[ICache.scala 423:57]
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
  port_0_read_1_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  port_1_read_0_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_cacheOp_resp_valid_REG = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
