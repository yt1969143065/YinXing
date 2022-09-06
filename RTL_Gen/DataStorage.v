module DataStorage(
  input          clock,
  input          reset,
  output         io_sourceC_raddr_ready,
  input          io_sourceC_raddr_valid,
  input  [2:0]   io_sourceC_raddr_bits_way,
  input  [7:0]   io_sourceC_raddr_bits_set,
  input          io_sourceC_raddr_bits_beat,
  output [255:0] io_sourceC_rdata_data,
  output         io_sourceC_rdata_corrupt,
  output         io_sinkD_waddr_ready,
  input          io_sinkD_waddr_valid,
  input  [2:0]   io_sinkD_waddr_bits_way,
  input  [7:0]   io_sinkD_waddr_bits_set,
  input          io_sinkD_waddr_bits_beat,
  input          io_sinkD_waddr_bits_noop,
  input  [255:0] io_sinkD_wdata_data,
  output         io_sourceD_raddr_ready,
  input          io_sourceD_raddr_valid,
  input  [2:0]   io_sourceD_raddr_bits_way,
  input  [7:0]   io_sourceD_raddr_bits_set,
  input          io_sourceD_raddr_bits_beat,
  output [255:0] io_sourceD_rdata_data,
  output         io_sourceD_rdata_corrupt,
  output         io_sourceD_waddr_ready,
  input          io_sourceD_waddr_valid,
  input  [2:0]   io_sourceD_waddr_bits_way,
  input  [7:0]   io_sourceD_waddr_bits_set,
  input          io_sourceD_waddr_bits_beat,
  input  [255:0] io_sourceD_wdata_data,
  output         io_sinkC_waddr_ready,
  input          io_sinkC_waddr_valid,
  input  [2:0]   io_sinkC_waddr_bits_way,
  input  [7:0]   io_sinkC_waddr_bits_set,
  input          io_sinkC_waddr_bits_beat,
  input          io_sinkC_waddr_bits_noop,
  input  [255:0] io_sinkC_wdata_data,
  output         io_ecc_valid,
  output [63:0]  io_ecc_bits_addr
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
`endif // RANDOMIZE_REG_INIT
  wire  bankedData_0_clock; // @[DataStorage.scala 64:11]
  wire  bankedData_0_reset; // @[DataStorage.scala 64:11]
  wire  bankedData_0_io_rreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_0_io_rreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_0_io_rresp_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_0_io_wreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_0_io_wreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_0_io_wreq_bits_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_1_clock; // @[DataStorage.scala 64:11]
  wire  bankedData_1_reset; // @[DataStorage.scala 64:11]
  wire  bankedData_1_io_rreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_1_io_rreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_1_io_rresp_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_1_io_wreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_1_io_wreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_1_io_wreq_bits_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_2_clock; // @[DataStorage.scala 64:11]
  wire  bankedData_2_reset; // @[DataStorage.scala 64:11]
  wire  bankedData_2_io_rreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_2_io_rreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_2_io_rresp_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_2_io_wreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_2_io_wreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_2_io_wreq_bits_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_3_clock; // @[DataStorage.scala 64:11]
  wire  bankedData_3_reset; // @[DataStorage.scala 64:11]
  wire  bankedData_3_io_rreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_3_io_rreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_3_io_rresp_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_3_io_wreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_3_io_wreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_3_io_wreq_bits_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_4_clock; // @[DataStorage.scala 64:11]
  wire  bankedData_4_reset; // @[DataStorage.scala 64:11]
  wire  bankedData_4_io_rreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_4_io_rreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_4_io_rresp_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_4_io_wreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_4_io_wreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_4_io_wreq_bits_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_5_clock; // @[DataStorage.scala 64:11]
  wire  bankedData_5_reset; // @[DataStorage.scala 64:11]
  wire  bankedData_5_io_rreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_5_io_rreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_5_io_rresp_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_5_io_wreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_5_io_wreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_5_io_wreq_bits_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_6_clock; // @[DataStorage.scala 64:11]
  wire  bankedData_6_reset; // @[DataStorage.scala 64:11]
  wire  bankedData_6_io_rreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_6_io_rreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_6_io_rresp_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_6_io_wreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_6_io_wreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_6_io_wreq_bits_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_7_clock; // @[DataStorage.scala 64:11]
  wire  bankedData_7_reset; // @[DataStorage.scala 64:11]
  wire  bankedData_7_io_rreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_7_io_rreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_7_io_rresp_data_0; // @[DataStorage.scala 64:11]
  wire  bankedData_7_io_wreq_valid; // @[DataStorage.scala 64:11]
  wire [10:0] bankedData_7_io_wreq_bits_setIdx; // @[DataStorage.scala 64:11]
  wire [63:0] bankedData_7_io_wreq_bits_data_0; // @[DataStorage.scala 64:11]
  wire  dataEccArray_0_clock; // @[DataStorage.scala 75:13]
  wire  dataEccArray_0_reset; // @[DataStorage.scala 75:13]
  wire  dataEccArray_0_io_rreq_valid; // @[DataStorage.scala 75:13]
  wire [10:0] dataEccArray_0_io_rreq_bits_setIdx; // @[DataStorage.scala 75:13]
  wire [31:0] dataEccArray_0_io_rresp_data_0; // @[DataStorage.scala 75:13]
  wire  dataEccArray_0_io_wreq_valid; // @[DataStorage.scala 75:13]
  wire [10:0] dataEccArray_0_io_wreq_bits_setIdx; // @[DataStorage.scala 75:13]
  wire [31:0] dataEccArray_0_io_wreq_bits_data_0; // @[DataStorage.scala 75:13]
  wire  dataEccArray_1_clock; // @[DataStorage.scala 75:13]
  wire  dataEccArray_1_reset; // @[DataStorage.scala 75:13]
  wire  dataEccArray_1_io_rreq_valid; // @[DataStorage.scala 75:13]
  wire [10:0] dataEccArray_1_io_rreq_bits_setIdx; // @[DataStorage.scala 75:13]
  wire [31:0] dataEccArray_1_io_rresp_data_0; // @[DataStorage.scala 75:13]
  wire  dataEccArray_1_io_wreq_valid; // @[DataStorage.scala 75:13]
  wire [10:0] dataEccArray_1_io_wreq_bits_setIdx; // @[DataStorage.scala 75:13]
  wire [31:0] dataEccArray_1_io_wreq_bits_data_0; // @[DataStorage.scala 75:13]
  wire  DataSel_clock; // @[DataStorage.scala 218:11]
  wire  DataSel_reset; // @[DataStorage.scala 218:11]
  wire  DataSel_io_err_in_0; // @[DataStorage.scala 218:11]
  wire  DataSel_io_err_in_1; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_io_in_0; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_io_in_1; // @[DataStorage.scala 218:11]
  wire [1:0] DataSel_io_sel_0; // @[DataStorage.scala 218:11]
  wire [1:0] DataSel_io_sel_1; // @[DataStorage.scala 218:11]
  wire  DataSel_io_en_0; // @[DataStorage.scala 218:11]
  wire  DataSel_io_en_1; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_io_out_0; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_io_out_1; // @[DataStorage.scala 218:11]
  wire  DataSel_io_err_out_0; // @[DataStorage.scala 218:11]
  wire  DataSel_io_err_out_1; // @[DataStorage.scala 218:11]
  wire  DataSel_1_clock; // @[DataStorage.scala 218:11]
  wire  DataSel_1_reset; // @[DataStorage.scala 218:11]
  wire  DataSel_1_io_err_in_0; // @[DataStorage.scala 218:11]
  wire  DataSel_1_io_err_in_1; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_1_io_in_0; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_1_io_in_1; // @[DataStorage.scala 218:11]
  wire [1:0] DataSel_1_io_sel_0; // @[DataStorage.scala 218:11]
  wire [1:0] DataSel_1_io_sel_1; // @[DataStorage.scala 218:11]
  wire  DataSel_1_io_en_0; // @[DataStorage.scala 218:11]
  wire  DataSel_1_io_en_1; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_1_io_out_0; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_1_io_out_1; // @[DataStorage.scala 218:11]
  wire  DataSel_1_io_err_out_0; // @[DataStorage.scala 218:11]
  wire  DataSel_1_io_err_out_1; // @[DataStorage.scala 218:11]
  wire  DataSel_2_clock; // @[DataStorage.scala 218:11]
  wire  DataSel_2_reset; // @[DataStorage.scala 218:11]
  wire  DataSel_2_io_err_in_0; // @[DataStorage.scala 218:11]
  wire  DataSel_2_io_err_in_1; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_2_io_in_0; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_2_io_in_1; // @[DataStorage.scala 218:11]
  wire [1:0] DataSel_2_io_sel_0; // @[DataStorage.scala 218:11]
  wire [1:0] DataSel_2_io_sel_1; // @[DataStorage.scala 218:11]
  wire  DataSel_2_io_en_0; // @[DataStorage.scala 218:11]
  wire  DataSel_2_io_en_1; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_2_io_out_0; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_2_io_out_1; // @[DataStorage.scala 218:11]
  wire  DataSel_2_io_err_out_0; // @[DataStorage.scala 218:11]
  wire  DataSel_2_io_err_out_1; // @[DataStorage.scala 218:11]
  wire  DataSel_3_clock; // @[DataStorage.scala 218:11]
  wire  DataSel_3_reset; // @[DataStorage.scala 218:11]
  wire  DataSel_3_io_err_in_0; // @[DataStorage.scala 218:11]
  wire  DataSel_3_io_err_in_1; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_3_io_in_0; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_3_io_in_1; // @[DataStorage.scala 218:11]
  wire [1:0] DataSel_3_io_sel_0; // @[DataStorage.scala 218:11]
  wire [1:0] DataSel_3_io_sel_1; // @[DataStorage.scala 218:11]
  wire  DataSel_3_io_en_0; // @[DataStorage.scala 218:11]
  wire  DataSel_3_io_en_1; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_3_io_out_0; // @[DataStorage.scala 218:11]
  wire [63:0] DataSel_3_io_out_1; // @[DataStorage.scala 218:11]
  wire  DataSel_3_io_err_out_0; // @[DataStorage.scala 218:11]
  wire  DataSel_3_io_err_out_1; // @[DataStorage.scala 218:11]
  wire [11:0] sourceC_req_innerAddr = {io_sourceC_raddr_bits_way,io_sourceC_raddr_bits_set,io_sourceC_raddr_bits_beat}; // @[Cat.scala 31:58]
  wire [10:0] sourceC_req_innerIndex = sourceC_req_innerAddr[11:1]; // @[DataStorage.scala 107:32]
  wire  sourceC_req_stackIdx = sourceC_req_innerAddr[0]; // @[DataStorage.scala 108:29]
  wire [1:0] sourceC_req_stackSel_shiftAmount = {{1'd0}, sourceC_req_stackIdx}; // @[OneHot.scala 63:31]
  wire [3:0] sourceC_req_stackSel = 4'h1 << sourceC_req_stackSel_shiftAmount; // @[OneHot.scala 64:12]
  wire [1:0] _sourceC_req_io_sourceC_raddr_ready_T = 2'h3 >> sourceC_req_stackIdx; // @[DataStorage.scala 119:28]
  wire [3:0] _sourceC_req_out_bankSel_T_5 = sourceC_req_stackSel[0] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sourceC_req_out_bankSel_T_7 = sourceC_req_stackSel[1] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sourceC_req_out_bankSel_T_9 = sourceC_req_stackSel[2] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sourceC_req_out_bankSel_T_11 = sourceC_req_stackSel[3] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [15:0] _sourceC_req_out_bankSel_T_12 = {_sourceC_req_out_bankSel_T_11,_sourceC_req_out_bankSel_T_9,
    _sourceC_req_out_bankSel_T_7,_sourceC_req_out_bankSel_T_5}; // @[Cat.scala 31:58]
  wire [15:0] _sourceC_req_out_bankSel_T_13 = io_sourceC_raddr_valid ? _sourceC_req_out_bankSel_T_12 : 16'h0; // @[DataStorage.scala 124:23]
  wire [7:0] reqs_0_bankSel = _sourceC_req_out_bankSel_T_13[7:0]; // @[DataStorage.scala 111:19 124:17]
  wire [511:0] _sourceC_req_T = {io_sourceC_rdata_data,io_sourceC_rdata_data}; // @[Cat.scala 31:58]
  wire [63:0] reqs_0_data_0 = _sourceC_req_T[63:0]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_0_data_1 = _sourceC_req_T[127:64]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_0_data_2 = _sourceC_req_T[191:128]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_0_data_3 = _sourceC_req_T[255:192]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_0_data_4 = _sourceC_req_T[319:256]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_0_data_5 = _sourceC_req_T[383:320]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_0_data_6 = _sourceC_req_T[447:384]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_0_data_7 = _sourceC_req_T[511:448]; // @[DataStorage.scala 129:60]
  wire [11:0] sourceD_rreq_innerAddr = {io_sourceD_raddr_bits_way,io_sourceD_raddr_bits_set,io_sourceD_raddr_bits_beat}; // @[Cat.scala 31:58]
  wire [10:0] sourceD_rreq_innerIndex = sourceD_rreq_innerAddr[11:1]; // @[DataStorage.scala 107:32]
  wire  sourceD_rreq_stackIdx = sourceD_rreq_innerAddr[0]; // @[DataStorage.scala 108:29]
  wire [1:0] sourceD_rreq_stackSel_shiftAmount = {{1'd0}, sourceD_rreq_stackIdx}; // @[OneHot.scala 63:31]
  wire [3:0] sourceD_rreq_stackSel = 4'h1 << sourceD_rreq_stackSel_shiftAmount; // @[OneHot.scala 64:12]
  wire [11:0] sourceD_wreq_innerAddr = {io_sourceD_waddr_bits_way,io_sourceD_waddr_bits_set,io_sourceD_waddr_bits_beat}; // @[Cat.scala 31:58]
  wire  sourceD_wreq_stackIdx = sourceD_wreq_innerAddr[0]; // @[DataStorage.scala 108:29]
  wire [1:0] sourceD_wreq_stackSel_shiftAmount = {{1'd0}, sourceD_wreq_stackIdx}; // @[OneHot.scala 63:31]
  wire [3:0] sourceD_wreq_stackSel = 4'h1 << sourceD_wreq_stackSel_shiftAmount; // @[OneHot.scala 64:12]
  wire [3:0] _sourceD_wreq_out_bankSel_T_11 = sourceD_wreq_stackSel[3] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sourceD_wreq_out_bankSel_T_9 = sourceD_wreq_stackSel[2] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sourceD_wreq_out_bankSel_T_7 = sourceD_wreq_stackSel[1] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sourceD_wreq_out_bankSel_T_5 = sourceD_wreq_stackSel[0] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [15:0] _sourceD_wreq_out_bankSel_T_12 = {_sourceD_wreq_out_bankSel_T_11,_sourceD_wreq_out_bankSel_T_9,
    _sourceD_wreq_out_bankSel_T_7,_sourceD_wreq_out_bankSel_T_5}; // @[Cat.scala 31:58]
  wire [15:0] _sourceD_wreq_out_bankSel_T_13 = io_sourceD_waddr_valid ? _sourceD_wreq_out_bankSel_T_12 : 16'h0; // @[DataStorage.scala 124:23]
  wire [7:0] reqs_3_bankSel = _sourceD_wreq_out_bankSel_T_13[7:0]; // @[DataStorage.scala 111:19 124:17]
  wire [11:0] sinkD_wreq_innerAddr = {io_sinkD_waddr_bits_way,io_sinkD_waddr_bits_set,io_sinkD_waddr_bits_beat}; // @[Cat.scala 31:58]
  wire  sinkD_wreq_stackIdx = sinkD_wreq_innerAddr[0]; // @[DataStorage.scala 108:29]
  wire [1:0] sinkD_wreq_stackSel_shiftAmount = {{1'd0}, sinkD_wreq_stackIdx}; // @[OneHot.scala 63:31]
  wire [3:0] sinkD_wreq_stackSel = 4'h1 << sinkD_wreq_stackSel_shiftAmount; // @[OneHot.scala 64:12]
  wire [3:0] _sinkD_wreq_out_bankSel_T_11 = sinkD_wreq_stackSel[3] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sinkD_wreq_out_bankSel_T_9 = sinkD_wreq_stackSel[2] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sinkD_wreq_out_bankSel_T_7 = sinkD_wreq_stackSel[1] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sinkD_wreq_out_bankSel_T_5 = sinkD_wreq_stackSel[0] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [15:0] _sinkD_wreq_out_bankSel_T_12 = {_sinkD_wreq_out_bankSel_T_11,_sinkD_wreq_out_bankSel_T_9,
    _sinkD_wreq_out_bankSel_T_7,_sinkD_wreq_out_bankSel_T_5}; // @[Cat.scala 31:58]
  wire [15:0] _sinkD_wreq_out_bankSel_T_13 = io_sinkD_waddr_valid ? _sinkD_wreq_out_bankSel_T_12 : 16'h0; // @[DataStorage.scala 124:23]
  wire [7:0] reqs_2_bankSel = _sinkD_wreq_out_bankSel_T_13[7:0]; // @[DataStorage.scala 111:19 124:17]
  wire [11:0] sinkC_req_innerAddr = {io_sinkC_waddr_bits_way,io_sinkC_waddr_bits_set,io_sinkC_waddr_bits_beat}; // @[Cat.scala 31:58]
  wire  sinkC_req_stackIdx = sinkC_req_innerAddr[0]; // @[DataStorage.scala 108:29]
  wire [1:0] sinkC_req_stackSel_shiftAmount = {{1'd0}, sinkC_req_stackIdx}; // @[OneHot.scala 63:31]
  wire [3:0] sinkC_req_stackSel = 4'h1 << sinkC_req_stackSel_shiftAmount; // @[OneHot.scala 64:12]
  wire [3:0] _sinkC_req_out_bankSel_T_11 = sinkC_req_stackSel[3] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sinkC_req_out_bankSel_T_9 = sinkC_req_stackSel[2] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sinkC_req_out_bankSel_T_7 = sinkC_req_stackSel[1] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sinkC_req_out_bankSel_T_5 = sinkC_req_stackSel[0] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [15:0] _sinkC_req_out_bankSel_T_12 = {_sinkC_req_out_bankSel_T_11,_sinkC_req_out_bankSel_T_9,
    _sinkC_req_out_bankSel_T_7,_sinkC_req_out_bankSel_T_5}; // @[Cat.scala 31:58]
  wire [15:0] _sinkC_req_out_bankSel_T_13 = io_sinkC_waddr_valid ? _sinkC_req_out_bankSel_T_12 : 16'h0; // @[DataStorage.scala 124:23]
  wire [7:0] reqs_1_bankSel = _sinkC_req_out_bankSel_T_13[7:0]; // @[DataStorage.scala 111:19 124:17]
  wire [7:0] reqs_2_bankSum = reqs_1_bankSel | reqs_0_bankSel; // @[DataStorage.scala 151:19]
  wire [7:0] reqs_3_bankSum = reqs_2_bankSel | reqs_2_bankSum; // @[DataStorage.scala 151:19]
  wire [7:0] reqs_4_bankSum = reqs_3_bankSel | reqs_3_bankSum; // @[DataStorage.scala 151:19]
  wire  _sourceD_rreq_accessVec_T_2 = ~(|reqs_4_bankSum[3:0]); // @[DataStorage.scala 115:11]
  wire  _sourceD_rreq_accessVec_T_5 = ~(|reqs_4_bankSum[7:4]); // @[DataStorage.scala 115:11]
  wire [1:0] sourceD_rreq_accessVec = {_sourceD_rreq_accessVec_T_5,_sourceD_rreq_accessVec_T_2}; // @[Cat.scala 31:58]
  wire [1:0] _sourceD_rreq_io_sourceD_raddr_ready_T = sourceD_rreq_accessVec >> sourceD_rreq_stackIdx; // @[DataStorage.scala 119:28]
  wire [3:0] _sourceD_rreq_out_bankSel_T_5 = sourceD_rreq_stackSel[0] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sourceD_rreq_out_bankSel_T_7 = sourceD_rreq_stackSel[1] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sourceD_rreq_out_bankSel_T_9 = sourceD_rreq_stackSel[2] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sourceD_rreq_out_bankSel_T_11 = sourceD_rreq_stackSel[3] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [15:0] _sourceD_rreq_out_bankSel_T_12 = {_sourceD_rreq_out_bankSel_T_11,_sourceD_rreq_out_bankSel_T_9,
    _sourceD_rreq_out_bankSel_T_7,_sourceD_rreq_out_bankSel_T_5}; // @[Cat.scala 31:58]
  wire [15:0] _sourceD_rreq_out_bankSel_T_13 = io_sourceD_raddr_valid ? _sourceD_rreq_out_bankSel_T_12 : 16'h0; // @[DataStorage.scala 124:23]
  wire [3:0] _sourceD_rreq_out_bankEn_T_5 = sourceD_rreq_accessVec[0] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sourceD_rreq_out_bankEn_T_7 = sourceD_rreq_accessVec[1] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _sourceD_rreq_out_bankEn_T_8 = {_sourceD_rreq_out_bankEn_T_7,_sourceD_rreq_out_bankEn_T_5}; // @[Cat.scala 31:58]
  wire [7:0] reqs_4_bankSel = _sourceD_rreq_out_bankSel_T_13[7:0]; // @[DataStorage.scala 111:19 124:17]
  wire [7:0] reqs_4_bankEn = reqs_4_bankSel & _sourceD_rreq_out_bankEn_T_8; // @[DataStorage.scala 127:19]
  wire [511:0] _sourceD_rreq_T = {io_sourceD_rdata_data,io_sourceD_rdata_data}; // @[Cat.scala 31:58]
  wire [63:0] reqs_4_data_0 = _sourceD_rreq_T[63:0]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_4_data_1 = _sourceD_rreq_T[127:64]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_4_data_2 = _sourceD_rreq_T[191:128]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_4_data_3 = _sourceD_rreq_T[255:192]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_4_data_4 = _sourceD_rreq_T[319:256]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_4_data_5 = _sourceD_rreq_T[383:320]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_4_data_6 = _sourceD_rreq_T[447:384]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_4_data_7 = _sourceD_rreq_T[511:448]; // @[DataStorage.scala 129:60]
  wire [10:0] sourceD_wreq_innerIndex = sourceD_wreq_innerAddr[11:1]; // @[DataStorage.scala 107:32]
  wire  _sourceD_wreq_accessVec_T_2 = ~(|reqs_3_bankSum[3:0]); // @[DataStorage.scala 115:11]
  wire  _sourceD_wreq_accessVec_T_5 = ~(|reqs_3_bankSum[7:4]); // @[DataStorage.scala 115:11]
  wire [1:0] sourceD_wreq_accessVec = {_sourceD_wreq_accessVec_T_5,_sourceD_wreq_accessVec_T_2}; // @[Cat.scala 31:58]
  wire [1:0] _sourceD_wreq_io_sourceD_waddr_ready_T = sourceD_wreq_accessVec >> sourceD_wreq_stackIdx; // @[DataStorage.scala 119:28]
  wire [3:0] _sourceD_wreq_out_bankEn_T_5 = sourceD_wreq_accessVec[0] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sourceD_wreq_out_bankEn_T_7 = sourceD_wreq_accessVec[1] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _sourceD_wreq_out_bankEn_T_8 = {_sourceD_wreq_out_bankEn_T_7,_sourceD_wreq_out_bankEn_T_5}; // @[Cat.scala 31:58]
  wire [7:0] reqs_3_bankEn = reqs_3_bankSel & _sourceD_wreq_out_bankEn_T_8; // @[DataStorage.scala 127:19]
  wire [511:0] _sourceD_wreq_T = {io_sourceD_wdata_data,io_sourceD_wdata_data}; // @[Cat.scala 31:58]
  wire [63:0] reqs_3_data_0 = _sourceD_wreq_T[63:0]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_3_data_1 = _sourceD_wreq_T[127:64]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_3_data_2 = _sourceD_wreq_T[191:128]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_3_data_3 = _sourceD_wreq_T[255:192]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_3_data_4 = _sourceD_wreq_T[319:256]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_3_data_5 = _sourceD_wreq_T[383:320]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_3_data_6 = _sourceD_wreq_T[447:384]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_3_data_7 = _sourceD_wreq_T[511:448]; // @[DataStorage.scala 129:60]
  wire [10:0] sinkD_wreq_innerIndex = sinkD_wreq_innerAddr[11:1]; // @[DataStorage.scala 107:32]
  wire  _sinkD_wreq_accessVec_T_2 = ~(|reqs_2_bankSum[3:0]); // @[DataStorage.scala 115:11]
  wire  _sinkD_wreq_accessVec_T_5 = ~(|reqs_2_bankSum[7:4]); // @[DataStorage.scala 115:11]
  wire [1:0] sinkD_wreq_accessVec = {_sinkD_wreq_accessVec_T_5,_sinkD_wreq_accessVec_T_2}; // @[Cat.scala 31:58]
  wire [1:0] _sinkD_wreq_io_sinkD_waddr_ready_T = sinkD_wreq_accessVec >> sinkD_wreq_stackIdx; // @[DataStorage.scala 119:28]
  wire [3:0] _sinkD_wreq_out_bankEn_T_5 = sinkD_wreq_accessVec[0] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sinkD_wreq_out_bankEn_T_7 = sinkD_wreq_accessVec[1] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _sinkD_wreq_out_bankEn_T_8 = {_sinkD_wreq_out_bankEn_T_7,_sinkD_wreq_out_bankEn_T_5}; // @[Cat.scala 31:58]
  wire [7:0] _sinkD_wreq_out_bankEn_T_9 = reqs_2_bankSel & _sinkD_wreq_out_bankEn_T_8; // @[DataStorage.scala 127:19]
  wire [7:0] reqs_2_bankEn = io_sinkD_waddr_bits_noop ? 8'h0 : _sinkD_wreq_out_bankEn_T_9; // @[DataStorage.scala 125:22]
  wire [511:0] _sinkD_wreq_T = {io_sinkD_wdata_data,io_sinkD_wdata_data}; // @[Cat.scala 31:58]
  wire [63:0] reqs_2_data_0 = _sinkD_wreq_T[63:0]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_2_data_1 = _sinkD_wreq_T[127:64]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_2_data_2 = _sinkD_wreq_T[191:128]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_2_data_3 = _sinkD_wreq_T[255:192]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_2_data_4 = _sinkD_wreq_T[319:256]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_2_data_5 = _sinkD_wreq_T[383:320]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_2_data_6 = _sinkD_wreq_T[447:384]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_2_data_7 = _sinkD_wreq_T[511:448]; // @[DataStorage.scala 129:60]
  wire [10:0] sinkC_req_innerIndex = sinkC_req_innerAddr[11:1]; // @[DataStorage.scala 107:32]
  wire  _sinkC_req_accessVec_T_2 = ~(|reqs_0_bankSel[3:0]); // @[DataStorage.scala 115:11]
  wire  _sinkC_req_accessVec_T_5 = ~(|reqs_0_bankSel[7:4]); // @[DataStorage.scala 115:11]
  wire [1:0] sinkC_req_accessVec = {_sinkC_req_accessVec_T_5,_sinkC_req_accessVec_T_2}; // @[Cat.scala 31:58]
  wire [1:0] _sinkC_req_io_sinkC_waddr_ready_T = sinkC_req_accessVec >> sinkC_req_stackIdx; // @[DataStorage.scala 119:28]
  wire [3:0] _sinkC_req_out_bankEn_T_5 = sinkC_req_accessVec[0] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _sinkC_req_out_bankEn_T_7 = sinkC_req_accessVec[1] ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _sinkC_req_out_bankEn_T_8 = {_sinkC_req_out_bankEn_T_7,_sinkC_req_out_bankEn_T_5}; // @[Cat.scala 31:58]
  wire [7:0] _sinkC_req_out_bankEn_T_9 = reqs_1_bankSel & _sinkC_req_out_bankEn_T_8; // @[DataStorage.scala 127:19]
  wire [7:0] reqs_1_bankEn = io_sinkC_waddr_bits_noop ? 8'h0 : _sinkC_req_out_bankEn_T_9; // @[DataStorage.scala 125:22]
  wire [511:0] _sinkC_req_T = {io_sinkC_wdata_data,io_sinkC_wdata_data}; // @[Cat.scala 31:58]
  wire [63:0] reqs_1_data_0 = _sinkC_req_T[63:0]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_1_data_1 = _sinkC_req_T[127:64]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_1_data_2 = _sinkC_req_T[191:128]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_1_data_3 = _sinkC_req_T[255:192]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_1_data_4 = _sinkC_req_T[319:256]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_1_data_5 = _sinkC_req_T[383:320]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_1_data_6 = _sinkC_req_T[447:384]; // @[DataStorage.scala 129:60]
  wire [63:0] reqs_1_data_7 = _sinkC_req_T[511:448]; // @[DataStorage.scala 129:60]
  wire  en = reqs_0_bankSel[0] | reqs_1_bankEn[0] | reqs_2_bankEn[0] | reqs_3_bankEn[0] | reqs_4_bankEn[0]; // @[DataStorage.scala 171:45]
  wire [511:0] reqs_3_index = {{501'd0}, sourceD_wreq_innerIndex}; // @[DataStorage.scala 111:19 122:15]
  wire [511:0] reqs_4_index = {{501'd0}, sourceD_rreq_innerIndex}; // @[DataStorage.scala 111:19 122:15]
  wire [511:0] _selectedReq_T_5_index = reqs_3_bankSel[0] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_5_bankSel = reqs_3_bankSel[0] ? reqs_3_bankSel : reqs_4_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_5_bankSum = reqs_3_bankSel[0] ? reqs_3_bankSum : reqs_4_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_5_bankEn = reqs_3_bankSel[0] ? reqs_3_bankEn : reqs_4_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_5_data_0 = reqs_3_bankSel[0] ? reqs_3_data_0 : reqs_4_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_5_data_1 = reqs_3_bankSel[0] ? reqs_3_data_1 : reqs_4_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_5_data_2 = reqs_3_bankSel[0] ? reqs_3_data_2 : reqs_4_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_5_data_3 = reqs_3_bankSel[0] ? reqs_3_data_3 : reqs_4_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_5_data_4 = reqs_3_bankSel[0] ? reqs_3_data_4 : reqs_4_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_5_data_5 = reqs_3_bankSel[0] ? reqs_3_data_5 : reqs_4_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_5_data_6 = reqs_3_bankSel[0] ? reqs_3_data_6 : reqs_4_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_5_data_7 = reqs_3_bankSel[0] ? reqs_3_data_7 : reqs_4_data_7; // @[Mux.scala 47:70]
  wire [511:0] reqs_2_index = {{501'd0}, sinkD_wreq_innerIndex}; // @[DataStorage.scala 111:19 122:15]
  wire [511:0] _selectedReq_T_6_index = reqs_2_bankSel[0] ? reqs_2_index : _selectedReq_T_5_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_6_bankSel = reqs_2_bankSel[0] ? reqs_2_bankSel : _selectedReq_T_5_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_6_bankSum = reqs_2_bankSel[0] ? reqs_2_bankSum : _selectedReq_T_5_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_6_bankEn = reqs_2_bankSel[0] ? reqs_2_bankEn : _selectedReq_T_5_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_6_data_0 = reqs_2_bankSel[0] ? reqs_2_data_0 : _selectedReq_T_5_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_6_data_1 = reqs_2_bankSel[0] ? reqs_2_data_1 : _selectedReq_T_5_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_6_data_2 = reqs_2_bankSel[0] ? reqs_2_data_2 : _selectedReq_T_5_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_6_data_3 = reqs_2_bankSel[0] ? reqs_2_data_3 : _selectedReq_T_5_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_6_data_4 = reqs_2_bankSel[0] ? reqs_2_data_4 : _selectedReq_T_5_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_6_data_5 = reqs_2_bankSel[0] ? reqs_2_data_5 : _selectedReq_T_5_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_6_data_6 = reqs_2_bankSel[0] ? reqs_2_data_6 : _selectedReq_T_5_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_6_data_7 = reqs_2_bankSel[0] ? reqs_2_data_7 : _selectedReq_T_5_data_7; // @[Mux.scala 47:70]
  wire [511:0] reqs_1_index = {{501'd0}, sinkC_req_innerIndex}; // @[DataStorage.scala 111:19 122:15]
  wire [511:0] _selectedReq_T_7_index = reqs_1_bankSel[0] ? reqs_1_index : _selectedReq_T_6_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_7_bankSel = reqs_1_bankSel[0] ? reqs_1_bankSel : _selectedReq_T_6_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_7_bankSum = reqs_1_bankSel[0] ? reqs_0_bankSel : _selectedReq_T_6_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_7_bankEn = reqs_1_bankSel[0] ? reqs_1_bankEn : _selectedReq_T_6_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_7_data_0 = reqs_1_bankSel[0] ? reqs_1_data_0 : _selectedReq_T_6_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_7_data_1 = reqs_1_bankSel[0] ? reqs_1_data_1 : _selectedReq_T_6_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_7_data_2 = reqs_1_bankSel[0] ? reqs_1_data_2 : _selectedReq_T_6_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_7_data_3 = reqs_1_bankSel[0] ? reqs_1_data_3 : _selectedReq_T_6_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_7_data_4 = reqs_1_bankSel[0] ? reqs_1_data_4 : _selectedReq_T_6_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_7_data_5 = reqs_1_bankSel[0] ? reqs_1_data_5 : _selectedReq_T_6_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_7_data_6 = reqs_1_bankSel[0] ? reqs_1_data_6 : _selectedReq_T_6_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_7_data_7 = reqs_1_bankSel[0] ? reqs_1_data_7 : _selectedReq_T_6_data_7; // @[Mux.scala 47:70]
  wire  selectedReq_wen = reqs_0_bankSel[0] ? 1'h0 : reqs_1_bankSel[0] | (reqs_2_bankSel[0] | reqs_3_bankSel[0]); // @[Mux.scala 47:70]
  wire [511:0] reqs_0_index = {{501'd0}, sourceC_req_innerIndex}; // @[DataStorage.scala 111:19 122:15]
  wire [511:0] selectedReq_index = reqs_0_bankSel[0] ? reqs_0_index : _selectedReq_T_7_index; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_bankSel = reqs_0_bankSel[0] ? reqs_0_bankSel : _selectedReq_T_7_bankSel; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_bankSum = reqs_0_bankSel[0] ? 8'h0 : _selectedReq_T_7_bankSum; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_bankEn = reqs_0_bankSel[0] ? reqs_0_bankSel : _selectedReq_T_7_bankEn; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_data_0 = reqs_0_bankSel[0] ? reqs_0_data_0 : _selectedReq_T_7_data_0; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_data_1 = reqs_0_bankSel[0] ? reqs_0_data_1 : _selectedReq_T_7_data_1; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_data_2 = reqs_0_bankSel[0] ? reqs_0_data_2 : _selectedReq_T_7_data_2; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_data_3 = reqs_0_bankSel[0] ? reqs_0_data_3 : _selectedReq_T_7_data_3; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_data_4 = reqs_0_bankSel[0] ? reqs_0_data_4 : _selectedReq_T_7_data_4; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_data_5 = reqs_0_bankSel[0] ? reqs_0_data_5 : _selectedReq_T_7_data_5; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_data_6 = reqs_0_bankSel[0] ? reqs_0_data_6 : _selectedReq_T_7_data_6; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_data_7 = reqs_0_bankSel[0] ? reqs_0_data_7 : _selectedReq_T_7_data_7; // @[Mux.scala 47:70]
  wire  en_1 = reqs_0_bankSel[1] | reqs_1_bankEn[1] | reqs_2_bankEn[1] | reqs_3_bankEn[1] | reqs_4_bankEn[1]; // @[DataStorage.scala 171:45]
  wire [511:0] _selectedReq_T_13_index = reqs_3_bankSel[1] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_13_bankSel = reqs_3_bankSel[1] ? reqs_3_bankSel : reqs_4_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_13_bankSum = reqs_3_bankSel[1] ? reqs_3_bankSum : reqs_4_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_13_bankEn = reqs_3_bankSel[1] ? reqs_3_bankEn : reqs_4_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_13_data_0 = reqs_3_bankSel[1] ? reqs_3_data_0 : reqs_4_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_13_data_1 = reqs_3_bankSel[1] ? reqs_3_data_1 : reqs_4_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_13_data_2 = reqs_3_bankSel[1] ? reqs_3_data_2 : reqs_4_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_13_data_3 = reqs_3_bankSel[1] ? reqs_3_data_3 : reqs_4_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_13_data_4 = reqs_3_bankSel[1] ? reqs_3_data_4 : reqs_4_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_13_data_5 = reqs_3_bankSel[1] ? reqs_3_data_5 : reqs_4_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_13_data_6 = reqs_3_bankSel[1] ? reqs_3_data_6 : reqs_4_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_13_data_7 = reqs_3_bankSel[1] ? reqs_3_data_7 : reqs_4_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_14_index = reqs_2_bankSel[1] ? reqs_2_index : _selectedReq_T_13_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_14_bankSel = reqs_2_bankSel[1] ? reqs_2_bankSel : _selectedReq_T_13_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_14_bankSum = reqs_2_bankSel[1] ? reqs_2_bankSum : _selectedReq_T_13_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_14_bankEn = reqs_2_bankSel[1] ? reqs_2_bankEn : _selectedReq_T_13_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_14_data_0 = reqs_2_bankSel[1] ? reqs_2_data_0 : _selectedReq_T_13_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_14_data_1 = reqs_2_bankSel[1] ? reqs_2_data_1 : _selectedReq_T_13_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_14_data_2 = reqs_2_bankSel[1] ? reqs_2_data_2 : _selectedReq_T_13_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_14_data_3 = reqs_2_bankSel[1] ? reqs_2_data_3 : _selectedReq_T_13_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_14_data_4 = reqs_2_bankSel[1] ? reqs_2_data_4 : _selectedReq_T_13_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_14_data_5 = reqs_2_bankSel[1] ? reqs_2_data_5 : _selectedReq_T_13_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_14_data_6 = reqs_2_bankSel[1] ? reqs_2_data_6 : _selectedReq_T_13_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_14_data_7 = reqs_2_bankSel[1] ? reqs_2_data_7 : _selectedReq_T_13_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_15_index = reqs_1_bankSel[1] ? reqs_1_index : _selectedReq_T_14_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_15_bankSel = reqs_1_bankSel[1] ? reqs_1_bankSel : _selectedReq_T_14_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_15_bankSum = reqs_1_bankSel[1] ? reqs_0_bankSel : _selectedReq_T_14_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_15_bankEn = reqs_1_bankSel[1] ? reqs_1_bankEn : _selectedReq_T_14_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_15_data_0 = reqs_1_bankSel[1] ? reqs_1_data_0 : _selectedReq_T_14_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_15_data_1 = reqs_1_bankSel[1] ? reqs_1_data_1 : _selectedReq_T_14_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_15_data_2 = reqs_1_bankSel[1] ? reqs_1_data_2 : _selectedReq_T_14_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_15_data_3 = reqs_1_bankSel[1] ? reqs_1_data_3 : _selectedReq_T_14_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_15_data_4 = reqs_1_bankSel[1] ? reqs_1_data_4 : _selectedReq_T_14_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_15_data_5 = reqs_1_bankSel[1] ? reqs_1_data_5 : _selectedReq_T_14_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_15_data_6 = reqs_1_bankSel[1] ? reqs_1_data_6 : _selectedReq_T_14_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_15_data_7 = reqs_1_bankSel[1] ? reqs_1_data_7 : _selectedReq_T_14_data_7; // @[Mux.scala 47:70]
  wire  selectedReq_1_wen = reqs_0_bankSel[1] ? 1'h0 : reqs_1_bankSel[1] | (reqs_2_bankSel[1] | reqs_3_bankSel[1]); // @[Mux.scala 47:70]
  wire [511:0] selectedReq_1_index = reqs_0_bankSel[1] ? reqs_0_index : _selectedReq_T_15_index; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_1_bankSel = reqs_0_bankSel[1] ? reqs_0_bankSel : _selectedReq_T_15_bankSel; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_1_bankSum = reqs_0_bankSel[1] ? 8'h0 : _selectedReq_T_15_bankSum; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_1_bankEn = reqs_0_bankSel[1] ? reqs_0_bankSel : _selectedReq_T_15_bankEn; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_1_data_0 = reqs_0_bankSel[1] ? reqs_0_data_0 : _selectedReq_T_15_data_0; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_1_data_1 = reqs_0_bankSel[1] ? reqs_0_data_1 : _selectedReq_T_15_data_1; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_1_data_2 = reqs_0_bankSel[1] ? reqs_0_data_2 : _selectedReq_T_15_data_2; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_1_data_3 = reqs_0_bankSel[1] ? reqs_0_data_3 : _selectedReq_T_15_data_3; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_1_data_4 = reqs_0_bankSel[1] ? reqs_0_data_4 : _selectedReq_T_15_data_4; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_1_data_5 = reqs_0_bankSel[1] ? reqs_0_data_5 : _selectedReq_T_15_data_5; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_1_data_6 = reqs_0_bankSel[1] ? reqs_0_data_6 : _selectedReq_T_15_data_6; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_1_data_7 = reqs_0_bankSel[1] ? reqs_0_data_7 : _selectedReq_T_15_data_7; // @[Mux.scala 47:70]
  wire  en_2 = reqs_0_bankSel[2] | reqs_1_bankEn[2] | reqs_2_bankEn[2] | reqs_3_bankEn[2] | reqs_4_bankEn[2]; // @[DataStorage.scala 171:45]
  wire [511:0] _selectedReq_T_21_index = reqs_3_bankSel[2] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_21_bankSel = reqs_3_bankSel[2] ? reqs_3_bankSel : reqs_4_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_21_bankSum = reqs_3_bankSel[2] ? reqs_3_bankSum : reqs_4_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_21_bankEn = reqs_3_bankSel[2] ? reqs_3_bankEn : reqs_4_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_21_data_0 = reqs_3_bankSel[2] ? reqs_3_data_0 : reqs_4_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_21_data_1 = reqs_3_bankSel[2] ? reqs_3_data_1 : reqs_4_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_21_data_2 = reqs_3_bankSel[2] ? reqs_3_data_2 : reqs_4_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_21_data_3 = reqs_3_bankSel[2] ? reqs_3_data_3 : reqs_4_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_21_data_4 = reqs_3_bankSel[2] ? reqs_3_data_4 : reqs_4_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_21_data_5 = reqs_3_bankSel[2] ? reqs_3_data_5 : reqs_4_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_21_data_6 = reqs_3_bankSel[2] ? reqs_3_data_6 : reqs_4_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_21_data_7 = reqs_3_bankSel[2] ? reqs_3_data_7 : reqs_4_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_22_index = reqs_2_bankSel[2] ? reqs_2_index : _selectedReq_T_21_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_22_bankSel = reqs_2_bankSel[2] ? reqs_2_bankSel : _selectedReq_T_21_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_22_bankSum = reqs_2_bankSel[2] ? reqs_2_bankSum : _selectedReq_T_21_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_22_bankEn = reqs_2_bankSel[2] ? reqs_2_bankEn : _selectedReq_T_21_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_22_data_0 = reqs_2_bankSel[2] ? reqs_2_data_0 : _selectedReq_T_21_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_22_data_1 = reqs_2_bankSel[2] ? reqs_2_data_1 : _selectedReq_T_21_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_22_data_2 = reqs_2_bankSel[2] ? reqs_2_data_2 : _selectedReq_T_21_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_22_data_3 = reqs_2_bankSel[2] ? reqs_2_data_3 : _selectedReq_T_21_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_22_data_4 = reqs_2_bankSel[2] ? reqs_2_data_4 : _selectedReq_T_21_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_22_data_5 = reqs_2_bankSel[2] ? reqs_2_data_5 : _selectedReq_T_21_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_22_data_6 = reqs_2_bankSel[2] ? reqs_2_data_6 : _selectedReq_T_21_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_22_data_7 = reqs_2_bankSel[2] ? reqs_2_data_7 : _selectedReq_T_21_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_23_index = reqs_1_bankSel[2] ? reqs_1_index : _selectedReq_T_22_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_23_bankSel = reqs_1_bankSel[2] ? reqs_1_bankSel : _selectedReq_T_22_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_23_bankSum = reqs_1_bankSel[2] ? reqs_0_bankSel : _selectedReq_T_22_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_23_bankEn = reqs_1_bankSel[2] ? reqs_1_bankEn : _selectedReq_T_22_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_23_data_0 = reqs_1_bankSel[2] ? reqs_1_data_0 : _selectedReq_T_22_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_23_data_1 = reqs_1_bankSel[2] ? reqs_1_data_1 : _selectedReq_T_22_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_23_data_2 = reqs_1_bankSel[2] ? reqs_1_data_2 : _selectedReq_T_22_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_23_data_3 = reqs_1_bankSel[2] ? reqs_1_data_3 : _selectedReq_T_22_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_23_data_4 = reqs_1_bankSel[2] ? reqs_1_data_4 : _selectedReq_T_22_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_23_data_5 = reqs_1_bankSel[2] ? reqs_1_data_5 : _selectedReq_T_22_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_23_data_6 = reqs_1_bankSel[2] ? reqs_1_data_6 : _selectedReq_T_22_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_23_data_7 = reqs_1_bankSel[2] ? reqs_1_data_7 : _selectedReq_T_22_data_7; // @[Mux.scala 47:70]
  wire  selectedReq_2_wen = reqs_0_bankSel[2] ? 1'h0 : reqs_1_bankSel[2] | (reqs_2_bankSel[2] | reqs_3_bankSel[2]); // @[Mux.scala 47:70]
  wire [511:0] selectedReq_2_index = reqs_0_bankSel[2] ? reqs_0_index : _selectedReq_T_23_index; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_2_bankSel = reqs_0_bankSel[2] ? reqs_0_bankSel : _selectedReq_T_23_bankSel; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_2_bankSum = reqs_0_bankSel[2] ? 8'h0 : _selectedReq_T_23_bankSum; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_2_bankEn = reqs_0_bankSel[2] ? reqs_0_bankSel : _selectedReq_T_23_bankEn; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_2_data_0 = reqs_0_bankSel[2] ? reqs_0_data_0 : _selectedReq_T_23_data_0; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_2_data_1 = reqs_0_bankSel[2] ? reqs_0_data_1 : _selectedReq_T_23_data_1; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_2_data_2 = reqs_0_bankSel[2] ? reqs_0_data_2 : _selectedReq_T_23_data_2; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_2_data_3 = reqs_0_bankSel[2] ? reqs_0_data_3 : _selectedReq_T_23_data_3; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_2_data_4 = reqs_0_bankSel[2] ? reqs_0_data_4 : _selectedReq_T_23_data_4; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_2_data_5 = reqs_0_bankSel[2] ? reqs_0_data_5 : _selectedReq_T_23_data_5; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_2_data_6 = reqs_0_bankSel[2] ? reqs_0_data_6 : _selectedReq_T_23_data_6; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_2_data_7 = reqs_0_bankSel[2] ? reqs_0_data_7 : _selectedReq_T_23_data_7; // @[Mux.scala 47:70]
  wire  en_3 = reqs_0_bankSel[3] | reqs_1_bankEn[3] | reqs_2_bankEn[3] | reqs_3_bankEn[3] | reqs_4_bankEn[3]; // @[DataStorage.scala 171:45]
  wire [511:0] _selectedReq_T_29_index = reqs_3_bankSel[3] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_29_bankSel = reqs_3_bankSel[3] ? reqs_3_bankSel : reqs_4_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_29_bankSum = reqs_3_bankSel[3] ? reqs_3_bankSum : reqs_4_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_29_bankEn = reqs_3_bankSel[3] ? reqs_3_bankEn : reqs_4_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_29_data_0 = reqs_3_bankSel[3] ? reqs_3_data_0 : reqs_4_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_29_data_1 = reqs_3_bankSel[3] ? reqs_3_data_1 : reqs_4_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_29_data_2 = reqs_3_bankSel[3] ? reqs_3_data_2 : reqs_4_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_29_data_3 = reqs_3_bankSel[3] ? reqs_3_data_3 : reqs_4_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_29_data_4 = reqs_3_bankSel[3] ? reqs_3_data_4 : reqs_4_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_29_data_5 = reqs_3_bankSel[3] ? reqs_3_data_5 : reqs_4_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_29_data_6 = reqs_3_bankSel[3] ? reqs_3_data_6 : reqs_4_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_29_data_7 = reqs_3_bankSel[3] ? reqs_3_data_7 : reqs_4_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_30_index = reqs_2_bankSel[3] ? reqs_2_index : _selectedReq_T_29_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_30_bankSel = reqs_2_bankSel[3] ? reqs_2_bankSel : _selectedReq_T_29_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_30_bankSum = reqs_2_bankSel[3] ? reqs_2_bankSum : _selectedReq_T_29_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_30_bankEn = reqs_2_bankSel[3] ? reqs_2_bankEn : _selectedReq_T_29_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_30_data_0 = reqs_2_bankSel[3] ? reqs_2_data_0 : _selectedReq_T_29_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_30_data_1 = reqs_2_bankSel[3] ? reqs_2_data_1 : _selectedReq_T_29_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_30_data_2 = reqs_2_bankSel[3] ? reqs_2_data_2 : _selectedReq_T_29_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_30_data_3 = reqs_2_bankSel[3] ? reqs_2_data_3 : _selectedReq_T_29_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_30_data_4 = reqs_2_bankSel[3] ? reqs_2_data_4 : _selectedReq_T_29_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_30_data_5 = reqs_2_bankSel[3] ? reqs_2_data_5 : _selectedReq_T_29_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_30_data_6 = reqs_2_bankSel[3] ? reqs_2_data_6 : _selectedReq_T_29_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_30_data_7 = reqs_2_bankSel[3] ? reqs_2_data_7 : _selectedReq_T_29_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_31_index = reqs_1_bankSel[3] ? reqs_1_index : _selectedReq_T_30_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_31_bankSel = reqs_1_bankSel[3] ? reqs_1_bankSel : _selectedReq_T_30_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_31_bankSum = reqs_1_bankSel[3] ? reqs_0_bankSel : _selectedReq_T_30_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_31_bankEn = reqs_1_bankSel[3] ? reqs_1_bankEn : _selectedReq_T_30_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_31_data_0 = reqs_1_bankSel[3] ? reqs_1_data_0 : _selectedReq_T_30_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_31_data_1 = reqs_1_bankSel[3] ? reqs_1_data_1 : _selectedReq_T_30_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_31_data_2 = reqs_1_bankSel[3] ? reqs_1_data_2 : _selectedReq_T_30_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_31_data_3 = reqs_1_bankSel[3] ? reqs_1_data_3 : _selectedReq_T_30_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_31_data_4 = reqs_1_bankSel[3] ? reqs_1_data_4 : _selectedReq_T_30_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_31_data_5 = reqs_1_bankSel[3] ? reqs_1_data_5 : _selectedReq_T_30_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_31_data_6 = reqs_1_bankSel[3] ? reqs_1_data_6 : _selectedReq_T_30_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_31_data_7 = reqs_1_bankSel[3] ? reqs_1_data_7 : _selectedReq_T_30_data_7; // @[Mux.scala 47:70]
  wire  selectedReq_3_wen = reqs_0_bankSel[3] ? 1'h0 : reqs_1_bankSel[3] | (reqs_2_bankSel[3] | reqs_3_bankSel[3]); // @[Mux.scala 47:70]
  wire [511:0] selectedReq_3_index = reqs_0_bankSel[3] ? reqs_0_index : _selectedReq_T_31_index; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_3_bankSel = reqs_0_bankSel[3] ? reqs_0_bankSel : _selectedReq_T_31_bankSel; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_3_bankSum = reqs_0_bankSel[3] ? 8'h0 : _selectedReq_T_31_bankSum; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_3_bankEn = reqs_0_bankSel[3] ? reqs_0_bankSel : _selectedReq_T_31_bankEn; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_3_data_0 = reqs_0_bankSel[3] ? reqs_0_data_0 : _selectedReq_T_31_data_0; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_3_data_1 = reqs_0_bankSel[3] ? reqs_0_data_1 : _selectedReq_T_31_data_1; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_3_data_2 = reqs_0_bankSel[3] ? reqs_0_data_2 : _selectedReq_T_31_data_2; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_3_data_3 = reqs_0_bankSel[3] ? reqs_0_data_3 : _selectedReq_T_31_data_3; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_3_data_4 = reqs_0_bankSel[3] ? reqs_0_data_4 : _selectedReq_T_31_data_4; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_3_data_5 = reqs_0_bankSel[3] ? reqs_0_data_5 : _selectedReq_T_31_data_5; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_3_data_6 = reqs_0_bankSel[3] ? reqs_0_data_6 : _selectedReq_T_31_data_6; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_3_data_7 = reqs_0_bankSel[3] ? reqs_0_data_7 : _selectedReq_T_31_data_7; // @[Mux.scala 47:70]
  wire  en_4 = reqs_0_bankSel[4] | reqs_1_bankEn[4] | reqs_2_bankEn[4] | reqs_3_bankEn[4] | reqs_4_bankEn[4]; // @[DataStorage.scala 171:45]
  wire [511:0] _selectedReq_T_37_index = reqs_3_bankSel[4] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_37_bankSel = reqs_3_bankSel[4] ? reqs_3_bankSel : reqs_4_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_37_bankSum = reqs_3_bankSel[4] ? reqs_3_bankSum : reqs_4_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_37_bankEn = reqs_3_bankSel[4] ? reqs_3_bankEn : reqs_4_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_37_data_0 = reqs_3_bankSel[4] ? reqs_3_data_0 : reqs_4_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_37_data_1 = reqs_3_bankSel[4] ? reqs_3_data_1 : reqs_4_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_37_data_2 = reqs_3_bankSel[4] ? reqs_3_data_2 : reqs_4_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_37_data_3 = reqs_3_bankSel[4] ? reqs_3_data_3 : reqs_4_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_37_data_4 = reqs_3_bankSel[4] ? reqs_3_data_4 : reqs_4_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_37_data_5 = reqs_3_bankSel[4] ? reqs_3_data_5 : reqs_4_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_37_data_6 = reqs_3_bankSel[4] ? reqs_3_data_6 : reqs_4_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_37_data_7 = reqs_3_bankSel[4] ? reqs_3_data_7 : reqs_4_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_38_index = reqs_2_bankSel[4] ? reqs_2_index : _selectedReq_T_37_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_38_bankSel = reqs_2_bankSel[4] ? reqs_2_bankSel : _selectedReq_T_37_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_38_bankSum = reqs_2_bankSel[4] ? reqs_2_bankSum : _selectedReq_T_37_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_38_bankEn = reqs_2_bankSel[4] ? reqs_2_bankEn : _selectedReq_T_37_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_38_data_0 = reqs_2_bankSel[4] ? reqs_2_data_0 : _selectedReq_T_37_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_38_data_1 = reqs_2_bankSel[4] ? reqs_2_data_1 : _selectedReq_T_37_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_38_data_2 = reqs_2_bankSel[4] ? reqs_2_data_2 : _selectedReq_T_37_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_38_data_3 = reqs_2_bankSel[4] ? reqs_2_data_3 : _selectedReq_T_37_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_38_data_4 = reqs_2_bankSel[4] ? reqs_2_data_4 : _selectedReq_T_37_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_38_data_5 = reqs_2_bankSel[4] ? reqs_2_data_5 : _selectedReq_T_37_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_38_data_6 = reqs_2_bankSel[4] ? reqs_2_data_6 : _selectedReq_T_37_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_38_data_7 = reqs_2_bankSel[4] ? reqs_2_data_7 : _selectedReq_T_37_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_39_index = reqs_1_bankSel[4] ? reqs_1_index : _selectedReq_T_38_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_39_bankSel = reqs_1_bankSel[4] ? reqs_1_bankSel : _selectedReq_T_38_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_39_bankSum = reqs_1_bankSel[4] ? reqs_0_bankSel : _selectedReq_T_38_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_39_bankEn = reqs_1_bankSel[4] ? reqs_1_bankEn : _selectedReq_T_38_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_39_data_0 = reqs_1_bankSel[4] ? reqs_1_data_0 : _selectedReq_T_38_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_39_data_1 = reqs_1_bankSel[4] ? reqs_1_data_1 : _selectedReq_T_38_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_39_data_2 = reqs_1_bankSel[4] ? reqs_1_data_2 : _selectedReq_T_38_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_39_data_3 = reqs_1_bankSel[4] ? reqs_1_data_3 : _selectedReq_T_38_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_39_data_4 = reqs_1_bankSel[4] ? reqs_1_data_4 : _selectedReq_T_38_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_39_data_5 = reqs_1_bankSel[4] ? reqs_1_data_5 : _selectedReq_T_38_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_39_data_6 = reqs_1_bankSel[4] ? reqs_1_data_6 : _selectedReq_T_38_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_39_data_7 = reqs_1_bankSel[4] ? reqs_1_data_7 : _selectedReq_T_38_data_7; // @[Mux.scala 47:70]
  wire  selectedReq_4_wen = reqs_0_bankSel[4] ? 1'h0 : reqs_1_bankSel[4] | (reqs_2_bankSel[4] | reqs_3_bankSel[4]); // @[Mux.scala 47:70]
  wire [511:0] selectedReq_4_index = reqs_0_bankSel[4] ? reqs_0_index : _selectedReq_T_39_index; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_4_bankSel = reqs_0_bankSel[4] ? reqs_0_bankSel : _selectedReq_T_39_bankSel; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_4_bankSum = reqs_0_bankSel[4] ? 8'h0 : _selectedReq_T_39_bankSum; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_4_bankEn = reqs_0_bankSel[4] ? reqs_0_bankSel : _selectedReq_T_39_bankEn; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_4_data_0 = reqs_0_bankSel[4] ? reqs_0_data_0 : _selectedReq_T_39_data_0; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_4_data_1 = reqs_0_bankSel[4] ? reqs_0_data_1 : _selectedReq_T_39_data_1; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_4_data_2 = reqs_0_bankSel[4] ? reqs_0_data_2 : _selectedReq_T_39_data_2; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_4_data_3 = reqs_0_bankSel[4] ? reqs_0_data_3 : _selectedReq_T_39_data_3; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_4_data_4 = reqs_0_bankSel[4] ? reqs_0_data_4 : _selectedReq_T_39_data_4; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_4_data_5 = reqs_0_bankSel[4] ? reqs_0_data_5 : _selectedReq_T_39_data_5; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_4_data_6 = reqs_0_bankSel[4] ? reqs_0_data_6 : _selectedReq_T_39_data_6; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_4_data_7 = reqs_0_bankSel[4] ? reqs_0_data_7 : _selectedReq_T_39_data_7; // @[Mux.scala 47:70]
  wire  en_5 = reqs_0_bankSel[5] | reqs_1_bankEn[5] | reqs_2_bankEn[5] | reqs_3_bankEn[5] | reqs_4_bankEn[5]; // @[DataStorage.scala 171:45]
  wire [511:0] _selectedReq_T_45_index = reqs_3_bankSel[5] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_45_bankSel = reqs_3_bankSel[5] ? reqs_3_bankSel : reqs_4_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_45_bankSum = reqs_3_bankSel[5] ? reqs_3_bankSum : reqs_4_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_45_bankEn = reqs_3_bankSel[5] ? reqs_3_bankEn : reqs_4_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_45_data_0 = reqs_3_bankSel[5] ? reqs_3_data_0 : reqs_4_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_45_data_1 = reqs_3_bankSel[5] ? reqs_3_data_1 : reqs_4_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_45_data_2 = reqs_3_bankSel[5] ? reqs_3_data_2 : reqs_4_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_45_data_3 = reqs_3_bankSel[5] ? reqs_3_data_3 : reqs_4_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_45_data_4 = reqs_3_bankSel[5] ? reqs_3_data_4 : reqs_4_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_45_data_5 = reqs_3_bankSel[5] ? reqs_3_data_5 : reqs_4_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_45_data_6 = reqs_3_bankSel[5] ? reqs_3_data_6 : reqs_4_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_45_data_7 = reqs_3_bankSel[5] ? reqs_3_data_7 : reqs_4_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_46_index = reqs_2_bankSel[5] ? reqs_2_index : _selectedReq_T_45_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_46_bankSel = reqs_2_bankSel[5] ? reqs_2_bankSel : _selectedReq_T_45_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_46_bankSum = reqs_2_bankSel[5] ? reqs_2_bankSum : _selectedReq_T_45_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_46_bankEn = reqs_2_bankSel[5] ? reqs_2_bankEn : _selectedReq_T_45_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_46_data_0 = reqs_2_bankSel[5] ? reqs_2_data_0 : _selectedReq_T_45_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_46_data_1 = reqs_2_bankSel[5] ? reqs_2_data_1 : _selectedReq_T_45_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_46_data_2 = reqs_2_bankSel[5] ? reqs_2_data_2 : _selectedReq_T_45_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_46_data_3 = reqs_2_bankSel[5] ? reqs_2_data_3 : _selectedReq_T_45_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_46_data_4 = reqs_2_bankSel[5] ? reqs_2_data_4 : _selectedReq_T_45_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_46_data_5 = reqs_2_bankSel[5] ? reqs_2_data_5 : _selectedReq_T_45_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_46_data_6 = reqs_2_bankSel[5] ? reqs_2_data_6 : _selectedReq_T_45_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_46_data_7 = reqs_2_bankSel[5] ? reqs_2_data_7 : _selectedReq_T_45_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_47_index = reqs_1_bankSel[5] ? reqs_1_index : _selectedReq_T_46_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_47_bankSel = reqs_1_bankSel[5] ? reqs_1_bankSel : _selectedReq_T_46_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_47_bankSum = reqs_1_bankSel[5] ? reqs_0_bankSel : _selectedReq_T_46_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_47_bankEn = reqs_1_bankSel[5] ? reqs_1_bankEn : _selectedReq_T_46_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_47_data_0 = reqs_1_bankSel[5] ? reqs_1_data_0 : _selectedReq_T_46_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_47_data_1 = reqs_1_bankSel[5] ? reqs_1_data_1 : _selectedReq_T_46_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_47_data_2 = reqs_1_bankSel[5] ? reqs_1_data_2 : _selectedReq_T_46_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_47_data_3 = reqs_1_bankSel[5] ? reqs_1_data_3 : _selectedReq_T_46_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_47_data_4 = reqs_1_bankSel[5] ? reqs_1_data_4 : _selectedReq_T_46_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_47_data_5 = reqs_1_bankSel[5] ? reqs_1_data_5 : _selectedReq_T_46_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_47_data_6 = reqs_1_bankSel[5] ? reqs_1_data_6 : _selectedReq_T_46_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_47_data_7 = reqs_1_bankSel[5] ? reqs_1_data_7 : _selectedReq_T_46_data_7; // @[Mux.scala 47:70]
  wire  selectedReq_5_wen = reqs_0_bankSel[5] ? 1'h0 : reqs_1_bankSel[5] | (reqs_2_bankSel[5] | reqs_3_bankSel[5]); // @[Mux.scala 47:70]
  wire [511:0] selectedReq_5_index = reqs_0_bankSel[5] ? reqs_0_index : _selectedReq_T_47_index; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_5_bankSel = reqs_0_bankSel[5] ? reqs_0_bankSel : _selectedReq_T_47_bankSel; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_5_bankSum = reqs_0_bankSel[5] ? 8'h0 : _selectedReq_T_47_bankSum; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_5_bankEn = reqs_0_bankSel[5] ? reqs_0_bankSel : _selectedReq_T_47_bankEn; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_5_data_0 = reqs_0_bankSel[5] ? reqs_0_data_0 : _selectedReq_T_47_data_0; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_5_data_1 = reqs_0_bankSel[5] ? reqs_0_data_1 : _selectedReq_T_47_data_1; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_5_data_2 = reqs_0_bankSel[5] ? reqs_0_data_2 : _selectedReq_T_47_data_2; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_5_data_3 = reqs_0_bankSel[5] ? reqs_0_data_3 : _selectedReq_T_47_data_3; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_5_data_4 = reqs_0_bankSel[5] ? reqs_0_data_4 : _selectedReq_T_47_data_4; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_5_data_5 = reqs_0_bankSel[5] ? reqs_0_data_5 : _selectedReq_T_47_data_5; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_5_data_6 = reqs_0_bankSel[5] ? reqs_0_data_6 : _selectedReq_T_47_data_6; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_5_data_7 = reqs_0_bankSel[5] ? reqs_0_data_7 : _selectedReq_T_47_data_7; // @[Mux.scala 47:70]
  wire  en_6 = reqs_0_bankSel[6] | reqs_1_bankEn[6] | reqs_2_bankEn[6] | reqs_3_bankEn[6] | reqs_4_bankEn[6]; // @[DataStorage.scala 171:45]
  wire [511:0] _selectedReq_T_53_index = reqs_3_bankSel[6] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_53_bankSel = reqs_3_bankSel[6] ? reqs_3_bankSel : reqs_4_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_53_bankSum = reqs_3_bankSel[6] ? reqs_3_bankSum : reqs_4_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_53_bankEn = reqs_3_bankSel[6] ? reqs_3_bankEn : reqs_4_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_53_data_0 = reqs_3_bankSel[6] ? reqs_3_data_0 : reqs_4_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_53_data_1 = reqs_3_bankSel[6] ? reqs_3_data_1 : reqs_4_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_53_data_2 = reqs_3_bankSel[6] ? reqs_3_data_2 : reqs_4_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_53_data_3 = reqs_3_bankSel[6] ? reqs_3_data_3 : reqs_4_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_53_data_4 = reqs_3_bankSel[6] ? reqs_3_data_4 : reqs_4_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_53_data_5 = reqs_3_bankSel[6] ? reqs_3_data_5 : reqs_4_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_53_data_6 = reqs_3_bankSel[6] ? reqs_3_data_6 : reqs_4_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_53_data_7 = reqs_3_bankSel[6] ? reqs_3_data_7 : reqs_4_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_54_index = reqs_2_bankSel[6] ? reqs_2_index : _selectedReq_T_53_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_54_bankSel = reqs_2_bankSel[6] ? reqs_2_bankSel : _selectedReq_T_53_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_54_bankSum = reqs_2_bankSel[6] ? reqs_2_bankSum : _selectedReq_T_53_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_54_bankEn = reqs_2_bankSel[6] ? reqs_2_bankEn : _selectedReq_T_53_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_54_data_0 = reqs_2_bankSel[6] ? reqs_2_data_0 : _selectedReq_T_53_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_54_data_1 = reqs_2_bankSel[6] ? reqs_2_data_1 : _selectedReq_T_53_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_54_data_2 = reqs_2_bankSel[6] ? reqs_2_data_2 : _selectedReq_T_53_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_54_data_3 = reqs_2_bankSel[6] ? reqs_2_data_3 : _selectedReq_T_53_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_54_data_4 = reqs_2_bankSel[6] ? reqs_2_data_4 : _selectedReq_T_53_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_54_data_5 = reqs_2_bankSel[6] ? reqs_2_data_5 : _selectedReq_T_53_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_54_data_6 = reqs_2_bankSel[6] ? reqs_2_data_6 : _selectedReq_T_53_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_54_data_7 = reqs_2_bankSel[6] ? reqs_2_data_7 : _selectedReq_T_53_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_55_index = reqs_1_bankSel[6] ? reqs_1_index : _selectedReq_T_54_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_55_bankSel = reqs_1_bankSel[6] ? reqs_1_bankSel : _selectedReq_T_54_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_55_bankSum = reqs_1_bankSel[6] ? reqs_0_bankSel : _selectedReq_T_54_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_55_bankEn = reqs_1_bankSel[6] ? reqs_1_bankEn : _selectedReq_T_54_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_55_data_0 = reqs_1_bankSel[6] ? reqs_1_data_0 : _selectedReq_T_54_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_55_data_1 = reqs_1_bankSel[6] ? reqs_1_data_1 : _selectedReq_T_54_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_55_data_2 = reqs_1_bankSel[6] ? reqs_1_data_2 : _selectedReq_T_54_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_55_data_3 = reqs_1_bankSel[6] ? reqs_1_data_3 : _selectedReq_T_54_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_55_data_4 = reqs_1_bankSel[6] ? reqs_1_data_4 : _selectedReq_T_54_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_55_data_5 = reqs_1_bankSel[6] ? reqs_1_data_5 : _selectedReq_T_54_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_55_data_6 = reqs_1_bankSel[6] ? reqs_1_data_6 : _selectedReq_T_54_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_55_data_7 = reqs_1_bankSel[6] ? reqs_1_data_7 : _selectedReq_T_54_data_7; // @[Mux.scala 47:70]
  wire  selectedReq_6_wen = reqs_0_bankSel[6] ? 1'h0 : reqs_1_bankSel[6] | (reqs_2_bankSel[6] | reqs_3_bankSel[6]); // @[Mux.scala 47:70]
  wire [511:0] selectedReq_6_index = reqs_0_bankSel[6] ? reqs_0_index : _selectedReq_T_55_index; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_6_bankSel = reqs_0_bankSel[6] ? reqs_0_bankSel : _selectedReq_T_55_bankSel; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_6_bankSum = reqs_0_bankSel[6] ? 8'h0 : _selectedReq_T_55_bankSum; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_6_bankEn = reqs_0_bankSel[6] ? reqs_0_bankSel : _selectedReq_T_55_bankEn; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_6_data_0 = reqs_0_bankSel[6] ? reqs_0_data_0 : _selectedReq_T_55_data_0; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_6_data_1 = reqs_0_bankSel[6] ? reqs_0_data_1 : _selectedReq_T_55_data_1; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_6_data_2 = reqs_0_bankSel[6] ? reqs_0_data_2 : _selectedReq_T_55_data_2; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_6_data_3 = reqs_0_bankSel[6] ? reqs_0_data_3 : _selectedReq_T_55_data_3; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_6_data_4 = reqs_0_bankSel[6] ? reqs_0_data_4 : _selectedReq_T_55_data_4; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_6_data_5 = reqs_0_bankSel[6] ? reqs_0_data_5 : _selectedReq_T_55_data_5; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_6_data_6 = reqs_0_bankSel[6] ? reqs_0_data_6 : _selectedReq_T_55_data_6; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_6_data_7 = reqs_0_bankSel[6] ? reqs_0_data_7 : _selectedReq_T_55_data_7; // @[Mux.scala 47:70]
  wire  en_7 = reqs_0_bankSel[7] | reqs_1_bankEn[7] | reqs_2_bankEn[7] | reqs_3_bankEn[7] | reqs_4_bankEn[7]; // @[DataStorage.scala 171:45]
  wire [511:0] _selectedReq_T_61_index = reqs_3_bankSel[7] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_61_bankSel = reqs_3_bankSel[7] ? reqs_3_bankSel : reqs_4_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_61_bankSum = reqs_3_bankSel[7] ? reqs_3_bankSum : reqs_4_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_61_bankEn = reqs_3_bankSel[7] ? reqs_3_bankEn : reqs_4_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_61_data_0 = reqs_3_bankSel[7] ? reqs_3_data_0 : reqs_4_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_61_data_1 = reqs_3_bankSel[7] ? reqs_3_data_1 : reqs_4_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_61_data_2 = reqs_3_bankSel[7] ? reqs_3_data_2 : reqs_4_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_61_data_3 = reqs_3_bankSel[7] ? reqs_3_data_3 : reqs_4_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_61_data_4 = reqs_3_bankSel[7] ? reqs_3_data_4 : reqs_4_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_61_data_5 = reqs_3_bankSel[7] ? reqs_3_data_5 : reqs_4_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_61_data_6 = reqs_3_bankSel[7] ? reqs_3_data_6 : reqs_4_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_61_data_7 = reqs_3_bankSel[7] ? reqs_3_data_7 : reqs_4_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_62_index = reqs_2_bankSel[7] ? reqs_2_index : _selectedReq_T_61_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_62_bankSel = reqs_2_bankSel[7] ? reqs_2_bankSel : _selectedReq_T_61_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_62_bankSum = reqs_2_bankSel[7] ? reqs_2_bankSum : _selectedReq_T_61_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_62_bankEn = reqs_2_bankSel[7] ? reqs_2_bankEn : _selectedReq_T_61_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_62_data_0 = reqs_2_bankSel[7] ? reqs_2_data_0 : _selectedReq_T_61_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_62_data_1 = reqs_2_bankSel[7] ? reqs_2_data_1 : _selectedReq_T_61_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_62_data_2 = reqs_2_bankSel[7] ? reqs_2_data_2 : _selectedReq_T_61_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_62_data_3 = reqs_2_bankSel[7] ? reqs_2_data_3 : _selectedReq_T_61_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_62_data_4 = reqs_2_bankSel[7] ? reqs_2_data_4 : _selectedReq_T_61_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_62_data_5 = reqs_2_bankSel[7] ? reqs_2_data_5 : _selectedReq_T_61_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_62_data_6 = reqs_2_bankSel[7] ? reqs_2_data_6 : _selectedReq_T_61_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_62_data_7 = reqs_2_bankSel[7] ? reqs_2_data_7 : _selectedReq_T_61_data_7; // @[Mux.scala 47:70]
  wire [511:0] _selectedReq_T_63_index = reqs_1_bankSel[7] ? reqs_1_index : _selectedReq_T_62_index; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_63_bankSel = reqs_1_bankSel[7] ? reqs_1_bankSel : _selectedReq_T_62_bankSel; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_63_bankSum = reqs_1_bankSel[7] ? reqs_0_bankSel : _selectedReq_T_62_bankSum; // @[Mux.scala 47:70]
  wire [7:0] _selectedReq_T_63_bankEn = reqs_1_bankSel[7] ? reqs_1_bankEn : _selectedReq_T_62_bankEn; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_63_data_0 = reqs_1_bankSel[7] ? reqs_1_data_0 : _selectedReq_T_62_data_0; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_63_data_1 = reqs_1_bankSel[7] ? reqs_1_data_1 : _selectedReq_T_62_data_1; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_63_data_2 = reqs_1_bankSel[7] ? reqs_1_data_2 : _selectedReq_T_62_data_2; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_63_data_3 = reqs_1_bankSel[7] ? reqs_1_data_3 : _selectedReq_T_62_data_3; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_63_data_4 = reqs_1_bankSel[7] ? reqs_1_data_4 : _selectedReq_T_62_data_4; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_63_data_5 = reqs_1_bankSel[7] ? reqs_1_data_5 : _selectedReq_T_62_data_5; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_63_data_6 = reqs_1_bankSel[7] ? reqs_1_data_6 : _selectedReq_T_62_data_6; // @[Mux.scala 47:70]
  wire [63:0] _selectedReq_T_63_data_7 = reqs_1_bankSel[7] ? reqs_1_data_7 : _selectedReq_T_62_data_7; // @[Mux.scala 47:70]
  wire  selectedReq_7_wen = reqs_0_bankSel[7] ? 1'h0 : reqs_1_bankSel[7] | (reqs_2_bankSel[7] | reqs_3_bankSel[7]); // @[Mux.scala 47:70]
  wire [511:0] selectedReq_7_index = reqs_0_bankSel[7] ? reqs_0_index : _selectedReq_T_63_index; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_7_bankSel = reqs_0_bankSel[7] ? reqs_0_bankSel : _selectedReq_T_63_bankSel; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_7_bankSum = reqs_0_bankSel[7] ? 8'h0 : _selectedReq_T_63_bankSum; // @[Mux.scala 47:70]
  wire [7:0] selectedReq_7_bankEn = reqs_0_bankSel[7] ? reqs_0_bankSel : _selectedReq_T_63_bankEn; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_7_data_0 = reqs_0_bankSel[7] ? reqs_0_data_0 : _selectedReq_T_63_data_0; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_7_data_1 = reqs_0_bankSel[7] ? reqs_0_data_1 : _selectedReq_T_63_data_1; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_7_data_2 = reqs_0_bankSel[7] ? reqs_0_data_2 : _selectedReq_T_63_data_2; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_7_data_3 = reqs_0_bankSel[7] ? reqs_0_data_3 : _selectedReq_T_63_data_3; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_7_data_4 = reqs_0_bankSel[7] ? reqs_0_data_4 : _selectedReq_T_63_data_4; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_7_data_5 = reqs_0_bankSel[7] ? reqs_0_data_5 : _selectedReq_T_63_data_5; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_7_data_6 = reqs_0_bankSel[7] ? reqs_0_data_6 : _selectedReq_T_63_data_6; // @[Mux.scala 47:70]
  wire [63:0] selectedReq_7_data_7 = reqs_0_bankSel[7] ? reqs_0_data_7 : _selectedReq_T_63_data_7; // @[Mux.scala 47:70]
  wire [63:0] _x7_syndromeUInt_T = 64'hab55555556aaad5b & bankedData_0_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_1 = ^_x7_syndromeUInt_T; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_3 = 64'hcd9999999b33366d & bankedData_0_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_4 = ^_x7_syndromeUInt_T_3; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_6 = 64'hf1e1e1e1e3c3c78e & bankedData_0_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_7 = ^_x7_syndromeUInt_T_6; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_9 = 64'h1fe01fe03fc07f0 & bankedData_0_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_10 = ^_x7_syndromeUInt_T_9; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_12 = 64'h1fffe0003fff800 & bankedData_0_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_13 = ^_x7_syndromeUInt_T_12; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_15 = 64'h1fffffffc000000 & bankedData_0_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_16 = ^_x7_syndromeUInt_T_15; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_18 = 64'hfe00000000000000 & bankedData_0_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_19 = ^_x7_syndromeUInt_T_18; // @[ECC.scala 147:79]
  wire [70:0] _x7_T = {_x7_syndromeUInt_T_19,_x7_syndromeUInt_T_16,_x7_syndromeUInt_T_13,_x7_syndromeUInt_T_10,
    _x7_syndromeUInt_T_7,_x7_syndromeUInt_T_4,_x7_syndromeUInt_T_1,bankedData_0_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire  _x7_T_1 = ^_x7_T; // @[ECC.scala 81:55]
  wire [71:0] _x7_T_3 = {_x7_T_1,_x7_syndromeUInt_T_19,_x7_syndromeUInt_T_16,_x7_syndromeUInt_T_13,_x7_syndromeUInt_T_10
    ,_x7_syndromeUInt_T_7,_x7_syndromeUInt_T_4,_x7_syndromeUInt_T_1,bankedData_0_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire [63:0] _x7_syndromeUInt_T_21 = 64'hab55555556aaad5b & bankedData_1_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_22 = ^_x7_syndromeUInt_T_21; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_24 = 64'hcd9999999b33366d & bankedData_1_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_25 = ^_x7_syndromeUInt_T_24; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_27 = 64'hf1e1e1e1e3c3c78e & bankedData_1_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_28 = ^_x7_syndromeUInt_T_27; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_30 = 64'h1fe01fe03fc07f0 & bankedData_1_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_31 = ^_x7_syndromeUInt_T_30; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_33 = 64'h1fffe0003fff800 & bankedData_1_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_34 = ^_x7_syndromeUInt_T_33; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_36 = 64'h1fffffffc000000 & bankedData_1_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_37 = ^_x7_syndromeUInt_T_36; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_39 = 64'hfe00000000000000 & bankedData_1_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_40 = ^_x7_syndromeUInt_T_39; // @[ECC.scala 147:79]
  wire [70:0] _x7_T_6 = {_x7_syndromeUInt_T_40,_x7_syndromeUInt_T_37,_x7_syndromeUInt_T_34,_x7_syndromeUInt_T_31,
    _x7_syndromeUInt_T_28,_x7_syndromeUInt_T_25,_x7_syndromeUInt_T_22,bankedData_1_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire  _x7_T_7 = ^_x7_T_6; // @[ECC.scala 81:55]
  wire [71:0] _x7_T_9 = {_x7_T_7,_x7_syndromeUInt_T_40,_x7_syndromeUInt_T_37,_x7_syndromeUInt_T_34,_x7_syndromeUInt_T_31
    ,_x7_syndromeUInt_T_28,_x7_syndromeUInt_T_25,_x7_syndromeUInt_T_22,bankedData_1_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire [63:0] _x7_syndromeUInt_T_42 = 64'hab55555556aaad5b & bankedData_2_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_43 = ^_x7_syndromeUInt_T_42; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_45 = 64'hcd9999999b33366d & bankedData_2_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_46 = ^_x7_syndromeUInt_T_45; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_48 = 64'hf1e1e1e1e3c3c78e & bankedData_2_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_49 = ^_x7_syndromeUInt_T_48; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_51 = 64'h1fe01fe03fc07f0 & bankedData_2_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_52 = ^_x7_syndromeUInt_T_51; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_54 = 64'h1fffe0003fff800 & bankedData_2_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_55 = ^_x7_syndromeUInt_T_54; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_57 = 64'h1fffffffc000000 & bankedData_2_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_58 = ^_x7_syndromeUInt_T_57; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_60 = 64'hfe00000000000000 & bankedData_2_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_61 = ^_x7_syndromeUInt_T_60; // @[ECC.scala 147:79]
  wire [70:0] _x7_T_12 = {_x7_syndromeUInt_T_61,_x7_syndromeUInt_T_58,_x7_syndromeUInt_T_55,_x7_syndromeUInt_T_52,
    _x7_syndromeUInt_T_49,_x7_syndromeUInt_T_46,_x7_syndromeUInt_T_43,bankedData_2_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire  _x7_T_13 = ^_x7_T_12; // @[ECC.scala 81:55]
  wire [71:0] _x7_T_15 = {_x7_T_13,_x7_syndromeUInt_T_61,_x7_syndromeUInt_T_58,_x7_syndromeUInt_T_55,
    _x7_syndromeUInt_T_52,_x7_syndromeUInt_T_49,_x7_syndromeUInt_T_46,_x7_syndromeUInt_T_43,
    bankedData_2_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire [63:0] _x7_syndromeUInt_T_63 = 64'hab55555556aaad5b & bankedData_3_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_64 = ^_x7_syndromeUInt_T_63; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_66 = 64'hcd9999999b33366d & bankedData_3_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_67 = ^_x7_syndromeUInt_T_66; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_69 = 64'hf1e1e1e1e3c3c78e & bankedData_3_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_70 = ^_x7_syndromeUInt_T_69; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_72 = 64'h1fe01fe03fc07f0 & bankedData_3_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_73 = ^_x7_syndromeUInt_T_72; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_75 = 64'h1fffe0003fff800 & bankedData_3_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_76 = ^_x7_syndromeUInt_T_75; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_78 = 64'h1fffffffc000000 & bankedData_3_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_79 = ^_x7_syndromeUInt_T_78; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_81 = 64'hfe00000000000000 & bankedData_3_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_82 = ^_x7_syndromeUInt_T_81; // @[ECC.scala 147:79]
  wire [70:0] _x7_T_18 = {_x7_syndromeUInt_T_82,_x7_syndromeUInt_T_79,_x7_syndromeUInt_T_76,_x7_syndromeUInt_T_73,
    _x7_syndromeUInt_T_70,_x7_syndromeUInt_T_67,_x7_syndromeUInt_T_64,bankedData_3_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire  _x7_T_19 = ^_x7_T_18; // @[ECC.scala 81:55]
  wire [71:0] _x7_T_21 = {_x7_T_19,_x7_syndromeUInt_T_82,_x7_syndromeUInt_T_79,_x7_syndromeUInt_T_76,
    _x7_syndromeUInt_T_73,_x7_syndromeUInt_T_70,_x7_syndromeUInt_T_67,_x7_syndromeUInt_T_64,
    bankedData_3_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire [15:0] x7_lo = {_x7_T_9[71:64],_x7_T_3[71:64]}; // @[DataStorage.scala 201:18]
  wire [15:0] x7_hi = {_x7_T_21[71:64],_x7_T_15[71:64]}; // @[DataStorage.scala 201:18]
  wire [31:0] _eccInfo_WIRE = dataEccArray_0_io_rresp_data_0;
  wire [7:0] eccInfo__0 = _eccInfo_WIRE[7:0]; // @[DataStorage.scala 206:56]
  wire [7:0] eccInfo__1 = _eccInfo_WIRE[15:8]; // @[DataStorage.scala 206:56]
  wire [7:0] eccInfo__2 = _eccInfo_WIRE[23:16]; // @[DataStorage.scala 206:56]
  wire [7:0] eccInfo__3 = _eccInfo_WIRE[31:24]; // @[DataStorage.scala 206:56]
  wire [71:0] _error_0_T = {eccInfo__0,bankedData_0_io_rresp_data_0}; // @[DataStorage.scala 209:22]
  wire [70:0] _error_0_syndromeUInt_T = 71'h1ab55555556aaad5b & _error_0_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_0_syndromeUInt_T_2 = 71'h2cd9999999b33366d & _error_0_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_0_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & _error_0_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_0_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & _error_0_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_0_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & _error_0_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_0_syndromeUInt_T_10 = 71'h2001fffffffc000000 & _error_0_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_0_syndromeUInt_T_12 = 71'h40fe00000000000000 & _error_0_T[70:0]; // @[ECC.scala 156:66]
  wire [6:0] error_0_syndromeUInt = {^_error_0_syndromeUInt_T_12,^_error_0_syndromeUInt_T_10,^_error_0_syndromeUInt_T_8,
    ^_error_0_syndromeUInt_T_6,^_error_0_syndromeUInt_T_4,^_error_0_syndromeUInt_T_2,^_error_0_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  error_0_correctable = |error_0_syndromeUInt; // @[ECC.scala 163:36]
  wire  error_0_uncorrectable_1 = ^_error_0_T; // @[ECC.scala 87:27]
  wire  error_0_uncorrectable_2 = ~error_0_uncorrectable_1 & error_0_correctable; // @[ECC.scala 195:47]
  wire [71:0] _error_1_T = {eccInfo__1,bankedData_1_io_rresp_data_0}; // @[DataStorage.scala 209:22]
  wire [70:0] _error_1_syndromeUInt_T = 71'h1ab55555556aaad5b & _error_1_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_1_syndromeUInt_T_2 = 71'h2cd9999999b33366d & _error_1_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_1_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & _error_1_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_1_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & _error_1_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_1_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & _error_1_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_1_syndromeUInt_T_10 = 71'h2001fffffffc000000 & _error_1_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_1_syndromeUInt_T_12 = 71'h40fe00000000000000 & _error_1_T[70:0]; // @[ECC.scala 156:66]
  wire [6:0] error_1_syndromeUInt = {^_error_1_syndromeUInt_T_12,^_error_1_syndromeUInt_T_10,^_error_1_syndromeUInt_T_8,
    ^_error_1_syndromeUInt_T_6,^_error_1_syndromeUInt_T_4,^_error_1_syndromeUInt_T_2,^_error_1_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  error_1_correctable = |error_1_syndromeUInt; // @[ECC.scala 163:36]
  wire  error_1_uncorrectable_1 = ^_error_1_T; // @[ECC.scala 87:27]
  wire  error_1_uncorrectable_2 = ~error_1_uncorrectable_1 & error_1_correctable; // @[ECC.scala 195:47]
  wire [71:0] _error_2_T = {eccInfo__2,bankedData_2_io_rresp_data_0}; // @[DataStorage.scala 209:22]
  wire [70:0] _error_2_syndromeUInt_T = 71'h1ab55555556aaad5b & _error_2_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_2_syndromeUInt_T_2 = 71'h2cd9999999b33366d & _error_2_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_2_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & _error_2_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_2_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & _error_2_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_2_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & _error_2_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_2_syndromeUInt_T_10 = 71'h2001fffffffc000000 & _error_2_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_2_syndromeUInt_T_12 = 71'h40fe00000000000000 & _error_2_T[70:0]; // @[ECC.scala 156:66]
  wire [6:0] error_2_syndromeUInt = {^_error_2_syndromeUInt_T_12,^_error_2_syndromeUInt_T_10,^_error_2_syndromeUInt_T_8,
    ^_error_2_syndromeUInt_T_6,^_error_2_syndromeUInt_T_4,^_error_2_syndromeUInt_T_2,^_error_2_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  error_2_correctable = |error_2_syndromeUInt; // @[ECC.scala 163:36]
  wire  error_2_uncorrectable_1 = ^_error_2_T; // @[ECC.scala 87:27]
  wire  error_2_uncorrectable_2 = ~error_2_uncorrectable_1 & error_2_correctable; // @[ECC.scala 195:47]
  wire [71:0] _error_3_T = {eccInfo__3,bankedData_3_io_rresp_data_0}; // @[DataStorage.scala 209:22]
  wire [70:0] _error_3_syndromeUInt_T = 71'h1ab55555556aaad5b & _error_3_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_3_syndromeUInt_T_2 = 71'h2cd9999999b33366d & _error_3_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_3_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & _error_3_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_3_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & _error_3_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_3_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & _error_3_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_3_syndromeUInt_T_10 = 71'h2001fffffffc000000 & _error_3_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_3_syndromeUInt_T_12 = 71'h40fe00000000000000 & _error_3_T[70:0]; // @[ECC.scala 156:66]
  wire [6:0] error_3_syndromeUInt = {^_error_3_syndromeUInt_T_12,^_error_3_syndromeUInt_T_10,^_error_3_syndromeUInt_T_8,
    ^_error_3_syndromeUInt_T_6,^_error_3_syndromeUInt_T_4,^_error_3_syndromeUInt_T_2,^_error_3_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  error_3_correctable = |error_3_syndromeUInt; // @[ECC.scala 163:36]
  wire  error_3_uncorrectable_1 = ^_error_3_T; // @[ECC.scala 87:27]
  wire  error_3_uncorrectable_2 = ~error_3_uncorrectable_1 & error_3_correctable; // @[ECC.scala 195:47]
  wire [63:0] _x7_syndromeUInt_T_84 = 64'hab55555556aaad5b & bankedData_4_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_85 = ^_x7_syndromeUInt_T_84; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_87 = 64'hcd9999999b33366d & bankedData_4_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_88 = ^_x7_syndromeUInt_T_87; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_90 = 64'hf1e1e1e1e3c3c78e & bankedData_4_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_91 = ^_x7_syndromeUInt_T_90; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_93 = 64'h1fe01fe03fc07f0 & bankedData_4_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_94 = ^_x7_syndromeUInt_T_93; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_96 = 64'h1fffe0003fff800 & bankedData_4_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_97 = ^_x7_syndromeUInt_T_96; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_99 = 64'h1fffffffc000000 & bankedData_4_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_100 = ^_x7_syndromeUInt_T_99; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_102 = 64'hfe00000000000000 & bankedData_4_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_103 = ^_x7_syndromeUInt_T_102; // @[ECC.scala 147:79]
  wire [70:0] _x7_T_24 = {_x7_syndromeUInt_T_103,_x7_syndromeUInt_T_100,_x7_syndromeUInt_T_97,_x7_syndromeUInt_T_94,
    _x7_syndromeUInt_T_91,_x7_syndromeUInt_T_88,_x7_syndromeUInt_T_85,bankedData_4_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire  _x7_T_25 = ^_x7_T_24; // @[ECC.scala 81:55]
  wire [71:0] _x7_T_27 = {_x7_T_25,_x7_syndromeUInt_T_103,_x7_syndromeUInt_T_100,_x7_syndromeUInt_T_97,
    _x7_syndromeUInt_T_94,_x7_syndromeUInt_T_91,_x7_syndromeUInt_T_88,_x7_syndromeUInt_T_85,
    bankedData_4_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire [63:0] _x7_syndromeUInt_T_105 = 64'hab55555556aaad5b & bankedData_5_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_106 = ^_x7_syndromeUInt_T_105; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_108 = 64'hcd9999999b33366d & bankedData_5_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_109 = ^_x7_syndromeUInt_T_108; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_111 = 64'hf1e1e1e1e3c3c78e & bankedData_5_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_112 = ^_x7_syndromeUInt_T_111; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_114 = 64'h1fe01fe03fc07f0 & bankedData_5_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_115 = ^_x7_syndromeUInt_T_114; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_117 = 64'h1fffe0003fff800 & bankedData_5_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_118 = ^_x7_syndromeUInt_T_117; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_120 = 64'h1fffffffc000000 & bankedData_5_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_121 = ^_x7_syndromeUInt_T_120; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_123 = 64'hfe00000000000000 & bankedData_5_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_124 = ^_x7_syndromeUInt_T_123; // @[ECC.scala 147:79]
  wire [70:0] _x7_T_30 = {_x7_syndromeUInt_T_124,_x7_syndromeUInt_T_121,_x7_syndromeUInt_T_118,_x7_syndromeUInt_T_115,
    _x7_syndromeUInt_T_112,_x7_syndromeUInt_T_109,_x7_syndromeUInt_T_106,bankedData_5_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire  _x7_T_31 = ^_x7_T_30; // @[ECC.scala 81:55]
  wire [71:0] _x7_T_33 = {_x7_T_31,_x7_syndromeUInt_T_124,_x7_syndromeUInt_T_121,_x7_syndromeUInt_T_118,
    _x7_syndromeUInt_T_115,_x7_syndromeUInt_T_112,_x7_syndromeUInt_T_109,_x7_syndromeUInt_T_106,
    bankedData_5_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire [63:0] _x7_syndromeUInt_T_126 = 64'hab55555556aaad5b & bankedData_6_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_127 = ^_x7_syndromeUInt_T_126; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_129 = 64'hcd9999999b33366d & bankedData_6_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_130 = ^_x7_syndromeUInt_T_129; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_132 = 64'hf1e1e1e1e3c3c78e & bankedData_6_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_133 = ^_x7_syndromeUInt_T_132; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_135 = 64'h1fe01fe03fc07f0 & bankedData_6_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_136 = ^_x7_syndromeUInt_T_135; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_138 = 64'h1fffe0003fff800 & bankedData_6_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_139 = ^_x7_syndromeUInt_T_138; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_141 = 64'h1fffffffc000000 & bankedData_6_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_142 = ^_x7_syndromeUInt_T_141; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_144 = 64'hfe00000000000000 & bankedData_6_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_145 = ^_x7_syndromeUInt_T_144; // @[ECC.scala 147:79]
  wire [70:0] _x7_T_36 = {_x7_syndromeUInt_T_145,_x7_syndromeUInt_T_142,_x7_syndromeUInt_T_139,_x7_syndromeUInt_T_136,
    _x7_syndromeUInt_T_133,_x7_syndromeUInt_T_130,_x7_syndromeUInt_T_127,bankedData_6_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire  _x7_T_37 = ^_x7_T_36; // @[ECC.scala 81:55]
  wire [71:0] _x7_T_39 = {_x7_T_37,_x7_syndromeUInt_T_145,_x7_syndromeUInt_T_142,_x7_syndromeUInt_T_139,
    _x7_syndromeUInt_T_136,_x7_syndromeUInt_T_133,_x7_syndromeUInt_T_130,_x7_syndromeUInt_T_127,
    bankedData_6_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire [63:0] _x7_syndromeUInt_T_147 = 64'hab55555556aaad5b & bankedData_7_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_148 = ^_x7_syndromeUInt_T_147; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_150 = 64'hcd9999999b33366d & bankedData_7_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_151 = ^_x7_syndromeUInt_T_150; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_153 = 64'hf1e1e1e1e3c3c78e & bankedData_7_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_154 = ^_x7_syndromeUInt_T_153; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_156 = 64'h1fe01fe03fc07f0 & bankedData_7_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_157 = ^_x7_syndromeUInt_T_156; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_159 = 64'h1fffe0003fff800 & bankedData_7_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_160 = ^_x7_syndromeUInt_T_159; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_162 = 64'h1fffffffc000000 & bankedData_7_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_163 = ^_x7_syndromeUInt_T_162; // @[ECC.scala 147:79]
  wire [63:0] _x7_syndromeUInt_T_165 = 64'hfe00000000000000 & bankedData_7_io_wreq_bits_data_0; // @[ECC.scala 147:74]
  wire  _x7_syndromeUInt_T_166 = ^_x7_syndromeUInt_T_165; // @[ECC.scala 147:79]
  wire [70:0] _x7_T_42 = {_x7_syndromeUInt_T_166,_x7_syndromeUInt_T_163,_x7_syndromeUInt_T_160,_x7_syndromeUInt_T_157,
    _x7_syndromeUInt_T_154,_x7_syndromeUInt_T_151,_x7_syndromeUInt_T_148,bankedData_7_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire  _x7_T_43 = ^_x7_T_42; // @[ECC.scala 81:55]
  wire [71:0] _x7_T_45 = {_x7_T_43,_x7_syndromeUInt_T_166,_x7_syndromeUInt_T_163,_x7_syndromeUInt_T_160,
    _x7_syndromeUInt_T_157,_x7_syndromeUInt_T_154,_x7_syndromeUInt_T_151,_x7_syndromeUInt_T_148,
    bankedData_7_io_wreq_bits_data_0}; // @[Cat.scala 31:58]
  wire [15:0] x7_lo_1 = {_x7_T_33[71:64],_x7_T_27[71:64]}; // @[DataStorage.scala 201:18]
  wire [15:0] x7_hi_1 = {_x7_T_45[71:64],_x7_T_39[71:64]}; // @[DataStorage.scala 201:18]
  wire [31:0] _eccInfo_WIRE_1 = dataEccArray_1_io_rresp_data_0;
  wire [7:0] eccInfo_1_0 = _eccInfo_WIRE_1[7:0]; // @[DataStorage.scala 206:56]
  wire [7:0] eccInfo_1_1 = _eccInfo_WIRE_1[15:8]; // @[DataStorage.scala 206:56]
  wire [7:0] eccInfo_1_2 = _eccInfo_WIRE_1[23:16]; // @[DataStorage.scala 206:56]
  wire [7:0] eccInfo_1_3 = _eccInfo_WIRE_1[31:24]; // @[DataStorage.scala 206:56]
  wire [71:0] _error_4_T = {eccInfo_1_0,bankedData_4_io_rresp_data_0}; // @[DataStorage.scala 209:22]
  wire [70:0] _error_4_syndromeUInt_T = 71'h1ab55555556aaad5b & _error_4_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_4_syndromeUInt_T_2 = 71'h2cd9999999b33366d & _error_4_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_4_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & _error_4_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_4_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & _error_4_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_4_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & _error_4_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_4_syndromeUInt_T_10 = 71'h2001fffffffc000000 & _error_4_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_4_syndromeUInt_T_12 = 71'h40fe00000000000000 & _error_4_T[70:0]; // @[ECC.scala 156:66]
  wire [6:0] error_4_syndromeUInt = {^_error_4_syndromeUInt_T_12,^_error_4_syndromeUInt_T_10,^_error_4_syndromeUInt_T_8,
    ^_error_4_syndromeUInt_T_6,^_error_4_syndromeUInt_T_4,^_error_4_syndromeUInt_T_2,^_error_4_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  error_4_correctable = |error_4_syndromeUInt; // @[ECC.scala 163:36]
  wire  error_4_uncorrectable_1 = ^_error_4_T; // @[ECC.scala 87:27]
  wire  error_4_uncorrectable_2 = ~error_4_uncorrectable_1 & error_4_correctable; // @[ECC.scala 195:47]
  wire [71:0] _error_5_T = {eccInfo_1_1,bankedData_5_io_rresp_data_0}; // @[DataStorage.scala 209:22]
  wire [70:0] _error_5_syndromeUInt_T = 71'h1ab55555556aaad5b & _error_5_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_5_syndromeUInt_T_2 = 71'h2cd9999999b33366d & _error_5_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_5_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & _error_5_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_5_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & _error_5_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_5_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & _error_5_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_5_syndromeUInt_T_10 = 71'h2001fffffffc000000 & _error_5_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_5_syndromeUInt_T_12 = 71'h40fe00000000000000 & _error_5_T[70:0]; // @[ECC.scala 156:66]
  wire [6:0] error_5_syndromeUInt = {^_error_5_syndromeUInt_T_12,^_error_5_syndromeUInt_T_10,^_error_5_syndromeUInt_T_8,
    ^_error_5_syndromeUInt_T_6,^_error_5_syndromeUInt_T_4,^_error_5_syndromeUInt_T_2,^_error_5_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  error_5_correctable = |error_5_syndromeUInt; // @[ECC.scala 163:36]
  wire  error_5_uncorrectable_1 = ^_error_5_T; // @[ECC.scala 87:27]
  wire  error_5_uncorrectable_2 = ~error_5_uncorrectable_1 & error_5_correctable; // @[ECC.scala 195:47]
  wire [71:0] _error_6_T = {eccInfo_1_2,bankedData_6_io_rresp_data_0}; // @[DataStorage.scala 209:22]
  wire [70:0] _error_6_syndromeUInt_T = 71'h1ab55555556aaad5b & _error_6_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_6_syndromeUInt_T_2 = 71'h2cd9999999b33366d & _error_6_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_6_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & _error_6_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_6_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & _error_6_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_6_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & _error_6_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_6_syndromeUInt_T_10 = 71'h2001fffffffc000000 & _error_6_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_6_syndromeUInt_T_12 = 71'h40fe00000000000000 & _error_6_T[70:0]; // @[ECC.scala 156:66]
  wire [6:0] error_6_syndromeUInt = {^_error_6_syndromeUInt_T_12,^_error_6_syndromeUInt_T_10,^_error_6_syndromeUInt_T_8,
    ^_error_6_syndromeUInt_T_6,^_error_6_syndromeUInt_T_4,^_error_6_syndromeUInt_T_2,^_error_6_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  error_6_correctable = |error_6_syndromeUInt; // @[ECC.scala 163:36]
  wire  error_6_uncorrectable_1 = ^_error_6_T; // @[ECC.scala 87:27]
  wire  error_6_uncorrectable_2 = ~error_6_uncorrectable_1 & error_6_correctable; // @[ECC.scala 195:47]
  wire [71:0] _error_7_T = {eccInfo_1_3,bankedData_7_io_rresp_data_0}; // @[DataStorage.scala 209:22]
  wire [70:0] _error_7_syndromeUInt_T = 71'h1ab55555556aaad5b & _error_7_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_7_syndromeUInt_T_2 = 71'h2cd9999999b33366d & _error_7_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_7_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & _error_7_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_7_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & _error_7_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_7_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & _error_7_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_7_syndromeUInt_T_10 = 71'h2001fffffffc000000 & _error_7_T[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _error_7_syndromeUInt_T_12 = 71'h40fe00000000000000 & _error_7_T[70:0]; // @[ECC.scala 156:66]
  wire [6:0] error_7_syndromeUInt = {^_error_7_syndromeUInt_T_12,^_error_7_syndromeUInt_T_10,^_error_7_syndromeUInt_T_8,
    ^_error_7_syndromeUInt_T_6,^_error_7_syndromeUInt_T_4,^_error_7_syndromeUInt_T_2,^_error_7_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  error_7_correctable = |error_7_syndromeUInt; // @[ECC.scala 163:36]
  wire  error_7_uncorrectable_1 = ^_error_7_T; // @[ECC.scala 87:27]
  wire  error_7_uncorrectable_2 = ~error_7_uncorrectable_1 & error_7_correctable; // @[ECC.scala 195:47]
  wire [127:0] io_sourceD_rdata_data_lo = {DataSel_1_io_out_0,DataSel_io_out_0}; // @[Cat.scala 31:58]
  wire [127:0] io_sourceD_rdata_data_hi = {DataSel_3_io_out_0,DataSel_2_io_out_0}; // @[Cat.scala 31:58]
  wire [3:0] _io_sourceD_rdata_corrupt_T = {DataSel_io_err_out_0,DataSel_1_io_err_out_0,DataSel_2_io_err_out_0,
    DataSel_3_io_err_out_0}; // @[Cat.scala 31:58]
  wire [127:0] io_sourceC_rdata_data_lo = {DataSel_1_io_out_1,DataSel_io_out_1}; // @[Cat.scala 31:58]
  wire [127:0] io_sourceC_rdata_data_hi = {DataSel_3_io_out_1,DataSel_2_io_out_1}; // @[Cat.scala 31:58]
  wire [3:0] _io_sourceC_rdata_corrupt_T = {DataSel_io_err_out_1,DataSel_1_io_err_out_1,DataSel_2_io_err_out_1,
    DataSel_3_io_err_out_1}; // @[Cat.scala 31:58]
  reg [2:0] d_addr_reg_REG_way; // @[Pipeline.scala 42:31]
  reg [7:0] d_addr_reg_REG_set; // @[Pipeline.scala 42:31]
  reg  d_addr_reg_REG_beat; // @[Pipeline.scala 42:31]
  reg [2:0] d_addr_reg_REG_1_way; // @[Pipeline.scala 42:31]
  reg [7:0] d_addr_reg_REG_1_set; // @[Pipeline.scala 42:31]
  reg  d_addr_reg_REG_1_beat; // @[Pipeline.scala 42:31]
  reg [2:0] d_addr_reg_way; // @[Pipeline.scala 42:31]
  reg [7:0] d_addr_reg_set; // @[Pipeline.scala 42:31]
  reg  d_addr_reg_beat; // @[Pipeline.scala 42:31]
  reg [2:0] c_addr_reg_REG_way; // @[Pipeline.scala 42:31]
  reg [7:0] c_addr_reg_REG_set; // @[Pipeline.scala 42:31]
  reg  c_addr_reg_REG_beat; // @[Pipeline.scala 42:31]
  reg [2:0] c_addr_reg_REG_1_way; // @[Pipeline.scala 42:31]
  reg [7:0] c_addr_reg_REG_1_set; // @[Pipeline.scala 42:31]
  reg  c_addr_reg_REG_1_beat; // @[Pipeline.scala 42:31]
  reg [2:0] c_addr_reg_way; // @[Pipeline.scala 42:31]
  reg [7:0] c_addr_reg_set; // @[Pipeline.scala 42:31]
  reg  c_addr_reg_beat; // @[Pipeline.scala 42:31]
  wire [11:0] _io_ecc_bits_addr_T = {d_addr_reg_set,d_addr_reg_way,d_addr_reg_beat}; // @[Cat.scala 31:58]
  wire [11:0] _io_ecc_bits_addr_T_1 = {c_addr_reg_set,c_addr_reg_way,c_addr_reg_beat}; // @[Cat.scala 31:58]
  wire [11:0] _io_ecc_bits_addr_T_2 = io_sourceD_rdata_corrupt ? _io_ecc_bits_addr_T : _io_ecc_bits_addr_T_1; // @[DataStorage.scala 244:26]
  wire  bank_en_2 = en_2; // @[DataStorage.scala 171:45]
  wire  bank_en_3 = en_3; // @[DataStorage.scala 171:45]
  wire  bank_en_0 = en; // @[DataStorage.scala 171:45]
  wire  bank_en_1 = en_1; // @[DataStorage.scala 171:45]
  wire  bank_en_6 = en_6; // @[DataStorage.scala 171:45]
  wire  bank_en_7 = en_7; // @[DataStorage.scala 171:45]
  wire  bank_en_4 = en_4; // @[DataStorage.scala 171:45]
  wire  bank_en_5 = en_5; // @[DataStorage.scala 171:45]
  wire  sel_req_0_wen = selectedReq_wen; // @[Mux.scala 47:70]
  wire [511:0] sel_req_0_index = selectedReq_index; // @[Mux.scala 47:70]
  wire [7:0] sel_req_0_bankSel = selectedReq_bankSel; // @[Mux.scala 47:70]
  wire [7:0] sel_req_0_bankSum = selectedReq_bankSum; // @[Mux.scala 47:70]
  wire [7:0] sel_req_0_bankEn = selectedReq_bankEn; // @[Mux.scala 47:70]
  wire [63:0] sel_req_0_data_0 = selectedReq_data_0; // @[Mux.scala 47:70]
  wire [63:0] sel_req_0_data_1 = selectedReq_data_1; // @[Mux.scala 47:70]
  wire [63:0] sel_req_0_data_2 = selectedReq_data_2; // @[Mux.scala 47:70]
  wire [63:0] sel_req_0_data_3 = selectedReq_data_3; // @[Mux.scala 47:70]
  wire [63:0] sel_req_0_data_4 = selectedReq_data_4; // @[Mux.scala 47:70]
  wire [63:0] sel_req_0_data_5 = selectedReq_data_5; // @[Mux.scala 47:70]
  wire [63:0] sel_req_0_data_6 = selectedReq_data_6; // @[Mux.scala 47:70]
  wire [63:0] sel_req_0_data_7 = selectedReq_data_7; // @[Mux.scala 47:70]
  wire  sel_req_1_wen = selectedReq_1_wen; // @[Mux.scala 47:70]
  wire [511:0] sel_req_1_index = selectedReq_1_index; // @[Mux.scala 47:70]
  wire [7:0] sel_req_1_bankSel = selectedReq_1_bankSel; // @[Mux.scala 47:70]
  wire [7:0] sel_req_1_bankSum = selectedReq_1_bankSum; // @[Mux.scala 47:70]
  wire [7:0] sel_req_1_bankEn = selectedReq_1_bankEn; // @[Mux.scala 47:70]
  wire [63:0] sel_req_1_data_0 = selectedReq_1_data_0; // @[Mux.scala 47:70]
  wire [63:0] sel_req_1_data_1 = selectedReq_1_data_1; // @[Mux.scala 47:70]
  wire [63:0] sel_req_1_data_2 = selectedReq_1_data_2; // @[Mux.scala 47:70]
  wire [63:0] sel_req_1_data_3 = selectedReq_1_data_3; // @[Mux.scala 47:70]
  wire [63:0] sel_req_1_data_4 = selectedReq_1_data_4; // @[Mux.scala 47:70]
  wire [63:0] sel_req_1_data_5 = selectedReq_1_data_5; // @[Mux.scala 47:70]
  wire [63:0] sel_req_1_data_6 = selectedReq_1_data_6; // @[Mux.scala 47:70]
  wire [63:0] sel_req_1_data_7 = selectedReq_1_data_7; // @[Mux.scala 47:70]
  wire  sel_req_2_wen = selectedReq_2_wen; // @[Mux.scala 47:70]
  wire [511:0] sel_req_2_index = selectedReq_2_index; // @[Mux.scala 47:70]
  wire [7:0] sel_req_2_bankSel = selectedReq_2_bankSel; // @[Mux.scala 47:70]
  wire [7:0] sel_req_2_bankSum = selectedReq_2_bankSum; // @[Mux.scala 47:70]
  wire [7:0] sel_req_2_bankEn = selectedReq_2_bankEn; // @[Mux.scala 47:70]
  wire [63:0] sel_req_2_data_0 = selectedReq_2_data_0; // @[Mux.scala 47:70]
  wire [63:0] sel_req_2_data_1 = selectedReq_2_data_1; // @[Mux.scala 47:70]
  wire [63:0] sel_req_2_data_2 = selectedReq_2_data_2; // @[Mux.scala 47:70]
  wire [63:0] sel_req_2_data_3 = selectedReq_2_data_3; // @[Mux.scala 47:70]
  wire [63:0] sel_req_2_data_4 = selectedReq_2_data_4; // @[Mux.scala 47:70]
  wire [63:0] sel_req_2_data_5 = selectedReq_2_data_5; // @[Mux.scala 47:70]
  wire [63:0] sel_req_2_data_6 = selectedReq_2_data_6; // @[Mux.scala 47:70]
  wire [63:0] sel_req_2_data_7 = selectedReq_2_data_7; // @[Mux.scala 47:70]
  wire  sel_req_3_wen = selectedReq_3_wen; // @[Mux.scala 47:70]
  wire [511:0] sel_req_3_index = selectedReq_3_index; // @[Mux.scala 47:70]
  wire [7:0] sel_req_3_bankSel = selectedReq_3_bankSel; // @[Mux.scala 47:70]
  wire [7:0] sel_req_3_bankSum = selectedReq_3_bankSum; // @[Mux.scala 47:70]
  wire [7:0] sel_req_3_bankEn = selectedReq_3_bankEn; // @[Mux.scala 47:70]
  wire [63:0] sel_req_3_data_0 = selectedReq_3_data_0; // @[Mux.scala 47:70]
  wire [63:0] sel_req_3_data_1 = selectedReq_3_data_1; // @[Mux.scala 47:70]
  wire [63:0] sel_req_3_data_2 = selectedReq_3_data_2; // @[Mux.scala 47:70]
  wire [63:0] sel_req_3_data_3 = selectedReq_3_data_3; // @[Mux.scala 47:70]
  wire [63:0] sel_req_3_data_4 = selectedReq_3_data_4; // @[Mux.scala 47:70]
  wire [63:0] sel_req_3_data_5 = selectedReq_3_data_5; // @[Mux.scala 47:70]
  wire [63:0] sel_req_3_data_6 = selectedReq_3_data_6; // @[Mux.scala 47:70]
  wire [63:0] sel_req_3_data_7 = selectedReq_3_data_7; // @[Mux.scala 47:70]
  wire  sel_req_4_wen = selectedReq_4_wen; // @[Mux.scala 47:70]
  wire [511:0] sel_req_4_index = selectedReq_4_index; // @[Mux.scala 47:70]
  wire [7:0] sel_req_4_bankSel = selectedReq_4_bankSel; // @[Mux.scala 47:70]
  wire [7:0] sel_req_4_bankSum = selectedReq_4_bankSum; // @[Mux.scala 47:70]
  wire [7:0] sel_req_4_bankEn = selectedReq_4_bankEn; // @[Mux.scala 47:70]
  wire [63:0] sel_req_4_data_0 = selectedReq_4_data_0; // @[Mux.scala 47:70]
  wire [63:0] sel_req_4_data_1 = selectedReq_4_data_1; // @[Mux.scala 47:70]
  wire [63:0] sel_req_4_data_2 = selectedReq_4_data_2; // @[Mux.scala 47:70]
  wire [63:0] sel_req_4_data_3 = selectedReq_4_data_3; // @[Mux.scala 47:70]
  wire [63:0] sel_req_4_data_4 = selectedReq_4_data_4; // @[Mux.scala 47:70]
  wire [63:0] sel_req_4_data_5 = selectedReq_4_data_5; // @[Mux.scala 47:70]
  wire [63:0] sel_req_4_data_6 = selectedReq_4_data_6; // @[Mux.scala 47:70]
  wire [63:0] sel_req_4_data_7 = selectedReq_4_data_7; // @[Mux.scala 47:70]
  wire  sel_req_5_wen = selectedReq_5_wen; // @[Mux.scala 47:70]
  wire [511:0] sel_req_5_index = selectedReq_5_index; // @[Mux.scala 47:70]
  wire [7:0] sel_req_5_bankSel = selectedReq_5_bankSel; // @[Mux.scala 47:70]
  wire [7:0] sel_req_5_bankSum = selectedReq_5_bankSum; // @[Mux.scala 47:70]
  wire [7:0] sel_req_5_bankEn = selectedReq_5_bankEn; // @[Mux.scala 47:70]
  wire [63:0] sel_req_5_data_0 = selectedReq_5_data_0; // @[Mux.scala 47:70]
  wire [63:0] sel_req_5_data_1 = selectedReq_5_data_1; // @[Mux.scala 47:70]
  wire [63:0] sel_req_5_data_2 = selectedReq_5_data_2; // @[Mux.scala 47:70]
  wire [63:0] sel_req_5_data_3 = selectedReq_5_data_3; // @[Mux.scala 47:70]
  wire [63:0] sel_req_5_data_4 = selectedReq_5_data_4; // @[Mux.scala 47:70]
  wire [63:0] sel_req_5_data_5 = selectedReq_5_data_5; // @[Mux.scala 47:70]
  wire [63:0] sel_req_5_data_6 = selectedReq_5_data_6; // @[Mux.scala 47:70]
  wire [63:0] sel_req_5_data_7 = selectedReq_5_data_7; // @[Mux.scala 47:70]
  wire  sel_req_6_wen = selectedReq_6_wen; // @[Mux.scala 47:70]
  wire [511:0] sel_req_6_index = selectedReq_6_index; // @[Mux.scala 47:70]
  wire [7:0] sel_req_6_bankSel = selectedReq_6_bankSel; // @[Mux.scala 47:70]
  wire [7:0] sel_req_6_bankSum = selectedReq_6_bankSum; // @[Mux.scala 47:70]
  wire [7:0] sel_req_6_bankEn = selectedReq_6_bankEn; // @[Mux.scala 47:70]
  wire [63:0] sel_req_6_data_0 = selectedReq_6_data_0; // @[Mux.scala 47:70]
  wire [63:0] sel_req_6_data_1 = selectedReq_6_data_1; // @[Mux.scala 47:70]
  wire [63:0] sel_req_6_data_2 = selectedReq_6_data_2; // @[Mux.scala 47:70]
  wire [63:0] sel_req_6_data_3 = selectedReq_6_data_3; // @[Mux.scala 47:70]
  wire [63:0] sel_req_6_data_4 = selectedReq_6_data_4; // @[Mux.scala 47:70]
  wire [63:0] sel_req_6_data_5 = selectedReq_6_data_5; // @[Mux.scala 47:70]
  wire [63:0] sel_req_6_data_6 = selectedReq_6_data_6; // @[Mux.scala 47:70]
  wire [63:0] sel_req_6_data_7 = selectedReq_6_data_7; // @[Mux.scala 47:70]
  wire  sel_req_7_wen = selectedReq_7_wen; // @[Mux.scala 47:70]
  wire [511:0] sel_req_7_index = selectedReq_7_index; // @[Mux.scala 47:70]
  wire [7:0] sel_req_7_bankSel = selectedReq_7_bankSel; // @[Mux.scala 47:70]
  wire [7:0] sel_req_7_bankSum = selectedReq_7_bankSum; // @[Mux.scala 47:70]
  wire [7:0] sel_req_7_bankEn = selectedReq_7_bankEn; // @[Mux.scala 47:70]
  wire [63:0] sel_req_7_data_0 = selectedReq_7_data_0; // @[Mux.scala 47:70]
  wire [63:0] sel_req_7_data_1 = selectedReq_7_data_1; // @[Mux.scala 47:70]
  wire [63:0] sel_req_7_data_2 = selectedReq_7_data_2; // @[Mux.scala 47:70]
  wire [63:0] sel_req_7_data_3 = selectedReq_7_data_3; // @[Mux.scala 47:70]
  wire [63:0] sel_req_7_data_4 = selectedReq_7_data_4; // @[Mux.scala 47:70]
  wire [63:0] sel_req_7_data_5 = selectedReq_7_data_5; // @[Mux.scala 47:70]
  wire [63:0] sel_req_7_data_6 = selectedReq_7_data_6; // @[Mux.scala 47:70]
  wire [63:0] sel_req_7_data_7 = selectedReq_7_data_7; // @[Mux.scala 47:70]
  SRAMWrapper bankedData_0 ( // @[DataStorage.scala 64:11]
    .clock(bankedData_0_clock),
    .reset(bankedData_0_reset),
    .io_rreq_valid(bankedData_0_io_rreq_valid),
    .io_rreq_bits_setIdx(bankedData_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(bankedData_0_io_rresp_data_0),
    .io_wreq_valid(bankedData_0_io_wreq_valid),
    .io_wreq_bits_setIdx(bankedData_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(bankedData_0_io_wreq_bits_data_0)
  );
  SRAMWrapper bankedData_1 ( // @[DataStorage.scala 64:11]
    .clock(bankedData_1_clock),
    .reset(bankedData_1_reset),
    .io_rreq_valid(bankedData_1_io_rreq_valid),
    .io_rreq_bits_setIdx(bankedData_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(bankedData_1_io_rresp_data_0),
    .io_wreq_valid(bankedData_1_io_wreq_valid),
    .io_wreq_bits_setIdx(bankedData_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(bankedData_1_io_wreq_bits_data_0)
  );
  SRAMWrapper bankedData_2 ( // @[DataStorage.scala 64:11]
    .clock(bankedData_2_clock),
    .reset(bankedData_2_reset),
    .io_rreq_valid(bankedData_2_io_rreq_valid),
    .io_rreq_bits_setIdx(bankedData_2_io_rreq_bits_setIdx),
    .io_rresp_data_0(bankedData_2_io_rresp_data_0),
    .io_wreq_valid(bankedData_2_io_wreq_valid),
    .io_wreq_bits_setIdx(bankedData_2_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(bankedData_2_io_wreq_bits_data_0)
  );
  SRAMWrapper bankedData_3 ( // @[DataStorage.scala 64:11]
    .clock(bankedData_3_clock),
    .reset(bankedData_3_reset),
    .io_rreq_valid(bankedData_3_io_rreq_valid),
    .io_rreq_bits_setIdx(bankedData_3_io_rreq_bits_setIdx),
    .io_rresp_data_0(bankedData_3_io_rresp_data_0),
    .io_wreq_valid(bankedData_3_io_wreq_valid),
    .io_wreq_bits_setIdx(bankedData_3_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(bankedData_3_io_wreq_bits_data_0)
  );
  SRAMWrapper bankedData_4 ( // @[DataStorage.scala 64:11]
    .clock(bankedData_4_clock),
    .reset(bankedData_4_reset),
    .io_rreq_valid(bankedData_4_io_rreq_valid),
    .io_rreq_bits_setIdx(bankedData_4_io_rreq_bits_setIdx),
    .io_rresp_data_0(bankedData_4_io_rresp_data_0),
    .io_wreq_valid(bankedData_4_io_wreq_valid),
    .io_wreq_bits_setIdx(bankedData_4_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(bankedData_4_io_wreq_bits_data_0)
  );
  SRAMWrapper bankedData_5 ( // @[DataStorage.scala 64:11]
    .clock(bankedData_5_clock),
    .reset(bankedData_5_reset),
    .io_rreq_valid(bankedData_5_io_rreq_valid),
    .io_rreq_bits_setIdx(bankedData_5_io_rreq_bits_setIdx),
    .io_rresp_data_0(bankedData_5_io_rresp_data_0),
    .io_wreq_valid(bankedData_5_io_wreq_valid),
    .io_wreq_bits_setIdx(bankedData_5_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(bankedData_5_io_wreq_bits_data_0)
  );
  SRAMWrapper bankedData_6 ( // @[DataStorage.scala 64:11]
    .clock(bankedData_6_clock),
    .reset(bankedData_6_reset),
    .io_rreq_valid(bankedData_6_io_rreq_valid),
    .io_rreq_bits_setIdx(bankedData_6_io_rreq_bits_setIdx),
    .io_rresp_data_0(bankedData_6_io_rresp_data_0),
    .io_wreq_valid(bankedData_6_io_wreq_valid),
    .io_wreq_bits_setIdx(bankedData_6_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(bankedData_6_io_wreq_bits_data_0)
  );
  SRAMWrapper bankedData_7 ( // @[DataStorage.scala 64:11]
    .clock(bankedData_7_clock),
    .reset(bankedData_7_reset),
    .io_rreq_valid(bankedData_7_io_rreq_valid),
    .io_rreq_bits_setIdx(bankedData_7_io_rreq_bits_setIdx),
    .io_rresp_data_0(bankedData_7_io_rresp_data_0),
    .io_wreq_valid(bankedData_7_io_wreq_valid),
    .io_wreq_bits_setIdx(bankedData_7_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(bankedData_7_io_wreq_bits_data_0)
  );
  SRAMWrapper_8 dataEccArray_0 ( // @[DataStorage.scala 75:13]
    .clock(dataEccArray_0_clock),
    .reset(dataEccArray_0_reset),
    .io_rreq_valid(dataEccArray_0_io_rreq_valid),
    .io_rreq_bits_setIdx(dataEccArray_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(dataEccArray_0_io_rresp_data_0),
    .io_wreq_valid(dataEccArray_0_io_wreq_valid),
    .io_wreq_bits_setIdx(dataEccArray_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(dataEccArray_0_io_wreq_bits_data_0)
  );
  SRAMWrapper_8 dataEccArray_1 ( // @[DataStorage.scala 75:13]
    .clock(dataEccArray_1_clock),
    .reset(dataEccArray_1_reset),
    .io_rreq_valid(dataEccArray_1_io_rreq_valid),
    .io_rreq_bits_setIdx(dataEccArray_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(dataEccArray_1_io_rresp_data_0),
    .io_wreq_valid(dataEccArray_1_io_wreq_valid),
    .io_wreq_bits_setIdx(dataEccArray_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(dataEccArray_1_io_wreq_bits_data_0)
  );
  DataSel DataSel ( // @[DataStorage.scala 218:11]
    .clock(DataSel_clock),
    .reset(DataSel_reset),
    .io_err_in_0(DataSel_io_err_in_0),
    .io_err_in_1(DataSel_io_err_in_1),
    .io_in_0(DataSel_io_in_0),
    .io_in_1(DataSel_io_in_1),
    .io_sel_0(DataSel_io_sel_0),
    .io_sel_1(DataSel_io_sel_1),
    .io_en_0(DataSel_io_en_0),
    .io_en_1(DataSel_io_en_1),
    .io_out_0(DataSel_io_out_0),
    .io_out_1(DataSel_io_out_1),
    .io_err_out_0(DataSel_io_err_out_0),
    .io_err_out_1(DataSel_io_err_out_1)
  );
  DataSel DataSel_1 ( // @[DataStorage.scala 218:11]
    .clock(DataSel_1_clock),
    .reset(DataSel_1_reset),
    .io_err_in_0(DataSel_1_io_err_in_0),
    .io_err_in_1(DataSel_1_io_err_in_1),
    .io_in_0(DataSel_1_io_in_0),
    .io_in_1(DataSel_1_io_in_1),
    .io_sel_0(DataSel_1_io_sel_0),
    .io_sel_1(DataSel_1_io_sel_1),
    .io_en_0(DataSel_1_io_en_0),
    .io_en_1(DataSel_1_io_en_1),
    .io_out_0(DataSel_1_io_out_0),
    .io_out_1(DataSel_1_io_out_1),
    .io_err_out_0(DataSel_1_io_err_out_0),
    .io_err_out_1(DataSel_1_io_err_out_1)
  );
  DataSel DataSel_2 ( // @[DataStorage.scala 218:11]
    .clock(DataSel_2_clock),
    .reset(DataSel_2_reset),
    .io_err_in_0(DataSel_2_io_err_in_0),
    .io_err_in_1(DataSel_2_io_err_in_1),
    .io_in_0(DataSel_2_io_in_0),
    .io_in_1(DataSel_2_io_in_1),
    .io_sel_0(DataSel_2_io_sel_0),
    .io_sel_1(DataSel_2_io_sel_1),
    .io_en_0(DataSel_2_io_en_0),
    .io_en_1(DataSel_2_io_en_1),
    .io_out_0(DataSel_2_io_out_0),
    .io_out_1(DataSel_2_io_out_1),
    .io_err_out_0(DataSel_2_io_err_out_0),
    .io_err_out_1(DataSel_2_io_err_out_1)
  );
  DataSel DataSel_3 ( // @[DataStorage.scala 218:11]
    .clock(DataSel_3_clock),
    .reset(DataSel_3_reset),
    .io_err_in_0(DataSel_3_io_err_in_0),
    .io_err_in_1(DataSel_3_io_err_in_1),
    .io_in_0(DataSel_3_io_in_0),
    .io_in_1(DataSel_3_io_in_1),
    .io_sel_0(DataSel_3_io_sel_0),
    .io_sel_1(DataSel_3_io_sel_1),
    .io_en_0(DataSel_3_io_en_0),
    .io_en_1(DataSel_3_io_en_1),
    .io_out_0(DataSel_3_io_out_0),
    .io_out_1(DataSel_3_io_out_1),
    .io_err_out_0(DataSel_3_io_err_out_0),
    .io_err_out_1(DataSel_3_io_err_out_1)
  );
  assign io_sourceC_raddr_ready = _sourceC_req_io_sourceC_raddr_ready_T[0]; // @[DataStorage.scala 119:28]
  assign io_sourceC_rdata_data = {io_sourceC_rdata_data_hi,io_sourceC_rdata_data_lo}; // @[Cat.scala 31:58]
  assign io_sourceC_rdata_corrupt = |_io_sourceC_rdata_corrupt_T; // @[DataStorage.scala 237:75]
  assign io_sinkD_waddr_ready = _sinkD_wreq_io_sinkD_waddr_ready_T[0]; // @[DataStorage.scala 119:28]
  assign io_sourceD_raddr_ready = _sourceD_rreq_io_sourceD_raddr_ready_T[0]; // @[DataStorage.scala 119:28]
  assign io_sourceD_rdata_data = {io_sourceD_rdata_data_hi,io_sourceD_rdata_data_lo}; // @[Cat.scala 31:58]
  assign io_sourceD_rdata_corrupt = |_io_sourceD_rdata_corrupt_T; // @[DataStorage.scala 235:75]
  assign io_sourceD_waddr_ready = _sourceD_wreq_io_sourceD_waddr_ready_T[0]; // @[DataStorage.scala 119:28]
  assign io_sinkC_waddr_ready = _sinkC_req_io_sinkC_waddr_ready_T[0]; // @[DataStorage.scala 119:28]
  assign io_ecc_valid = io_sourceD_rdata_corrupt | io_sourceC_rdata_corrupt; // @[DataStorage.scala 242:44]
  assign io_ecc_bits_addr = {{52'd0}, _io_ecc_bits_addr_T_2}; // @[DataStorage.scala 244:20]
  assign bankedData_0_clock = clock;
  assign bankedData_0_reset = reset;
  assign bankedData_0_io_rreq_valid = en & ~selectedReq_wen; // @[DataStorage.scala 184:18]
  assign bankedData_0_io_rreq_bits_setIdx = selectedReq_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_0_io_wreq_valid = en & selectedReq_wen; // @[DataStorage.scala 176:18]
  assign bankedData_0_io_wreq_bits_setIdx = selectedReq_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_0_io_wreq_bits_data_0 = reqs_0_bankSel[0] ? reqs_0_data_0 : _selectedReq_T_7_data_0; // @[Mux.scala 47:70]
  assign bankedData_1_clock = clock;
  assign bankedData_1_reset = reset;
  assign bankedData_1_io_rreq_valid = en_1 & ~selectedReq_1_wen; // @[DataStorage.scala 184:18]
  assign bankedData_1_io_rreq_bits_setIdx = selectedReq_1_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_1_io_wreq_valid = en_1 & selectedReq_1_wen; // @[DataStorage.scala 176:18]
  assign bankedData_1_io_wreq_bits_setIdx = selectedReq_1_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_1_io_wreq_bits_data_0 = reqs_0_bankSel[1] ? reqs_0_data_1 : _selectedReq_T_15_data_1; // @[Mux.scala 47:70]
  assign bankedData_2_clock = clock;
  assign bankedData_2_reset = reset;
  assign bankedData_2_io_rreq_valid = en_2 & ~selectedReq_2_wen; // @[DataStorage.scala 184:18]
  assign bankedData_2_io_rreq_bits_setIdx = selectedReq_2_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_2_io_wreq_valid = en_2 & selectedReq_2_wen; // @[DataStorage.scala 176:18]
  assign bankedData_2_io_wreq_bits_setIdx = selectedReq_2_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_2_io_wreq_bits_data_0 = reqs_0_bankSel[2] ? reqs_0_data_2 : _selectedReq_T_23_data_2; // @[Mux.scala 47:70]
  assign bankedData_3_clock = clock;
  assign bankedData_3_reset = reset;
  assign bankedData_3_io_rreq_valid = en_3 & ~selectedReq_3_wen; // @[DataStorage.scala 184:18]
  assign bankedData_3_io_rreq_bits_setIdx = selectedReq_3_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_3_io_wreq_valid = en_3 & selectedReq_3_wen; // @[DataStorage.scala 176:18]
  assign bankedData_3_io_wreq_bits_setIdx = selectedReq_3_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_3_io_wreq_bits_data_0 = reqs_0_bankSel[3] ? reqs_0_data_3 : _selectedReq_T_31_data_3; // @[Mux.scala 47:70]
  assign bankedData_4_clock = clock;
  assign bankedData_4_reset = reset;
  assign bankedData_4_io_rreq_valid = en_4 & ~selectedReq_4_wen; // @[DataStorage.scala 184:18]
  assign bankedData_4_io_rreq_bits_setIdx = selectedReq_4_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_4_io_wreq_valid = en_4 & selectedReq_4_wen; // @[DataStorage.scala 176:18]
  assign bankedData_4_io_wreq_bits_setIdx = selectedReq_4_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_4_io_wreq_bits_data_0 = reqs_0_bankSel[4] ? reqs_0_data_4 : _selectedReq_T_39_data_4; // @[Mux.scala 47:70]
  assign bankedData_5_clock = clock;
  assign bankedData_5_reset = reset;
  assign bankedData_5_io_rreq_valid = en_5 & ~selectedReq_5_wen; // @[DataStorage.scala 184:18]
  assign bankedData_5_io_rreq_bits_setIdx = selectedReq_5_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_5_io_wreq_valid = en_5 & selectedReq_5_wen; // @[DataStorage.scala 176:18]
  assign bankedData_5_io_wreq_bits_setIdx = selectedReq_5_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_5_io_wreq_bits_data_0 = reqs_0_bankSel[5] ? reqs_0_data_5 : _selectedReq_T_47_data_5; // @[Mux.scala 47:70]
  assign bankedData_6_clock = clock;
  assign bankedData_6_reset = reset;
  assign bankedData_6_io_rreq_valid = en_6 & ~selectedReq_6_wen; // @[DataStorage.scala 184:18]
  assign bankedData_6_io_rreq_bits_setIdx = selectedReq_6_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_6_io_wreq_valid = en_6 & selectedReq_6_wen; // @[DataStorage.scala 176:18]
  assign bankedData_6_io_wreq_bits_setIdx = selectedReq_6_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_6_io_wreq_bits_data_0 = reqs_0_bankSel[6] ? reqs_0_data_6 : _selectedReq_T_55_data_6; // @[Mux.scala 47:70]
  assign bankedData_7_clock = clock;
  assign bankedData_7_reset = reset;
  assign bankedData_7_io_rreq_valid = en_7 & ~selectedReq_7_wen; // @[DataStorage.scala 184:18]
  assign bankedData_7_io_rreq_bits_setIdx = selectedReq_7_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_7_io_wreq_valid = en_7 & selectedReq_7_wen; // @[DataStorage.scala 176:18]
  assign bankedData_7_io_wreq_bits_setIdx = selectedReq_7_index[10:0]; // @[SRAMTemplate.scala 49:17]
  assign bankedData_7_io_wreq_bits_data_0 = reqs_0_bankSel[7] ? reqs_0_data_7 : _selectedReq_T_63_data_7; // @[Mux.scala 47:70]
  assign dataEccArray_0_clock = clock;
  assign dataEccArray_0_reset = reset;
  assign dataEccArray_0_io_rreq_valid = bankedData_0_io_rreq_valid; // @[DataStorage.scala 204:31]
  assign dataEccArray_0_io_rreq_bits_setIdx = bankedData_0_io_rreq_bits_setIdx; // @[SRAMTemplate.scala 49:17]
  assign dataEccArray_0_io_wreq_valid = bankedData_0_io_wreq_valid; // @[DataStorage.scala 196:31]
  assign dataEccArray_0_io_wreq_bits_setIdx = bankedData_0_io_wreq_bits_setIdx; // @[SRAMTemplate.scala 49:17]
  assign dataEccArray_0_io_wreq_bits_data_0 = {x7_hi,x7_lo}; // @[DataStorage.scala 201:18]
  assign dataEccArray_1_clock = clock;
  assign dataEccArray_1_reset = reset;
  assign dataEccArray_1_io_rreq_valid = bankedData_4_io_rreq_valid; // @[DataStorage.scala 204:31]
  assign dataEccArray_1_io_rreq_bits_setIdx = bankedData_4_io_rreq_bits_setIdx; // @[SRAMTemplate.scala 49:17]
  assign dataEccArray_1_io_wreq_valid = bankedData_4_io_wreq_valid; // @[DataStorage.scala 196:31]
  assign dataEccArray_1_io_wreq_bits_setIdx = bankedData_4_io_wreq_bits_setIdx; // @[SRAMTemplate.scala 49:17]
  assign dataEccArray_1_io_wreq_bits_data_0 = {x7_hi_1,x7_lo_1}; // @[DataStorage.scala 201:18]
  assign DataSel_clock = clock;
  assign DataSel_reset = reset;
  assign DataSel_io_err_in_0 = error_0_uncorrectable_1 | error_0_uncorrectable_2; // @[ECC.scala 31:27]
  assign DataSel_io_err_in_1 = error_4_uncorrectable_1 | error_4_uncorrectable_2; // @[ECC.scala 31:27]
  assign DataSel_io_in_0 = bankedData_0_io_rresp_data_0; // @[DataStorage.scala 154:21 188:16]
  assign DataSel_io_in_1 = bankedData_4_io_rresp_data_0; // @[DataStorage.scala 154:21 188:16]
  assign DataSel_io_sel_0 = {reqs_4_bankEn[4],reqs_4_bankEn[0]}; // @[Cat.scala 31:58]
  assign DataSel_io_sel_1 = {reqs_0_bankSel[4],reqs_0_bankSel[0]}; // @[Cat.scala 31:58]
  assign DataSel_io_en_0 = io_sourceD_raddr_ready & io_sourceD_raddr_valid; // @[Decoupled.scala 50:35]
  assign DataSel_io_en_1 = io_sourceC_raddr_ready & io_sourceC_raddr_valid; // @[Decoupled.scala 50:35]
  assign DataSel_1_clock = clock;
  assign DataSel_1_reset = reset;
  assign DataSel_1_io_err_in_0 = error_1_uncorrectable_1 | error_1_uncorrectable_2; // @[ECC.scala 31:27]
  assign DataSel_1_io_err_in_1 = error_5_uncorrectable_1 | error_5_uncorrectable_2; // @[ECC.scala 31:27]
  assign DataSel_1_io_in_0 = bankedData_1_io_rresp_data_0; // @[DataStorage.scala 154:21 188:16]
  assign DataSel_1_io_in_1 = bankedData_5_io_rresp_data_0; // @[DataStorage.scala 154:21 188:16]
  assign DataSel_1_io_sel_0 = {reqs_4_bankEn[5],reqs_4_bankEn[1]}; // @[Cat.scala 31:58]
  assign DataSel_1_io_sel_1 = {reqs_0_bankSel[5],reqs_0_bankSel[1]}; // @[Cat.scala 31:58]
  assign DataSel_1_io_en_0 = io_sourceD_raddr_ready & io_sourceD_raddr_valid; // @[Decoupled.scala 50:35]
  assign DataSel_1_io_en_1 = io_sourceC_raddr_ready & io_sourceC_raddr_valid; // @[Decoupled.scala 50:35]
  assign DataSel_2_clock = clock;
  assign DataSel_2_reset = reset;
  assign DataSel_2_io_err_in_0 = error_2_uncorrectable_1 | error_2_uncorrectable_2; // @[ECC.scala 31:27]
  assign DataSel_2_io_err_in_1 = error_6_uncorrectable_1 | error_6_uncorrectable_2; // @[ECC.scala 31:27]
  assign DataSel_2_io_in_0 = bankedData_2_io_rresp_data_0; // @[DataStorage.scala 154:21 188:16]
  assign DataSel_2_io_in_1 = bankedData_6_io_rresp_data_0; // @[DataStorage.scala 154:21 188:16]
  assign DataSel_2_io_sel_0 = {reqs_4_bankEn[6],reqs_4_bankEn[2]}; // @[Cat.scala 31:58]
  assign DataSel_2_io_sel_1 = {reqs_0_bankSel[6],reqs_0_bankSel[2]}; // @[Cat.scala 31:58]
  assign DataSel_2_io_en_0 = io_sourceD_raddr_ready & io_sourceD_raddr_valid; // @[Decoupled.scala 50:35]
  assign DataSel_2_io_en_1 = io_sourceC_raddr_ready & io_sourceC_raddr_valid; // @[Decoupled.scala 50:35]
  assign DataSel_3_clock = clock;
  assign DataSel_3_reset = reset;
  assign DataSel_3_io_err_in_0 = error_3_uncorrectable_1 | error_3_uncorrectable_2; // @[ECC.scala 31:27]
  assign DataSel_3_io_err_in_1 = error_7_uncorrectable_1 | error_7_uncorrectable_2; // @[ECC.scala 31:27]
  assign DataSel_3_io_in_0 = bankedData_3_io_rresp_data_0; // @[DataStorage.scala 154:21 188:16]
  assign DataSel_3_io_in_1 = bankedData_7_io_rresp_data_0; // @[DataStorage.scala 154:21 188:16]
  assign DataSel_3_io_sel_0 = {reqs_4_bankEn[7],reqs_4_bankEn[3]}; // @[Cat.scala 31:58]
  assign DataSel_3_io_sel_1 = {reqs_0_bankSel[7],reqs_0_bankSel[3]}; // @[Cat.scala 31:58]
  assign DataSel_3_io_en_0 = io_sourceD_raddr_ready & io_sourceD_raddr_valid; // @[Decoupled.scala 50:35]
  assign DataSel_3_io_en_1 = io_sourceC_raddr_ready & io_sourceC_raddr_valid; // @[Decoupled.scala 50:35]
  always @(posedge clock) begin
    d_addr_reg_REG_way <= io_sourceD_raddr_bits_way; // @[Pipeline.scala 42:31]
    d_addr_reg_REG_set <= io_sourceD_raddr_bits_set; // @[Pipeline.scala 42:31]
    d_addr_reg_REG_beat <= io_sourceD_raddr_bits_beat; // @[Pipeline.scala 42:31]
    d_addr_reg_REG_1_way <= d_addr_reg_REG_way; // @[Pipeline.scala 42:31]
    d_addr_reg_REG_1_set <= d_addr_reg_REG_set; // @[Pipeline.scala 42:31]
    d_addr_reg_REG_1_beat <= d_addr_reg_REG_beat; // @[Pipeline.scala 42:31]
    d_addr_reg_way <= d_addr_reg_REG_1_way; // @[Pipeline.scala 42:31]
    d_addr_reg_set <= d_addr_reg_REG_1_set; // @[Pipeline.scala 42:31]
    d_addr_reg_beat <= d_addr_reg_REG_1_beat; // @[Pipeline.scala 42:31]
    c_addr_reg_REG_way <= io_sourceC_raddr_bits_way; // @[Pipeline.scala 42:31]
    c_addr_reg_REG_set <= io_sourceC_raddr_bits_set; // @[Pipeline.scala 42:31]
    c_addr_reg_REG_beat <= io_sourceC_raddr_bits_beat; // @[Pipeline.scala 42:31]
    c_addr_reg_REG_1_way <= c_addr_reg_REG_way; // @[Pipeline.scala 42:31]
    c_addr_reg_REG_1_set <= c_addr_reg_REG_set; // @[Pipeline.scala 42:31]
    c_addr_reg_REG_1_beat <= c_addr_reg_REG_beat; // @[Pipeline.scala 42:31]
    c_addr_reg_way <= c_addr_reg_REG_1_way; // @[Pipeline.scala 42:31]
    c_addr_reg_set <= c_addr_reg_REG_1_set; // @[Pipeline.scala 42:31]
    c_addr_reg_beat <= c_addr_reg_REG_1_beat; // @[Pipeline.scala 42:31]
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
  d_addr_reg_REG_way = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  d_addr_reg_REG_set = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  d_addr_reg_REG_beat = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  d_addr_reg_REG_1_way = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  d_addr_reg_REG_1_set = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  d_addr_reg_REG_1_beat = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  d_addr_reg_way = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  d_addr_reg_set = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  d_addr_reg_beat = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  c_addr_reg_REG_way = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  c_addr_reg_REG_set = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  c_addr_reg_REG_beat = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  c_addr_reg_REG_1_way = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  c_addr_reg_REG_1_set = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  c_addr_reg_REG_1_beat = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  c_addr_reg_way = _RAND_15[2:0];
  _RAND_16 = {1{`RANDOM}};
  c_addr_reg_set = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  c_addr_reg_beat = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
