module MSHR(
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
  input  [7:0]  io_alloc_bits_set,
  input  [20:0] io_alloc_bits_tag,
  input  [5:0]  io_alloc_bits_off,
  input  [2:0]  io_alloc_bits_bufIdx,
  input         io_alloc_bits_needHint,
  input         io_alloc_bits_isPrefetch,
  input  [1:0]  io_alloc_bits_alias,
  input         io_alloc_bits_preferCache,
  input         io_alloc_bits_dirty,
  input         io_alloc_bits_fromProbeHelper,
  input         io_alloc_bits_fromCmoHelper,
  input         io_alloc_bits_needProbeAckData,
  output        io_status_valid,
  output [7:0]  io_status_bits_set,
  output [20:0] io_status_bits_tag,
  output [2:0]  io_status_bits_way,
  output        io_status_bits_nestB,
  output        io_status_bits_nestC,
  output        io_status_bits_will_grant_data,
  output        io_status_bits_will_save_data,
  output        io_status_bits_will_free,
  output        io_status_bits_is_prefetch,
  input         io_resps_sink_c_valid,
  input         io_resps_sink_c_bits_hasData,
  input  [2:0]  io_resps_sink_c_bits_param,
  input  [5:0]  io_resps_sink_c_bits_source,
  input         io_resps_sink_c_bits_last,
  input  [2:0]  io_resps_sink_c_bits_bufIdx,
  input         io_resps_sink_d_valid,
  input  [2:0]  io_resps_sink_d_bits_opcode,
  input  [2:0]  io_resps_sink_d_bits_param,
  input  [5:0]  io_resps_sink_d_bits_sink,
  input         io_resps_sink_d_bits_last,
  input         io_resps_sink_d_bits_denied,
  input         io_resps_sink_d_bits_dirty,
  input  [2:0]  io_resps_sink_d_bits_bufIdx,
  input         io_resps_sink_e_valid,
  input  [7:0]  io_nestedwb_set,
  input  [20:0] io_nestedwb_tag,
  input         io_nestedwb_btoN,
  input         io_nestedwb_btoB,
  input         io_nestedwb_bclr_dirty,
  input         io_nestedwb_bset_dirty,
  input         io_nestedwb_c_set_dirty,
  input         io_nestedwb_c_set_hit,
  input         io_nestedwb_clients_0_isToN,
  input         io_nestedwb_clients_1_isToN,
  output        io_ecc_valid,
  output [7:0]  io_ecc_bits_errCode,
  output [63:0] io_ecc_bits_addr,
  input         io_tasks_sink_a_ready,
  output        io_tasks_sink_a_valid,
  output [5:0]  io_tasks_sink_a_bits_sourceId,
  output [7:0]  io_tasks_sink_a_bits_set,
  output [20:0] io_tasks_sink_a_bits_tag,
  output [2:0]  io_tasks_sink_a_bits_size,
  output [5:0]  io_tasks_sink_a_bits_off,
  input         io_tasks_source_bready,
  output        io_tasks_source_bvalid,
  output [7:0]  io_tasks_source_bset,
  output [20:0] io_tasks_source_btag,
  output [2:0]  io_tasks_source_bparam,
  output [1:0]  io_tasks_source_bclients,
  output [1:0]  io_tasks_source_balias_0,
  output [1:0]  io_tasks_source_balias_1,
  output        io_tasks_source_bneedData,
  input         io_tasks_sink_c_ready,
  output        io_tasks_sink_c_valid,
  output [5:0]  io_tasks_sink_c_bits_sourceId,
  output [7:0]  io_tasks_sink_c_bits_set,
  output [20:0] io_tasks_sink_c_bits_tag,
  output [2:0]  io_tasks_sink_c_bits_size,
  output [2:0]  io_tasks_sink_c_bits_way,
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
  output [7:0]  io_tasks_source_d_bits_set,
  output [20:0] io_tasks_source_d_bits_tag,
  output [2:0]  io_tasks_source_d_bits_channel,
  output [2:0]  io_tasks_source_d_bits_opcode,
  output [2:0]  io_tasks_source_d_bits_param,
  output [2:0]  io_tasks_source_d_bits_size,
  output [2:0]  io_tasks_source_d_bits_way,
  output [5:0]  io_tasks_source_d_bits_off,
  output        io_tasks_source_d_bits_useBypass,
  output [2:0]  io_tasks_source_d_bits_bufIdx,
  output        io_tasks_source_d_bits_denied,
  output [3:0]  io_tasks_source_d_bits_sinkId,
  output        io_tasks_source_d_bits_bypassPut,
  output        io_tasks_source_d_bits_dirty,
  input         io_tasks_source_a_ready,
  output        io_tasks_source_a_valid,
  output [20:0] io_tasks_source_a_bits_tag,
  output [7:0]  io_tasks_source_a_bits_set,
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
  output [20:0] io_tasks_source_c_bits_tag,
  output [7:0]  io_tasks_source_c_bits_set,
  output [2:0]  io_tasks_source_c_bits_param,
  output [3:0]  io_tasks_source_c_bits_source,
  output [2:0]  io_tasks_source_c_bits_way,
  output        io_tasks_source_c_bits_dirty,
  input         io_tasks_source_e_ready,
  output        io_tasks_source_e_valid,
  output [5:0]  io_tasks_source_e_bits_sink,
  input         io_tasks_prefetch_train_ready,
  output        io_tasks_prefetch_train_valid,
  output [21:0] io_tasks_prefetch_train_bits_tag,
  output [7:0]  io_tasks_prefetch_train_bits_set,
  output        io_tasks_prefetch_train_bits_needT,
  output [5:0]  io_tasks_prefetch_train_bits_source,
  input         io_tasks_prefetch_resp_ready,
  output        io_tasks_prefetch_resp_valid,
  output [21:0] io_tasks_prefetch_resp_bits_tag,
  output [7:0]  io_tasks_prefetch_resp_bits_set,
  input         io_tasks_dir_write_ready,
  output        io_tasks_dir_write_valid,
  output [7:0]  io_tasks_dir_write_bits_set,
  output [2:0]  io_tasks_dir_write_bits_way,
  output        io_tasks_dir_write_bits_data_dirty,
  output [1:0]  io_tasks_dir_write_bits_data_state,
  output [1:0]  io_tasks_dir_write_bits_data_clientStates_0,
  output [1:0]  io_tasks_dir_write_bits_data_clientStates_1,
  output        io_tasks_dir_write_bits_data_prefetch,
  input         io_tasks_tag_write_ready,
  output        io_tasks_tag_write_valid,
  output [7:0]  io_tasks_tag_write_bits_set,
  output [2:0]  io_tasks_tag_write_bits_way,
  output [20:0] io_tasks_tag_write_bits_tag,
  input         io_tasks_client_dir_write_ready,
  output        io_tasks_client_dir_write_valid,
  output [7:0]  io_tasks_client_dir_write_bits_set,
  output [2:0]  io_tasks_client_dir_write_bits_way,
  output [1:0]  io_tasks_client_dir_write_bits_data_0_state,
  output [1:0]  io_tasks_client_dir_write_bits_data_0_alias,
  output [1:0]  io_tasks_client_dir_write_bits_data_1_state,
  output [1:0]  io_tasks_client_dir_write_bits_data_1_alias,
  input         io_tasks_client_tag_write_ready,
  output        io_tasks_client_tag_write_valid,
  output [7:0]  io_tasks_client_tag_write_bits_set,
  output [2:0]  io_tasks_client_tag_write_bits_way,
  output [20:0] io_tasks_client_tag_write_bits_tag,
  input         io_dirResult_valid,
  input         io_dirResult_bits_self_dirty,
  input  [1:0]  io_dirResult_bits_self_state,
  input  [1:0]  io_dirResult_bits_self_clientStates_0,
  input  [1:0]  io_dirResult_bits_self_clientStates_1,
  input         io_dirResult_bits_self_prefetch,
  input         io_dirResult_bits_self_hit,
  input  [2:0]  io_dirResult_bits_self_way,
  input  [20:0] io_dirResult_bits_self_tag,
  input         io_dirResult_bits_self_error,
  input  [1:0]  io_dirResult_bits_clients_states_0_state,
  input  [1:0]  io_dirResult_bits_clients_states_0_alias,
  input         io_dirResult_bits_clients_states_0_hit,
  input  [1:0]  io_dirResult_bits_clients_states_1_state,
  input  [1:0]  io_dirResult_bits_clients_states_1_alias,
  input         io_dirResult_bits_clients_states_1_hit,
  input  [20:0] io_dirResult_bits_clients_tag,
  input  [2:0]  io_dirResult_bits_clients_way,
  input         io_dirResult_bits_clients_error,
  input  [7:0]  io_c_status_set,
  input  [20:0] io_c_status_tag,
  input  [2:0]  io_c_status_way,
  input         io_c_status_nestedReleaseData,
  output        io_c_status_releaseThrough,
  input  [7:0]  io_bstatus_set,
  input  [20:0] io_bstatus_tag,
  input  [2:0]  io_bstatus_way,
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
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] req_channel; // @[MSHR.scala 50:16]
  reg [2:0] req_opcode; // @[MSHR.scala 50:16]
  reg [2:0] req_param; // @[MSHR.scala 50:16]
  reg [2:0] req_size; // @[MSHR.scala 50:16]
  reg [5:0] req_source; // @[MSHR.scala 50:16]
  reg [7:0] req_set; // @[MSHR.scala 50:16]
  reg [20:0] req_tag; // @[MSHR.scala 50:16]
  reg [5:0] req_off; // @[MSHR.scala 50:16]
  reg [2:0] req_bufIdx; // @[MSHR.scala 50:16]
  reg  req_needHint; // @[MSHR.scala 50:16]
  reg  req_isPrefetch; // @[MSHR.scala 50:16]
  reg [1:0] req_alias; // @[MSHR.scala 50:16]
  reg  req_preferCache; // @[MSHR.scala 50:16]
  reg  req_dirty; // @[MSHR.scala 50:16]
  reg  req_fromProbeHelper; // @[MSHR.scala 50:16]
  reg  req_fromCmoHelper; // @[MSHR.scala 50:16]
  reg  req_needProbeAckData; // @[MSHR.scala 50:16]
  reg  req_valid; // @[MSHR.scala 51:26]
  reg  iam; // @[MSHR.scala 52:16]
  reg  meta_reg_self_dirty; // @[MSHR.scala 53:21]
  reg [1:0] meta_reg_self_state; // @[MSHR.scala 53:21]
  reg [1:0] meta_reg_self_clientStates_0; // @[MSHR.scala 53:21]
  reg [1:0] meta_reg_self_clientStates_1; // @[MSHR.scala 53:21]
  reg  meta_reg_self_prefetch; // @[MSHR.scala 53:21]
  reg  meta_reg_self_hit; // @[MSHR.scala 53:21]
  reg [2:0] meta_reg_self_way; // @[MSHR.scala 53:21]
  reg [20:0] meta_reg_self_tag; // @[MSHR.scala 53:21]
  reg  meta_reg_self_error; // @[MSHR.scala 53:21]
  reg [1:0] meta_reg_clients_states_0_state; // @[MSHR.scala 53:21]
  reg [1:0] meta_reg_clients_states_0_alias; // @[MSHR.scala 53:21]
  reg  meta_reg_clients_states_0_hit; // @[MSHR.scala 53:21]
  reg [1:0] meta_reg_clients_states_1_state; // @[MSHR.scala 53:21]
  reg [1:0] meta_reg_clients_states_1_alias; // @[MSHR.scala 53:21]
  reg  meta_reg_clients_states_1_hit; // @[MSHR.scala 53:21]
  reg [20:0] meta_reg_clients_tag; // @[MSHR.scala 53:21]
  reg [2:0] meta_reg_clients_way; // @[MSHR.scala 53:21]
  reg  meta_reg_clients_error; // @[MSHR.scala 53:21]
  reg  meta_valid; // @[MSHR.scala 55:27]
  wire  _GEN_0 = io_dirResult_valid | meta_valid; // @[MSHR.scala 64:28 65:16 55:27]
  wire  _GEN_5 = io_dirResult_valid ? io_dirResult_bits_clients_error : meta_reg_clients_error; // @[MSHR.scala 64:28 66:14 53:21]
  wire [20:0] _GEN_7 = io_dirResult_valid ? io_dirResult_bits_clients_tag : meta_reg_clients_tag; // @[MSHR.scala 64:28 66:14 53:21]
  wire  _GEN_9 = io_dirResult_valid ? io_dirResult_bits_clients_states_0_hit : meta_reg_clients_states_0_hit; // @[MSHR.scala 64:28 66:14 53:21]
  wire [1:0] _GEN_10 = io_dirResult_valid ? io_dirResult_bits_clients_states_0_alias : meta_reg_clients_states_0_alias; // @[MSHR.scala 64:28 66:14 53:21]
  wire [1:0] _GEN_11 = io_dirResult_valid ? io_dirResult_bits_clients_states_0_state : meta_reg_clients_states_0_state; // @[MSHR.scala 64:28 66:14 53:21]
  wire  _GEN_12 = io_dirResult_valid ? io_dirResult_bits_clients_states_1_hit : meta_reg_clients_states_1_hit; // @[MSHR.scala 64:28 66:14 53:21]
  wire [1:0] _GEN_13 = io_dirResult_valid ? io_dirResult_bits_clients_states_1_alias : meta_reg_clients_states_1_alias; // @[MSHR.scala 64:28 66:14 53:21]
  wire [1:0] _GEN_14 = io_dirResult_valid ? io_dirResult_bits_clients_states_1_state : meta_reg_clients_states_1_state; // @[MSHR.scala 64:28 66:14 53:21]
  wire  _GEN_15 = io_dirResult_valid ? io_dirResult_bits_self_error : meta_reg_self_error; // @[MSHR.scala 64:28 66:14 53:21]
  wire [20:0] _GEN_16 = io_dirResult_valid ? io_dirResult_bits_self_tag : meta_reg_self_tag; // @[MSHR.scala 64:28 66:14 53:21]
  wire [2:0] _GEN_17 = io_dirResult_valid ? io_dirResult_bits_self_way : meta_reg_self_way; // @[MSHR.scala 64:28 66:14 53:21]
  wire  _GEN_18 = io_dirResult_valid ? io_dirResult_bits_self_hit : meta_reg_self_hit; // @[MSHR.scala 64:28 66:14 53:21]
  wire  _GEN_19 = io_dirResult_valid ? io_dirResult_bits_self_prefetch : meta_reg_self_prefetch; // @[MSHR.scala 64:28 66:14 53:21]
  wire [1:0] _GEN_20 = io_dirResult_valid ? io_dirResult_bits_self_clientStates_0 : meta_reg_self_clientStates_0; // @[MSHR.scala 64:28 66:14 53:21]
  wire [1:0] _GEN_21 = io_dirResult_valid ? io_dirResult_bits_self_clientStates_1 : meta_reg_self_clientStates_1; // @[MSHR.scala 64:28 66:14 53:21]
  wire [1:0] _GEN_22 = io_dirResult_valid ? io_dirResult_bits_self_state : meta_reg_self_state; // @[MSHR.scala 64:28 66:14 53:21]
  wire  _GEN_23 = io_dirResult_valid ? io_dirResult_bits_self_dirty : meta_reg_self_dirty; // @[MSHR.scala 64:28 66:14 53:21]
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
  reg  gotDirty; // @[MSHR.scala 82:25]
  reg  a_do_release; // @[MSHR.scala 83:29]
  reg  a_do_probe; // @[MSHR.scala 84:27]
  wire [1:0] meta_self_clientStates_0 = _GEN_20; // @[MSHR.scala 68:14]
  wire  _meta_no_clients_T = meta_self_clientStates_0 == 2'h0; // @[MSHR.scala 85:58]
  wire [1:0] meta_self_clientStates_1 = _GEN_21; // @[MSHR.scala 68:14]
  wire  _meta_no_clients_T_1 = meta_self_clientStates_1 == 2'h0; // @[MSHR.scala 85:58]
  wire [1:0] _meta_no_clients_T_2 = {_meta_no_clients_T,_meta_no_clients_T_1}; // @[Cat.scala 31:58]
  wire  meta_no_clients = &_meta_no_clients_T_2; // @[MSHR.scala 85:76]
  wire [1:0] meta_self_state = _GEN_22; // @[MSHR.scala 68:14]
  wire  _req_promoteT_T = meta_self_state == 2'h3; // @[MSHR.scala 88:40]
  wire  _req_promoteT_T_1 = meta_no_clients & meta_self_state == 2'h3; // @[MSHR.scala 88:21]
  wire  _req_promoteT_T_2 = gotT & promoteT_safe; // @[MSHR.scala 89:10]
  wire  meta_self_hit = _GEN_18; // @[MSHR.scala 68:14]
  wire  _req_promoteT_T_3 = meta_self_hit ? _req_promoteT_T_1 : _req_promoteT_T_2; // @[MSHR.scala 86:40]
  wire  req_promoteT = req_acquire & _req_promoteT_T_3; // @[MSHR.scala 86:34]
  reg  probe_dirty; // @[MSHR.scala 91:28]
  reg [1:0] probes_done; // @[MSHR.scala 92:28]
  wire  _client_shrink_perm_T_1 = req_param == 3'h2; // @[MetaData.scala 48:43]
  wire  _client_shrink_perm_T_4 = _req_needT_T_3 | req_param == 3'h2 | req_param == 3'h5; // @[MetaData.scala 48:66]
  wire [1:0] meta_clients_states_0_state = _GEN_11; // @[MSHR.scala 68:14]
  wire [1:0] meta_clients_states_1_state = _GEN_14; // @[MSHR.scala 68:14]
  wire [1:0] _GEN_26 = iam ? meta_clients_states_1_state : meta_clients_states_0_state; // @[MSHR.scala 94:{49,49}]
  wire  _client_shrink_perm_T_7 = req_param == 3'h0; // @[MetaData.scala 51:11]
  wire  _client_shrink_perm_T_9 = req_param == 3'h0 | req_param == 3'h4; // @[MetaData.scala 51:34]
  wire  client_shrink_perm = _client_shrink_perm_T_4 & _GEN_26 != 2'h0 | _client_shrink_perm_T_9 & _GEN_26[1]; // @[MSHR.scala 94:61]
  wire  meta_clients_states_1_hit = _GEN_12; // @[MSHR.scala 68:14]
  wire  meta_clients_states_0_hit = _GEN_9; // @[MSHR.scala 68:14]
  wire [1:0] _clients_hit_T = {meta_clients_states_1_hit,meta_clients_states_0_hit}; // @[MSHR.scala 95:54]
  wire  clients_hit = |_clients_hit_T; // @[MSHR.scala 95:61]
  wire  _other_clients_hit_T_1 = iam & meta_clients_states_0_hit; // @[MSHR.scala 97:35]
  wire  _other_clients_hit_T_2 = ~iam; // @[MSHR.scala 97:27]
  wire  _other_clients_hit_T_3 = ~iam & meta_clients_states_1_hit; // @[MSHR.scala 97:35]
  wire [1:0] _other_clients_hit_T_4 = {_other_clients_hit_T_3,_other_clients_hit_T_1}; // @[MSHR.scala 98:6]
  wire  other_clients_hit = |_other_clients_hit_T_4; // @[MSHR.scala 98:13]
  wire  _clients_have_T_T_1 = meta_clients_states_0_hit & meta_clients_states_0_state[1]; // @[MSHR.scala 100:27]
  wire  _clients_have_T_T_3 = meta_clients_states_1_hit & meta_clients_states_1_state[1]; // @[MSHR.scala 100:27]
  wire [1:0] _clients_have_T_T_4 = {_clients_have_T_T_3,_clients_have_T_T_1}; // @[MSHR.scala 101:6]
  wire  clients_have_T = |_clients_have_T_T_4; // @[MSHR.scala 101:13]
  wire  _cache_alias_T = ~req_isPrefetch; // @[MSHR.scala 105:21]
  wire  _GEN_28 = iam ? meta_clients_states_1_hit : meta_clients_states_0_hit; // @[MSHR.scala 105:{56,56}]
  wire [1:0] meta_clients_states_0_alias = _GEN_10; // @[MSHR.scala 68:14]
  wire [1:0] meta_clients_states_1_alias = _GEN_13; // @[MSHR.scala 68:14]
  wire [1:0] _GEN_30 = iam ? meta_clients_states_1_alias : meta_clients_states_0_alias; // @[MSHR.scala 106:{42,42}]
  wire  _cache_alias_T_3 = _GEN_30 != req_alias; // @[MSHR.scala 106:42]
  wire  cache_alias = ~req_isPrefetch & _GEN_28 & req_acquire & _cache_alias_T_3; // @[MSHR.scala 105:94]
  wire [1:0] _highest_perm_T = meta_self_hit ? meta_self_state : 2'h0; // @[MSHR.scala 108:12]
  wire [1:0] _highest_perm_T_1 = meta_clients_states_0_hit ? meta_clients_states_0_state : 2'h0; // @[MSHR.scala 109:32]
  wire [1:0] _highest_perm_T_2 = meta_clients_states_1_hit ? meta_clients_states_1_state : 2'h0; // @[MSHR.scala 109:32]
  wire [1:0] _highest_perm_T_4 = _highest_perm_T_1 > _highest_perm_T_2 ? _highest_perm_T_1 : _highest_perm_T_2; // @[ParallelMux.scala 80:46]
  wire [1:0] highest_perm = _highest_perm_T > _highest_perm_T_4 ? _highest_perm_T : _highest_perm_T_4; // @[ParallelMux.scala 80:46]
  wire [1:0] _highest_perm_except_me_T_6 = req_acquire & _other_clients_hit_T_2 & ~cache_alias ? 2'h0 :
    _highest_perm_T_1; // @[MSHR.scala 115:14]
  wire [1:0] _highest_perm_except_me_T_12 = req_acquire & iam & ~cache_alias ? 2'h0 : _highest_perm_T_2; // @[MSHR.scala 115:14]
  wire [1:0] _highest_perm_except_me_T_14 = _highest_perm_except_me_T_6 > _highest_perm_except_me_T_12 ?
    _highest_perm_except_me_T_6 : _highest_perm_except_me_T_12; // @[ParallelMux.scala 80:46]
  wire [1:0] highest_perm_except_me = _highest_perm_T > _highest_perm_except_me_T_14 ? _highest_perm_T :
    _highest_perm_except_me_T_14; // @[ParallelMux.scala 80:46]
  reg  inv_self_dir; // @[MSHR.scala 124:29]
  reg [2:0] client_probeack_param_vec_reg_0; // @[MSHR.scala 125:46]
  reg [2:0] client_probeack_param_vec_reg_1; // @[MSHR.scala 125:46]
  wire [1:0] replace_clients_perm = meta_self_clientStates_0 > meta_self_clientStates_1 ? meta_self_clientStates_0 :
    meta_self_clientStates_1; // @[ParallelMux.scala 80:46]
  wire  meta_self_dirty = _GEN_23; // @[MSHR.scala 68:14]
  wire  replace_need_release = meta_self_state > replace_clients_perm | meta_self_dirty & meta_self_state[1]; // @[MSHR.scala 131:69]
  wire [3:0] _replace_param_T = {meta_self_state,replace_clients_perm}; // @[Cat.scala 31:58]
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
  wire  _prefetch_miss_need_probe_vec_T_14 = ~_GEN_28; // @[MSHR.scala 151:72]
  wire  _prefetch_miss_need_probe_vec_T_15 = _client_shrink_perm_T_7 & meta_clients_states_0_hit &
    _prefetch_miss_need_probe_vec_T_5 & ~_GEN_28; // @[MSHR.scala 151:69]
  wire  _prefetch_miss_need_probe_vec_T_16 = _req_needT_T_3 & meta_clients_states_0_state[1] & meta_clients_states_0_hit
     & (~meta_self_hit | ~meta_self_state[1]) | _prefetch_miss_need_probe_vec_T_15; // @[MSHR.scala 150:115]
  wire  prefetch_miss_need_probe_vec_0 = iam & _prefetch_miss_need_probe_vec_T_16; // @[MSHR.scala 149:19]
  wire  _prefetch_miss_need_probe_vec_T_33 = _client_shrink_perm_T_7 & meta_clients_states_1_hit &
    _prefetch_miss_need_probe_vec_T_5 & ~_GEN_28; // @[MSHR.scala 151:69]
  wire  _prefetch_miss_need_probe_vec_T_34 = _req_needT_T_3 & meta_clients_states_1_state[1] & meta_clients_states_1_hit
     & (~meta_self_hit | ~meta_self_state[1]) | _prefetch_miss_need_probe_vec_T_33; // @[MSHR.scala 150:115]
  wire  prefetch_miss_need_probe_vec_1 = _other_clients_hit_T_2 & _prefetch_miss_need_probe_vec_T_34; // @[MSHR.scala 149:19]
  wire [1:0] _prefetch_miss_need_probe_T = {prefetch_miss_need_probe_vec_1,prefetch_miss_need_probe_vec_0}; // @[MSHR.scala 153:63]
  wire  prefetch_miss_need_probe = |_prefetch_miss_need_probe_T; // @[MSHR.scala 153:70]
  wire  prefetch_miss = _req_needT_T_2 & (prefetch_miss_need_acquire | prefetch_miss_need_probe); // @[MSHR.scala 154:43]
  wire  prefetch_need_data = prefetch_miss & _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 155:42]
  wire  _transmit_from_other_client_T_1 = req_opcode == 3'h4; // @[MSHR.scala 160:19]
  wire  _transmit_from_other_client_T_4 = (req_opcode == 3'h4 | iam) & meta_clients_states_0_hit; // @[MSHR.scala 160:43]
  wire  _transmit_from_other_client_T_8 = (req_opcode == 3'h4 | _other_clients_hit_T_2) & meta_clients_states_1_hit; // @[MSHR.scala 160:43]
  wire [1:0] _transmit_from_other_client_T_9 = {_transmit_from_other_client_T_8,_transmit_from_other_client_T_4}; // @[MSHR.scala 161:6]
  wire  _transmit_from_other_client_T_10 = |_transmit_from_other_client_T_9; // @[MSHR.scala 161:13]
  wire  _transmit_from_other_client_T_11 = _prefetch_miss_need_probe_vec_T_5 & _transmit_from_other_client_T_10; // @[MSHR.scala 158:51]
  wire  transmit_from_other_client = _transmit_from_other_client_T_11 & (_cache_alias_T | prefetch_need_data); // @[MSHR.scala 161:17]
  wire  a_need_data = req_channel[0] & (_transmit_from_other_client_T_1 | req_put | _req_acquire_T | _req_needT_T_2); // @[MSHR.scala 163:31]
  wire  acquireperm_alias = req_channel[0] & _req_acquire_T_1 & cache_alias; // @[MSHR.scala 164:67]
  reg  releaseThrough; // @[MSHR.scala 172:31]
  reg  releaseDrop; // @[MSHR.scala 173:28]
  wire  releaseSave = ~releaseThrough & ~releaseDrop; // @[MSHR.scala 174:37]
  reg  probeAckDataThrough; // @[MSHR.scala 181:36]
  reg  probeAckDataDrop; // @[MSHR.scala 182:33]
  reg  probeAckDataSave; // @[MSHR.scala 183:33]
  wire  _a_probe_clients_T_2 = meta_clients_states_0_state != 2'h0; // @[MSHR.scala 194:32]
  wire  _a_probe_clients_T_7 = req_needT & meta_clients_states_0_state != 2'h0 | meta_clients_states_0_state[1] |
    _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 194:60]
  wire  _a_probe_clients_T_8 = meta_clients_states_0_hit & _a_probe_clients_T_7; // @[MSHR.scala 193:15]
  wire  a_probe_clients_0 = _other_clients_hit_T_2 & req_acquire ? cache_alias : _a_probe_clients_T_8; // @[MSHR.scala 191:10]
  wire  _a_probe_clients_T_12 = meta_clients_states_1_state != 2'h0; // @[MSHR.scala 194:32]
  wire  _a_probe_clients_T_17 = req_needT & meta_clients_states_1_state != 2'h0 | meta_clients_states_1_state[1] |
    _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 194:60]
  wire  _a_probe_clients_T_18 = meta_clients_states_1_hit & _a_probe_clients_T_17; // @[MSHR.scala 193:15]
  wire  a_probe_clients_1 = iam & req_acquire ? cache_alias : _a_probe_clients_T_18; // @[MSHR.scala 191:10]
  wire [1:0] _new_self_meta_state_T_2 = meta_self_state[1] ? 2'h3 : 2'h1; // @[MSHR.scala 223:12]
  wire [1:0] _new_self_meta_state_T_3 = meta_self_hit ? _new_self_meta_state_T_2 : meta_self_state; // @[MSHR.scala 222:10]
  wire [1:0] _new_self_meta_state_T_4 = _req_needT_T_3 ? _new_self_meta_state_T_3 : 2'h0; // @[MSHR.scala 221:31]
  wire  _new_self_meta_clientStates_0_T = meta_self_clientStates_0 != 2'h0; // @[MSHR.scala 229:67]
  wire [1:0] _new_self_meta_clientStates_0_T_3 = meta_self_clientStates_0 != 2'h0 & _req_needT_T_3 ? 2'h1 : 2'h0; // @[MSHR.scala 229:40]
  wire [1:0] _new_self_meta_clientStates_0_T_4 = meta_self_hit ? _new_self_meta_clientStates_0_T_3 :
    meta_self_clientStates_0; // @[MSHR.scala 229:21]
  wire  _new_self_meta_clientStates_1_T = meta_self_clientStates_1 != 2'h0; // @[MSHR.scala 229:67]
  wire [1:0] _new_self_meta_clientStates_1_T_3 = meta_self_clientStates_1 != 2'h0 & _req_needT_T_3 ? 2'h1 : 2'h0; // @[MSHR.scala 229:40]
  wire [1:0] _new_self_meta_clientStates_1_T_4 = meta_self_hit ? _new_self_meta_clientStates_1_T_3 :
    meta_self_clientStates_1; // @[MSHR.scala 229:21]
  wire [1:0] _new_clients_meta_0_state_T_3 = _a_probe_clients_T_2 & _req_needT_T_3 ? 2'h1 : 2'h0; // @[MSHR.scala 233:34]
  wire [1:0] _new_clients_meta_0_state_T_4 = meta_clients_states_0_hit ? _new_clients_meta_0_state_T_3 :
    meta_clients_states_0_state; // @[MSHR.scala 233:23]
  wire [1:0] _new_clients_meta_1_state_T_3 = _a_probe_clients_T_12 & _req_needT_T_3 ? 2'h1 : 2'h0; // @[MSHR.scala 233:34]
  wire [1:0] _new_clients_meta_1_state_T_4 = meta_clients_states_1_hit ? _new_clients_meta_1_state_T_3 :
    meta_clients_states_1_state; // @[MSHR.scala 233:23]
  wire  _new_self_meta_dirty_T = meta_self_hit & meta_self_dirty; // @[MSHR.scala 239:42]
  wire  _new_self_meta_dirty_T_5 = _req_needT_T_3 | _client_shrink_perm_T_7 | req_param == 3'h3; // @[MetaData.scala 55:66]
  wire [1:0] _new_self_meta_state_T_7 = meta_self_hit & _req_promoteT_T ? 2'h3 : 2'h1; // @[MSHR.scala 248:20]
  wire [1:0] _new_self_meta_state_T_9 = 3'h3 == req_param ? 2'h2 : meta_self_state; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_11 = 3'h0 == req_param ? 2'h3 : _new_self_meta_state_T_9; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_13 = 3'h1 == req_param ? 2'h3 : _new_self_meta_state_T_11; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_15 = 3'h2 == req_param ? _new_self_meta_state_T_7 : _new_self_meta_state_T_13; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_clientStates_0_T_14 = _client_shrink_perm_T_9 ? 2'h1 : meta_self_clientStates_0; // @[MSHR.scala 256:45]
  wire [1:0] _new_self_meta_clientStates_0_T_15 = _client_shrink_perm_T_4 ? 2'h0 : _new_self_meta_clientStates_0_T_14; // @[MSHR.scala 256:14]
  wire [1:0] _new_self_meta_clientStates_0_T_16 = _other_clients_hit_T_2 ? _new_self_meta_clientStates_0_T_15 :
    meta_clients_states_0_state; // @[MSHR.scala 254:21]
  wire [1:0] _new_self_meta_clientStates_1_T_14 = _client_shrink_perm_T_9 ? 2'h1 : meta_self_clientStates_1; // @[MSHR.scala 256:45]
  wire [1:0] _new_self_meta_clientStates_1_T_15 = _client_shrink_perm_T_4 ? 2'h0 : _new_self_meta_clientStates_1_T_14; // @[MSHR.scala 256:14]
  wire [1:0] _new_self_meta_clientStates_1_T_16 = iam ? _new_self_meta_clientStates_1_T_15 : meta_clients_states_1_state
    ; // @[MSHR.scala 254:21]
  wire [1:0] _new_clients_meta_0_state_T_14 = _client_shrink_perm_T_9 ? 2'h1 : meta_clients_states_0_state; // @[MSHR.scala 264:45]
  wire [1:0] _new_clients_meta_0_state_T_15 = _client_shrink_perm_T_4 ? 2'h0 : _new_clients_meta_0_state_T_14; // @[MSHR.scala 264:14]
  wire [1:0] _new_clients_meta_0_state_T_16 = _other_clients_hit_T_2 ? _new_clients_meta_0_state_T_15 :
    meta_clients_states_0_state; // @[MSHR.scala 262:23]
  wire [1:0] _new_clients_meta_1_state_T_14 = _client_shrink_perm_T_9 ? 2'h1 : meta_clients_states_1_state; // @[MSHR.scala 264:45]
  wire [1:0] _new_clients_meta_1_state_T_15 = _client_shrink_perm_T_4 ? 2'h0 : _new_clients_meta_1_state_T_14; // @[MSHR.scala 264:14]
  wire [1:0] _new_clients_meta_1_state_T_16 = iam ? _new_clients_meta_1_state_T_15 : meta_clients_states_1_state; // @[MSHR.scala 262:23]
  wire  _GEN_31 = req_fromCmoHelper ? 1'h0 : meta_self_hit & meta_self_dirty | req_dirty & _new_self_meta_dirty_T_5; // @[MSHR.scala 220:25 239:25 414:29]
  wire [1:0] _GEN_32 = req_fromCmoHelper ? _new_self_meta_state_T_4 : _new_self_meta_state_T_15; // @[MSHR.scala 221:25 240:25 414:29]
  wire [1:0] _GEN_33 = req_fromCmoHelper ? _new_self_meta_clientStates_0_T_4 : _new_self_meta_clientStates_0_T_16; // @[MSHR.scala 229:15 254:15 414:29]
  wire [1:0] _GEN_34 = req_fromCmoHelper ? _new_self_meta_clientStates_1_T_4 : _new_self_meta_clientStates_1_T_16; // @[MSHR.scala 229:15 254:15 414:29]
  wire [1:0] _GEN_35 = req_fromCmoHelper ? _new_clients_meta_0_state_T_4 : _new_clients_meta_0_state_T_16; // @[MSHR.scala 233:17 262:17 414:29]
  wire [1:0] _GEN_36 = req_fromCmoHelper ? _new_clients_meta_1_state_T_4 : _new_clients_meta_1_state_T_16; // @[MSHR.scala 233:17 262:17 414:29]
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
  wire  _new_self_meta_clientStates_1_T_19 = meta_self_clientStates_1[1] & _client_shrink_perm_T_7; // @[MSHR.scala 201:16]
  wire [1:0] _new_self_meta_clientStates_1_T_23 = _new_self_meta_clientStates_1_T & req_param != 3'h2 ? 2'h1 : 2'h0; // @[MSHR.scala 203:8]
  wire [1:0] _new_self_meta_clientStates_1_T_24 = _new_self_meta_clientStates_1_T_19 ? meta_self_clientStates_1 :
    _new_self_meta_clientStates_1_T_23; // @[MSHR.scala 200:61]
  wire [1:0] _new_self_meta_clientStates_1_T_25 = meta_self_hit ? _new_self_meta_clientStates_1_T_24 :
    meta_self_clientStates_1; // @[MSHR.scala 292:21]
  reg  w_probeacklast; // @[MSHR.scala 527:31]
  wire  sink_c_resp_valid = io_resps_sink_c_valid & ~w_probeacklast; // @[MSHR.scala 1229:49]
  wire  _T_264 = req_valid & sink_c_resp_valid; // @[MSHR.scala 1235:18]
  wire  _client_T_7 = io_resps_sink_c_bits_source[5:2] == 4'ha; // @[Parameters.scala 54:32]
  wire [1:0] client_uncommonBits_1 = io_resps_sink_c_bits_source[1:0]; // @[Parameters.scala 52:64]
  wire  _client_T_10 = client_uncommonBits_1 <= 2'h2; // @[Parameters.scala 57:20]
  wire  _client_T_11 = _client_T_7 & _client_T_10; // @[Parameters.scala 56:50]
  wire  _client_T_1 = ~io_resps_sink_c_bits_source[5]; // @[Parameters.scala 54:32]
  wire [4:0] client_uncommonBits = io_resps_sink_c_bits_source[4:0]; // @[Parameters.scala 52:64]
  wire  _client_T_4 = client_uncommonBits <= 5'h12; // @[Parameters.scala 57:20]
  wire  _client_T_5 = _client_T_1 & _client_T_4; // @[Parameters.scala 56:50]
  wire [1:0] _client_T_12 = {_client_T_11,_client_T_5}; // @[Cat.scala 31:58]
  wire  client = _client_T_12[1]; // @[CircuitMath.scala 30:8]
  wire [2:0] _GEN_336 = ~client ? io_resps_sink_c_bits_param : client_probeack_param_vec_reg_0; // @[MSHR.scala 1234:29 1238:{39,39}]
  wire [2:0] client_probeack_param_vec_0 = req_valid & sink_c_resp_valid & io_resps_sink_c_bits_last ? _GEN_336 :
    client_probeack_param_vec_reg_0; // @[MSHR.scala 1234:29 1235:69]
  wire [1:0] _new_clients_meta_0_state_T_24 = client_probeack_param_vec_0 == 3'h0 | client_probeack_param_vec_0 == 3'h4
     ? 2'h1 : 2'h0; // @[MSHR.scala 208:8]
  wire [1:0] _new_clients_meta_0_state_T_25 = meta_clients_states_0_hit ? _new_clients_meta_0_state_T_24 :
    meta_clients_states_0_state; // @[MSHR.scala 296:23]
  wire [2:0] _GEN_337 = client ? io_resps_sink_c_bits_param : client_probeack_param_vec_reg_1; // @[MSHR.scala 1234:29 1238:{39,39}]
  wire [2:0] client_probeack_param_vec_1 = req_valid & sink_c_resp_valid & io_resps_sink_c_bits_last ? _GEN_337 :
    client_probeack_param_vec_reg_1; // @[MSHR.scala 1234:29 1235:69]
  wire [1:0] _new_clients_meta_1_state_T_24 = client_probeack_param_vec_1 == 3'h0 | client_probeack_param_vec_1 == 3'h4
     ? 2'h1 : 2'h0; // @[MSHR.scala 208:8]
  wire [1:0] _new_clients_meta_1_state_T_25 = meta_clients_states_1_hit ? _new_clients_meta_1_state_T_24 :
    meta_clients_states_1_state; // @[MSHR.scala 296:23]
  wire  _new_self_meta_dirty_T_10 = meta_self_dirty | probe_dirty; // @[MSHR.scala 308:54]
  wire  _new_self_meta_dirty_T_11 = req_promoteT ? 1'h0 : meta_self_dirty | probe_dirty; // @[MSHR.scala 308:14]
  wire  _new_self_meta_dirty_T_12 = gotDirty | probe_dirty; // @[MSHR.scala 309:20]
  wire  _new_self_meta_dirty_T_13 = meta_self_hit ? _new_self_meta_dirty_T_11 : _new_self_meta_dirty_T_12; // @[MSHR.scala 307:12]
  wire  _new_self_meta_dirty_T_14 = req_needT ? 1'h0 : _new_self_meta_dirty_T_13; // @[MSHR.scala 305:10]
  wire  _new_self_meta_dirty_T_16 = req_put | _new_self_meta_dirty_T_12; // @[MSHR.scala 312:10]
  wire  _new_self_meta_dirty_T_17 = req_acquire ? _new_self_meta_dirty_T_14 : _new_self_meta_dirty_T_16; // @[MSHR.scala 303:31]
  wire [1:0] _new_self_meta_state_T_30 = req_acquire ? 2'h2 : 2'h3; // @[MSHR.scala 319:10]
  wire  _new_self_meta_state_T_32 = transmit_from_other_client | cache_alias; // @[MSHR.scala 328:38]
  wire [1:0] _new_self_meta_state_T_34 = req_acquire & promoteT_safe ? 2'h2 : 2'h3; // @[MSHR.scala 331:16]
  wire [1:0] _new_self_meta_state_T_35 = gotT ? _new_self_meta_state_T_34 : 2'h1; // @[MSHR.scala 330:14]
  wire [1:0] _new_self_meta_state_T_36 = _new_self_meta_state_T_32 ? highest_perm : _new_self_meta_state_T_35; // @[MSHR.scala 327:12]
  wire  _new_self_meta_state_T_37 = meta_no_clients & req_acquire; // @[MSHR.scala 345:29]
  wire [1:0] _new_self_meta_state_T_38 = _new_self_meta_state_T_37 ? 2'h2 : 2'h3; // @[MSHR.scala 344:21]
  wire [1:0] _new_self_meta_state_T_42 = 2'h2 == meta_self_state ? 2'h3 : 2'h1; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_44 = 2'h3 == meta_self_state ? _new_self_meta_state_T_38 : _new_self_meta_state_T_42
    ; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_45 = _prefetch_miss_need_probe_vec_T_5 ? _new_self_meta_state_T_36 :
    _new_self_meta_state_T_44; // @[MSHR.scala 326:10]
  wire [1:0] _new_self_meta_state_T_46 = req_needT ? _new_self_meta_state_T_30 : _new_self_meta_state_T_45; // @[MSHR.scala 317:31]
  wire [1:0] _GEN_37 = inv_self_dir ? 2'h0 : _new_self_meta_state_T_46; // @[MSHR.scala 351:23 317:25 352:27]
  wire [1:0] _new_self_meta_clientStates_0_T_27 = req_needT | req_promoteT ? 2'h3 : 2'h1; // @[MSHR.scala 359:16]
  wire [1:0] _new_self_meta_clientStates_0_T_29 = meta_clients_states_0_hit ? 2'h1 : 2'h0; // @[MSHR.scala 362:18]
  wire [1:0] _new_self_meta_clientStates_0_T_31 = _transmit_from_other_client_T_1 ? _new_self_meta_clientStates_0_T_29
     : _highest_perm_T_1; // @[MSHR.scala 360:16]
  wire [1:0] _new_self_meta_clientStates_0_T_32 = req_acquire ? _new_self_meta_clientStates_0_T_27 :
    _new_self_meta_clientStates_0_T_31; // @[MSHR.scala 358:23]
  wire  _new_self_meta_clientStates_0_T_33 = req_acquire | req_put; // @[MSHR.scala 368:25]
  wire  _new_self_meta_clientStates_0_T_36 = _req_needT_T_9 | req_promoteT | req_put; // @[MSHR.scala 370:50]
  wire  _new_self_meta_clientStates_0_T_37 = meta_clients_states_0_hit & a_do_probe; // @[MSHR.scala 372:39]
  wire [1:0] _new_self_meta_clientStates_0_T_38 = a_probe_clients_0 ? _new_clients_meta_0_state_T_24 :
    meta_clients_states_0_state; // @[MSHR.scala 372:57]
  wire [1:0] _new_self_meta_clientStates_0_T_39 = meta_clients_states_0_hit & a_do_probe ?
    _new_self_meta_clientStates_0_T_38 : 2'h0; // @[MSHR.scala 372:18]
  wire [1:0] _new_self_meta_clientStates_0_T_40 = _new_self_meta_clientStates_0_T_36 ? 2'h0 :
    _new_self_meta_clientStates_0_T_39; // @[MSHR.scala 369:16]
  wire [1:0] _new_self_meta_clientStates_0_T_43 = _new_self_meta_clientStates_0_T_37 ? _new_clients_meta_0_state_T_24 : 2'h0
    ; // @[MSHR.scala 376:18]
  wire [1:0] _new_self_meta_clientStates_0_T_45 = _new_self_meta_clientStates_0_T_37 ? meta_clients_states_0_state : 2'h0
    ; // @[MSHR.scala 377:18]
  wire [1:0] _new_self_meta_clientStates_0_T_46 = _transmit_from_other_client_T_1 ? _new_self_meta_clientStates_0_T_43
     : _new_self_meta_clientStates_0_T_45; // @[MSHR.scala 374:16]
  wire [1:0] _new_self_meta_clientStates_0_T_47 = _new_self_meta_clientStates_0_T_33 ?
    _new_self_meta_clientStates_0_T_40 : _new_self_meta_clientStates_0_T_46; // @[MSHR.scala 367:23]
  wire [1:0] _GEN_38 = _other_clients_hit_T_2 ? _new_self_meta_clientStates_0_T_32 : _new_self_meta_clientStates_0_T_47; // @[MSHR.scala 357:27 358:17 367:17]
  wire [1:0] _new_self_meta_clientStates_1_T_29 = meta_clients_states_1_hit ? 2'h1 : 2'h0; // @[MSHR.scala 362:18]
  wire [1:0] _new_self_meta_clientStates_1_T_31 = _transmit_from_other_client_T_1 ? _new_self_meta_clientStates_1_T_29
     : _highest_perm_T_2; // @[MSHR.scala 360:16]
  wire [1:0] _new_self_meta_clientStates_1_T_32 = req_acquire ? _new_self_meta_clientStates_0_T_27 :
    _new_self_meta_clientStates_1_T_31; // @[MSHR.scala 358:23]
  wire  _new_self_meta_clientStates_1_T_37 = meta_clients_states_1_hit & a_do_probe; // @[MSHR.scala 372:39]
  wire [1:0] _new_self_meta_clientStates_1_T_38 = a_probe_clients_1 ? _new_clients_meta_1_state_T_24 :
    meta_clients_states_1_state; // @[MSHR.scala 372:57]
  wire [1:0] _new_self_meta_clientStates_1_T_39 = meta_clients_states_1_hit & a_do_probe ?
    _new_self_meta_clientStates_1_T_38 : 2'h0; // @[MSHR.scala 372:18]
  wire [1:0] _new_self_meta_clientStates_1_T_40 = _new_self_meta_clientStates_0_T_36 ? 2'h0 :
    _new_self_meta_clientStates_1_T_39; // @[MSHR.scala 369:16]
  wire [1:0] _new_self_meta_clientStates_1_T_43 = _new_self_meta_clientStates_1_T_37 ? _new_clients_meta_1_state_T_24 : 2'h0
    ; // @[MSHR.scala 376:18]
  wire [1:0] _new_self_meta_clientStates_1_T_45 = _new_self_meta_clientStates_1_T_37 ? meta_clients_states_1_state : 2'h0
    ; // @[MSHR.scala 377:18]
  wire [1:0] _new_self_meta_clientStates_1_T_46 = _transmit_from_other_client_T_1 ? _new_self_meta_clientStates_1_T_43
     : _new_self_meta_clientStates_1_T_45; // @[MSHR.scala 374:16]
  wire [1:0] _new_self_meta_clientStates_1_T_47 = _new_self_meta_clientStates_0_T_33 ?
    _new_self_meta_clientStates_1_T_40 : _new_self_meta_clientStates_1_T_46; // @[MSHR.scala 367:23]
  wire [1:0] _GEN_39 = iam ? _new_self_meta_clientStates_1_T_32 : _new_self_meta_clientStates_1_T_47; // @[MSHR.scala 357:27 358:17 367:17]
  wire [1:0] _new_clients_meta_0_state_T_28 = req_acquire ? _new_self_meta_clientStates_0_T_27 :
    meta_clients_states_0_state; // @[MSHR.scala 386:25]
  wire [1:0] _new_clients_meta_0_alias_T = req_acquire ? req_alias : meta_clients_states_0_alias; // @[MSHR.scala 391:35]
  wire [1:0] _new_clients_meta_0_state_T_34 = _new_self_meta_clientStates_0_T_37 ? 2'h0 : meta_clients_states_0_state; // @[MSHR.scala 397:18]
  wire [1:0] _new_clients_meta_0_state_T_37 = _new_self_meta_clientStates_0_T_37 ? _new_self_meta_clientStates_0_T_38 :
    meta_clients_states_0_state; // @[MSHR.scala 399:18]
  wire [1:0] _new_clients_meta_0_state_T_38 = _new_self_meta_clientStates_0_T_36 ? _new_clients_meta_0_state_T_34 :
    _new_clients_meta_0_state_T_37; // @[MSHR.scala 395:16]
  wire [1:0] _new_clients_meta_0_state_T_40 = _client_shrink_perm_T_7 ? _new_clients_meta_0_state_T_24 : 2'h0; // @[MSHR.scala 401:46]
  wire [1:0] _new_clients_meta_0_state_T_41 = prefetch_miss_need_probe ? _new_clients_meta_0_state_T_40 :
    meta_clients_states_0_state; // @[MSHR.scala 401:16]
  wire [1:0] _new_clients_meta_0_state_T_42 = _new_self_meta_clientStates_0_T_33 ? _new_clients_meta_0_state_T_38 :
    _new_clients_meta_0_state_T_41; // @[MSHR.scala 393:25]
  wire [1:0] _GEN_40 = _other_clients_hit_T_2 ? _new_clients_meta_0_state_T_28 : _new_clients_meta_0_state_T_42; // @[MSHR.scala 385:27 386:19 393:19]
  wire [1:0] _GEN_41 = _other_clients_hit_T_2 ? _new_clients_meta_0_alias_T : meta_clients_states_0_alias; // @[MSHR.scala 385:27 391:29 403:29]
  wire [1:0] _new_clients_meta_0_state_T_44 = _new_self_meta_clientStates_0_T_37 ? _new_clients_meta_0_state_T_24 :
    meta_clients_states_0_state; // @[MSHR.scala 407:25]
  wire [1:0] _GEN_42 = _transmit_from_other_client_T_1 ? _new_clients_meta_0_state_T_44 : _GEN_40; // @[MSHR.scala 406:35 407:19]
  wire [1:0] _GEN_43 = _transmit_from_other_client_T_1 ? meta_clients_states_0_alias : _GEN_41; // @[MSHR.scala 406:35 408:29]
  wire [1:0] _new_clients_meta_1_state_T_28 = req_acquire ? _new_self_meta_clientStates_0_T_27 :
    meta_clients_states_1_state; // @[MSHR.scala 386:25]
  wire [1:0] _new_clients_meta_1_alias_T = req_acquire ? req_alias : meta_clients_states_1_alias; // @[MSHR.scala 391:35]
  wire [1:0] _new_clients_meta_1_state_T_34 = _new_self_meta_clientStates_1_T_37 ? 2'h0 : meta_clients_states_1_state; // @[MSHR.scala 397:18]
  wire [1:0] _new_clients_meta_1_state_T_37 = _new_self_meta_clientStates_1_T_37 ? _new_self_meta_clientStates_1_T_38 :
    meta_clients_states_1_state; // @[MSHR.scala 399:18]
  wire [1:0] _new_clients_meta_1_state_T_38 = _new_self_meta_clientStates_0_T_36 ? _new_clients_meta_1_state_T_34 :
    _new_clients_meta_1_state_T_37; // @[MSHR.scala 395:16]
  wire [1:0] _new_clients_meta_1_state_T_40 = _client_shrink_perm_T_7 ? _new_clients_meta_1_state_T_24 : 2'h0; // @[MSHR.scala 401:46]
  wire [1:0] _new_clients_meta_1_state_T_41 = prefetch_miss_need_probe ? _new_clients_meta_1_state_T_40 :
    meta_clients_states_1_state; // @[MSHR.scala 401:16]
  wire [1:0] _new_clients_meta_1_state_T_42 = _new_self_meta_clientStates_0_T_33 ? _new_clients_meta_1_state_T_38 :
    _new_clients_meta_1_state_T_41; // @[MSHR.scala 393:25]
  wire [1:0] _GEN_44 = iam ? _new_clients_meta_1_state_T_28 : _new_clients_meta_1_state_T_42; // @[MSHR.scala 385:27 386:19 393:19]
  wire [1:0] _GEN_45 = iam ? _new_clients_meta_1_alias_T : meta_clients_states_1_alias; // @[MSHR.scala 385:27 391:29 403:29]
  wire [1:0] _new_clients_meta_1_state_T_44 = _new_self_meta_clientStates_1_T_37 ? _new_clients_meta_1_state_T_24 :
    meta_clients_states_1_state; // @[MSHR.scala 407:25]
  wire [1:0] _GEN_46 = _transmit_from_other_client_T_1 ? _new_clients_meta_1_state_T_44 : _GEN_44; // @[MSHR.scala 406:35 407:19]
  wire [1:0] _GEN_47 = _transmit_from_other_client_T_1 ? meta_clients_states_1_alias : _GEN_45; // @[MSHR.scala 406:35 408:29]
  wire  _GEN_48 = req_channel[1] ? _new_self_meta_dirty_T | probe_dirty : _new_self_meta_dirty_T_17; // @[MSHR.scala 282:25 303:25 419:25]
  wire [1:0] _GEN_49 = req_channel[1] ? _new_self_meta_state_T_29 : _GEN_37; // @[MSHR.scala 283:25 419:25]
  wire [1:0] _GEN_50 = req_channel[1] ? _new_self_meta_clientStates_0_T_25 : _GEN_38; // @[MSHR.scala 292:15 419:25]
  wire [1:0] _GEN_51 = req_channel[1] ? _new_self_meta_clientStates_1_T_25 : _GEN_39; // @[MSHR.scala 292:15 419:25]
  wire [1:0] _GEN_52 = req_channel[1] ? _new_clients_meta_0_state_T_25 : _GEN_42; // @[MSHR.scala 296:17 419:25]
  wire [1:0] _GEN_53 = req_channel[1] ? _new_clients_meta_1_state_T_25 : _GEN_46; // @[MSHR.scala 296:17 419:25]
  wire [1:0] _GEN_54 = req_channel[1] ? meta_clients_states_0_alias : _GEN_43; // @[MSHR.scala 419:25]
  wire [1:0] _GEN_55 = req_channel[1] ? meta_clients_states_1_alias : _GEN_47; // @[MSHR.scala 419:25]
  wire  new_self_meta_dirty = req_channel[2] ? _GEN_31 : _GEN_48; // @[MSHR.scala 413:19]
  wire [1:0] new_self_meta_state = req_channel[2] ? _GEN_32 : _GEN_49; // @[MSHR.scala 413:19]
  wire [1:0] new_self_meta_clientStates_0 = req_channel[2] ? _GEN_33 : _GEN_50; // @[MSHR.scala 413:19]
  wire [1:0] new_self_meta_clientStates_1 = req_channel[2] ? _GEN_34 : _GEN_51; // @[MSHR.scala 413:19]
  wire  meta_self_prefetch = _GEN_19; // @[MSHR.scala 68:14]
  reg [5:0] sink; // @[MSHR.scala 437:17]
  reg  bad_grant; // @[MSHR.scala 439:26]
  wire [1:0] _new_self_dir_clientStates_0_T_2 = meta_self_hit & iam ? new_self_meta_clientStates_0 :
    meta_self_clientStates_0; // @[MSHR.scala 446:21]
  wire [1:0] _new_self_dir_clientStates_1_T_2 = meta_self_hit & _other_clients_hit_T_2 ? new_self_meta_clientStates_1 :
    meta_self_clientStates_1; // @[MSHR.scala 446:21]
  wire [28:0] debug_addr_hi = {req_tag,req_set}; // @[Cat.scala 31:58]
  wire  _change_self_meta_T_2 = io_nestedwb_set == req_set; // @[MSHR.scala 458:21]
  wire  _change_self_meta_T_3 = meta_valid & _new_self_meta_state_T_23 & _change_self_meta_T_2; // @[MSHR.scala 457:68]
  wire [20:0] meta_self_tag = _GEN_16; // @[MSHR.scala 68:14]
  wire  change_self_meta = _change_self_meta_T_3 & io_nestedwb_tag == meta_self_tag; // @[MSHR.scala 458:33]
  wire [28:0] _nested_client_match_T = {io_nestedwb_tag,io_nestedwb_set}; // @[Cat.scala 31:58]
  wire  nested_client_match = _nested_client_match_T[28:8] == _GEN_7 & _change_self_meta_T_2; // @[MSHR.scala 460:87]
  wire  change_clients_meta_0 = meta_valid & _a_probe_clients_T_2 & nested_client_match; // @[MSHR.scala 465:44]
  wire  change_clients_meta_1 = meta_valid & _a_probe_clients_T_12 & nested_client_match; // @[MSHR.scala 465:44]
  wire  _GEN_68 = io_nestedwb_bclr_dirty ? 1'h0 : _GEN_23; // @[MSHR.scala 468:35 469:27]
  wire  _GEN_69 = io_nestedwb_bset_dirty | _GEN_68; // @[MSHR.scala 471:35 472:27]
  wire  _GEN_70 = io_nestedwb_c_set_dirty | _GEN_69; // @[MSHR.scala 474:35 475:27]
  reg  nested_c_hit_reg; // @[MSHR.scala 487:33]
  wire  _T_43 = meta_valid & _prefetch_miss_need_probe_vec_T_5 & req_channel[0] & _change_self_meta_T_2; // @[MSHR.scala 489:51]
  wire  _T_44 = _T_43 & io_nestedwb_c_set_hit; // @[MSHR.scala 490:33]
  wire  nested_c_hit = _T_44 | nested_c_hit_reg; // @[MSHR.scala 491:5 492:18]
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
  reg  s_triggerprefetch; // @[MSHR.scala 523:55]
  reg  s_prefetchack; // @[MSHR.scala 524:51]
  reg  w_probeackfirst; // @[MSHR.scala 526:32]
  reg  w_probeack; // @[MSHR.scala 528:27]
  reg  w_grantfirst; // @[MSHR.scala 529:29]
  reg  w_grantlast; // @[MSHR.scala 530:28]
  reg  w_grant; // @[MSHR.scala 531:24]
  reg  w_releaseack; // @[MSHR.scala 532:29]
  reg  w_grantack; // @[MSHR.scala 533:27]
  reg  acquire_flag; // @[MSHR.scala 535:29]
  wire  _T_45 = ~s_acquire; // @[MSHR.scala 577:8]
  wire  _GEN_92 = ~s_acquire | acquire_flag; // @[MSHR.scala 577:20 535:29 577:35]
  wire  preferCache = req_preferCache | cache_alias; // @[MSHR.scala 681:37]
  wire  bypassGet = _transmit_from_other_client_T_1 & ~preferCache; // @[MSHR.scala 682:38]
  wire [1:0] _bypassPut_T_2 = {meta_clients_states_0_hit,meta_clients_states_1_hit}; // @[Cat.scala 31:58]
  wire  _bypassPut_T_3 = |_bypassPut_T_2; // @[MSHR.scala 683:81]
  wire  bypassPut = req_put & _prefetch_miss_need_probe_vec_T_5 & ~(|_bypassPut_T_2); // @[MSHR.scala 683:45]
  wire  acquirePermMiss = _req_acquire_T_1 & _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 696:52]
  wire  self_ecc_err = meta_reg_self_hit & meta_reg_self_error; // @[MSHR.scala 807:40]
  wire [1:0] _client_ecc_err_T = {meta_reg_clients_states_0_hit,meta_reg_clients_states_1_hit}; // @[Cat.scala 31:58]
  wire  client_ecc_err = |_client_ecc_err_T & meta_reg_clients_error; // @[MSHR.scala 808:70]
  wire [34:0] _io_ecc_bits_addr_T = {req_tag,req_set,req_off}; // @[Cat.scala 31:58]
  wire  meta_self_error = _GEN_15; // @[MSHR.scala 68:14]
  wire  _GEN_93 = req_channel[2] ? 1'h0 : 1'h1; // @[MSHR.scala 543:15 818:22 819:19]
  wire  _GEN_94 = req_channel[1] ? 1'h0 : 1'h1; // @[MSHR.scala 542:16 821:22 822:20]
  wire  _GEN_95 = req_acquire ? 1'h0 : 1'h1; // @[MSHR.scala 562:16 826:26 827:22]
  wire  _GEN_96 = req_channel[0] ? 1'h0 : _GEN_93; // @[MSHR.scala 824:23 825:19]
  wire  _GEN_97 = req_channel[0] ? _GEN_95 : 1'h1; // @[MSHR.scala 562:16 824:23]
  wire  _GEN_98 = meta_clients_states_0_hit ? 1'h0 : 1'h1; // @[MSHR.scala 540:13 583:24 584:19]
  wire  _GEN_99 = meta_clients_states_1_hit ? 1'h0 : _GEN_98; // @[MSHR.scala 583:24 584:19]
  wire  _GEN_100 = meta_self_hit ? 1'h0 : 1'h1; // @[MSHR.scala 545:17 591:25 592:19]
  wire  _GEN_101 = _req_needT_T_9 & meta_self_hit ? 1'h0 : 1'h1; // @[MSHR.scala 541:15 596:46 597:17]
  wire  _GEN_102 = client_shrink_perm ? 1'h0 : 1'h1; // @[MSHR.scala 547:20 606:30 607:22]
  wire  _T_59 = _prefetch_miss_need_probe_vec_T_5 & req_opcode[0]; // @[MSHR.scala 611:27]
  wire  _GEN_103 = _prefetch_miss_need_probe_vec_T_5 & req_opcode[0] ? 1'h0 : 1'h1; // @[MSHR.scala 546:17 611:45 612:21]
  wire  _GEN_104 = meta_self_hit | req_opcode[0] ? 1'h0 : 1'h1; // @[MSHR.scala 545:17 614:44 615:21]
  wire  _T_66 = _T_59 & _new_self_meta_state_T_23; // @[MSHR.scala 618:41]
  wire  _T_67 = _T_66 & replace_need_release; // @[MSHR.scala 619:39]
  wire  _GEN_105 = _T_67 ? 1'h0 : 1'h1; // @[MSHR.scala 541:15 620:9 621:19]
  wire  will_save_release = io_releaseThrough & io_dirResult_valid & req_channel[2] ? 1'h0 : 1'h1; // @[MSHR.scala 845:62 853:23]
  wire  _GEN_106 = will_save_release ? _GEN_103 : 1'h1; // @[MSHR.scala 546:17 609:29]
  wire  _GEN_107 = will_save_release ? _GEN_104 : 1'h1; // @[MSHR.scala 545:17 609:29]
  wire  _GEN_108 = will_save_release ? _GEN_105 : 1'h1; // @[MSHR.scala 541:15 609:29]
  wire  _GEN_109 = req_opcode[0] ? 1'h0 : 1'h1; // @[MSHR.scala 550:20 627:25 628:22]
  wire  _will_release_through_T = ~other_clients_hit; // @[MSHR.scala 848:29]
  wire  _will_release_through_T_1 = req_param <= 3'h2; // @[Bundles.scala 114:29]
  wire  will_release_through = io_releaseThrough & io_dirResult_valid & req_channel[2] & (~other_clients_hit &
    _will_release_through_T_1); // @[MSHR.scala 845:62 848:26]
  wire  _GEN_110 = will_release_through & req_opcode[0] ? 1'h0 : _GEN_108; // @[MSHR.scala 636:49 637:20]
  wire  _GEN_111 = req_fromCmoHelper ? _GEN_99 : 1'h1; // @[MSHR.scala 540:13 832:33]
  wire  _GEN_112 = req_fromCmoHelper ? _GEN_99 : _GEN_102; // @[MSHR.scala 832:33]
  wire  _GEN_113 = req_fromCmoHelper ? _GEN_100 : _GEN_107; // @[MSHR.scala 832:33]
  wire  _GEN_114 = req_fromCmoHelper ? _GEN_101 : _GEN_108; // @[MSHR.scala 832:33]
  wire  _GEN_115 = req_fromCmoHelper ? _GEN_101 : _GEN_110; // @[MSHR.scala 832:33]
  wire  _GEN_117 = req_fromCmoHelper | _GEN_106; // @[MSHR.scala 546:17 832:33]
  wire  _GEN_118 = req_fromCmoHelper | _GEN_109; // @[MSHR.scala 550:20 832:33]
  wire  _GEN_290 = req_channel[1] & clients_have_T; // @[MSHR.scala 871:21 872:29]
  wire  will_probeack_through = io_dirResult_valid & _GEN_290; // @[MSHR.scala 870:28]
  wire  _T_74 = ~req_fromProbeHelper; // @[MSHR.scala 648:36]
  wire  _GEN_119 = ~will_probeack_through & ~req_fromProbeHelper ? 1'h0 : 1'h1; // @[MSHR.scala 542:16 648:58 649:18]
  wire  _T_80 = _client_shrink_perm_T_1 | meta_self_state[1] & _req_needT_T_3; // @[MSHR.scala 212:18]
  wire  _GEN_120 = _T_80 ? 1'h0 : 1'h1; // @[MSHR.scala 545:17 652:58 653:21]
  wire  _GEN_121 = meta_self_hit ? _GEN_120 : 1'h1; // @[MSHR.scala 545:17 651:25]
  wire  _GEN_122 = _bypassPut_T_3 ? 1'h0 : 1'h1; // @[MSHR.scala 540:13 671:48 672:17]
  wire  _GEN_123 = ~(meta_self_hit & meta_self_state[0] & _req_needT_T_3) ? _GEN_122 : 1'h1; // @[MSHR.scala 540:13 662:71]
  wire  _T_126 = prefetch_need_data | transmit_from_other_client; // @[MSHR.scala 706:32]
  wire  _T_127 = _T_126 | cache_alias; // @[MSHR.scala 707:40]
  wire  _T_128 = preferCache & (_req_acquire_T | _transmit_from_other_client_T_1) | _T_127; // @[MSHR.scala 704:78]
  wire  _T_129 = _prefetch_miss_need_probe_vec_T_5 & _new_self_meta_state_T_23 & replace_need_release & _T_128; // @[MSHR.scala 702:80]
  wire  _GEN_124 = _T_129 ? 1'h0 : 1'h1; // @[MSHR.scala 541:15 711:6 712:17]
  wire  _T_133 = req_needT ? ~highest_perm_except_me[1] : highest_perm_except_me == 2'h0; // @[MSHR.scala 721:12]
  wire  _T_137 = req_needT ? _prefetch_miss_need_acquire_T_3 : _prefetch_miss_need_acquire_T_1; // @[MSHR.scala 722:12]
  wire  _T_138 = req_acquire ? _T_133 : _T_137; // @[MSHR.scala 719:10]
  wire  _T_140 = ~req_put; // @[MSHR.scala 729:27]
  wire  _T_141 = ~bypassGet & ~req_put; // @[MSHR.scala 729:24]
  wire  _GEN_126 = ~bypassGet & ~req_put ? 1'h0 : 1'h1; // @[MSHR.scala 544:16 729:37 730:20]
  wire  _T_142 = ~acquirePermMiss; // @[MSHR.scala 734:12]
  wire [2:0] _GEN_424 = {{2'd0}, req_opcode == 3'h0}; // @[MSHR.scala 734:63]
  wire  _GEN_127 = ~acquirePermMiss & (meta_self_hit & _GEN_424 == 3'h4 | preferCache) ? 1'h0 : 1'h1; // @[MSHR.scala 545:17 734:89 735:21]
  wire  _GEN_128 = _T_138 ? 1'h0 : 1'h1; // @[MSHR.scala 539:15 724:7 725:17]
  wire  _GEN_129 = _T_138 ? _GEN_126 : 1'h1; // @[MSHR.scala 544:16 724:7]
  wire  _GEN_130 = _T_138 ? _GEN_127 : 1'h1; // @[MSHR.scala 545:17 724:7]
  wire  _T_158 = _req_needT_T_2 & prefetch_miss_need_probe; // @[MSHR.scala 747:37]
  wire  _T_159 = req_acquire & (req_needT | _prefetch_miss_need_probe_vec_T_5 | meta_clients_states_0_state[1]) | _T_158
    ; // @[MSHR.scala 746:81]
  wire  _T_160 = meta_clients_states_0_hit & _T_159; // @[MSHR.scala 745:24]
  wire  _GEN_131 = _prefetch_miss_need_probe_vec_T_5 ? 1'h0 : _GEN_130; // @[MSHR.scala 691:25 692:19]
  wire  _GEN_132 = _prefetch_miss_need_probe_vec_T_5 ? 1'h0 : 1'h1; // @[MSHR.scala 546:17 691:25 693:19]
  wire  _GEN_134 = _T_160 ? 1'h0 : 1'h1; // @[MSHR.scala 540:13 687:13 749:15]
  wire  _GEN_135 = _T_160 ? _GEN_131 : _GEN_130; // @[MSHR.scala 749:15]
  wire  _GEN_136 = _T_160 ? _GEN_132 : 1'h1; // @[MSHR.scala 749:15 546:17]
  wire  _GEN_140 = cache_alias ? 1'h0 : 1'h1; // @[MSHR.scala 540:13 687:13 754:31]
  wire  _GEN_141 = cache_alias ? _GEN_131 : _GEN_130; // @[MSHR.scala 754:31]
  wire  _GEN_142 = cache_alias ? _GEN_132 : 1'h1; // @[MSHR.scala 546:17 754:31]
  wire  _GEN_143 = iam ? _T_160 : cache_alias; // @[MSHR.scala 743:29]
  wire  _GEN_144 = iam ? _GEN_134 : _GEN_140; // @[MSHR.scala 743:29]
  wire  _GEN_145 = iam ? _GEN_135 : _GEN_141; // @[MSHR.scala 743:29]
  wire  _GEN_146 = iam ? _GEN_136 : _GEN_142; // @[MSHR.scala 743:29]
  wire  _T_167 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put); // @[MSHR.scala 761:26]
  wire  _GEN_149 = meta_self_hit ? 1'h0 : _GEN_131; // @[MSHR.scala 763:33 764:27]
  wire  _GEN_151 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? 1'h0 : 1'h1; // @[MSHR.scala 540:13 687:13 761:77]
  wire  _GEN_152 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? _GEN_149 : _GEN_130; // @[MSHR.scala 761:77]
  wire  _GEN_153 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? _GEN_132 : 1'h1; // @[MSHR.scala 546:17 761:77]
  wire  _GEN_154 = req_opcode != 3'h4 & _T_140 ? _GEN_143 : _T_167; // @[MSHR.scala 741:47]
  wire  _GEN_155 = req_opcode != 3'h4 & _T_140 ? _GEN_144 : _GEN_151; // @[MSHR.scala 741:47]
  wire  _GEN_156 = req_opcode != 3'h4 & _T_140 ? _GEN_145 : _GEN_152; // @[MSHR.scala 741:47]
  wire  _GEN_157 = req_opcode != 3'h4 & _T_140 ? _GEN_146 : _GEN_153; // @[MSHR.scala 741:47]
  wire  _T_180 = req_acquire & (req_needT | _prefetch_miss_need_probe_vec_T_5 | meta_clients_states_1_state[1]) | _T_158
    ; // @[MSHR.scala 746:81]
  wire  _T_181 = meta_clients_states_1_hit & _T_180; // @[MSHR.scala 745:24]
  wire  _GEN_158 = _prefetch_miss_need_probe_vec_T_5 ? 1'h0 : _GEN_156; // @[MSHR.scala 691:25 692:19]
  wire  _GEN_159 = _prefetch_miss_need_probe_vec_T_5 ? 1'h0 : _GEN_157; // @[MSHR.scala 691:25 693:19]
  wire  _GEN_160 = _T_181 | _GEN_154; // @[MSHR.scala 749:15 686:16]
  wire  _GEN_161 = _T_181 ? 1'h0 : _GEN_155; // @[MSHR.scala 687:13 749:15]
  wire  _GEN_162 = _T_181 ? _GEN_158 : _GEN_156; // @[MSHR.scala 749:15]
  wire  _GEN_163 = _T_181 ? _GEN_159 : _GEN_157; // @[MSHR.scala 749:15]
  wire  _GEN_166 = cache_alias | _GEN_154; // @[MSHR.scala 686:16 754:31]
  wire  _GEN_167 = cache_alias ? 1'h0 : _GEN_155; // @[MSHR.scala 687:13 754:31]
  wire  _GEN_168 = cache_alias ? _GEN_158 : _GEN_156; // @[MSHR.scala 754:31]
  wire  _GEN_169 = cache_alias ? _GEN_159 : _GEN_157; // @[MSHR.scala 754:31]
  wire  _GEN_170 = _other_clients_hit_T_2 ? _GEN_160 : _GEN_166; // @[MSHR.scala 743:29]
  wire  _GEN_171 = _other_clients_hit_T_2 ? _GEN_161 : _GEN_167; // @[MSHR.scala 743:29]
  wire  _GEN_172 = _other_clients_hit_T_2 ? _GEN_162 : _GEN_168; // @[MSHR.scala 743:29]
  wire  _GEN_173 = _other_clients_hit_T_2 ? _GEN_163 : _GEN_169; // @[MSHR.scala 743:29]
  wire  _GEN_176 = meta_self_hit ? 1'h0 : _GEN_158; // @[MSHR.scala 763:33 764:27]
  wire  _GEN_177 = meta_clients_states_1_hit & (meta_clients_states_1_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) | _GEN_154; // @[MSHR.scala 686:16 761:77]
  wire  _GEN_178 = meta_clients_states_1_hit & (meta_clients_states_1_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? 1'h0 : _GEN_155; // @[MSHR.scala 687:13 761:77]
  wire  _GEN_179 = meta_clients_states_1_hit & (meta_clients_states_1_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? _GEN_176 : _GEN_156; // @[MSHR.scala 761:77]
  wire  _GEN_180 = meta_clients_states_1_hit & (meta_clients_states_1_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? _GEN_159 : _GEN_157; // @[MSHR.scala 761:77]
  wire  _GEN_181 = req_opcode != 3'h4 & _T_140 ? _GEN_170 : _GEN_177; // @[MSHR.scala 741:47]
  wire  _GEN_182 = req_opcode != 3'h4 & _T_140 ? _GEN_171 : _GEN_178; // @[MSHR.scala 741:47]
  wire  _GEN_183 = req_opcode != 3'h4 & _T_140 ? _GEN_172 : _GEN_179; // @[MSHR.scala 741:47]
  wire  _GEN_184 = req_opcode != 3'h4 & _T_140 ? _GEN_173 : _GEN_180; // @[MSHR.scala 741:47]
  wire  _GEN_185 = _T_142 & (meta_self_hit | preferCache) ? 1'h0 : _GEN_183; // @[MSHR.scala 773:64 774:21]
  wire  _GEN_186 = _prefetch_miss_need_probe_vec_T_14 ? 1'h0 : 1'h1; // @[MSHR.scala 548:20 777:36 778:24]
  wire  _GEN_187 = req_acquire ? _GEN_185 : _GEN_183; // @[MSHR.scala 771:23]
  wire  _GEN_188 = req_acquire ? 1'h0 : _GEN_182; // @[MSHR.scala 771:23 776:22]
  wire  _GEN_189 = req_acquire ? _GEN_186 : 1'h1; // @[MSHR.scala 548:20 771:23]
  wire  _T_199 = _transmit_from_other_client_T_1 | _req_acquire_T | prefetch_need_data; // @[MSHR.scala 784:60]
  wire  _T_200 = _prefetch_miss_need_probe_vec_T_5 & preferCache & _T_199; // @[MSHR.scala 783:37]
  wire  _GEN_190 = _T_200 ? 1'h0 : _GEN_184; // @[MSHR.scala 785:7 786:19]
  wire  _GEN_191 = bypassPut ? 1'h0 : 1'h1; // @[MSHR.scala 549:19 789:21 790:21]
  wire  _GEN_192 = req_put & meta_self_hit & ~meta_self_dirty ? 1'h0 : _GEN_187; // @[MSHR.scala 793:56 794:19]
  wire  _GEN_193 = req_opcode != 3'h5 & req_needHint & (_prefetch_miss_need_probe_vec_T_5 | meta_self_prefetch) ? 1'h0
     : 1'h1; // @[MSHR.scala 797:114 552:33 798:33]
  wire  _GEN_194 = _req_needT_T_2 ? 1'h0 : 1'h1; // @[MSHR.scala 553:29 800:33 801:29]
  wire  _GEN_195 = req_channel[1] ? _GEN_119 : 1'h1; // @[MSHR.scala 542:16 837:29]
  wire  _GEN_196 = req_channel[1] ? _GEN_121 : _GEN_192; // @[MSHR.scala 837:29]
  wire  _GEN_197 = req_channel[1] ? _GEN_123 : _GEN_182; // @[MSHR.scala 837:29]
  wire  _GEN_198 = req_channel[1] ? _GEN_123 : _GEN_188; // @[MSHR.scala 837:29]
  wire  _GEN_199 = req_channel[1] | _req_needT_T_2; // @[MSHR.scala 543:15 701:15 837:29]
  wire  _GEN_200 = req_channel[1] | _GEN_124; // @[MSHR.scala 541:15 837:29]
  wire  _GEN_201 = req_channel[1] ? 1'h0 : _T_129; // @[MSHR.scala 574:18 837:29]
  wire  _GEN_202 = req_channel[1] | _GEN_128; // @[MSHR.scala 539:15 837:29]
  wire  _GEN_203 = req_channel[1] | _GEN_129; // @[MSHR.scala 544:16 837:29]
  wire  _GEN_204 = req_channel[1] ? 1'h0 : _GEN_181; // @[MSHR.scala 575:16 837:29]
  wire  _GEN_205 = req_channel[1] | _GEN_190; // @[MSHR.scala 546:17 837:29]
  wire  _GEN_206 = req_channel[1] | _GEN_95; // @[MSHR.scala 562:16 837:29]
  wire  _GEN_207 = req_channel[1] | _GEN_189; // @[MSHR.scala 548:20 837:29]
  wire  _GEN_208 = req_channel[1] | _GEN_191; // @[MSHR.scala 549:19 837:29]
  wire  _GEN_209 = req_channel[1] | _GEN_193; // @[MSHR.scala 837:29 552:33]
  wire  _GEN_210 = req_channel[1] | _GEN_194; // @[MSHR.scala 553:29 837:29]
  wire  _GEN_211 = req_channel[2] ? _GEN_111 : _GEN_197; // @[MSHR.scala 831:23]
  wire  _GEN_212 = req_channel[2] ? _GEN_112 : _GEN_198; // @[MSHR.scala 831:23]
  wire  _GEN_213 = req_channel[2] ? _GEN_113 : _GEN_196; // @[MSHR.scala 831:23]
  wire  _GEN_214 = req_channel[2] ? _GEN_114 : _GEN_200; // @[MSHR.scala 831:23]
  wire  _GEN_215 = req_channel[2] ? _GEN_115 : _GEN_200; // @[MSHR.scala 831:23]
  wire  _GEN_216 = req_channel[2] ? req_fromCmoHelper : _GEN_199; // @[MSHR.scala 831:23]
  wire  _GEN_217 = req_channel[2] ? _GEN_117 : _GEN_205; // @[MSHR.scala 831:23]
  wire  _GEN_218 = req_channel[2] ? _GEN_118 : 1'h1; // @[MSHR.scala 550:20 831:23]
  wire  _GEN_219 = req_channel[2] | _GEN_195; // @[MSHR.scala 542:16 831:23]
  wire  _GEN_221 = req_channel[2] | _GEN_202; // @[MSHR.scala 539:15 831:23]
  wire  _GEN_222 = req_channel[2] | _GEN_203; // @[MSHR.scala 544:16 831:23]
  wire  _GEN_224 = req_channel[2] | _GEN_206; // @[MSHR.scala 562:16 831:23]
  wire  _GEN_225 = req_channel[2] | _GEN_207; // @[MSHR.scala 548:20 831:23]
  wire  _GEN_226 = req_channel[2] | _GEN_208; // @[MSHR.scala 549:19 831:23]
  wire  _GEN_227 = req_channel[2] | _GEN_209; // @[MSHR.scala 831:23 552:33]
  wire  _GEN_228 = req_channel[2] | _GEN_210; // @[MSHR.scala 831:23 553:29]
  wire  _GEN_229 = meta_self_error | _GEN_5 ? _GEN_96 : _GEN_216; // @[MSHR.scala 817:48]
  wire  _GEN_230 = meta_self_error | _GEN_5 ? _GEN_94 : _GEN_219; // @[MSHR.scala 817:48]
  wire  _GEN_231 = meta_self_error | _GEN_5 ? _GEN_97 : _GEN_224; // @[MSHR.scala 817:48]
  wire  _GEN_232 = meta_self_error | _GEN_5 | _GEN_211; // @[MSHR.scala 540:13 817:48]
  wire  _GEN_233 = meta_self_error | _GEN_5 | _GEN_212; // @[MSHR.scala 547:20 817:48]
  wire  _GEN_234 = meta_self_error | _GEN_5 | _GEN_213; // @[MSHR.scala 545:17 817:48]
  wire  _GEN_235 = meta_self_error | _GEN_5 | _GEN_214; // @[MSHR.scala 541:15 817:48]
  wire  _GEN_236 = meta_self_error | _GEN_5 | _GEN_215; // @[MSHR.scala 561:18 817:48]
  wire  _GEN_237 = meta_self_error | _GEN_5 | _GEN_217; // @[MSHR.scala 546:17 817:48]
  wire  _GEN_238 = meta_self_error | _GEN_5 | _GEN_218; // @[MSHR.scala 550:20 817:48]
  wire  _GEN_240 = meta_self_error | _GEN_5 | _GEN_221; // @[MSHR.scala 539:15 817:48]
  wire  _GEN_241 = meta_self_error | _GEN_5 | _GEN_222; // @[MSHR.scala 544:16 817:48]
  wire  _GEN_243 = meta_self_error | _GEN_5 | _GEN_225; // @[MSHR.scala 548:20 817:48]
  wire  _GEN_244 = meta_self_error | _GEN_5 | _GEN_226; // @[MSHR.scala 549:19 817:48]
  wire  _GEN_245 = meta_self_error | _GEN_5 | _GEN_227; // @[MSHR.scala 552:33 817:48]
  wire  _GEN_246 = meta_self_error | _GEN_5 | _GEN_228; // @[MSHR.scala 553:29 817:48]
  wire  _GEN_247 = io_dirResult_valid ? _GEN_240 : s_acquire; // @[MSHR.scala 510:26 813:28]
  wire  _GEN_248 = io_dirResult_valid ? _GEN_232 : s_probe; // @[MSHR.scala 511:24 813:28]
  wire  _GEN_249 = io_dirResult_valid ? _GEN_235 : s_release; // @[MSHR.scala 512:26 813:28]
  wire  _GEN_250 = io_dirResult_valid ? _GEN_230 : s_probeack; // @[MSHR.scala 513:27 813:28]
  wire  _GEN_251 = io_dirResult_valid ? _GEN_229 : s_execute; // @[MSHR.scala 514:26 813:28]
  wire  _GEN_252 = io_dirResult_valid ? _GEN_241 : s_grantack; // @[MSHR.scala 515:27 813:28]
  wire  _GEN_253 = io_dirResult_valid ? _GEN_234 : s_wbselfdir; // @[MSHR.scala 516:28 813:28]
  wire  _GEN_254 = io_dirResult_valid ? _GEN_237 : s_wbselftag; // @[MSHR.scala 517:28 813:28]
  wire  _GEN_255 = io_dirResult_valid ? _GEN_233 : s_wbclientsdir; // @[MSHR.scala 813:28 518:31]
  wire  _GEN_256 = io_dirResult_valid ? _GEN_243 : s_wbclientstag; // @[MSHR.scala 813:28 519:31]
  wire  _GEN_257 = io_dirResult_valid ? _GEN_244 : s_transferput; // @[MSHR.scala 813:28 520:30]
  wire  _GEN_258 = io_dirResult_valid ? _GEN_238 : s_writerelease; // @[MSHR.scala 813:28 521:31]
  wire  _GEN_259 = io_dirResult_valid | s_writeprobe; // @[MSHR.scala 551:18 813:28 522:29]
  wire  _GEN_260 = io_dirResult_valid ? _GEN_245 : s_triggerprefetch; // @[MSHR.scala 813:28 523:55]
  wire  _GEN_261 = io_dirResult_valid ? _GEN_246 : s_prefetchack; // @[MSHR.scala 813:28 524:51]
  wire  _GEN_262 = io_dirResult_valid ? _GEN_232 : w_probeackfirst; // @[MSHR.scala 813:28 526:32]
  wire  _GEN_263 = io_dirResult_valid ? _GEN_232 : w_probeacklast; // @[MSHR.scala 813:28 527:31]
  wire  _GEN_264 = io_dirResult_valid ? _GEN_232 : w_probeack; // @[MSHR.scala 528:27 813:28]
  wire  _GEN_265 = io_dirResult_valid ? _GEN_240 : w_grantfirst; // @[MSHR.scala 813:28 529:29]
  wire  _GEN_266 = io_dirResult_valid ? _GEN_240 : w_grantlast; // @[MSHR.scala 530:28 813:28]
  wire  _GEN_267 = io_dirResult_valid ? _GEN_240 : w_grant; // @[MSHR.scala 531:24 813:28]
  wire  _GEN_268 = io_dirResult_valid ? _GEN_236 : w_releaseack; // @[MSHR.scala 813:28 532:29]
  wire  _GEN_269 = io_dirResult_valid ? _GEN_231 : w_grantack; // @[MSHR.scala 533:27 813:28]
  wire  _GEN_270 = io_dirResult_valid | promoteT_safe; // @[MSHR.scala 564:19 813:28 80:30]
  wire  _GEN_271 = io_dirResult_valid ? 1'h0 : gotT; // @[MSHR.scala 565:10 81:21 813:28]
  wire  _GEN_274 = io_dirResult_valid ? 1'h0 : bad_grant; // @[MSHR.scala 568:15 439:26 813:28]
  wire  _GEN_276 = io_dirResult_valid ? 1'h0 : inv_self_dir; // @[MSHR.scala 570:18 813:28 124:29]
  wire  _GEN_278 = io_dirResult_valid ? 1'h0 : gotDirty; // @[MSHR.scala 572:14 813:28 82:25]
  wire  will_drop_release = io_releaseThrough & io_dirResult_valid & req_channel[2] & ~will_release_through; // @[MSHR.scala 845:62 850:23]
  wire  _will_save_probeack_T_2 = will_probeack_through & ~io_probeAckDataThrough & meta_self_hit; // @[MSHR.scala 874:78]
  wire  _GEN_287 = req_fromProbeHelper ? will_probeack_through & (_prefetch_miss_need_probe_vec_T_5 |
    io_probeAckDataThrough) : will_probeack_through; // @[MSHR.scala 875:33 876:29 880:29]
  wire  _GEN_291 = req_channel[1] & ~clients_have_T; // @[MSHR.scala 871:21 873:26]
  wire  will_drop_probeack = io_dirResult_valid & _GEN_291; // @[MSHR.scala 870:28]
  wire  _GEN_292 = req_channel[1] ? will_probeack_through & ~io_probeAckDataThrough & meta_self_hit & _req_needT_T_3 : 1'h1
    ; // @[MSHR.scala 871:21 874:26]
  wire  will_save_probeack = io_dirResult_valid ? _GEN_292 : 1'h1; // @[MSHR.scala 870:28]
  wire  _GEN_289 = req_fromProbeHelper ? _will_save_probeack_T_2 : will_save_probeack; // @[MSHR.scala 875:33 878:26 882:26]
  wire  _probeAckDataSave_T_4 = ~probeAckDataDrop; // @[MSHR.scala 885:51]
  wire  _GEN_293 = req_channel[1] ? _GEN_287 : probeAckDataThrough; // @[MSHR.scala 871:21 181:36]
  wire  _GEN_294 = req_channel[1] ? will_drop_probeack : probeAckDataDrop; // @[MSHR.scala 871:21 182:33]
  wire  _GEN_295 = req_channel[1] ? _GEN_289 : _new_self_meta_state_T_16 & ~probeAckDataDrop; // @[MSHR.scala 871:21 885:24]
  wire  no_wait = w_probeacklast & w_grantlast & w_releaseack & w_grantack; // @[MSHR.scala 895:63]
  wire  _clients_meta_busy_T_2 = ~meta_clients_states_0_hit & _a_probe_clients_T_2; // @[MSHR.scala 897:60]
  wire  _clients_meta_busy_T_5 = ~meta_clients_states_1_hit & _a_probe_clients_T_12; // @[MSHR.scala 897:60]
  wire [1:0] _clients_meta_busy_T_6 = {_clients_meta_busy_T_2,_clients_meta_busy_T_5}; // @[Cat.scala 31:58]
  wire  clients_meta_busy = |_clients_meta_busy_T_6; // @[MSHR.scala 897:88]
  wire  _client_dir_conflict_T_3 = req_channel[0] & req_acquire & clients_meta_busy; // @[MSHR.scala 899:30]
  reg  client_dir_conflict; // @[Reg.scala 16:16]
  reg  probe_helper_finish; // @[MSHR.scala 902:36]
  wire  client_set_match = req_set == io_bstatus_set; // @[MSHR.scala 903:56]
  wire  _GEN_306 = req_valid & io_bstatus_probeHelperFinish & client_set_match | probe_helper_finish; // @[MSHR.scala 904:71 905:25 902:36]
  wire  can_start = client_dir_conflict ? probe_helper_finish : 1'h1; // @[MSHR.scala 914:22]
  wire  _io_tasks_source_a_valid_T_1 = ~s_transferput; // @[MSHR.scala 915:58]
  wire  _io_tasks_sink_c_valid_T_4 = ~s_writeprobe; // @[MSHR.scala 926:95]
  wire  acquire_perm_NtoT = _req_acquire_T_1 & _req_needT_T_3; // @[MSHR.scala 957:54]
  wire [2:0] _io_tasks_source_a_bits_opcode_T_3 = acquire_perm_NtoT ? 3'h7 : 3'h6; // @[MSHR.scala 960:10]
  wire [2:0] _io_tasks_source_a_bits_opcode_T_4 = meta_self_hit ? 3'h7 : _io_tasks_source_a_bits_opcode_T_3; // @[MSHR.scala 959:8]
  wire [1:0] _io_tasks_source_a_bits_param_T_2 = meta_self_hit ? 2'h2 : 2'h1; // @[MSHR.scala 968:10]
  wire [1:0] _io_tasks_source_a_bits_param_T_3 = req_needT ? _io_tasks_source_a_bits_param_T_2 : 2'h0; // @[MSHR.scala 967:8]
  wire [1:0] _io_tasks_source_bparam_T_4 = _client_shrink_perm_T_7 ? 2'h1 : 2'h2; // @[MSHR.scala 997:10]
  wire [1:0] _io_tasks_source_bparam_T_6 = _req_needT_T_3 ? 2'h1 : 2'h2; // @[MSHR.scala 999:12]
  wire  _io_tasks_source_bparam_T_7 = req_needT | cache_alias; // @[MSHR.scala 1001:21]
  wire [1:0] _io_tasks_source_bparam_T_8 = _io_tasks_source_bparam_T_7 ? 2'h2 : 2'h1; // @[MSHR.scala 1000:12]
  wire [1:0] _io_tasks_source_bparam_T_9 = req_fromCmoHelper ? _io_tasks_source_bparam_T_6 :
    _io_tasks_source_bparam_T_8; // @[MSHR.scala 998:10]
  wire [1:0] _io_tasks_source_bparam_T_10 = _req_needT_T_2 ? _io_tasks_source_bparam_T_4 :
    _io_tasks_source_bparam_T_9; // @[MSHR.scala 995:8]
  wire  x_probe_clients_0 = _req_needT_T_3 ? _clients_have_T_T_1 : meta_clients_states_0_hit; // @[MSHR.scala 1010:18]
  wire  x_probe_clients_1 = _req_needT_T_3 ? _clients_have_T_T_3 : meta_clients_states_1_hit; // @[MSHR.scala 1010:18]
  wire  _probe_clients_T_3 = req_channel[0] & _req_needT_T_2; // @[MSHR.scala 1014:17]
  wire  _probe_clients_T_6_0 = req_fromCmoHelper ? x_probe_clients_0 : meta_clients_states_0_hit; // @[MSHR.scala 1019:12]
  wire  _probe_clients_T_6_1 = req_fromCmoHelper ? x_probe_clients_1 : meta_clients_states_1_hit; // @[MSHR.scala 1019:12]
  wire  _probe_clients_T_7_0 = req_channel[0] ? a_probe_clients_0 : _probe_clients_T_6_0; // @[MSHR.scala 1016:10]
  wire  _probe_clients_T_7_1 = req_channel[0] ? a_probe_clients_1 : _probe_clients_T_6_1; // @[MSHR.scala 1016:10]
  wire  _probe_clients_T_8_0 = _probe_clients_T_3 ? prefetch_miss_need_probe_vec_0 : _probe_clients_T_7_0; // @[MSHR.scala 1013:8]
  wire  _probe_clients_T_8_1 = _probe_clients_T_3 ? prefetch_miss_need_probe_vec_1 : _probe_clients_T_7_1; // @[MSHR.scala 1013:8]
  wire [1:0] _probe_clients_T_9 = {_probe_clients_T_8_1,_probe_clients_T_8_0}; // @[MSHR.scala 1024:7]
  reg [1:0] probe_clients; // @[Reg.scala 16:16]
  wire [1:0] _io_tasks_source_c_bits_opcode_T_2 = req_fromProbeHelper ? 2'h3 : 2'h2; // @[MSHR.scala 1035:10]
  wire  _io_tasks_source_c_bits_opcode_T_4 = probe_dirty | _new_self_meta_dirty_T; // @[MSHR.scala 1036:20]
  wire  _io_tasks_source_c_bits_opcode_T_5 = probe_dirty | _new_self_meta_dirty_T | req_needProbeAckData; // @[MSHR.scala 1036:56]
  wire  _io_tasks_source_c_bits_opcode_T_6 = highest_perm != 2'h0; // @[MSHR.scala 1037:66]
  wire  _io_tasks_source_c_bits_opcode_T_7 = _io_tasks_source_c_bits_opcode_T_5 & highest_perm != 2'h0; // @[MSHR.scala 1037:50]
  wire [2:0] _io_tasks_source_c_bits_opcode_T_8 = {_io_tasks_source_c_bits_opcode_T_2,_io_tasks_source_c_bits_opcode_T_7
    }; // @[Cat.scala 31:58]
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
  wire [2:0] _GEN_310 = 3'h2 == req_opcode ? 3'h1 : 3'h0; // @[MSHR.scala 1081:{8,8}]
  wire [2:0] _GEN_311 = 3'h3 == req_opcode ? 3'h1 : _GEN_310; // @[MSHR.scala 1081:{8,8}]
  wire [2:0] _GEN_312 = 3'h4 == req_opcode ? 3'h1 : _GEN_311; // @[MSHR.scala 1081:{8,8}]
  wire [2:0] _GEN_313 = 3'h5 == req_opcode ? 3'h2 : _GEN_312; // @[MSHR.scala 1081:{8,8}]
  wire [2:0] _GEN_314 = 3'h6 == req_opcode ? 3'h5 : _GEN_313; // @[MSHR.scala 1081:{8,8}]
  wire [2:0] _GEN_315 = 3'h7 == req_opcode ? 3'h4 : _GEN_314; // @[MSHR.scala 1081:{8,8}]
  wire  _io_tasks_source_d_bits_param_T = ~req_acquire; // @[MSHR.scala 1087:7]
  wire [1:0] _io_tasks_source_d_bits_param_T_1 = req_promoteT ? 2'h0 : 2'h1; // @[MSHR.scala 1089:54]
  wire [2:0] _io_tasks_source_d_bits_param_T_3 = 3'h0 == req_param ? {{1'd0}, _io_tasks_source_d_bits_param_T_1} :
    req_param; // @[Mux.scala 81:58]
  wire [2:0] _io_tasks_source_d_bits_param_T_5 = 3'h2 == req_param ? 3'h0 : _io_tasks_source_d_bits_param_T_3; // @[Mux.scala 81:58]
  wire [2:0] _io_tasks_source_d_bits_param_T_7 = 3'h1 == req_param ? 3'h0 : _io_tasks_source_d_bits_param_T_5; // @[Mux.scala 81:58]
  wire  _io_tasks_source_d_bits_dirty_T_4 = _client_shrink_perm_T_7 & ~req_promoteT ? 1'h0 : _new_self_meta_dirty_T_10; // @[MSHR.scala 1099:10]
  wire  _io_tasks_source_d_bits_dirty_T_6 = meta_self_hit ? _io_tasks_source_d_bits_dirty_T_4 :
    _new_self_meta_dirty_T_12; // @[MSHR.scala 1097:8]
  wire  _io_tasks_sink_c_bits_bufIdx_T = io_resps_sink_c_valid & io_resps_sink_c_bits_hasData; // @[MSHR.scala 1125:66]
  reg [2:0] io_tasks_sink_c_bits_bufIdx_r; // @[Reg.scala 16:16]
  wire [2:0] _io_tasks_sink_c_bits_opcode_T_1 = req_fromProbeHelper | req_fromCmoHelper ? 3'h7 : 3'h5; // @[MSHR.scala 1129:8]
  wire  _io_tasks_sink_c_bits_dirty_T_1 = req_dirty | _new_self_meta_dirty_T; // @[MSHR.scala 1147:15]
  wire  _T_247 = io_tasks_source_a_ready & io_tasks_source_a_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_317 = _T_247 | _GEN_247; // @[MSHR.scala 1183:34 1184:15]
  wire  _GEN_318 = _T_247 | _GEN_257; // @[MSHR.scala 1183:34 1185:19]
  wire  _T_248 = io_tasks_source_bready & io_tasks_source_bvalid; // @[Decoupled.scala 50:35]
  wire  _GEN_319 = _T_248 | _GEN_248; // @[MSHR.scala 1187:34 1188:13]
  wire  _T_253 = io_tasks_source_c_ready & io_tasks_source_c_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_320 = _T_253 | _GEN_249; // @[MSHR.scala 1191:34 1192:15]
  wire  _GEN_321 = _T_253 | _GEN_250; // @[MSHR.scala 1191:34 1193:16]
  wire  _T_254 = io_tasks_source_d_ready & io_tasks_source_d_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_322 = _T_254 | _GEN_251; // @[MSHR.scala 1195:34 1196:15]
  wire  _T_255 = io_tasks_source_e_ready & io_tasks_source_e_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_323 = _T_255 | _GEN_252; // @[MSHR.scala 1198:34 1199:16]
  wire  _T_256 = io_tasks_dir_write_ready & io_tasks_dir_write_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_324 = _T_256 | _GEN_253; // @[MSHR.scala 1201:35 1202:17]
  wire  _T_257 = io_tasks_tag_write_ready & io_tasks_tag_write_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_325 = _T_257 | _GEN_254; // @[MSHR.scala 1204:35 1205:17]
  wire  _T_258 = io_tasks_client_dir_write_ready & io_tasks_client_dir_write_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_326 = _T_258 | _GEN_255; // @[MSHR.scala 1207:41 1208:20]
  wire  _T_259 = io_tasks_client_tag_write_ready & io_tasks_client_tag_write_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_327 = _T_259 | _GEN_256; // @[MSHR.scala 1210:41 1211:20]
  wire  _T_260 = io_tasks_sink_c_ready & io_tasks_sink_c_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_328 = _io_tasks_sink_c_valid_T_4 | _GEN_259; // @[MSHR.scala 1214:25 1215:20]
  wire  _GEN_329 = _io_tasks_sink_c_valid_T_4 ? _GEN_258 : 1'h1; // @[MSHR.scala 1214:25 1217:22]
  wire  _GEN_330 = _T_260 ? _GEN_328 : _GEN_259; // @[MSHR.scala 1213:32]
  wire  _GEN_331 = _T_260 ? _GEN_329 : _GEN_258; // @[MSHR.scala 1213:32]
  wire  _T_262 = io_tasks_prefetch_train_ready & io_tasks_prefetch_train_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_332 = _T_262 | _GEN_260; // @[MSHR.scala 1221:46 1222:29]
  wire  _T_263 = io_tasks_prefetch_resp_ready & io_tasks_prefetch_resp_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_333 = _T_263 | _GEN_261; // @[MSHR.scala 1224:45 1225:25]
  wire [1:0] _probeack_last_T = probes_done | _client_T_12; // @[MSHR.scala 1231:36]
  wire  probeack_last = _probeack_last_T == probe_clients; // @[MSHR.scala 1231:52]
  wire  _T_271 = req_channel[1] & req_fromProbeHelper; // @[MSHR.scala 1245:22]
  wire  _GEN_342 = req_channel[1] & req_fromProbeHelper & probeAckDataThrough | req_fromCmoHelper & probeAckDataThrough
     ? 1'h0 : _GEN_268; // @[MSHR.scala 1245:112 1246:22]
  wire  _GEN_343 = req_fromProbeHelper ? 1'h0 : _GEN_268; // @[MSHR.scala 1254:34 1255:24]
  wire  _GEN_344 = req_channel[1] & (probeAckDataThrough & io_resps_sink_c_bits_param != 3'h5 | _T_74) ? 1'h0 : _GEN_321
    ; // @[MSHR.scala 1249:112 1253:20]
  wire  _GEN_345 = req_channel[1] & (probeAckDataThrough & io_resps_sink_c_bits_param != 3'h5 | _T_74) ? _GEN_343 :
    _GEN_268; // @[MSHR.scala 1249:112]
  wire  _GEN_346 = io_resps_sink_c_bits_hasData ? 1'h0 : _GEN_330; // @[MSHR.scala 1242:39 1244:20]
  wire  _GEN_347 = io_resps_sink_c_bits_hasData ? _GEN_342 : _GEN_345; // @[MSHR.scala 1242:39]
  wire  _GEN_348 = io_resps_sink_c_bits_hasData ? _GEN_321 : _GEN_344; // @[MSHR.scala 1242:39]
  wire  _GEN_349 = _T_264 & probeack_last & io_resps_sink_c_bits_last ? _GEN_346 : _GEN_330; // @[MSHR.scala 1241:86]
  wire  _GEN_350 = _T_264 & probeack_last & io_resps_sink_c_bits_last ? _GEN_347 : _GEN_268; // @[MSHR.scala 1241:86]
  wire  _GEN_351 = _T_264 & probeack_last & io_resps_sink_c_bits_last ? _GEN_348 : _GEN_321; // @[MSHR.scala 1241:86]
  wire  _wprobeack_T = req_off == 6'h0; // @[MSHR.scala 1265:72]
  wire  _T_286 = ~acquire_flag & (a_need_data | acquireperm_alias) & probeack_last; // @[MSHR.scala 1268:59]
  wire  _T_293 = _T_286 & io_resps_sink_c_bits_last & ~io_resps_sink_c_bits_hasData &
    _io_tasks_source_d_bits_useBypass_T_3 & _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 1269:70]
  wire  _GEN_352 = _T_141 ? 1'h0 : _GEN_323; // @[MSHR.scala 1276:37 1277:20]
  wire  _T_297 = preferCache | meta_self_hit; // @[MSHR.scala 1282:26]
  wire  _GEN_353 = ~(preferCache | meta_self_hit) | _GEN_325; // @[MSHR.scala 1282:45 1284:21]
  wire  _GEN_354 = ~(preferCache | meta_self_hit) | _GEN_276; // @[MSHR.scala 1282:45 1287:22]
  wire  _GEN_355 = _T_293 ? 1'h0 : _GEN_270; // @[MSHR.scala 1270:7 1271:21]
  wire  _GEN_356 = _T_293 ? 1'h0 : _GEN_317; // @[MSHR.scala 1270:7 1272:17]
  wire  _GEN_357 = _T_293 ? 1'h0 : _GEN_265; // @[MSHR.scala 1270:7 1273:20]
  wire  _GEN_358 = _T_293 ? 1'h0 : _GEN_266; // @[MSHR.scala 1270:7 1274:19]
  wire  _GEN_359 = _T_293 ? 1'h0 : _GEN_267; // @[MSHR.scala 1270:7 1275:15]
  wire  _GEN_360 = _T_293 ? _GEN_352 : _GEN_323; // @[MSHR.scala 1270:7]
  wire  _GEN_362 = _T_293 ? _GEN_353 : _GEN_325; // @[MSHR.scala 1270:7]
  wire  _GEN_365 = _T_264 ? w_probeackfirst | probeack_last : _GEN_262; // @[MSHR.scala 1260:40 1263:21]
  wire  _GEN_366 = _T_264 ? w_probeacklast | probeack_last & io_resps_sink_c_bits_last : _GEN_263; // @[MSHR.scala 1260:40 1264:20]
  wire  _GEN_367 = _T_264 ? w_probeack | probeack_last & (io_resps_sink_c_bits_last | req_off == 6'h0) : _GEN_264; // @[MSHR.scala 1260:40 1265:16]
  wire  _GEN_369 = _T_264 ? _GEN_355 : _GEN_270; // @[MSHR.scala 1260:40]
  wire  _GEN_370 = _T_264 ? _GEN_356 : _GEN_317; // @[MSHR.scala 1260:40]
  wire  _GEN_371 = _T_264 ? _GEN_357 : _GEN_265; // @[MSHR.scala 1260:40]
  wire  _GEN_372 = _T_264 ? _GEN_358 : _GEN_266; // @[MSHR.scala 1260:40]
  wire  _GEN_373 = _T_264 ? _GEN_359 : _GEN_267; // @[MSHR.scala 1260:40]
  wire  _GEN_374 = _T_264 ? _GEN_360 : _GEN_323; // @[MSHR.scala 1260:40]
  wire  _GEN_376 = _T_264 ? _GEN_362 : _GEN_325; // @[MSHR.scala 1260:40]
  wire  _GEN_379 = io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 |
    io_resps_sink_d_bits_opcode == 3'h1 | io_resps_sink_d_bits_opcode == 3'h0 | _GEN_371; // @[MSHR.scala 1292:188 1294:20]
  wire  _GEN_380 = io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 |
    io_resps_sink_d_bits_opcode == 3'h1 | io_resps_sink_d_bits_opcode == 3'h0 ? w_grantlast | io_resps_sink_d_bits_last
     : _GEN_372; // @[MSHR.scala 1292:188 1295:19]
  wire  _GEN_381 = io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 |
    io_resps_sink_d_bits_opcode == 3'h1 | io_resps_sink_d_bits_opcode == 3'h0 ? _wprobeack_T |
    io_resps_sink_d_bits_last : _GEN_373; // @[MSHR.scala 1292:188 1296:15]
  wire  _GEN_386 = io_resps_sink_d_bits_opcode == 3'h6 | _GEN_350; // @[MSHR.scala 1302:54 1303:20]
  wire  _GEN_388 = req_valid & io_resps_sink_d_valid ? _GEN_379 : _GEN_371; // @[MSHR.scala 1291:44]
  wire  _GEN_389 = req_valid & io_resps_sink_d_valid ? _GEN_380 : _GEN_372; // @[MSHR.scala 1291:44]
  wire  _GEN_390 = req_valid & io_resps_sink_d_valid ? _GEN_381 : _GEN_373; // @[MSHR.scala 1291:44]
  wire  _GEN_395 = req_valid & io_resps_sink_d_valid ? _GEN_386 : _GEN_350; // @[MSHR.scala 1291:44]
  wire  _GEN_396 = io_resps_sink_e_valid | _GEN_269; // @[MSHR.scala 1307:31 1308:16]
  reg  no_schedule_REG; // @[MSHR.scala 1313:12]
  wire  _no_schedule_T_6 = s_probeack & s_execute & s_grantack & no_schedule_REG; // @[MSHR.scala 1312:59]
  wire  _no_schedule_T_7 = _no_schedule_T_6 & s_writerelease; // @[MSHR.scala 1313:99]
  wire  _no_schedule_T_9 = _no_schedule_T_7 & s_writeprobe & s_triggerprefetch; // @[MSHR.scala 1314:36]
  wire  no_schedule = _no_schedule_T_9 & s_prefetchack; // @[MSHR.scala 1315:41]
  wire  will_be_free = no_wait & no_schedule; // @[MSHR.scala 1317:30]
  wire  _GEN_398 = will_be_free ? 1'h0 : req_valid; // @[MSHR.scala 1318:22 1320:15 51:26]
  wire [4:0] iam_uncommonBits = io_alloc_bits_source[4:0]; // @[Parameters.scala 52:64]
  wire  _iam_T_1 = ~io_alloc_bits_source[5]; // @[Parameters.scala 54:32]
  wire  _iam_T_4 = iam_uncommonBits <= 5'h12; // @[Parameters.scala 57:20]
  wire  _iam_T_5 = _iam_T_1 & _iam_T_4; // @[Parameters.scala 56:50]
  wire [1:0] iam_uncommonBits_1 = io_alloc_bits_source[1:0]; // @[Parameters.scala 52:64]
  wire  _iam_T_7 = io_alloc_bits_source[5:2] == 4'ha; // @[Parameters.scala 54:32]
  wire  _iam_T_10 = iam_uncommonBits_1 <= 2'h2; // @[Parameters.scala 57:20]
  wire  _iam_T_11 = _iam_T_7 & _iam_T_10; // @[Parameters.scala 56:50]
  wire [1:0] _iam_T_12 = {_iam_T_11,_iam_T_5}; // @[Cat.scala 31:58]
  wire  _GEN_405 = io_alloc_valid | _GEN_398; // @[MSHR.scala 1332:24 1333:15]
  wire  _io_status_bits_nestB_T = w_releaseack & w_probeacklast; // @[MSHR.scala 1353:19]
  wire  _io_status_bits_nestB_T_1 = meta_valid & _io_status_bits_nestB_T; // @[MSHR.scala 1352:38]
  wire  _io_status_bits_nestB_T_2 = ~w_grantfirst; // @[MSHR.scala 1354:6]
  wire  _io_status_bits_nestB_T_4 = client_dir_conflict & ~probe_helper_finish; // @[MSHR.scala 1354:44]
  wire  _io_status_bits_nestB_T_5 = ~w_grantfirst | client_dir_conflict & ~probe_helper_finish; // @[MSHR.scala 1354:20]
  wire  _io_status_bits_nestC_T = meta_valid & w_releaseack; // @[MSHR.scala 1357:38]
  wire  _io_status_bits_nestC_T_6 = ~w_probeackfirst | _io_status_bits_nestB_T_2 | _io_status_bits_nestB_T_4; // @[MSHR.scala 1360:41]
  wire  nest_c_set_match = io_c_status_set == req_set; // @[MSHR.scala 1369:42]
  wire  nest_c_tag_match = io_c_status_tag == req_tag; // @[MSHR.scala 1370:42]
  wire [2:0] meta_self_way = _GEN_17; // @[MSHR.scala 68:14]
  wire  nest_c_way_match = io_c_status_way == meta_self_way; // @[MSHR.scala 1371:42]
  wire  _a_c_through_T_3 = nest_c_tag_match & _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 1374:24]
  wire  _a_c_through_T_13 = ~nest_c_tag_match & nest_c_way_match & (cache_alias | preferCache & _T_142 | meta_self_hit
     | transmit_from_other_client); // @[MSHR.scala 1375:45]
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
  assign io_status_bits_will_save_data = req_channel[0] & _T_297 & _T_142; // @[MSHR.scala 1346:80]
  assign io_status_bits_will_free = no_wait & no_schedule; // @[MSHR.scala 1317:30]
  assign io_status_bits_is_prefetch = req_isPrefetch; // @[MSHR.scala 1347:30]
  assign io_ecc_valid = meta_valid & (self_ecc_err | client_ecc_err); // @[MSHR.scala 809:30]
  assign io_ecc_bits_errCode = self_ecc_err ? 8'h1 : 8'h2; // @[MSHR.scala 811:29]
  assign io_ecc_bits_addr = {{29'd0}, _io_ecc_bits_addr_T}; // @[MSHR.scala 810:20]
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
  assign io_tasks_source_balias_0 = meta_clients_states_0_alias; // @[MSHR.scala 989:33]
  assign io_tasks_source_balias_1 = meta_clients_states_1_alias; // @[MSHR.scala 989:33]
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
  assign io_tasks_source_d_bits_opcode = req_channel[0] ? _GEN_315 : 3'h6; // @[MSHR.scala 1081:8]
  assign io_tasks_source_d_bits_param = _io_tasks_source_d_bits_param_T ? req_param : _io_tasks_source_d_bits_param_T_7; // @[MSHR.scala 1086:8]
  assign io_tasks_source_d_bits_size = req_size; // @[MSHR.scala 1091:11]
  assign io_tasks_source_d_bits_way = meta_self_way; // @[MSHR.scala 1092:10]
  assign io_tasks_source_d_bits_off = req_off; // @[MSHR.scala 1093:10]
  assign io_tasks_source_d_bits_useBypass = _prefetch_miss_need_probe_vec_T_5 & ~probe_dirty & ~nested_c_hit & ~(
    meta_reg_self_error | meta_reg_clients_error); // @[MSHR.scala 1069:67]
  assign io_tasks_source_d_bits_bufIdx = req_bufIdx; // @[MSHR.scala 1104:13]
  assign io_tasks_source_d_bits_denied = bad_grant | _io_tasks_source_d_bits_useBypass_T_5; // @[MSHR.scala 1094:26]
  assign io_tasks_source_d_bits_sinkId = io_id; // @[MSHR.scala 1068:13]
  assign io_tasks_source_d_bits_bypassPut = req_put & _prefetch_miss_need_probe_vec_T_5 & ~(|_bypassPut_T_2); // @[MSHR.scala 683:45]
  assign io_tasks_source_d_bits_dirty = req_acquire & _io_tasks_source_d_bits_dirty_T_6; // @[MSHR.scala 1095:18]
  assign io_tasks_source_a_valid = io_enable & (_T_45 | ~s_transferput) & s_release & s_probe & can_start; // @[MSHR.scala 915:98]
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
  assign io_tasks_source_c_bits_opcode = req_channel[1] ? _io_tasks_source_c_bits_opcode_T_8 : 3'h7; // @[MSHR.scala 1032:19]
  assign io_tasks_source_c_bits_tag = req_channel[1] ? req_tag : meta_self_tag; // @[MSHR.scala 1041:16]
  assign io_tasks_source_c_bits_set = req_set; // @[MSHR.scala 1042:10]
  assign io_tasks_source_c_bits_param = req_channel[1] ? probeack_param : replace_param; // @[MSHR.scala 1059:18]
  assign io_tasks_source_c_bits_source = io_id; // @[MSHR.scala 1064:13]
  assign io_tasks_source_c_bits_way = meta_self_way; // @[MSHR.scala 1065:10]
  assign io_tasks_source_c_bits_dirty = req_channel[1] ? _io_tasks_source_c_bits_opcode_T_4 : meta_self_dirty; // @[MSHR.scala 1066:18]
  assign io_tasks_source_e_valid = ~s_grantack & w_grantfirst; // @[MSHR.scala 919:42]
  assign io_tasks_source_e_bits_sink = sink; // @[MSHR.scala 1107:11]
  assign io_tasks_prefetch_train_valid = ~s_triggerprefetch; // @[MSHR.scala 927:46]
  assign io_tasks_prefetch_train_bits_tag = {{1'd0}, req_tag}; // @[MSHR.scala 1171:20]
  assign io_tasks_prefetch_train_bits_set = req_set; // @[MSHR.scala 1172:20]
  assign io_tasks_prefetch_train_bits_needT = _req_needT_T_5 | _req_needT_T_10; // @[MetaData.scala 36:70]
  assign io_tasks_prefetch_train_bits_source = req_source; // @[MSHR.scala 1174:23]
  assign io_tasks_prefetch_resp_valid = ~s_prefetchack & w_grantfirst; // @[MSHR.scala 928:64]
  assign io_tasks_prefetch_resp_bits_tag = {{1'd0}, req_tag}; // @[MSHR.scala 1178:19]
  assign io_tasks_prefetch_resp_bits_set = req_set; // @[MSHR.scala 1179:19]
  assign io_tasks_dir_write_valid = io_enable & ~s_wbselfdir & no_wait & can_start; // @[MSHR.scala 920:68]
  assign io_tasks_dir_write_bits_set = req_set; // @[MSHR.scala 1151:31]
  assign io_tasks_dir_write_bits_way = meta_reg_self_way; // @[MSHR.scala 1152:31]
  assign io_tasks_dir_write_bits_data_dirty = bad_grant ? 1'h0 : new_self_meta_dirty; // @[MSHR.scala 441:19 427:22 442:24]
  assign io_tasks_dir_write_bits_data_state = bad_grant ? meta_self_state : new_self_meta_state; // @[MSHR.scala 441:19 428:22 443:24]
  assign io_tasks_dir_write_bits_data_clientStates_0 = bad_grant ? _new_self_dir_clientStates_0_T_2 :
    new_self_meta_clientStates_0; // @[MSHR.scala 441:19 446:15 429:29]
  assign io_tasks_dir_write_bits_data_clientStates_1 = bad_grant ? _new_self_dir_clientStates_1_T_2 :
    new_self_meta_clientStates_1; // @[MSHR.scala 441:19 446:15 429:29]
  assign io_tasks_dir_write_bits_data_prefetch = meta_self_prefetch | prefetch_miss; // @[MSHR.scala 430:61]
  assign io_tasks_tag_write_valid = io_enable & ~s_wbselftag & no_wait & can_start; // @[MSHR.scala 921:68]
  assign io_tasks_tag_write_bits_set = req_set; // @[MSHR.scala 1155:31]
  assign io_tasks_tag_write_bits_way = meta_reg_self_way; // @[MSHR.scala 1156:31]
  assign io_tasks_tag_write_bits_tag = req_tag; // @[MSHR.scala 1157:31]
  assign io_tasks_client_dir_write_valid = io_enable & ~s_wbclientsdir & no_wait & can_start; // @[MSHR.scala 922:78]
  assign io_tasks_client_dir_write_bits_set = debug_addr_hi[7:0]; // @[Directory.scala 96:25]
  assign io_tasks_client_dir_write_bits_way = meta_reg_clients_way; // @[Directory.scala 97:14]
  assign io_tasks_client_dir_write_bits_data_0_state = req_channel[2] ? _GEN_35 : _GEN_52; // @[MSHR.scala 413:19]
  assign io_tasks_client_dir_write_bits_data_0_alias = req_channel[2] ? meta_clients_states_0_alias : _GEN_54; // @[MSHR.scala 413:19]
  assign io_tasks_client_dir_write_bits_data_1_state = req_channel[2] ? _GEN_36 : _GEN_53; // @[MSHR.scala 413:19]
  assign io_tasks_client_dir_write_bits_data_1_alias = req_channel[2] ? meta_clients_states_1_alias : _GEN_55; // @[MSHR.scala 413:19]
  assign io_tasks_client_tag_write_valid = io_enable & ~s_wbclientstag & no_wait & can_start; // @[MSHR.scala 923:78]
  assign io_tasks_client_tag_write_bits_set = debug_addr_hi[7:0]; // @[Directory.scala 78:25]
  assign io_tasks_client_tag_write_bits_way = meta_reg_clients_way; // @[Directory.scala 79:14]
  assign io_tasks_client_tag_write_bits_tag = debug_addr_hi[28:8]; // @[Directory.scala 80:25]
  assign io_c_status_releaseThrough = _io_c_status_releaseThrough_T_1 & _io_c_status_releaseThrough_T_2; // @[MSHR.scala 1384:22]
  assign io_bstatus_probeAckDataThrough = _io_bstatus_probeAckDataThrough_T_9 & _T_297 & _T_142; // @[MSHR.scala 1392:49]
  assign io_is_nestedReleaseData = req_channel[2] & _will_release_through_T & req_valid; // @[MSHR.scala 1363:87]
  assign io_is_nestedProbeAckData = req_channel[1] & clients_hit & req_valid; // @[MSHR.scala 1365:56]
  assign io_probeHelperFinish = _T_271 & no_schedule & no_wait; // @[MSHR.scala 1366:75]
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
      req_needHint <= io_alloc_bits_needHint; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_isPrefetch <= io_alloc_bits_isPrefetch; // @[MSHR.scala 1334:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      req_alias <= io_alloc_bits_alias; // @[MSHR.scala 1335:25]
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
      req_valid <= _GEN_405;
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1332:24]
      iam <= _iam_T_12[1]; // @[MSHR.scala 1336:9]
    end
    if (change_self_meta) begin // @[MSHR.scala 467:26]
      meta_reg_self_dirty <= _GEN_70;
    end else if (io_dirResult_valid) begin // @[MSHR.scala 64:28]
      meta_reg_self_dirty <= io_dirResult_bits_self_dirty; // @[MSHR.scala 66:14]
    end
    if (change_self_meta) begin // @[MSHR.scala 467:26]
      if (io_nestedwb_btoN) begin // @[MSHR.scala 481:29]
        meta_reg_self_state <= 2'h0; // @[MSHR.scala 482:27]
      end else if (io_nestedwb_btoB) begin // @[MSHR.scala 477:29]
        meta_reg_self_state <= 2'h1; // @[MSHR.scala 478:27]
      end else begin
        meta_reg_self_state <= _GEN_22;
      end
    end else begin
      meta_reg_self_state <= _GEN_22;
    end
    if (change_self_meta) begin // @[MSHR.scala 467:26]
      if (io_nestedwb_btoN) begin // @[MSHR.scala 481:29]
        meta_reg_self_clientStates_0 <= 2'h0; // @[MSHR.scala 484:44]
      end else if (io_nestedwb_btoB) begin // @[MSHR.scala 477:29]
        if (meta_reg_self_clientStates_0[1]) begin // @[MSHR.scala 479:57]
          meta_reg_self_clientStates_0 <= 2'h1;
        end
      end else begin
        meta_reg_self_clientStates_0 <= _GEN_20;
      end
    end else begin
      meta_reg_self_clientStates_0 <= _GEN_20;
    end
    if (change_self_meta) begin // @[MSHR.scala 467:26]
      if (io_nestedwb_btoN) begin // @[MSHR.scala 481:29]
        meta_reg_self_clientStates_1 <= 2'h0; // @[MSHR.scala 484:44]
      end else if (io_nestedwb_btoB) begin // @[MSHR.scala 477:29]
        if (meta_reg_self_clientStates_1[1]) begin // @[MSHR.scala 479:57]
          meta_reg_self_clientStates_1 <= 2'h1;
        end
      end else begin
        meta_reg_self_clientStates_1 <= _GEN_21;
      end
    end else begin
      meta_reg_self_clientStates_1 <= _GEN_21;
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 64:28]
      meta_reg_self_prefetch <= io_dirResult_bits_self_prefetch; // @[MSHR.scala 66:14]
    end
    if (change_self_meta) begin // @[MSHR.scala 467:26]
      if (io_nestedwb_btoN) begin // @[MSHR.scala 481:29]
        meta_reg_self_hit <= 1'h0; // @[MSHR.scala 483:25]
      end else begin
        meta_reg_self_hit <= _GEN_18;
      end
    end else begin
      meta_reg_self_hit <= _GEN_18;
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
        meta_reg_clients_states_0_state <= _GEN_11;
      end
    end else begin
      meta_reg_clients_states_0_state <= _GEN_11;
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 64:28]
      meta_reg_clients_states_0_alias <= io_dirResult_bits_clients_states_0_alias; // @[MSHR.scala 66:14]
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
    if (change_clients_meta_1) begin // @[MSHR.scala 498:36]
      if (io_nestedwb_clients_1_isToN) begin // @[MSHR.scala 502:49]
        meta_reg_clients_states_1_state <= 2'h0; // @[MSHR.scala 503:21]
      end else begin
        meta_reg_clients_states_1_state <= _GEN_14;
      end
    end else begin
      meta_reg_clients_states_1_state <= _GEN_14;
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 64:28]
      meta_reg_clients_states_1_alias <= io_dirResult_bits_clients_states_1_alias; // @[MSHR.scala 66:14]
    end
    if (change_clients_meta_1) begin // @[MSHR.scala 498:36]
      if (io_nestedwb_clients_1_isToN) begin // @[MSHR.scala 502:49]
        meta_reg_clients_states_1_hit <= 1'h0; // @[MSHR.scala 504:19]
      end else begin
        meta_reg_clients_states_1_hit <= _GEN_12;
      end
    end else begin
      meta_reg_clients_states_1_hit <= _GEN_12;
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
    promoteT_safe <= reset | _GEN_369; // @[MSHR.scala 80:{30,30}]
    if (reset) begin // @[MSHR.scala 81:21]
      gotT <= 1'h0; // @[MSHR.scala 81:21]
    end else if (req_valid & io_resps_sink_d_valid) begin // @[MSHR.scala 1291:44]
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin // @[MSHR.scala 1292:188]
        gotT <= io_resps_sink_d_bits_param == 3'h0; // @[MSHR.scala 1298:12]
      end else begin
        gotT <= _GEN_271;
      end
    end else begin
      gotT <= _GEN_271;
    end
    if (reset) begin // @[MSHR.scala 82:25]
      gotDirty <= 1'h0; // @[MSHR.scala 82:25]
    end else if (req_valid & io_resps_sink_d_valid) begin // @[MSHR.scala 1291:44]
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin // @[MSHR.scala 1292:188]
        gotDirty <= io_resps_sink_d_bits_dirty; // @[MSHR.scala 1299:16]
      end else begin
        gotDirty <= _GEN_278;
      end
    end else begin
      gotDirty <= _GEN_278;
    end
    if (reset) begin // @[MSHR.scala 83:29]
      a_do_release <= 1'h0; // @[MSHR.scala 83:29]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      if (meta_self_error | _GEN_5) begin // @[MSHR.scala 817:48]
        a_do_release <= 1'h0; // @[MSHR.scala 574:18]
      end else if (req_channel[2]) begin // @[MSHR.scala 831:23]
        a_do_release <= 1'h0; // @[MSHR.scala 574:18]
      end else begin
        a_do_release <= _GEN_201;
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
        a_do_probe <= _GEN_204;
      end
    end
    if (reset) begin // @[MSHR.scala 91:28]
      probe_dirty <= 1'h0; // @[MSHR.scala 91:28]
    end else if (_T_264) begin // @[MSHR.scala 1260:40]
      probe_dirty <= probe_dirty | io_resps_sink_c_bits_hasData; // @[MSHR.scala 1266:17]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      probe_dirty <= 1'h0; // @[MSHR.scala 566:17]
    end
    if (reset) begin // @[MSHR.scala 92:28]
      probes_done <= 2'h0; // @[MSHR.scala 92:28]
    end else if (_T_264) begin // @[MSHR.scala 1260:40]
      probes_done <= _probeack_last_T; // @[MSHR.scala 1262:17]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      probes_done <= 2'h0; // @[MSHR.scala 567:17]
    end
    if (reset) begin // @[MSHR.scala 124:29]
      inv_self_dir <= 1'h0; // @[MSHR.scala 124:29]
    end else if (_T_264) begin // @[MSHR.scala 1260:40]
      if (_T_293) begin // @[MSHR.scala 1270:7]
        inv_self_dir <= _GEN_354;
      end else begin
        inv_self_dir <= _GEN_276;
      end
    end else begin
      inv_self_dir <= _GEN_276;
    end
    if (reset) begin // @[MSHR.scala 125:46]
      client_probeack_param_vec_reg_0 <= 3'h0; // @[MSHR.scala 125:46]
    end else if (req_valid & sink_c_resp_valid & io_resps_sink_c_bits_last) begin // @[MSHR.scala 1235:69]
      if (~client) begin // @[MSHR.scala 1238:39]
        client_probeack_param_vec_reg_0 <= io_resps_sink_c_bits_param; // @[MSHR.scala 1238:39]
      end
    end
    if (reset) begin // @[MSHR.scala 125:46]
      client_probeack_param_vec_reg_1 <= 3'h0; // @[MSHR.scala 125:46]
    end else if (req_valid & sink_c_resp_valid & io_resps_sink_c_bits_last) begin // @[MSHR.scala 1235:69]
      if (client) begin // @[MSHR.scala 1238:39]
        client_probeack_param_vec_reg_1 <= io_resps_sink_c_bits_param; // @[MSHR.scala 1238:39]
      end
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
        probeAckDataThrough <= _GEN_293;
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
        probeAckDataDrop <= _GEN_294;
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
        probeAckDataSave <= _GEN_295;
      end
    end
    w_probeacklast <= reset | _GEN_366; // @[MSHR.scala 527:{31,31}]
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
        bad_grant <= _GEN_274;
      end
    end else begin
      bad_grant <= _GEN_274;
    end
    if (reset) begin // @[MSHR.scala 487:33]
      nested_c_hit_reg <= 1'h0; // @[MSHR.scala 487:33]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      nested_c_hit_reg <= 1'h0; // @[MSHR.scala 571:22]
    end else begin
      nested_c_hit_reg <= nested_c_hit;
    end
    s_acquire <= reset | _GEN_370; // @[MSHR.scala 510:{26,26}]
    s_probe <= reset | _GEN_319; // @[MSHR.scala 511:{24,24}]
    s_release <= reset | _GEN_320; // @[MSHR.scala 512:{26,26}]
    s_probeack <= reset | _GEN_351; // @[MSHR.scala 513:{27,27}]
    s_execute <= reset | _GEN_322; // @[MSHR.scala 514:{26,26}]
    s_grantack <= reset | _GEN_374; // @[MSHR.scala 515:{27,27}]
    s_wbselfdir <= reset | _GEN_324; // @[MSHR.scala 516:{28,28}]
    s_wbselftag <= reset | _GEN_376; // @[MSHR.scala 517:{28,28}]
    s_wbclientsdir <= reset | _GEN_326; // @[MSHR.scala 518:{31,31}]
    s_wbclientstag <= reset | _GEN_327; // @[MSHR.scala 519:{31,31}]
    s_transferput <= reset | _GEN_318; // @[MSHR.scala 520:{30,30}]
    s_writerelease <= reset | _GEN_331; // @[MSHR.scala 521:{31,31}]
    s_writeprobe <= reset | _GEN_349; // @[MSHR.scala 522:{29,29}]
    s_triggerprefetch <= reset | _GEN_332; // @[MSHR.scala 523:{55,55}]
    s_prefetchack <= reset | _GEN_333; // @[MSHR.scala 524:{51,51}]
    w_probeackfirst <= reset | _GEN_365; // @[MSHR.scala 526:{32,32}]
    w_probeack <= reset | _GEN_367; // @[MSHR.scala 528:{27,27}]
    w_grantfirst <= reset | _GEN_388; // @[MSHR.scala 529:{29,29}]
    w_grantlast <= reset | _GEN_389; // @[MSHR.scala 530:{28,28}]
    w_grant <= reset | _GEN_390; // @[MSHR.scala 531:{24,24}]
    w_releaseack <= reset | _GEN_395; // @[MSHR.scala 532:{29,29}]
    w_grantack <= reset | _GEN_396; // @[MSHR.scala 533:{27,27}]
    if (reset) begin // @[MSHR.scala 535:29]
      acquire_flag <= 1'h0; // @[MSHR.scala 535:29]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 813:28]
      acquire_flag <= 1'h0; // @[MSHR.scala 573:18]
    end else begin
      acquire_flag <= _GEN_92;
    end
    if (io_dirResult_valid) begin // @[Reg.scala 17:18]
      client_dir_conflict <= _client_dir_conflict_T_3; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[MSHR.scala 902:36]
      probe_helper_finish <= 1'h0; // @[MSHR.scala 902:36]
    end else if (will_be_free) begin // @[MSHR.scala 1318:22]
      probe_helper_finish <= 1'h0; // @[MSHR.scala 1326:25]
    end else begin
      probe_helper_finish <= _GEN_306;
    end
    if (io_dirResult_valid) begin // @[Reg.scala 17:18]
      probe_clients <= _probe_clients_T_9; // @[Reg.scala 17:22]
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
  req_set = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  req_tag = _RAND_6[20:0];
  _RAND_7 = {1{`RANDOM}};
  req_off = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  req_bufIdx = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  req_needHint = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  req_isPrefetch = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  req_alias = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  req_preferCache = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  req_dirty = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  req_fromProbeHelper = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  req_fromCmoHelper = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  req_needProbeAckData = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  req_valid = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  iam = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  meta_reg_self_dirty = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  meta_reg_self_state = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  meta_reg_self_clientStates_0 = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  meta_reg_self_clientStates_1 = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  meta_reg_self_prefetch = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  meta_reg_self_hit = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  meta_reg_self_way = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  meta_reg_self_tag = _RAND_26[20:0];
  _RAND_27 = {1{`RANDOM}};
  meta_reg_self_error = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  meta_reg_clients_states_0_state = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  meta_reg_clients_states_0_alias = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  meta_reg_clients_states_0_hit = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  meta_reg_clients_states_1_state = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  meta_reg_clients_states_1_alias = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  meta_reg_clients_states_1_hit = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  meta_reg_clients_tag = _RAND_34[20:0];
  _RAND_35 = {1{`RANDOM}};
  meta_reg_clients_way = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  meta_reg_clients_error = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  meta_valid = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  promoteT_safe = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  gotT = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  gotDirty = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  a_do_release = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  a_do_probe = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  probe_dirty = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  probes_done = _RAND_44[1:0];
  _RAND_45 = {1{`RANDOM}};
  inv_self_dir = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  client_probeack_param_vec_reg_0 = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  client_probeack_param_vec_reg_1 = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  releaseThrough = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  releaseDrop = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  probeAckDataThrough = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  probeAckDataDrop = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  probeAckDataSave = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  w_probeacklast = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  sink = _RAND_54[5:0];
  _RAND_55 = {1{`RANDOM}};
  bad_grant = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  nested_c_hit_reg = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  s_acquire = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  s_probe = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  s_release = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  s_probeack = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  s_execute = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  s_grantack = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  s_wbselfdir = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  s_wbselftag = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  s_wbclientsdir = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  s_wbclientstag = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  s_transferput = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  s_writerelease = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  s_writeprobe = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  s_triggerprefetch = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  s_prefetchack = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  w_probeackfirst = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  w_probeack = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  w_grantfirst = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  w_grantlast = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  w_grant = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  w_releaseack = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  w_grantack = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  acquire_flag = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  client_dir_conflict = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  probe_helper_finish = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  probe_clients = _RAND_82[1:0];
  _RAND_83 = {1{`RANDOM}};
  io_tasks_sink_c_bits_bufIdx_r = _RAND_83[2:0];
  _RAND_84 = {1{`RANDOM}};
  no_schedule_REG = _RAND_84[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
