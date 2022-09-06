module CSRCacheOpDecoder_1(
  input         clock,
  input         reset,
  input         io_csr_distribute_csr_wvalid,
  input  [11:0] io_csr_distribute_csr_waddr,
  input  [63:0] io_csr_distribute_csr_wdata,
  output        io_csr_update_wvalid,
  output [11:0] io_csr_update_waddr,
  output [63:0] io_csr_update_wdata,
  output        io_cache_req_valid,
  output [63:0] io_cache_req_bits_wayNum,
  output [63:0] io_cache_req_bits_index,
  output [63:0] io_cache_req_bits_opCode,
  output [63:0] io_cache_req_bits_write_tag_low,
  output [63:0] io_cache_req_bits_write_tag_ecc,
  output [63:0] io_cache_req_bits_write_data_vec_0,
  output [63:0] io_cache_req_bits_write_data_vec_1,
  output [63:0] io_cache_req_bits_write_data_vec_2,
  output [63:0] io_cache_req_bits_write_data_vec_3,
  output [63:0] io_cache_req_bits_write_data_vec_4,
  output [63:0] io_cache_req_bits_write_data_vec_5,
  output [63:0] io_cache_req_bits_write_data_vec_6,
  output [63:0] io_cache_req_bits_write_data_vec_7,
  output [63:0] io_cache_req_bits_write_data_ecc,
  output [63:0] io_cache_req_bits_bank_num,
  input         io_cache_resp_valid,
  input  [63:0] io_cache_resp_bits_read_tag_low,
  input  [63:0] io_cache_resp_bits_read_tag_ecc,
  input  [63:0] io_cache_resp_bits_read_data_vec_0,
  input  [63:0] io_cache_resp_bits_read_data_vec_1,
  input  [63:0] io_cache_resp_bits_read_data_vec_2,
  input  [63:0] io_cache_resp_bits_read_data_vec_3,
  input  [63:0] io_cache_resp_bits_read_data_vec_4,
  input  [63:0] io_cache_resp_bits_read_data_vec_5,
  input  [63:0] io_cache_resp_bits_read_data_vec_6,
  input  [63:0] io_cache_resp_bits_read_data_vec_7,
  input  [63:0] io_cache_resp_bits_read_data_ecc,
  input         io_error_source_tag,
  input         io_error_source_data,
  input         io_error_source_l2,
  input         io_error_opType_fetch,
  input         io_error_opType_load,
  input         io_error_opType_store,
  input         io_error_opType_probe,
  input         io_error_opType_release,
  input         io_error_opType_atom,
  input  [35:0] io_error_paddr,
  input         io_error_report_to_beu,
  input         io_error_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
`endif // RANDOMIZE_REG_INIT
  wire  error_delay_clock; // @[Hold.scala 94:23]
  wire  error_delay_io_in_source_tag; // @[Hold.scala 94:23]
  wire  error_delay_io_in_source_data; // @[Hold.scala 94:23]
  wire  error_delay_io_in_source_l2; // @[Hold.scala 94:23]
  wire  error_delay_io_in_opType_fetch; // @[Hold.scala 94:23]
  wire  error_delay_io_in_opType_load; // @[Hold.scala 94:23]
  wire  error_delay_io_in_opType_store; // @[Hold.scala 94:23]
  wire  error_delay_io_in_opType_probe; // @[Hold.scala 94:23]
  wire  error_delay_io_in_opType_release; // @[Hold.scala 94:23]
  wire  error_delay_io_in_opType_atom; // @[Hold.scala 94:23]
  wire [35:0] error_delay_io_in_paddr; // @[Hold.scala 94:23]
  wire  error_delay_io_in_report_to_beu; // @[Hold.scala 94:23]
  wire  error_delay_io_in_valid; // @[Hold.scala 94:23]
  wire  error_delay_io_out_source_tag; // @[Hold.scala 94:23]
  wire  error_delay_io_out_source_data; // @[Hold.scala 94:23]
  wire  error_delay_io_out_source_l2; // @[Hold.scala 94:23]
  wire  error_delay_io_out_opType_fetch; // @[Hold.scala 94:23]
  wire  error_delay_io_out_opType_load; // @[Hold.scala 94:23]
  wire  error_delay_io_out_opType_store; // @[Hold.scala 94:23]
  wire  error_delay_io_out_opType_probe; // @[Hold.scala 94:23]
  wire  error_delay_io_out_opType_release; // @[Hold.scala 94:23]
  wire  error_delay_io_out_opType_atom; // @[Hold.scala 94:23]
  wire [35:0] error_delay_io_out_paddr; // @[Hold.scala 94:23]
  wire  error_delay_io_out_report_to_beu; // @[Hold.scala 94:23]
  wire  error_delay_io_out_valid; // @[Hold.scala 94:23]
  reg  schedule_csr_op_resp_data; // @[CacheInstruction.scala 150:42]
  reg  schedule_csr_op_resp_finish; // @[CacheInstruction.scala 151:44]
  reg [2:0] data_transfer_cnt; // @[CacheInstruction.scala 154:34]
  reg [63:0] translated_cache_req_level; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_wayNum; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_index; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_opCode; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_write_tag_low; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_write_tag_ecc; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_write_data_vec_0; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_write_data_vec_1; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_write_data_vec_2; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_write_data_vec_3; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_write_data_vec_4; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_write_data_vec_5; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_write_data_vec_6; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_write_data_vec_7; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_write_data_ecc; // @[CacheInstruction.scala 157:33]
  reg [63:0] translated_cache_req_bank_num; // @[CacheInstruction.scala 157:33]
  wire  _T_1 = io_csr_distribute_csr_waddr == 12'h5c5 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_6 = io_csr_distribute_csr_waddr == 12'h5c7 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_11 = io_csr_distribute_csr_waddr == 12'h5c8 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_16 = io_csr_distribute_csr_waddr == 12'h5c9 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_21 = io_csr_distribute_csr_waddr == 12'h5ca & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_31 = io_csr_distribute_csr_waddr == 12'h5cd & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_36 = io_csr_distribute_csr_waddr == 12'h5cb & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_41 = io_csr_distribute_csr_waddr == 12'h5d1 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_46 = io_csr_distribute_csr_waddr == 12'h5d2 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_51 = io_csr_distribute_csr_waddr == 12'h5d3 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_56 = io_csr_distribute_csr_waddr == 12'h5d4 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_61 = io_csr_distribute_csr_waddr == 12'h5d5 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_66 = io_csr_distribute_csr_waddr == 12'h5d6 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_71 = io_csr_distribute_csr_waddr == 12'h5d7 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_76 = io_csr_distribute_csr_waddr == 12'h5d8 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  wire  _T_81 = io_csr_distribute_csr_waddr == 12'h5d0 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 165:123]
  reg  io_cache_req_valid_REG; // @[CacheInstruction.scala 202:32]
  reg [63:0] raw_cache_resp_read_tag_low; // @[CacheInstruction.scala 209:27]
  reg [63:0] raw_cache_resp_read_tag_ecc; // @[CacheInstruction.scala 209:27]
  reg [63:0] raw_cache_resp_read_data_vec_0; // @[CacheInstruction.scala 209:27]
  reg [63:0] raw_cache_resp_read_data_vec_1; // @[CacheInstruction.scala 209:27]
  reg [63:0] raw_cache_resp_read_data_vec_2; // @[CacheInstruction.scala 209:27]
  reg [63:0] raw_cache_resp_read_data_vec_3; // @[CacheInstruction.scala 209:27]
  reg [63:0] raw_cache_resp_read_data_vec_4; // @[CacheInstruction.scala 209:27]
  reg [63:0] raw_cache_resp_read_data_vec_5; // @[CacheInstruction.scala 209:27]
  reg [63:0] raw_cache_resp_read_data_vec_6; // @[CacheInstruction.scala 209:27]
  reg [63:0] raw_cache_resp_read_data_vec_7; // @[CacheInstruction.scala 209:27]
  reg [63:0] raw_cache_resp_read_data_ecc; // @[CacheInstruction.scala 209:27]
  wire  _T_85 = translated_cache_req_opCode == 64'h0; // @[CacheInstruction.scala 92:54]
  wire  _T_86 = translated_cache_req_opCode == 64'h1; // @[CacheInstruction.scala 93:54]
  wire  _T_87 = _T_85 | _T_86; // @[CacheInstruction.scala 102:53]
  wire  _T_88 = translated_cache_req_opCode == 64'h2; // @[CacheInstruction.scala 94:54]
  wire  _T_89 = _T_87 | _T_88; // @[CacheInstruction.scala 103:27]
  wire  _T_90 = translated_cache_req_opCode == 64'h3; // @[CacheInstruction.scala 95:54]
  wire  _T_91 = _T_89 | _T_90; // @[CacheInstruction.scala 104:23]
  wire  _GEN_20 = _T_91 ? 1'h0 : 1'h1; // @[CacheInstruction.scala 213:64 215:35 219:35]
  wire  _GEN_36 = io_cache_resp_valid ? _GEN_20 : schedule_csr_op_resp_finish; // @[CacheInstruction.scala 210:29 151:44]
  wire  _data_transfer_finished_T = data_transfer_cnt == 3'h7; // @[CacheInstruction.scala 255:25]
  wire  _data_transfer_finished_T_1 = _T_90 ? _data_transfer_finished_T : 1'h1; // @[CacheInstruction.scala 254:34]
  wire  data_transfer_finished = schedule_csr_op_resp_data & _data_transfer_finished_T_1; // @[CacheInstruction.scala 241:34 254:28]
  wire  _GEN_38 = io_csr_update_wvalid & schedule_csr_op_resp_data & data_transfer_finished | _GEN_36; // @[CacheInstruction.scala 224:86 226:33]
  wire [10:0] _GEN_59 = {{8'd0}, data_transfer_cnt}; // @[CacheInstruction.scala 245:108]
  wire [10:0] _io_csr_update_waddr_T_1 = 11'h5cd + _GEN_59; // @[CacheInstruction.scala 245:108]
  wire [10:0] _io_csr_update_waddr_T_3 = 11'h5d1 + _GEN_59; // @[CacheInstruction.scala 246:108]
  wire [10:0] _io_csr_update_waddr_T_4 = _T_85 ? 11'h5cb : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_5 = _T_86 ? 11'h5d0 : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_6 = _T_88 ? _io_csr_update_waddr_T_1 : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_7 = _T_90 ? _io_csr_update_waddr_T_3 : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_8 = _io_csr_update_waddr_T_4 | _io_csr_update_waddr_T_5; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_9 = _io_csr_update_waddr_T_8 | _io_csr_update_waddr_T_6; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_10 = _io_csr_update_waddr_T_9 | _io_csr_update_waddr_T_7; // @[Mux.scala 27:73]
  wire [63:0] _io_csr_update_wdata_T = _T_85 ? raw_cache_resp_read_tag_ecc : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_csr_update_wdata_T_1 = _T_86 ? raw_cache_resp_read_data_ecc : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_csr_update_wdata_T_2 = _T_88 ? raw_cache_resp_read_tag_low : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _GEN_42 = 3'h1 == data_transfer_cnt ? raw_cache_resp_read_data_vec_1 : raw_cache_resp_read_data_vec_0; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_43 = 3'h2 == data_transfer_cnt ? raw_cache_resp_read_data_vec_2 : _GEN_42; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_44 = 3'h3 == data_transfer_cnt ? raw_cache_resp_read_data_vec_3 : _GEN_43; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_45 = 3'h4 == data_transfer_cnt ? raw_cache_resp_read_data_vec_4 : _GEN_44; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_46 = 3'h5 == data_transfer_cnt ? raw_cache_resp_read_data_vec_5 : _GEN_45; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_47 = 3'h6 == data_transfer_cnt ? raw_cache_resp_read_data_vec_6 : _GEN_46; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_48 = 3'h7 == data_transfer_cnt ? raw_cache_resp_read_data_vec_7 : _GEN_47; // @[Mux.scala 27:{73,73}]
  wire [63:0] _io_csr_update_wdata_T_3 = _T_90 ? _GEN_48 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_csr_update_wdata_T_4 = _io_csr_update_wdata_T | _io_csr_update_wdata_T_1; // @[Mux.scala 27:73]
  wire [63:0] _io_csr_update_wdata_T_5 = _io_csr_update_wdata_T_4 | _io_csr_update_wdata_T_2; // @[Mux.scala 27:73]
  wire [63:0] _io_csr_update_wdata_T_6 = _io_csr_update_wdata_T_5 | _io_csr_update_wdata_T_3; // @[Mux.scala 27:73]
  wire [2:0] _data_transfer_cnt_T_1 = data_transfer_cnt + 3'h1; // @[CacheInstruction.scala 258:44]
  wire [10:0] _GEN_53 = schedule_csr_op_resp_finish ? 11'h5c6 : _io_csr_update_waddr_T_10; // @[CacheInstruction.scala 261:36 262:31]
  wire [63:0] _GEN_54 = schedule_csr_op_resp_finish ? 64'h1 : _io_csr_update_wdata_T_6; // @[CacheInstruction.scala 261:36 263:31]
  wire [40:0] io_csr_update_wdata_lo = {error_delay_io_out_opType_probe,error_delay_io_out_opType_release,
    error_delay_io_out_opType_atom,error_delay_io_out_paddr,error_delay_io_out_report_to_beu,error_delay_io_out_valid}; // @[CacheInstruction.scala 270:40]
  wire [46:0] _io_csr_update_wdata_T_7 = {error_delay_io_out_source_tag,error_delay_io_out_source_data,
    error_delay_io_out_source_l2,error_delay_io_out_opType_fetch,error_delay_io_out_opType_load,
    error_delay_io_out_opType_store,io_csr_update_wdata_lo}; // @[CacheInstruction.scala 270:40]
  wire [10:0] _GEN_56 = error_delay_io_out_report_to_beu ? 11'h5d9 : _GEN_53; // @[CacheInstruction.scala 268:29 269:31]
  DelayN error_delay ( // @[Hold.scala 94:23]
    .clock(error_delay_clock),
    .io_in_source_tag(error_delay_io_in_source_tag),
    .io_in_source_data(error_delay_io_in_source_data),
    .io_in_source_l2(error_delay_io_in_source_l2),
    .io_in_opType_fetch(error_delay_io_in_opType_fetch),
    .io_in_opType_load(error_delay_io_in_opType_load),
    .io_in_opType_store(error_delay_io_in_opType_store),
    .io_in_opType_probe(error_delay_io_in_opType_probe),
    .io_in_opType_release(error_delay_io_in_opType_release),
    .io_in_opType_atom(error_delay_io_in_opType_atom),
    .io_in_paddr(error_delay_io_in_paddr),
    .io_in_report_to_beu(error_delay_io_in_report_to_beu),
    .io_in_valid(error_delay_io_in_valid),
    .io_out_source_tag(error_delay_io_out_source_tag),
    .io_out_source_data(error_delay_io_out_source_data),
    .io_out_source_l2(error_delay_io_out_source_l2),
    .io_out_opType_fetch(error_delay_io_out_opType_fetch),
    .io_out_opType_load(error_delay_io_out_opType_load),
    .io_out_opType_store(error_delay_io_out_opType_store),
    .io_out_opType_probe(error_delay_io_out_opType_probe),
    .io_out_opType_release(error_delay_io_out_opType_release),
    .io_out_opType_atom(error_delay_io_out_opType_atom),
    .io_out_paddr(error_delay_io_out_paddr),
    .io_out_report_to_beu(error_delay_io_out_report_to_beu),
    .io_out_valid(error_delay_io_out_valid)
  );
  assign io_csr_update_wvalid = error_delay_io_out_report_to_beu | (schedule_csr_op_resp_data |
    schedule_csr_op_resp_finish); // @[CacheInstruction.scala 233:25 268:29 271:27]
  assign io_csr_update_waddr = {{1'd0}, _GEN_56};
  assign io_csr_update_wdata = error_delay_io_out_report_to_beu ? {{17'd0}, _io_csr_update_wdata_T_7} :
    _GEN_54; // @[CacheInstruction.scala 268:29 270:31]
  assign io_cache_req_valid = io_cache_req_valid_REG; // @[CacheInstruction.scala 202:22]
  assign io_cache_req_bits_wayNum = translated_cache_req_wayNum; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_index = translated_cache_req_index; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_opCode = translated_cache_req_opCode; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_write_tag_low = translated_cache_req_write_tag_low; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_write_tag_ecc = translated_cache_req_write_tag_ecc; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_write_data_vec_0 = translated_cache_req_write_data_vec_0; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_write_data_vec_1 = translated_cache_req_write_data_vec_1; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_write_data_vec_2 = translated_cache_req_write_data_vec_2; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_write_data_vec_3 = translated_cache_req_write_data_vec_3; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_write_data_vec_4 = translated_cache_req_write_data_vec_4; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_write_data_vec_5 = translated_cache_req_write_data_vec_5; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_write_data_vec_6 = translated_cache_req_write_data_vec_6; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_write_data_vec_7 = translated_cache_req_write_data_vec_7; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_write_data_ecc = translated_cache_req_write_data_ecc; // @[CacheInstruction.scala 203:21]
  assign io_cache_req_bits_bank_num = translated_cache_req_bank_num; // @[CacheInstruction.scala 203:21]
  assign error_delay_clock = clock;
  assign error_delay_io_in_source_tag = io_error_source_tag; // @[Hold.scala 95:17]
  assign error_delay_io_in_source_data = io_error_source_data; // @[Hold.scala 95:17]
  assign error_delay_io_in_source_l2 = io_error_source_l2; // @[Hold.scala 95:17]
  assign error_delay_io_in_opType_fetch = io_error_opType_fetch; // @[Hold.scala 95:17]
  assign error_delay_io_in_opType_load = io_error_opType_load; // @[Hold.scala 95:17]
  assign error_delay_io_in_opType_store = io_error_opType_store; // @[Hold.scala 95:17]
  assign error_delay_io_in_opType_probe = io_error_opType_probe; // @[Hold.scala 95:17]
  assign error_delay_io_in_opType_release = io_error_opType_release; // @[Hold.scala 95:17]
  assign error_delay_io_in_opType_atom = io_error_opType_atom; // @[Hold.scala 95:17]
  assign error_delay_io_in_paddr = io_error_paddr; // @[Hold.scala 95:17]
  assign error_delay_io_in_report_to_beu = io_error_report_to_beu; // @[Hold.scala 95:17]
  assign error_delay_io_in_valid = io_error_valid; // @[Hold.scala 95:17]
  always @(posedge clock) begin
    if (reset) begin // @[CacheInstruction.scala 150:42]
      schedule_csr_op_resp_data <= 1'h0; // @[CacheInstruction.scala 150:42]
    end else if (io_csr_update_wvalid & schedule_csr_op_resp_data & data_transfer_finished) begin // @[CacheInstruction.scala 224:86]
      schedule_csr_op_resp_data <= 1'h0; // @[CacheInstruction.scala 225:31]
    end else if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      schedule_csr_op_resp_data <= _T_91;
    end
    if (reset) begin // @[CacheInstruction.scala 151:44]
      schedule_csr_op_resp_finish <= 1'h0; // @[CacheInstruction.scala 151:44]
    end else if (io_csr_update_wvalid & schedule_csr_op_resp_finish) begin // @[CacheInstruction.scala 228:62]
      schedule_csr_op_resp_finish <= 1'h0; // @[CacheInstruction.scala 229:33]
    end else begin
      schedule_csr_op_resp_finish <= _GEN_38;
    end
    if (reset) begin // @[CacheInstruction.scala 154:34]
      data_transfer_cnt <= 3'h0; // @[CacheInstruction.scala 154:34]
    end else if (schedule_csr_op_resp_finish) begin // @[CacheInstruction.scala 261:36]
      data_transfer_cnt <= 3'h0; // @[CacheInstruction.scala 264:23]
    end else if (schedule_csr_op_resp_data) begin // @[CacheInstruction.scala 241:34]
      data_transfer_cnt <= _data_transfer_cnt_T_1; // @[CacheInstruction.scala 258:23]
    end
    if (_T_6) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_level <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_11) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_wayNum <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_16) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_index <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_1) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_opCode <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_31) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_write_tag_low <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_36) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_write_tag_ecc <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_41) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_write_data_vec_0 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_46) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_write_data_vec_1 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_51) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_write_data_vec_2 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_56) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_write_data_vec_3 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_61) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_write_data_vec_4 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_66) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_write_data_vec_5 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_71) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_write_data_vec_6 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_76) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_write_data_vec_7 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_81) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_write_data_ecc <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    if (_T_21) begin // @[CacheInstruction.scala 172:6]
      translated_cache_req_bank_num <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 173:17]
    end
    io_cache_req_valid_REG <= _T_1 & 64'h1 == translated_cache_req_level; // @[CacheInstruction.scala 196:72]
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      raw_cache_resp_read_tag_low <= io_cache_resp_bits_read_tag_low; // @[CacheInstruction.scala 212:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      raw_cache_resp_read_tag_ecc <= io_cache_resp_bits_read_tag_ecc; // @[CacheInstruction.scala 212:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      raw_cache_resp_read_data_vec_0 <= io_cache_resp_bits_read_data_vec_0; // @[CacheInstruction.scala 212:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      raw_cache_resp_read_data_vec_1 <= io_cache_resp_bits_read_data_vec_1; // @[CacheInstruction.scala 212:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      raw_cache_resp_read_data_vec_2 <= io_cache_resp_bits_read_data_vec_2; // @[CacheInstruction.scala 212:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      raw_cache_resp_read_data_vec_3 <= io_cache_resp_bits_read_data_vec_3; // @[CacheInstruction.scala 212:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      raw_cache_resp_read_data_vec_4 <= io_cache_resp_bits_read_data_vec_4; // @[CacheInstruction.scala 212:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      raw_cache_resp_read_data_vec_5 <= io_cache_resp_bits_read_data_vec_5; // @[CacheInstruction.scala 212:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      raw_cache_resp_read_data_vec_6 <= io_cache_resp_bits_read_data_vec_6; // @[CacheInstruction.scala 212:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      raw_cache_resp_read_data_vec_7 <= io_cache_resp_bits_read_data_vec_7; // @[CacheInstruction.scala 212:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 210:29]
      raw_cache_resp_read_data_ecc <= io_cache_resp_bits_read_data_ecc; // @[CacheInstruction.scala 212:20]
    end
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
  schedule_csr_op_resp_data = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  schedule_csr_op_resp_finish = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  data_transfer_cnt = _RAND_2[2:0];
  _RAND_3 = {2{`RANDOM}};
  translated_cache_req_level = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  translated_cache_req_wayNum = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  translated_cache_req_index = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  translated_cache_req_opCode = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  translated_cache_req_write_tag_low = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  translated_cache_req_write_tag_ecc = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_0 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_1 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_2 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_3 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_4 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_5 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_6 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_7 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  translated_cache_req_write_data_ecc = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  translated_cache_req_bank_num = _RAND_18[63:0];
  _RAND_19 = {1{`RANDOM}};
  io_cache_req_valid_REG = _RAND_19[0:0];
  _RAND_20 = {2{`RANDOM}};
  raw_cache_resp_read_tag_low = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  raw_cache_resp_read_tag_ecc = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_0 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_1 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_2 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_3 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_4 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_5 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_6 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_7 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  raw_cache_resp_read_data_ecc = _RAND_30[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
