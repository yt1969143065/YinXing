module MSHR_32(
  input         clock,
  input         reset,
  input  [3:0]  io_id,
  input         io_enable,
  input         io_alloc_valid,
  input  [2:0]  io_alloc_bits_channel,
  input  [2:0]  io_alloc_bits_opcode,
  input  [2:0]  io_alloc_bits_param,
  input  [2:0]  io_alloc_bits_size,
  input  [5:0]  io_alloc_bits_source,
  input  [11:0] io_alloc_bits_set,
  input  [15:0] io_alloc_bits_tag,
  input  [5:0]  io_alloc_bits_off,
  input  [2:0]  io_alloc_bits_bufIdx,
  input         io_alloc_bits_preferCache,
  input         io_alloc_bits_dirty,
  input         io_alloc_bits_fromProbeHelper,
  input         io_alloc_bits_fromCmoHelper,
  input         io_alloc_bits_needProbeAckData,
  output        io_status_valid,
  output [11:0] io_status_bits_set,
  output [15:0] io_status_bits_tag,
  output [1:0]  io_status_bits_way,
  output        io_status_bits_nestB,
  output        io_status_bits_nestC,
  output        io_status_bits_will_grant_data,
  output        io_status_bits_will_save_data,
  output        io_status_bits_will_free,
  input         io_resps_sink_c_valid,
  input         io_resps_sink_c_bits_hasData,
  input  [2:0]  io_resps_sink_c_bits_param,
  input  [5:0]  io_resps_sink_c_bits_source,
  input         io_resps_sink_c_bits_last,
  input  [2:0]  io_resps_sink_c_bits_bufIdx,
  input         io_resps_sink_d_valid,
  input  [2:0]  io_resps_sink_d_bits_opcode,
  input  [2:0]  io_resps_sink_d_bits_param,
  input  [2:0]  io_resps_sink_d_bits_sink,
  input         io_resps_sink_d_bits_last,
  input         io_resps_sink_d_bits_denied,
  input  [2:0]  io_resps_sink_d_bits_bufIdx,
  input         io_resps_sink_e_valid,
  input  [11:0] io_nestedwb_set,
  input  [15:0] io_nestedwb_tag,
  input         io_nestedwb_btoN,
  input         io_nestedwb_btoB,
  input         io_nestedwb_bclr_dirty,
  input         io_nestedwb_bset_dirty,
  input         io_nestedwb_c_set_dirty,
  input         io_nestedwb_c_set_hit,
  input         io_nestedwb_clients_0_isToN,
  output        io_ecc_valid,
  output [7:0]  io_ecc_bits_errCode,
  output [63:0] io_ecc_bits_addr,
  input         io_tasks_sink_a_ready,
  output        io_tasks_sink_a_valid,
  output [5:0]  io_tasks_sink_a_bits_sourceId,
  output [11:0] io_tasks_sink_a_bits_set,
  output [15:0] io_tasks_sink_a_bits_tag,
  output [2:0]  io_tasks_sink_a_bits_size,
  output [5:0]  io_tasks_sink_a_bits_off,
  input         io_tasks_source_bready,
  output        io_tasks_source_bvalid,
  output [11:0] io_tasks_source_bset,
  output [15:0] io_tasks_source_btag,
  output [2:0]  io_tasks_source_bparam,
  output        io_tasks_source_bclients,
  output        io_tasks_source_bneedData,
  input         io_tasks_sink_c_ready,
  output        io_tasks_sink_c_valid,
  output [5:0]  io_tasks_sink_c_bits_sourceId,
  output [11:0] io_tasks_sink_c_bits_set,
  output [15:0] io_tasks_sink_c_bits_tag,
  output [2:0]  io_tasks_sink_c_bits_size,
  output [1:0]  io_tasks_sink_c_bits_way,
  output [5:0]  io_tasks_sink_c_bits_off,
  output [2:0]  io_tasks_sink_c_bits_bufIdx,
  output [2:0]  io_tasks_sink_c_bits_opcode,
  output [2:0]  io_tasks_sink_c_bits_param,
  output [3:0]  io_tasks_sink_c_bits_source,
  output        io_tasks_sink_c_bits_save,
  output        io_tasks_sink_c_bits_drop,
  output        io_tasks_sink_c_bits_release,
  output        io_tasks_sink_c_bits_dirty,
  input         io_tasks_source_d_ready,
  output        io_tasks_source_d_valid,
  output [5:0]  io_tasks_source_d_bits_sourceId,
  output [11:0] io_tasks_source_d_bits_set,
  output [15:0] io_tasks_source_d_bits_tag,
  output [2:0]  io_tasks_source_d_bits_channel,
  output [2:0]  io_tasks_source_d_bits_opcode,
  output [2:0]  io_tasks_source_d_bits_param,
  output [2:0]  io_tasks_source_d_bits_size,
  output [1:0]  io_tasks_source_d_bits_way,
  output [5:0]  io_tasks_source_d_bits_off,
  output        io_tasks_source_d_bits_useBypass,
  output [2:0]  io_tasks_source_d_bits_bufIdx,
  output        io_tasks_source_d_bits_denied,
  output [3:0]  io_tasks_source_d_bits_sinkId,
  output        io_tasks_source_d_bits_bypassPut,
  output        io_tasks_source_d_bits_dirty,
  input         io_tasks_source_a_ready,
  output        io_tasks_source_a_valid,
  output [15:0] io_tasks_source_a_bits_tag,
  output [11:0] io_tasks_source_a_bits_set,
  output [5:0]  io_tasks_source_a_bits_off,
  output [2:0]  io_tasks_source_a_bits_opcode,
  output [2:0]  io_tasks_source_a_bits_param,
  output [3:0]  io_tasks_source_a_bits_source,
  output [2:0]  io_tasks_source_a_bits_bufIdx,
  output [2:0]  io_tasks_source_a_bits_size,
  output        io_tasks_source_a_bits_needData,
  output        io_tasks_source_a_bits_putData,
  input         io_tasks_source_c_ready,
  output        io_tasks_source_c_valid,
  output [2:0]  io_tasks_source_c_bits_opcode,
  output [15:0] io_tasks_source_c_bits_tag,
  output [11:0] io_tasks_source_c_bits_set,
  output [2:0]  io_tasks_source_c_bits_param,
  output [3:0]  io_tasks_source_c_bits_source,
  output [1:0]  io_tasks_source_c_bits_way,
  output        io_tasks_source_c_bits_dirty,
  input         io_tasks_source_e_ready,
  output        io_tasks_source_e_valid,
  output [2:0]  io_tasks_source_e_bits_sink,
  input         io_tasks_dir_write_ready,
  output        io_tasks_dir_write_valid,
  output [11:0] io_tasks_dir_write_bits_set,
  output [1:0]  io_tasks_dir_write_bits_way,
  output        io_tasks_dir_write_bits_data_dirty,
  output [1:0]  io_tasks_dir_write_bits_data_state,
  output [1:0]  io_tasks_dir_write_bits_data_clientStates_0,
  input         io_tasks_tag_write_ready,
  output        io_tasks_tag_write_valid,
  output [11:0] io_tasks_tag_write_bits_set,
  output [1:0]  io_tasks_tag_write_bits_way,
  output [15:0] io_tasks_tag_write_bits_tag,
  input         io_tasks_client_dir_write_ready,
  output        io_tasks_client_dir_write_valid,
  output [8:0]  io_tasks_client_dir_write_bits_set,
  output [2:0]  io_tasks_client_dir_write_bits_way,
  output [1:0]  io_tasks_client_dir_write_bits_data_0_state,
  input         io_tasks_client_tag_write_ready,
  output        io_tasks_client_tag_write_valid,
  output [8:0]  io_tasks_client_tag_write_bits_set,
  output [2:0]  io_tasks_client_tag_write_bits_way,
  output [18:0] io_tasks_client_tag_write_bits_tag,
  input         io_dirResult_valid,
  input         io_dirResult_bits_self_dirty,
  input  [1:0]  io_dirResult_bits_self_state,
  input  [1:0]  io_dirResult_bits_self_clientStates_0,
  input         io_dirResult_bits_self_hit,
  input  [1:0]  io_dirResult_bits_self_way,
  input  [15:0] io_dirResult_bits_self_tag,
  input         io_dirResult_bits_self_error,
  input  [1:0]  io_dirResult_bits_clients_states_0_state,
  input         io_dirResult_bits_clients_states_0_hit,
  input  [18:0] io_dirResult_bits_clients_tag,
  input  [2:0]  io_dirResult_bits_clients_way,
  input         io_dirResult_bits_clients_error,
  input  [11:0] io_c_status_set,
  input  [15:0] io_c_status_tag,
  input  [1:0]  io_c_status_way,
  input         io_c_status_nestedReleaseData,
  output        io_c_status_releaseThrough,
  input  [11:0] io_bstatus_set,
  input  [15:0] io_bstatus_tag,
  input  [1:0]  io_bstatus_way,
  input         io_bstatus_nestedProbeAckData,
  input         io_bstatus_probeHelperFinish,
  output        io_bstatus_probeAckDataThrough,
  input         io_releaseThrough,
  input         io_probeAckDataThrough,
  output        io_is_nestedReleaseData,
  output        io_is_nestedProbeAckData,
  output        io_probeHelperFinish
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
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] req_channel; // @[MSHR.scala 50:16]
  reg [2:0] req_opcode; // @[MSHR.scala 50:16]
  reg [2:0] req_param; // @[MSHR.scala 50:16]
  reg [2:0] req_size; // @[MSHR.scala 50:16]
  reg [5:0] req_source; // @[MSHR.scala 50:16]
  reg [11:0] req_set; // @[MSHR.scala 50:16]
  reg [15:0] req_tag; // @[MSHR.scala 50:16]
  reg [5:0] req_off; // @[MSHR.scala 50:16]
  reg [2:0] req_bufIdx; // @[MSHR.scala 50:16]
  reg  req_preferCache; // @[MSHR.scala 50:16]
  reg  req_dirty; // @[MSHR.scala 50:16]
  reg  req_fromProbeHelper; // @[MSHR.scala 50:16]
  reg  req_fromCmoHelper; // @[MSHR.scala 50:16]
  reg  req_needProbeAckData; // @[MSHR.scala 50:16]
  reg  req_valid; // @[MSHR.scala 51:26]
  reg  meta_reg_self_dirty; // @[MSHR.scala 53:21]
  reg [1:0] meta_reg_self_state; // @[MSHR.scala 53:21]
  reg [1:0] meta_reg_self_clientStates_0; // @[MSHR.scala 53:21]
  reg  meta_reg_self_hit; // @[MSHR.scala 53:21]
  reg [1:0] meta_reg_self_way; // @[MSHR.scala 53:21]
  reg [15:0] meta_reg_self_tag; // @[MSHR.scala 53:21]
  reg  meta_reg_self_error; // @[MSHR.scala 53:21]
  reg [1:0] meta_reg_clients_states_0_state; // @[MSHR.scala 53:21]
  reg  meta_reg_clients_states_0_hit; // @[MSHR.scala 53:21]
  reg [18:0] meta_reg_clients_tag; // @[MSHR.scala 53:21]
  reg [2:0] meta_reg_clients_way; // @[MSHR.scala 53:21]
  reg  meta_reg_clients_error; // @[MSHR.scala 53:21]
  reg  meta_valid; // @[MSHR.scala 55:27]
  wire  _GEN_0 = io_dirResult_valid | meta_valid; // @[MSHR.scala 64:28 65:16 55:27]
  wire  _GEN_5 = io_dirResult_valid ? io_dirResult_bits_clients_error : meta_reg_clients_error; // @[MSHR.scala 64:28 66:14 53:21]
  wire [18:0] _GEN_7 = io_dirResult_valid ? io_dirResult_bits_clients_tag : meta_reg_clients_tag; // @[MSHR.scala 64:28 66:14 53:21]
  wire  _GEN_9 = io_dirResult_valid ? io_dirResult_bits_clients_states_0_hit : meta_reg_clients_states_0_hit; // @[MSHR.scala 64:28 66:14 53:21]
  wire [1:0] _GEN_10 = io_dirResult_valid ? io_dirResult_bits_clients_states_0_state : meta_reg_clients_states_0_state; // @[MSHR.scala 64:28 66:14 53:21]
  wire  _GEN_11 = io_dirResult_valid ? io_dirResult_bits_self_error : meta_reg_self_error; // @[MSHR.scala 64:28 66:14 53:21]
  wire [15:0] _GEN_12 = io_dirResult_valid ? io_dirResult_bits_self_tag : meta_reg_self_tag; // @[MSHR.scala 64:28 66:14 53:21]
  wire [1:0] _GEN_13 = io_dirResult_valid ? io_dirResult_bits_self_way : meta_reg_self_way; // @[MSHR.scala 64:28 66:14 53:21]
  wire  _GEN_14 = io_dirResult_valid ? io_dirResult_bits_self_hit : meta_reg_self_hit; // @[MSHR.scala 64:28 66:14 53:21]
  wire [1:0] _GEN_15 = io_dirResult_valid ? io_dirResult_bits_self_clientStates_0 : meta_reg_self_clientStates_0; // @[MSHR.scala 64:28 66:14 53:21]
  wire [1:0] _GEN_16 = io_dirResult_valid ? io_dirResult_bits_self_state : meta_reg_self_state; // @[MSHR.scala 64:28 66:14 53:21]
  wire  _GEN_17 = io_dirResult_valid ? io_dirResult_bits_self_dirty : meta_reg_self_dirty; // @[MSHR.scala 64:28 66:14 53:21]
  wire  _req_acquire_T = req_opcode == 3'h6; // @[MSHR.scala 77:32]
  wire  _req_acquire_T_1 = req_opcode == 3'h7; // @[MSHR.scala 77:63]
  wire  req_acquire = req_opcode == 3'h6 | req_opcode == 3'h7; // @[MSHR.scala 77:49]
  wire  req_put = req_opcode[2:1] == 2'h0; // @[MSHR.scala 78:33]
  wire  _req_needT_T_2 = req_opcode == 3'h5; // @[MetaData.scala 36:13]
  wire  _req_needT_T_3 = req_param == 3'h1; // @[MetaData.scala 36:42]
  wire  _req_needT_T_4 = req_opcode == 3'h5 & req_param == 3'h1; // @[MetaData.scala 36:33]
  wire  _req_needT_T_5 = ~req_opcode[2] | _req_needT_T_4; // @[MetaData.scala 35:16]
  wire  _req_needT_T_9 = req_param != 3'h0; // @[MetaData.scala 37:89]
  wire  _req_needT_T_10 = req_acquire & req_param != 3'h0; // @[MetaData.scala 37:80]
  wire  req_needT = _req_needT_T_5 | _req_needT_T_10; // @[MetaData.scala 36:70]
  reg  promoteT_safe; // @[MSHR.scala 80:30]
  reg  gotT; // @[MSHR.scala 81:21]
  reg  a_do_release; // @[MSHR.scala 83:29]
  reg  a_do_probe; // @[MSHR.scala 84:27]
  wire [1:0] meta_self_clientStates_0 = _GEN_15; // @[MSHR.scala 68:14]
  wire  meta_no_clients = &(meta_self_clientStates_0 == 2'h0); // @[MSHR.scala 85:76]
  wire [1:0] meta_self_state = _GEN_16; // @[MSHR.scala 68:14]
  wire  _req_promoteT_T = meta_self_state == 2'h3; // @[MSHR.scala 88:40]
  wire  _req_promoteT_T_1 = meta_no_clients & meta_self_state == 2'h3; // @[MSHR.scala 88:21]
  wire  _req_promoteT_T_2 = gotT & promoteT_safe; // @[MSHR.scala 89:10]
  wire  meta_self_hit = _GEN_14; // @[MSHR.scala 68:14]
  wire  _req_promoteT_T_3 = meta_self_hit ? _req_promoteT_T_1 : _req_promoteT_T_2; // @[MSHR.scala 86:40]
  wire  req_promoteT = req_acquire & _req_promoteT_T_3; // @[MSHR.scala 86:34]
  reg  probe_dirty; // @[MSHR.scala 91:28]
  reg  probes_done; // @[MSHR.scala 92:28]
  wire  _client_shrink_perm_T_1 = req_param == 3'h2; // @[MetaData.scala 48:43]
  wire  _client_shrink_perm_T_4 = _req_needT_T_3 | req_param == 3'h2 | req_param == 3'h5; // @[MetaData.scala 48:66]
  wire [1:0] meta_clients_states_0_state = _GEN_10; // @[MSHR.scala 68:14]
  wire  _client_shrink_perm_T_5 = meta_clients_states_0_state != 2'h0; // @[MSHR.scala 94:49]
  wire  _client_shrink_perm_T_7 = req_param == 3'h0; // @[MetaData.scala 51:11]
  wire  _client_shrink_perm_T_9 = req_param == 3'h0 | req_param == 3'h4; // @[MetaData.scala 51:34]
  wire  client_shrink_perm = _client_shrink_perm_T_4 & meta_clients_states_0_state != 2'h0 | _client_shrink_perm_T_9 &
    meta_clients_states_0_state[1]; // @[MSHR.scala 94:61]
  wire  meta_clients_states_0_hit = _GEN_9; // @[MSHR.scala 68:14]
  wire  clients_hit = |meta_clients_states_0_hit; // @[MSHR.scala 95:61]
  wire  _clients_have_T_T_1 = meta_clients_states_0_hit & meta_clients_states_0_state[1]; // @[MSHR.scala 100:27]
  wire  clients_have_T = |_clients_have_T_T_1; // @[MSHR.scala 101:13]
  wire [1:0] _highest_perm_T = meta_self_hit ? meta_self_state : 2'h0; // @[MSHR.scala 108:12]
  wire [1:0] _highest_perm_T_1 = meta_clients_states_0_hit ? meta_clients_states_0_state : 2'h0; // @[MSHR.scala 109:32]
  wire [1:0] highest_perm = _highest_perm_T > _highest_perm_T_1 ? _highest_perm_T : _highest_perm_T_1; // @[ParallelMux.scala 80:46]
  wire [1:0] _highest_perm_except_me_T_6 = req_acquire ? 2'h0 : _highest_perm_T_1; // @[MSHR.scala 115:14]
  wire [1:0] highest_perm_except_me = _highest_perm_T > _highest_perm_except_me_T_6 ? _highest_perm_T :
    _highest_perm_except_me_T_6; // @[ParallelMux.scala 80:46]
  reg  need_block_downwards; // @[MSHR.scala 123:37]
  reg  inv_self_dir; // @[MSHR.scala 124:29]
  reg [2:0] client_probeack_param_vec_reg_0; // @[MSHR.scala 125:46]
  wire  meta_self_dirty = _GEN_17; // @[MSHR.scala 68:14]
  wire  replace_need_release = meta_self_state > meta_self_clientStates_0 | meta_self_dirty & meta_self_state[1]; // @[MSHR.scala 131:69]
  wire [3:0] _replace_param_T = {meta_self_state,meta_self_clientStates_0}; // @[Cat.scala 31:58]
  wire [2:0] _replace_param_T_9 = 4'h4 == _replace_param_T ? 3'h2 : 3'h0; // @[Mux.scala 81:58]
  wire [2:0] _replace_param_T_11 = 4'h5 == _replace_param_T ? 3'h4 : _replace_param_T_9; // @[Mux.scala 81:58]
  wire [2:0] _replace_param_T_13 = 4'h6 == _replace_param_T ? 3'h3 : _replace_param_T_11; // @[Mux.scala 81:58]
  wire [2:0] _replace_param_T_15 = 4'h7 == _replace_param_T ? 3'h3 : _replace_param_T_13; // @[Mux.scala 81:58]
  wire [2:0] _replace_param_T_17 = 4'hc == _replace_param_T ? 3'h1 : _replace_param_T_15; // @[Mux.scala 81:58]
  wire [2:0] _replace_param_T_19 = 4'hd == _replace_param_T ? 3'h0 : _replace_param_T_17; // @[Mux.scala 81:58]
  wire [2:0] replace_param = 4'hb == _replace_param_T ? 3'h3 : _replace_param_T_19; // @[Mux.scala 81:58]
  wire  _prefetch_miss_need_acquire_T_1 = highest_perm == 2'h0; // @[MSHR.scala 146:82]
  wire  _prefetch_miss_need_acquire_T_3 = ~highest_perm[1]; // @[MSHR.scala 146:95]
  wire  prefetch_miss_need_acquire = _client_shrink_perm_T_7 ? highest_perm == 2'h0 : ~highest_perm[1]; // @[MSHR.scala 146:39]
  wire  _prefetch_miss_need_probe_vec_T_5 = ~meta_self_hit; // @[MSHR.scala 150:74]
  wire  _prefetch_miss_need_probe_vec_T_14 = ~meta_clients_states_0_hit; // @[MSHR.scala 151:72]
  wire  prefetch_miss = _req_needT_T_2 & prefetch_miss_need_acquire; // @[MSHR.scala 154:43]
  wire  prefetch_need_data = prefetch_miss & _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 155:42]
  wire  _transmit_from_other_client_T_1 = req_opcode == 3'h4; // @[MSHR.scala 160:19]
  wire  _transmit_from_other_client_T_4 = req_opcode == 3'h4 & meta_clients_states_0_hit; // @[MSHR.scala 160:43]
  wire  _transmit_from_other_client_T_5 = |_transmit_from_other_client_T_4; // @[MSHR.scala 161:13]
  wire  transmit_from_other_client = _prefetch_miss_need_probe_vec_T_5 & _transmit_from_other_client_T_5; // @[MSHR.scala 158:51]
  wire  a_need_data = req_channel[0] & (_transmit_from_other_client_T_1 | req_put | _req_acquire_T | _req_needT_T_2); // @[MSHR.scala 163:31]
  reg  releaseThrough; // @[MSHR.scala 172:31]
  reg  releaseDrop; // @[MSHR.scala 173:28]
  wire  releaseSave = ~releaseThrough & ~releaseDrop; // @[MSHR.scala 174:37]
  reg  probeAckDataThrough; // @[MSHR.scala 181:36]
  reg  probeAckDataDrop; // @[MSHR.scala 182:33]
  reg  probeAckDataSave; // @[MSHR.scala 183:33]
  wire  _a_probe_clients_T_7 = req_needT & _client_shrink_perm_T_5 | meta_clients_states_0_state[1] |
    _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 194:60]
  wire  _a_probe_clients_T_8 = meta_clients_states_0_hit & _a_probe_clients_T_7; // @[MSHR.scala 193:15]
  wire [1:0] _new_self_meta_state_T_2 = meta_self_state[1] ? 2'h3 : 2'h1; // @[MSHR.scala 223:12]
  wire [1:0] _new_self_meta_state_T_3 = meta_self_hit ? _new_self_meta_state_T_2 : meta_self_state; // @[MSHR.scala 222:10]
  wire [1:0] _new_self_meta_state_T_4 = _req_needT_T_3 ? _new_self_meta_state_T_3 : 2'h0; // @[MSHR.scala 221:31]
  wire  _new_self_meta_clientStates_0_T = meta_self_clientStates_0 != 2'h0; // @[MSHR.scala 229:67]
  wire [1:0] _new_self_meta_clientStates_0_T_3 = meta_self_clientStates_0 != 2'h0 & _req_needT_T_3 ? 2'h1 : 2'h0; // @[MSHR.scala 229:40]
  wire [1:0] _new_self_meta_clientStates_0_T_4 = meta_self_hit ? _new_self_meta_clientStates_0_T_3 :
    meta_self_clientStates_0; // @[MSHR.scala 229:21]
  wire [1:0] _new_clients_meta_0_state_T_3 = _client_shrink_perm_T_5 & _req_needT_T_3 ? 2'h1 : 2'h0; // @[MSHR.scala 233:34]
  wire [1:0] _new_clients_meta_0_state_T_4 = meta_clients_states_0_hit ? _new_clients_meta_0_state_T_3 :
    meta_clients_states_0_state; // @[MSHR.scala 233:23]
  wire  _new_self_meta_dirty_T = meta_self_hit & meta_self_dirty; // @[MSHR.scala 239:42]
  wire  _new_self_meta_dirty_T_5 = _req_needT_T_3 | _client_shrink_perm_T_7 | req_param == 3'h3; // @[MetaData.scala 55:66]
  wire [1:0] _new_self_meta_state_T_7 = meta_self_hit & _req_promoteT_T ? 2'h3 : 2'h1; // @[MSHR.scala 248:20]
  wire [1:0] _new_self_meta_state_T_9 = 3'h3 == req_param ? 2'h2 : meta_self_state; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_11 = 3'h0 == req_param ? 2'h3 : _new_self_meta_state_T_9; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_13 = 3'h1 == req_param ? 2'h3 : _new_self_meta_state_T_11; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_15 = 3'h2 == req_param ? _new_self_meta_state_T_7 : _new_self_meta_state_T_13; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_clientStates_0_T_14 = _client_shrink_perm_T_9 ? 2'h1 : meta_self_clientStates_0; // @[MSHR.scala 256:45]
  wire [1:0] _new_self_meta_clientStates_0_T_15 = _client_shrink_perm_T_4 ? 2'h0 : _new_self_meta_clientStates_0_T_14; // @[MSHR.scala 256:14]
  wire [1:0] _new_clients_meta_0_state_T_14 = _client_shrink_perm_T_9 ? 2'h1 : meta_clients_states_0_state; // @[MSHR.scala 264:45]
  wire [1:0] _new_clients_meta_0_state_T_15 = _client_shrink_perm_T_4 ? 2'h0 : _new_clients_meta_0_state_T_14; // @[MSHR.scala 264:14]
  wire  _GEN_19 = req_fromCmoHelper ? 1'h0 : meta_self_hit & meta_self_dirty | req_dirty & _new_self_meta_dirty_T_5; // @[MSHR.scala 220:25 239:25 414:29]
  wire [1:0] _GEN_20 = req_fromCmoHelper ? _new_self_meta_state_T_4 : _new_self_meta_state_T_15; // @[MSHR.scala 221:25 240:25 414:29]
  wire [1:0] _GEN_21 = req_fromCmoHelper ? _new_self_meta_clientStates_0_T_4 : _new_self_meta_clientStates_0_T_15; // @[MSHR.scala 229:15 254:15 414:29]
  wire [1:0] _GEN_22 = req_fromCmoHelper ? _new_clients_meta_0_state_T_4 : _new_clients_meta_0_state_T_15; // @[MSHR.scala 233:17 262:17 414:29]
  wire  _new_self_meta_state_T_16 = ~probeAckDataThrough; // @[MSHR.scala 284:34]
  wire  _new_self_meta_state_T_22 = meta_self_state[1] & _client_shrink_perm_T_7; // @[MSHR.scala 201:16]
  wire  _new_self_meta_state_T_23 = meta_self_state != 2'h0; // @[MSHR.scala 203:15]
  wire [1:0] _new_self_meta_state_T_26 = meta_self_state != 2'h0 & req_param != 3'h2 ? 2'h1 : 2'h0; // @[MSHR.scala 203:8]
  wire [1:0] _new_self_meta_state_T_27 = _new_self_meta_state_T_22 ? meta_self_state : _new_self_meta_state_T_26; // @[MSHR.scala 200:61]
  wire [1:0] _new_self_meta_state_T_28 = req_fromProbeHelper & ~probeAckDataThrough ? _new_self_meta_state_T_2 :
    _new_self_meta_state_T_27; // @[MSHR.scala 284:10]
  wire [1:0] _new_self_meta_state_T_29 = meta_self_hit ? _new_self_meta_state_T_28 : meta_self_state; // @[MSHR.scala 283:31]
  wire  _new_self_meta_clientStates_0_T_19 = meta_self_clientStates_0[1] & _client_shrink_perm_T_7; // @[MSHR.scala 201:16]
  wire [1:0] _new_self_meta_clientStates_0_T_23 = _new_self_meta_clientStates_0_T & req_param != 3'h2 ? 2'h1 : 2'h0; // @[MSHR.scala 203:8]
  wire [1:0] _new_self_meta_clientStates_0_T_24 = _new_self_meta_clientStates_0_T_19 ? meta_self_clientStates_0 :
    _new_self_meta_clientStates_0_T_23; // @[MSHR.scala 200:61]
  wire [1:0] _new_self_meta_clientStates_0_T_25 = meta_self_hit ? _new_self_meta_clientStates_0_T_24 :
    meta_self_clientStates_0; // @[MSHR.scala 292:21]
  reg  w_probeacklast; // @[MSHR.scala 527:31]
  wire  sink_c_resp_valid = io_resps_sink_c_valid & ~w_probeacklast; // @[MSHR.scala 1229:49]
  wire  _T_219 = req_valid & sink_c_resp_valid; // @[MSHR.scala 1235:18]
  wire [2:0] client_probeack_param_vec_0 = req_valid & sink_c_resp_valid & io_resps_sink_c_bits_last ?
    io_resps_sink_c_bits_param : client_probeack_param_vec_reg_0; // @[MSHR.scala 1235:69 1237:43 125:46]
  wire [1:0] _new_clients_meta_0_state_T_24 = client_probeack_param_vec_0 == 3'h0 | client_probeack_param_vec_0 == 3'h4
     ? 2'h1 : 2'h0; // @[MSHR.scala 208:8]
  wire [1:0] _new_clients_meta_0_state_T_25 = meta_clients_states_0_hit ? _new_clients_meta_0_state_T_24 :
    meta_clients_states_0_state; // @[MSHR.scala 296:23]
  wire  _new_self_meta_dirty_T_10 = meta_self_dirty | probe_dirty; // @[MSHR.scala 308:54]
  wire  _new_self_meta_dirty_T_11 = req_promoteT ? 1'h0 : meta_self_dirty | probe_dirty; // @[MSHR.scala 308:14]
  wire  _new_self_meta_dirty_T_13 = meta_self_hit ? _new_self_meta_dirty_T_11 : probe_dirty; // @[MSHR.scala 307:12]
  wire  _new_self_meta_dirty_T_14 = req_needT ? 1'h0 : _new_self_meta_dirty_T_13; // @[MSHR.scala 305:10]
  wire  _new_self_meta_dirty_T_16 = req_put | probe_dirty; // @[MSHR.scala 312:10]
  wire  _new_self_meta_dirty_T_17 = req_acquire ? _new_self_meta_dirty_T_14 : _new_self_meta_dirty_T_16; // @[MSHR.scala 303:31]
  wire [1:0] _new_self_meta_state_T_30 = req_acquire ? 2'h2 : 2'h3; // @[MSHR.scala 319:10]
  wire [1:0] _new_self_meta_state_T_34 = req_acquire & promoteT_safe ? 2'h2 : 2'h3; // @[MSHR.scala 331:16]
  wire [1:0] _new_self_meta_state_T_35 = gotT ? _new_self_meta_state_T_34 : 2'h1; // @[MSHR.scala 330:14]
  wire [1:0] _new_self_meta_state_T_36 = transmit_from_other_client ? highest_perm : _new_self_meta_state_T_35; // @[MSHR.scala 327:12]
  wire  _new_self_meta_state_T_37 = meta_no_clients & req_acquire; // @[MSHR.scala 345:29]
  wire [1:0] _new_self_meta_state_T_38 = _new_self_meta_state_T_37 ? 2'h2 : 2'h3; // @[MSHR.scala 344:21]
  wire [1:0] _new_self_meta_state_T_42 = 2'h2 == meta_self_state ? 2'h3 : 2'h1; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_44 = 2'h3 == meta_self_state ? _new_self_meta_state_T_38 : _new_self_meta_state_T_42
    ; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_45 = _prefetch_miss_need_probe_vec_T_5 ? _new_self_meta_state_T_36 :
    _new_self_meta_state_T_44; // @[MSHR.scala 326:10]
  wire [1:0] _new_self_meta_state_T_46 = req_needT ? _new_self_meta_state_T_30 : _new_self_meta_state_T_45; // @[MSHR.scala 317:31]
  wire [1:0] _GEN_23 = inv_self_dir ? 2'h0 : _new_self_meta_state_T_46; // @[MSHR.scala 351:23 317:25 352:27]
  wire [1:0] _new_self_meta_clientStates_0_T_27 = req_needT | req_promoteT ? 2'h3 : 2'h1; // @[MSHR.scala 359:16]
  wire [1:0] _new_self_meta_clientStates_0_T_29 = meta_clients_states_0_hit ? 2'h1 : 2'h0; // @[MSHR.scala 362:18]
  wire [1:0] _new_self_meta_clientStates_0_T_31 = _transmit_from_other_client_T_1 ? _new_self_meta_clientStates_0_T_29
     : _highest_perm_T_1; // @[MSHR.scala 360:16]
  wire [1:0] _new_self_meta_clientStates_0_T_32 = req_acquire ? _new_self_meta_clientStates_0_T_27 :
    _new_self_meta_clientStates_0_T_31; // @[MSHR.scala 358:23]
  wire  _new_self_meta_clientStates_0_T_37 = meta_clients_states_0_hit & a_do_probe; // @[MSHR.scala 372:39]
  wire [1:0] _new_clients_meta_0_state_T_28 = req_acquire ? _new_self_meta_clientStates_0_T_27 :
    meta_clients_states_0_state; // @[MSHR.scala 386:25]
  wire [1:0] _new_clients_meta_0_state_T_44 = _new_self_meta_clientStates_0_T_37 ? _new_clients_meta_0_state_T_24 :
    meta_clients_states_0_state; // @[MSHR.scala 407:25]
  wire [1:0] _GEN_26 = _transmit_from_other_client_T_1 ? _new_clients_meta_0_state_T_44 : _new_clients_meta_0_state_T_28
    ; // @[MSHR.scala 406:35 407:19]
  wire  _GEN_27 = req_channel[1] ? _new_self_meta_dirty_T | probe_dirty : _new_self_meta_dirty_T_17; // @[MSHR.scala 282:25 303:25 419:25]
  wire [1:0] _GEN_28 = req_channel[1] ? _new_self_meta_state_T_29 : _GEN_23; // @[MSHR.scala 283:25 419:25]
  wire [1:0] _GEN_29 = req_channel[1] ? _new_self_meta_clientStates_0_T_25 : _new_self_meta_clientStates_0_T_32; // @[MSHR.scala 292:15 419:25]
  wire [1:0] _GEN_30 = req_channel[1] ? _new_clients_meta_0_state_T_25 : _GEN_26; // @[MSHR.scala 296:17 419:25]
  wire  new_self_meta_dirty = req_channel[2] ? _GEN_19 : _GEN_27; // @[MSHR.scala 413:19]
  wire [1:0] new_self_meta_state = req_channel[2] ? _GEN_20 : _GEN_28; // @[MSHR.scala 413:19]
  wire [1:0] new_self_meta_clientStates_0 = req_channel[2] ? _GEN_21 : _GEN_29; // @[MSHR.scala 413:19]
  reg [2:0] sink; // @[MSHR.scala 437:17]
  reg  bad_grant; // @[MSHR.scala 439:26]
  wire [27:0] debug_addr_hi = {req_tag,req_set}; // @[Cat.scala 31:58]
  wire  _change_self_meta_T_2 = io_nestedwb_set == req_set; // @[MSHR.scala 458:21]
  wire  _change_self_meta_T_3 = meta_valid & _new_self_meta_state_T_23 & _change_self_meta_T_2; // @[MSHR.scala 457:68]
  wire [15:0] meta_self_tag = _GEN_12; // @[MSHR.scala 68:14]
  wire  change_self_meta = _change_self_meta_T_3 & io_nestedwb_tag == meta_self_tag; // @[MSHR.scala 458:33]
  wire [27:0] _nested_client_match_T = {io_nestedwb_tag,io_nestedwb_set}; // @[Cat.scala 31:58]
  wire  _nested_client_match_T_5 = io_nestedwb_set[8:0] == req_set[8:0]; // @[MSHR.scala 461:45]
  wire  nested_client_match = _nested_client_match_T[27:9] == _GEN_7 & _nested_client_match_T_5; // @[MSHR.scala 460:87]
  wire  change_clients_meta_0 = meta_valid & _client_shrink_perm_T_5 & nested_client_match; // @[MSHR.scala 465:44]
  wire  _GEN_38 = io_nestedwb_bclr_dirty ? 1'h0 : _GEN_17; // @[MSHR.scala 468:35 469:27]
  wire  _GEN_39 = io_nestedwb_bset_dirty | _GEN_38; // @[MSHR.scala 471:35 472:27]
  wire  _GEN_40 = io_nestedwb_c_set_dirty | _GEN_39; // @[MSHR.scala 474:35 475:27]
  reg  nested_c_hit_reg; // @[MSHR.scala 487:33]
  wire  _T_40 = meta_valid & _prefetch_miss_need_probe_vec_T_5 & req_channel[0] & _change_self_meta_T_2; // @[MSHR.scala 489:51]
  wire  _T_41 = _T_40 & io_nestedwb_c_set_hit; // @[MSHR.scala 490:33]
  wire  nested_c_hit = _T_41 | nested_c_hit_reg; // @[MSHR.scala 491:5 492:18]
  reg  s_acquire; // @[MSHR.scala 510:26]
  reg  s_probe; // @[MSHR.scala 511:24]
  reg  s_release; // @[MSHR.scala 512:26]
  reg  s_probeack; // @[MSHR.scala 513:27]
  reg  s_execute; // @[MSHR.scala 514:26]
  reg  s_grantack; // @[MSHR.scala 515:27]
  reg  s_wbselfdir; // @[MSHR.scala 516:28]
  reg  s_wbselftag; // @[MSHR.scala 517:28]
  reg  s_wbclientsdir; // @[MSHR.scala 518:31]
  reg  s_wbclientstag; // @[MSHR.scala 519:31]
  reg  s_transferput; // @[MSHR.scala 520:30]
  reg  s_writerelease; // @[MSHR.scala 521:31]
  reg  s_writeprobe; // @[MSHR.scala 522:29]
  reg  w_probeackfirst; // @[MSHR.scala 526:32]
  reg  w_probeack; // @[MSHR.scala 528:27]
  reg  w_grantfirst; // @[MSHR.scala 529:29]
  reg  w_grantlast; // @[MSHR.scala 530:28]
  reg  w_grant; // @[MSHR.scala 531:24]
  reg  w_releaseack; // @[MSHR.scala 532:29]
  reg  w_grantack; // @[MSHR.scala 533:27]
  reg  acquire_flag; // @[MSHR.scala 535:29]
  wire  _T_42 = ~s_acquire; // @[MSHR.scala 577:8]
  wire  _GEN_55 = ~s_acquire | acquire_flag; // @[MSHR.scala 577:20 535:29 577:35]
  wire  bypassGet = _transmit_from_other_client_T_1 & ~req_preferCache; // @[MSHR.scala 682:38]
  wire  bypassPut = req_put & _prefetch_miss_need_probe_vec_T_5 & ~clients_hit; // @[MSHR.scala 683:45]
  wire  acquirePermMiss = _req_acquire_T_1 & _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 696:52]
  wire  self_ecc_err = meta_reg_self_hit & meta_reg_self_error; // @[MSHR.scala 807:40]
  wire  client_ecc_err = |meta_reg_clients_states_0_hit & meta_reg_clients_error; // @[MSHR.scala 808:70]
  wire [33:0] _io_ecc_bits_addr_T = {req_tag,req_set,req_off}; // @[Cat.scala 31:58]
  wire  meta_self_error = _GEN_11; // @[MSHR.scala 68:14]
  wire  _GEN_56 = req_channel[2] ? 1'h0 : 1'h1; // @[MSHR.scala 543:15 818:22 819:19]
  wire  _GEN_57 = req_channel[1] ? 1'h0 : 1'h1; // @[MSHR.scala 542:16 821:22 822:20]
  wire  _GEN_58 = req_acquire ? 1'h0 : 1'h1; // @[MSHR.scala 562:16 826:26 827:22]
  wire  _GEN_59 = req_channel[0] ? 1'h0 : _GEN_56; // @[MSHR.scala 824:23 825:19]
  wire  _GEN_60 = req_channel[0] ? _GEN_58 : 1'h1; // @[MSHR.scala 562:16 824:23]
  wire  _GEN_61 = meta_clients_states_0_hit ? 1'h0 : 1'h1; // @[MSHR.scala 540:13 583:24 584:19]
  wire  _GEN_62 = meta_self_hit ? 1'h0 : 1'h1; // @[MSHR.scala 545:17 591:25 592:19]
  wire  _GEN_63 = _req_needT_T_9 & meta_self_hit ? 1'h0 : 1'h1; // @[MSHR.scala 541:15 596:46 597:17]
  wire  _GEN_64 = client_shrink_perm ? 1'h0 : 1'h1; // @[MSHR.scala 547:20 606:30 607:22]
  wire  _T_56 = _prefetch_miss_need_probe_vec_T_5 & req_opcode[0]; // @[MSHR.scala 611:27]
  wire  _GEN_65 = _prefetch_miss_need_probe_vec_T_5 & req_opcode[0] ? 1'h0 : 1'h1; // @[MSHR.scala 546:17 611:45 612:21]
  wire  _GEN_66 = meta_self_hit | req_opcode[0] ? 1'h0 : 1'h1; // @[MSHR.scala 545:17 614:44 615:21]
  wire  _T_63 = _T_56 & _new_self_meta_state_T_23; // @[MSHR.scala 618:41]
  wire  _T_64 = _T_63 & replace_need_release; // @[MSHR.scala 619:39]
  wire  _GEN_67 = _T_64 ? 1'h0 : 1'h1; // @[MSHR.scala 541:15 620:9 621:19]
  wire  will_save_release = io_releaseThrough & io_dirResult_valid & req_channel[2] ? 1'h0 : 1'h1; // @[MSHR.scala 845:62 853:23]
  wire  _GEN_68 = will_save_release ? _GEN_65 : 1'h1; // @[MSHR.scala 546:17 609:29]
  wire  _GEN_69 = will_save_release ? _GEN_66 : 1'h1; // @[MSHR.scala 545:17 609:29]
  wire  _GEN_70 = will_save_release ? _GEN_67 : 1'h1; // @[MSHR.scala 541:15 609:29]
  wire  _GEN_71 = req_opcode[0] ? 1'h0 : 1'h1; // @[MSHR.scala 550:20 627:25 628:22]
  wire  _will_release_through_T_1 = req_param <= 3'h2; // @[Bundles.scala 114:29]
  wire  will_release_through = io_releaseThrough & io_dirResult_valid & req_channel[2] & _will_release_through_T_1; // @[MSHR.scala 845:62 848:26]
  wire  _GEN_72 = will_release_through & req_opcode[0] ? 1'h0 : _GEN_70; // @[MSHR.scala 636:49 637:20]
  wire  _GEN_73 = req_fromCmoHelper ? _GEN_61 : 1'h1; // @[MSHR.scala 540:13 832:33]
  wire  _GEN_74 = req_fromCmoHelper ? _GEN_61 : _GEN_64; // @[MSHR.scala 832:33]
  wire  _GEN_75 = req_fromCmoHelper ? _GEN_62 : _GEN_69; // @[MSHR.scala 832:33]
  wire  _GEN_76 = req_fromCmoHelper ? _GEN_63 : _GEN_70; // @[MSHR.scala 832:33]
  wire  _GEN_77 = req_fromCmoHelper ? _GEN_63 : _GEN_72; // @[MSHR.scala 832:33]
  wire  _GEN_79 = req_fromCmoHelper | _GEN_68; // @[MSHR.scala 546:17 832:33]
  wire  _GEN_80 = req_fromCmoHelper | _GEN_71; // @[MSHR.scala 550:20 832:33]
  wire  _GEN_215 = req_channel[1] & clients_have_T; // @[MSHR.scala 871:21 872:29]
  wire  will_probeack_through = io_dirResult_valid & _GEN_215; // @[MSHR.scala 870:28]
  wire  _T_71 = ~req_fromProbeHelper; // @[MSHR.scala 648:36]
  wire  _GEN_81 = ~will_probeack_through & ~req_fromProbeHelper ? 1'h0 : 1'h1; // @[MSHR.scala 542:16 648:58 649:18]
  wire  _T_77 = _client_shrink_perm_T_1 | meta_self_state[1] & _req_needT_T_3; // @[MSHR.scala 212:18]
  wire  _GEN_82 = _T_77 ? 1'h0 : 1'h1; // @[MSHR.scala 545:17 652:58 653:21]
  wire  _GEN_83 = meta_self_hit ? _GEN_82 : 1'h1; // @[MSHR.scala 545:17 651:25]
  wire  _GEN_84 = clients_hit ? 1'h0 : 1'h1; // @[MSHR.scala 540:13 671:48 672:17]
  wire  _GEN_85 = ~(meta_self_hit & meta_self_state[0] & _req_needT_T_3) ? _GEN_84 : 1'h1; // @[MSHR.scala 540:13 662:71]
  wire  _T_110 = prefetch_need_data | transmit_from_other_client; // @[MSHR.scala 706:32]
  wire  _T_112 = req_preferCache & (_req_acquire_T | _transmit_from_other_client_T_1) | _T_110; // @[MSHR.scala 704:78]
  wire  _T_113 = _prefetch_miss_need_probe_vec_T_5 & _new_self_meta_state_T_23 & replace_need_release & _T_112; // @[MSHR.scala 702:80]
  wire  _GEN_86 = _T_113 ? 1'h0 : 1'h1; // @[MSHR.scala 541:15 711:6 712:17]
  wire  _T_117 = req_needT ? ~highest_perm_except_me[1] : highest_perm_except_me == 2'h0; // @[MSHR.scala 721:12]
  wire  _T_121 = req_needT ? _prefetch_miss_need_acquire_T_3 : _prefetch_miss_need_acquire_T_1; // @[MSHR.scala 722:12]
  wire  _T_122 = req_acquire ? _T_117 : _T_121; // @[MSHR.scala 719:10]
  wire  _T_124 = ~req_put; // @[MSHR.scala 729:27]
  wire  _T_125 = ~bypassGet & ~req_put; // @[MSHR.scala 729:24]
  wire  _GEN_88 = ~bypassGet & ~req_put ? 1'h0 : 1'h1; // @[MSHR.scala 544:16 729:37 730:20]
  wire  _T_126 = ~acquirePermMiss; // @[MSHR.scala 734:12]
  wire [2:0] _GEN_337 = {{2'd0}, req_opcode == 3'h0}; // @[MSHR.scala 734:63]
  wire  _GEN_89 = ~acquirePermMiss & (meta_self_hit & _GEN_337 == 3'h4 | req_preferCache) ? 1'h0 : 1'h1; // @[MSHR.scala 545:17 734:89 735:21]
  wire  _GEN_90 = _T_122 ? 1'h0 : 1'h1; // @[MSHR.scala 539:15 724:7 725:17]
  wire  _GEN_91 = _T_122 ? _GEN_88 : 1'h1; // @[MSHR.scala 544:16 724:7]
  wire  _GEN_92 = _T_122 ? _GEN_89 : 1'h1; // @[MSHR.scala 545:17 724:7]
  wire  _GEN_93 = _prefetch_miss_need_probe_vec_T_5 ? 1'h0 : _GEN_92; // @[MSHR.scala 691:25 692:19]
  wire  _GEN_94 = _prefetch_miss_need_probe_vec_T_5 ? 1'h0 : 1'h1; // @[MSHR.scala 546:17 691:25 693:19]
  wire  _T_151 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put); // @[MSHR.scala 761:26]
  wire  _GEN_111 = meta_self_hit ? 1'h0 : _GEN_93; // @[MSHR.scala 763:33 764:27]
  wire  _GEN_113 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? 1'h0 : 1'h1; // @[MSHR.scala 540:13 687:13 761:77]
  wire  _GEN_114 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? _GEN_111 : _GEN_92; // @[MSHR.scala 761:77]
  wire  _GEN_115 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? _GEN_94 : 1'h1; // @[MSHR.scala 546:17 761:77]
  wire  _GEN_116 = req_opcode != 3'h4 & _T_124 ? 1'h0 : _T_151; // @[MSHR.scala 741:47]
  wire  _GEN_117 = req_opcode != 3'h4 & _T_124 | _GEN_113; // @[MSHR.scala 741:47]
  wire  _GEN_118 = req_opcode != 3'h4 & _T_124 ? _GEN_92 : _GEN_114; // @[MSHR.scala 741:47]
  wire  _GEN_119 = req_opcode != 3'h4 & _T_124 | _GEN_115; // @[MSHR.scala 741:47]
  wire  _GEN_120 = _T_126 & (meta_self_hit | req_preferCache) ? 1'h0 : _GEN_118; // @[MSHR.scala 773:64 774:21]
  wire  _GEN_121 = _prefetch_miss_need_probe_vec_T_14 ? 1'h0 : 1'h1; // @[MSHR.scala 548:20 777:36 778:24]
  wire  _GEN_122 = req_acquire ? _GEN_120 : _GEN_118; // @[MSHR.scala 771:23]
  wire  _GEN_123 = req_acquire ? 1'h0 : _GEN_117; // @[MSHR.scala 771:23 776:22]
  wire  _GEN_124 = req_acquire ? _GEN_121 : 1'h1; // @[MSHR.scala 548:20 771:23]
  wire  _T_162 = _transmit_from_other_client_T_1 | _req_acquire_T | prefetch_need_data; // @[MSHR.scala 784:60]
  wire  _T_163 = _prefetch_miss_need_probe_vec_T_5 & req_preferCache & _T_162; // @[MSHR.scala 783:37]
  wire  _GEN_125 = _T_163 ? 1'h0 : _GEN_119; // @[MSHR.scala 785:7 786:19]
  wire  _GEN_126 = bypassPut ? 1'h0 : 1'h1; // @[MSHR.scala 549:19 789:21 790:21]
  wire  _GEN_127 = req_put & meta_self_hit & ~meta_self_dirty ? 1'h0 : _GEN_122; // @[MSHR.scala 793:56 794:19]
  wire  _T_167 = req_opcode != 3'h5; // @[MSHR.scala 804:23]
  wire  _GEN_128 = req_channel[1] ? _GEN_81 : 1'h1; // @[MSHR.scala 542:16 837:29]
  wire  _GEN_129 = req_channel[1] ? _GEN_83 : _GEN_127; // @[MSHR.scala 837:29]
  wire  _GEN_130 = req_channel[1] ? _GEN_85 : _GEN_117; // @[MSHR.scala 837:29]
  wire  _GEN_131 = req_channel[1] ? _GEN_85 : _GEN_123; // @[MSHR.scala 837:29]
  wire  _GEN_132 = req_channel[1] | _req_needT_T_2; // @[MSHR.scala 543:15 701:15 837:29]
  wire  _GEN_133 = req_channel[1] | _GEN_86; // @[MSHR.scala 541:15 837:29]
  wire  _GEN_134 = req_channel[1] ? 1'h0 : _T_113; // @[MSHR.scala 574:18 837:29]
  wire  _GEN_135 = req_channel[1] | _GEN_90; // @[MSHR.scala 539:15 837:29]
  wire  _GEN_136 = req_channel[1] | _GEN_91; // @[MSHR.scala 544:16 837:29]
  wire  _GEN_137 = req_channel[1] ? 1'h0 : _GEN_116; // @[MSHR.scala 575:16 837:29]
  wire  _GEN_138 = req_channel[1] | _GEN_125; // @[MSHR.scala 546:17 837:29]
  wire  _GEN_139 = req_channel[1] | _GEN_58; // @[MSHR.scala 562:16 837:29]
  wire  _GEN_140 = req_channel[1] | _GEN_124; // @[MSHR.scala 548:20 837:29]
  wire  _GEN_141 = req_channel[1] | _GEN_126; // @[MSHR.scala 549:19 837:29]
  wire  _GEN_142 = req_channel[2] ? _GEN_73 : _GEN_130; // @[MSHR.scala 831:23]
  wire  _GEN_143 = req_channel[2] ? _GEN_74 : _GEN_131; // @[MSHR.scala 831:23]
  wire  _GEN_144 = req_channel[2] ? _GEN_75 : _GEN_129; // @[MSHR.scala 831:23]
  wire  _GEN_145 = req_channel[2] ? _GEN_76 : _GEN_133; // @[MSHR.scala 831:23]
  wire  _GEN_146 = req_channel[2] ? _GEN_77 : _GEN_133; // @[MSHR.scala 831:23]
  wire  _GEN_147 = req_channel[2] ? req_fromCmoHelper : _GEN_132; // @[MSHR.scala 831:23]
  wire  _GEN_148 = req_channel[2] ? _GEN_79 : _GEN_138; // @[MSHR.scala 831:23]
  wire  _GEN_149 = req_channel[2] ? _GEN_80 : 1'h1; // @[MSHR.scala 550:20 831:23]
  wire  _GEN_150 = req_channel[2] | _GEN_128; // @[MSHR.scala 542:16 831:23]
  wire  _GEN_152 = req_channel[2] | _GEN_135; // @[MSHR.scala 539:15 831:23]
  wire  _GEN_153 = req_channel[2] | _GEN_136; // @[MSHR.scala 544:16 831:23]
  wire  _GEN_155 = req_channel[2] | _GEN_139; // @[MSHR.scala 562:16 831:23]
  wire  _GEN_156 = req_channel[2] | _GEN_140; // @[MSHR.scala 548:20 831:23]
  wire  _GEN_157 = req_channel[2] | _GEN_141; // @[MSHR.scala 549:19 831:23]
  wire  _GEN_158 = meta_self_error | _GEN_5 ? _GEN_59 : _GEN_147; // @[MSHR.scala 817:48]
  wire  _GEN_159 = meta_self_error | _GEN_5 ? _GEN_57 : _GEN_150; // @[MSHR.scala 817:48]
  wire  _GEN_160 = meta_self_error | _GEN_5 ? _GEN_60 : _GEN_155; // @[MSHR.scala 817:48]
  wire  _GEN_161 = meta_self_error | _GEN_5 | _GEN_142; // @[MSHR.scala 540:13 817:48]
  wire  _GEN_162 = meta_self_error | _GEN_5 | _GEN_143; // @[MSHR.scala 547:20 817:48]
  wire  _GEN_163 = meta_self_error | _GEN_5 | _GEN_144; // @[MSHR.scala 545:17 817:48]
  wire  _GEN_164 = meta_self_error | _GEN_5 | _GEN_145; // @[MSHR.scala 541:15 817:48]
  wire  _GEN_165 = meta_self_error | _GEN_5 | _GEN_146; // @[MSHR.scala 561:18 817:48]
  wire  _GEN_166 = meta_self_error | _GEN_5 | _GEN_148; // @[MSHR.scala 546:17 817:48]
  wire  _GEN_167 = meta_self_error | _GEN_5 | _GEN_149; // @[MSHR.scala 550:20 817:48]
  wire  _GEN_169 = meta_self_error | _GEN_5 | _GEN_152; // @[MSHR.scala 539:15 817:48]
  wire  _GEN_170 = meta_self_error | _GEN_5 | _GEN_153; // @[MSHR.scala 544:16 817:48]
  wire  _GEN_172 = meta_self_error | _GEN_5 | _GEN_156; // @[MSHR.scala 548:20 817:48]
  wire  _GEN_173 = meta_self_error | _GEN_5 | _GEN_157; // @[MSHR.scala 549:19 817:48]
  wire  _GEN_174 = io_dirResult_valid ? _GEN_169 : s_acquire; // @[MSHR.scala 510:26 813:28]
  wire  _GEN_175 = io_dirResult_valid ? _GEN_161 : s_probe; // @[MSHR.scala 511:24 813:28]
  wire  _GEN_176 = io_dirResult_valid ? _GEN_164 : s_release; // @[MSHR.scala 512:26 813:28]
  wire  _GEN_177 = io_dirResult_valid ? _GEN_159 : s_probeack; // @[MSHR.scala 513:27 813:28]
  wire  _GEN_178 = io_dirResult_valid ? _GEN_158 : s_execute; // @[MSHR.scala 514:26 813:28]
  wire  _GEN_179 = io_dirResult_valid ? _GEN_170 : s_grantack; // @[MSHR.scala 515:27 813:28]
  wire  _GEN_180 = io_dirResult_valid ? _GEN_163 : s_wbselfdir; // @[MSHR.scala 516:28 813:28]
  wire  _GEN_181 = io_dirResult_valid ? _GEN_166 : s_wbselftag; // @[MSHR.scala 517:28 813:28]
  wire  _GEN_182 = io_dirResult_valid ? _GEN_162 : s_wbclientsdir; // @[MSHR.scala 813:28 518:31]
  wire  _GEN_183 = io_dirResult_valid ? _GEN_172 : s_wbclientstag; // @[MSHR.scala 813:28 519:31]
  wire  _GEN_184 = io_dirResult_valid ? _GEN_173 : s_transferput; // @[MSHR.scala 813:28 520:30]
  wire  _GEN_185 = io_dirResult_valid ? _GEN_167 : s_writerelease; // @[MSHR.scala 813:28 521:31]
  wire  _GEN_186 = io_dirResult_valid | s_writeprobe; // @[MSHR.scala 551:18 813:28 522:29]
  wire  _GEN_187 = io_dirResult_valid ? _GEN_161 : w_probeackfirst; // @[MSHR.scala 813:28 526:32]
  wire  _GEN_188 = io_dirResult_valid ? _GEN_161 : w_probeacklast; // @[MSHR.scala 813:28 527:31]
  wire  _GEN_189 = io_dirResult_valid ? _GEN_161 : w_probeack; // @[MSHR.scala 528:27 813:28]
  wire  _GEN_190 = io_dirResult_valid ? _GEN_169 : w_grantfirst; // @[MSHR.scala 813:28 529:29]
  wire  _GEN_191 = io_dirResult_valid ? _GEN_169 : w_grantlast; // @[MSHR.scala 530:28 813:28]
  wire  _GEN_192 = io_dirResult_valid ? _GEN_169 : w_grant; // @[MSHR.scala 531:24 813:28]
  wire  _GEN_193 = io_dirResult_valid ? _GEN_165 : w_releaseack; // @[MSHR.scala 813:28 532:29]
  wire  _GEN_194 = io_dirResult_valid ? _GEN_160 : w_grantack; // @[MSHR.scala 533:27 813:28]
  wire  _GEN_195 = io_dirResult_valid | promoteT_safe; // @[MSHR.scala 564:19 813:28 80:30]
  wire  _GEN_196 = io_dirResult_valid ? 1'h0 : gotT; // @[MSHR.scala 565:10 81:21 813:28]
  wire  _GEN_199 = io_dirResult_valid ? 1'h0 : bad_grant; // @[MSHR.scala 568:15 439:26 813:28]
  wire  _GEN_200 = io_dirResult_valid ? 1'h0 : need_block_downwards; // @[MSHR.scala 569:26 813:28 123:37]
  wire  _GEN_201 = io_dirResult_valid ? 1'h0 : inv_self_dir; // @[MSHR.scala 570:18 813:28 124:29]
  wire  will_drop_release = io_releaseThrough & io_dirResult_valid & req_channel[2] & ~will_release_through; // @[MSHR.scala 845:62 850:23]
  wire  _will_save_probeack_T_2 = will_probeack_through & ~io_probeAckDataThrough & meta_self_hit; // @[MSHR.scala 874:78]
  wire  _GEN_212 = req_fromProbeHelper ? will_probeack_through & (_prefetch_miss_need_probe_vec_T_5 |
    io_probeAckDataThrough) : will_probeack_through; // @[MSHR.scala 875:33 876:29 880:29]
  wire  _GEN_216 = req_channel[1] & ~clients_have_T; // @[MSHR.scala 871:21 873:26]
  wire  will_drop_probeack = io_dirResult_valid & _GEN_216; // @[MSHR.scala 870:28]
  wire  _GEN_217 = req_channel[1] ? will_probeack_through & ~io_probeAckDataThrough & meta_self_hit & _req_needT_T_3 : 1'h1
    ; // @[MSHR.scala 871:21 874:26]
  wire  will_save_probeack = io_dirResult_valid ? _GEN_217 : 1'h1; // @[MSHR.scala 870:28]
  wire  _GEN_214 = req_fromProbeHelper ? _will_save_probeack_T_2 : will_save_probeack; // @[MSHR.scala 875:33 878:26 882:26]
  wire  _probeAckDataSave_T_4 = ~probeAckDataDrop; // @[MSHR.scala 885:51]
  wire  _GEN_218 = req_channel[1] ? _GEN_212 : probeAckDataThrough; // @[MSHR.scala 871:21 181:36]
  wire  _GEN_219 = req_channel[1] ? will_drop_probeack : probeAckDataDrop; // @[MSHR.scala 871:21 182:33]
  wire  _GEN_220 = req_channel[1] ? _GEN_214 : _new_self_meta_state_T_16 & ~probeAckDataDrop; // @[MSHR.scala 871:21 885:24]
  wire  no_wait = w_probeacklast & w_grantlast & w_releaseack & w_grantack; // @[MSHR.scala 895:63]
  wire  clients_meta_busy = |(_prefetch_miss_need_probe_vec_T_14 & _client_shrink_perm_T_5); // @[MSHR.scala 897:88]
  wire  _client_dir_conflict_T_3 = req_channel[0] & req_acquire & clients_meta_busy; // @[MSHR.scala 899:30]
  reg  client_dir_conflict; // @[Reg.scala 16:16]
  reg  probe_helper_finish; // @[MSHR.scala 902:36]
  wire  client_set_match = req_set[8:0] == io_bstatus_set[8:0]; // @[MSHR.scala 903:56]
  wire  _GEN_231 = req_valid & io_bstatus_probeHelperFinish & client_set_match | probe_helper_finish; // @[MSHR.scala 904:71 905:25 902:36]
  wire  can_start = client_dir_conflict ? probe_helper_finish : 1'h1; // @[MSHR.scala 914:22]
  wire  _io_tasks_source_a_valid_T_1 = ~s_transferput; // @[MSHR.scala 915:58]
  wire  _io_tasks_sink_c_valid_T_4 = ~s_writeprobe; // @[MSHR.scala 926:95]
  wire [1:0] _client_dir_error_T_6 = _client_shrink_perm_T_1 ? 2'h1 : 2'h0; // @[Mux.scala 27:73]
  wire  _client_dir_error_T_9 = _client_dir_error_T_6 < meta_clients_states_0_state; // @[MSHR.scala 943:26]
  wire  client_dir_error = req_acquire & meta_clients_states_0_hit & _client_dir_error_T_9; // @[MSHR.scala 942:63]
  wire  client_hit_acquire_prem = clients_hit & ~need_block_downwards & ~client_dir_error & _T_167; // @[MSHR.scala 951:63]
  wire  acquire_perm_NtoT = _req_acquire_T_1 & _req_needT_T_3; // @[MSHR.scala 957:54]
  wire [2:0] _io_tasks_source_a_bits_opcode_T_3 = client_hit_acquire_prem | acquire_perm_NtoT ? 3'h7 : 3'h6; // @[MSHR.scala 960:10]
  wire [2:0] _io_tasks_source_a_bits_opcode_T_4 = meta_self_hit ? 3'h7 : _io_tasks_source_a_bits_opcode_T_3; // @[MSHR.scala 959:8]
  wire [1:0] _io_tasks_source_a_bits_param_T_1 = client_hit_acquire_prem ? 2'h2 : 2'h1; // @[MSHR.scala 970:12]
  wire [1:0] _io_tasks_source_a_bits_param_T_2 = meta_self_hit ? 2'h2 : _io_tasks_source_a_bits_param_T_1; // @[MSHR.scala 968:10]
  wire [1:0] _io_tasks_source_a_bits_param_T_3 = req_needT ? _io_tasks_source_a_bits_param_T_2 : 2'h0; // @[MSHR.scala 967:8]
  wire [1:0] _io_tasks_source_bparam_T_4 = _client_shrink_perm_T_7 ? 2'h1 : 2'h2; // @[MSHR.scala 997:10]
  wire [1:0] _io_tasks_source_bparam_T_6 = _req_needT_T_3 ? 2'h1 : 2'h2; // @[MSHR.scala 999:12]
  wire [1:0] _io_tasks_source_bparam_T_8 = req_needT ? 2'h2 : 2'h1; // @[MSHR.scala 1000:12]
  wire [1:0] _io_tasks_source_bparam_T_9 = req_fromCmoHelper ? _io_tasks_source_bparam_T_6 :
    _io_tasks_source_bparam_T_8; // @[MSHR.scala 998:10]
  wire [1:0] _io_tasks_source_bparam_T_10 = _req_needT_T_2 ? _io_tasks_source_bparam_T_4 :
    _io_tasks_source_bparam_T_9; // @[MSHR.scala 995:8]
  wire  x_probe_clients_0 = _req_needT_T_3 ? _clients_have_T_T_1 : meta_clients_states_0_hit; // @[MSHR.scala 1010:18]
  wire  _probe_clients_T_3 = req_channel[0] & _req_needT_T_2; // @[MSHR.scala 1014:17]
  reg  probe_clients; // @[Reg.scala 16:16]
  wire [1:0] _io_tasks_source_c_bits_opcode_T_2 = req_fromProbeHelper ? 2'h3 : 2'h2; // @[MSHR.scala 1035:10]
  wire  _io_tasks_source_c_bits_opcode_T_4 = probe_dirty | _new_self_meta_dirty_T; // @[MSHR.scala 1036:20]
  wire  _io_tasks_source_c_bits_opcode_T_5 = probe_dirty | _new_self_meta_dirty_T | req_needProbeAckData; // @[MSHR.scala 1036:56]
  wire  _io_tasks_source_c_bits_opcode_T_6 = highest_perm != 2'h0; // @[MSHR.scala 1037:66]
  wire  _io_tasks_source_c_bits_opcode_T_7 = _io_tasks_source_c_bits_opcode_T_5 & highest_perm != 2'h0; // @[MSHR.scala 1037:50]
  wire [2:0] _io_tasks_source_c_bits_opcode_T_8 = {_io_tasks_source_c_bits_opcode_T_2,_io_tasks_source_c_bits_opcode_T_7
    }; // @[Cat.scala 31:58]
  wire [2:0] _io_tasks_source_c_bits_opcode_T_9 = {2'h3,meta_self_dirty}; // @[Cat.scala 31:58]
  wire  _probeack_param_T_2 = highest_perm[1] & _client_shrink_perm_T_7; // @[MSHR.scala 201:16]
  wire [1:0] _probeack_param_T_6 = _io_tasks_source_c_bits_opcode_T_6 & req_param != 3'h2 ? 2'h1 : 2'h0; // @[MSHR.scala 203:8]
  wire [1:0] _probeack_param_T_7 = _probeack_param_T_2 ? highest_perm : _probeack_param_T_6; // @[MSHR.scala 200:61]
  wire [3:0] _probeack_param_T_8 = {highest_perm,_probeack_param_T_7}; // @[Cat.scala 31:58]
  wire [2:0] _probeack_param_T_19 = 4'ha == _probeack_param_T_8 ? 3'h3 : 3'h5; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_21 = 4'hf == _probeack_param_T_8 ? 3'h3 : _probeack_param_T_19; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_23 = 4'h9 == _probeack_param_T_8 ? 3'h0 : _probeack_param_T_21; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_25 = 4'hd == _probeack_param_T_8 ? 3'h0 : _probeack_param_T_23; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_27 = 4'h8 == _probeack_param_T_8 ? 3'h1 : _probeack_param_T_25; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_29 = 4'hc == _probeack_param_T_8 ? 3'h1 : _probeack_param_T_27; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_31 = 4'h5 == _probeack_param_T_8 ? 3'h4 : _probeack_param_T_29; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_33 = 4'h4 == _probeack_param_T_8 ? 3'h2 : _probeack_param_T_31; // @[Mux.scala 81:58]
  wire [2:0] probeack_param = 4'h0 == _probeack_param_T_8 ? 3'h5 : _probeack_param_T_33; // @[Mux.scala 81:58]
  wire  _io_tasks_source_d_bits_useBypass_T_3 = ~nested_c_hit; // @[MSHR.scala 1069:53]
  wire  _io_tasks_source_d_bits_useBypass_T_5 = meta_reg_self_error | meta_reg_clients_error; // @[MSHR.scala 1069:92]
  wire [1:0] io_tasks_source_d_bits_channel_hi = {req_channel[2],1'h0}; // @[Cat.scala 31:58]
  wire [2:0] io_tasks_source_d_bits_opcode_grantOp = _client_shrink_perm_T_1 ? 3'h4 : 3'h5; // @[MSHR.scala 1078:64]
  wire [2:0] _GEN_235 = 3'h2 == req_opcode ? 3'h1 : 3'h0; // @[MSHR.scala 1081:{8,8}]
  wire [2:0] _GEN_236 = 3'h3 == req_opcode ? 3'h1 : _GEN_235; // @[MSHR.scala 1081:{8,8}]
  wire [2:0] _GEN_237 = 3'h4 == req_opcode ? 3'h1 : _GEN_236; // @[MSHR.scala 1081:{8,8}]
  wire [2:0] _GEN_238 = 3'h5 == req_opcode ? 3'h2 : _GEN_237; // @[MSHR.scala 1081:{8,8}]
  wire [2:0] _GEN_239 = 3'h6 == req_opcode ? io_tasks_source_d_bits_opcode_grantOp : _GEN_238; // @[MSHR.scala 1081:{8,8}]
  wire [2:0] _GEN_240 = 3'h7 == req_opcode ? 3'h4 : _GEN_239; // @[MSHR.scala 1081:{8,8}]
  wire  _io_tasks_source_d_bits_param_T = ~req_acquire; // @[MSHR.scala 1087:7]
  wire [1:0] _io_tasks_source_d_bits_param_T_1 = req_promoteT ? 2'h0 : 2'h1; // @[MSHR.scala 1089:54]
  wire [2:0] _io_tasks_source_d_bits_param_T_3 = 3'h0 == req_param ? {{1'd0}, _io_tasks_source_d_bits_param_T_1} :
    req_param; // @[Mux.scala 81:58]
  wire [2:0] _io_tasks_source_d_bits_param_T_5 = 3'h2 == req_param ? 3'h0 : _io_tasks_source_d_bits_param_T_3; // @[Mux.scala 81:58]
  wire [2:0] _io_tasks_source_d_bits_param_T_7 = 3'h1 == req_param ? 3'h0 : _io_tasks_source_d_bits_param_T_5; // @[Mux.scala 81:58]
  wire  _io_tasks_source_d_bits_dirty_T_4 = _client_shrink_perm_T_7 & ~req_promoteT ? 1'h0 : _new_self_meta_dirty_T_10; // @[MSHR.scala 1099:10]
  wire  _io_tasks_source_d_bits_dirty_T_6 = meta_self_hit ? _io_tasks_source_d_bits_dirty_T_4 : probe_dirty; // @[MSHR.scala 1097:8]
  wire  _io_tasks_sink_c_bits_bufIdx_T = io_resps_sink_c_valid & io_resps_sink_c_bits_hasData; // @[MSHR.scala 1125:66]
  reg [2:0] io_tasks_sink_c_bits_bufIdx_r; // @[Reg.scala 16:16]
  wire [2:0] _io_tasks_sink_c_bits_opcode_T_1 = req_fromProbeHelper | req_fromCmoHelper ? 3'h7 : 3'h5; // @[MSHR.scala 1129:8]
  wire  _io_tasks_sink_c_bits_dirty_T_1 = req_dirty | _new_self_meta_dirty_T; // @[MSHR.scala 1147:15]
  wire  _T_204 = io_tasks_source_a_ready & io_tasks_source_a_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_242 = _T_204 | _GEN_174; // @[MSHR.scala 1183:34 1184:15]
  wire  _GEN_243 = _T_204 | _GEN_184; // @[MSHR.scala 1183:34 1185:19]
  wire  _T_205 = io_tasks_source_bready & io_tasks_source_bvalid; // @[Decoupled.scala 50:35]
  wire  _GEN_244 = _T_205 | _GEN_175; // @[MSHR.scala 1187:34 1188:13]
  wire  _T_210 = io_tasks_source_c_ready & io_tasks_source_c_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_245 = _T_210 | _GEN_176; // @[MSHR.scala 1191:34 1192:15]
  wire  _GEN_246 = _T_210 | _GEN_177; // @[MSHR.scala 1191:34 1193:16]
  wire  _T_211 = io_tasks_source_d_ready & io_tasks_source_d_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_247 = _T_211 | _GEN_178; // @[MSHR.scala 1195:34 1196:15]
  wire  _T_212 = io_tasks_source_e_ready & io_tasks_source_e_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_248 = _T_212 | _GEN_179; // @[MSHR.scala 1198:34 1199:16]
  wire  _T_213 = io_tasks_dir_write_ready & io_tasks_dir_write_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_249 = _T_213 | _GEN_180; // @[MSHR.scala 1201:35 1202:17]
  wire  _T_214 = io_tasks_tag_write_ready & io_tasks_tag_write_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_250 = _T_214 | _GEN_181; // @[MSHR.scala 1204:35 1205:17]
  wire  _T_215 = io_tasks_client_dir_write_ready & io_tasks_client_dir_write_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_251 = _T_215 | _GEN_182; // @[MSHR.scala 1207:41 1208:20]
  wire  _T_216 = io_tasks_client_tag_write_ready & io_tasks_client_tag_write_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_252 = _T_216 | _GEN_183; // @[MSHR.scala 1210:41 1211:20]
  wire  _T_217 = io_tasks_sink_c_ready & io_tasks_sink_c_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_253 = _io_tasks_sink_c_valid_T_4 | _GEN_186; // @[MSHR.scala 1214:25 1215:20]
  wire  _GEN_254 = _io_tasks_sink_c_valid_T_4 ? _GEN_185 : 1'h1; // @[MSHR.scala 1214:25 1217:22]
  wire  _GEN_255 = _T_217 ? _GEN_253 : _GEN_186; // @[MSHR.scala 1213:32]
  wire  _GEN_256 = _T_217 ? _GEN_254 : _GEN_185; // @[MSHR.scala 1213:32]
  wire  probeack_bit = ~io_resps_sink_c_bits_source[5]; // @[Parameters.scala 54:32]
  wire  _probeack_last_T = probes_done | probeack_bit; // @[MSHR.scala 1231:36]
  wire  probeack_last = (probes_done | probeack_bit) == probe_clients; // @[MSHR.scala 1231:52]
  wire  _T_226 = req_channel[1] & req_fromProbeHelper; // @[MSHR.scala 1245:22]
  wire  _GEN_258 = req_channel[1] & req_fromProbeHelper & probeAckDataThrough | req_fromCmoHelper & probeAckDataThrough
     ? 1'h0 : _GEN_193; // @[MSHR.scala 1245:112 1246:22]
  wire  _GEN_259 = req_fromProbeHelper ? 1'h0 : _GEN_193; // @[MSHR.scala 1254:34 1255:24]
  wire  _GEN_260 = req_channel[1] & (probeAckDataThrough & io_resps_sink_c_bits_param != 3'h5 | _T_71) ? 1'h0 : _GEN_246
    ; // @[MSHR.scala 1249:112 1253:20]
  wire  _GEN_261 = req_channel[1] & (probeAckDataThrough & io_resps_sink_c_bits_param != 3'h5 | _T_71) ? _GEN_259 :
    _GEN_193; // @[MSHR.scala 1249:112]
  wire  _GEN_262 = io_resps_sink_c_bits_hasData ? 1'h0 : _GEN_255; // @[MSHR.scala 1242:39 1244:20]
  wire  _GEN_263 = io_resps_sink_c_bits_hasData ? _GEN_258 : _GEN_261; // @[MSHR.scala 1242:39]
  wire  _GEN_264 = io_resps_sink_c_bits_hasData ? _GEN_246 : _GEN_260; // @[MSHR.scala 1242:39]
  wire  _GEN_265 = _T_219 & probeack_last & io_resps_sink_c_bits_last ? _GEN_262 : _GEN_255; // @[MSHR.scala 1241:86]
  wire  _GEN_266 = _T_219 & probeack_last & io_resps_sink_c_bits_last ? _GEN_263 : _GEN_193; // @[MSHR.scala 1241:86]
  wire  _GEN_267 = _T_219 & probeack_last & io_resps_sink_c_bits_last ? _GEN_264 : _GEN_246; // @[MSHR.scala 1241:86]
  wire  _wprobeack_T = req_off == 6'h0; // @[MSHR.scala 1265:72]
  wire  _T_241 = ~acquire_flag & a_need_data & probeack_last; // @[MSHR.scala 1268:59]
  wire  _T_248 = _T_241 & io_resps_sink_c_bits_last & ~io_resps_sink_c_bits_hasData &
    _io_tasks_source_d_bits_useBypass_T_3 & _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 1269:70]
  wire  _GEN_268 = _T_125 ? 1'h0 : _GEN_248; // @[MSHR.scala 1276:37 1277:20]
  wire  _T_252 = req_preferCache | meta_self_hit; // @[MSHR.scala 1282:26]
  wire  _GEN_269 = ~(req_preferCache | meta_self_hit) | _GEN_250; // @[MSHR.scala 1282:45 1284:21]
  wire  _GEN_270 = ~(req_preferCache | meta_self_hit) | _GEN_201; // @[MSHR.scala 1282:45 1287:22]
  wire  _GEN_271 = _T_248 ? 1'h0 : _GEN_195; // @[MSHR.scala 1270:7 1271:21]
  wire  _GEN_272 = _T_248 ? 1'h0 : _GEN_242; // @[MSHR.scala 1270:7 1272:17]
  wire  _GEN_273 = _T_248 ? 1'h0 : _GEN_190; // @[MSHR.scala 1270:7 1273:20]
  wire  _GEN_274 = _T_248 ? 1'h0 : _GEN_191; // @[MSHR.scala 1270:7 1274:19]
  wire  _GEN_275 = _T_248 ? 1'h0 : _GEN_192; // @[MSHR.scala 1270:7 1275:15]
  wire  _GEN_276 = _T_248 ? _GEN_268 : _GEN_248; // @[MSHR.scala 1270:7]
  wire  _GEN_277 = _T_248 | _GEN_200; // @[MSHR.scala 1270:7 1279:28]
  wire  _GEN_278 = _T_248 ? _GEN_269 : _GEN_250; // @[MSHR.scala 1270:7]
  wire  _GEN_281 = _T_219 ? w_probeackfirst | probeack_last : _GEN_187; // @[MSHR.scala 1260:40 1263:21]
  wire  _GEN_282 = _T_219 ? w_probeacklast | probeack_last & io_resps_sink_c_bits_last : _GEN_188; // @[MSHR.scala 1260:40 1264:20]
  wire  _GEN_283 = _T_219 ? w_probeack | probeack_last & (io_resps_sink_c_bits_last | req_off == 6'h0) : _GEN_189; // @[MSHR.scala 1260:40 1265:16]
  wire  _GEN_285 = _T_219 ? _GEN_271 : _GEN_195; // @[MSHR.scala 1260:40]
  wire  _GEN_286 = _T_219 ? _GEN_272 : _GEN_242; // @[MSHR.scala 1260:40]
  wire  _GEN_287 = _T_219 ? _GEN_273 : _GEN_190; // @[MSHR.scala 1260:40]
  wire  _GEN_288 = _T_219 ? _GEN_274 : _GEN_191; // @[MSHR.scala 1260:40]
  wire  _GEN_289 = _T_219 ? _GEN_275 : _GEN_192; // @[MSHR.scala 1260:40]
  wire  _GEN_290 = _T_219 ? _GEN_276 : _GEN_248; // @[MSHR.scala 1260:40]
  wire  _GEN_292 = _T_219 ? _GEN_278 : _GEN_250; // @[MSHR.scala 1260:40]
  wire  _GEN_295 = io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 |
    io_resps_sink_d_bits_opcode == 3'h1 | io_resps_sink_d_bits_opcode == 3'h0 | _GEN_287; // @[MSHR.scala 1292:188 1294:20]
  wire  _GEN_296 = io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 |
    io_resps_sink_d_bits_opcode == 3'h1 | io_resps_sink_d_bits_opcode == 3'h0 ? w_grantlast | io_resps_sink_d_bits_last
     : _GEN_288; // @[MSHR.scala 1292:188 1295:19]
  wire  _GEN_297 = io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 |
    io_resps_sink_d_bits_opcode == 3'h1 | io_resps_sink_d_bits_opcode == 3'h0 ? _wprobeack_T |
    io_resps_sink_d_bits_last : _GEN_289; // @[MSHR.scala 1292:188 1296:15]
  wire  _GEN_302 = io_resps_sink_d_bits_opcode == 3'h6 | _GEN_266; // @[MSHR.scala 1302:54 1303:20]
  wire  _GEN_304 = req_valid & io_resps_sink_d_valid ? _GEN_295 : _GEN_287; // @[MSHR.scala 1291:44]
  wire  _GEN_305 = req_valid & io_resps_sink_d_valid ? _GEN_296 : _GEN_288; // @[MSHR.scala 1291:44]
  wire  _GEN_306 = req_valid & io_resps_sink_d_valid ? _GEN_297 : _GEN_289; // @[MSHR.scala 1291:44]
  wire  _GEN_311 = req_valid & io_resps_sink_d_valid ? _GEN_302 : _GEN_266; // @[MSHR.scala 1291:44]
  wire  _GEN_312 = io_resps_sink_e_valid | _GEN_194; // @[MSHR.scala 1307:31 1308:16]
  reg  no_schedule_REG; // @[MSHR.scala 1313:12]
  wire  _no_schedule_T_6 = s_probeack & s_execute & s_grantack & no_schedule_REG; // @[MSHR.scala 1312:59]
  wire  _no_schedule_T_7 = _no_schedule_T_6 & s_writerelease; // @[MSHR.scala 1313:99]
  wire  no_schedule = _no_schedule_T_7 & s_writeprobe; // @[MSHR.scala 1314:20]
  wire  will_be_free = no_wait & no_schedule; // @[MSHR.scala 1317:30]
  wire  _GEN_314 = will_be_free ? 1'h0 : req_valid; // @[MSHR.scala 1318:22 1320:15 51:26]
  wire  _GEN_321 = io_alloc_valid | _GEN_314; // @[MSHR.scala 1332:24 1333:15]
  wire  _io_status_bits_nestB_T = w_releaseack & w_probeacklast; // @[MSHR.scala 1353:19]
  wire  _io_status_bits_nestB_T_1 = meta_valid & _io_status_bits_nestB_T; // @[MSHR.scala 1352:38]
  wire  _io_status_bits_nestB_T_2 = ~w_grantfirst; // @[MSHR.scala 1354:6]
  wire  _io_status_bits_nestB_T_4 = client_dir_conflict & ~probe_helper_finish; // @[MSHR.scala 1354:44]
  wire  _io_status_bits_nestB_T_5 = ~w_grantfirst | client_dir_conflict & ~probe_helper_finish; // @[MSHR.scala 1354:20]
  wire  _io_status_bits_nestC_T = meta_valid & w_releaseack; // @[MSHR.scala 1357:38]
  wire  _io_status_bits_nestC_T_6 = ~w_probeackfirst | _io_status_bits_nestB_T_2 | _io_status_bits_nestB_T_4; // @[MSHR.scala 1360:41]
  wire  nest_c_set_match = io_c_status_set == req_set; // @[MSHR.scala 1369:42]
  wire  nest_c_tag_match = io_c_status_tag == req_tag; // @[MSHR.scala 1370:42]
  wire [1:0] meta_self_way = _GEN_13; // @[MSHR.scala 68:14]
  wire  nest_c_way_match = io_c_status_way == meta_self_way; // @[MSHR.scala 1371:42]
  wire  _a_c_through_T_3 = nest_c_tag_match & _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 1374:24]
  wire  _a_c_through_T_13 = ~nest_c_tag_match & nest_c_way_match & (req_preferCache & _T_126 | meta_self_hit |
    transmit_from_other_client); // @[MSHR.scala 1375:45]
  wire  _a_c_through_T_14 = nest_c_tag_match & _prefetch_miss_need_probe_vec_T_5 & ~nest_c_way_match | _a_c_through_T_13
    ; // @[MSHR.scala 1374:63]
  wire  _a_c_through_T_18 = nest_c_tag_match & nest_c_way_match & _prefetch_miss_need_probe_vec_T_5 & a_do_release; // @[MSHR.scala 1376:62]
  wire  _a_c_through_T_19 = _a_c_through_T_14 | _a_c_through_T_18; // @[MSHR.scala 1375:146]
  wire  a_c_through = req_channel[0] & _a_c_through_T_19; // @[MSHR.scala 1373:31]
  wire  b_c_through = req_channel[1] & (_a_c_through_T_3 | nest_c_way_match & meta_self_hit != nest_c_tag_match); // @[MSHR.scala 1380:31]
  wire  _io_c_status_releaseThrough_T = req_valid & io_c_status_nestedReleaseData; // @[MSHR.scala 1382:43]
  wire  _io_c_status_releaseThrough_T_1 = _io_c_status_releaseThrough_T & nest_c_set_match; // @[MSHR.scala 1383:35]
  wire  _io_c_status_releaseThrough_T_2 = a_c_through | b_c_through; // @[MSHR.scala 1385:18]
  wire  _io_bstatus_probeAckDataThrough_T = io_bstatus_set == req_set; // @[MSHR.scala 1389:21]
  wire  _io_bstatus_probeAckDataThrough_T_1 = req_valid & _io_bstatus_probeAckDataThrough_T; // @[MSHR.scala 1388:48]
  wire  _io_bstatus_probeAckDataThrough_T_4 = io_bstatus_way == meta_self_way; // @[MSHR.scala 1390:21]
  wire  _io_bstatus_probeAckDataThrough_T_5 = _io_bstatus_probeAckDataThrough_T_1 & io_bstatus_tag != req_tag &
    _io_bstatus_probeAckDataThrough_T_4; // @[MSHR.scala 1389:64]
  wire  _io_bstatus_probeAckDataThrough_T_6 = _io_bstatus_probeAckDataThrough_T_5 & io_bstatus_nestedProbeAckData; // @[MSHR.scala 1390:39]
  wire  _io_bstatus_probeAckDataThrough_T_9 = _io_bstatus_probeAckDataThrough_T_6 & req_channel[0]; // @[MSHR.scala 1391:36]
  assign io_status_valid = req_valid; // @[MSHR.scala 1340:19]
  assign io_status_bits_set = req_set; // @[MSHR.scala 1341:22]
  assign io_status_bits_tag = req_tag; // @[MSHR.scala 1342:22]
  assign io_status_bits_way = meta_self_way; // @[MSHR.scala 1344:22]
  assign io_status_bits_nestB = _io_status_bits_nestB_T_1 & _io_status_bits_nestB_T_5; // @[MSHR.scala 1353:38]
  assign io_status_bits_nestC = _io_status_bits_nestC_T & _io_status_bits_nestC_T_6; // @[MSHR.scala 1358:18]
  assign io_status_bits_will_grant_data = req_channel[0] & io_tasks_source_d_bits_opcode[0] &
    io_tasks_source_d_bits_useBypass; // @[MSHR.scala 1345:63]
  assign io_status_bits_will_save_data = req_channel[0] & _T_252 & _T_126; // @[MSHR.scala 1346:80]
  assign io_status_bits_will_free = no_wait & no_schedule; // @[MSHR.scala 1317:30]
  assign io_ecc_valid = meta_valid & (self_ecc_err | client_ecc_err); // @[MSHR.scala 809:30]
  assign io_ecc_bits_errCode = self_ecc_err ? 8'h1 : 8'h2; // @[MSHR.scala 811:29]
  assign io_ecc_bits_addr = {{30'd0}, _io_ecc_bits_addr_T}; // @[MSHR.scala 810:20]
  assign io_tasks_sink_a_valid = 1'h0; // @[MSHR.scala 925:25]
  assign io_tasks_sink_a_bits_sourceId = req_source; // @[MSHR.scala 1109:15]
  assign io_tasks_sink_a_bits_set = req_set; // @[MSHR.scala 1110:10]
  assign io_tasks_sink_a_bits_tag = req_tag; // @[MSHR.scala 1111:10]
  assign io_tasks_sink_a_bits_size = req_size; // @[MSHR.scala 1112:11]
  assign io_tasks_sink_a_bits_off = req_off; // @[MSHR.scala 1113:10]
  assign io_tasks_source_bvalid = io_enable & ~s_probe & s_release; // @[MSHR.scala 916:52]
  assign io_tasks_source_bset = req_set; // @[MSHR.scala 987:10]
  assign io_tasks_source_btag = req_tag; // @[MSHR.scala 986:10]
  assign io_tasks_source_bparam = req_channel[1] ? req_param : {{1'd0}, _io_tasks_source_bparam_T_10}; // @[MSHR.scala 992:18]
  assign io_tasks_source_bclients = probe_clients; // @[MSHR.scala 1027:14]
  assign io_tasks_source_bneedData = a_need_data & _prefetch_miss_need_probe_vec_T_5 | req_channel[1] &
    req_needProbeAckData; // @[MSHR.scala 1029:37]
  assign io_tasks_sink_c_valid = io_enable & (~s_writerelease & (~releaseSave | s_release) | ~s_writeprobe); // @[MSHR.scala 926:38]
  assign io_tasks_sink_c_bits_sourceId = 6'h0;
  assign io_tasks_sink_c_bits_set = req_set; // @[MSHR.scala 1117:10]
  assign io_tasks_sink_c_bits_tag = req_tag; // @[MSHR.scala 1118:10]
  assign io_tasks_sink_c_bits_size = req_size; // @[MSHR.scala 1119:11]
  assign io_tasks_sink_c_bits_way = meta_self_way; // @[MSHR.scala 1121:10]
  assign io_tasks_sink_c_bits_off = req_off; // @[MSHR.scala 1120:10]
  assign io_tasks_sink_c_bits_bufIdx = s_writeprobe ? req_bufIdx : io_tasks_sink_c_bits_bufIdx_r; // @[MSHR.scala 1122:19]
  assign io_tasks_sink_c_bits_opcode = s_writeprobe ? req_opcode : _io_tasks_sink_c_bits_opcode_T_1; // @[MSHR.scala 1127:19]
  assign io_tasks_sink_c_bits_param = _io_tasks_sink_c_valid_T_4 ? probeack_param : req_param; // @[MSHR.scala 1138:18]
  assign io_tasks_sink_c_bits_source = io_id; // @[MSHR.scala 1116:13]
  assign io_tasks_sink_c_bits_save = s_writeprobe ? releaseSave : probeAckDataSave; // @[MSHR.scala 1143:17]
  assign io_tasks_sink_c_bits_drop = s_writeprobe ? releaseDrop : probeAckDataDrop; // @[MSHR.scala 1144:17]
  assign io_tasks_sink_c_bits_release = s_writeprobe ? releaseThrough : probeAckDataThrough; // @[MSHR.scala 1145:20]
  assign io_tasks_sink_c_bits_dirty = s_writeprobe ? _io_tasks_sink_c_bits_dirty_T_1 :
    _io_tasks_source_c_bits_opcode_T_4; // @[MSHR.scala 1146:18]
  assign io_tasks_source_d_valid = io_enable & ~s_execute & can_start & w_grant & s_writeprobe & w_probeacklast; // @[MSHR.scala 918:94]
  assign io_tasks_source_d_bits_sourceId = req_source; // @[MSHR.scala 1070:15]
  assign io_tasks_source_d_bits_set = req_set; // @[MSHR.scala 1071:10]
  assign io_tasks_source_d_bits_tag = req_tag; // @[MSHR.scala 1072:10]
  assign io_tasks_source_d_bits_channel = {io_tasks_source_d_bits_channel_hi,req_channel[0]}; // @[Cat.scala 31:58]
  assign io_tasks_source_d_bits_opcode = req_channel[0] ? _GEN_240 : 3'h6; // @[MSHR.scala 1081:8]
  assign io_tasks_source_d_bits_param = _io_tasks_source_d_bits_param_T ? req_param : _io_tasks_source_d_bits_param_T_7; // @[MSHR.scala 1086:8]
  assign io_tasks_source_d_bits_size = req_size; // @[MSHR.scala 1091:11]
  assign io_tasks_source_d_bits_way = meta_self_way; // @[MSHR.scala 1092:10]
  assign io_tasks_source_d_bits_off = req_off; // @[MSHR.scala 1093:10]
  assign io_tasks_source_d_bits_useBypass = _prefetch_miss_need_probe_vec_T_5 & ~probe_dirty & ~nested_c_hit & ~(
    meta_reg_self_error | meta_reg_clients_error); // @[MSHR.scala 1069:67]
  assign io_tasks_source_d_bits_bufIdx = req_bufIdx; // @[MSHR.scala 1104:13]
  assign io_tasks_source_d_bits_denied = bad_grant | _io_tasks_source_d_bits_useBypass_T_5; // @[MSHR.scala 1094:26]
  assign io_tasks_source_d_bits_sinkId = io_id; // @[MSHR.scala 1068:13]
  assign io_tasks_source_d_bits_bypassPut = req_put & _prefetch_miss_need_probe_vec_T_5 & ~clients_hit; // @[MSHR.scala 683:45]
  assign io_tasks_source_d_bits_dirty = req_acquire & _io_tasks_source_d_bits_dirty_T_6; // @[MSHR.scala 1095:18]
  assign io_tasks_source_a_valid = io_enable & (_T_42 | ~s_transferput) & s_release & s_probe & can_start; // @[MSHR.scala 915:98]
  assign io_tasks_source_a_bits_tag = req_tag; // @[MSHR.scala 953:10]
  assign io_tasks_source_a_bits_set = req_set; // @[MSHR.scala 954:10]
  assign io_tasks_source_a_bits_off = req_off; // @[MSHR.scala 955:10]
  assign io_tasks_source_a_bits_opcode = _io_tasks_source_a_valid_T_1 | bypassGet ? req_opcode :
    _io_tasks_source_a_bits_opcode_T_4; // @[MSHR.scala 958:19]
  assign io_tasks_source_a_bits_param = _io_tasks_source_a_valid_T_1 ? req_param : {{1'd0},
    _io_tasks_source_a_bits_param_T_3}; // @[MSHR.scala 966:18]
  assign io_tasks_source_a_bits_source = io_id; // @[MSHR.scala 980:13]
  assign io_tasks_source_a_bits_bufIdx = req_bufIdx; // @[MSHR.scala 983:13]
  assign io_tasks_source_a_bits_size = req_size; // @[MSHR.scala 984:11]
  assign io_tasks_source_a_bits_needData = ~_req_acquire_T_1 | req_size != 3'h6; // @[MSHR.scala 981:48]
  assign io_tasks_source_a_bits_putData = req_opcode[2:1] == 2'h0; // @[MSHR.scala 78:33]
  assign io_tasks_source_c_valid = io_enable & (~s_release | ~s_probeack & s_writerelease & w_probeack); // @[MSHR.scala 917:40]
  assign io_tasks_source_c_bits_opcode = req_channel[1] ? _io_tasks_source_c_bits_opcode_T_8 :
    _io_tasks_source_c_bits_opcode_T_9; // @[MSHR.scala 1032:19]
  assign io_tasks_source_c_bits_tag = req_channel[1] ? req_tag : meta_self_tag; // @[MSHR.scala 1041:16]
  assign io_tasks_source_c_bits_set = req_set; // @[MSHR.scala 1042:10]
  assign io_tasks_source_c_bits_param = req_channel[1] ? probeack_param : replace_param; // @[MSHR.scala 1059:18]
  assign io_tasks_source_c_bits_source = io_id; // @[MSHR.scala 1064:13]
  assign io_tasks_source_c_bits_way = meta_self_way; // @[MSHR.scala 1065:10]
  assign io_tasks_source_c_bits_dirty = req_channel[1] ? _io_tasks_source_c_bits_opcode_T_4 : meta_self_dirty; // @[MSHR.scala 1066:18]
  assign io_tasks_source_e_valid = ~s_grantack & w_grantfirst; // @[MSHR.scala 919:42]
  assign io_tasks_source_e_bits_sink = sink; // @[MSHR.scala 1107:11]
  assign io_tasks_dir_write_valid = io_enable & ~s_wbselfdir & no_wait & can_start; // @[MSHR.scala 920:68]
  assign io_tasks_dir_write_bits_set = req_set; // @[MSHR.scala 1151:31]
  assign io_tasks_dir_write_bits_way = meta_reg_self_way; // @[MSHR.scala 1152:31]
  assign io_tasks_dir_write_bits_data_dirty = bad_grant ? 1'h0 : new_self_meta_dirty; // @[MSHR.scala 441:19 427:22 442:24]
  assign io_tasks_dir_write_bits_data_state = bad_grant ? meta_self_state : new_self_meta_state; // @[MSHR.scala 441:19 428:22 443:24]
  assign io_tasks_dir_write_bits_data_clientStates_0 = bad_grant ? meta_self_clientStates_0 :
    new_self_meta_clientStates_0; // @[MSHR.scala 441:19 446:15 429:29]
  assign io_tasks_tag_write_valid = io_enable & ~s_wbselftag & no_wait & can_start; // @[MSHR.scala 921:68]
  assign io_tasks_tag_write_bits_set = req_set; // @[MSHR.scala 1155:31]
  assign io_tasks_tag_write_bits_way = meta_reg_self_way; // @[MSHR.scala 1156:31]
  assign io_tasks_tag_write_bits_tag = req_tag; // @[MSHR.scala 1157:31]
  assign io_tasks_client_dir_write_valid = io_enable & ~s_wbclientsdir & no_wait & can_start; // @[MSHR.scala 922:78]
  assign io_tasks_client_dir_write_bits_set = debug_addr_hi[8:0]; // @[Directory.scala 96:25]
  assign io_tasks_client_dir_write_bits_way = meta_reg_clients_way; // @[Directory.scala 97:14]
  assign io_tasks_client_dir_write_bits_data_0_state = req_channel[2] ? _GEN_22 : _GEN_30; // @[MSHR.scala 413:19]
  assign io_tasks_client_tag_write_valid = io_enable & ~s_wbclientstag & no_wait & can_start; // @[MSHR.scala 923:78]
  assign io_tasks_client_tag_write_bits_set = debug_addr_hi[8:0]; // @[Directory.scala 78:25]
  assign io_tasks_client_tag_write_bits_way = meta_reg_clients_way; // @[Directory.scala 79:14]
  assign io_tasks_client_tag_write_bits_tag = debug_addr_hi[27:9]; // @[Directory.scala 80:25]
  assign io_c_status_releaseThrough = _io_c_status_releaseThrough_T_1 & _io_c_status_releaseThrough_T_2; // @[MSHR.scala 1384:22]
  assign io_bstatus_probeAckDataThrough = _io_bstatus_probeAckDataThrough_T_9 & _T_252 & _T_126; // @[MSHR.scala 1392:49]
  assign io_is_nestedReleaseData = req_channel[2] & req_valid; // @[MSHR.scala 1363:87]
  assign io_is_nestedProbeAckData = req_channel[1] & clients_hit & req_valid; // @[MSHR.scala 1365:56]
  assign io_probeHelperFinish = _T_226 & no_schedule & no_wait; // @[MSHR.scala 1366:75]
  always @(posedge clock) begin
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_channel <= io_alloc_bits_channel; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_opcode <= io_alloc_bits_opcode; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_param <= io_alloc_bits_param; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_size <= io_alloc_bits_size; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_source <= io_alloc_bits_source; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_set <= io_alloc_bits_set; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_tag <= io_alloc_bits_tag; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_off <= io_alloc_bits_off; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_bufIdx <= io_alloc_bits_bufIdx; // @[MSHR.scala 1334:9]
    end else if (req_valid & io_resps_sink_d_valid) begin // @[MSHR.scala 1291:44]
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin // @[MSHR.scala 1292:188]
        req_bufIdx <= io_resps_sink_d_bits_bufIdx; // @[MSHR.scala 1300:18]
      end
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_preferCache <= io_alloc_bits_preferCache; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_dirty <= io_alloc_bits_dirty; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_fromProbeHelper <= io_alloc_bits_fromProbeHelper; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_fromCmoHelper <= io_alloc_bits_fromCmoHelper; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_needProbeAckData <= io_alloc_bits_needProbeAckData; // @[MSHR.scala 1334:9]
    end
    if (reset) begin // @[MSHR.scala 51:26]
      req_valid <= 1'h0; // @[MSHR.scala 51:26]
    end else begin
      req_valid <= _GEN_321;
    end
    if (change_self_meta) begin // @[MSHR.scala 467:26]
      meta_reg_self_dirty <= _GEN_40;
    end else if (io_dirResult_valid) begin // @[MSHR.scala 64:28]
      meta_reg_self_dirty <= io_dirResult_bits_self_dirty; // @[MSHR.scala 66:14]
    end
    if (change_self_meta) begin // @[MSHR.scala 467:26]
      if (io_nestedwb_btoN) begin // @[MSHR.scala 481:29]
        meta_reg_self_state <= 2'h0; // @[MSHR.scala 482:27]
      end else if (io_nestedwb_btoB) begin // @[MSHR.scala 477:29]
        meta_reg_self_state <= 2'h1; // @[MSHR.scala 478:27]
      end else begin
        meta_reg_self_state <= _GEN_16;
      end
    end else begin
      meta_reg_self_state <= _GEN_16;
    end
    if (change_self_meta) begin // @[MSHR.scala 467:26]
      if (io_nestedwb_btoN) begin // @[MSHR.scala 481:29]
        meta_reg_self_clientStates_0 <= 2'h0; // @[MSHR.scala 484:44]
      end else if (io_nestedwb_btoB) begin // @[MSHR.scala 477:29]
        if (meta_reg_self_clientStates_0[1]) begin // @[MSHR.scala 479:57]
          meta_reg_self_clientStates_0 <= 2'h1;
        end
      end else begin
        meta_reg_self_clientStates_0 <= _GEN_15;
      end
    end else begin
      meta_reg_self_clientStates_0 <= _GEN_15;
    end
    if (change_self_meta) begin // @[MSHR.scala 467:26]
      if (io_nestedwb_btoN) begin // @[MSHR.scala 481:29]
        meta_reg_self_hit <= 1'h0; // @[MSHR.scala 483:25]
      end else begin
        meta_reg_self_hit <= _GEN_14;
      end
    end else begin
      meta_reg_self_hit <= _GEN_14;
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 64:28]
      meta_reg_self_way <= io_dirResult_bits_self_way; // @[MSHR.scala 66:14]
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 64:28]
      meta_reg_self_tag <= io_dirResult_bits_self_tag; // @[MSHR.scala 66:14]
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 64:28]
      meta_reg_self_error <= io_dirResult_bits_self_error; // @[MSHR.scala 66:14]
    end
    if (change_clients_meta_0) begin // @[MSHR.scala 498:36]
      if (io_nestedwb_clients_0_isToN) begin // @[MSHR.scala 502:49]
        meta_reg_clients_states_0_state <= 2'h0; // @[MSHR.scala 503:21]
      end else begin
        meta_reg_clients_states_0_state <= _GEN_10;
      end
    end else begin
      meta_reg_clients_states_0_state <= _GEN_10;
    end
    if (change_clients_meta_0) begin // @[MSHR.scala 498:36]
      if (io_nestedwb_clients_0_isToN) begin // @[MSHR.scala 502:49]
        meta_reg_clients_states_0_hit <= 1'h0; // @[MSHR.scala 504:19]
      end else begin
        meta_reg_clients_states_0_hit <= _GEN_9;
      end
    end else begin
      meta_reg_clients_states_0_hit <= _GEN_9;
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 64:28]
      meta_reg_clients_tag <= io_dirResult_bits_clients_tag; // @[MSHR.scala 66:14]
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 64:28]
      meta_reg_clients_way <= io_dirResult_bits_clients_way; // @[MSHR.scala 66:14]
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 64:28]
      meta_reg_clients_error <= io_dirResult_bits_clients_error; // @[MSHR.scala 66:14]
    end
    if (reset) begin // @[MSHR.scala 55:27]
      meta_valid <= 1'h0; // @[MSHR.scala 55:27]
    end else if (will_be_free) begin // @[MSHR.scala 1318:22]
      meta_valid <= 1'h0; // @[MSHR.scala 1319:16]
    end else begin
      meta_valid <= _GEN_0;
    end
    promoteT_safe <= reset | _GEN_285; // @[MSHR.scala 80:{30,30}]
    if (reset) begin // @[MSHR.scala 81:21]
      gotT <= 1'h0; // @[MSHR.scala 81:21]
    end else if (req_valid & io_resps_sink_d_valid) begin // @[MSHR.scala 1291:44]
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin // @[MSHR.scala 1292:188]
        gotT <= io_resps_sink_d_bits_param == 3'h0; // @[MSHR.scala 1298:12]
      end else begin
        gotT <= _GEN_196;
      end
    end else begin
      gotT <= _GEN_196;
    end
    if (reset) begin // @[MSHR.scala 83:29]
      a_do_release <= 1'h0; // @[MSHR.scala 83:29]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      if (meta_self_error | _GEN_5) begin // @[MSHR.scala 817:48]
        a_do_release <= 1'h0; // @[MSHR.scala 574:18]
      end else if (req_channel[2]) begin // @[MSHR.scala 831:23]
        a_do_release <= 1'h0; // @[MSHR.scala 574:18]
      end else begin
        a_do_release <= _GEN_134;
      end
    end
    if (reset) begin // @[MSHR.scala 84:27]
      a_do_probe <= 1'h0; // @[MSHR.scala 84:27]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      if (meta_self_error | _GEN_5) begin // @[MSHR.scala 817:48]
        a_do_probe <= 1'h0; // @[MSHR.scala 575:16]
      end else if (req_channel[2]) begin // @[MSHR.scala 831:23]
        a_do_probe <= 1'h0; // @[MSHR.scala 575:16]
      end else begin
        a_do_probe <= _GEN_137;
      end
    end
    if (reset) begin // @[MSHR.scala 91:28]
      probe_dirty <= 1'h0; // @[MSHR.scala 91:28]
    end else if (_T_219) begin // @[MSHR.scala 1260:40]
      probe_dirty <= probe_dirty | io_resps_sink_c_bits_hasData; // @[MSHR.scala 1266:17]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      probe_dirty <= 1'h0; // @[MSHR.scala 566:17]
    end
    if (reset) begin // @[MSHR.scala 92:28]
      probes_done <= 1'h0; // @[MSHR.scala 92:28]
    end else if (_T_219) begin // @[MSHR.scala 1260:40]
      probes_done <= _probeack_last_T; // @[MSHR.scala 1262:17]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      probes_done <= 1'h0; // @[MSHR.scala 567:17]
    end
    if (reset) begin // @[MSHR.scala 123:37]
      need_block_downwards <= 1'h0; // @[MSHR.scala 123:37]
    end else if (_T_219) begin // @[MSHR.scala 1260:40]
      need_block_downwards <= _GEN_277;
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      need_block_downwards <= 1'h0; // @[MSHR.scala 569:26]
    end
    if (reset) begin // @[MSHR.scala 124:29]
      inv_self_dir <= 1'h0; // @[MSHR.scala 124:29]
    end else if (_T_219) begin // @[MSHR.scala 1260:40]
      if (_T_248) begin // @[MSHR.scala 1270:7]
        inv_self_dir <= _GEN_270;
      end else begin
        inv_self_dir <= _GEN_201;
      end
    end else begin
      inv_self_dir <= _GEN_201;
    end
    if (reset) begin // @[MSHR.scala 125:46]
      client_probeack_param_vec_reg_0 <= 3'h0; // @[MSHR.scala 125:46]
    end else if (req_valid & sink_c_resp_valid & io_resps_sink_c_bits_last) begin // @[MSHR.scala 1235:69]
      client_probeack_param_vec_reg_0 <= io_resps_sink_c_bits_param; // @[MSHR.scala 1237:43]
    end
    if (reset) begin // @[MSHR.scala 172:31]
      releaseThrough <= 1'h0; // @[MSHR.scala 172:31]
    end else if (will_be_free) begin // @[MSHR.scala 1318:22]
      releaseThrough <= 1'h0; // @[MSHR.scala 1321:20]
    end else if (io_releaseThrough & io_dirResult_valid & req_channel[2]) begin // @[MSHR.scala 845:62]
      releaseThrough <= will_release_through; // @[MSHR.scala 854:20]
    end
    if (reset) begin // @[MSHR.scala 173:28]
      releaseDrop <= 1'h0; // @[MSHR.scala 173:28]
    end else if (will_be_free) begin // @[MSHR.scala 1318:22]
      releaseDrop <= 1'h0; // @[MSHR.scala 1322:17]
    end else if (io_releaseThrough & io_dirResult_valid & req_channel[2]) begin // @[MSHR.scala 845:62]
      releaseDrop <= will_drop_release; // @[MSHR.scala 855:17]
    end
    if (reset) begin // @[MSHR.scala 181:36]
      probeAckDataThrough <= 1'h0; // @[MSHR.scala 181:36]
    end else if (will_be_free) begin // @[MSHR.scala 1318:22]
      probeAckDataThrough <= 1'h0; // @[MSHR.scala 1323:25]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 870:28]
      if (req_fromCmoHelper) begin // @[MSHR.scala 888:29]
        probeAckDataThrough <= _req_needT_T_9 & (clients_have_T & _prefetch_miss_need_probe_vec_T_5); // @[MSHR.scala 889:27]
      end else begin
        probeAckDataThrough <= _GEN_218;
      end
    end
    if (reset) begin // @[MSHR.scala 182:33]
      probeAckDataDrop <= 1'h0; // @[MSHR.scala 182:33]
    end else if (will_be_free) begin // @[MSHR.scala 1318:22]
      probeAckDataDrop <= 1'h0; // @[MSHR.scala 1324:22]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 870:28]
      if (req_fromCmoHelper) begin // @[MSHR.scala 888:29]
        probeAckDataDrop <= _client_shrink_perm_T_7; // @[MSHR.scala 890:24]
      end else begin
        probeAckDataDrop <= _GEN_219;
      end
    end
    if (reset) begin // @[MSHR.scala 183:33]
      probeAckDataSave <= 1'h0; // @[MSHR.scala 183:33]
    end else if (will_be_free) begin // @[MSHR.scala 1318:22]
      probeAckDataSave <= 1'h0; // @[MSHR.scala 1325:22]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 870:28]
      if (req_fromCmoHelper) begin // @[MSHR.scala 888:29]
        probeAckDataSave <= _probeAckDataSave_T_4 & _new_self_meta_state_T_16; // @[MSHR.scala 891:24]
      end else begin
        probeAckDataSave <= _GEN_220;
      end
    end
    w_probeacklast <= reset | _GEN_282; // @[MSHR.scala 527:{31,31}]
    if (req_valid & io_resps_sink_d_valid) begin // @[MSHR.scala 1291:44]
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin // @[MSHR.scala 1292:188]
        sink <= io_resps_sink_d_bits_sink; // @[MSHR.scala 1293:12]
      end
    end
    if (reset) begin // @[MSHR.scala 439:26]
      bad_grant <= 1'h0; // @[MSHR.scala 439:26]
    end else if (req_valid & io_resps_sink_d_valid) begin // @[MSHR.scala 1291:44]
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin // @[MSHR.scala 1292:188]
        bad_grant <= io_resps_sink_d_bits_denied; // @[MSHR.scala 1297:17]
      end else begin
        bad_grant <= _GEN_199;
      end
    end else begin
      bad_grant <= _GEN_199;
    end
    if (reset) begin // @[MSHR.scala 487:33]
      nested_c_hit_reg <= 1'h0; // @[MSHR.scala 487:33]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      nested_c_hit_reg <= 1'h0; // @[MSHR.scala 571:22]
    end else begin
      nested_c_hit_reg <= nested_c_hit;
    end
    s_acquire <= reset | _GEN_286; // @[MSHR.scala 510:{26,26}]
    s_probe <= reset | _GEN_244; // @[MSHR.scala 511:{24,24}]
    s_release <= reset | _GEN_245; // @[MSHR.scala 512:{26,26}]
    s_probeack <= reset | _GEN_267; // @[MSHR.scala 513:{27,27}]
    s_execute <= reset | _GEN_247; // @[MSHR.scala 514:{26,26}]
    s_grantack <= reset | _GEN_290; // @[MSHR.scala 515:{27,27}]
    s_wbselfdir <= reset | _GEN_249; // @[MSHR.scala 516:{28,28}]
    s_wbselftag <= reset | _GEN_292; // @[MSHR.scala 517:{28,28}]
    s_wbclientsdir <= reset | _GEN_251; // @[MSHR.scala 518:{31,31}]
    s_wbclientstag <= reset | _GEN_252; // @[MSHR.scala 519:{31,31}]
    s_transferput <= reset | _GEN_243; // @[MSHR.scala 520:{30,30}]
    s_writerelease <= reset | _GEN_256; // @[MSHR.scala 521:{31,31}]
    s_writeprobe <= reset | _GEN_265; // @[MSHR.scala 522:{29,29}]
    w_probeackfirst <= reset | _GEN_281; // @[MSHR.scala 526:{32,32}]
    w_probeack <= reset | _GEN_283; // @[MSHR.scala 528:{27,27}]
    w_grantfirst <= reset | _GEN_304; // @[MSHR.scala 529:{29,29}]
    w_grantlast <= reset | _GEN_305; // @[MSHR.scala 530:{28,28}]
    w_grant <= reset | _GEN_306; // @[MSHR.scala 531:{24,24}]
    w_releaseack <= reset | _GEN_311; // @[MSHR.scala 532:{29,29}]
    w_grantack <= reset | _GEN_312; // @[MSHR.scala 533:{27,27}]
    if (reset) begin // @[MSHR.scala 535:29]
      acquire_flag <= 1'h0; // @[MSHR.scala 535:29]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      acquire_flag <= 1'h0; // @[MSHR.scala 573:18]
    end else begin
      acquire_flag <= _GEN_55;
    end
    if (io_dirResult_valid) begin // @[Reg.scala 17:18]
      client_dir_conflict <= _client_dir_conflict_T_3; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[MSHR.scala 902:36]
      probe_helper_finish <= 1'h0; // @[MSHR.scala 902:36]
    end else if (will_be_free) begin // @[MSHR.scala 1318:22]
      probe_helper_finish <= 1'h0; // @[MSHR.scala 1326:25]
    end else begin
      probe_helper_finish <= _GEN_231;
    end
    if (io_dirResult_valid) begin // @[Reg.scala 17:18]
      if (_probe_clients_T_3) begin // @[MSHR.scala 1013:8]
        probe_clients <= 1'h0;
      end else if (req_channel[0]) begin // @[MSHR.scala 1016:10]
        if (req_acquire) begin // @[MSHR.scala 191:10]
          probe_clients <= 1'h0;
        end else begin
          probe_clients <= _a_probe_clients_T_8;
        end
      end else if (req_fromCmoHelper) begin // @[MSHR.scala 1019:12]
        probe_clients <= x_probe_clients_0;
      end else begin
        probe_clients <= meta_clients_states_0_hit;
      end
    end
    if (_io_tasks_sink_c_bits_bufIdx_T) begin // @[Reg.scala 17:18]
      io_tasks_sink_c_bits_bufIdx_r <= io_resps_sink_c_bits_bufIdx; // @[Reg.scala 17:22]
    end
    no_schedule_REG <= reset | s_wbselfdir & s_wbselftag & s_wbclientsdir & s_wbclientstag & meta_valid; // @[MSHR.scala 1313:{12,12,12}]
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
  req_channel = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  req_opcode = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  req_param = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  req_size = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  req_source = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  req_set = _RAND_5[11:0];
  _RAND_6 = {1{`RANDOM}};
  req_tag = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  req_off = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  req_bufIdx = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  req_preferCache = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  req_dirty = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  req_fromProbeHelper = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  req_fromCmoHelper = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  req_needProbeAckData = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  req_valid = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  meta_reg_self_dirty = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  meta_reg_self_state = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  meta_reg_self_clientStates_0 = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  meta_reg_self_hit = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  meta_reg_self_way = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  meta_reg_self_tag = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  meta_reg_self_error = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  meta_reg_clients_states_0_state = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  meta_reg_clients_states_0_hit = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  meta_reg_clients_tag = _RAND_24[18:0];
  _RAND_25 = {1{`RANDOM}};
  meta_reg_clients_way = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  meta_reg_clients_error = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  meta_valid = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  promoteT_safe = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  gotT = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  a_do_release = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  a_do_probe = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  probe_dirty = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  probes_done = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  need_block_downwards = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  inv_self_dir = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  client_probeack_param_vec_reg_0 = _RAND_36[2:0];
  _RAND_37 = {1{`RANDOM}};
  releaseThrough = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  releaseDrop = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  probeAckDataThrough = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  probeAckDataDrop = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  probeAckDataSave = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  w_probeacklast = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  sink = _RAND_43[2:0];
  _RAND_44 = {1{`RANDOM}};
  bad_grant = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  nested_c_hit_reg = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  s_acquire = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  s_probe = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  s_release = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  s_probeack = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  s_execute = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  s_grantack = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  s_wbselfdir = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  s_wbselftag = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  s_wbclientsdir = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  s_wbclientstag = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  s_transferput = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  s_writerelease = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  s_writeprobe = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  w_probeackfirst = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  w_probeack = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  w_grantfirst = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  w_grantlast = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  w_grant = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  w_releaseack = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  w_grantack = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  acquire_flag = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  client_dir_conflict = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  probe_helper_finish = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  probe_clients = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  io_tasks_sink_c_bits_bufIdx_r = _RAND_70[2:0];
  _RAND_71 = {1{`RANDOM}};
  no_schedule_REG = _RAND_71[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
