module MainPipe(
  input          clock,
  input          reset,
  output         io_probe_req_ready,
  input          io_probe_req_valid,
  input          io_probe_req_bits_miss,
  input  [2:0]   io_probe_req_bits_miss_id,
  input  [1:0]   io_probe_req_bits_miss_param,
  input          io_probe_req_bits_miss_dirty,
  input  [3:0]   io_probe_req_bits_miss_way_en,
  input          io_probe_req_bits_probe,
  input  [1:0]   io_probe_req_bits_probe_param,
  input          io_probe_req_bits_probe_need_data,
  input  [1:0]   io_probe_req_bits_source,
  input  [4:0]   io_probe_req_bits_cmd,
  input  [38:0]  io_probe_req_bits_vaddr,
  input  [35:0]  io_probe_req_bits_addr,
  input  [511:0] io_probe_req_bits_store_data,
  input  [63:0]  io_probe_req_bits_store_mask,
  input  [2:0]   io_probe_req_bits_word_idx,
  input  [63:0]  io_probe_req_bits_amo_data,
  input  [7:0]   io_probe_req_bits_amo_mask,
  input          io_probe_req_bits_error,
  input          io_probe_req_bits_replace,
  input  [3:0]   io_probe_req_bits_replace_way_en,
  input  [63:0]  io_probe_req_bits_id,
  input          io_miss_req_ready,
  output         io_miss_req_valid,
  output [1:0]   io_miss_req_bits_source,
  output [4:0]   io_miss_req_bits_cmd,
  output [35:0]  io_miss_req_bits_addr,
  output [38:0]  io_miss_req_bits_vaddr,
  output [3:0]   io_miss_req_bits_way_en,
  output [511:0] io_miss_req_bits_store_data,
  output [63:0]  io_miss_req_bits_store_mask,
  output [2:0]   io_miss_req_bits_word_idx,
  output [63:0]  io_miss_req_bits_amo_data,
  output [7:0]   io_miss_req_bits_amo_mask,
  output [1:0]   io_miss_req_bits_req_coh_state,
  output [1:0]   io_miss_req_bits_replace_coh_state,
  output [23:0]  io_miss_req_bits_replace_tag,
  output [63:0]  io_miss_req_bits_id,
  output         io_store_req_ready,
  input          io_store_req_valid,
  input  [38:0]  io_store_req_bits_vaddr,
  input  [35:0]  io_store_req_bits_addr,
  input  [511:0] io_store_req_bits_data,
  input  [63:0]  io_store_req_bits_mask,
  input  [63:0]  io_store_req_bits_id,
  output         io_store_replay_resp_valid,
  output [63:0]  io_store_replay_resp_bits_id,
  output         io_store_hit_resp_valid,
  output [63:0]  io_store_hit_resp_bits_id,
  output         io_release_update_valid,
  output [35:0]  io_release_update_bits_addr,
  output [7:0]   io_release_update_bits_mask,
  output [511:0] io_release_update_bits_data,
  output         io_atomic_req_ready,
  input          io_atomic_req_valid,
  input          io_atomic_req_bits_miss,
  input  [2:0]   io_atomic_req_bits_miss_id,
  input  [1:0]   io_atomic_req_bits_miss_param,
  input          io_atomic_req_bits_miss_dirty,
  input  [3:0]   io_atomic_req_bits_miss_way_en,
  input  [1:0]   io_atomic_req_bits_source,
  input  [4:0]   io_atomic_req_bits_cmd,
  input  [38:0]  io_atomic_req_bits_vaddr,
  input  [35:0]  io_atomic_req_bits_addr,
  input  [511:0] io_atomic_req_bits_store_data,
  input  [63:0]  io_atomic_req_bits_store_mask,
  input  [2:0]   io_atomic_req_bits_word_idx,
  input  [63:0]  io_atomic_req_bits_amo_data,
  input  [7:0]   io_atomic_req_bits_amo_mask,
  input          io_atomic_req_bits_error,
  input          io_atomic_req_bits_replace,
  input  [3:0]   io_atomic_req_bits_replace_way_en,
  input  [63:0]  io_atomic_req_bits_id,
  output         io_atomic_resp_valid,
  output [63:0]  io_atomic_resp_bits_data,
  output         io_atomic_resp_bits_miss,
  output [2:0]   io_atomic_resp_bits_miss_id,
  output         io_atomic_resp_bits_replay,
  output         io_atomic_resp_bits_error,
  output         io_atomic_resp_bits_ack_miss_queue,
  output [63:0]  io_atomic_resp_bits_id,
  output         io_replace_req_ready,
  input          io_replace_req_valid,
  input          io_replace_req_bits_miss,
  input  [2:0]   io_replace_req_bits_miss_id,
  input  [1:0]   io_replace_req_bits_miss_param,
  input          io_replace_req_bits_miss_dirty,
  input  [3:0]   io_replace_req_bits_miss_way_en,
  input  [1:0]   io_replace_req_bits_source,
  input  [4:0]   io_replace_req_bits_cmd,
  input  [38:0]  io_replace_req_bits_vaddr,
  input  [35:0]  io_replace_req_bits_addr,
  input  [511:0] io_replace_req_bits_store_data,
  input  [63:0]  io_replace_req_bits_store_mask,
  input  [2:0]   io_replace_req_bits_word_idx,
  input  [63:0]  io_replace_req_bits_amo_data,
  input  [7:0]   io_replace_req_bits_amo_mask,
  input          io_replace_req_bits_error,
  input          io_replace_req_bits_replace,
  input  [3:0]   io_replace_req_bits_replace_way_en,
  input  [63:0]  io_replace_req_bits_id,
  output         io_replace_resp_valid,
  output [2:0]   io_replace_resp_bits,
  input          io_wb_ready,
  output         io_wb_valid,
  output [35:0]  io_wb_bits_addr,
  output [2:0]   io_wb_bits_param,
  output         io_wb_bits_voluntary,
  output         io_wb_bits_hasData,
  output         io_wb_bits_dirty,
  output [511:0] io_wb_bits_data,
  output         io_wb_bits_delay_release,
  output [2:0]   io_wb_bits_miss_id,
  input          io_data_read_ready,
  output         io_data_read_valid,
  output [3:0]   io_data_read_bits_way_en,
  output [35:0]  io_data_read_bits_addr,
  input  [63:0]  io_data_resp_0_raw_data,
  input  [63:0]  io_data_resp_1_raw_data,
  input  [63:0]  io_data_resp_2_raw_data,
  input  [63:0]  io_data_resp_3_raw_data,
  input  [63:0]  io_data_resp_4_raw_data,
  input  [63:0]  io_data_resp_5_raw_data,
  input  [63:0]  io_data_resp_6_raw_data,
  input  [63:0]  io_data_resp_7_raw_data,
  input          io_readline_error,
  input          io_data_write_ready,
  output         io_data_write_valid,
  output [3:0]   io_data_write_bits_way_en,
  output [35:0]  io_data_write_bits_addr,
  output [7:0]   io_data_write_bits_wmask,
  output [63:0]  io_data_write_bits_data_0,
  output [63:0]  io_data_write_bits_data_1,
  output [63:0]  io_data_write_bits_data_2,
  output [63:0]  io_data_write_bits_data_3,
  output [63:0]  io_data_write_bits_data_4,
  output [63:0]  io_data_write_bits_data_5,
  output [63:0]  io_data_write_bits_data_6,
  output [63:0]  io_data_write_bits_data_7,
  output         io_meta_read_valid,
  output [7:0]   io_meta_read_bits_idx,
  input  [1:0]   io_meta_resp_0_coh_state,
  input  [1:0]   io_meta_resp_1_coh_state,
  input  [1:0]   io_meta_resp_2_coh_state,
  input  [1:0]   io_meta_resp_3_coh_state,
  output         io_meta_write_valid,
  output [7:0]   io_meta_write_bits_idx,
  output [3:0]   io_meta_write_bits_way_en,
  output [1:0]   io_meta_write_bits_meta_coh_state,
  input          io_error_flag_resp_0,
  input          io_error_flag_resp_1,
  input          io_error_flag_resp_2,
  input          io_error_flag_resp_3,
  output         io_error_flag_write_valid,
  output [7:0]   io_error_flag_write_bits_idx,
  output [3:0]   io_error_flag_write_bits_way_en,
  output         io_error_flag_write_bits_error,
  input          io_tag_read_ready,
  output         io_tag_read_valid,
  output [7:0]   io_tag_read_bits_idx,
  input  [29:0]  io_tag_resp_0,
  input  [29:0]  io_tag_resp_1,
  input  [29:0]  io_tag_resp_2,
  input  [29:0]  io_tag_resp_3,
  input          io_tag_write_ready,
  output         io_tag_write_valid,
  output [7:0]   io_tag_write_bits_idx,
  output [3:0]   io_tag_write_bits_way_en,
  output [23:0]  io_tag_write_bits_tag,
  output         io_replace_access_valid,
  output [7:0]   io_replace_access_bits_set,
  output [1:0]   io_replace_access_bits_way,
  output [7:0]   io_replace_way_set_bits,
  input  [1:0]   io_replace_way_way,
  output         io_status_s1_valid,
  output [7:0]   io_status_s1_bits_set,
  output         io_status_s2_valid,
  output [7:0]   io_status_s2_bits_set,
  output [3:0]   io_status_s2_bits_way_en,
  output         io_status_s3_valid,
  output [7:0]   io_status_s3_bits_set,
  output [3:0]   io_status_s3_bits_way_en,
  output         io_lrsc_locked_block_valid,
  output [35:0]  io_lrsc_locked_block_bits,
  input          io_invalid_resv_set,
  output         io_update_resv_set,
  output         io_block_lr,
  output         io_error_source_tag,
  output         io_error_source_data,
  output         io_error_source_l2,
  output         io_error_opType_store,
  output         io_error_opType_probe,
  output         io_error_opType_release,
  output         io_error_opType_atom,
  output [35:0]  io_error_paddr,
  output         io_error_report_to_beu,
  output         io_error_valid,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
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
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
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
  reg [63:0] _RAND_41;
  reg [511:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [63:0] _RAND_50;
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
  reg [63:0] _RAND_75;
  reg [511:0] _RAND_76;
  reg [63:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [63:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [63:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [63:0] _RAND_96;
  reg [63:0] _RAND_97;
  reg [63:0] _RAND_98;
  reg [63:0] _RAND_99;
  reg [63:0] _RAND_100;
  reg [63:0] _RAND_101;
  reg [63:0] _RAND_102;
  reg [63:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [63:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [63:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [63:0] _RAND_117;
  reg [63:0] _RAND_118;
  reg [63:0] _RAND_119;
  reg [63:0] _RAND_120;
  reg [63:0] _RAND_121;
  reg [63:0] _RAND_122;
  reg [63:0] _RAND_123;
  reg [63:0] _RAND_124;
  reg [63:0] _RAND_125;
  reg [63:0] _RAND_126;
  reg [63:0] _RAND_127;
  reg [63:0] _RAND_128;
  reg [63:0] _RAND_129;
  reg [63:0] _RAND_130;
  reg [63:0] _RAND_131;
  reg [63:0] _RAND_132;
  reg [63:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [63:0] _RAND_137;
  reg [63:0] _RAND_138;
  reg [63:0] _RAND_139;
  reg [63:0] _RAND_140;
  reg [63:0] _RAND_141;
  reg [63:0] _RAND_142;
  reg [63:0] _RAND_143;
  reg [63:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [63:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
`endif // RANDOMIZE_REG_INIT
  wire  main_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_0_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_0_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_0_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_bits_probe; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_0_bits_probe_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_bits_probe_need_data; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_0_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_0_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_0_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_0_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_0_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_0_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_0_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_0_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_in_0_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_0_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_0_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_0_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_1_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_1_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_1_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_bits_probe; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_1_bits_probe_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_bits_probe_need_data; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_1_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_1_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_1_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_1_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_1_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_1_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_1_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_1_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_in_1_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_1_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_1_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_1_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_2_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_2_bits_probe; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_2_bits_probe_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_2_bits_probe_need_data; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_2_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_2_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_2_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_2_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_2_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_2_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_2_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_3_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_3_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_3_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_bits_probe; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_3_bits_probe_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_bits_probe_need_data; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_in_3_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_in_3_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_in_3_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_in_3_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_in_3_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_3_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_in_3_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_3_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_in_3_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_in_3_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_in_3_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_in_3_bits_id; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_ready; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_valid; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_bits_miss; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_out_bits_miss_id; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_out_bits_miss_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_bits_miss_dirty; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_out_bits_miss_way_en; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_bits_probe; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_out_bits_probe_param; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_bits_probe_need_data; // @[DCacheWrapper.scala 169:21]
  wire [1:0] main_pipe_req_arb_io_out_bits_source; // @[DCacheWrapper.scala 169:21]
  wire [4:0] main_pipe_req_arb_io_out_bits_cmd; // @[DCacheWrapper.scala 169:21]
  wire [38:0] main_pipe_req_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 169:21]
  wire [35:0] main_pipe_req_arb_io_out_bits_addr; // @[DCacheWrapper.scala 169:21]
  wire [511:0] main_pipe_req_arb_io_out_bits_store_data; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_out_bits_store_mask; // @[DCacheWrapper.scala 169:21]
  wire [2:0] main_pipe_req_arb_io_out_bits_word_idx; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_out_bits_amo_data; // @[DCacheWrapper.scala 169:21]
  wire [7:0] main_pipe_req_arb_io_out_bits_amo_mask; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_bits_error; // @[DCacheWrapper.scala 169:21]
  wire  main_pipe_req_arb_io_out_bits_replace; // @[DCacheWrapper.scala 169:21]
  wire [3:0] main_pipe_req_arb_io_out_bits_replace_way_en; // @[DCacheWrapper.scala 169:21]
  wire [63:0] main_pipe_req_arb_io_out_bits_id; // @[DCacheWrapper.scala 169:21]
  wire [7:0] amoalu_io_mask; // @[MainPipe.scala 520:24]
  wire [4:0] amoalu_io_cmd; // @[MainPipe.scala 520:24]
  wire [63:0] amoalu_io_lhs; // @[MainPipe.scala 520:24]
  wire [63:0] amoalu_io_rhs; // @[MainPipe.scala 520:24]
  wire [63:0] amoalu_io_out; // @[MainPipe.scala 520:24]
  reg  s1_valid; // @[MainPipe.scala 222:25]
  wire [38:0] req_bits_vaddr = main_pipe_req_arb_io_out_bits_vaddr; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [7:0] s0_idx = req_bits_vaddr[13:6]; // @[L1Cache.scala 82:33]
  reg [38:0] s1_req_vaddr; // @[Reg.scala 16:16]
  wire [7:0] s1_idx = s1_req_vaddr[13:6]; // @[L1Cache.scala 82:33]
  wire  s1_s0_set_conflict = s1_valid & s0_idx == s1_idx; // @[MainPipe.scala 237:34]
  reg  s2_valid; // @[MainPipe.scala 311:25]
  reg [38:0] s2_req_vaddr; // @[Reg.scala 16:16]
  wire [7:0] s2_idx = s2_req_vaddr[13:6]; // @[L1Cache.scala 82:33]
  wire  s2_s0_set_conlict = s2_valid & s0_idx == s2_idx; // @[MainPipe.scala 339:33]
  reg  s3_valid; // @[MainPipe.scala 382:25]
  reg [38:0] s3_req_vaddr; // @[Reg.scala 16:16]
  wire [7:0] s3_idx = s3_req_vaddr[13:6]; // @[L1Cache.scala 82:33]
  wire  s3_s0_set_conflict = s3_valid & s3_idx == s0_idx; // @[MainPipe.scala 583:34]
  wire  set_conflict = s1_s0_set_conflict | s2_s0_set_conlict | s3_s0_set_conflict; // @[MainPipe.scala 157:62]
  wire [7:0] store_idx = io_store_req_bits_vaddr[13:6]; // @[L1Cache.scala 82:33]
  wire  s1_s0_set_conflict_store = s1_valid & store_idx == s1_idx; // @[MainPipe.scala 238:40]
  wire  s2_s0_set_conlict_store = s2_valid & store_idx == s2_idx; // @[MainPipe.scala 340:39]
  wire  s3_s0_set_conflict_store = s3_valid & s3_idx == store_idx; // @[MainPipe.scala 584:40]
  wire  store_set_conflict = s1_s0_set_conflict_store | s2_s0_set_conlict_store | s3_s0_set_conflict_store; // @[MainPipe.scala 161:80]
  reg  s2_req_replace; // @[Reg.scala 16:16]
  reg  s2_req_probe; // @[Reg.scala 16:16]
  reg  s2_req_miss; // @[Reg.scala 16:16]
  reg [1:0] s2_req_source; // @[Reg.scala 16:16]
  wire  _s2_can_go_to_s3_T_2 = s2_req_source == 2'h1; // @[MainPipe.scala 71:30]
  wire  _s2_can_go_to_s3_T_3 = s2_req_source == 2'h2; // @[MainPipe.scala 72:28]
  reg  s2_tag_match; // @[Reg.scala 16:16]
  reg [4:0] s2_req_cmd; // @[Reg.scala 16:16]
  wire  _c_cat_T_5 = s2_req_cmd == 5'h4; // @[package.scala 15:47]
  wire  _c_cat_T_6 = s2_req_cmd == 5'h9; // @[package.scala 15:47]
  wire  _c_cat_T_7 = s2_req_cmd == 5'ha; // @[package.scala 15:47]
  wire  _c_cat_T_8 = s2_req_cmd == 5'hb; // @[package.scala 15:47]
  wire  _c_cat_T_11 = _c_cat_T_5 | _c_cat_T_6 | _c_cat_T_7 | _c_cat_T_8; // @[package.scala 72:59]
  wire  _c_cat_T_12 = s2_req_cmd == 5'h8; // @[package.scala 15:47]
  wire  _c_cat_T_13 = s2_req_cmd == 5'hc; // @[package.scala 15:47]
  wire  _c_cat_T_14 = s2_req_cmd == 5'hd; // @[package.scala 15:47]
  wire  _c_cat_T_15 = s2_req_cmd == 5'he; // @[package.scala 15:47]
  wire  _c_cat_T_16 = s2_req_cmd == 5'hf; // @[package.scala 15:47]
  wire  _c_cat_T_20 = _c_cat_T_12 | _c_cat_T_13 | _c_cat_T_14 | _c_cat_T_15 | _c_cat_T_16; // @[package.scala 72:59]
  wire  _c_cat_T_21 = _c_cat_T_11 | _c_cat_T_20; // @[Consts.scala 82:44]
  wire  _c_cat_T_22 = s2_req_cmd == 5'h1 | s2_req_cmd == 5'h11 | s2_req_cmd == 5'h7 | _c_cat_T_21; // @[Consts.scala 85:76]
  wire  _c_cat_T_49 = _c_cat_T_22 | s2_req_cmd == 5'h3 | s2_req_cmd == 5'h6; // @[Consts.scala 86:64]
  reg [1:0] s2_hit_coh_state; // @[Reg.scala 16:16]
  wire [3:0] _T_34 = {_c_cat_T_22,_c_cat_T_49,s2_hit_coh_state}; // @[Cat.scala 31:58]
  wire  _T_92 = 4'h3 == _T_34; // @[Misc.scala 48:20]
  wire  _T_89 = 4'h2 == _T_34; // @[Misc.scala 48:20]
  wire  _T_86 = 4'h1 == _T_34; // @[Misc.scala 48:20]
  wire  _T_83 = 4'h7 == _T_34; // @[Misc.scala 48:20]
  wire  _T_80 = 4'h6 == _T_34; // @[Misc.scala 48:20]
  wire  _T_77 = 4'hf == _T_34; // @[Misc.scala 48:20]
  wire  _T_74 = 4'he == _T_34; // @[Misc.scala 48:20]
  wire  _T_71 = 4'h0 == _T_34; // @[Misc.scala 48:20]
  wire  _T_68 = 4'h5 == _T_34; // @[Misc.scala 48:20]
  wire  _T_65 = 4'h4 == _T_34; // @[Misc.scala 48:20]
  wire  _T_62 = 4'hd == _T_34; // @[Misc.scala 48:20]
  wire  _T_59 = 4'hc == _T_34; // @[Misc.scala 48:20]
  wire  s2_has_permission = _T_92 | (_T_89 | (_T_86 | (_T_83 | (_T_80 | (_T_77 | _T_74))))); // @[Misc.scala 34:9]
  wire  s2_hit = s2_tag_match & s2_has_permission; // @[MainPipe.scala 335:29]
  reg  s3_req_probe; // @[Reg.scala 16:16]
  wire  s3_probe_can_go = s3_req_probe & io_wb_ready; // @[MainPipe.scala 563:38]
  reg  s3_tag_match; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_state; // @[Reg.scala 16:16]
  reg [1:0] s3_req_probe_param; // @[Reg.scala 16:16]
  wire [3:0] _T_101 = {s3_req_probe_param,s3_coh_state}; // @[Cat.scala 31:58]
  wire  _T_158 = 4'h3 == _T_101; // @[Misc.scala 55:20]
  wire  _T_154 = 4'h2 == _T_101; // @[Misc.scala 55:20]
  wire  _T_150 = 4'h1 == _T_101; // @[Misc.scala 55:20]
  wire  _T_146 = 4'h0 == _T_101; // @[Misc.scala 55:20]
  wire  _T_142 = 4'h7 == _T_101; // @[Misc.scala 55:20]
  wire  _T_138 = 4'h6 == _T_101; // @[Misc.scala 55:20]
  wire  _T_134 = 4'h5 == _T_101; // @[Misc.scala 55:20]
  wire  _T_130 = 4'h4 == _T_101; // @[Misc.scala 55:20]
  wire  _T_126 = 4'hb == _T_101; // @[Misc.scala 55:20]
  wire  _T_122 = 4'ha == _T_101; // @[Misc.scala 55:20]
  wire  _T_118 = 4'h9 == _T_101; // @[Misc.scala 55:20]
  wire  _T_114 = 4'h8 == _T_101; // @[Misc.scala 55:20]
  wire [1:0] _T_137 = _T_134 ? 2'h1 : 2'h0; // @[Misc.scala 37:63]
  wire [1:0] _T_141 = _T_138 ? 2'h1 : _T_137; // @[Misc.scala 37:63]
  wire [1:0] _T_145 = _T_142 ? 2'h1 : _T_141; // @[Misc.scala 37:63]
  wire [1:0] _T_149 = _T_146 ? 2'h0 : _T_145; // @[Misc.scala 37:63]
  wire [1:0] _T_153 = _T_150 ? 2'h1 : _T_149; // @[Misc.scala 37:63]
  wire [1:0] _T_157 = _T_154 ? 2'h2 : _T_153; // @[Misc.scala 37:63]
  wire [1:0] probe_new_coh_state = _T_158 ? 2'h2 : _T_157; // @[Misc.scala 37:63]
  wire  _probe_update_meta_T_1 = s3_coh_state == probe_new_coh_state; // @[Metadata.scala 45:46]
  wire  _probe_update_meta_T_2 = ~_probe_update_meta_T_1; // @[Metadata.scala 46:40]
  wire  probe_update_meta = s3_req_probe & s3_tag_match & _probe_update_meta_T_2; // @[MainPipe.scala 404:56]
  reg [1:0] s3_req_source; // @[Reg.scala 16:16]
  wire  _s3_store_can_go_T = s3_req_source == 2'h1; // @[MainPipe.scala 71:30]
  wire  _s3_store_can_go_T_1 = ~s3_req_probe; // @[MainPipe.scala 564:43]
  wire  _s3_store_can_go_T_2 = _s3_store_can_go_T & ~s3_req_probe; // @[MainPipe.scala 564:40]
  reg [1:0] s3_hit_coh_state; // @[Reg.scala 16:16]
  reg [1:0] s3_new_hit_coh_state; // @[Reg.scala 16:16]
  wire  _store_update_meta_T_3 = s3_hit_coh_state == s3_new_hit_coh_state; // @[Metadata.scala 45:46]
  wire  _store_update_meta_T_4 = ~_store_update_meta_T_3; // @[Metadata.scala 46:40]
  wire  store_update_meta = _s3_store_can_go_T_2 & _store_update_meta_T_4; // @[MainPipe.scala 405:59]
  reg  s3_req_miss; // @[Reg.scala 16:16]
  reg  s3_store_hit; // @[Reg.scala 16:16]
  wire  _s3_can_do_amo_T_2 = s3_req_source == 2'h2; // @[MainPipe.scala 452:70]
  reg  s3_amo_hit; // @[Reg.scala 16:16]
  wire  s3_can_do_amo = s3_req_miss & _s3_store_can_go_T_1 & s3_req_source == 2'h2 | s3_amo_hit; // @[MainPipe.scala 452:88]
  reg [4:0] s3_req_cmd; // @[Reg.scala 16:16]
  wire  _s3_can_do_amo_write_T_3 = s3_req_cmd == 5'h7; // @[CacheConstants.scala 58:66]
  wire  _s3_can_do_amo_write_T_11 = s3_req_cmd == 5'h4 | s3_req_cmd == 5'h9 | s3_req_cmd == 5'ha | s3_req_cmd == 5'hb; // @[CacheConstants.scala 53:90]
  wire  _s3_can_do_amo_write_T_20 = s3_req_cmd == 5'h8 | s3_req_cmd == 5'hc | s3_req_cmd == 5'hd | s3_req_cmd == 5'he |
    s3_req_cmd == 5'hf; // @[CacheConstants.scala 54:114]
  wire  _s3_can_do_amo_write_T_21 = _s3_can_do_amo_write_T_11 | _s3_can_do_amo_write_T_20; // @[CacheConstants.scala 55:44]
  wire  _s3_can_do_amo_write_T_22 = s3_req_cmd == 5'h1 | s3_req_cmd == 5'h11 | s3_req_cmd == 5'h7 |
    _s3_can_do_amo_write_T_21; // @[CacheConstants.scala 58:80]
  wire  _s3_sc_T_2 = _s3_store_can_go_T_1 & _s3_can_do_amo_T_2; // @[MainPipe.scala 447:29]
  wire  s3_sc = _s3_store_can_go_T_1 & _s3_can_do_amo_T_2 & _s3_can_do_amo_write_T_3; // @[MainPipe.scala 447:45]
  reg [5:0] lrsc_count; // @[MainPipe.scala 443:27]
  wire  lrsc_valid = lrsc_count > 6'h8; // @[MainPipe.scala 444:31]
  reg [35:0] lrsc_addr; // @[MainPipe.scala 445:23]
  reg [35:0] s3_req_addr; // @[Reg.scala 16:16]
  wire [35:0] _s3_lrsc_addr_match_T_1 = {s3_req_addr[35:6], 6'h0}; // @[L1Cache.scala 85:59]
  wire  s3_lrsc_addr_match = lrsc_valid & lrsc_addr == _s3_lrsc_addr_match_T_1; // @[MainPipe.scala 448:39]
  wire  s3_sc_fail = s3_sc & ~s3_lrsc_addr_match; // @[MainPipe.scala 449:26]
  wire  _s3_can_do_amo_write_T_24 = ~s3_sc_fail; // @[MainPipe.scala 453:69]
  wire  s3_can_do_amo_write = s3_can_do_amo & _s3_can_do_amo_write_T_22 & ~s3_sc_fail; // @[MainPipe.scala 453:66]
  wire  update_data = s3_req_miss | s3_store_hit | s3_can_do_amo_write; // @[MainPipe.scala 513:49]
  wire  _s3_store_can_go_T_7 = io_data_write_ready | ~update_data; // @[MainPipe.scala 564:128]
  wire  s3_store_can_go = _s3_store_can_go_T & ~s3_req_probe & (io_data_write_ready | ~update_data); // @[MainPipe.scala 564:104]
  wire  amo_update_meta = _s3_can_do_amo_T_2 & _s3_store_can_go_T_1 & _store_update_meta_T_4; // @[MainPipe.scala 406:55]
  reg  s3_s_amoalu; // @[MainPipe.scala 518:28]
  wire  amo_wait_amoalu = _s3_can_do_amo_T_2 & s3_req_cmd != 5'h6 & s3_req_cmd != 5'h7; // @[MainPipe.scala 407:62]
  wire  _s3_amo_can_go_T_7 = s3_s_amoalu | ~amo_wait_amoalu; // @[MainPipe.scala 565:136]
  wire  s3_amo_can_go = s3_amo_hit & _s3_store_can_go_T_7 & (s3_s_amoalu | ~amo_wait_amoalu); // @[MainPipe.scala 565:120]
  wire  _s3_miss_can_go_T_5 = s3_req_miss & _s3_store_can_go_T_7; // @[MainPipe.scala 567:47]
  wire  _s3_miss_can_go_T_8 = _s3_miss_can_go_T_5 & _s3_amo_can_go_T_7; // @[MainPipe.scala 568:43]
  wire  _s3_miss_can_go_T_9 = _s3_miss_can_go_T_8 & io_tag_write_ready; // @[MainPipe.scala 569:39]
  wire  s3_miss_can_go = _s3_miss_can_go_T_9 & io_wb_ready; // @[MainPipe.scala 570:24]
  reg  s3_req_replace; // @[Reg.scala 16:16]
  wire  s3_replace_nothing = s3_req_replace & s3_coh_state == 2'h0; // @[MainPipe.scala 572:43]
  wire  s3_replace_can_go = s3_req_replace & (s3_replace_nothing | io_wb_ready); // @[MainPipe.scala 573:42]
  wire  s3_can_go = s3_probe_can_go | s3_store_can_go | s3_amo_can_go | s3_miss_can_go | s3_replace_can_go; // @[MainPipe.scala 574:89]
  wire  s3_ready = ~s3_valid | s3_can_go; // @[MainPipe.scala 582:25]
  wire  s2_can_go_to_s3 = (s2_req_replace | s2_req_probe | s2_req_miss | (_s2_can_go_to_s3_T_2 | _s2_can_go_to_s3_T_3)
     & s2_hit) & s3_ready; // @[MainPipe.scala 343:119]
  reg  s2_can_go_to_mq; // @[Reg.scala 16:16]
  wire  s2_can_go = s2_can_go_to_s3 | s2_can_go_to_mq; // @[MainPipe.scala 346:35]
  wire  s2_ready = ~s2_valid | s2_can_go; // @[MainPipe.scala 354:25]
  reg  s1_need_data; // @[Reg.scala 16:16]
  wire  s1_can_go = s2_ready & (io_data_read_ready | ~s1_need_data); // @[MainPipe.scala 228:28]
  wire  s1_ready = ~s1_valid | s1_can_go; // @[MainPipe.scala 236:25]
  wire  _store_req_ready_T_1 = io_tag_read_ready & s1_ready; // @[MainPipe.scala 186:62]
  wire  _store_req_ready_T_4 = ~io_probe_req_valid; // @[MainPipe.scala 187:5]
  wire  _store_req_ready_T_5 = io_tag_read_ready & s1_ready & ~store_set_conflict & _store_req_ready_T_4; // @[MainPipe.scala 186:97]
  wire  _s0_can_go_T_2 = ~set_conflict; // @[MainPipe.scala 191:74]
  wire  s0_can_go = _store_req_ready_T_1 & ~set_conflict; // @[MainPipe.scala 191:71]
  wire  req_valid = main_pipe_req_arb_io_out_valid; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire  s0_fire = req_valid & s0_can_go; // @[MainPipe.scala 192:27]
  wire [63:0] req_bits_store_mask = main_pipe_req_arb_io_out_bits_store_mask; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [7:0] bank_write = {|req_bits_store_mask[63:56],|req_bits_store_mask[55:48],|req_bits_store_mask[47:40],|
    req_bits_store_mask[39:32],|req_bits_store_mask[31:24],|req_bits_store_mask[23:16],|req_bits_store_mask[15:8],|
    req_bits_store_mask[7:0]}; // @[MainPipe.scala 194:104]
  wire [7:0] bank_full_write = {&req_bits_store_mask[63:56],&req_bits_store_mask[55:48],&req_bits_store_mask[47:40],&
    req_bits_store_mask[39:32],&req_bits_store_mask[31:24],&req_bits_store_mask[23:16],&req_bits_store_mask[15:8],&
    req_bits_store_mask[7:0]}; // @[MainPipe.scala 195:110]
  wire [7:0] _banked_store_rmask_T = ~bank_full_write; // @[MainPipe.scala 198:41]
  wire [7:0] banked_store_rmask = bank_write & _banked_store_rmask_T; // @[MainPipe.scala 198:39]
  wire  req_bits_probe = main_pipe_req_arb_io_out_bits_probe; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire  _store_need_data_T = ~req_bits_probe; // @[MainPipe.scala 202:25]
  wire [1:0] req_bits_source = main_pipe_req_arb_io_out_bits_source; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire  _store_need_data_T_1 = req_bits_source == 2'h1; // @[MainPipe.scala 71:30]
  wire  store_need_data = ~req_bits_probe & _store_need_data_T_1 & |banked_store_rmask; // @[MainPipe.scala 202:57]
  wire  _amo_need_data_T_1 = req_bits_source == 2'h2; // @[MainPipe.scala 72:28]
  wire  amo_need_data = _store_need_data_T & _amo_need_data_T_1; // @[MainPipe.scala 204:37]
  wire  req_bits_miss = main_pipe_req_arb_io_out_bits_miss; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire  req_bits_replace = main_pipe_req_arb_io_out_bits_replace; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire  banked_need_data = store_need_data | req_bits_probe | amo_need_data | req_bits_miss | req_bits_replace; // @[MainPipe.scala 208:96]
  reg  s1_req_miss; // @[Reg.scala 16:16]
  reg [2:0] s1_req_miss_id; // @[Reg.scala 16:16]
  reg [1:0] s1_req_miss_param; // @[Reg.scala 16:16]
  reg  s1_req_miss_dirty; // @[Reg.scala 16:16]
  reg [3:0] s1_req_miss_way_en; // @[Reg.scala 16:16]
  reg  s1_req_probe; // @[Reg.scala 16:16]
  reg [1:0] s1_req_probe_param; // @[Reg.scala 16:16]
  reg  s1_req_probe_need_data; // @[Reg.scala 16:16]
  reg [1:0] s1_req_source; // @[Reg.scala 16:16]
  reg [4:0] s1_req_cmd; // @[Reg.scala 16:16]
  reg [35:0] s1_req_addr; // @[Reg.scala 16:16]
  reg [511:0] s1_req_store_data; // @[Reg.scala 16:16]
  reg [63:0] s1_req_store_mask; // @[Reg.scala 16:16]
  reg [2:0] s1_req_word_idx; // @[Reg.scala 16:16]
  reg [63:0] s1_req_amo_data; // @[Reg.scala 16:16]
  reg [7:0] s1_req_amo_mask; // @[Reg.scala 16:16]
  reg  s1_req_error; // @[Reg.scala 16:16]
  reg  s1_req_replace; // @[Reg.scala 16:16]
  reg [3:0] s1_req_replace_way_en; // @[Reg.scala 16:16]
  reg [63:0] s1_req_id; // @[Reg.scala 16:16]
  wire [63:0] req_bits_id = main_pipe_req_arb_io_out_bits_id; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [3:0] req_bits_replace_way_en = main_pipe_req_arb_io_out_bits_replace_way_en; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire  req_bits_error = main_pipe_req_arb_io_out_bits_error; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [7:0] req_bits_amo_mask = main_pipe_req_arb_io_out_bits_amo_mask; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [63:0] req_bits_amo_data = main_pipe_req_arb_io_out_bits_amo_data; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [2:0] req_bits_word_idx = main_pipe_req_arb_io_out_bits_word_idx; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [511:0] req_bits_store_data = main_pipe_req_arb_io_out_bits_store_data; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [35:0] req_bits_addr = main_pipe_req_arb_io_out_bits_addr; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [4:0] req_bits_cmd = main_pipe_req_arb_io_out_bits_cmd; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire  req_bits_probe_need_data = main_pipe_req_arb_io_out_bits_probe_need_data; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [1:0] req_bits_probe_param = main_pipe_req_arb_io_out_bits_probe_param; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [3:0] req_bits_miss_way_en = main_pipe_req_arb_io_out_bits_miss_way_en; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire  req_bits_miss_dirty = main_pipe_req_arb_io_out_bits_miss_dirty; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [1:0] req_bits_miss_param = main_pipe_req_arb_io_out_bits_miss_param; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  wire [2:0] req_bits_miss_id = main_pipe_req_arb_io_out_bits_miss_id; // @[MainPipe.scala 171:17 DCacheWrapper.scala 174:9]
  reg [7:0] s1_banked_store_wmask; // @[Reg.scala 16:16]
  reg  s1_need_tag; // @[Reg.scala 16:16]
  wire  s1_fire = s1_valid & s1_can_go; // @[MainPipe.scala 229:26]
  wire  _GEN_25 = s1_fire ? 1'h0 : s1_valid; // @[MainPipe.scala 233:24 234:14 222:25]
  wire  _GEN_26 = s0_fire | _GEN_25; // @[MainPipe.scala 231:18 232:14]
  reg  REG_2; // @[MainPipe.scala 243:27]
  reg [1:0] REG_3_0; // @[MainPipe.scala 243:82]
  reg [1:0] REG_3_1; // @[MainPipe.scala 243:82]
  reg [1:0] REG_3_2; // @[MainPipe.scala 243:82]
  reg [1:0] REG_3_3; // @[MainPipe.scala 243:82]
  wire [1:0] meta_resp_0 = REG_2 ? io_meta_resp_0_coh_state : REG_3_0; // @[MainPipe.scala 243:19]
  wire [1:0] meta_resp_1 = REG_2 ? io_meta_resp_1_coh_state : REG_3_1; // @[MainPipe.scala 243:19]
  wire [1:0] meta_resp_2 = REG_2 ? io_meta_resp_2_coh_state : REG_3_2; // @[MainPipe.scala 243:19]
  wire [1:0] meta_resp_3 = REG_2 ? io_meta_resp_3_coh_state : REG_3_3; // @[MainPipe.scala 243:19]
  reg  REG_4; // @[MainPipe.scala 244:26]
  reg [23:0] REG_5_0; // @[MainPipe.scala 244:94]
  reg [23:0] REG_5_1; // @[MainPipe.scala 244:94]
  reg [23:0] REG_5_2; // @[MainPipe.scala 244:94]
  reg [23:0] REG_5_3; // @[MainPipe.scala 244:94]
  wire [23:0] tag_resp_0 = REG_4 ? io_tag_resp_0[23:0] : REG_5_0; // @[MainPipe.scala 244:18]
  wire [23:0] tag_resp_1 = REG_4 ? io_tag_resp_1[23:0] : REG_5_1; // @[MainPipe.scala 244:18]
  wire [23:0] tag_resp_2 = REG_4 ? io_tag_resp_2[23:0] : REG_5_2; // @[MainPipe.scala 244:18]
  wire [23:0] tag_resp_3 = REG_4 ? io_tag_resp_3[23:0] : REG_5_3; // @[MainPipe.scala 244:18]
  reg  REG_8; // @[MainPipe.scala 247:30]
  reg [29:0] REG_9_0; // @[MainPipe.scala 247:61]
  reg [29:0] REG_9_1; // @[MainPipe.scala 247:61]
  reg [29:0] REG_9_2; // @[MainPipe.scala 247:61]
  reg [29:0] REG_9_3; // @[MainPipe.scala 247:61]
  wire [29:0] enc_tag_resp_0 = REG_8 ? io_tag_resp_0 : REG_9_0; // @[MainPipe.scala 247:22]
  wire [29:0] enc_tag_resp_1 = REG_8 ? io_tag_resp_1 : REG_9_1; // @[MainPipe.scala 247:22]
  wire [29:0] enc_tag_resp_2 = REG_8 ? io_tag_resp_2 : REG_9_2; // @[MainPipe.scala 247:22]
  wire [29:0] enc_tag_resp_3 = REG_8 ? io_tag_resp_3 : REG_9_3; // @[MainPipe.scala 247:22]
  wire [3:0] s1_tag_eq_way = {tag_resp_3 == s1_req_addr[35:12],tag_resp_2 == s1_req_addr[35:12],tag_resp_1 ==
    s1_req_addr[35:12],tag_resp_0 == s1_req_addr[35:12]}; // @[MainPipe.scala 250:80]
  wire  _s1_tag_match_way_T_1 = meta_resp_0 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_2 = s1_tag_eq_way[0] & _s1_tag_match_way_T_1; // @[MainPipe.scala 251:62]
  wire  _s1_tag_match_way_T_4 = meta_resp_1 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_5 = s1_tag_eq_way[1] & _s1_tag_match_way_T_4; // @[MainPipe.scala 251:62]
  wire  _s1_tag_match_way_T_7 = meta_resp_2 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_8 = s1_tag_eq_way[2] & _s1_tag_match_way_T_7; // @[MainPipe.scala 251:62]
  wire  _s1_tag_match_way_T_10 = meta_resp_3 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_11 = s1_tag_eq_way[3] & _s1_tag_match_way_T_10; // @[MainPipe.scala 251:62]
  wire [3:0] s1_tag_match_way = {_s1_tag_match_way_T_11,_s1_tag_match_way_T_8,_s1_tag_match_way_T_5,
    _s1_tag_match_way_T_2}; // @[MainPipe.scala 251:99]
  wire  s1_tag_match = |s1_tag_match_way; // @[MainPipe.scala 252:39]
  wire [23:0] _s1_hit_tag_T_4 = s1_tag_match_way[0] ? tag_resp_0 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_5 = s1_tag_match_way[1] ? tag_resp_1 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_6 = s1_tag_match_way[2] ? tag_resp_2 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_7 = s1_tag_match_way[3] ? tag_resp_3 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_8 = _s1_hit_tag_T_4 | _s1_hit_tag_T_5; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_9 = _s1_hit_tag_T_8 | _s1_hit_tag_T_6; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_10 = _s1_hit_tag_T_9 | _s1_hit_tag_T_7; // @[Mux.scala 27:73]
  wire [23:0] s1_hit_tag = s1_tag_match ? _s1_hit_tag_T_10 : s1_req_addr[35:12]; // @[MainPipe.scala 254:23]
  wire [1:0] _s1_hit_coh_T_4 = s1_tag_match_way[0] ? meta_resp_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_5 = s1_tag_match_way[1] ? meta_resp_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_6 = s1_tag_match_way[2] ? meta_resp_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_7 = s1_tag_match_way[3] ? meta_resp_3 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_8 = _s1_hit_coh_T_4 | _s1_hit_coh_T_5; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_9 = _s1_hit_coh_T_8 | _s1_hit_coh_T_6; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_10 = _s1_hit_coh_T_9 | _s1_hit_coh_T_7; // @[Mux.scala 27:73]
  wire [1:0] s1_hit_coh_state = s1_tag_match ? _s1_hit_coh_T_10 : 2'h0; // @[MainPipe.scala 255:38]
  wire [29:0] _s1_encTag_T_4 = s1_tag_match_way[0] ? enc_tag_resp_0 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_5 = s1_tag_match_way[1] ? enc_tag_resp_1 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_6 = s1_tag_match_way[2] ? enc_tag_resp_2 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_7 = s1_tag_match_way[3] ? enc_tag_resp_3 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_8 = _s1_encTag_T_4 | _s1_encTag_T_5; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_9 = _s1_encTag_T_8 | _s1_encTag_T_6; // @[Mux.scala 27:73]
  wire [29:0] s1_encTag = _s1_encTag_T_9 | _s1_encTag_T_7; // @[Mux.scala 27:73]
  wire  _s1_flag_error_T_10 = s1_tag_match_way[0] & io_error_flag_resp_0 | s1_tag_match_way[1] & io_error_flag_resp_1 |
    s1_tag_match_way[2] & io_error_flag_resp_2 | s1_tag_match_way[3] & io_error_flag_resp_3; // @[Mux.scala 27:73]
  wire  s1_flag_error = s1_tag_match & _s1_flag_error_T_10; // @[MainPipe.scala 257:26]
  wire [28:0] _s1_tag_error_syndromeUInt_T = 29'h1aaad5b & s1_encTag[28:0]; // @[ECC.scala 157:66]
  wire [28:0] _s1_tag_error_syndromeUInt_T_2 = 29'h233366d & s1_encTag[28:0]; // @[ECC.scala 157:66]
  wire [28:0] _s1_tag_error_syndromeUInt_T_4 = 29'h4c3c78e & s1_encTag[28:0]; // @[ECC.scala 157:66]
  wire [28:0] _s1_tag_error_syndromeUInt_T_6 = 29'h8fc07f0 & s1_encTag[28:0]; // @[ECC.scala 157:66]
  wire [28:0] _s1_tag_error_syndromeUInt_T_8 = 29'h10fff800 & s1_encTag[28:0]; // @[ECC.scala 157:66]
  wire [4:0] s1_tag_error_syndromeUInt = {^_s1_tag_error_syndromeUInt_T_8,^_s1_tag_error_syndromeUInt_T_6,^
    _s1_tag_error_syndromeUInt_T_4,^_s1_tag_error_syndromeUInt_T_2,^_s1_tag_error_syndromeUInt_T}; // @[ECC.scala 157:78]
  wire  s1_tag_error_correctable = |s1_tag_error_syndromeUInt; // @[ECC.scala 164:36]
  wire  s1_tag_error_uncorrectable_1 = ^s1_encTag; // @[ECC.scala 88:27]
  wire  s1_tag_error_uncorrectable_2 = ~s1_tag_error_uncorrectable_1 & s1_tag_error_correctable; // @[ECC.scala 196:47]
  wire  _s1_tag_error_T_1 = s1_tag_error_uncorrectable_1 | s1_tag_error_uncorrectable_2; // @[ECC.scala 32:27]
  wire  s1_tag_error = _s1_tag_error_T_1 & s1_need_tag; // @[MainPipe.scala 258:71]
  reg  s1_repl_way_en_REG; // @[MainPipe.scala 263:32]
  wire [3:0] _s1_repl_way_en_T = 4'h1 << io_replace_way_way; // @[OneHot.scala 57:35]
  reg [3:0] s1_repl_way_en_REG_1; // @[MainPipe.scala 263:80]
  wire [3:0] s1_repl_way_en = s1_repl_way_en_REG ? _s1_repl_way_en_T : s1_repl_way_en_REG_1; // @[MainPipe.scala 263:24]
  wire [23:0] _s1_repl_tag_T_4 = s1_repl_way_en[0] ? tag_resp_0 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_5 = s1_repl_way_en[1] ? tag_resp_1 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_6 = s1_repl_way_en[2] ? tag_resp_2 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_7 = s1_repl_way_en[3] ? tag_resp_3 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_8 = _s1_repl_tag_T_4 | _s1_repl_tag_T_5; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_9 = _s1_repl_tag_T_8 | _s1_repl_tag_T_6; // @[Mux.scala 27:73]
  wire [23:0] s1_repl_tag = _s1_repl_tag_T_9 | _s1_repl_tag_T_7; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_4 = s1_repl_way_en[0] ? meta_resp_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_5 = s1_repl_way_en[1] ? meta_resp_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_6 = s1_repl_way_en[2] ? meta_resp_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_7 = s1_repl_way_en[3] ? meta_resp_3 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_8 = _s1_repl_coh_T_4 | _s1_repl_coh_T_5; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_9 = _s1_repl_coh_T_8 | _s1_repl_coh_T_6; // @[Mux.scala 27:73]
  wire [1:0] s1_repl_coh_state = _s1_repl_coh_T_9 | _s1_repl_coh_T_7; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_4 = s1_req_miss_way_en[0] ? tag_resp_0 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_5 = s1_req_miss_way_en[1] ? tag_resp_1 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_6 = s1_req_miss_way_en[2] ? tag_resp_2 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_7 = s1_req_miss_way_en[3] ? tag_resp_3 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_8 = _s1_miss_tag_T_4 | _s1_miss_tag_T_5; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_9 = _s1_miss_tag_T_8 | _s1_miss_tag_T_6; // @[Mux.scala 27:73]
  wire [23:0] s1_miss_tag = _s1_miss_tag_T_9 | _s1_miss_tag_T_7; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_4 = s1_req_miss_way_en[0] ? meta_resp_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_5 = s1_req_miss_way_en[1] ? meta_resp_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_6 = s1_req_miss_way_en[2] ? meta_resp_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_7 = s1_req_miss_way_en[3] ? meta_resp_3 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_8 = _s1_miss_coh_T_4 | _s1_miss_coh_T_5; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_9 = _s1_miss_coh_T_8 | _s1_miss_coh_T_6; // @[Mux.scala 27:73]
  wire [1:0] s1_miss_coh_state = _s1_miss_coh_T_9 | _s1_miss_coh_T_7; // @[Mux.scala 27:73]
  wire  _s1_need_replacement_T = s1_req_source == 2'h1; // @[MainPipe.scala 71:30]
  wire  _s1_need_replacement_T_1 = ~s1_req_probe; // @[MainPipe.scala 272:63]
  wire  s1_need_replacement = (s1_req_miss | _s1_need_replacement_T & ~s1_req_probe) & ~s1_tag_match; // @[MainPipe.scala 272:78]
  wire [3:0] _s1_way_en_T = s1_need_replacement ? s1_repl_way_en : s1_tag_match_way; // @[MainPipe.scala 279:10]
  wire [3:0] _s1_way_en_T_1 = s1_req_miss ? s1_req_miss_way_en : _s1_way_en_T; // @[MainPipe.scala 276:8]
  wire [3:0] s1_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 273:22]
  wire [1:0] _s1_coh_T_4 = s1_req_replace_way_en[0] ? meta_resp_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_5 = s1_req_replace_way_en[1] ? meta_resp_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_6 = s1_req_replace_way_en[2] ? meta_resp_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_7 = s1_req_replace_way_en[3] ? meta_resp_3 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_8 = _s1_coh_T_4 | _s1_coh_T_5; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_9 = _s1_coh_T_8 | _s1_coh_T_6; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_10 = _s1_coh_T_9 | _s1_coh_T_7; // @[Mux.scala 27:73]
  wire  _s1_has_permission_c_cat_T_5 = s1_req_cmd == 5'h4; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_6 = s1_req_cmd == 5'h9; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_7 = s1_req_cmd == 5'ha; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_8 = s1_req_cmd == 5'hb; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_11 = _s1_has_permission_c_cat_T_5 | _s1_has_permission_c_cat_T_6 |
    _s1_has_permission_c_cat_T_7 | _s1_has_permission_c_cat_T_8; // @[package.scala 72:59]
  wire  _s1_has_permission_c_cat_T_12 = s1_req_cmd == 5'h8; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_13 = s1_req_cmd == 5'hc; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_14 = s1_req_cmd == 5'hd; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_15 = s1_req_cmd == 5'he; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_16 = s1_req_cmd == 5'hf; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_20 = _s1_has_permission_c_cat_T_12 | _s1_has_permission_c_cat_T_13 |
    _s1_has_permission_c_cat_T_14 | _s1_has_permission_c_cat_T_15 | _s1_has_permission_c_cat_T_16; // @[package.scala 72:59]
  wire  _s1_has_permission_c_cat_T_21 = _s1_has_permission_c_cat_T_11 | _s1_has_permission_c_cat_T_20; // @[Consts.scala 82:44]
  wire  _s1_has_permission_c_cat_T_22 = s1_req_cmd == 5'h1 | s1_req_cmd == 5'h11 | s1_req_cmd == 5'h7 |
    _s1_has_permission_c_cat_T_21; // @[Consts.scala 85:76]
  wire  _s1_has_permission_c_cat_T_49 = _s1_has_permission_c_cat_T_22 | s1_req_cmd == 5'h3 | s1_req_cmd == 5'h6; // @[Consts.scala 86:64]
  wire [3:0] _s1_has_permission_T = {_s1_has_permission_c_cat_T_22,_s1_has_permission_c_cat_T_49,s1_hit_coh_state}; // @[Cat.scala 31:58]
  wire  _s1_has_permission_T_40 = 4'he == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_43 = 4'hf == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_46 = 4'h6 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_49 = 4'h7 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_52 = 4'h1 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_55 = 4'h2 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_58 = 4'h3 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  s1_has_permission = _s1_has_permission_T_58 | (_s1_has_permission_T_55 | (_s1_has_permission_T_52 | (
    _s1_has_permission_T_49 | (_s1_has_permission_T_46 | (_s1_has_permission_T_43 | _s1_has_permission_T_40))))); // @[Misc.scala 34:9]
  wire  s1_hit = s1_tag_match & s1_has_permission; // @[MainPipe.scala 307:29]
  wire  _s1_pregen_can_go_to_mq_T_6 = s1_req_source == 2'h2; // @[MainPipe.scala 72:28]
  wire  s1_pregen_can_go_to_mq = ~s1_req_replace & _s1_need_replacement_T_1 & ~s1_req_miss & (_s1_need_replacement_T |
    _s1_pregen_can_go_to_mq_T_6) & ~s1_hit; // @[MainPipe.scala 308:117]
  reg [2:0] s2_req_miss_id; // @[Reg.scala 16:16]
  reg [1:0] s2_req_miss_param; // @[Reg.scala 16:16]
  reg  s2_req_miss_dirty; // @[Reg.scala 16:16]
  reg [1:0] s2_req_probe_param; // @[Reg.scala 16:16]
  reg  s2_req_probe_need_data; // @[Reg.scala 16:16]
  reg [35:0] s2_req_addr; // @[Reg.scala 16:16]
  reg [511:0] s2_req_store_data; // @[Reg.scala 16:16]
  reg [63:0] s2_req_store_mask; // @[Reg.scala 16:16]
  reg [2:0] s2_req_word_idx; // @[Reg.scala 16:16]
  reg [63:0] s2_req_amo_data; // @[Reg.scala 16:16]
  reg [7:0] s2_req_amo_mask; // @[Reg.scala 16:16]
  reg  s2_req_error; // @[Reg.scala 16:16]
  reg [63:0] s2_req_id; // @[Reg.scala 16:16]
  reg [3:0] s2_tag_match_way; // @[Reg.scala 16:16]
  wire [1:0] _T_61 = _T_59 ? 2'h1 : 2'h0; // @[Misc.scala 34:36]
  wire [1:0] _T_64 = _T_62 ? 2'h2 : _T_61; // @[Misc.scala 34:36]
  wire [1:0] _T_67 = _T_65 ? 2'h1 : _T_64; // @[Misc.scala 34:36]
  wire [1:0] _T_70 = _T_68 ? 2'h2 : _T_67; // @[Misc.scala 34:36]
  wire [1:0] _T_73 = _T_71 ? 2'h0 : _T_70; // @[Misc.scala 34:36]
  wire [1:0] _T_76 = _T_74 ? 2'h3 : _T_73; // @[Misc.scala 34:36]
  wire [1:0] _T_79 = _T_77 ? 2'h3 : _T_76; // @[Misc.scala 34:36]
  wire [1:0] _T_82 = _T_80 ? 2'h2 : _T_79; // @[Misc.scala 34:36]
  wire [1:0] _T_85 = _T_83 ? 2'h3 : _T_82; // @[Misc.scala 34:36]
  reg [23:0] s2_repl_tag; // @[Reg.scala 16:16]
  reg [1:0] s2_repl_coh_state; // @[Reg.scala 16:16]
  reg [3:0] s2_repl_way_en; // @[Reg.scala 16:16]
  reg  s2_need_replacement; // @[Reg.scala 16:16]
  reg  s2_need_data; // @[Reg.scala 16:16]
  reg [3:0] s2_way_en; // @[Reg.scala 16:16]
  reg [23:0] s2_tag; // @[Reg.scala 16:16]
  reg [1:0] s2_coh_state; // @[Reg.scala 16:16]
  reg [7:0] s2_banked_store_wmask; // @[Reg.scala 16:16]
  reg  s2_flag_error; // @[Reg.scala 16:16]
  reg  s2_tag_error; // @[Reg.scala 16:16]
  wire  s2_data_error = io_readline_error & s2_need_data & s2_coh_state != 2'h0; // @[MainPipe.scala 332:57]
  wire  s2_error = s2_flag_error | s2_tag_error | s2_data_error | s2_req_error; // @[MainPipe.scala 333:65]
  wire  _s2_amo_hit_T = ~s2_req_probe; // @[MainPipe.scala 336:30]
  wire  _s2_amo_hit_T_3 = s2_hit & ~s2_req_probe & ~s2_req_miss; // @[MainPipe.scala 336:44]
  wire  s2_amo_hit = s2_hit & ~s2_req_probe & ~s2_req_miss & _s2_can_go_to_s3_T_3; // @[MainPipe.scala 336:60]
  wire  s2_store_hit = _s2_amo_hit_T_3 & _s2_can_go_to_s3_T_2; // @[MainPipe.scala 337:62]
  wire  _T_94 = s2_valid & s2_can_go_to_s3; // @[MainPipe.scala 345:29]
  wire  s2_fire = s2_valid & s2_can_go; // @[MainPipe.scala 347:26]
  wire  _GEN_63 = s2_fire ? 1'h0 : s2_valid; // @[MainPipe.scala 351:24 352:14 311:25]
  wire  _GEN_64 = s1_fire | _GEN_63; // @[MainPipe.scala 349:18 350:14]
  wire  replay = ~io_miss_req_ready; // @[MainPipe.scala 355:16]
  reg  REG_12; // @[MainPipe.scala 358:27]
  reg [63:0] REG_13_0_raw_data; // @[MainPipe.scala 358:59]
  reg [63:0] REG_13_1_raw_data; // @[MainPipe.scala 358:59]
  reg [63:0] REG_13_2_raw_data; // @[MainPipe.scala 358:59]
  reg [63:0] REG_13_3_raw_data; // @[MainPipe.scala 358:59]
  reg [63:0] REG_13_4_raw_data; // @[MainPipe.scala 358:59]
  reg [63:0] REG_13_5_raw_data; // @[MainPipe.scala 358:59]
  reg [63:0] REG_13_6_raw_data; // @[MainPipe.scala 358:59]
  reg [63:0] REG_13_7_raw_data; // @[MainPipe.scala 358:59]
  wire [63:0] data_resp_0_raw_data = REG_12 ? io_data_resp_0_raw_data : REG_13_0_raw_data; // @[MainPipe.scala 358:19]
  wire [63:0] data_resp_1_raw_data = REG_12 ? io_data_resp_1_raw_data : REG_13_1_raw_data; // @[MainPipe.scala 358:19]
  wire [63:0] data_resp_2_raw_data = REG_12 ? io_data_resp_2_raw_data : REG_13_2_raw_data; // @[MainPipe.scala 358:19]
  wire [63:0] data_resp_3_raw_data = REG_12 ? io_data_resp_3_raw_data : REG_13_3_raw_data; // @[MainPipe.scala 358:19]
  wire [63:0] data_resp_4_raw_data = REG_12 ? io_data_resp_4_raw_data : REG_13_4_raw_data; // @[MainPipe.scala 358:19]
  wire [63:0] data_resp_5_raw_data = REG_12 ? io_data_resp_5_raw_data : REG_13_5_raw_data; // @[MainPipe.scala 358:19]
  wire [63:0] data_resp_6_raw_data = REG_12 ? io_data_resp_6_raw_data : REG_13_6_raw_data; // @[MainPipe.scala 358:19]
  wire [63:0] data_resp_7_raw_data = REG_12 ? io_data_resp_7_raw_data : REG_13_7_raw_data; // @[MainPipe.scala 358:19]
  wire [63:0] new_data = s2_req_store_data[63:0]; // @[DCacheWrapper.scala 153:9]
  wire [7:0] wmask = s2_amo_hit ? 8'h0 : s2_req_store_mask[7:0]; // @[MainPipe.scala 375:20]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_9 = wmask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_11 = wmask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_13 = wmask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_15 = wmask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_17 = wmask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_19 = wmask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_21 = wmask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_23 = wmask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_0_full_wmask = {_s2_store_data_merged_0_full_wmask_T_23,
    _s2_store_data_merged_0_full_wmask_T_21,_s2_store_data_merged_0_full_wmask_T_19,
    _s2_store_data_merged_0_full_wmask_T_17,_s2_store_data_merged_0_full_wmask_T_15,
    _s2_store_data_merged_0_full_wmask_T_13,_s2_store_data_merged_0_full_wmask_T_11,
    _s2_store_data_merged_0_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_0_T = ~s2_store_data_merged_0_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s2_store_data_merged_0_T_1 = _s2_store_data_merged_0_T & data_resp_0_raw_data; // @[MainPipe.scala 363:19]
  wire [63:0] _s2_store_data_merged_0_T_2 = s2_store_data_merged_0_full_wmask & new_data; // @[MainPipe.scala 363:45]
  wire [63:0] s2_store_data_merged_0 = _s2_store_data_merged_0_T_1 | _s2_store_data_merged_0_T_2; // @[MainPipe.scala 363:31]
  wire [63:0] new_data_1 = s2_req_store_data[127:64]; // @[DCacheWrapper.scala 153:9]
  wire [7:0] wmask_1 = s2_amo_hit ? 8'h0 : s2_req_store_mask[15:8]; // @[MainPipe.scala 375:20]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_9 = wmask_1[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_11 = wmask_1[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_13 = wmask_1[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_15 = wmask_1[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_17 = wmask_1[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_19 = wmask_1[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_21 = wmask_1[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_23 = wmask_1[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_1_full_wmask = {_s2_store_data_merged_1_full_wmask_T_23,
    _s2_store_data_merged_1_full_wmask_T_21,_s2_store_data_merged_1_full_wmask_T_19,
    _s2_store_data_merged_1_full_wmask_T_17,_s2_store_data_merged_1_full_wmask_T_15,
    _s2_store_data_merged_1_full_wmask_T_13,_s2_store_data_merged_1_full_wmask_T_11,
    _s2_store_data_merged_1_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_1_T = ~s2_store_data_merged_1_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s2_store_data_merged_1_T_1 = _s2_store_data_merged_1_T & data_resp_1_raw_data; // @[MainPipe.scala 363:19]
  wire [63:0] _s2_store_data_merged_1_T_2 = s2_store_data_merged_1_full_wmask & new_data_1; // @[MainPipe.scala 363:45]
  wire [63:0] s2_store_data_merged_1 = _s2_store_data_merged_1_T_1 | _s2_store_data_merged_1_T_2; // @[MainPipe.scala 363:31]
  wire [63:0] new_data_2 = s2_req_store_data[191:128]; // @[DCacheWrapper.scala 153:9]
  wire [7:0] wmask_2 = s2_amo_hit ? 8'h0 : s2_req_store_mask[23:16]; // @[MainPipe.scala 375:20]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_9 = wmask_2[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_11 = wmask_2[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_13 = wmask_2[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_15 = wmask_2[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_17 = wmask_2[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_19 = wmask_2[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_21 = wmask_2[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_23 = wmask_2[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_2_full_wmask = {_s2_store_data_merged_2_full_wmask_T_23,
    _s2_store_data_merged_2_full_wmask_T_21,_s2_store_data_merged_2_full_wmask_T_19,
    _s2_store_data_merged_2_full_wmask_T_17,_s2_store_data_merged_2_full_wmask_T_15,
    _s2_store_data_merged_2_full_wmask_T_13,_s2_store_data_merged_2_full_wmask_T_11,
    _s2_store_data_merged_2_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_2_T = ~s2_store_data_merged_2_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s2_store_data_merged_2_T_1 = _s2_store_data_merged_2_T & data_resp_2_raw_data; // @[MainPipe.scala 363:19]
  wire [63:0] _s2_store_data_merged_2_T_2 = s2_store_data_merged_2_full_wmask & new_data_2; // @[MainPipe.scala 363:45]
  wire [63:0] s2_store_data_merged_2 = _s2_store_data_merged_2_T_1 | _s2_store_data_merged_2_T_2; // @[MainPipe.scala 363:31]
  wire [63:0] new_data_3 = s2_req_store_data[255:192]; // @[DCacheWrapper.scala 153:9]
  wire [7:0] wmask_3 = s2_amo_hit ? 8'h0 : s2_req_store_mask[31:24]; // @[MainPipe.scala 375:20]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_9 = wmask_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_11 = wmask_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_13 = wmask_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_15 = wmask_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_17 = wmask_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_19 = wmask_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_21 = wmask_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_23 = wmask_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_3_full_wmask = {_s2_store_data_merged_3_full_wmask_T_23,
    _s2_store_data_merged_3_full_wmask_T_21,_s2_store_data_merged_3_full_wmask_T_19,
    _s2_store_data_merged_3_full_wmask_T_17,_s2_store_data_merged_3_full_wmask_T_15,
    _s2_store_data_merged_3_full_wmask_T_13,_s2_store_data_merged_3_full_wmask_T_11,
    _s2_store_data_merged_3_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_3_T = ~s2_store_data_merged_3_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s2_store_data_merged_3_T_1 = _s2_store_data_merged_3_T & data_resp_3_raw_data; // @[MainPipe.scala 363:19]
  wire [63:0] _s2_store_data_merged_3_T_2 = s2_store_data_merged_3_full_wmask & new_data_3; // @[MainPipe.scala 363:45]
  wire [63:0] s2_store_data_merged_3 = _s2_store_data_merged_3_T_1 | _s2_store_data_merged_3_T_2; // @[MainPipe.scala 363:31]
  wire [63:0] new_data_4 = s2_req_store_data[319:256]; // @[DCacheWrapper.scala 153:9]
  wire [7:0] wmask_4 = s2_amo_hit ? 8'h0 : s2_req_store_mask[39:32]; // @[MainPipe.scala 375:20]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_9 = wmask_4[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_11 = wmask_4[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_13 = wmask_4[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_15 = wmask_4[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_17 = wmask_4[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_19 = wmask_4[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_21 = wmask_4[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_23 = wmask_4[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_4_full_wmask = {_s2_store_data_merged_4_full_wmask_T_23,
    _s2_store_data_merged_4_full_wmask_T_21,_s2_store_data_merged_4_full_wmask_T_19,
    _s2_store_data_merged_4_full_wmask_T_17,_s2_store_data_merged_4_full_wmask_T_15,
    _s2_store_data_merged_4_full_wmask_T_13,_s2_store_data_merged_4_full_wmask_T_11,
    _s2_store_data_merged_4_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_4_T = ~s2_store_data_merged_4_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s2_store_data_merged_4_T_1 = _s2_store_data_merged_4_T & data_resp_4_raw_data; // @[MainPipe.scala 363:19]
  wire [63:0] _s2_store_data_merged_4_T_2 = s2_store_data_merged_4_full_wmask & new_data_4; // @[MainPipe.scala 363:45]
  wire [63:0] s2_store_data_merged_4 = _s2_store_data_merged_4_T_1 | _s2_store_data_merged_4_T_2; // @[MainPipe.scala 363:31]
  wire [63:0] new_data_5 = s2_req_store_data[383:320]; // @[DCacheWrapper.scala 153:9]
  wire [7:0] wmask_5 = s2_amo_hit ? 8'h0 : s2_req_store_mask[47:40]; // @[MainPipe.scala 375:20]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_9 = wmask_5[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_11 = wmask_5[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_13 = wmask_5[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_15 = wmask_5[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_17 = wmask_5[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_19 = wmask_5[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_21 = wmask_5[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_23 = wmask_5[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_5_full_wmask = {_s2_store_data_merged_5_full_wmask_T_23,
    _s2_store_data_merged_5_full_wmask_T_21,_s2_store_data_merged_5_full_wmask_T_19,
    _s2_store_data_merged_5_full_wmask_T_17,_s2_store_data_merged_5_full_wmask_T_15,
    _s2_store_data_merged_5_full_wmask_T_13,_s2_store_data_merged_5_full_wmask_T_11,
    _s2_store_data_merged_5_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_5_T = ~s2_store_data_merged_5_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s2_store_data_merged_5_T_1 = _s2_store_data_merged_5_T & data_resp_5_raw_data; // @[MainPipe.scala 363:19]
  wire [63:0] _s2_store_data_merged_5_T_2 = s2_store_data_merged_5_full_wmask & new_data_5; // @[MainPipe.scala 363:45]
  wire [63:0] s2_store_data_merged_5 = _s2_store_data_merged_5_T_1 | _s2_store_data_merged_5_T_2; // @[MainPipe.scala 363:31]
  wire [63:0] new_data_6 = s2_req_store_data[447:384]; // @[DCacheWrapper.scala 153:9]
  wire [7:0] wmask_6 = s2_amo_hit ? 8'h0 : s2_req_store_mask[55:48]; // @[MainPipe.scala 375:20]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_9 = wmask_6[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_11 = wmask_6[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_13 = wmask_6[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_15 = wmask_6[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_17 = wmask_6[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_19 = wmask_6[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_21 = wmask_6[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_23 = wmask_6[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_6_full_wmask = {_s2_store_data_merged_6_full_wmask_T_23,
    _s2_store_data_merged_6_full_wmask_T_21,_s2_store_data_merged_6_full_wmask_T_19,
    _s2_store_data_merged_6_full_wmask_T_17,_s2_store_data_merged_6_full_wmask_T_15,
    _s2_store_data_merged_6_full_wmask_T_13,_s2_store_data_merged_6_full_wmask_T_11,
    _s2_store_data_merged_6_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_6_T = ~s2_store_data_merged_6_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s2_store_data_merged_6_T_1 = _s2_store_data_merged_6_T & data_resp_6_raw_data; // @[MainPipe.scala 363:19]
  wire [63:0] _s2_store_data_merged_6_T_2 = s2_store_data_merged_6_full_wmask & new_data_6; // @[MainPipe.scala 363:45]
  wire [63:0] s2_store_data_merged_6 = _s2_store_data_merged_6_T_1 | _s2_store_data_merged_6_T_2; // @[MainPipe.scala 363:31]
  wire [63:0] new_data_7 = s2_req_store_data[511:448]; // @[DCacheWrapper.scala 153:9]
  wire [7:0] wmask_7 = s2_amo_hit ? 8'h0 : s2_req_store_mask[63:56]; // @[MainPipe.scala 375:20]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_9 = wmask_7[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_11 = wmask_7[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_13 = wmask_7[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_15 = wmask_7[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_17 = wmask_7[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_19 = wmask_7[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_21 = wmask_7[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_23 = wmask_7[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_7_full_wmask = {_s2_store_data_merged_7_full_wmask_T_23,
    _s2_store_data_merged_7_full_wmask_T_21,_s2_store_data_merged_7_full_wmask_T_19,
    _s2_store_data_merged_7_full_wmask_T_17,_s2_store_data_merged_7_full_wmask_T_15,
    _s2_store_data_merged_7_full_wmask_T_13,_s2_store_data_merged_7_full_wmask_T_11,
    _s2_store_data_merged_7_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_7_T = ~s2_store_data_merged_7_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s2_store_data_merged_7_T_1 = _s2_store_data_merged_7_T & data_resp_7_raw_data; // @[MainPipe.scala 363:19]
  wire [63:0] _s2_store_data_merged_7_T_2 = s2_store_data_merged_7_full_wmask & new_data_7; // @[MainPipe.scala 363:45]
  wire [63:0] s2_store_data_merged_7 = _s2_store_data_merged_7_T_1 | _s2_store_data_merged_7_T_2; // @[MainPipe.scala 363:31]
  reg [2:0] s3_req_miss_id; // @[Reg.scala 16:16]
  reg [1:0] s3_req_miss_param; // @[Reg.scala 16:16]
  reg  s3_req_miss_dirty; // @[Reg.scala 16:16]
  reg  s3_req_probe_need_data; // @[Reg.scala 16:16]
  reg [2:0] s3_req_word_idx; // @[Reg.scala 16:16]
  reg [63:0] s3_req_amo_data; // @[Reg.scala 16:16]
  reg [7:0] s3_req_amo_mask; // @[Reg.scala 16:16]
  reg  s3_req_error; // @[Reg.scala 16:16]
  reg [63:0] s3_req_id; // @[Reg.scala 16:16]
  reg [23:0] s3_tag; // @[Reg.scala 16:16]
  reg  s3_hit; // @[Reg.scala 16:16]
  reg [3:0] s3_way_en; // @[Reg.scala 16:16]
  reg [7:0] s3_banked_store_wmask; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_0; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_1; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_2; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_3; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_4; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_5; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_6; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_7; // @[Reg.scala 16:16]
  reg [63:0] s3_data_word; // @[Reg.scala 16:16]
  wire [63:0] _GEN_105 = 3'h1 == s2_req_word_idx ? s2_store_data_merged_1 : s2_store_data_merged_0; // @[Reg.scala 17:{22,22}]
  wire [63:0] _GEN_106 = 3'h2 == s2_req_word_idx ? s2_store_data_merged_2 : _GEN_105; // @[Reg.scala 17:{22,22}]
  wire [63:0] _GEN_107 = 3'h3 == s2_req_word_idx ? s2_store_data_merged_3 : _GEN_106; // @[Reg.scala 17:{22,22}]
  wire [63:0] _GEN_108 = 3'h4 == s2_req_word_idx ? s2_store_data_merged_4 : _GEN_107; // @[Reg.scala 17:{22,22}]
  reg [63:0] s3_data_0; // @[Reg.scala 16:16]
  reg [63:0] s3_data_1; // @[Reg.scala 16:16]
  reg [63:0] s3_data_2; // @[Reg.scala 16:16]
  reg [63:0] s3_data_3; // @[Reg.scala 16:16]
  reg [63:0] s3_data_4; // @[Reg.scala 16:16]
  reg [63:0] s3_data_5; // @[Reg.scala 16:16]
  reg [63:0] s3_data_6; // @[Reg.scala 16:16]
  reg [63:0] s3_data_7; // @[Reg.scala 16:16]
  reg  s3_error; // @[Reg.scala 16:16]
  wire [2:0] _T_116 = _T_114 ? 3'h5 : 3'h0; // @[Misc.scala 37:36]
  wire [2:0] _T_120 = _T_118 ? 3'h2 : _T_116; // @[Misc.scala 37:36]
  wire [2:0] _T_124 = _T_122 ? 3'h1 : _T_120; // @[Misc.scala 37:36]
  wire [2:0] _T_128 = _T_126 ? 3'h1 : _T_124; // @[Misc.scala 37:36]
  wire [2:0] _T_132 = _T_130 ? 3'h5 : _T_128; // @[Misc.scala 37:36]
  wire [2:0] _T_136 = _T_134 ? 3'h4 : _T_132; // @[Misc.scala 37:36]
  wire [2:0] _T_140 = _T_138 ? 3'h0 : _T_136; // @[Misc.scala 37:36]
  wire [2:0] _T_144 = _T_142 ? 3'h0 : _T_140; // @[Misc.scala 37:36]
  wire [2:0] _T_148 = _T_146 ? 3'h5 : _T_144; // @[Misc.scala 37:36]
  wire [2:0] _T_152 = _T_150 ? 3'h4 : _T_148; // @[Misc.scala 37:36]
  wire [2:0] _T_156 = _T_154 ? 3'h3 : _T_152; // @[Misc.scala 37:36]
  wire [2:0] probe_shrink_param = _T_158 ? 3'h3 : _T_156; // @[Misc.scala 37:36]
  reg  s3_need_replacement; // @[Reg.scala 16:16]
  wire  _update_meta_T_3 = ~s3_req_replace; // @[MainPipe.scala 408:104]
  wire  update_meta = (s3_req_miss | probe_update_meta | store_update_meta | amo_update_meta) & ~s3_req_replace; // @[MainPipe.scala 408:101]
  wire  _miss_new_coh_c_cat_T_48 = s3_req_cmd == 5'h6; // @[Consts.scala 86:71]
  wire  _miss_new_coh_c_cat_T_49 = _s3_can_do_amo_write_T_22 | s3_req_cmd == 5'h3 | s3_req_cmd == 5'h6; // @[Consts.scala 86:64]
  wire [4:0] _miss_new_coh_T = {_s3_can_do_amo_write_T_22,_miss_new_coh_c_cat_T_49,s3_req_miss_param,s3_req_miss_dirty}; // @[Cat.scala 31:58]
  wire [1:0] _miss_new_coh_T_18 = 5'h2 == _miss_new_coh_T ? 2'h1 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_20 = 5'h3 == _miss_new_coh_T ? 2'h1 : _miss_new_coh_T_18; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_22 = 5'h0 == _miss_new_coh_T ? 2'h2 : _miss_new_coh_T_20; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_24 = 5'h1 == _miss_new_coh_T ? 2'h3 : _miss_new_coh_T_22; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_26 = 5'h8 == _miss_new_coh_T ? 2'h2 : _miss_new_coh_T_24; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_28 = 5'h9 == _miss_new_coh_T ? 2'h3 : _miss_new_coh_T_26; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_30 = 5'h18 == _miss_new_coh_T ? 2'h3 : _miss_new_coh_T_28; // @[Mux.scala 81:58]
  wire [1:0] miss_new_coh_state = 5'h19 == _miss_new_coh_T ? 2'h3 : _miss_new_coh_T_30; // @[Mux.scala 81:58]
  wire  _new_coh_T = store_update_meta | amo_update_meta; // @[MainPipe.scala 432:27]
  wire [1:0] _new_coh_T_1_state = _new_coh_T ? s3_new_hit_coh_state : 2'h0; // @[MainPipe.scala 431:10]
  wire [1:0] _new_coh_T_2_state = probe_update_meta ? probe_new_coh_state : _new_coh_T_1_state; // @[MainPipe.scala 428:8]
  wire  s3_lr = _s3_sc_T_2 & _miss_new_coh_c_cat_T_48; // @[MainPipe.scala 446:45]
  wire [5:0] _lrsc_count_T_1 = lrsc_count - 6'h1; // @[MainPipe.scala 463:30]
  reg  io_block_lr_REG; // @[MainPipe.scala 468:25]
  wire [7:0] banked_amo_wmask = 8'h1 << s3_req_word_idx; // @[OneHot.scala 57:35]
  wire [7:0] _banked_wmask_T = s3_can_do_amo_write ? banked_amo_wmask : 8'h0; // @[MainPipe.scala 506:10]
  wire [7:0] _banked_wmask_T_1 = s3_store_hit ? s3_banked_store_wmask : _banked_wmask_T; // @[MainPipe.scala 503:8]
  wire  do_amoalu = amo_wait_amoalu & s3_valid & ~s3_s_amoalu; // @[MainPipe.scala 519:47]
  wire  _wmask_T_8 = s3_req_word_idx == 3'h0; // @[MainPipe.scala 534:23]
  wire [7:0] wmask_8 = _wmask_T_8 ? 8'hff : 8'h0; // @[MainPipe.scala 533:20]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_9 = wmask_8[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_11 = wmask_8[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_13 = wmask_8[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_15 = wmask_8[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_17 = wmask_8[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_19 = wmask_8[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_21 = wmask_8[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_23 = wmask_8[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_0_full_wmask = {_s3_amo_data_merged_0_full_wmask_T_23,
    _s3_amo_data_merged_0_full_wmask_T_21,_s3_amo_data_merged_0_full_wmask_T_19,_s3_amo_data_merged_0_full_wmask_T_17,
    _s3_amo_data_merged_0_full_wmask_T_15,_s3_amo_data_merged_0_full_wmask_T_13,_s3_amo_data_merged_0_full_wmask_T_11,
    _s3_amo_data_merged_0_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_0_T = ~s3_amo_data_merged_0_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_amo_data_merged_0_T_1 = _s3_amo_data_merged_0_T & s3_store_data_merged_0; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_amo_data_merged_0_T_2 = s3_amo_data_merged_0_full_wmask & amoalu_io_out; // @[MainPipe.scala 363:45]
  wire [63:0] s3_amo_data_merged_0 = _s3_amo_data_merged_0_T_1 | _s3_amo_data_merged_0_T_2; // @[MainPipe.scala 363:31]
  wire [7:0] _s3_sc_data_merged_0_T_3 = _wmask_T_8 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 541:10]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_9 = _s3_sc_data_merged_0_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_11 = _s3_sc_data_merged_0_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_13 = _s3_sc_data_merged_0_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_15 = _s3_sc_data_merged_0_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_17 = _s3_sc_data_merged_0_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_19 = _s3_sc_data_merged_0_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_21 = _s3_sc_data_merged_0_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_23 = _s3_sc_data_merged_0_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_0_full_wmask = {_s3_sc_data_merged_0_full_wmask_T_23,
    _s3_sc_data_merged_0_full_wmask_T_21,_s3_sc_data_merged_0_full_wmask_T_19,_s3_sc_data_merged_0_full_wmask_T_17,
    _s3_sc_data_merged_0_full_wmask_T_15,_s3_sc_data_merged_0_full_wmask_T_13,_s3_sc_data_merged_0_full_wmask_T_11,
    _s3_sc_data_merged_0_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_0_T_4 = ~s3_sc_data_merged_0_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_sc_data_merged_0_T_5 = _s3_sc_data_merged_0_T_4 & s3_store_data_merged_0; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_sc_data_merged_0_T_6 = s3_sc_data_merged_0_full_wmask & s3_req_amo_data; // @[MainPipe.scala 363:45]
  wire [63:0] s3_sc_data_merged_0 = _s3_sc_data_merged_0_T_5 | _s3_sc_data_merged_0_T_6; // @[MainPipe.scala 363:31]
  wire  _wmask_T_10 = s3_req_word_idx == 3'h1; // @[MainPipe.scala 534:23]
  wire [7:0] wmask_9 = _wmask_T_10 ? 8'hff : 8'h0; // @[MainPipe.scala 533:20]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_9 = wmask_9[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_11 = wmask_9[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_13 = wmask_9[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_15 = wmask_9[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_17 = wmask_9[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_19 = wmask_9[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_21 = wmask_9[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_23 = wmask_9[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_1_full_wmask = {_s3_amo_data_merged_1_full_wmask_T_23,
    _s3_amo_data_merged_1_full_wmask_T_21,_s3_amo_data_merged_1_full_wmask_T_19,_s3_amo_data_merged_1_full_wmask_T_17,
    _s3_amo_data_merged_1_full_wmask_T_15,_s3_amo_data_merged_1_full_wmask_T_13,_s3_amo_data_merged_1_full_wmask_T_11,
    _s3_amo_data_merged_1_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_1_T = ~s3_amo_data_merged_1_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_amo_data_merged_1_T_1 = _s3_amo_data_merged_1_T & s3_store_data_merged_1; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_amo_data_merged_1_T_2 = s3_amo_data_merged_1_full_wmask & amoalu_io_out; // @[MainPipe.scala 363:45]
  wire [63:0] s3_amo_data_merged_1 = _s3_amo_data_merged_1_T_1 | _s3_amo_data_merged_1_T_2; // @[MainPipe.scala 363:31]
  wire [7:0] _s3_sc_data_merged_1_T_3 = _wmask_T_10 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 541:10]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_9 = _s3_sc_data_merged_1_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_11 = _s3_sc_data_merged_1_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_13 = _s3_sc_data_merged_1_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_15 = _s3_sc_data_merged_1_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_17 = _s3_sc_data_merged_1_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_19 = _s3_sc_data_merged_1_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_21 = _s3_sc_data_merged_1_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_23 = _s3_sc_data_merged_1_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_1_full_wmask = {_s3_sc_data_merged_1_full_wmask_T_23,
    _s3_sc_data_merged_1_full_wmask_T_21,_s3_sc_data_merged_1_full_wmask_T_19,_s3_sc_data_merged_1_full_wmask_T_17,
    _s3_sc_data_merged_1_full_wmask_T_15,_s3_sc_data_merged_1_full_wmask_T_13,_s3_sc_data_merged_1_full_wmask_T_11,
    _s3_sc_data_merged_1_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_1_T_4 = ~s3_sc_data_merged_1_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_sc_data_merged_1_T_5 = _s3_sc_data_merged_1_T_4 & s3_store_data_merged_1; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_sc_data_merged_1_T_6 = s3_sc_data_merged_1_full_wmask & s3_req_amo_data; // @[MainPipe.scala 363:45]
  wire [63:0] s3_sc_data_merged_1 = _s3_sc_data_merged_1_T_5 | _s3_sc_data_merged_1_T_6; // @[MainPipe.scala 363:31]
  wire  _wmask_T_12 = s3_req_word_idx == 3'h2; // @[MainPipe.scala 534:23]
  wire [7:0] wmask_10 = _wmask_T_12 ? 8'hff : 8'h0; // @[MainPipe.scala 533:20]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_9 = wmask_10[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_11 = wmask_10[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_13 = wmask_10[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_15 = wmask_10[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_17 = wmask_10[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_19 = wmask_10[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_21 = wmask_10[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_23 = wmask_10[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_2_full_wmask = {_s3_amo_data_merged_2_full_wmask_T_23,
    _s3_amo_data_merged_2_full_wmask_T_21,_s3_amo_data_merged_2_full_wmask_T_19,_s3_amo_data_merged_2_full_wmask_T_17,
    _s3_amo_data_merged_2_full_wmask_T_15,_s3_amo_data_merged_2_full_wmask_T_13,_s3_amo_data_merged_2_full_wmask_T_11,
    _s3_amo_data_merged_2_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_2_T = ~s3_amo_data_merged_2_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_amo_data_merged_2_T_1 = _s3_amo_data_merged_2_T & s3_store_data_merged_2; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_amo_data_merged_2_T_2 = s3_amo_data_merged_2_full_wmask & amoalu_io_out; // @[MainPipe.scala 363:45]
  wire [63:0] s3_amo_data_merged_2 = _s3_amo_data_merged_2_T_1 | _s3_amo_data_merged_2_T_2; // @[MainPipe.scala 363:31]
  wire [7:0] _s3_sc_data_merged_2_T_3 = _wmask_T_12 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 541:10]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_9 = _s3_sc_data_merged_2_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_11 = _s3_sc_data_merged_2_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_13 = _s3_sc_data_merged_2_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_15 = _s3_sc_data_merged_2_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_17 = _s3_sc_data_merged_2_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_19 = _s3_sc_data_merged_2_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_21 = _s3_sc_data_merged_2_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_23 = _s3_sc_data_merged_2_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_2_full_wmask = {_s3_sc_data_merged_2_full_wmask_T_23,
    _s3_sc_data_merged_2_full_wmask_T_21,_s3_sc_data_merged_2_full_wmask_T_19,_s3_sc_data_merged_2_full_wmask_T_17,
    _s3_sc_data_merged_2_full_wmask_T_15,_s3_sc_data_merged_2_full_wmask_T_13,_s3_sc_data_merged_2_full_wmask_T_11,
    _s3_sc_data_merged_2_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_2_T_4 = ~s3_sc_data_merged_2_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_sc_data_merged_2_T_5 = _s3_sc_data_merged_2_T_4 & s3_store_data_merged_2; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_sc_data_merged_2_T_6 = s3_sc_data_merged_2_full_wmask & s3_req_amo_data; // @[MainPipe.scala 363:45]
  wire [63:0] s3_sc_data_merged_2 = _s3_sc_data_merged_2_T_5 | _s3_sc_data_merged_2_T_6; // @[MainPipe.scala 363:31]
  wire  _wmask_T_14 = s3_req_word_idx == 3'h3; // @[MainPipe.scala 534:23]
  wire [7:0] wmask_11 = _wmask_T_14 ? 8'hff : 8'h0; // @[MainPipe.scala 533:20]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_9 = wmask_11[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_11 = wmask_11[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_13 = wmask_11[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_15 = wmask_11[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_17 = wmask_11[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_19 = wmask_11[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_21 = wmask_11[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_23 = wmask_11[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_3_full_wmask = {_s3_amo_data_merged_3_full_wmask_T_23,
    _s3_amo_data_merged_3_full_wmask_T_21,_s3_amo_data_merged_3_full_wmask_T_19,_s3_amo_data_merged_3_full_wmask_T_17,
    _s3_amo_data_merged_3_full_wmask_T_15,_s3_amo_data_merged_3_full_wmask_T_13,_s3_amo_data_merged_3_full_wmask_T_11,
    _s3_amo_data_merged_3_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_3_T = ~s3_amo_data_merged_3_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_amo_data_merged_3_T_1 = _s3_amo_data_merged_3_T & s3_store_data_merged_3; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_amo_data_merged_3_T_2 = s3_amo_data_merged_3_full_wmask & amoalu_io_out; // @[MainPipe.scala 363:45]
  wire [63:0] s3_amo_data_merged_3 = _s3_amo_data_merged_3_T_1 | _s3_amo_data_merged_3_T_2; // @[MainPipe.scala 363:31]
  wire [7:0] _s3_sc_data_merged_3_T_3 = _wmask_T_14 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 541:10]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_9 = _s3_sc_data_merged_3_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_11 = _s3_sc_data_merged_3_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_13 = _s3_sc_data_merged_3_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_15 = _s3_sc_data_merged_3_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_17 = _s3_sc_data_merged_3_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_19 = _s3_sc_data_merged_3_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_21 = _s3_sc_data_merged_3_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_23 = _s3_sc_data_merged_3_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_3_full_wmask = {_s3_sc_data_merged_3_full_wmask_T_23,
    _s3_sc_data_merged_3_full_wmask_T_21,_s3_sc_data_merged_3_full_wmask_T_19,_s3_sc_data_merged_3_full_wmask_T_17,
    _s3_sc_data_merged_3_full_wmask_T_15,_s3_sc_data_merged_3_full_wmask_T_13,_s3_sc_data_merged_3_full_wmask_T_11,
    _s3_sc_data_merged_3_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_3_T_4 = ~s3_sc_data_merged_3_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_sc_data_merged_3_T_5 = _s3_sc_data_merged_3_T_4 & s3_store_data_merged_3; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_sc_data_merged_3_T_6 = s3_sc_data_merged_3_full_wmask & s3_req_amo_data; // @[MainPipe.scala 363:45]
  wire [63:0] s3_sc_data_merged_3 = _s3_sc_data_merged_3_T_5 | _s3_sc_data_merged_3_T_6; // @[MainPipe.scala 363:31]
  wire  _wmask_T_16 = s3_req_word_idx == 3'h4; // @[MainPipe.scala 534:23]
  wire [7:0] wmask_12 = _wmask_T_16 ? 8'hff : 8'h0; // @[MainPipe.scala 533:20]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_9 = wmask_12[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_11 = wmask_12[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_13 = wmask_12[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_15 = wmask_12[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_17 = wmask_12[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_19 = wmask_12[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_21 = wmask_12[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_23 = wmask_12[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_4_full_wmask = {_s3_amo_data_merged_4_full_wmask_T_23,
    _s3_amo_data_merged_4_full_wmask_T_21,_s3_amo_data_merged_4_full_wmask_T_19,_s3_amo_data_merged_4_full_wmask_T_17,
    _s3_amo_data_merged_4_full_wmask_T_15,_s3_amo_data_merged_4_full_wmask_T_13,_s3_amo_data_merged_4_full_wmask_T_11,
    _s3_amo_data_merged_4_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_4_T = ~s3_amo_data_merged_4_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_amo_data_merged_4_T_1 = _s3_amo_data_merged_4_T & s3_store_data_merged_4; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_amo_data_merged_4_T_2 = s3_amo_data_merged_4_full_wmask & amoalu_io_out; // @[MainPipe.scala 363:45]
  wire [63:0] s3_amo_data_merged_4 = _s3_amo_data_merged_4_T_1 | _s3_amo_data_merged_4_T_2; // @[MainPipe.scala 363:31]
  wire [7:0] _s3_sc_data_merged_4_T_3 = _wmask_T_16 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 541:10]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_9 = _s3_sc_data_merged_4_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_11 = _s3_sc_data_merged_4_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_13 = _s3_sc_data_merged_4_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_15 = _s3_sc_data_merged_4_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_17 = _s3_sc_data_merged_4_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_19 = _s3_sc_data_merged_4_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_21 = _s3_sc_data_merged_4_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_23 = _s3_sc_data_merged_4_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_4_full_wmask = {_s3_sc_data_merged_4_full_wmask_T_23,
    _s3_sc_data_merged_4_full_wmask_T_21,_s3_sc_data_merged_4_full_wmask_T_19,_s3_sc_data_merged_4_full_wmask_T_17,
    _s3_sc_data_merged_4_full_wmask_T_15,_s3_sc_data_merged_4_full_wmask_T_13,_s3_sc_data_merged_4_full_wmask_T_11,
    _s3_sc_data_merged_4_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_4_T_4 = ~s3_sc_data_merged_4_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_sc_data_merged_4_T_5 = _s3_sc_data_merged_4_T_4 & s3_store_data_merged_4; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_sc_data_merged_4_T_6 = s3_sc_data_merged_4_full_wmask & s3_req_amo_data; // @[MainPipe.scala 363:45]
  wire [63:0] s3_sc_data_merged_4 = _s3_sc_data_merged_4_T_5 | _s3_sc_data_merged_4_T_6; // @[MainPipe.scala 363:31]
  wire  _wmask_T_18 = s3_req_word_idx == 3'h5; // @[MainPipe.scala 534:23]
  wire [7:0] wmask_13 = _wmask_T_18 ? 8'hff : 8'h0; // @[MainPipe.scala 533:20]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_9 = wmask_13[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_11 = wmask_13[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_13 = wmask_13[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_15 = wmask_13[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_17 = wmask_13[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_19 = wmask_13[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_21 = wmask_13[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_23 = wmask_13[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_5_full_wmask = {_s3_amo_data_merged_5_full_wmask_T_23,
    _s3_amo_data_merged_5_full_wmask_T_21,_s3_amo_data_merged_5_full_wmask_T_19,_s3_amo_data_merged_5_full_wmask_T_17,
    _s3_amo_data_merged_5_full_wmask_T_15,_s3_amo_data_merged_5_full_wmask_T_13,_s3_amo_data_merged_5_full_wmask_T_11,
    _s3_amo_data_merged_5_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_5_T = ~s3_amo_data_merged_5_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_amo_data_merged_5_T_1 = _s3_amo_data_merged_5_T & s3_store_data_merged_5; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_amo_data_merged_5_T_2 = s3_amo_data_merged_5_full_wmask & amoalu_io_out; // @[MainPipe.scala 363:45]
  wire [63:0] s3_amo_data_merged_5 = _s3_amo_data_merged_5_T_1 | _s3_amo_data_merged_5_T_2; // @[MainPipe.scala 363:31]
  wire [7:0] _s3_sc_data_merged_5_T_3 = _wmask_T_18 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 541:10]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_9 = _s3_sc_data_merged_5_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_11 = _s3_sc_data_merged_5_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_13 = _s3_sc_data_merged_5_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_15 = _s3_sc_data_merged_5_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_17 = _s3_sc_data_merged_5_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_19 = _s3_sc_data_merged_5_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_21 = _s3_sc_data_merged_5_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_23 = _s3_sc_data_merged_5_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_5_full_wmask = {_s3_sc_data_merged_5_full_wmask_T_23,
    _s3_sc_data_merged_5_full_wmask_T_21,_s3_sc_data_merged_5_full_wmask_T_19,_s3_sc_data_merged_5_full_wmask_T_17,
    _s3_sc_data_merged_5_full_wmask_T_15,_s3_sc_data_merged_5_full_wmask_T_13,_s3_sc_data_merged_5_full_wmask_T_11,
    _s3_sc_data_merged_5_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_5_T_4 = ~s3_sc_data_merged_5_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_sc_data_merged_5_T_5 = _s3_sc_data_merged_5_T_4 & s3_store_data_merged_5; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_sc_data_merged_5_T_6 = s3_sc_data_merged_5_full_wmask & s3_req_amo_data; // @[MainPipe.scala 363:45]
  wire [63:0] s3_sc_data_merged_5 = _s3_sc_data_merged_5_T_5 | _s3_sc_data_merged_5_T_6; // @[MainPipe.scala 363:31]
  wire  _wmask_T_20 = s3_req_word_idx == 3'h6; // @[MainPipe.scala 534:23]
  wire [7:0] wmask_14 = _wmask_T_20 ? 8'hff : 8'h0; // @[MainPipe.scala 533:20]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_9 = wmask_14[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_11 = wmask_14[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_13 = wmask_14[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_15 = wmask_14[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_17 = wmask_14[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_19 = wmask_14[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_21 = wmask_14[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_23 = wmask_14[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_6_full_wmask = {_s3_amo_data_merged_6_full_wmask_T_23,
    _s3_amo_data_merged_6_full_wmask_T_21,_s3_amo_data_merged_6_full_wmask_T_19,_s3_amo_data_merged_6_full_wmask_T_17,
    _s3_amo_data_merged_6_full_wmask_T_15,_s3_amo_data_merged_6_full_wmask_T_13,_s3_amo_data_merged_6_full_wmask_T_11,
    _s3_amo_data_merged_6_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_6_T = ~s3_amo_data_merged_6_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_amo_data_merged_6_T_1 = _s3_amo_data_merged_6_T & s3_store_data_merged_6; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_amo_data_merged_6_T_2 = s3_amo_data_merged_6_full_wmask & amoalu_io_out; // @[MainPipe.scala 363:45]
  wire [63:0] s3_amo_data_merged_6 = _s3_amo_data_merged_6_T_1 | _s3_amo_data_merged_6_T_2; // @[MainPipe.scala 363:31]
  wire [7:0] _s3_sc_data_merged_6_T_3 = _wmask_T_20 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 541:10]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_9 = _s3_sc_data_merged_6_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_11 = _s3_sc_data_merged_6_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_13 = _s3_sc_data_merged_6_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_15 = _s3_sc_data_merged_6_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_17 = _s3_sc_data_merged_6_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_19 = _s3_sc_data_merged_6_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_21 = _s3_sc_data_merged_6_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_23 = _s3_sc_data_merged_6_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_6_full_wmask = {_s3_sc_data_merged_6_full_wmask_T_23,
    _s3_sc_data_merged_6_full_wmask_T_21,_s3_sc_data_merged_6_full_wmask_T_19,_s3_sc_data_merged_6_full_wmask_T_17,
    _s3_sc_data_merged_6_full_wmask_T_15,_s3_sc_data_merged_6_full_wmask_T_13,_s3_sc_data_merged_6_full_wmask_T_11,
    _s3_sc_data_merged_6_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_6_T_4 = ~s3_sc_data_merged_6_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_sc_data_merged_6_T_5 = _s3_sc_data_merged_6_T_4 & s3_store_data_merged_6; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_sc_data_merged_6_T_6 = s3_sc_data_merged_6_full_wmask & s3_req_amo_data; // @[MainPipe.scala 363:45]
  wire [63:0] s3_sc_data_merged_6 = _s3_sc_data_merged_6_T_5 | _s3_sc_data_merged_6_T_6; // @[MainPipe.scala 363:31]
  wire  _wmask_T_22 = s3_req_word_idx == 3'h7; // @[MainPipe.scala 534:23]
  wire [7:0] wmask_15 = _wmask_T_22 ? 8'hff : 8'h0; // @[MainPipe.scala 533:20]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_9 = wmask_15[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_11 = wmask_15[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_13 = wmask_15[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_15 = wmask_15[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_17 = wmask_15[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_19 = wmask_15[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_21 = wmask_15[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_23 = wmask_15[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_7_full_wmask = {_s3_amo_data_merged_7_full_wmask_T_23,
    _s3_amo_data_merged_7_full_wmask_T_21,_s3_amo_data_merged_7_full_wmask_T_19,_s3_amo_data_merged_7_full_wmask_T_17,
    _s3_amo_data_merged_7_full_wmask_T_15,_s3_amo_data_merged_7_full_wmask_T_13,_s3_amo_data_merged_7_full_wmask_T_11,
    _s3_amo_data_merged_7_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_7_T = ~s3_amo_data_merged_7_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_amo_data_merged_7_T_1 = _s3_amo_data_merged_7_T & s3_store_data_merged_7; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_amo_data_merged_7_T_2 = s3_amo_data_merged_7_full_wmask & amoalu_io_out; // @[MainPipe.scala 363:45]
  wire [63:0] s3_amo_data_merged_7 = _s3_amo_data_merged_7_T_1 | _s3_amo_data_merged_7_T_2; // @[MainPipe.scala 363:31]
  wire [7:0] _s3_sc_data_merged_7_T_3 = _wmask_T_22 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 541:10]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_9 = _s3_sc_data_merged_7_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_11 = _s3_sc_data_merged_7_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_13 = _s3_sc_data_merged_7_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_15 = _s3_sc_data_merged_7_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_17 = _s3_sc_data_merged_7_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_19 = _s3_sc_data_merged_7_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_21 = _s3_sc_data_merged_7_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_23 = _s3_sc_data_merged_7_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_7_full_wmask = {_s3_sc_data_merged_7_full_wmask_T_23,
    _s3_sc_data_merged_7_full_wmask_T_21,_s3_sc_data_merged_7_full_wmask_T_19,_s3_sc_data_merged_7_full_wmask_T_17,
    _s3_sc_data_merged_7_full_wmask_T_15,_s3_sc_data_merged_7_full_wmask_T_13,_s3_sc_data_merged_7_full_wmask_T_11,
    _s3_sc_data_merged_7_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_7_T_4 = ~s3_sc_data_merged_7_full_wmask; // @[MainPipe.scala 363:7]
  wire [63:0] _s3_sc_data_merged_7_T_5 = _s3_sc_data_merged_7_T_4 & s3_store_data_merged_7; // @[MainPipe.scala 363:19]
  wire [63:0] _s3_sc_data_merged_7_T_6 = s3_sc_data_merged_7_full_wmask & s3_req_amo_data; // @[MainPipe.scala 363:45]
  wire [63:0] s3_sc_data_merged_7 = _s3_sc_data_merged_7_T_5 | _s3_sc_data_merged_7_T_6; // @[MainPipe.scala 363:31]
  reg [63:0] s3_amo_data_merged_reg_0; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_1; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_2; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_3; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_4; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_5; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_6; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_7; // @[Reg.scala 16:16]
  wire  _GEN_145 = do_amoalu | s3_s_amoalu; // @[MainPipe.scala 545:18 546:17 518:28]
  wire  _miss_wb_T_1 = s3_coh_state != 2'h0; // @[MainPipe.scala 549:68]
  wire  miss_wb = s3_req_miss & s3_need_replacement & s3_coh_state != 2'h0; // @[MainPipe.scala 549:52]
  wire  need_wb = miss_wb | s3_req_probe | s3_req_replace; // @[MainPipe.scala 552:37]
  wire [3:0] _miss_shrink_param_T_6 = {2'h2,s3_coh_state}; // @[Cat.scala 31:58]
  wire  _miss_shrink_param_T_19 = 4'h8 == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_T_21 = _miss_shrink_param_T_19 ? 3'h5 : 3'h0; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_T_23 = 4'h9 == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_T_25 = _miss_shrink_param_T_23 ? 3'h2 : _miss_shrink_param_T_21; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_T_27 = 4'ha == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_T_29 = _miss_shrink_param_T_27 ? 3'h1 : _miss_shrink_param_T_25; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_T_31 = 4'hb == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_T_33 = _miss_shrink_param_T_31 ? 3'h1 : _miss_shrink_param_T_29; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_T_35 = 4'h4 == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_T_37 = _miss_shrink_param_T_35 ? 3'h5 : _miss_shrink_param_T_33; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_T_39 = 4'h5 == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_T_41 = _miss_shrink_param_T_39 ? 3'h4 : _miss_shrink_param_T_37; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_T_43 = 4'h6 == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_T_45 = _miss_shrink_param_T_43 ? 3'h0 : _miss_shrink_param_T_41; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_T_47 = 4'h7 == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_T_49 = _miss_shrink_param_T_47 ? 3'h0 : _miss_shrink_param_T_45; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_T_51 = 4'h0 == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_T_53 = _miss_shrink_param_T_51 ? 3'h5 : _miss_shrink_param_T_49; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_T_55 = 4'h1 == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_T_57 = _miss_shrink_param_T_55 ? 3'h4 : _miss_shrink_param_T_53; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_T_59 = 4'h2 == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_T_61 = _miss_shrink_param_T_59 ? 3'h3 : _miss_shrink_param_T_57; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_T_63 = 4'h3 == _miss_shrink_param_T_6; // @[Misc.scala 55:20]
  wire [2:0] miss_shrink_param = _miss_shrink_param_T_63 ? 3'h3 : _miss_shrink_param_T_61; // @[Misc.scala 37:36]
  wire  _writeback_data_T_2 = s3_coh_state == 2'h3; // @[Metadata.scala 44:36]
  wire  _writeback_data_T_3 = s3_tag_match & s3_req_probe & s3_req_probe_need_data | _writeback_data_T_2; // @[MainPipe.scala 557:60]
  wire  _s3_update_data_cango_T = s3_store_can_go | s3_amo_can_go; // @[MainPipe.scala 575:46]
  wire  s3_update_data_cango = s3_store_can_go | s3_amo_can_go | s3_miss_can_go; // @[MainPipe.scala 575:63]
  wire  s3_fire = s3_valid & s3_can_go; // @[MainPipe.scala 576:26]
  wire  _GEN_146 = s3_fire ? 1'h0 : s3_valid; // @[MainPipe.scala 579:24 580:14 382:25]
  wire  _GEN_147 = _T_94 | _GEN_146; // @[MainPipe.scala 577:24 578:14]
  wire  _io_meta_read_valid_T_2 = req_valid & s1_ready & _s0_can_go_T_2; // @[MainPipe.scala 593:47]
  wire  _io_miss_req_valid_T = s2_valid & s2_can_go_to_mq; // @[MainPipe.scala 606:33]
  wire  _io_store_replay_resp_valid_T_1 = _io_miss_req_valid_T & replay; // @[MainPipe.scala 625:61]
  wire [63:0] _io_release_update_bits_data_T__0 = s3_sc ? s3_sc_data_merged_0 : s3_store_data_merged_0; // @[MainPipe.scala 643:8]
  wire [63:0] _io_release_update_bits_data_T__1 = s3_sc ? s3_sc_data_merged_1 : s3_store_data_merged_1; // @[MainPipe.scala 643:8]
  wire [63:0] _io_release_update_bits_data_T__2 = s3_sc ? s3_sc_data_merged_2 : s3_store_data_merged_2; // @[MainPipe.scala 643:8]
  wire [63:0] _io_release_update_bits_data_T__3 = s3_sc ? s3_sc_data_merged_3 : s3_store_data_merged_3; // @[MainPipe.scala 643:8]
  wire [63:0] _io_release_update_bits_data_T__4 = s3_sc ? s3_sc_data_merged_4 : s3_store_data_merged_4; // @[MainPipe.scala 643:8]
  wire [63:0] _io_release_update_bits_data_T__5 = s3_sc ? s3_sc_data_merged_5 : s3_store_data_merged_5; // @[MainPipe.scala 643:8]
  wire [63:0] _io_release_update_bits_data_T__6 = s3_sc ? s3_sc_data_merged_6 : s3_store_data_merged_6; // @[MainPipe.scala 643:8]
  wire [63:0] _io_release_update_bits_data_T__7 = s3_sc ? s3_sc_data_merged_7 : s3_store_data_merged_7; // @[MainPipe.scala 643:8]
  wire [63:0] _io_release_update_bits_data_T_1_0 = amo_wait_amoalu ? s3_amo_data_merged_reg_0 :
    _io_release_update_bits_data_T__0; // @[MainPipe.scala 640:37]
  wire [63:0] _io_release_update_bits_data_T_1_1 = amo_wait_amoalu ? s3_amo_data_merged_reg_1 :
    _io_release_update_bits_data_T__1; // @[MainPipe.scala 640:37]
  wire [63:0] _io_release_update_bits_data_T_1_2 = amo_wait_amoalu ? s3_amo_data_merged_reg_2 :
    _io_release_update_bits_data_T__2; // @[MainPipe.scala 640:37]
  wire [63:0] _io_release_update_bits_data_T_1_3 = amo_wait_amoalu ? s3_amo_data_merged_reg_3 :
    _io_release_update_bits_data_T__3; // @[MainPipe.scala 640:37]
  wire [63:0] _io_release_update_bits_data_T_1_4 = amo_wait_amoalu ? s3_amo_data_merged_reg_4 :
    _io_release_update_bits_data_T__4; // @[MainPipe.scala 640:37]
  wire [63:0] _io_release_update_bits_data_T_1_5 = amo_wait_amoalu ? s3_amo_data_merged_reg_5 :
    _io_release_update_bits_data_T__5; // @[MainPipe.scala 640:37]
  wire [63:0] _io_release_update_bits_data_T_1_6 = amo_wait_amoalu ? s3_amo_data_merged_reg_6 :
    _io_release_update_bits_data_T__6; // @[MainPipe.scala 640:37]
  wire [63:0] _io_release_update_bits_data_T_1_7 = amo_wait_amoalu ? s3_amo_data_merged_reg_7 :
    _io_release_update_bits_data_T__7; // @[MainPipe.scala 640:37]
  wire [255:0] io_release_update_bits_data_lo = {_io_release_update_bits_data_T_1_3,_io_release_update_bits_data_T_1_2,
    _io_release_update_bits_data_T_1_1,_io_release_update_bits_data_T_1_0}; // @[MainPipe.scala 648:5]
  wire [255:0] io_release_update_bits_data_hi = {_io_release_update_bits_data_T_1_7,_io_release_update_bits_data_T_1_6,
    _io_release_update_bits_data_T_1_5,_io_release_update_bits_data_T_1_4}; // @[MainPipe.scala 648:5]
  wire [63:0] atomic_hit_resp_data = s3_sc ? {{63'd0}, s3_sc_fail} : s3_data_word; // @[MainPipe.scala 651:30]
  wire  atomic_replay_resp_valid = _io_store_replay_resp_valid_T_1 & _s2_can_go_to_s3_T_3; // @[MainPipe.scala 666:72]
  wire  atomic_hit_resp_valid = s3_valid & (s3_amo_can_go | s3_miss_can_go & _s3_can_do_amo_T_2); // @[MainPipe.scala 667:40]
  wire [63:0] atomic_hit_resp_id = {{63'd0}, lrsc_valid}; // @[MainPipe.scala 650:29 657:22]
  wire  _io_meta_write_valid_T = s3_fire & update_meta; // @[MainPipe.scala 674:34]
  wire  _io_wb_valid_T_5 = s3_req_replace & ~s3_replace_nothing | s3_req_probe; // @[MainPipe.scala 708:43]
  wire  _io_wb_valid_T_16 = _io_wb_valid_T_5 | _s3_miss_can_go_T_9; // @[MainPipe.scala 710:65]
  wire  _io_wb_valid_T_17 = s3_valid & _io_wb_valid_T_16; // @[MainPipe.scala 706:27]
  wire [35:0] _io_wb_bits_addr_T_1 = {s3_tag,s3_req_vaddr[11:0]}; // @[Cat.scala 31:58]
  wire [255:0] io_wb_bits_data_lo = {s3_data_3,s3_data_2,s3_data_1,s3_data_0}; // @[MainPipe.scala 723:36]
  wire [255:0] io_wb_bits_data_hi = {s3_data_7,s3_data_6,s3_data_5,s3_data_4}; // @[MainPipe.scala 723:36]
  reg  io_replace_access_valid_REG; // @[MainPipe.scala 727:37]
  wire [1:0] io_replace_access_bits_way_hi = s1_way_en[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_replace_access_bits_way_lo = s1_way_en[1:0]; // @[OneHot.scala 31:18]
  wire  _io_replace_access_bits_way_T = |io_replace_access_bits_way_hi; // @[OneHot.scala 32:14]
  wire [1:0] _io_replace_access_bits_way_T_1 = io_replace_access_bits_way_hi | io_replace_access_bits_way_lo; // @[OneHot.scala 32:28]
  reg [1:0] io_replace_access_bits_way_REG; // @[MainPipe.scala 729:40]
  reg  io_error_report_to_beu_REG; // @[MainPipe.scala 748:36]
  reg [35:0] io_error_paddr_REG; // @[MainPipe.scala 749:28]
  reg  io_error_source_tag_REG; // @[MainPipe.scala 750:33]
  reg  io_error_source_data_REG; // @[MainPipe.scala 751:34]
  reg  io_error_source_l2_REG; // @[MainPipe.scala 752:32]
  reg  io_error_opType_store_REG; // @[MainPipe.scala 753:35]
  reg  io_error_opType_probe_REG; // @[MainPipe.scala 754:35]
  reg  io_error_opType_release_REG; // @[MainPipe.scala 755:37]
  reg  io_error_opType_atom_REG; // @[MainPipe.scala 756:34]
  reg  io_error_valid_REG; // @[MainPipe.scala 757:28]
  wire [1:0] _T_203 = s0_fire + s1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _T_205 = s2_valid + s3_valid; // @[Bitwise.scala 48:55]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [2:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  Arbiter_21 main_pipe_req_arb ( // @[DCacheWrapper.scala 169:21]
    .io_in_0_ready(main_pipe_req_arb_io_in_0_ready),
    .io_in_0_valid(main_pipe_req_arb_io_in_0_valid),
    .io_in_0_bits_miss(main_pipe_req_arb_io_in_0_bits_miss),
    .io_in_0_bits_miss_id(main_pipe_req_arb_io_in_0_bits_miss_id),
    .io_in_0_bits_miss_param(main_pipe_req_arb_io_in_0_bits_miss_param),
    .io_in_0_bits_miss_dirty(main_pipe_req_arb_io_in_0_bits_miss_dirty),
    .io_in_0_bits_miss_way_en(main_pipe_req_arb_io_in_0_bits_miss_way_en),
    .io_in_0_bits_probe(main_pipe_req_arb_io_in_0_bits_probe),
    .io_in_0_bits_probe_param(main_pipe_req_arb_io_in_0_bits_probe_param),
    .io_in_0_bits_probe_need_data(main_pipe_req_arb_io_in_0_bits_probe_need_data),
    .io_in_0_bits_source(main_pipe_req_arb_io_in_0_bits_source),
    .io_in_0_bits_cmd(main_pipe_req_arb_io_in_0_bits_cmd),
    .io_in_0_bits_vaddr(main_pipe_req_arb_io_in_0_bits_vaddr),
    .io_in_0_bits_addr(main_pipe_req_arb_io_in_0_bits_addr),
    .io_in_0_bits_store_data(main_pipe_req_arb_io_in_0_bits_store_data),
    .io_in_0_bits_store_mask(main_pipe_req_arb_io_in_0_bits_store_mask),
    .io_in_0_bits_word_idx(main_pipe_req_arb_io_in_0_bits_word_idx),
    .io_in_0_bits_amo_data(main_pipe_req_arb_io_in_0_bits_amo_data),
    .io_in_0_bits_amo_mask(main_pipe_req_arb_io_in_0_bits_amo_mask),
    .io_in_0_bits_error(main_pipe_req_arb_io_in_0_bits_error),
    .io_in_0_bits_replace(main_pipe_req_arb_io_in_0_bits_replace),
    .io_in_0_bits_replace_way_en(main_pipe_req_arb_io_in_0_bits_replace_way_en),
    .io_in_0_bits_id(main_pipe_req_arb_io_in_0_bits_id),
    .io_in_1_ready(main_pipe_req_arb_io_in_1_ready),
    .io_in_1_valid(main_pipe_req_arb_io_in_1_valid),
    .io_in_1_bits_miss(main_pipe_req_arb_io_in_1_bits_miss),
    .io_in_1_bits_miss_id(main_pipe_req_arb_io_in_1_bits_miss_id),
    .io_in_1_bits_miss_param(main_pipe_req_arb_io_in_1_bits_miss_param),
    .io_in_1_bits_miss_dirty(main_pipe_req_arb_io_in_1_bits_miss_dirty),
    .io_in_1_bits_miss_way_en(main_pipe_req_arb_io_in_1_bits_miss_way_en),
    .io_in_1_bits_probe(main_pipe_req_arb_io_in_1_bits_probe),
    .io_in_1_bits_probe_param(main_pipe_req_arb_io_in_1_bits_probe_param),
    .io_in_1_bits_probe_need_data(main_pipe_req_arb_io_in_1_bits_probe_need_data),
    .io_in_1_bits_source(main_pipe_req_arb_io_in_1_bits_source),
    .io_in_1_bits_cmd(main_pipe_req_arb_io_in_1_bits_cmd),
    .io_in_1_bits_vaddr(main_pipe_req_arb_io_in_1_bits_vaddr),
    .io_in_1_bits_addr(main_pipe_req_arb_io_in_1_bits_addr),
    .io_in_1_bits_store_data(main_pipe_req_arb_io_in_1_bits_store_data),
    .io_in_1_bits_store_mask(main_pipe_req_arb_io_in_1_bits_store_mask),
    .io_in_1_bits_word_idx(main_pipe_req_arb_io_in_1_bits_word_idx),
    .io_in_1_bits_amo_data(main_pipe_req_arb_io_in_1_bits_amo_data),
    .io_in_1_bits_amo_mask(main_pipe_req_arb_io_in_1_bits_amo_mask),
    .io_in_1_bits_error(main_pipe_req_arb_io_in_1_bits_error),
    .io_in_1_bits_replace(main_pipe_req_arb_io_in_1_bits_replace),
    .io_in_1_bits_replace_way_en(main_pipe_req_arb_io_in_1_bits_replace_way_en),
    .io_in_1_bits_id(main_pipe_req_arb_io_in_1_bits_id),
    .io_in_2_ready(main_pipe_req_arb_io_in_2_ready),
    .io_in_2_valid(main_pipe_req_arb_io_in_2_valid),
    .io_in_2_bits_probe(main_pipe_req_arb_io_in_2_bits_probe),
    .io_in_2_bits_probe_param(main_pipe_req_arb_io_in_2_bits_probe_param),
    .io_in_2_bits_probe_need_data(main_pipe_req_arb_io_in_2_bits_probe_need_data),
    .io_in_2_bits_source(main_pipe_req_arb_io_in_2_bits_source),
    .io_in_2_bits_cmd(main_pipe_req_arb_io_in_2_bits_cmd),
    .io_in_2_bits_vaddr(main_pipe_req_arb_io_in_2_bits_vaddr),
    .io_in_2_bits_addr(main_pipe_req_arb_io_in_2_bits_addr),
    .io_in_2_bits_store_data(main_pipe_req_arb_io_in_2_bits_store_data),
    .io_in_2_bits_store_mask(main_pipe_req_arb_io_in_2_bits_store_mask),
    .io_in_2_bits_id(main_pipe_req_arb_io_in_2_bits_id),
    .io_in_3_ready(main_pipe_req_arb_io_in_3_ready),
    .io_in_3_valid(main_pipe_req_arb_io_in_3_valid),
    .io_in_3_bits_miss(main_pipe_req_arb_io_in_3_bits_miss),
    .io_in_3_bits_miss_id(main_pipe_req_arb_io_in_3_bits_miss_id),
    .io_in_3_bits_miss_param(main_pipe_req_arb_io_in_3_bits_miss_param),
    .io_in_3_bits_miss_dirty(main_pipe_req_arb_io_in_3_bits_miss_dirty),
    .io_in_3_bits_miss_way_en(main_pipe_req_arb_io_in_3_bits_miss_way_en),
    .io_in_3_bits_probe(main_pipe_req_arb_io_in_3_bits_probe),
    .io_in_3_bits_probe_param(main_pipe_req_arb_io_in_3_bits_probe_param),
    .io_in_3_bits_probe_need_data(main_pipe_req_arb_io_in_3_bits_probe_need_data),
    .io_in_3_bits_source(main_pipe_req_arb_io_in_3_bits_source),
    .io_in_3_bits_cmd(main_pipe_req_arb_io_in_3_bits_cmd),
    .io_in_3_bits_vaddr(main_pipe_req_arb_io_in_3_bits_vaddr),
    .io_in_3_bits_addr(main_pipe_req_arb_io_in_3_bits_addr),
    .io_in_3_bits_store_data(main_pipe_req_arb_io_in_3_bits_store_data),
    .io_in_3_bits_store_mask(main_pipe_req_arb_io_in_3_bits_store_mask),
    .io_in_3_bits_word_idx(main_pipe_req_arb_io_in_3_bits_word_idx),
    .io_in_3_bits_amo_data(main_pipe_req_arb_io_in_3_bits_amo_data),
    .io_in_3_bits_amo_mask(main_pipe_req_arb_io_in_3_bits_amo_mask),
    .io_in_3_bits_error(main_pipe_req_arb_io_in_3_bits_error),
    .io_in_3_bits_replace(main_pipe_req_arb_io_in_3_bits_replace),
    .io_in_3_bits_replace_way_en(main_pipe_req_arb_io_in_3_bits_replace_way_en),
    .io_in_3_bits_id(main_pipe_req_arb_io_in_3_bits_id),
    .io_out_ready(main_pipe_req_arb_io_out_ready),
    .io_out_valid(main_pipe_req_arb_io_out_valid),
    .io_out_bits_miss(main_pipe_req_arb_io_out_bits_miss),
    .io_out_bits_miss_id(main_pipe_req_arb_io_out_bits_miss_id),
    .io_out_bits_miss_param(main_pipe_req_arb_io_out_bits_miss_param),
    .io_out_bits_miss_dirty(main_pipe_req_arb_io_out_bits_miss_dirty),
    .io_out_bits_miss_way_en(main_pipe_req_arb_io_out_bits_miss_way_en),
    .io_out_bits_probe(main_pipe_req_arb_io_out_bits_probe),
    .io_out_bits_probe_param(main_pipe_req_arb_io_out_bits_probe_param),
    .io_out_bits_probe_need_data(main_pipe_req_arb_io_out_bits_probe_need_data),
    .io_out_bits_source(main_pipe_req_arb_io_out_bits_source),
    .io_out_bits_cmd(main_pipe_req_arb_io_out_bits_cmd),
    .io_out_bits_vaddr(main_pipe_req_arb_io_out_bits_vaddr),
    .io_out_bits_addr(main_pipe_req_arb_io_out_bits_addr),
    .io_out_bits_store_data(main_pipe_req_arb_io_out_bits_store_data),
    .io_out_bits_store_mask(main_pipe_req_arb_io_out_bits_store_mask),
    .io_out_bits_word_idx(main_pipe_req_arb_io_out_bits_word_idx),
    .io_out_bits_amo_data(main_pipe_req_arb_io_out_bits_amo_data),
    .io_out_bits_amo_mask(main_pipe_req_arb_io_out_bits_amo_mask),
    .io_out_bits_error(main_pipe_req_arb_io_out_bits_error),
    .io_out_bits_replace(main_pipe_req_arb_io_out_bits_replace),
    .io_out_bits_replace_way_en(main_pipe_req_arb_io_out_bits_replace_way_en),
    .io_out_bits_id(main_pipe_req_arb_io_out_bits_id)
  );
  AMOALU amoalu ( // @[MainPipe.scala 520:24]
    .io_mask(amoalu_io_mask),
    .io_cmd(amoalu_io_cmd),
    .io_lhs(amoalu_io_lhs),
    .io_rhs(amoalu_io_rhs),
    .io_out(amoalu_io_out)
  );
  assign io_probe_req_ready = main_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 172:9]
  assign io_miss_req_valid = s2_valid & s2_can_go_to_mq; // @[MainPipe.scala 606:33]
  assign io_miss_req_bits_source = s2_req_source; // @[MainPipe.scala 609:19]
  assign io_miss_req_bits_cmd = s2_req_cmd; // @[MainPipe.scala 610:16]
  assign io_miss_req_bits_addr = s2_req_addr; // @[MainPipe.scala 611:17]
  assign io_miss_req_bits_vaddr = s2_req_vaddr; // @[MainPipe.scala 612:18]
  assign io_miss_req_bits_way_en = s2_tag_match ? s2_tag_match_way : s2_repl_way_en; // @[MainPipe.scala 613:25]
  assign io_miss_req_bits_store_data = s2_req_store_data; // @[MainPipe.scala 614:23]
  assign io_miss_req_bits_store_mask = s2_req_store_mask; // @[MainPipe.scala 615:23]
  assign io_miss_req_bits_word_idx = s2_req_word_idx; // @[MainPipe.scala 616:21]
  assign io_miss_req_bits_amo_data = s2_req_amo_data; // @[MainPipe.scala 617:21]
  assign io_miss_req_bits_amo_mask = s2_req_amo_mask; // @[MainPipe.scala 618:21]
  assign io_miss_req_bits_req_coh_state = s2_hit_coh_state; // @[MainPipe.scala 619:20]
  assign io_miss_req_bits_replace_coh_state = s2_repl_coh_state; // @[MainPipe.scala 620:24]
  assign io_miss_req_bits_replace_tag = s2_repl_tag; // @[MainPipe.scala 621:24]
  assign io_miss_req_bits_id = s2_req_id; // @[MainPipe.scala 622:15]
  assign io_store_req_ready = _store_req_ready_T_5 & ~io_replace_req_valid; // @[MainPipe.scala 187:25]
  assign io_store_replay_resp_valid = _io_miss_req_valid_T & replay & _s2_can_go_to_s3_T_2; // @[MainPipe.scala 625:71]
  assign io_store_replay_resp_bits_id = s2_req_id; // @[MainPipe.scala 629:32]
  assign io_store_hit_resp_valid = s3_valid & s3_store_can_go; // @[MainPipe.scala 631:39]
  assign io_store_hit_resp_bits_id = s3_req_id; // @[MainPipe.scala 635:29]
  assign io_release_update_valid = s3_valid & _s3_update_data_cango_T & s3_hit & update_data; // @[MainPipe.scala 637:87]
  assign io_release_update_bits_addr = s3_req_addr; // @[MainPipe.scala 638:31]
  assign io_release_update_bits_mask = s3_store_hit ? s3_banked_store_wmask : banked_amo_wmask; // @[MainPipe.scala 639:37]
  assign io_release_update_bits_data = {io_release_update_bits_data_hi,io_release_update_bits_data_lo}; // @[MainPipe.scala 648:5]
  assign io_atomic_req_ready = main_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 172:9]
  assign io_atomic_resp_valid = atomic_replay_resp_valid | atomic_hit_resp_valid; // @[MainPipe.scala 668:52]
  assign io_atomic_resp_bits_data = atomic_replay_resp_valid ? 64'h0 : atomic_hit_resp_data; // @[MainPipe.scala 669:29]
  assign io_atomic_resp_bits_miss = _io_store_replay_resp_valid_T_1 & _s2_can_go_to_s3_T_3; // @[MainPipe.scala 666:72]
  assign io_atomic_resp_bits_miss_id = atomic_replay_resp_valid ? 3'h0 : s3_req_miss_id; // @[MainPipe.scala 669:29]
  assign io_atomic_resp_bits_replay = _io_store_replay_resp_valid_T_1 & _s2_can_go_to_s3_T_3; // @[MainPipe.scala 666:72]
  assign io_atomic_resp_bits_error = atomic_replay_resp_valid ? 1'h0 : s3_error; // @[MainPipe.scala 669:29]
  assign io_atomic_resp_bits_ack_miss_queue = atomic_replay_resp_valid ? 1'h0 : s3_req_miss; // @[MainPipe.scala 669:29]
  assign io_atomic_resp_bits_id = atomic_replay_resp_valid ? 64'h0 : atomic_hit_resp_id; // @[MainPipe.scala 669:29]
  assign io_replace_req_ready = main_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 172:9]
  assign io_replace_resp_valid = s3_fire & s3_req_replace; // @[MainPipe.scala 671:36]
  assign io_replace_resp_bits = s3_req_miss_id; // @[MainPipe.scala 672:24]
  assign io_wb_valid = _io_wb_valid_T_17 & need_wb; // @[MainPipe.scala 717:7]
  assign io_wb_bits_addr = {_io_wb_bits_addr_T_1[35:6], 6'h0}; // @[L1Cache.scala 85:59]
  assign io_wb_bits_param = s3_req_probe ? probe_shrink_param : miss_shrink_param; // @[MainPipe.scala 555:28]
  assign io_wb_bits_voluntary = s3_req_miss | s3_req_replace; // @[MainPipe.scala 720:39]
  assign io_wb_bits_hasData = _writeback_data_T_3 | (miss_wb | s3_req_replace) & _miss_wb_T_1; // @[MainPipe.scala 558:37]
  assign io_wb_bits_dirty = s3_coh_state == 2'h3; // @[Metadata.scala 44:36]
  assign io_wb_bits_data = {io_wb_bits_data_hi,io_wb_bits_data_lo}; // @[MainPipe.scala 723:36]
  assign io_wb_bits_delay_release = s3_req_replace; // @[MainPipe.scala 724:28]
  assign io_wb_bits_miss_id = s3_req_miss_id; // @[MainPipe.scala 725:22]
  assign io_data_read_valid = s1_valid & s1_need_data & s2_ready; // @[MainPipe.scala 601:50]
  assign io_data_read_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 273:22]
  assign io_data_read_bits_addr = s1_req_vaddr[35:0]; // @[MainPipe.scala 604:26]
  assign io_data_write_valid = s3_valid & s3_update_data_cango & update_data; // @[MainPipe.scala 689:59]
  assign io_data_write_bits_way_en = s3_way_en; // @[MainPipe.scala 690:29]
  assign io_data_write_bits_addr = s3_req_vaddr[35:0]; // @[MainPipe.scala 691:27]
  assign io_data_write_bits_wmask = s3_req_miss ? 8'hff : _banked_wmask_T_1; // @[MainPipe.scala 500:25]
  assign io_data_write_bits_data_0 = amo_wait_amoalu ? s3_amo_data_merged_reg_0 : _io_release_update_bits_data_T__0; // @[MainPipe.scala 693:33]
  assign io_data_write_bits_data_1 = amo_wait_amoalu ? s3_amo_data_merged_reg_1 : _io_release_update_bits_data_T__1; // @[MainPipe.scala 693:33]
  assign io_data_write_bits_data_2 = amo_wait_amoalu ? s3_amo_data_merged_reg_2 : _io_release_update_bits_data_T__2; // @[MainPipe.scala 693:33]
  assign io_data_write_bits_data_3 = amo_wait_amoalu ? s3_amo_data_merged_reg_3 : _io_release_update_bits_data_T__3; // @[MainPipe.scala 693:33]
  assign io_data_write_bits_data_4 = amo_wait_amoalu ? s3_amo_data_merged_reg_4 : _io_release_update_bits_data_T__4; // @[MainPipe.scala 693:33]
  assign io_data_write_bits_data_5 = amo_wait_amoalu ? s3_amo_data_merged_reg_5 : _io_release_update_bits_data_T__5; // @[MainPipe.scala 693:33]
  assign io_data_write_bits_data_6 = amo_wait_amoalu ? s3_amo_data_merged_reg_6 : _io_release_update_bits_data_T__6; // @[MainPipe.scala 693:33]
  assign io_data_write_bits_data_7 = amo_wait_amoalu ? s3_amo_data_merged_reg_7 : _io_release_update_bits_data_T__7; // @[MainPipe.scala 693:33]
  assign io_meta_read_valid = req_valid & s1_ready & _s0_can_go_T_2; // @[MainPipe.scala 593:47]
  assign io_meta_read_bits_idx = req_bits_vaddr[13:6]; // @[L1Cache.scala 82:33]
  assign io_meta_write_valid = s3_fire & update_meta; // @[MainPipe.scala 674:34]
  assign io_meta_write_bits_idx = s3_req_vaddr[13:6]; // @[L1Cache.scala 82:33]
  assign io_meta_write_bits_way_en = s3_way_en; // @[MainPipe.scala 676:29]
  assign io_meta_write_bits_meta_coh_state = s3_req_miss ? miss_new_coh_state : _new_coh_T_2_state; // @[MainPipe.scala 425:20]
  assign io_error_flag_write_valid = _io_meta_write_valid_T & s3_req_error; // @[MainPipe.scala 679:55]
  assign io_error_flag_write_bits_idx = s3_req_vaddr[13:6]; // @[L1Cache.scala 82:33]
  assign io_error_flag_write_bits_way_en = s3_way_en; // @[MainPipe.scala 681:35]
  assign io_error_flag_write_bits_error = s3_req_error; // @[MainPipe.scala 682:34]
  assign io_tag_read_valid = _io_meta_read_valid_T_2 & ~req_bits_replace; // @[MainPipe.scala 597:63]
  assign io_tag_read_bits_idx = req_bits_vaddr[13:6]; // @[L1Cache.scala 82:33]
  assign io_tag_write_valid = s3_fire & s3_req_miss; // @[MainPipe.scala 684:33]
  assign io_tag_write_bits_idx = s3_req_vaddr[13:6]; // @[L1Cache.scala 82:33]
  assign io_tag_write_bits_way_en = s3_way_en; // @[MainPipe.scala 686:28]
  assign io_tag_write_bits_tag = s3_req_addr[35:12]; // @[L1Cache.scala 80:41]
  assign io_replace_access_valid = io_replace_access_valid_REG; // @[MainPipe.scala 727:27]
  assign io_replace_access_bits_set = s2_req_vaddr[13:6]; // @[L1Cache.scala 82:33]
  assign io_replace_access_bits_way = io_replace_access_bits_way_REG; // @[MainPipe.scala 729:30]
  assign io_replace_way_set_bits = s1_req_vaddr[13:6]; // @[L1Cache.scala 82:33]
  assign io_status_s1_valid = s1_valid; // @[MainPipe.scala 737:22]
  assign io_status_s1_bits_set = s1_req_vaddr[13:6]; // @[L1Cache.scala 82:33]
  assign io_status_s2_valid = s2_valid & ~s2_req_replace; // @[MainPipe.scala 740:34]
  assign io_status_s2_bits_set = s2_req_vaddr[13:6]; // @[L1Cache.scala 82:33]
  assign io_status_s2_bits_way_en = s2_way_en; // @[MainPipe.scala 742:28]
  assign io_status_s3_valid = s3_valid & _update_meta_T_3; // @[MainPipe.scala 743:34]
  assign io_status_s3_bits_set = s3_req_vaddr[13:6]; // @[L1Cache.scala 82:33]
  assign io_status_s3_bits_way_en = s3_way_en; // @[MainPipe.scala 745:28]
  assign io_lrsc_locked_block_valid = lrsc_count > 6'h8; // @[MainPipe.scala 444:31]
  assign io_lrsc_locked_block_bits = lrsc_addr; // @[MainPipe.scala 467:30]
  assign io_update_resv_set = s3_valid & s3_lr & s3_can_do_amo; // @[MainPipe.scala 473:43]
  assign io_block_lr = io_block_lr_REG; // @[MainPipe.scala 468:15]
  assign io_error_source_tag = io_error_source_tag_REG; // @[MainPipe.scala 750:23]
  assign io_error_source_data = io_error_source_data_REG; // @[MainPipe.scala 751:24]
  assign io_error_source_l2 = io_error_source_l2_REG; // @[MainPipe.scala 752:22]
  assign io_error_opType_store = io_error_opType_store_REG; // @[MainPipe.scala 753:25]
  assign io_error_opType_probe = io_error_opType_probe_REG; // @[MainPipe.scala 754:25]
  assign io_error_opType_release = io_error_opType_release_REG; // @[MainPipe.scala 755:27]
  assign io_error_opType_atom = io_error_opType_atom_REG; // @[MainPipe.scala 756:24]
  assign io_error_paddr = io_error_paddr_REG; // @[MainPipe.scala 749:18]
  assign io_error_report_to_beu = io_error_report_to_beu_REG; // @[MainPipe.scala 748:26]
  assign io_error_valid = io_error_valid_REG; // @[MainPipe.scala 757:18]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{3'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign main_pipe_req_arb_io_in_0_valid = io_probe_req_valid; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_miss = io_probe_req_bits_miss; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_id = io_probe_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_param = io_probe_req_bits_miss_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_dirty = io_probe_req_bits_miss_dirty; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_way_en = io_probe_req_bits_miss_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_probe = io_probe_req_bits_probe; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_probe_param = io_probe_req_bits_probe_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_probe_need_data = io_probe_req_bits_probe_need_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_source = io_probe_req_bits_source; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_cmd = io_probe_req_bits_cmd; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_vaddr = io_probe_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_addr = io_probe_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_store_data = io_probe_req_bits_store_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_store_mask = io_probe_req_bits_store_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_word_idx = io_probe_req_bits_word_idx; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_amo_data = io_probe_req_bits_amo_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_amo_mask = io_probe_req_bits_amo_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_error = io_probe_req_bits_error; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_replace = io_probe_req_bits_replace; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_replace_way_en = io_probe_req_bits_replace_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_0_bits_id = io_probe_req_bits_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_valid = io_replace_req_valid; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_miss = io_replace_req_bits_miss; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_id = io_replace_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_param = io_replace_req_bits_miss_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_dirty = io_replace_req_bits_miss_dirty; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_way_en = io_replace_req_bits_miss_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_probe = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_probe_param = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_probe_need_data = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_source = io_replace_req_bits_source; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_cmd = io_replace_req_bits_cmd; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_vaddr = io_replace_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_addr = io_replace_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_store_data = io_replace_req_bits_store_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_store_mask = io_replace_req_bits_store_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_word_idx = io_replace_req_bits_word_idx; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_amo_data = io_replace_req_bits_amo_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_amo_mask = io_replace_req_bits_amo_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_error = io_replace_req_bits_error; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_replace = io_replace_req_bits_replace; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_replace_way_en = io_replace_req_bits_replace_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_1_bits_id = io_replace_req_bits_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_2_valid = io_store_req_valid; // @[MainPipe.scala 165:23 167:19]
  assign main_pipe_req_arb_io_in_2_bits_probe = 1'h0; // @[MainPipe.scala 75:19 79:15]
  assign main_pipe_req_arb_io_in_2_bits_probe_param = 2'h0; // @[MainPipe.scala 165:23 166:18]
  assign main_pipe_req_arb_io_in_2_bits_probe_need_data = 1'h0; // @[MainPipe.scala 75:19 80:25]
  assign main_pipe_req_arb_io_in_2_bits_source = 2'h1; // @[MainPipe.scala 75:19 81:16]
  assign main_pipe_req_arb_io_in_2_bits_cmd = 5'h1; // @[MainPipe.scala 75:19 82:13]
  assign main_pipe_req_arb_io_in_2_bits_vaddr = io_store_req_bits_vaddr; // @[MainPipe.scala 75:19 84:15]
  assign main_pipe_req_arb_io_in_2_bits_addr = io_store_req_bits_addr; // @[MainPipe.scala 75:19 83:14]
  assign main_pipe_req_arb_io_in_2_bits_store_data = io_store_req_bits_data; // @[MainPipe.scala 75:19 85:20]
  assign main_pipe_req_arb_io_in_2_bits_store_mask = io_store_req_bits_mask; // @[MainPipe.scala 75:19 86:20]
  assign main_pipe_req_arb_io_in_2_bits_id = io_store_req_bits_id; // @[MainPipe.scala 75:19 89:12]
  assign main_pipe_req_arb_io_in_3_valid = io_atomic_req_valid; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_miss = io_atomic_req_bits_miss; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_id = io_atomic_req_bits_miss_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_param = io_atomic_req_bits_miss_param; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_dirty = io_atomic_req_bits_miss_dirty; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_way_en = io_atomic_req_bits_miss_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_probe = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_probe_param = 2'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_probe_need_data = 1'h0; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_source = io_atomic_req_bits_source; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_cmd = io_atomic_req_bits_cmd; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_vaddr = io_atomic_req_bits_vaddr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_addr = io_atomic_req_bits_addr; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_store_data = io_atomic_req_bits_store_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_store_mask = io_atomic_req_bits_store_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_word_idx = io_atomic_req_bits_word_idx; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_amo_data = io_atomic_req_bits_amo_data; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_amo_mask = io_atomic_req_bits_amo_mask; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_error = io_atomic_req_bits_error; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_replace = io_atomic_req_bits_replace; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_replace_way_en = io_atomic_req_bits_replace_way_en; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_in_3_bits_id = io_atomic_req_bits_id; // @[DCacheWrapper.scala 172:9]
  assign main_pipe_req_arb_io_out_ready = _store_req_ready_T_1 & ~set_conflict; // @[MainPipe.scala 191:71]
  assign amoalu_io_mask = s3_req_amo_mask; // @[MainPipe.scala 521:18]
  assign amoalu_io_cmd = s3_req_cmd; // @[MainPipe.scala 522:18]
  assign amoalu_io_lhs = s3_data_word; // @[MainPipe.scala 523:18]
  assign amoalu_io_rhs = s3_req_amo_data; // @[MainPipe.scala 524:18]
  always @(posedge clock) begin
    if (reset) begin // @[MainPipe.scala 222:25]
      s1_valid <= 1'h0; // @[MainPipe.scala 222:25]
    end else begin
      s1_valid <= _GEN_26;
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_vaddr <= req_bits_vaddr; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[MainPipe.scala 311:25]
      s2_valid <= 1'h0; // @[MainPipe.scala 311:25]
    end else begin
      s2_valid <= _GEN_64;
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_vaddr <= s1_req_vaddr; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[MainPipe.scala 382:25]
      s3_valid <= 1'h0; // @[MainPipe.scala 382:25]
    end else begin
      s3_valid <= _GEN_147;
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_vaddr <= s2_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_replace <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_probe <= s1_req_probe; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_miss <= s1_req_miss; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_source <= s1_req_source; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_tag_match <= s1_tag_match; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_cmd <= s1_req_cmd; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_tag_match) begin // @[MainPipe.scala 255:38]
        s2_hit_coh_state <= _s1_hit_coh_T_10;
      end else begin
        s2_hit_coh_state <= 2'h0;
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_probe <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_tag_match <= s2_tag_match; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_coh_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_probe_param <= s2_req_probe_param; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_source <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_hit_coh_state <= s2_hit_coh_state; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      if (_T_92) begin // @[Misc.scala 34:36]
        s3_new_hit_coh_state <= 2'h3;
      end else if (_T_89) begin // @[Misc.scala 34:36]
        s3_new_hit_coh_state <= 2'h2;
      end else if (_T_86) begin // @[Misc.scala 34:36]
        s3_new_hit_coh_state <= 2'h1;
      end else begin
        s3_new_hit_coh_state <= _T_85;
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_miss <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_store_hit <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_amo_hit <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_cmd <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[MainPipe.scala 443:27]
      lrsc_count <= 6'h0; // @[MainPipe.scala 443:27]
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 477:30]
      lrsc_count <= 6'h0; // @[MainPipe.scala 478:16]
    end else if (s3_valid & (s3_lr | s3_sc)) begin // @[MainPipe.scala 455:39]
      if (s3_can_do_amo & s3_lr) begin // @[MainPipe.scala 456:35]
        lrsc_count <= 6'h3f; // @[MainPipe.scala 457:18]
      end else begin
        lrsc_count <= 6'h0; // @[MainPipe.scala 460:18]
      end
    end else if (lrsc_count > 6'h0) begin // @[MainPipe.scala 462:34]
      lrsc_count <= _lrsc_count_T_1; // @[MainPipe.scala 463:16]
    end
    if (s3_valid & (s3_lr | s3_sc)) begin // @[MainPipe.scala 455:39]
      if (s3_can_do_amo & s3_lr) begin // @[MainPipe.scala 456:35]
        lrsc_addr <= _s3_lrsc_addr_match_T_1; // @[MainPipe.scala 458:17]
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_addr <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[MainPipe.scala 518:28]
      s3_s_amoalu <= 1'h0; // @[MainPipe.scala 518:28]
    end else if (s3_fire) begin // @[MainPipe.scala 587:17]
      s3_s_amoalu <= 1'h0; // @[MainPipe.scala 588:17]
    end else begin
      s3_s_amoalu <= _GEN_145;
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_replace <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_can_go_to_mq <= s1_pregen_can_go_to_mq; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_need_data <= banked_need_data; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_miss <= req_bits_miss; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_miss_id <= req_bits_miss_id; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_miss_param <= req_bits_miss_param; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_miss_dirty <= req_bits_miss_dirty; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_miss_way_en <= req_bits_miss_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_probe <= req_bits_probe; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_probe_param <= req_bits_probe_param; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_probe_need_data <= req_bits_probe_need_data; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_source <= req_bits_source; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_cmd <= req_bits_cmd; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_addr <= req_bits_addr; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_store_data <= req_bits_store_data; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_store_mask <= req_bits_store_mask; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_word_idx <= req_bits_word_idx; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_amo_data <= req_bits_amo_data; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_amo_mask <= req_bits_amo_mask; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_error <= req_bits_error; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_replace <= req_bits_replace; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_replace_way_en <= req_bits_replace_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_id <= req_bits_id; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_banked_store_wmask <= bank_write; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_need_tag <= io_tag_read_valid; // @[Reg.scala 17:22]
    end
    REG_2 <= req_valid & s0_can_go; // @[MainPipe.scala 192:27]
    if (REG_2) begin // @[MainPipe.scala 243:19]
      REG_3_0 <= io_meta_resp_0_coh_state;
    end
    if (REG_2) begin // @[MainPipe.scala 243:19]
      REG_3_1 <= io_meta_resp_1_coh_state;
    end
    if (REG_2) begin // @[MainPipe.scala 243:19]
      REG_3_2 <= io_meta_resp_2_coh_state;
    end
    if (REG_2) begin // @[MainPipe.scala 243:19]
      REG_3_3 <= io_meta_resp_3_coh_state;
    end
    REG_4 <= req_valid & s0_can_go; // @[MainPipe.scala 192:27]
    if (REG_4) begin // @[MainPipe.scala 244:18]
      REG_5_0 <= io_tag_resp_0[23:0];
    end
    if (REG_4) begin // @[MainPipe.scala 244:18]
      REG_5_1 <= io_tag_resp_1[23:0];
    end
    if (REG_4) begin // @[MainPipe.scala 244:18]
      REG_5_2 <= io_tag_resp_2[23:0];
    end
    if (REG_4) begin // @[MainPipe.scala 244:18]
      REG_5_3 <= io_tag_resp_3[23:0];
    end
    REG_8 <= req_valid & s0_can_go; // @[MainPipe.scala 192:27]
    if (REG_8) begin // @[MainPipe.scala 247:22]
      REG_9_0 <= io_tag_resp_0;
    end
    if (REG_8) begin // @[MainPipe.scala 247:22]
      REG_9_1 <= io_tag_resp_1;
    end
    if (REG_8) begin // @[MainPipe.scala 247:22]
      REG_9_2 <= io_tag_resp_2;
    end
    if (REG_8) begin // @[MainPipe.scala 247:22]
      REG_9_3 <= io_tag_resp_3;
    end
    s1_repl_way_en_REG <= req_valid & s0_can_go; // @[MainPipe.scala 192:27]
    if (s1_repl_way_en_REG) begin // @[MainPipe.scala 263:24]
      s1_repl_way_en_REG_1 <= _s1_repl_way_en_T;
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_miss_id <= s1_req_miss_id; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_miss_param <= s1_req_miss_param; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_miss_dirty <= s1_req_miss_dirty; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_probe_param <= s1_req_probe_param; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_probe_need_data <= s1_req_probe_need_data; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_addr <= s1_req_addr; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_store_data <= s1_req_store_data; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_store_mask <= s1_req_store_mask; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_word_idx <= s1_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_amo_data <= s1_req_amo_data; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_amo_mask <= s1_req_amo_mask; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_error <= s1_req_error; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_id <= s1_req_id; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_tag_match_way <= s1_tag_match_way; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_repl_tag <= s1_repl_tag; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_repl_coh_state <= s1_repl_coh_state; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_repl_way_en_REG) begin // @[MainPipe.scala 263:24]
        s2_repl_way_en <= _s1_repl_way_en_T;
      end else begin
        s2_repl_way_en <= s1_repl_way_en_REG_1;
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_need_replacement <= s1_need_replacement; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_need_data <= s1_need_data; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 273:22]
        s2_way_en <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 276:8]
        s2_way_en <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 279:10]
        s2_way_en <= s1_repl_way_en;
      end else begin
        s2_way_en <= s1_tag_match_way;
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 287:19]
        s2_tag <= s1_req_addr[35:12];
      end else if (s1_req_miss) begin // @[MainPipe.scala 290:8]
        s2_tag <= s1_miss_tag;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 293:10]
        s2_tag <= s1_repl_tag;
      end else begin
        s2_tag <= s1_hit_tag;
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 296:19]
        s2_coh_state <= _s1_coh_T_10;
      end else if (s1_req_miss) begin // @[MainPipe.scala 299:8]
        s2_coh_state <= s1_miss_coh_state;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 302:10]
        s2_coh_state <= s1_repl_coh_state;
      end else begin
        s2_coh_state <= s1_hit_coh_state;
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_banked_store_wmask <= s1_banked_store_wmask; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_flag_error <= s1_flag_error; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_tag_error <= s1_tag_error; // @[Reg.scala 17:22]
    end
    REG_12 <= s1_valid & s1_can_go; // @[MainPipe.scala 229:26]
    if (REG_12) begin // @[MainPipe.scala 358:19]
      REG_13_0_raw_data <= io_data_resp_0_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 358:19]
      REG_13_1_raw_data <= io_data_resp_1_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 358:19]
      REG_13_2_raw_data <= io_data_resp_2_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 358:19]
      REG_13_3_raw_data <= io_data_resp_3_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 358:19]
      REG_13_4_raw_data <= io_data_resp_4_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 358:19]
      REG_13_5_raw_data <= io_data_resp_5_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 358:19]
      REG_13_6_raw_data <= io_data_resp_6_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 358:19]
      REG_13_7_raw_data <= io_data_resp_7_raw_data;
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_miss_id <= s2_req_miss_id; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_miss_param <= s2_req_miss_param; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_miss_dirty <= s2_req_miss_dirty; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_probe_need_data <= s2_req_probe_need_data; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_word_idx <= s2_req_word_idx; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_amo_data <= s2_req_amo_data; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_amo_mask <= s2_req_amo_mask; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_error <= s2_req_error; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_req_id <= s2_req_id; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_tag <= s2_tag; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_hit <= s2_hit; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_way_en <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_banked_store_wmask <= s2_banked_store_wmask; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_store_data_merged_0 <= s2_store_data_merged_0; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_store_data_merged_1 <= s2_store_data_merged_1; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_store_data_merged_2 <= s2_store_data_merged_2; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_store_data_merged_3 <= s2_store_data_merged_3; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_store_data_merged_4 <= s2_store_data_merged_4; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_store_data_merged_5 <= s2_store_data_merged_5; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_store_data_merged_6 <= s2_store_data_merged_6; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_store_data_merged_7 <= s2_store_data_merged_7; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      if (3'h7 == s2_req_word_idx) begin // @[Reg.scala 17:22]
        s3_data_word <= s2_store_data_merged_7; // @[Reg.scala 17:22]
      end else if (3'h6 == s2_req_word_idx) begin // @[Reg.scala 17:22]
        s3_data_word <= s2_store_data_merged_6; // @[Reg.scala 17:22]
      end else if (3'h5 == s2_req_word_idx) begin // @[Reg.scala 17:22]
        s3_data_word <= s2_store_data_merged_5; // @[Reg.scala 17:22]
      end else begin
        s3_data_word <= _GEN_108;
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 358:19]
        s3_data_0 <= io_data_resp_0_raw_data;
      end else begin
        s3_data_0 <= REG_13_0_raw_data;
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 358:19]
        s3_data_1 <= io_data_resp_1_raw_data;
      end else begin
        s3_data_1 <= REG_13_1_raw_data;
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 358:19]
        s3_data_2 <= io_data_resp_2_raw_data;
      end else begin
        s3_data_2 <= REG_13_2_raw_data;
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 358:19]
        s3_data_3 <= io_data_resp_3_raw_data;
      end else begin
        s3_data_3 <= REG_13_3_raw_data;
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 358:19]
        s3_data_4 <= io_data_resp_4_raw_data;
      end else begin
        s3_data_4 <= REG_13_4_raw_data;
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 358:19]
        s3_data_5 <= io_data_resp_5_raw_data;
      end else begin
        s3_data_5 <= REG_13_5_raw_data;
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 358:19]
        s3_data_6 <= io_data_resp_6_raw_data;
      end else begin
        s3_data_6 <= REG_13_6_raw_data;
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 358:19]
        s3_data_7 <= io_data_resp_7_raw_data;
      end else begin
        s3_data_7 <= REG_13_7_raw_data;
      end
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_error <= s2_error; // @[Reg.scala 17:22]
    end
    if (_T_94) begin // @[Reg.scala 17:18]
      s3_need_replacement <= s2_need_replacement; // @[Reg.scala 17:22]
    end
    io_block_lr_REG <= lrsc_count > 6'h0; // @[MainPipe.scala 468:37]
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_0 <= s3_amo_data_merged_0; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_1 <= s3_amo_data_merged_1; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_2 <= s3_amo_data_merged_2; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_3 <= s3_amo_data_merged_3; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_4 <= s3_amo_data_merged_4; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_5 <= s3_amo_data_merged_5; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_6 <= s3_amo_data_merged_6; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_7 <= s3_amo_data_merged_7; // @[Reg.scala 17:22]
    end
    io_replace_access_valid_REG <= s1_fire & (_s1_pregen_can_go_to_mq_T_6 | _s1_need_replacement_T) &
      _s1_need_replacement_T_1; // @[MainPipe.scala 727:82]
    io_replace_access_bits_way_REG <= {_io_replace_access_bits_way_T,_io_replace_access_bits_way_T_1[1]}; // @[Cat.scala 31:58]
    io_error_report_to_beu_REG <= (s2_tag_error | s2_data_error) & s2_fire; // @[MainPipe.scala 748:69]
    io_error_paddr_REG <= s2_req_addr; // @[MainPipe.scala 749:28]
    io_error_source_tag_REG <= s2_tag_error; // @[MainPipe.scala 750:33]
    io_error_source_data_REG <= io_readline_error & s2_need_data & s2_coh_state != 2'h0; // @[MainPipe.scala 332:57]
    io_error_source_l2_REG <= s2_flag_error | s2_req_error; // @[MainPipe.scala 752:47]
    io_error_opType_store_REG <= _s2_can_go_to_s3_T_2 & _s2_amo_hit_T; // @[MainPipe.scala 753:51]
    io_error_opType_probe_REG <= s2_req_probe; // @[MainPipe.scala 754:35]
    io_error_opType_release_REG <= s2_req_replace; // @[MainPipe.scala 755:37]
    io_error_opType_atom_REG <= _s2_can_go_to_s3_T_3 & _s2_amo_hit_T; // @[MainPipe.scala 756:48]
    io_error_valid_REG <= s2_error & s2_fire; // @[MainPipe.scala 757:38]
    io_perf_0_value_REG <= req_valid & s0_can_go; // @[MainPipe.scala 192:27]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= _T_203 + _T_205; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  s1_valid = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  s1_req_vaddr = _RAND_1[38:0];
  _RAND_2 = {1{`RANDOM}};
  s2_valid = _RAND_2[0:0];
  _RAND_3 = {2{`RANDOM}};
  s2_req_vaddr = _RAND_3[38:0];
  _RAND_4 = {1{`RANDOM}};
  s3_valid = _RAND_4[0:0];
  _RAND_5 = {2{`RANDOM}};
  s3_req_vaddr = _RAND_5[38:0];
  _RAND_6 = {1{`RANDOM}};
  s2_req_replace = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s2_req_probe = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s2_req_miss = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s2_req_source = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  s2_tag_match = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s2_req_cmd = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  s2_hit_coh_state = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  s3_req_probe = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s3_tag_match = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s3_coh_state = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  s3_req_probe_param = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  s3_req_source = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  s3_hit_coh_state = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  s3_new_hit_coh_state = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  s3_req_miss = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  s3_store_hit = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  s3_amo_hit = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s3_req_cmd = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  lrsc_count = _RAND_24[5:0];
  _RAND_25 = {2{`RANDOM}};
  lrsc_addr = _RAND_25[35:0];
  _RAND_26 = {2{`RANDOM}};
  s3_req_addr = _RAND_26[35:0];
  _RAND_27 = {1{`RANDOM}};
  s3_s_amoalu = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  s3_req_replace = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  s2_can_go_to_mq = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  s1_need_data = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  s1_req_miss = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  s1_req_miss_id = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  s1_req_miss_param = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  s1_req_miss_dirty = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  s1_req_miss_way_en = _RAND_35[3:0];
  _RAND_36 = {1{`RANDOM}};
  s1_req_probe = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  s1_req_probe_param = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  s1_req_probe_need_data = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  s1_req_source = _RAND_39[1:0];
  _RAND_40 = {1{`RANDOM}};
  s1_req_cmd = _RAND_40[4:0];
  _RAND_41 = {2{`RANDOM}};
  s1_req_addr = _RAND_41[35:0];
  _RAND_42 = {16{`RANDOM}};
  s1_req_store_data = _RAND_42[511:0];
  _RAND_43 = {2{`RANDOM}};
  s1_req_store_mask = _RAND_43[63:0];
  _RAND_44 = {1{`RANDOM}};
  s1_req_word_idx = _RAND_44[2:0];
  _RAND_45 = {2{`RANDOM}};
  s1_req_amo_data = _RAND_45[63:0];
  _RAND_46 = {1{`RANDOM}};
  s1_req_amo_mask = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  s1_req_error = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  s1_req_replace = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  s1_req_replace_way_en = _RAND_49[3:0];
  _RAND_50 = {2{`RANDOM}};
  s1_req_id = _RAND_50[63:0];
  _RAND_51 = {1{`RANDOM}};
  s1_banked_store_wmask = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  s1_need_tag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  REG_2 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  REG_3_0 = _RAND_54[1:0];
  _RAND_55 = {1{`RANDOM}};
  REG_3_1 = _RAND_55[1:0];
  _RAND_56 = {1{`RANDOM}};
  REG_3_2 = _RAND_56[1:0];
  _RAND_57 = {1{`RANDOM}};
  REG_3_3 = _RAND_57[1:0];
  _RAND_58 = {1{`RANDOM}};
  REG_4 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  REG_5_0 = _RAND_59[23:0];
  _RAND_60 = {1{`RANDOM}};
  REG_5_1 = _RAND_60[23:0];
  _RAND_61 = {1{`RANDOM}};
  REG_5_2 = _RAND_61[23:0];
  _RAND_62 = {1{`RANDOM}};
  REG_5_3 = _RAND_62[23:0];
  _RAND_63 = {1{`RANDOM}};
  REG_8 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  REG_9_0 = _RAND_64[29:0];
  _RAND_65 = {1{`RANDOM}};
  REG_9_1 = _RAND_65[29:0];
  _RAND_66 = {1{`RANDOM}};
  REG_9_2 = _RAND_66[29:0];
  _RAND_67 = {1{`RANDOM}};
  REG_9_3 = _RAND_67[29:0];
  _RAND_68 = {1{`RANDOM}};
  s1_repl_way_en_REG = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  s1_repl_way_en_REG_1 = _RAND_69[3:0];
  _RAND_70 = {1{`RANDOM}};
  s2_req_miss_id = _RAND_70[2:0];
  _RAND_71 = {1{`RANDOM}};
  s2_req_miss_param = _RAND_71[1:0];
  _RAND_72 = {1{`RANDOM}};
  s2_req_miss_dirty = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  s2_req_probe_param = _RAND_73[1:0];
  _RAND_74 = {1{`RANDOM}};
  s2_req_probe_need_data = _RAND_74[0:0];
  _RAND_75 = {2{`RANDOM}};
  s2_req_addr = _RAND_75[35:0];
  _RAND_76 = {16{`RANDOM}};
  s2_req_store_data = _RAND_76[511:0];
  _RAND_77 = {2{`RANDOM}};
  s2_req_store_mask = _RAND_77[63:0];
  _RAND_78 = {1{`RANDOM}};
  s2_req_word_idx = _RAND_78[2:0];
  _RAND_79 = {2{`RANDOM}};
  s2_req_amo_data = _RAND_79[63:0];
  _RAND_80 = {1{`RANDOM}};
  s2_req_amo_mask = _RAND_80[7:0];
  _RAND_81 = {1{`RANDOM}};
  s2_req_error = _RAND_81[0:0];
  _RAND_82 = {2{`RANDOM}};
  s2_req_id = _RAND_82[63:0];
  _RAND_83 = {1{`RANDOM}};
  s2_tag_match_way = _RAND_83[3:0];
  _RAND_84 = {1{`RANDOM}};
  s2_repl_tag = _RAND_84[23:0];
  _RAND_85 = {1{`RANDOM}};
  s2_repl_coh_state = _RAND_85[1:0];
  _RAND_86 = {1{`RANDOM}};
  s2_repl_way_en = _RAND_86[3:0];
  _RAND_87 = {1{`RANDOM}};
  s2_need_replacement = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  s2_need_data = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  s2_way_en = _RAND_89[3:0];
  _RAND_90 = {1{`RANDOM}};
  s2_tag = _RAND_90[23:0];
  _RAND_91 = {1{`RANDOM}};
  s2_coh_state = _RAND_91[1:0];
  _RAND_92 = {1{`RANDOM}};
  s2_banked_store_wmask = _RAND_92[7:0];
  _RAND_93 = {1{`RANDOM}};
  s2_flag_error = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  s2_tag_error = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  REG_12 = _RAND_95[0:0];
  _RAND_96 = {2{`RANDOM}};
  REG_13_0_raw_data = _RAND_96[63:0];
  _RAND_97 = {2{`RANDOM}};
  REG_13_1_raw_data = _RAND_97[63:0];
  _RAND_98 = {2{`RANDOM}};
  REG_13_2_raw_data = _RAND_98[63:0];
  _RAND_99 = {2{`RANDOM}};
  REG_13_3_raw_data = _RAND_99[63:0];
  _RAND_100 = {2{`RANDOM}};
  REG_13_4_raw_data = _RAND_100[63:0];
  _RAND_101 = {2{`RANDOM}};
  REG_13_5_raw_data = _RAND_101[63:0];
  _RAND_102 = {2{`RANDOM}};
  REG_13_6_raw_data = _RAND_102[63:0];
  _RAND_103 = {2{`RANDOM}};
  REG_13_7_raw_data = _RAND_103[63:0];
  _RAND_104 = {1{`RANDOM}};
  s3_req_miss_id = _RAND_104[2:0];
  _RAND_105 = {1{`RANDOM}};
  s3_req_miss_param = _RAND_105[1:0];
  _RAND_106 = {1{`RANDOM}};
  s3_req_miss_dirty = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  s3_req_probe_need_data = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  s3_req_word_idx = _RAND_108[2:0];
  _RAND_109 = {2{`RANDOM}};
  s3_req_amo_data = _RAND_109[63:0];
  _RAND_110 = {1{`RANDOM}};
  s3_req_amo_mask = _RAND_110[7:0];
  _RAND_111 = {1{`RANDOM}};
  s3_req_error = _RAND_111[0:0];
  _RAND_112 = {2{`RANDOM}};
  s3_req_id = _RAND_112[63:0];
  _RAND_113 = {1{`RANDOM}};
  s3_tag = _RAND_113[23:0];
  _RAND_114 = {1{`RANDOM}};
  s3_hit = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  s3_way_en = _RAND_115[3:0];
  _RAND_116 = {1{`RANDOM}};
  s3_banked_store_wmask = _RAND_116[7:0];
  _RAND_117 = {2{`RANDOM}};
  s3_store_data_merged_0 = _RAND_117[63:0];
  _RAND_118 = {2{`RANDOM}};
  s3_store_data_merged_1 = _RAND_118[63:0];
  _RAND_119 = {2{`RANDOM}};
  s3_store_data_merged_2 = _RAND_119[63:0];
  _RAND_120 = {2{`RANDOM}};
  s3_store_data_merged_3 = _RAND_120[63:0];
  _RAND_121 = {2{`RANDOM}};
  s3_store_data_merged_4 = _RAND_121[63:0];
  _RAND_122 = {2{`RANDOM}};
  s3_store_data_merged_5 = _RAND_122[63:0];
  _RAND_123 = {2{`RANDOM}};
  s3_store_data_merged_6 = _RAND_123[63:0];
  _RAND_124 = {2{`RANDOM}};
  s3_store_data_merged_7 = _RAND_124[63:0];
  _RAND_125 = {2{`RANDOM}};
  s3_data_word = _RAND_125[63:0];
  _RAND_126 = {2{`RANDOM}};
  s3_data_0 = _RAND_126[63:0];
  _RAND_127 = {2{`RANDOM}};
  s3_data_1 = _RAND_127[63:0];
  _RAND_128 = {2{`RANDOM}};
  s3_data_2 = _RAND_128[63:0];
  _RAND_129 = {2{`RANDOM}};
  s3_data_3 = _RAND_129[63:0];
  _RAND_130 = {2{`RANDOM}};
  s3_data_4 = _RAND_130[63:0];
  _RAND_131 = {2{`RANDOM}};
  s3_data_5 = _RAND_131[63:0];
  _RAND_132 = {2{`RANDOM}};
  s3_data_6 = _RAND_132[63:0];
  _RAND_133 = {2{`RANDOM}};
  s3_data_7 = _RAND_133[63:0];
  _RAND_134 = {1{`RANDOM}};
  s3_error = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  s3_need_replacement = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  io_block_lr_REG = _RAND_136[0:0];
  _RAND_137 = {2{`RANDOM}};
  s3_amo_data_merged_reg_0 = _RAND_137[63:0];
  _RAND_138 = {2{`RANDOM}};
  s3_amo_data_merged_reg_1 = _RAND_138[63:0];
  _RAND_139 = {2{`RANDOM}};
  s3_amo_data_merged_reg_2 = _RAND_139[63:0];
  _RAND_140 = {2{`RANDOM}};
  s3_amo_data_merged_reg_3 = _RAND_140[63:0];
  _RAND_141 = {2{`RANDOM}};
  s3_amo_data_merged_reg_4 = _RAND_141[63:0];
  _RAND_142 = {2{`RANDOM}};
  s3_amo_data_merged_reg_5 = _RAND_142[63:0];
  _RAND_143 = {2{`RANDOM}};
  s3_amo_data_merged_reg_6 = _RAND_143[63:0];
  _RAND_144 = {2{`RANDOM}};
  s3_amo_data_merged_reg_7 = _RAND_144[63:0];
  _RAND_145 = {1{`RANDOM}};
  io_replace_access_valid_REG = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  io_replace_access_bits_way_REG = _RAND_146[1:0];
  _RAND_147 = {1{`RANDOM}};
  io_error_report_to_beu_REG = _RAND_147[0:0];
  _RAND_148 = {2{`RANDOM}};
  io_error_paddr_REG = _RAND_148[35:0];
  _RAND_149 = {1{`RANDOM}};
  io_error_source_tag_REG = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  io_error_source_data_REG = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  io_error_source_l2_REG = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  io_error_opType_store_REG = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  io_error_opType_probe_REG = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  io_error_opType_release_REG = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  io_error_opType_atom_REG = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  io_error_valid_REG = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_159[2:0];
  _RAND_160 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_160[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
