module SourceD(
  input          clock,
  input          reset,
  input          io_d_ready,
  output         io_d_valid,
  output [2:0]   io_d_bits_opcode,
  output [1:0]   io_d_bits_param,
  output [2:0]   io_d_bits_size,
  output [5:0]   io_d_bits_source,
  output [3:0]   io_d_bits_sink,
  output         io_d_bits_denied,
  output         io_d_bits_echo_blockisdirty,
  output [255:0] io_d_bits_data,
  output         io_d_bits_corrupt,
  output         io_task_ready,
  input          io_task_valid,
  input  [5:0]   io_task_bits_sourceId,
  input  [7:0]   io_task_bits_set,
  input  [2:0]   io_task_bits_channel,
  input  [2:0]   io_task_bits_opcode,
  input  [2:0]   io_task_bits_param,
  input  [2:0]   io_task_bits_size,
  input  [2:0]   io_task_bits_way,
  input  [5:0]   io_task_bits_off,
  input          io_task_bits_useBypass,
  input  [2:0]   io_task_bits_bufIdx,
  input          io_task_bits_denied,
  input  [3:0]   io_task_bits_sinkId,
  input          io_task_bits_bypassPut,
  input          io_task_bits_dirty,
  input          io_bs_raddr_ready,
  output         io_bs_raddr_valid,
  output [2:0]   io_bs_raddr_bits_way,
  output [7:0]   io_bs_raddr_bits_set,
  output         io_bs_raddr_bits_beat,
  input  [255:0] io_bs_rdata_data,
  input          io_bs_rdata_corrupt,
  output         io_bypass_read_valid,
  output         io_bypass_read_beat,
  output [2:0]   io_bypass_read_id,
  input          io_bypass_read_ready,
  input  [255:0] io_bypass_read_buffer_data_data,
  output         io_bypass_read_last,
  input          io_bs_waddr_ready,
  output         io_bs_waddr_valid,
  output [2:0]   io_bs_waddr_bits_way,
  output [7:0]   io_bs_waddr_bits_set,
  output         io_bs_waddr_bits_beat,
  output [255:0] io_bs_wdata_data,
  output         io_sourceD_rhazard_valid,
  output [2:0]   io_sourceD_rhazard_bits_way,
  output [7:0]   io_sourceD_rhazard_bits_set,
  input          io_pb_pop_ready,
  output         io_pb_pop_valid,
  output [2:0]   io_pb_pop_bits_bufIdx,
  output         io_pb_pop_bits_count,
  output         io_pb_pop_bits_last,
  input  [255:0] io_pb_beat_data,
  input  [31:0]  io_pb_beat_mask,
  input          io_pb_beat_corrupt
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
  reg [255:0] _RAND_47;
  reg [255:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
`endif // RANDOMIZE_REG_INIT
  wire  s1_queue_clock; // @[SourceD.scala 86:24]
  wire  s1_queue_reset; // @[SourceD.scala 86:24]
  wire  s1_queue_io_enq_ready; // @[SourceD.scala 86:24]
  wire  s1_queue_io_enq_valid; // @[SourceD.scala 86:24]
  wire [255:0] s1_queue_io_enq_bits_data; // @[SourceD.scala 86:24]
  wire  s1_queue_io_deq_ready; // @[SourceD.scala 86:24]
  wire  s1_queue_io_deq_valid; // @[SourceD.scala 86:24]
  wire [255:0] s1_queue_io_deq_bits_data; // @[SourceD.scala 86:24]
  wire  pbQueue_clock; // @[SourceD.scala 146:23]
  wire  pbQueue_reset; // @[SourceD.scala 146:23]
  wire  pbQueue_io_enq_ready; // @[SourceD.scala 146:23]
  wire  pbQueue_io_enq_valid; // @[SourceD.scala 146:23]
  wire [255:0] pbQueue_io_enq_bits_data; // @[SourceD.scala 146:23]
  wire [31:0] pbQueue_io_enq_bits_strb; // @[SourceD.scala 146:23]
  wire  pbQueue_io_enq_bits_last; // @[SourceD.scala 146:23]
  wire  pbQueue_io_deq_ready; // @[SourceD.scala 146:23]
  wire  pbQueue_io_deq_valid; // @[SourceD.scala 146:23]
  wire [255:0] pbQueue_io_deq_bits_data; // @[SourceD.scala 146:23]
  wire [31:0] pbQueue_io_deq_bits_strb; // @[SourceD.scala 146:23]
  wire  pbQueue_io_deq_bits_last; // @[SourceD.scala 146:23]
  wire  pipe_clock; // @[SourceD.scala 183:20]
  wire  pipe_reset; // @[SourceD.scala 183:20]
  wire  pipe_io_in_ready; // @[SourceD.scala 183:20]
  wire  pipe_io_in_valid; // @[SourceD.scala 183:20]
  wire  pipe_io_in_bits_counter; // @[SourceD.scala 183:20]
  wire  pipe_io_in_bits_beat; // @[SourceD.scala 183:20]
  wire  pipe_io_in_bits_needPb; // @[SourceD.scala 183:20]
  wire  pipe_io_in_bits_isReleaseAck; // @[SourceD.scala 183:20]
  wire [5:0] pipe_io_in_bits_req_sourceId; // @[SourceD.scala 183:20]
  wire [7:0] pipe_io_in_bits_req_set; // @[SourceD.scala 183:20]
  wire [2:0] pipe_io_in_bits_req_opcode; // @[SourceD.scala 183:20]
  wire [2:0] pipe_io_in_bits_req_param; // @[SourceD.scala 183:20]
  wire [2:0] pipe_io_in_bits_req_size; // @[SourceD.scala 183:20]
  wire [2:0] pipe_io_in_bits_req_way; // @[SourceD.scala 183:20]
  wire  pipe_io_in_bits_req_denied; // @[SourceD.scala 183:20]
  wire [3:0] pipe_io_in_bits_req_sinkId; // @[SourceD.scala 183:20]
  wire  pipe_io_in_bits_req_dirty; // @[SourceD.scala 183:20]
  wire  pipe_io_out_ready; // @[SourceD.scala 183:20]
  wire  pipe_io_out_valid; // @[SourceD.scala 183:20]
  wire  pipe_io_out_bits_counter; // @[SourceD.scala 183:20]
  wire  pipe_io_out_bits_beat; // @[SourceD.scala 183:20]
  wire  pipe_io_out_bits_needPb; // @[SourceD.scala 183:20]
  wire  pipe_io_out_bits_isReleaseAck; // @[SourceD.scala 183:20]
  wire [5:0] pipe_io_out_bits_req_sourceId; // @[SourceD.scala 183:20]
  wire [7:0] pipe_io_out_bits_req_set; // @[SourceD.scala 183:20]
  wire [2:0] pipe_io_out_bits_req_opcode; // @[SourceD.scala 183:20]
  wire [2:0] pipe_io_out_bits_req_param; // @[SourceD.scala 183:20]
  wire [2:0] pipe_io_out_bits_req_size; // @[SourceD.scala 183:20]
  wire [2:0] pipe_io_out_bits_req_way; // @[SourceD.scala 183:20]
  wire  pipe_io_out_bits_req_denied; // @[SourceD.scala 183:20]
  wire [3:0] pipe_io_out_bits_req_sinkId; // @[SourceD.scala 183:20]
  wire  pipe_io_out_bits_req_dirty; // @[SourceD.scala 183:20]
  wire  s3_queue_clock; // @[SourceD.scala 204:24]
  wire  s3_queue_reset; // @[SourceD.scala 204:24]
  wire  s3_queue_io_enq_ready; // @[SourceD.scala 204:24]
  wire  s3_queue_io_enq_valid; // @[SourceD.scala 204:24]
  wire [255:0] s3_queue_io_enq_bits_data; // @[SourceD.scala 204:24]
  wire  s3_queue_io_enq_bits_corrupt; // @[SourceD.scala 204:24]
  wire  s3_queue_io_deq_ready; // @[SourceD.scala 204:24]
  wire  s3_queue_io_deq_valid; // @[SourceD.scala 204:24]
  wire [255:0] s3_queue_io_deq_bits_data; // @[SourceD.scala 204:24]
  wire  s3_queue_io_deq_bits_corrupt; // @[SourceD.scala 204:24]
  reg  busy; // @[SourceD.scala 72:21]
  reg  s1_block_r; // @[SourceD.scala 73:27]
  wire  _s1_req_reg_T = io_task_ready & io_task_valid; // @[Decoupled.scala 50:35]
  reg [5:0] s1_req_reg_sourceId; // @[Reg.scala 16:16]
  reg [7:0] s1_req_reg_set; // @[Reg.scala 16:16]
  reg [2:0] s1_req_reg_channel; // @[Reg.scala 16:16]
  reg [2:0] s1_req_reg_opcode; // @[Reg.scala 16:16]
  reg [2:0] s1_req_reg_param; // @[Reg.scala 16:16]
  reg [2:0] s1_req_reg_size; // @[Reg.scala 16:16]
  reg [2:0] s1_req_reg_way; // @[Reg.scala 16:16]
  reg [5:0] s1_req_reg_off; // @[Reg.scala 16:16]
  reg  s1_req_reg_useBypass; // @[Reg.scala 16:16]
  reg [2:0] s1_req_reg_bufIdx; // @[Reg.scala 16:16]
  reg  s1_req_reg_denied; // @[Reg.scala 16:16]
  reg [3:0] s1_req_reg_sinkId; // @[Reg.scala 16:16]
  reg  s1_req_reg_bypassPut; // @[Reg.scala 16:16]
  reg  s1_req_reg_dirty; // @[Reg.scala 16:16]
  wire [2:0] s1_req_channel = busy ? s1_req_reg_channel : io_task_bits_channel; // @[SourceD.scala 75:19]
  wire [2:0] s1_req_opcode = busy ? s1_req_reg_opcode : io_task_bits_opcode; // @[SourceD.scala 75:19]
  wire [2:0] s1_req_size = busy ? s1_req_reg_size : io_task_bits_size; // @[SourceD.scala 75:19]
  wire [5:0] s1_req_off = busy ? s1_req_reg_off : io_task_bits_off; // @[SourceD.scala 75:19]
  wire  s1_req_useBypass = busy ? s1_req_reg_useBypass : io_task_bits_useBypass; // @[SourceD.scala 75:19]
  wire  s1_req_bypassPut = busy ? s1_req_reg_bypassPut : io_task_bits_bypassPut; // @[SourceD.scala 75:19]
  wire  _s1_needData_T_3 = s1_req_opcode == 3'h1; // @[SourceD.scala 66:20]
  wire  _s1_needData_T_4 = s1_req_opcode == 3'h5 | _s1_needData_T_3; // @[SourceD.scala 65:43]
  wire  _s1_needData_T_7 = s1_req_opcode == 3'h0 & ~s1_req_bypassPut; // @[SourceD.scala 67:45]
  wire  _s1_needData_T_8 = _s1_needData_T_4 | _s1_needData_T_7; // @[SourceD.scala 66:49]
  wire  s1_needData = s1_req_channel[0] & _s1_needData_T_8; // @[SourceD.scala 64:15]
  wire  s1_need_pb = s1_req_channel[0] & _s1_needData_T_7; // @[SourceD.scala 77:33]
  reg  s1_counter; // @[SourceD.scala 78:27]
  wire [12:0] _s1_total_beats_T_1 = 13'h3f << s1_req_size; // @[package.scala 234:77]
  wire [5:0] _s1_total_beats_T_3 = ~_s1_total_beats_T_1[5:0]; // @[package.scala 234:46]
  wire  s1_total_beats = s1_needData & _s1_total_beats_T_3[5]; // @[SourceD.scala 79:27]
  wire  s1_beat = s1_req_off[5] | s1_counter; // @[SourceD.scala 80:39]
  wire  _s1_valid_rT_2 = busy | io_task_valid & io_task_bits_opcode != 3'h1; // @[SourceD.scala 81:26]
  wire  s1_valid_r = (busy | io_task_valid & io_task_bits_opcode != 3'h1) & s1_needData & ~s1_block_r; // @[SourceD.scala 81:114]
  wire  s1_last = s1_counter == s1_total_beats; // @[SourceD.scala 82:28]
  wire  s1_bypass_hit = io_bypass_read_valid & io_bypass_read_ready; // @[SourceD.scala 83:44]
  wire  _GEN_15 = _s1_req_reg_T | busy; // @[SourceD.scala 103:24 104:10 72:21]
  wire  _T_6 = io_bs_raddr_ready & io_bs_raddr_valid; // @[Decoupled.scala 50:35]
  wire  _T_7 = s1_req_useBypass ? s1_bypass_hit : _T_6; // @[SourceD.scala 106:11]
  wire  _GEN_16 = _T_7 | s1_block_r; // @[SourceD.scala 106:65 107:16 73:27]
  wire  _s1_valid_T_4 = s1_req_useBypass ? s1_bypass_hit : io_bs_raddr_ready; // @[SourceD.scala 120:10]
  wire  _s1_valid_T_5 = ~s1_valid_r | _s1_valid_T_4; // @[SourceD.scala 119:17]
  wire  s1_valid = _s1_valid_rT_2 & _s1_valid_T_5; // @[SourceD.scala 118:94]
  reg  s2_full; // @[SourceD.scala 133:24]
  reg  s2_req_useBypass; // @[Reg.scala 16:16]
  reg  s2_needData; // @[Reg.scala 16:16]
  wire  s2_d_valid = s2_full & (s1_queue_io_deq_valid & s2_req_useBypass & s2_needData | ~s2_needData); // @[SourceD.scala 155:25]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  s3_valid = pipe_io_out_valid; // @[SourceD.scala 230:12 60:32]
  wire  s3_d_valid = s3_valid & (~pipe_io_out_bits_needPb | ~pipe_io_out_bits_counter); // @[SourceD.scala 209:26]
  wire [1:0] _readys_T = {s2_d_valid,s3_d_valid}; // @[Cat.scala 31:58]
  wire [2:0] _readys_T_1 = {_readys_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_T_3 = _readys_T | _readys_T_1[1:0]; // @[package.scala 244:43]
  wire [2:0] _readys_T_5 = {_readys_T_3, 1'h0}; // @[Arbiter.scala 16:78]
  wire [1:0] _readys_T_7 = ~_readys_T_5[1:0]; // @[Arbiter.scala 16:61]
  wire  readys_1 = _readys_T_7[1]; // @[Arbiter.scala 95:86]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire  out_1_ready = io_d_ready & allowed_1; // @[Arbiter.scala 123:31]
  wire  s3_ready = pipe_io_in_ready; // @[SourceD.scala 192:12 60:32]
  reg  s2_valid_pb; // @[SourceD.scala 138:28]
  wire  _s2_can_go_T_1 = ~s2_valid_pb | io_pb_pop_ready; // @[SourceD.scala 166:73]
  wire  s2_can_go = s2_d_valid ? out_1_ready : s3_ready & (~s2_valid_pb | io_pb_pop_ready); // @[SourceD.scala 166:22]
  wire  s2_ready = ~s2_full | s2_can_go; // @[SourceD.scala 171:24]
  wire  _T_8 = s1_valid & s2_ready; // @[SourceD.scala 109:17]
  reg [5:0] s2_req_sourceId; // @[Reg.scala 16:16]
  reg [7:0] s2_req_set; // @[Reg.scala 16:16]
  reg [2:0] s2_req_channel; // @[Reg.scala 16:16]
  reg [2:0] s2_req_opcode; // @[Reg.scala 16:16]
  reg [2:0] s2_req_param; // @[Reg.scala 16:16]
  reg [2:0] s2_req_size; // @[Reg.scala 16:16]
  reg [2:0] s2_req_way; // @[Reg.scala 16:16]
  reg [2:0] s2_req_bufIdx; // @[Reg.scala 16:16]
  reg  s2_req_denied; // @[Reg.scala 16:16]
  reg [3:0] s2_req_sinkId; // @[Reg.scala 16:16]
  reg  s2_req_dirty; // @[Reg.scala 16:16]
  reg  s2_beat; // @[Reg.scala 16:16]
  reg  s2_last; // @[Reg.scala 16:16]
  reg  s2_counter; // @[Reg.scala 16:16]
  wire  s2_releaseAck = s2_req_opcode == 3'h6; // @[SourceD.scala 134:37]
  reg  s2_need_pb; // @[Reg.scala 16:16]
  wire  _pbQueue_io_enq_valid_T = io_pb_pop_ready & io_pb_pop_valid; // @[Decoupled.scala 50:35]
  reg  pbQueue_io_enq_valid_REG; // @[SourceD.scala 148:34]
  wire [2:0] _s2_d_bits_param_T = s2_releaseAck ? 3'h0 : s2_req_param; // @[SourceD.scala 157:25]
  wire  _GEN_45 = s2_full & s2_can_go ? 1'h0 : s2_full; // @[SourceD.scala 133:24 167:{30,40}]
  wire  _GEN_46 = _T_8 | _GEN_45; // @[SourceD.scala 168:{18,28}]
  wire  _T_10 = ~s3_valid; // @[SourceD.scala 206:10]
  wire [2:0] _s3_d_bits_param_T = pipe_io_out_bits_isReleaseAck ? 3'h0 : pipe_io_out_bits_req_param; // @[SourceD.scala 211:25]
  wire  s3_d_bits_corrupt = pipe_io_out_bits_req_denied | s3_queue_io_deq_bits_corrupt; // @[SourceD.scala 217:38]
  reg  s3_queue_io_enq_valid_REG; // @[Pipeline.scala 41:37]
  reg  s3_queue_io_enq_valid_REG_1; // @[Pipeline.scala 41:37]
  reg  s3_queue_io_enq_valid_REG_2; // @[Pipeline.scala 41:37]
  wire  readys_0 = _readys_T_7[0]; // @[Arbiter.scala 95:86]
  reg  state_0; // @[Arbiter.scala 116:26]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire  out_ready = io_d_ready & allowed_0; // @[Arbiter.scala 123:31]
  reg  s4_full; // @[SourceD.scala 239:24]
  reg  s4_need_pb; // @[Reg.scala 16:16]
  wire  _s4_ready_T_2 = ~s4_need_pb; // @[SourceD.scala 258:48]
  wire  s4_ready = ~s4_full | io_bs_waddr_ready | ~s4_need_pb; // @[SourceD.scala 258:45]
  wire  s4_latch = s3_valid & s4_ready; // @[SourceD.scala 233:27]
  reg [7:0] s4_req_set; // @[Reg.scala 16:16]
  reg [2:0] s4_req_way; // @[Reg.scala 16:16]
  reg [255:0] s4_rdata; // @[Reg.scala 16:16]
  reg [255:0] s4_pbdata_data; // @[Reg.scala 16:16]
  reg [31:0] s4_pbdata_mask; // @[Reg.scala 16:16]
  reg  s4_beat; // @[Reg.scala 16:16]
  wire  _GEN_68 = io_bs_waddr_ready | _s4_ready_T_2 ? 1'h0 : s4_full; // @[SourceD.scala 239:24 241:{43,53}]
  wire  _GEN_69 = s4_latch | _GEN_68; // @[SourceD.scala 242:{19,29}]
  wire  selects_0 = s4_pbdata_mask[0]; // @[SourceD.scala 244:32]
  wire  selects_1 = s4_pbdata_mask[1]; // @[SourceD.scala 244:32]
  wire  selects_2 = s4_pbdata_mask[2]; // @[SourceD.scala 244:32]
  wire  selects_3 = s4_pbdata_mask[3]; // @[SourceD.scala 244:32]
  wire  selects_4 = s4_pbdata_mask[4]; // @[SourceD.scala 244:32]
  wire  selects_5 = s4_pbdata_mask[5]; // @[SourceD.scala 244:32]
  wire  selects_6 = s4_pbdata_mask[6]; // @[SourceD.scala 244:32]
  wire  selects_7 = s4_pbdata_mask[7]; // @[SourceD.scala 244:32]
  wire  selects_8 = s4_pbdata_mask[8]; // @[SourceD.scala 244:32]
  wire  selects_9 = s4_pbdata_mask[9]; // @[SourceD.scala 244:32]
  wire  selects_10 = s4_pbdata_mask[10]; // @[SourceD.scala 244:32]
  wire  selects_11 = s4_pbdata_mask[11]; // @[SourceD.scala 244:32]
  wire  selects_12 = s4_pbdata_mask[12]; // @[SourceD.scala 244:32]
  wire  selects_13 = s4_pbdata_mask[13]; // @[SourceD.scala 244:32]
  wire  selects_14 = s4_pbdata_mask[14]; // @[SourceD.scala 244:32]
  wire  selects_15 = s4_pbdata_mask[15]; // @[SourceD.scala 244:32]
  wire  selects_16 = s4_pbdata_mask[16]; // @[SourceD.scala 244:32]
  wire  selects_17 = s4_pbdata_mask[17]; // @[SourceD.scala 244:32]
  wire  selects_18 = s4_pbdata_mask[18]; // @[SourceD.scala 244:32]
  wire  selects_19 = s4_pbdata_mask[19]; // @[SourceD.scala 244:32]
  wire  selects_20 = s4_pbdata_mask[20]; // @[SourceD.scala 244:32]
  wire  selects_21 = s4_pbdata_mask[21]; // @[SourceD.scala 244:32]
  wire  selects_22 = s4_pbdata_mask[22]; // @[SourceD.scala 244:32]
  wire  selects_23 = s4_pbdata_mask[23]; // @[SourceD.scala 244:32]
  wire  selects_24 = s4_pbdata_mask[24]; // @[SourceD.scala 244:32]
  wire  selects_25 = s4_pbdata_mask[25]; // @[SourceD.scala 244:32]
  wire  selects_26 = s4_pbdata_mask[26]; // @[SourceD.scala 244:32]
  wire  selects_27 = s4_pbdata_mask[27]; // @[SourceD.scala 244:32]
  wire  selects_28 = s4_pbdata_mask[28]; // @[SourceD.scala 244:32]
  wire  selects_29 = s4_pbdata_mask[29]; // @[SourceD.scala 244:32]
  wire  selects_30 = s4_pbdata_mask[30]; // @[SourceD.scala 244:32]
  wire  selects_31 = s4_pbdata_mask[31]; // @[SourceD.scala 244:32]
  wire [7:0] _GEN_71 = selects_1 ? s4_pbdata_data[15:8] : s4_rdata[15:8]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_73 = selects_0 ? s4_pbdata_data[7:0] : s4_rdata[7:0]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_75 = selects_3 ? s4_pbdata_data[31:24] : s4_rdata[31:24]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_77 = selects_2 ? s4_pbdata_data[23:16] : s4_rdata[23:16]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_79 = selects_5 ? s4_pbdata_data[47:40] : s4_rdata[47:40]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_81 = selects_4 ? s4_pbdata_data[39:32] : s4_rdata[39:32]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_83 = selects_7 ? s4_pbdata_data[63:56] : s4_rdata[63:56]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_85 = selects_6 ? s4_pbdata_data[55:48] : s4_rdata[55:48]; // @[Cat.scala 31:{58,58}]
  wire [63:0] mergedData_lo_lo = {_GEN_83,_GEN_85,_GEN_79,_GEN_81,_GEN_75,_GEN_77,_GEN_71,_GEN_73}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_87 = selects_9 ? s4_pbdata_data[79:72] : s4_rdata[79:72]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_89 = selects_8 ? s4_pbdata_data[71:64] : s4_rdata[71:64]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_91 = selects_11 ? s4_pbdata_data[95:88] : s4_rdata[95:88]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_93 = selects_10 ? s4_pbdata_data[87:80] : s4_rdata[87:80]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_95 = selects_13 ? s4_pbdata_data[111:104] : s4_rdata[111:104]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_97 = selects_12 ? s4_pbdata_data[103:96] : s4_rdata[103:96]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_99 = selects_15 ? s4_pbdata_data[127:120] : s4_rdata[127:120]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_101 = selects_14 ? s4_pbdata_data[119:112] : s4_rdata[119:112]; // @[Cat.scala 31:{58,58}]
  wire [127:0] mergedData_lo = {_GEN_99,_GEN_101,_GEN_95,_GEN_97,_GEN_91,_GEN_93,_GEN_87,_GEN_89,mergedData_lo_lo}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_103 = selects_17 ? s4_pbdata_data[143:136] : s4_rdata[143:136]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_105 = selects_16 ? s4_pbdata_data[135:128] : s4_rdata[135:128]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_107 = selects_19 ? s4_pbdata_data[159:152] : s4_rdata[159:152]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_109 = selects_18 ? s4_pbdata_data[151:144] : s4_rdata[151:144]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_111 = selects_21 ? s4_pbdata_data[175:168] : s4_rdata[175:168]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_113 = selects_20 ? s4_pbdata_data[167:160] : s4_rdata[167:160]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_115 = selects_23 ? s4_pbdata_data[191:184] : s4_rdata[191:184]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_117 = selects_22 ? s4_pbdata_data[183:176] : s4_rdata[183:176]; // @[Cat.scala 31:{58,58}]
  wire [63:0] mergedData_hi_lo = {_GEN_115,_GEN_117,_GEN_111,_GEN_113,_GEN_107,_GEN_109,_GEN_103,_GEN_105}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_119 = selects_25 ? s4_pbdata_data[207:200] : s4_rdata[207:200]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_121 = selects_24 ? s4_pbdata_data[199:192] : s4_rdata[199:192]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_123 = selects_27 ? s4_pbdata_data[223:216] : s4_rdata[223:216]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_125 = selects_26 ? s4_pbdata_data[215:208] : s4_rdata[215:208]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_127 = selects_29 ? s4_pbdata_data[239:232] : s4_rdata[239:232]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_129 = selects_28 ? s4_pbdata_data[231:224] : s4_rdata[231:224]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_131 = selects_31 ? s4_pbdata_data[255:248] : s4_rdata[255:248]; // @[Cat.scala 31:{58,58}]
  wire [7:0] _GEN_133 = selects_30 ? s4_pbdata_data[247:240] : s4_rdata[247:240]; // @[Cat.scala 31:{58,58}]
  wire [127:0] mergedData_hi = {_GEN_131,_GEN_133,_GEN_127,_GEN_129,_GEN_123,_GEN_125,_GEN_119,_GEN_121,mergedData_hi_lo
    }; // @[Cat.scala 31:58]
  wire [2:0] s3_d_bits_size = pipe_io_out_bits_req_size; // @[SourceD.scala 202:18 213:18]
  wire [12:0] _decode_T_1 = 13'h3f << s3_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_3 = ~_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  decode = _decode_T_3[5]; // @[Edges.scala 219:59]
  wire [2:0] s3_d_bits_opcode = pipe_io_out_bits_req_opcode; // @[SourceD.scala 202:18 210:20]
  wire  opdata = s3_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  _T_32 = opdata & decode; // @[Edges.scala 220:14]
  wire [12:0] _decode_T_5 = 13'h3f << s2_req_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_7 = ~_decode_T_5[5:0]; // @[package.scala 234:46]
  wire  decode_1 = _decode_T_7[5]; // @[Edges.scala 219:59]
  wire  opdata_1 = s2_req_opcode[0]; // @[Edges.scala 105:36]
  wire  _T_33 = opdata_1 & decode_1; // @[Edges.scala 220:14]
  wire  latch = idle & io_d_ready; // @[Arbiter.scala 89:24]
  wire  earlyWinner_0 = readys_0 & s3_d_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1 = readys_1 & s2_d_valid; // @[Arbiter.scala 97:79]
  wire  _T_44 = s3_d_valid | s2_d_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner_0 & _T_32; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner_1 & _T_33; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_3 = state_0 & s3_d_valid | state_1 & s2_d_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle ? _T_44 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = io_d_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] s3_d_bits_data = s3_queue_io_deq_bits_data; // @[SourceD.scala 202:18 216:18]
  wire [255:0] _T_61 = muxStateEarly_0 ? s3_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] s2_d_bits_data = s1_queue_io_deq_bits_data; // @[SourceD.scala 135:18 162:18]
  wire [255:0] _T_62 = muxStateEarly_1 ? s2_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire  s3_d_bits_echo_blockisdirty = pipe_io_out_bits_req_dirty; // @[SourceD.scala 202:18 218:43]
  wire  s3_d_bits_denied = pipe_io_out_bits_req_denied; // @[SourceD.scala 202:18 215:20]
  wire [3:0] s3_d_bits_sink = pipe_io_out_bits_req_sinkId; // @[SourceD.scala 202:18 212:18]
  wire [3:0] _T_70 = muxStateEarly_0 ? s3_d_bits_sink : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_71 = muxStateEarly_1 ? s2_req_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [5:0] s3_d_bits_source = pipe_io_out_bits_req_sourceId; // @[SourceD.scala 202:18 214:20]
  wire [5:0] _T_73 = muxStateEarly_0 ? s3_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_74 = muxStateEarly_1 ? s2_req_sourceId : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_76 = muxStateEarly_0 ? s3_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_77 = muxStateEarly_1 ? s2_req_size : 3'h0; // @[Mux.scala 27:73]
  wire [1:0] s3_d_bits_param = _s3_d_bits_param_T[1:0]; // @[SourceD.scala 202:18 211:19]
  wire [1:0] _T_79 = muxStateEarly_0 ? s3_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] s2_d_bits_param = _s2_d_bits_param_T[1:0]; // @[SourceD.scala 135:18 157:19]
  wire [1:0] _T_80 = muxStateEarly_1 ? s2_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_82 = muxStateEarly_0 ? s3_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_83 = muxStateEarly_1 ? s2_req_opcode : 3'h0; // @[Mux.scala 27:73]
  Queue_220 s1_queue ( // @[SourceD.scala 86:24]
    .clock(s1_queue_clock),
    .reset(s1_queue_reset),
    .io_enq_ready(s1_queue_io_enq_ready),
    .io_enq_valid(s1_queue_io_enq_valid),
    .io_enq_bits_data(s1_queue_io_enq_bits_data),
    .io_deq_ready(s1_queue_io_deq_ready),
    .io_deq_valid(s1_queue_io_deq_valid),
    .io_deq_bits_data(s1_queue_io_deq_bits_data)
  );
  Queue_31 pbQueue ( // @[SourceD.scala 146:23]
    .clock(pbQueue_clock),
    .reset(pbQueue_reset),
    .io_enq_ready(pbQueue_io_enq_ready),
    .io_enq_valid(pbQueue_io_enq_valid),
    .io_enq_bits_data(pbQueue_io_enq_bits_data),
    .io_enq_bits_strb(pbQueue_io_enq_bits_strb),
    .io_enq_bits_last(pbQueue_io_enq_bits_last),
    .io_deq_ready(pbQueue_io_deq_ready),
    .io_deq_valid(pbQueue_io_deq_valid),
    .io_deq_bits_data(pbQueue_io_deq_bits_data),
    .io_deq_bits_strb(pbQueue_io_deq_bits_strb),
    .io_deq_bits_last(pbQueue_io_deq_bits_last)
  );
  Pipeline_1 pipe ( // @[SourceD.scala 183:20]
    .clock(pipe_clock),
    .reset(pipe_reset),
    .io_in_ready(pipe_io_in_ready),
    .io_in_valid(pipe_io_in_valid),
    .io_in_bits_counter(pipe_io_in_bits_counter),
    .io_in_bits_beat(pipe_io_in_bits_beat),
    .io_in_bits_needPb(pipe_io_in_bits_needPb),
    .io_in_bits_isReleaseAck(pipe_io_in_bits_isReleaseAck),
    .io_in_bits_req_sourceId(pipe_io_in_bits_req_sourceId),
    .io_in_bits_req_set(pipe_io_in_bits_req_set),
    .io_in_bits_req_opcode(pipe_io_in_bits_req_opcode),
    .io_in_bits_req_param(pipe_io_in_bits_req_param),
    .io_in_bits_req_size(pipe_io_in_bits_req_size),
    .io_in_bits_req_way(pipe_io_in_bits_req_way),
    .io_in_bits_req_denied(pipe_io_in_bits_req_denied),
    .io_in_bits_req_sinkId(pipe_io_in_bits_req_sinkId),
    .io_in_bits_req_dirty(pipe_io_in_bits_req_dirty),
    .io_out_ready(pipe_io_out_ready),
    .io_out_valid(pipe_io_out_valid),
    .io_out_bits_counter(pipe_io_out_bits_counter),
    .io_out_bits_beat(pipe_io_out_bits_beat),
    .io_out_bits_needPb(pipe_io_out_bits_needPb),
    .io_out_bits_isReleaseAck(pipe_io_out_bits_isReleaseAck),
    .io_out_bits_req_sourceId(pipe_io_out_bits_req_sourceId),
    .io_out_bits_req_set(pipe_io_out_bits_req_set),
    .io_out_bits_req_opcode(pipe_io_out_bits_req_opcode),
    .io_out_bits_req_param(pipe_io_out_bits_req_param),
    .io_out_bits_req_size(pipe_io_out_bits_req_size),
    .io_out_bits_req_way(pipe_io_out_bits_req_way),
    .io_out_bits_req_denied(pipe_io_out_bits_req_denied),
    .io_out_bits_req_sinkId(pipe_io_out_bits_req_sinkId),
    .io_out_bits_req_dirty(pipe_io_out_bits_req_dirty)
  );
  Queue_224 s3_queue ( // @[SourceD.scala 204:24]
    .clock(s3_queue_clock),
    .reset(s3_queue_reset),
    .io_enq_ready(s3_queue_io_enq_ready),
    .io_enq_valid(s3_queue_io_enq_valid),
    .io_enq_bits_data(s3_queue_io_enq_bits_data),
    .io_enq_bits_corrupt(s3_queue_io_enq_bits_corrupt),
    .io_deq_ready(s3_queue_io_deq_ready),
    .io_deq_valid(s3_queue_io_deq_valid),
    .io_deq_bits_data(s3_queue_io_deq_bits_data),
    .io_deq_bits_corrupt(s3_queue_io_deq_bits_corrupt)
  );
  assign io_d_valid = idle ? _T_44 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign io_d_bits_opcode = _T_82 | _T_83; // @[Mux.scala 27:73]
  assign io_d_bits_param = _T_79 | _T_80; // @[Mux.scala 27:73]
  assign io_d_bits_size = _T_76 | _T_77; // @[Mux.scala 27:73]
  assign io_d_bits_source = _T_73 | _T_74; // @[Mux.scala 27:73]
  assign io_d_bits_sink = _T_70 | _T_71; // @[Mux.scala 27:73]
  assign io_d_bits_denied = muxStateEarly_0 & s3_d_bits_denied | muxStateEarly_1 & s2_req_denied; // @[Mux.scala 27:73]
  assign io_d_bits_echo_blockisdirty = muxStateEarly_0 & s3_d_bits_echo_blockisdirty | muxStateEarly_1 & s2_req_dirty; // @[Mux.scala 27:73]
  assign io_d_bits_data = _T_61 | _T_62; // @[Mux.scala 27:73]
  assign io_d_bits_corrupt = muxStateEarly_0 & s3_d_bits_corrupt | muxStateEarly_1 & s2_req_denied; // @[Mux.scala 27:73]
  assign io_task_ready = ~busy; // @[SourceD.scala 117:20]
  assign io_bs_raddr_valid = s1_valid_r & ~s1_req_useBypass; // @[SourceD.scala 91:35]
  assign io_bs_raddr_bits_way = busy ? s1_req_reg_way : io_task_bits_way; // @[SourceD.scala 75:19]
  assign io_bs_raddr_bits_set = busy ? s1_req_reg_set : io_task_bits_set; // @[SourceD.scala 75:19]
  assign io_bs_raddr_bits_beat = s1_req_off[5] | s1_counter; // @[SourceD.scala 80:39]
  assign io_bypass_read_valid = s1_valid_r & s1_req_useBypass; // @[SourceD.scala 98:38]
  assign io_bypass_read_beat = s1_req_off[5] | s1_counter; // @[SourceD.scala 80:39]
  assign io_bypass_read_id = busy ? s1_req_reg_bufIdx : io_task_bits_bufIdx; // @[SourceD.scala 75:19]
  assign io_bypass_read_last = s1_counter == s1_total_beats; // @[SourceD.scala 82:28]
  assign io_bs_waddr_valid = s4_full & s4_need_pb; // @[SourceD.scala 249:32]
  assign io_bs_waddr_bits_way = s4_req_way; // @[SourceD.scala 251:25]
  assign io_bs_waddr_bits_set = s4_req_set; // @[SourceD.scala 252:25]
  assign io_bs_waddr_bits_beat = s4_beat; // @[SourceD.scala 253:25]
  assign io_bs_wdata_data = {mergedData_hi,mergedData_lo}; // @[Cat.scala 31:58]
  assign io_sourceD_rhazard_valid = busy & s1_needData; // @[SourceD.scala 262:37]
  assign io_sourceD_rhazard_bits_way = s1_req_reg_way; // @[SourceD.scala 264:32]
  assign io_sourceD_rhazard_bits_set = s1_req_reg_set; // @[SourceD.scala 263:32]
  assign io_pb_pop_valid = s2_valid_pb & s2_req_channel[0]; // @[SourceD.scala 141:34]
  assign io_pb_pop_bits_bufIdx = s2_req_bufIdx; // @[SourceD.scala 142:25]
  assign io_pb_pop_bits_count = s2_counter; // @[SourceD.scala 143:24]
  assign io_pb_pop_bits_last = s2_last; // @[SourceD.scala 144:24]
  assign s1_queue_clock = clock;
  assign s1_queue_reset = reset;
  assign s1_queue_io_enq_valid = io_bypass_read_valid & io_bypass_read_ready; // @[SourceD.scala 83:44]
  assign s1_queue_io_enq_bits_data = io_bypass_read_buffer_data_data; // @[SourceD.scala 88:24]
  assign s1_queue_io_deq_ready = s2_full & s2_req_useBypass & s2_needData & out_1_ready; // @[SourceD.scala 154:71]
  assign pbQueue_clock = clock;
  assign pbQueue_reset = reset;
  assign pbQueue_io_enq_valid = pbQueue_io_enq_valid_REG; // @[SourceD.scala 148:24]
  assign pbQueue_io_enq_bits_data = io_pb_beat_data; // @[SourceD.scala 147:23]
  assign pbQueue_io_enq_bits_strb = io_pb_beat_mask; // @[SourceD.scala 147:23]
  assign pbQueue_io_enq_bits_last = io_pb_beat_corrupt; // @[SourceD.scala 147:23]
  assign pbQueue_io_deq_ready = pipe_io_out_valid; // @[SourceD.scala 230:12 60:32]
  assign pipe_clock = clock;
  assign pipe_reset = reset;
  assign pipe_io_in_valid = s2_full & ~s2_d_valid & _s2_can_go_T_1; // @[SourceD.scala 170:38]
  assign pipe_io_in_bits_counter = s2_counter; // @[SourceD.scala 186:27]
  assign pipe_io_in_bits_beat = s2_beat; // @[SourceD.scala 187:24]
  assign pipe_io_in_bits_needPb = s2_need_pb; // @[SourceD.scala 188:26]
  assign pipe_io_in_bits_isReleaseAck = s2_req_opcode == 3'h6; // @[SourceD.scala 134:37]
  assign pipe_io_in_bits_req_sourceId = s2_req_sourceId; // @[SourceD.scala 191:23]
  assign pipe_io_in_bits_req_set = s2_req_set; // @[SourceD.scala 191:23]
  assign pipe_io_in_bits_req_opcode = s2_req_opcode; // @[SourceD.scala 191:23]
  assign pipe_io_in_bits_req_param = s2_req_param; // @[SourceD.scala 191:23]
  assign pipe_io_in_bits_req_size = s2_req_size; // @[SourceD.scala 191:23]
  assign pipe_io_in_bits_req_way = s2_req_way; // @[SourceD.scala 191:23]
  assign pipe_io_in_bits_req_denied = s2_req_denied; // @[SourceD.scala 191:23]
  assign pipe_io_in_bits_req_sinkId = s2_req_sinkId; // @[SourceD.scala 191:23]
  assign pipe_io_in_bits_req_dirty = s2_req_dirty; // @[SourceD.scala 191:23]
  assign pipe_io_out_ready = _T_10 | out_ready; // @[SourceD.scala 229:34]
  assign s3_queue_clock = clock;
  assign s3_queue_reset = reset;
  assign s3_queue_io_enq_valid = s3_queue_io_enq_valid_REG_2; // @[SourceD.scala 220:25]
  assign s3_queue_io_enq_bits_data = io_bs_rdata_data; // @[SourceD.scala 225:24]
  assign s3_queue_io_enq_bits_corrupt = io_bs_rdata_corrupt; // @[SourceD.scala 225:24]
  assign s3_queue_io_deq_ready = out_ready & s3_valid; // @[SourceD.scala 227:39]
  always @(posedge clock) begin
    if (reset) begin // @[SourceD.scala 72:21]
      busy <= 1'h0; // @[SourceD.scala 72:21]
    end else if (s1_valid & s2_ready) begin // @[SourceD.scala 109:30]
      if (s1_last) begin // @[SourceD.scala 112:19]
        busy <= 1'h0; // @[SourceD.scala 114:12]
      end else begin
        busy <= _GEN_15;
      end
    end else begin
      busy <= _GEN_15;
    end
    if (reset) begin // @[SourceD.scala 73:27]
      s1_block_r <= 1'h0; // @[SourceD.scala 73:27]
    end else if (s1_valid & s2_ready) begin // @[SourceD.scala 109:30]
      s1_block_r <= 1'h0; // @[SourceD.scala 111:16]
    end else begin
      s1_block_r <= _GEN_16;
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_sourceId <= io_task_bits_sourceId; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_set <= io_task_bits_set; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_channel <= io_task_bits_channel; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_opcode <= io_task_bits_opcode; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_param <= io_task_bits_param; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_size <= io_task_bits_size; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_way <= io_task_bits_way; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_off <= io_task_bits_off; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_useBypass <= io_task_bits_useBypass; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_bufIdx <= io_task_bits_bufIdx; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_denied <= io_task_bits_denied; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_sinkId <= io_task_bits_sinkId; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_bypassPut <= io_task_bits_bypassPut; // @[Reg.scala 17:22]
    end
    if (_s1_req_reg_T) begin // @[Reg.scala 17:18]
      s1_req_reg_dirty <= io_task_bits_dirty; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[SourceD.scala 78:27]
      s1_counter <= 1'h0; // @[SourceD.scala 78:27]
    end else if (s1_valid & s2_ready) begin // @[SourceD.scala 109:30]
      if (s1_last) begin // @[SourceD.scala 112:19]
        s1_counter <= 1'h0; // @[SourceD.scala 113:18]
      end else begin
        s1_counter <= s1_counter + 1'h1; // @[SourceD.scala 110:16]
      end
    end
    if (reset) begin // @[SourceD.scala 133:24]
      s2_full <= 1'h0; // @[SourceD.scala 133:24]
    end else begin
      s2_full <= _GEN_46;
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_useBypass <= s1_req_reg_useBypass;
      end else begin
        s2_req_useBypass <= io_task_bits_useBypass;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      s2_needData <= s1_needData; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch) begin // @[Arbiter.scala 113:23]
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_1 <= earlyWinner_1;
    end
    if (reset) begin // @[SourceD.scala 138:28]
      s2_valid_pb <= 1'h0; // @[SourceD.scala 138:28]
    end else if (_T_8) begin // @[SourceD.scala 152:19]
      s2_valid_pb <= s1_need_pb; // @[SourceD.scala 152:33]
    end else if (io_pb_pop_ready) begin // @[SourceD.scala 151:19]
      s2_valid_pb <= 1'h0; // @[SourceD.scala 151:33]
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_sourceId <= s1_req_reg_sourceId;
      end else begin
        s2_req_sourceId <= io_task_bits_sourceId;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_set <= s1_req_reg_set;
      end else begin
        s2_req_set <= io_task_bits_set;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_channel <= s1_req_reg_channel;
      end else begin
        s2_req_channel <= io_task_bits_channel;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_opcode <= s1_req_reg_opcode;
      end else begin
        s2_req_opcode <= io_task_bits_opcode;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_param <= s1_req_reg_param;
      end else begin
        s2_req_param <= io_task_bits_param;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_size <= s1_req_reg_size;
      end else begin
        s2_req_size <= io_task_bits_size;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_way <= s1_req_reg_way;
      end else begin
        s2_req_way <= io_task_bits_way;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_bufIdx <= s1_req_reg_bufIdx;
      end else begin
        s2_req_bufIdx <= io_task_bits_bufIdx;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_denied <= s1_req_reg_denied;
      end else begin
        s2_req_denied <= io_task_bits_denied;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_sinkId <= s1_req_reg_sinkId;
      end else begin
        s2_req_sinkId <= io_task_bits_sinkId;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      if (busy) begin // @[SourceD.scala 75:19]
        s2_req_dirty <= s1_req_reg_dirty;
      end else begin
        s2_req_dirty <= io_task_bits_dirty;
      end
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      s2_beat <= s1_beat; // @[Reg.scala 17:22]
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      s2_last <= s1_last; // @[Reg.scala 17:22]
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      s2_counter <= s1_counter; // @[Reg.scala 17:22]
    end
    if (_T_8) begin // @[Reg.scala 17:18]
      s2_need_pb <= s1_need_pb; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[SourceD.scala 148:34]
      pbQueue_io_enq_valid_REG <= 1'h0; // @[SourceD.scala 148:34]
    end else begin
      pbQueue_io_enq_valid_REG <= _pbQueue_io_enq_valid_T; // @[SourceD.scala 148:34]
    end
    if (reset) begin // @[Pipeline.scala 41:37]
      s3_queue_io_enq_valid_REG <= 1'h0; // @[Pipeline.scala 41:37]
    end else begin
      s3_queue_io_enq_valid_REG <= _T_6; // @[Pipeline.scala 41:37]
    end
    if (reset) begin // @[Pipeline.scala 41:37]
      s3_queue_io_enq_valid_REG_1 <= 1'h0; // @[Pipeline.scala 41:37]
    end else begin
      s3_queue_io_enq_valid_REG_1 <= s3_queue_io_enq_valid_REG; // @[Pipeline.scala 41:37]
    end
    if (reset) begin // @[Pipeline.scala 41:37]
      s3_queue_io_enq_valid_REG_2 <= 1'h0; // @[Pipeline.scala 41:37]
    end else begin
      s3_queue_io_enq_valid_REG_2 <= s3_queue_io_enq_valid_REG_1; // @[Pipeline.scala 41:37]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_0 <= earlyWinner_0;
    end
    if (reset) begin // @[SourceD.scala 239:24]
      s4_full <= 1'h0; // @[SourceD.scala 239:24]
    end else begin
      s4_full <= _GEN_69;
    end
    if (s4_latch) begin // @[Reg.scala 17:18]
      s4_need_pb <= pipe_io_out_bits_needPb; // @[Reg.scala 17:22]
    end
    if (s4_latch) begin // @[Reg.scala 17:18]
      s4_req_set <= pipe_io_out_bits_req_set; // @[Reg.scala 17:22]
    end
    if (s4_latch) begin // @[Reg.scala 17:18]
      s4_req_way <= pipe_io_out_bits_req_way; // @[Reg.scala 17:22]
    end
    if (s4_latch) begin // @[Reg.scala 17:18]
      s4_rdata <= s3_queue_io_deq_bits_data; // @[Reg.scala 17:22]
    end
    if (s4_latch) begin // @[Reg.scala 17:18]
      s4_pbdata_data <= pbQueue_io_deq_bits_data; // @[Reg.scala 17:22]
    end
    if (s4_latch) begin // @[Reg.scala 17:18]
      s4_pbdata_mask <= pbQueue_io_deq_bits_strb; // @[Reg.scala 17:22]
    end
    if (s4_latch) begin // @[Reg.scala 17:18]
      s4_beat <= pipe_io_out_bits_beat; // @[Reg.scala 17:22]
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
  busy = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s1_block_r = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s1_req_reg_sourceId = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  s1_req_reg_set = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  s1_req_reg_channel = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  s1_req_reg_opcode = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  s1_req_reg_param = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  s1_req_reg_size = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  s1_req_reg_way = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  s1_req_reg_off = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  s1_req_reg_useBypass = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s1_req_reg_bufIdx = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  s1_req_reg_denied = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s1_req_reg_sinkId = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  s1_req_reg_bypassPut = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s1_req_reg_dirty = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s1_counter = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s2_full = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  s2_req_useBypass = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  s2_needData = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  beatsLeft = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  state_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  s2_valid_pb = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s2_req_sourceId = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  s2_req_set = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  s2_req_channel = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  s2_req_opcode = _RAND_26[2:0];
  _RAND_27 = {1{`RANDOM}};
  s2_req_param = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  s2_req_size = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  s2_req_way = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  s2_req_bufIdx = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  s2_req_denied = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  s2_req_sinkId = _RAND_32[3:0];
  _RAND_33 = {1{`RANDOM}};
  s2_req_dirty = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  s2_beat = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  s2_last = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  s2_counter = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  s2_need_pb = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  pbQueue_io_enq_valid_REG = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  s3_queue_io_enq_valid_REG = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  s3_queue_io_enq_valid_REG_1 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  s3_queue_io_enq_valid_REG_2 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  state_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  s4_full = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  s4_need_pb = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  s4_req_set = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  s4_req_way = _RAND_46[2:0];
  _RAND_47 = {8{`RANDOM}};
  s4_rdata = _RAND_47[255:0];
  _RAND_48 = {8{`RANDOM}};
  s4_pbdata_data = _RAND_48[255:0];
  _RAND_49 = {1{`RANDOM}};
  s4_pbdata_mask = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  s4_beat = _RAND_50[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
