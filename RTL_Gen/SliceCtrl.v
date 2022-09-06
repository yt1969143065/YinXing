module SliceCtrl(
  input          clock,
  input          reset,
  output         io_req_ready,
  input          io_req_valid,
  input  [7:0]   io_req_bits_cmd,
  input  [63:0]  io_req_bits_data_0,
  input  [63:0]  io_req_bits_data_1,
  input  [63:0]  io_req_bits_data_2,
  input  [63:0]  io_req_bits_data_3,
  input  [63:0]  io_req_bits_data_4,
  input  [63:0]  io_req_bits_data_5,
  input  [63:0]  io_req_bits_data_6,
  input  [63:0]  io_req_bits_data_7,
  input  [63:0]  io_req_bits_set,
  input  [63:0]  io_req_bits_tag,
  input  [63:0]  io_req_bits_way,
  input  [63:0]  io_req_bits_dir,
  input          io_resp_ready,
  output         io_resp_valid,
  output [7:0]   io_resp_bits_cmd,
  output [63:0]  io_resp_bits_data_0,
  output [63:0]  io_resp_bits_data_1,
  output [63:0]  io_resp_bits_data_2,
  output [63:0]  io_resp_bits_data_3,
  output [63:0]  io_resp_bits_data_4,
  output [63:0]  io_resp_bits_data_5,
  output [63:0]  io_resp_bits_data_6,
  output [63:0]  io_resp_bits_data_7,
  input          io_s_dir_wready,
  output         io_s_dir_wvalid,
  output [11:0]  io_s_dir_wset,
  output [1:0]   io_s_dir_wway,
  output         io_s_dir_wdata_dirty,
  output [1:0]   io_s_dir_wdata_state,
  output [1:0]   io_s_dir_wdata_clientStates_0,
  input          io_c_dir_wready,
  output         io_c_dir_wvalid,
  output [8:0]   io_c_dir_wset,
  output [2:0]   io_c_dir_wway,
  output [1:0]   io_c_dir_wdata_0_state,
  output         io_s_tag_wvalid,
  output [11:0]  io_s_tag_wset,
  output [1:0]   io_s_tag_wway,
  output [15:0]  io_s_tag_wtag,
  output         io_c_tag_wvalid,
  output [8:0]   io_c_tag_wset,
  output [2:0]   io_c_tag_wway,
  output [18:0]  io_c_tag_wtag,
  input          io_bs_waddr_ready,
  output         io_bs_waddr_valid,
  output [1:0]   io_bs_waddr_bits_way,
  output [11:0]  io_bs_waddr_bits_set,
  output         io_bs_waddr_bits_beat,
  output [255:0] io_bs_wdata_data,
  output         io_dir_read_valid,
  output [15:0]  io_dir_read_bits_idOH,
  output [15:0]  io_dir_read_bits_tag,
  output [11:0]  io_dir_read_bits_set,
  input          io_dir_result_valid,
  input          io_dir_result_bits_self_dirty,
  input  [1:0]   io_dir_result_bits_self_state,
  input  [1:0]   io_dir_result_bits_self_clientStates_0,
  input          io_dir_result_bits_self_hit,
  input  [1:0]   io_dir_result_bits_self_way,
  input  [15:0]  io_dir_result_bits_self_tag,
  input          io_dir_result_bits_self_error,
  input  [1:0]   io_dir_result_bits_clients_states_0_state,
  input          io_dir_result_bits_clients_states_0_hit,
  input  [18:0]  io_dir_result_bits_clients_tag,
  input          io_bs_raddr_ready,
  output         io_bs_raddr_valid,
  output [1:0]   io_bs_raddr_bits_way,
  output [11:0]  io_bs_raddr_bits_set,
  output         io_bs_raddr_bits_beat,
  input  [255:0] io_bs_rdata_data,
  input          io_cmo_req_ready,
  output         io_cmo_req_valid,
  output [2:0]   io_cmo_req_bits_param,
  output [11:0]  io_cmo_req_bits_set,
  output [15:0]  io_cmo_req_bits_tag
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
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
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] req_reg_cmd; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_data_0; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_data_1; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_data_2; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_data_3; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_data_4; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_data_5; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_data_6; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_data_7; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_set; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_tag; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_way; // @[SliceCtrl.scala 27:20]
  reg [63:0] req_reg_dir; // @[SliceCtrl.scala 27:20]
  reg  busy; // @[SliceCtrl.scala 28:21]
  reg  done; // @[SliceCtrl.scala 29:21]
  wire [35:0] full_address = {io_req_bits_tag[17:0],io_req_bits_set[11:0],6'h0}; // @[Cat.scala 31:58]
  wire [27:0] set = full_address[35:8]; // @[HuanCun.scala 139:22]
  wire [15:0] tag = set[27:12]; // @[HuanCun.scala 140:19]
  wire [11:0] set_1 = set[11:0]; // @[HuanCun.scala 141:30]
  wire  _T_1 = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  wire [63:0] _GEN_4 = _T_1 ? io_req_bits_data_0 : req_reg_data_0; // @[SliceCtrl.scala 37:22 38:13 27:20]
  wire [63:0] _GEN_5 = _T_1 ? io_req_bits_data_1 : req_reg_data_1; // @[SliceCtrl.scala 37:22 38:13 27:20]
  wire [63:0] _GEN_6 = _T_1 ? io_req_bits_data_2 : req_reg_data_2; // @[SliceCtrl.scala 37:22 38:13 27:20]
  wire [63:0] _GEN_7 = _T_1 ? io_req_bits_data_3 : req_reg_data_3; // @[SliceCtrl.scala 37:22 38:13 27:20]
  wire [63:0] _GEN_8 = _T_1 ? io_req_bits_data_4 : req_reg_data_4; // @[SliceCtrl.scala 37:22 38:13 27:20]
  wire [63:0] _GEN_9 = _T_1 ? io_req_bits_data_5 : req_reg_data_5; // @[SliceCtrl.scala 37:22 38:13 27:20]
  wire [63:0] _GEN_10 = _T_1 ? io_req_bits_data_6 : req_reg_data_6; // @[SliceCtrl.scala 37:22 38:13 27:20]
  wire [63:0] _GEN_11 = _T_1 ? io_req_bits_data_7 : req_reg_data_7; // @[SliceCtrl.scala 37:22 38:13 27:20]
  wire [511:0] _T_2 = {req_reg_data_7,req_reg_data_6,req_reg_data_5,req_reg_data_4,req_reg_data_3,req_reg_data_2,
    req_reg_data_1,req_reg_data_0}; // @[SliceCtrl.scala 44:38]
  wire [255:0] data_beats_0 = _T_2[255:0]; // @[SliceCtrl.scala 44:38]
  wire [255:0] data_beats_1 = _T_2[511:256]; // @[SliceCtrl.scala 44:38]
  wire  _GEN_13 = _T_1 | busy; // @[SliceCtrl.scala 46:22 47:10 28:21]
  wire  _T_6 = io_resp_ready & io_resp_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_15 = _T_6 ? 1'h0 : done; // @[SliceCtrl.scala 49:23 51:10 29:21]
  reg  s_wb_self_dir; // @[SliceCtrl.scala 54:30]
  reg  s_wb_client_dir; // @[SliceCtrl.scala 55:32]
  reg  s_wb_self_tag; // @[SliceCtrl.scala 56:30]
  reg  s_wb_client_tag; // @[SliceCtrl.scala 57:32]
  reg [1:0] s_data_write; // @[SliceCtrl.scala 58:29]
  reg [1:0] s_data_read; // @[SliceCtrl.scala 59:28]
  reg  s_dir_read; // @[SliceCtrl.scala 60:27]
  reg  s_cmo; // @[SliceCtrl.scala 61:22]
  wire  _GEN_16 = 8'h12 == io_req_bits_cmd | s_cmo; // @[SliceCtrl.scala 102:15 61:22 64:28]
  wire  _GEN_17 = 8'h11 == io_req_bits_cmd | _GEN_16; // @[SliceCtrl.scala 64:28 99:15]
  wire  _GEN_18 = 8'h10 == io_req_bits_cmd | _GEN_17; // @[SliceCtrl.scala 64:28 96:15]
  wire [1:0] _GEN_19 = 8'h7 == io_req_bits_cmd ? 2'h0 : s_data_write; // @[SliceCtrl.scala 64:28 93:22 58:29]
  wire  _GEN_20 = 8'h7 == io_req_bits_cmd ? s_cmo : _GEN_18; // @[SliceCtrl.scala 61:22 64:28]
  wire  _GEN_21 = 8'h6 == io_req_bits_cmd | s_wb_client_tag; // @[SliceCtrl.scala 64:28 90:25 57:32]
  wire [1:0] _GEN_22 = 8'h6 == io_req_bits_cmd ? s_data_write : _GEN_19; // @[SliceCtrl.scala 64:28 58:29]
  wire  _GEN_23 = 8'h6 == io_req_bits_cmd ? s_cmo : _GEN_20; // @[SliceCtrl.scala 61:22 64:28]
  wire  _GEN_24 = 8'h5 == io_req_bits_cmd | s_wb_self_tag; // @[SliceCtrl.scala 64:28 87:23 56:30]
  wire  _GEN_25 = 8'h5 == io_req_bits_cmd ? s_wb_client_tag : _GEN_21; // @[SliceCtrl.scala 64:28 57:32]
  wire [1:0] _GEN_26 = 8'h5 == io_req_bits_cmd ? s_data_write : _GEN_22; // @[SliceCtrl.scala 64:28 58:29]
  wire  _GEN_27 = 8'h5 == io_req_bits_cmd ? s_cmo : _GEN_23; // @[SliceCtrl.scala 61:22 64:28]
  wire  _GEN_28 = 8'h9 == io_req_bits_cmd | s_wb_client_dir; // @[SliceCtrl.scala 64:28 84:25 55:32]
  wire  _GEN_29 = 8'h9 == io_req_bits_cmd ? s_wb_self_tag : _GEN_24; // @[SliceCtrl.scala 64:28 56:30]
  wire  _GEN_30 = 8'h9 == io_req_bits_cmd ? s_wb_client_tag : _GEN_25; // @[SliceCtrl.scala 64:28 57:32]
  wire [1:0] _GEN_31 = 8'h9 == io_req_bits_cmd ? s_data_write : _GEN_26; // @[SliceCtrl.scala 64:28 58:29]
  wire  _GEN_32 = 8'h9 == io_req_bits_cmd ? s_cmo : _GEN_27; // @[SliceCtrl.scala 61:22 64:28]
  wire  _GEN_33 = 8'h8 == io_req_bits_cmd | s_wb_self_dir; // @[SliceCtrl.scala 64:28 81:23 54:30]
  wire  _GEN_34 = 8'h8 == io_req_bits_cmd ? s_wb_client_dir : _GEN_28; // @[SliceCtrl.scala 64:28 55:32]
  wire  _GEN_35 = 8'h8 == io_req_bits_cmd ? s_wb_self_tag : _GEN_29; // @[SliceCtrl.scala 64:28 56:30]
  wire  _GEN_36 = 8'h8 == io_req_bits_cmd ? s_wb_client_tag : _GEN_30; // @[SliceCtrl.scala 64:28 57:32]
  wire [1:0] _GEN_37 = 8'h8 == io_req_bits_cmd ? s_data_write : _GEN_31; // @[SliceCtrl.scala 64:28 58:29]
  wire  _GEN_38 = 8'h8 == io_req_bits_cmd ? s_cmo : _GEN_32; // @[SliceCtrl.scala 61:22 64:28]
  wire [1:0] _GEN_39 = 8'h2 == io_req_bits_cmd ? 2'h0 : s_data_read; // @[SliceCtrl.scala 64:28 78:21 59:28]
  wire  _GEN_40 = 8'h2 == io_req_bits_cmd ? s_wb_self_dir : _GEN_33; // @[SliceCtrl.scala 64:28 54:30]
  wire  _GEN_41 = 8'h2 == io_req_bits_cmd ? s_wb_client_dir : _GEN_34; // @[SliceCtrl.scala 64:28 55:32]
  wire  _GEN_42 = 8'h2 == io_req_bits_cmd ? s_wb_self_tag : _GEN_35; // @[SliceCtrl.scala 64:28 56:30]
  wire  _GEN_43 = 8'h2 == io_req_bits_cmd ? s_wb_client_tag : _GEN_36; // @[SliceCtrl.scala 64:28 57:32]
  wire [1:0] _GEN_44 = 8'h2 == io_req_bits_cmd ? s_data_write : _GEN_37; // @[SliceCtrl.scala 64:28 58:29]
  wire  _GEN_45 = 8'h2 == io_req_bits_cmd ? s_cmo : _GEN_38; // @[SliceCtrl.scala 61:22 64:28]
  wire  _GEN_46 = 8'h1 == io_req_bits_cmd | s_dir_read; // @[SliceCtrl.scala 64:28 75:20 60:27]
  wire [1:0] _GEN_47 = 8'h1 == io_req_bits_cmd ? s_data_read : _GEN_39; // @[SliceCtrl.scala 59:28 64:28]
  wire  _GEN_48 = 8'h1 == io_req_bits_cmd ? s_wb_self_dir : _GEN_40; // @[SliceCtrl.scala 64:28 54:30]
  wire  _GEN_49 = 8'h1 == io_req_bits_cmd ? s_wb_client_dir : _GEN_41; // @[SliceCtrl.scala 64:28 55:32]
  wire  _GEN_50 = 8'h1 == io_req_bits_cmd ? s_wb_self_tag : _GEN_42; // @[SliceCtrl.scala 64:28 56:30]
  wire  _GEN_51 = 8'h1 == io_req_bits_cmd ? s_wb_client_tag : _GEN_43; // @[SliceCtrl.scala 64:28 57:32]
  wire [1:0] _GEN_52 = 8'h1 == io_req_bits_cmd ? s_data_write : _GEN_44; // @[SliceCtrl.scala 64:28 58:29]
  wire  _GEN_53 = 8'h1 == io_req_bits_cmd ? s_cmo : _GEN_45; // @[SliceCtrl.scala 61:22 64:28]
  wire  _GEN_54 = 8'h0 == io_req_bits_cmd | _GEN_46; // @[SliceCtrl.scala 64:28 72:20]
  wire [1:0] _GEN_55 = 8'h0 == io_req_bits_cmd ? s_data_read : _GEN_47; // @[SliceCtrl.scala 59:28 64:28]
  wire  _GEN_56 = 8'h0 == io_req_bits_cmd ? s_wb_self_dir : _GEN_48; // @[SliceCtrl.scala 64:28 54:30]
  wire  _GEN_57 = 8'h0 == io_req_bits_cmd ? s_wb_client_dir : _GEN_49; // @[SliceCtrl.scala 64:28 55:32]
  wire  _GEN_58 = 8'h0 == io_req_bits_cmd ? s_wb_self_tag : _GEN_50; // @[SliceCtrl.scala 64:28 56:30]
  wire  _GEN_59 = 8'h0 == io_req_bits_cmd ? s_wb_client_tag : _GEN_51; // @[SliceCtrl.scala 64:28 57:32]
  wire [1:0] _GEN_60 = 8'h0 == io_req_bits_cmd ? s_data_write : _GEN_52; // @[SliceCtrl.scala 64:28 58:29]
  wire  _GEN_61 = 8'h0 == io_req_bits_cmd ? s_cmo : _GEN_53; // @[SliceCtrl.scala 61:22 64:28]
  wire  _GEN_62 = 8'h4 == io_req_bits_cmd | _GEN_54; // @[SliceCtrl.scala 64:28 69:20]
  wire [1:0] _GEN_63 = 8'h4 == io_req_bits_cmd ? s_data_read : _GEN_55; // @[SliceCtrl.scala 59:28 64:28]
  wire  _GEN_64 = 8'h4 == io_req_bits_cmd ? s_wb_self_dir : _GEN_56; // @[SliceCtrl.scala 64:28 54:30]
  wire  _GEN_65 = 8'h4 == io_req_bits_cmd ? s_wb_client_dir : _GEN_57; // @[SliceCtrl.scala 64:28 55:32]
  wire  _GEN_66 = 8'h4 == io_req_bits_cmd ? s_wb_self_tag : _GEN_58; // @[SliceCtrl.scala 64:28 56:30]
  wire  _GEN_67 = 8'h4 == io_req_bits_cmd ? s_wb_client_tag : _GEN_59; // @[SliceCtrl.scala 64:28 57:32]
  wire [1:0] _GEN_68 = 8'h4 == io_req_bits_cmd ? s_data_write : _GEN_60; // @[SliceCtrl.scala 64:28 58:29]
  wire  _GEN_69 = 8'h4 == io_req_bits_cmd ? s_cmo : _GEN_61; // @[SliceCtrl.scala 61:22 64:28]
  wire  _GEN_70 = 8'h3 == io_req_bits_cmd | _GEN_62; // @[SliceCtrl.scala 64:28 66:20]
  wire [65:0] _io_dir_read_bits_idOH_T = {req_reg_way,2'h3}; // @[Cat.scala 31:58]
  wire [24:0] _req_reg_data_0_T = {io_dir_result_bits_self_dirty,io_dir_result_bits_self_state,
    io_dir_result_bits_self_clientStates_0,io_dir_result_bits_self_hit,io_dir_result_bits_self_way,
    io_dir_result_bits_self_tag,io_dir_result_bits_self_error}; // @[SliceCtrl.scala 119:60]
  wire [4:0] _req_reg_data_0_T_4 = {_req_reg_data_0_T[4],_req_reg_data_0_T[3:2],_req_reg_data_0_T[1:0]}; // @[SliceCtrl.scala 119:87]
  wire [2:0] _req_reg_data_0_T_5 = {io_dir_result_bits_clients_states_0_state,io_dir_result_bits_clients_states_0_hit}; // @[SliceCtrl.scala 122:68]
  wire [63:0] _GEN_86 = 8'h1 == req_reg_cmd ? {{45'd0}, io_dir_result_bits_clients_tag} : _GEN_4; // @[SliceCtrl.scala 117:24 128:25]
  wire [63:0] _GEN_87 = 8'h0 == req_reg_cmd ? {{48'd0}, io_dir_result_bits_self_tag} : _GEN_86; // @[SliceCtrl.scala 117:24 125:25]
  wire [63:0] _GEN_88 = 8'h4 == req_reg_cmd ? {{61'd0}, _req_reg_data_0_T_5} : _GEN_87; // @[SliceCtrl.scala 117:24 122:25]
  wire [63:0] _GEN_89 = 8'h3 == req_reg_cmd ? {{59'd0}, _req_reg_data_0_T_4} : _GEN_88; // @[SliceCtrl.scala 117:24 119:25]
  wire [63:0] _GEN_90 = io_dir_result_valid ? _GEN_89 : _GEN_4; // @[SliceCtrl.scala 116:29]
  wire  _GEN_92 = io_dir_result_valid | _GEN_15; // @[SliceCtrl.scala 116:29 132:10]
  wire  _T_26 = io_bs_raddr_ready & io_bs_raddr_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _s_data_read_T_1 = s_data_read + 2'h1; // @[SliceCtrl.scala 165:32]
  reg  data_wen_REG; // @[Pipeline.scala 41:37]
  reg  data_wen_REG_1; // @[Pipeline.scala 41:37]
  reg  data_wen_REG_2; // @[Pipeline.scala 41:37]
  reg  data_wen; // @[Pipeline.scala 41:37]
  reg  w_counter; // @[SliceCtrl.scala 168:26]
  wire [63:0] wdata__0 = io_bs_rdata_data[63:0]; // @[SliceCtrl.scala 173:45]
  wire [63:0] wdata__1 = io_bs_rdata_data[127:64]; // @[SliceCtrl.scala 173:45]
  wire [63:0] wdata__2 = io_bs_rdata_data[191:128]; // @[SliceCtrl.scala 173:45]
  wire [63:0] wdata__3 = io_bs_rdata_data[255:192]; // @[SliceCtrl.scala 173:45]
  wire  _GEN_102 = w_counter | _GEN_92; // @[SliceCtrl.scala 178:41 179:12]
  wire  _GEN_113 = data_wen ? _GEN_102 : _GEN_92; // @[SliceCtrl.scala 169:17]
  wire  _T_36 = io_bs_waddr_ready & io_bs_waddr_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _s_data_write_T_1 = s_data_write + 2'h1; // @[SliceCtrl.scala 193:34]
  wire  _T_37 = io_s_dir_wready & io_s_dir_wvalid; // @[Decoupled.scala 50:35]
  wire  _GEN_118 = _T_37 | _GEN_113; // @[SliceCtrl.scala 196:26 198:10]
  wire  _T_38 = io_c_dir_wready & io_c_dir_wvalid; // @[Decoupled.scala 50:35]
  wire  _GEN_120 = _T_38 | _GEN_118; // @[SliceCtrl.scala 200:26 202:10]
  wire  _GEN_122 = io_s_tag_wvalid | _GEN_120; // @[SliceCtrl.scala 204:26 206:10]
  wire  _GEN_124 = io_c_tag_wvalid | _GEN_122; // @[SliceCtrl.scala 208:26 210:10]
  wire  _T_41 = io_cmo_req_ready & io_cmo_req_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_126 = _T_41 | _GEN_124; // @[SliceCtrl.scala 232:26 234:10]
  assign io_req_ready = ~busy; // @[SliceCtrl.scala 237:19]
  assign io_resp_valid = done; // @[SliceCtrl.scala 238:17]
  assign io_resp_bits_cmd = req_reg_cmd; // @[SliceCtrl.scala 239:20]
  assign io_resp_bits_data_0 = req_reg_data_0; // @[SliceCtrl.scala 240:21]
  assign io_resp_bits_data_1 = req_reg_data_1; // @[SliceCtrl.scala 240:21]
  assign io_resp_bits_data_2 = req_reg_data_2; // @[SliceCtrl.scala 240:21]
  assign io_resp_bits_data_3 = req_reg_data_3; // @[SliceCtrl.scala 240:21]
  assign io_resp_bits_data_4 = req_reg_data_4; // @[SliceCtrl.scala 240:21]
  assign io_resp_bits_data_5 = req_reg_data_5; // @[SliceCtrl.scala 240:21]
  assign io_resp_bits_data_6 = req_reg_data_6; // @[SliceCtrl.scala 240:21]
  assign io_resp_bits_data_7 = req_reg_data_7; // @[SliceCtrl.scala 240:21]
  assign io_s_dir_wvalid = s_wb_self_dir; // @[SliceCtrl.scala 136:20]
  assign io_s_dir_wset = req_reg_set[11:0]; // @[SliceCtrl.scala 141:23]
  assign io_s_dir_wway = req_reg_way[1:0]; // @[SliceCtrl.scala 142:23]
  assign io_s_dir_wdata_dirty = req_reg_dir[4]; // @[SliceCtrl.scala 143:47]
  assign io_s_dir_wdata_state = req_reg_dir[3:2]; // @[SliceCtrl.scala 143:47]
  assign io_s_dir_wdata_clientStates_0 = req_reg_dir[1:0]; // @[SliceCtrl.scala 143:47]
  assign io_c_dir_wvalid = s_wb_client_dir; // @[SliceCtrl.scala 137:20]
  assign io_c_dir_wset = req_reg_set[8:0]; // @[SliceCtrl.scala 145:23]
  assign io_c_dir_wway = req_reg_way[2:0]; // @[SliceCtrl.scala 146:23]
  assign io_c_dir_wdata_0_state = req_reg_dir[1:0]; // @[SliceCtrl.scala 147:47]
  assign io_s_tag_wvalid = s_wb_self_tag; // @[SliceCtrl.scala 138:20]
  assign io_s_tag_wset = req_reg_set[11:0]; // @[SliceCtrl.scala 149:23]
  assign io_s_tag_wway = req_reg_way[1:0]; // @[SliceCtrl.scala 150:23]
  assign io_s_tag_wtag = req_reg_tag[15:0]; // @[SliceCtrl.scala 151:23]
  assign io_c_tag_wvalid = s_wb_client_tag; // @[SliceCtrl.scala 139:20]
  assign io_c_tag_wset = req_reg_set[8:0]; // @[SliceCtrl.scala 153:23]
  assign io_c_tag_wway = req_reg_way[2:0]; // @[SliceCtrl.scala 154:23]
  assign io_c_tag_wtag = req_reg_tag[18:0]; // @[SliceCtrl.scala 155:23]
  assign io_bs_waddr_valid = s_data_write != 2'h2; // @[SliceCtrl.scala 184:38]
  assign io_bs_waddr_bits_way = req_reg_way[1:0]; // @[SliceCtrl.scala 185:25]
  assign io_bs_waddr_bits_set = req_reg_set[11:0]; // @[SliceCtrl.scala 186:25]
  assign io_bs_waddr_bits_beat = s_data_write[0]; // @[SliceCtrl.scala 187:26]
  assign io_bs_wdata_data = s_data_write[0] ? data_beats_1 : data_beats_0; // @[SliceCtrl.scala 190:{21,21}]
  assign io_dir_read_valid = s_dir_read; // @[SliceCtrl.scala 107:21]
  assign io_dir_read_bits_idOH = _io_dir_read_bits_idOH_T[15:0]; // @[SliceCtrl.scala 108:25]
  assign io_dir_read_bits_tag = req_reg_tag[15:0]; // @[SliceCtrl.scala 109:24]
  assign io_dir_read_bits_set = req_reg_set[11:0]; // @[SliceCtrl.scala 110:24]
  assign io_bs_raddr_valid = s_data_read != 2'h2; // @[SliceCtrl.scala 157:37]
  assign io_bs_raddr_bits_way = req_reg_way[1:0]; // @[SliceCtrl.scala 158:25]
  assign io_bs_raddr_bits_set = req_reg_set[11:0]; // @[SliceCtrl.scala 159:25]
  assign io_bs_raddr_bits_beat = s_data_read[0]; // @[SliceCtrl.scala 160:26]
  assign io_cmo_req_valid = s_cmo; // @[SliceCtrl.scala 231:20]
  assign io_cmo_req_bits_param = {{1'd0}, io_req_bits_cmd[1:0]}; // @[SliceCtrl.scala 215:25]
  assign io_cmo_req_bits_set = io_req_bits_set[11:0]; // @[SliceCtrl.scala 218:23]
  assign io_cmo_req_bits_tag = io_req_bits_tag[15:0]; // @[SliceCtrl.scala 219:23]
  always @(posedge clock) begin
    if (_T_1) begin // @[SliceCtrl.scala 37:22]
      req_reg_cmd <= io_req_bits_cmd; // @[SliceCtrl.scala 38:13]
    end
    if (data_wen) begin // @[SliceCtrl.scala 169:17]
      if (~w_counter) begin // @[SliceCtrl.scala 174:35]
        req_reg_data_0 <= wdata__0; // @[SliceCtrl.scala 175:25]
      end else begin
        req_reg_data_0 <= _GEN_90;
      end
    end else begin
      req_reg_data_0 <= _GEN_90;
    end
    if (data_wen) begin // @[SliceCtrl.scala 169:17]
      if (~w_counter) begin // @[SliceCtrl.scala 174:35]
        req_reg_data_1 <= wdata__1; // @[SliceCtrl.scala 175:25]
      end else begin
        req_reg_data_1 <= _GEN_5;
      end
    end else begin
      req_reg_data_1 <= _GEN_5;
    end
    if (data_wen) begin // @[SliceCtrl.scala 169:17]
      if (~w_counter) begin // @[SliceCtrl.scala 174:35]
        req_reg_data_2 <= wdata__2; // @[SliceCtrl.scala 175:25]
      end else begin
        req_reg_data_2 <= _GEN_6;
      end
    end else begin
      req_reg_data_2 <= _GEN_6;
    end
    if (data_wen) begin // @[SliceCtrl.scala 169:17]
      if (~w_counter) begin // @[SliceCtrl.scala 174:35]
        req_reg_data_3 <= wdata__3; // @[SliceCtrl.scala 175:25]
      end else begin
        req_reg_data_3 <= _GEN_7;
      end
    end else begin
      req_reg_data_3 <= _GEN_7;
    end
    if (data_wen) begin // @[SliceCtrl.scala 169:17]
      if (w_counter) begin // @[SliceCtrl.scala 174:35]
        req_reg_data_4 <= wdata__0; // @[SliceCtrl.scala 175:25]
      end else begin
        req_reg_data_4 <= _GEN_8;
      end
    end else begin
      req_reg_data_4 <= _GEN_8;
    end
    if (data_wen) begin // @[SliceCtrl.scala 169:17]
      if (w_counter) begin // @[SliceCtrl.scala 174:35]
        req_reg_data_5 <= wdata__1; // @[SliceCtrl.scala 175:25]
      end else begin
        req_reg_data_5 <= _GEN_9;
      end
    end else begin
      req_reg_data_5 <= _GEN_9;
    end
    if (data_wen) begin // @[SliceCtrl.scala 169:17]
      if (w_counter) begin // @[SliceCtrl.scala 174:35]
        req_reg_data_6 <= wdata__2; // @[SliceCtrl.scala 175:25]
      end else begin
        req_reg_data_6 <= _GEN_10;
      end
    end else begin
      req_reg_data_6 <= _GEN_10;
    end
    if (data_wen) begin // @[SliceCtrl.scala 169:17]
      if (w_counter) begin // @[SliceCtrl.scala 174:35]
        req_reg_data_7 <= wdata__3; // @[SliceCtrl.scala 175:25]
      end else begin
        req_reg_data_7 <= _GEN_11;
      end
    end else begin
      req_reg_data_7 <= _GEN_11;
    end
    if (_T_1) begin // @[SliceCtrl.scala 37:22]
      req_reg_set <= {{52'd0}, set_1}; // @[SliceCtrl.scala 39:17]
    end
    if (_T_1) begin // @[SliceCtrl.scala 37:22]
      req_reg_tag <= {{48'd0}, tag}; // @[SliceCtrl.scala 40:17]
    end
    if (_T_1) begin // @[SliceCtrl.scala 37:22]
      req_reg_way <= io_req_bits_way; // @[SliceCtrl.scala 38:13]
    end
    if (_T_1) begin // @[SliceCtrl.scala 37:22]
      req_reg_dir <= io_req_bits_dir; // @[SliceCtrl.scala 38:13]
    end
    if (reset) begin // @[SliceCtrl.scala 28:21]
      busy <= 1'h0; // @[SliceCtrl.scala 28:21]
    end else if (_T_6) begin // @[SliceCtrl.scala 49:23]
      busy <= 1'h0; // @[SliceCtrl.scala 50:10]
    end else begin
      busy <= _GEN_13;
    end
    if (reset) begin // @[SliceCtrl.scala 29:21]
      done <= 1'h0; // @[SliceCtrl.scala 29:21]
    end else begin
      done <= _GEN_126;
    end
    if (reset) begin // @[SliceCtrl.scala 54:30]
      s_wb_self_dir <= 1'h0; // @[SliceCtrl.scala 54:30]
    end else if (_T_37) begin // @[SliceCtrl.scala 196:26]
      s_wb_self_dir <= 1'h0; // @[SliceCtrl.scala 197:19]
    end else if (_T_1) begin // @[SliceCtrl.scala 63:22]
      if (!(8'h3 == io_req_bits_cmd)) begin // @[SliceCtrl.scala 64:28]
        s_wb_self_dir <= _GEN_64;
      end
    end
    if (reset) begin // @[SliceCtrl.scala 55:32]
      s_wb_client_dir <= 1'h0; // @[SliceCtrl.scala 55:32]
    end else if (_T_38) begin // @[SliceCtrl.scala 200:26]
      s_wb_client_dir <= 1'h0; // @[SliceCtrl.scala 201:21]
    end else if (_T_1) begin // @[SliceCtrl.scala 63:22]
      if (!(8'h3 == io_req_bits_cmd)) begin // @[SliceCtrl.scala 64:28]
        s_wb_client_dir <= _GEN_65;
      end
    end
    if (reset) begin // @[SliceCtrl.scala 56:30]
      s_wb_self_tag <= 1'h0; // @[SliceCtrl.scala 56:30]
    end else if (io_s_tag_wvalid) begin // @[SliceCtrl.scala 204:26]
      s_wb_self_tag <= 1'h0; // @[SliceCtrl.scala 205:19]
    end else if (_T_1) begin // @[SliceCtrl.scala 63:22]
      if (!(8'h3 == io_req_bits_cmd)) begin // @[SliceCtrl.scala 64:28]
        s_wb_self_tag <= _GEN_66;
      end
    end
    if (reset) begin // @[SliceCtrl.scala 57:32]
      s_wb_client_tag <= 1'h0; // @[SliceCtrl.scala 57:32]
    end else if (io_c_tag_wvalid) begin // @[SliceCtrl.scala 208:26]
      s_wb_client_tag <= 1'h0; // @[SliceCtrl.scala 209:21]
    end else if (_T_1) begin // @[SliceCtrl.scala 63:22]
      if (!(8'h3 == io_req_bits_cmd)) begin // @[SliceCtrl.scala 64:28]
        s_wb_client_tag <= _GEN_67;
      end
    end
    if (reset) begin // @[SliceCtrl.scala 58:29]
      s_data_write <= 2'h2; // @[SliceCtrl.scala 58:29]
    end else if (_T_36) begin // @[SliceCtrl.scala 192:28]
      s_data_write <= _s_data_write_T_1; // @[SliceCtrl.scala 193:18]
    end else if (_T_1) begin // @[SliceCtrl.scala 63:22]
      if (!(8'h3 == io_req_bits_cmd)) begin // @[SliceCtrl.scala 64:28]
        s_data_write <= _GEN_68;
      end
    end
    if (reset) begin // @[SliceCtrl.scala 59:28]
      s_data_read <= 2'h2; // @[SliceCtrl.scala 59:28]
    end else if (_T_26) begin // @[SliceCtrl.scala 164:28]
      s_data_read <= _s_data_read_T_1; // @[SliceCtrl.scala 165:17]
    end else if (_T_1) begin // @[SliceCtrl.scala 63:22]
      if (!(8'h3 == io_req_bits_cmd)) begin // @[SliceCtrl.scala 64:28]
        s_data_read <= _GEN_63;
      end
    end
    if (reset) begin // @[SliceCtrl.scala 60:27]
      s_dir_read <= 1'h0; // @[SliceCtrl.scala 60:27]
    end else if (io_dir_result_valid) begin // @[SliceCtrl.scala 116:29]
      s_dir_read <= 1'h0; // @[SliceCtrl.scala 131:16]
    end else if (_T_1) begin // @[SliceCtrl.scala 63:22]
      s_dir_read <= _GEN_70;
    end
    if (reset) begin // @[SliceCtrl.scala 61:22]
      s_cmo <= 1'h0; // @[SliceCtrl.scala 61:22]
    end else if (_T_41) begin // @[SliceCtrl.scala 232:26]
      s_cmo <= 1'h0; // @[SliceCtrl.scala 233:11]
    end else if (_T_1) begin // @[SliceCtrl.scala 63:22]
      if (!(8'h3 == io_req_bits_cmd)) begin // @[SliceCtrl.scala 64:28]
        s_cmo <= _GEN_69;
      end
    end
    if (reset) begin // @[Pipeline.scala 41:37]
      data_wen_REG <= 1'h0; // @[Pipeline.scala 41:37]
    end else begin
      data_wen_REG <= _T_26; // @[Pipeline.scala 41:37]
    end
    if (reset) begin // @[Pipeline.scala 41:37]
      data_wen_REG_1 <= 1'h0; // @[Pipeline.scala 41:37]
    end else begin
      data_wen_REG_1 <= data_wen_REG; // @[Pipeline.scala 41:37]
    end
    if (reset) begin // @[Pipeline.scala 41:37]
      data_wen_REG_2 <= 1'h0; // @[Pipeline.scala 41:37]
    end else begin
      data_wen_REG_2 <= data_wen_REG_1; // @[Pipeline.scala 41:37]
    end
    if (reset) begin // @[Pipeline.scala 41:37]
      data_wen <= 1'h0; // @[Pipeline.scala 41:37]
    end else begin
      data_wen <= data_wen_REG_2; // @[Pipeline.scala 41:37]
    end
    if (reset) begin // @[SliceCtrl.scala 168:26]
      w_counter <= 1'h0; // @[SliceCtrl.scala 168:26]
    end else if (data_wen) begin // @[SliceCtrl.scala 169:17]
      if (w_counter) begin // @[SliceCtrl.scala 178:41]
        w_counter <= 1'h0; // @[SliceCtrl.scala 180:17]
      end else begin
        w_counter <= w_counter + 1'h1; // @[SliceCtrl.scala 170:15]
      end
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
  req_reg_cmd = _RAND_0[7:0];
  _RAND_1 = {2{`RANDOM}};
  req_reg_data_0 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  req_reg_data_1 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  req_reg_data_2 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  req_reg_data_3 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  req_reg_data_4 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  req_reg_data_5 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  req_reg_data_6 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  req_reg_data_7 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  req_reg_set = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  req_reg_tag = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  req_reg_way = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  req_reg_dir = _RAND_12[63:0];
  _RAND_13 = {1{`RANDOM}};
  busy = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  done = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s_wb_self_dir = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s_wb_client_dir = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s_wb_self_tag = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  s_wb_client_tag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  s_data_write = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  s_data_read = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  s_dir_read = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  s_cmo = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  data_wen_REG = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  data_wen_REG_1 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  data_wen_REG_2 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  data_wen = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  w_counter = _RAND_27[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
