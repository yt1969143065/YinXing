module MissEntry(
  input          clock,
  input          reset,
  input  [2:0]   io_id,
  input          io_req_valid,
  input  [1:0]   io_req_bits_source,
  input  [4:0]   io_req_bits_cmd,
  input  [35:0]  io_req_bits_addr,
  input  [38:0]  io_req_bits_vaddr,
  input  [3:0]   io_req_bits_way_en,
  input  [511:0] io_req_bits_store_data,
  input  [63:0]  io_req_bits_store_mask,
  input  [2:0]   io_req_bits_word_idx,
  input  [63:0]  io_req_bits_amo_data,
  input  [7:0]   io_req_bits_amo_mask,
  input  [1:0]   io_req_bits_req_coh_state,
  input  [1:0]   io_req_bits_replace_coh_state,
  input  [23:0]  io_req_bits_replace_tag,
  input  [63:0]  io_req_bits_id,
  input          io_req_bits_cancel,
  input          io_primary_valid,
  output         io_primary_ready,
  output         io_secondary_ready,
  output         io_secondary_reject,
  output         io_refill_to_ldq_valid,
  output [35:0]  io_refill_to_ldq_bits_addr,
  output [255:0] io_refill_to_ldq_bits_data,
  output         io_refill_to_ldq_bits_error,
  output [511:0] io_refill_to_ldq_bits_data_raw,
  output         io_refill_to_ldq_bits_hasdata,
  output         io_refill_to_ldq_bits_refill_done,
  input          io_mem_acquire_ready,
  output         io_mem_acquire_valid,
  output [2:0]   io_mem_acquire_bits_opcode,
  output [2:0]   io_mem_acquire_bits_param,
  output [4:0]   io_mem_acquire_bits_source,
  output [35:0]  io_mem_acquire_bits_address,
  output [1:0]   io_mem_acquire_bits_user_alias,
  output         io_mem_grant_ready,
  input          io_mem_grant_valid,
  input  [2:0]   io_mem_grant_bits_opcode,
  input  [1:0]   io_mem_grant_bits_param,
  input  [2:0]   io_mem_grant_bits_size,
  input  [4:0]   io_mem_grant_bits_sink,
  input          io_mem_grant_bits_denied,
  input          io_mem_grant_bits_echo_blockisdirty,
  input  [255:0] io_mem_grant_bits_data,
  input          io_mem_grant_bits_corrupt,
  input          io_mem_finish_ready,
  output         io_mem_finish_valid,
  output [4:0]   io_mem_finish_bits_sink,
  input          io_refill_pipe_req_ready,
  output         io_refill_pipe_req_valid,
  output [1:0]   io_refill_pipe_req_bits_source,
  output [35:0]  io_refill_pipe_req_bits_addr,
  output [3:0]   io_refill_pipe_req_bits_way_en,
  output [7:0]   io_refill_pipe_req_bits_wmask,
  output [63:0]  io_refill_pipe_req_bits_data_0,
  output [63:0]  io_refill_pipe_req_bits_data_1,
  output [63:0]  io_refill_pipe_req_bits_data_2,
  output [63:0]  io_refill_pipe_req_bits_data_3,
  output [63:0]  io_refill_pipe_req_bits_data_4,
  output [63:0]  io_refill_pipe_req_bits_data_5,
  output [63:0]  io_refill_pipe_req_bits_data_6,
  output [63:0]  io_refill_pipe_req_bits_data_7,
  output [1:0]   io_refill_pipe_req_bits_meta_coh_state,
  output [1:0]   io_refill_pipe_req_bits_alias,
  output [2:0]   io_refill_pipe_req_bits_miss_id,
  output [63:0]  io_refill_pipe_req_bits_id,
  output         io_refill_pipe_req_bits_error,
  input          io_refill_pipe_resp,
  input          io_replace_pipe_req_ready,
  output         io_replace_pipe_req_valid,
  output [2:0]   io_replace_pipe_req_bits_miss_id,
  output [38:0]  io_replace_pipe_req_bits_vaddr,
  output [35:0]  io_replace_pipe_req_bits_addr,
  output [3:0]   io_replace_pipe_req_bits_replace_way_en,
  input          io_replace_pipe_resp,
  input          io_main_pipe_req_ready,
  output         io_main_pipe_req_valid,
  output [2:0]   io_main_pipe_req_bits_miss_id,
  output [1:0]   io_main_pipe_req_bits_miss_param,
  output         io_main_pipe_req_bits_miss_dirty,
  output [3:0]   io_main_pipe_req_bits_miss_way_en,
  output [1:0]   io_main_pipe_req_bits_source,
  output [4:0]   io_main_pipe_req_bits_cmd,
  output [38:0]  io_main_pipe_req_bits_vaddr,
  output [35:0]  io_main_pipe_req_bits_addr,
  output [511:0] io_main_pipe_req_bits_store_data,
  output [2:0]   io_main_pipe_req_bits_word_idx,
  output [63:0]  io_main_pipe_req_bits_amo_data,
  output [7:0]   io_main_pipe_req_bits_amo_mask,
  output         io_main_pipe_req_bits_error,
  output [63:0]  io_main_pipe_req_bits_id,
  input          io_main_pipe_resp,
  output         io_block_addr_valid,
  output [35:0]  io_block_addr_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [511:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
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
  reg [127:0] _RAND_28;
  reg [127:0] _RAND_29;
  reg [127:0] _RAND_30;
  reg [127:0] _RAND_31;
  reg [255:0] _RAND_32;
  reg [255:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] req_source; // @[MissQueue.scala 113:16]
  reg [4:0] req_cmd; // @[MissQueue.scala 113:16]
  reg [35:0] req_addr; // @[MissQueue.scala 113:16]
  reg [38:0] req_vaddr; // @[MissQueue.scala 113:16]
  reg [3:0] req_way_en; // @[MissQueue.scala 113:16]
  reg [511:0] req_store_data; // @[MissQueue.scala 113:16]
  reg [63:0] req_store_mask; // @[MissQueue.scala 113:16]
  reg [2:0] req_word_idx; // @[MissQueue.scala 113:16]
  reg [63:0] req_amo_data; // @[MissQueue.scala 113:16]
  reg [7:0] req_amo_mask; // @[MissQueue.scala 113:16]
  reg [1:0] req_req_coh_state; // @[MissQueue.scala 113:16]
  reg [23:0] req_replace_tag; // @[MissQueue.scala 113:16]
  reg [63:0] req_id; // @[MissQueue.scala 113:16]
  reg  req_valid; // @[MissQueue.scala 114:26]
  wire [7:0] set = req_vaddr[13:6]; // @[DCacheWrapper.scala 148:9]
  reg  s_acquire; // @[MissQueue.scala 117:26]
  reg  s_grantack; // @[MissQueue.scala 118:27]
  reg  s_replace_req; // @[MissQueue.scala 119:30]
  reg  s_refill; // @[MissQueue.scala 120:25]
  reg  s_mainpipe_req; // @[MissQueue.scala 121:31]
  reg  w_grantfirst; // @[MissQueue.scala 123:29]
  reg  w_grantlast; // @[MissQueue.scala 124:28]
  reg  w_replace_resp; // @[MissQueue.scala 125:31]
  reg  w_refill_resp; // @[MissQueue.scala 126:30]
  reg  w_mainpipe_resp; // @[MissQueue.scala 127:32]
  wire  mshr_penalty_sample = s_grantack & w_refill_resp & w_mainpipe_resp; // @[MissQueue.scala 129:51]
  wire  acquire_not_sent = ~s_acquire & ~io_mem_acquire_ready; // @[MissQueue.scala 131:37]
  wire  data_not_refilled = ~w_grantfirst; // @[MissQueue.scala 132:27]
  reg  error; // @[MissQueue.scala 134:22]
  reg  should_refill_data_reg; // @[MissQueue.scala 136:36]
  wire  _full_overwrite_T = req_source == 2'h1; // @[MissQueue.scala 63:24]
  wire  full_overwrite = _full_overwrite_T & &req_store_mask; // @[MissQueue.scala 139:36]
  wire  _T_6 = io_mem_grant_ready & io_mem_grant_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _beats1_decode_T_1 = 13'h3f << io_mem_grant_bits_size; // @[package.scala 234:77]
  wire [5:0] _beats1_decode_T_3 = ~_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beats1_decode = _beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beats1_opdata = io_mem_grant_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  beats1 = beats1_opdata & beats1_decode; // @[Edges.scala 220:14]
  reg  counter; // @[Edges.scala 228:27]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 229:28]
  wire  first = ~counter; // @[Edges.scala 230:25]
  wire  last = counter | ~beats1; // @[Edges.scala 231:37]
  wire  refill_done = last & _T_6; // @[Edges.scala 232:22]
  wire  refill_count = beats1 & ~counter1; // @[Edges.scala 233:25]
  reg [1:0] grant_param; // @[MissQueue.scala 142:24]
  wire  _GEN_1 = mshr_penalty_sample & req_valid ? 1'h0 : req_valid; // @[MissQueue.scala 144:37 145:15 114:26]
  wire  _primary_fire_T_2 = ~io_req_bits_cancel; // @[MissQueue.scala 148:87]
  wire  primary_fire = io_req_valid & io_primary_ready & io_primary_valid & ~io_req_bits_cancel; // @[MissQueue.scala 148:84]
  wire [35:0] _req_addr_T_1 = {io_req_bits_addr[35:6], 6'h0}; // @[L1Cache.scala 85:59]
  wire  _T_8 = io_req_bits_source == 2'h2; // @[MissQueue.scala 64:22]
  wire  _T_9 = ~_T_8; // @[MissQueue.scala 160:11]
  wire  _GEN_2 = ~_T_8 ? 1'h0 : s_refill; // @[MissQueue.scala 160:31 161:16 120:25]
  wire  _GEN_3 = ~_T_8 ? 1'h0 : w_refill_resp; // @[MissQueue.scala 160:31 162:21 126:30]
  wire  _T_10 = io_req_bits_req_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _T_12 = io_req_bits_replace_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _GEN_4 = ~_T_10 & _T_12 & _T_9 ? 1'h0 : s_replace_req; // @[MissQueue.scala 165:88 166:21 119:30]
  wire  _GEN_5 = ~_T_10 & _T_12 & _T_9 ? 1'h0 : w_replace_resp; // @[MissQueue.scala 165:88 167:22 125:31]
  wire  _GEN_6 = _T_8 ? 1'h0 : s_mainpipe_req; // @[MissQueue.scala 170:30 171:22 121:31]
  wire  _GEN_7 = _T_8 ? 1'h0 : w_mainpipe_resp; // @[MissQueue.scala 170:30 172:23 127:32]
  wire  _should_refill_data_reg_T = io_req_bits_source == 2'h0; // @[MissQueue.scala 62:23]
  wire  _GEN_8 = primary_fire | _GEN_1; // @[MissQueue.scala 149:23 150:15]
  wire [63:0] _GEN_10 = primary_fire ? io_req_bits_id : req_id; // @[MissQueue.scala 113:16 149:23 151:9]
  wire [23:0] _GEN_11 = primary_fire ? io_req_bits_replace_tag : req_replace_tag; // @[MissQueue.scala 113:16 149:23 151:9]
  wire [7:0] _GEN_14 = primary_fire ? io_req_bits_amo_mask : req_amo_mask; // @[MissQueue.scala 113:16 149:23 151:9]
  wire [63:0] _GEN_15 = primary_fire ? io_req_bits_amo_data : req_amo_data; // @[MissQueue.scala 113:16 149:23 151:9]
  wire [2:0] _GEN_16 = primary_fire ? io_req_bits_word_idx : req_word_idx; // @[MissQueue.scala 113:16 149:23 151:9]
  wire [63:0] _GEN_17 = primary_fire ? io_req_bits_store_mask : req_store_mask; // @[MissQueue.scala 113:16 149:23 151:9]
  wire [511:0] _GEN_18 = primary_fire ? io_req_bits_store_data : req_store_data; // @[MissQueue.scala 113:16 149:23 151:9]
  wire [3:0] _GEN_19 = primary_fire ? io_req_bits_way_en : req_way_en; // @[MissQueue.scala 113:16 149:23 151:9]
  wire [38:0] _GEN_20 = primary_fire ? io_req_bits_vaddr : req_vaddr; // @[MissQueue.scala 113:16 149:23 151:9]
  wire [35:0] _GEN_21 = primary_fire ? _req_addr_T_1 : req_addr; // @[MissQueue.scala 149:23 152:14 113:16]
  wire [4:0] _GEN_22 = primary_fire ? io_req_bits_cmd : req_cmd; // @[MissQueue.scala 113:16 149:23 151:9]
  wire [1:0] _GEN_23 = primary_fire ? io_req_bits_source : req_source; // @[MissQueue.scala 113:16 149:23 151:9]
  wire  _GEN_24 = primary_fire ? 1'h0 : s_acquire; // @[MissQueue.scala 149:23 154:15 117:26]
  wire  _GEN_25 = primary_fire ? 1'h0 : s_grantack; // @[MissQueue.scala 149:23 155:16 118:27]
  wire  _GEN_26 = primary_fire ? 1'h0 : w_grantfirst; // @[MissQueue.scala 149:23 157:18 123:29]
  wire  _GEN_27 = primary_fire ? 1'h0 : w_grantlast; // @[MissQueue.scala 149:23 158:17 124:28]
  wire  _GEN_28 = primary_fire ? _GEN_2 : s_refill; // @[MissQueue.scala 149:23 120:25]
  wire  _GEN_29 = primary_fire ? _GEN_3 : w_refill_resp; // @[MissQueue.scala 149:23 126:30]
  wire  _GEN_30 = primary_fire ? _GEN_4 : s_replace_req; // @[MissQueue.scala 149:23 119:30]
  wire  _GEN_31 = primary_fire ? _GEN_5 : w_replace_resp; // @[MissQueue.scala 149:23 125:31]
  wire  _GEN_32 = primary_fire ? _GEN_6 : s_mainpipe_req; // @[MissQueue.scala 149:23 121:31]
  wire  _GEN_33 = primary_fire ? _GEN_7 : w_mainpipe_resp; // @[MissQueue.scala 149:23 127:32]
  wire  secondary_fire = io_req_valid & io_secondary_ready & _primary_fire_T_2; // @[MissQueue.scala 179:68]
  wire  _T_29 = io_req_bits_source == 2'h1; // @[MissQueue.scala 63:24]
  wire  _T_30 = io_mem_acquire_ready & io_mem_acquire_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_68 = _T_30 | _GEN_24; // @[MissQueue.scala 198:32 199:15]
  reg [127:0] refill_data_0; // @[MissQueue.scala 202:24]
  reg [127:0] refill_data_1; // @[MissQueue.scala 202:24]
  reg [127:0] refill_data_2; // @[MissQueue.scala 202:24]
  reg [127:0] refill_data_3; // @[MissQueue.scala 202:24]
  reg [255:0] refill_data_raw_0; // @[MissQueue.scala 203:28]
  reg [255:0] refill_data_raw_1; // @[MissQueue.scala 203:28]
  wire [127:0] new_data_0 = req_store_data[127:0]; // @[MissQueue.scala 211:34]
  wire [15:0] new_mask_0 = _full_overwrite_T ? req_store_mask[15:0] : 16'h0; // @[MissQueue.scala 213:23]
  wire [127:0] new_data_1 = req_store_data[255:128]; // @[MissQueue.scala 211:34]
  wire [15:0] new_mask_1 = _full_overwrite_T ? req_store_mask[31:16] : 16'h0; // @[MissQueue.scala 213:23]
  wire [127:0] new_data_2 = req_store_data[383:256]; // @[MissQueue.scala 211:34]
  wire [15:0] new_mask_2 = _full_overwrite_T ? req_store_mask[47:32] : 16'h0; // @[MissQueue.scala 213:23]
  wire [127:0] new_data_3 = req_store_data[511:384]; // @[MissQueue.scala 211:34]
  wire [15:0] new_mask_3 = _full_overwrite_T ? req_store_mask[63:48] : 16'h0; // @[MissQueue.scala 213:23]
  reg  hasData; // @[MissQueue.scala 215:24]
  reg  isDirty; // @[MissQueue.scala 216:24]
  wire [1:0] _idx_T = {refill_count, 1'h0}; // @[MissQueue.scala 223:33]
  wire [2:0] _idx_T_1 = {{1'd0}, _idx_T}; // @[MissQueue.scala 223:57]
  wire [1:0] idx = _idx_T_1[1:0]; // @[MissQueue.scala 223:57]
  wire [127:0] grant_row = io_mem_grant_bits_data[127:0]; // @[MissQueue.scala 224:47]
  wire [15:0] _GEN_70 = 2'h1 == idx ? new_mask_1 : new_mask_0; // @[Bitwise.scala 27:{51,51}]
  wire [15:0] _GEN_71 = 2'h2 == idx ? new_mask_2 : _GEN_70; // @[Bitwise.scala 27:{51,51}]
  wire [15:0] _GEN_72 = 2'h3 == idx ? new_mask_3 : _GEN_71; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _refill_data_full_wmask_T_17 = _GEN_72[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_19 = _GEN_72[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_21 = _GEN_72[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_23 = _GEN_72[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_25 = _GEN_72[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_27 = _GEN_72[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_29 = _GEN_72[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_31 = _GEN_72[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_33 = _GEN_72[8] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_35 = _GEN_72[9] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_37 = _GEN_72[10] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_39 = _GEN_72[11] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_41 = _GEN_72[12] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_43 = _GEN_72[13] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_45 = _GEN_72[14] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_47 = _GEN_72[15] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] refill_data_full_wmask_lo = {_refill_data_full_wmask_T_31,_refill_data_full_wmask_T_29,
    _refill_data_full_wmask_T_27,_refill_data_full_wmask_T_25,_refill_data_full_wmask_T_23,_refill_data_full_wmask_T_21,
    _refill_data_full_wmask_T_19,_refill_data_full_wmask_T_17}; // @[Cat.scala 31:58]
  wire [127:0] refill_data_full_wmask = {_refill_data_full_wmask_T_47,_refill_data_full_wmask_T_45,
    _refill_data_full_wmask_T_43,_refill_data_full_wmask_T_41,_refill_data_full_wmask_T_39,_refill_data_full_wmask_T_37,
    _refill_data_full_wmask_T_35,_refill_data_full_wmask_T_33,refill_data_full_wmask_lo}; // @[Cat.scala 31:58]
  wire [127:0] _refill_data_T = ~refill_data_full_wmask; // @[MissQueue.scala 208:6]
  wire [127:0] _refill_data_T_1 = _refill_data_T & grant_row; // @[MissQueue.scala 208:18]
  wire [127:0] _GEN_74 = 2'h1 == idx ? new_data_1 : new_data_0; // @[MissQueue.scala 208:{42,42}]
  wire [127:0] _GEN_75 = 2'h2 == idx ? new_data_2 : _GEN_74; // @[MissQueue.scala 208:{42,42}]
  wire [127:0] _GEN_76 = 2'h3 == idx ? new_data_3 : _GEN_75; // @[MissQueue.scala 208:{42,42}]
  wire [127:0] _refill_data_T_2 = refill_data_full_wmask & _GEN_76; // @[MissQueue.scala 208:42]
  wire [127:0] _refill_data_T_3 = _refill_data_T_1 | _refill_data_T_2; // @[MissQueue.scala 208:29]
  wire [1:0] idx_1 = _idx_T + 2'h1; // @[MissQueue.scala 223:57]
  wire [127:0] grant_row_1 = io_mem_grant_bits_data[255:128]; // @[MissQueue.scala 224:47]
  wire [15:0] _GEN_82 = 2'h1 == idx_1 ? new_mask_1 : new_mask_0; // @[Bitwise.scala 27:{51,51}]
  wire [15:0] _GEN_83 = 2'h2 == idx_1 ? new_mask_2 : _GEN_82; // @[Bitwise.scala 27:{51,51}]
  wire [15:0] _GEN_84 = 2'h3 == idx_1 ? new_mask_3 : _GEN_83; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _refill_data_full_wmask_T_65 = _GEN_84[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_67 = _GEN_84[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_69 = _GEN_84[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_71 = _GEN_84[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_73 = _GEN_84[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_75 = _GEN_84[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_77 = _GEN_84[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_79 = _GEN_84[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_81 = _GEN_84[8] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_83 = _GEN_84[9] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_85 = _GEN_84[10] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_87 = _GEN_84[11] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_89 = _GEN_84[12] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_91 = _GEN_84[13] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_93 = _GEN_84[14] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_data_full_wmask_T_95 = _GEN_84[15] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] refill_data_full_wmask_lo_1 = {_refill_data_full_wmask_T_79,_refill_data_full_wmask_T_77,
    _refill_data_full_wmask_T_75,_refill_data_full_wmask_T_73,_refill_data_full_wmask_T_71,_refill_data_full_wmask_T_69,
    _refill_data_full_wmask_T_67,_refill_data_full_wmask_T_65}; // @[Cat.scala 31:58]
  wire [127:0] refill_data_full_wmask_1 = {_refill_data_full_wmask_T_95,_refill_data_full_wmask_T_93,
    _refill_data_full_wmask_T_91,_refill_data_full_wmask_T_89,_refill_data_full_wmask_T_87,_refill_data_full_wmask_T_85,
    _refill_data_full_wmask_T_83,_refill_data_full_wmask_T_81,refill_data_full_wmask_lo_1}; // @[Cat.scala 31:58]
  wire [127:0] _refill_data_T_4 = ~refill_data_full_wmask_1; // @[MissQueue.scala 208:6]
  wire [127:0] _refill_data_T_5 = _refill_data_T_4 & grant_row_1; // @[MissQueue.scala 208:18]
  wire [127:0] _GEN_86 = 2'h1 == idx_1 ? new_data_1 : new_data_0; // @[MissQueue.scala 208:{42,42}]
  wire [127:0] _GEN_87 = 2'h2 == idx_1 ? new_data_2 : _GEN_86; // @[MissQueue.scala 208:{42,42}]
  wire [127:0] _GEN_88 = 2'h3 == idx_1 ? new_data_3 : _GEN_87; // @[MissQueue.scala 208:{42,42}]
  wire [127:0] _refill_data_T_6 = refill_data_full_wmask_1 & _GEN_88; // @[MissQueue.scala 208:42]
  wire [127:0] _refill_data_T_7 = _refill_data_T_5 | _refill_data_T_6; // @[MissQueue.scala 208:29]
  wire  _GEN_97 = beats1_opdata ? w_grantlast | refill_done : 1'h1; // @[MissQueue.scala 220:44 227:19 235:19]
  wire  _GEN_101 = _T_6 | _GEN_26; // @[MissQueue.scala 217:30 218:18]
  wire  _GEN_107 = _T_6 ? _GEN_97 : _GEN_27; // @[MissQueue.scala 217:30]
  wire  _GEN_108 = _T_6 ? beats1_opdata : hasData; // @[MissQueue.scala 215:24 217:30]
  wire  _T_35 = io_mem_finish_ready & io_mem_finish_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_113 = _T_35 | _GEN_25; // @[MissQueue.scala 245:31 246:16]
  wire  _T_36 = io_replace_pipe_req_ready & io_replace_pipe_req_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_114 = _T_36 | _GEN_30; // @[MissQueue.scala 249:37 250:19]
  wire  _GEN_115 = io_replace_pipe_resp | _GEN_31; // @[MissQueue.scala 253:31 254:20]
  wire  _T_37 = io_refill_pipe_req_ready & io_refill_pipe_req_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_116 = _T_37 | _GEN_28; // @[MissQueue.scala 257:36 258:14]
  wire  _GEN_117 = io_refill_pipe_resp | _GEN_29; // @[MissQueue.scala 261:30 262:19]
  wire  _T_38 = io_main_pipe_req_ready & io_main_pipe_req_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_118 = _T_38 | _GEN_32; // @[MissQueue.scala 265:34 266:20]
  wire  _GEN_119 = io_main_pipe_resp | _GEN_33; // @[MissQueue.scala 269:28 270:21]
  wire  io_secondary_ready_block_match = req_addr[35:6] == io_req_bits_addr[35:6]; // @[MissQueue.scala 282:43]
  wire  _io_secondary_ready_T = req_source == 2'h0; // @[MissQueue.scala 62:23]
  wire  _io_secondary_ready_T_5 = acquire_not_sent & _io_secondary_ready_T & (_should_refill_data_reg_T | _T_29); // @[MissQueue.scala 274:36]
  wire  _io_secondary_ready_T_11 = data_not_refilled & (_io_secondary_ready_T | _full_overwrite_T) &
    _should_refill_data_reg_T; // @[MissQueue.scala 278:54]
  wire  _io_secondary_ready_T_12 = _io_secondary_ready_T_5 | _io_secondary_ready_T_11; // @[MissQueue.scala 284:42]
  wire  io_secondary_reject_set_match = set == io_req_bits_vaddr[13:6]; // @[MissQueue.scala 290:25]
  wire  _io_secondary_reject_T_13 = ~_io_secondary_ready_T_11; // @[MissQueue.scala 296:11]
  wire  _io_secondary_reject_T_14 = ~_io_secondary_ready_T_5 & _io_secondary_reject_T_13; // @[MissQueue.scala 295:46]
  wire  _io_secondary_reject_T_16 = io_secondary_reject_set_match & io_req_bits_way_en == req_way_en; // @[MissQueue.scala 297:19]
  wire  _io_secondary_reject_T_17 = io_secondary_ready_block_match ? _io_secondary_reject_T_14 :
    _io_secondary_reject_T_16; // @[MissQueue.scala 293:10]
  wire [255:0] refill_data_splited_data_lo = {refill_data_1,refill_data_0}; // @[MissQueue.scala 309:28]
  wire [255:0] refill_data_splited_data_hi = {refill_data_3,refill_data_2}; // @[MissQueue.scala 309:28]
  wire [511:0] refill_data_splited_data = {refill_data_3,refill_data_2,refill_data_1,refill_data_0}; // @[MissQueue.scala 309:28]
  wire [255:0] refill_data_splited_0 = refill_data_splited_data[255:0]; // @[MissQueue.scala 310:9]
  wire [255:0] refill_data_splited_1 = refill_data_splited_data[511:256]; // @[MissQueue.scala 310:9]
  wire  _io_refill_to_ldq_valid_T = ~w_grantlast; // @[MissQueue.scala 312:37]
  reg  io_refill_to_ldq_valid_REG; // @[MissQueue.scala 312:36]
  wire [5:0] _io_refill_to_ldq_bits_addr_T = {refill_count, 5'h0}; // @[MissQueue.scala 313:66]
  wire [35:0] _GEN_130 = {{30'd0}, _io_refill_to_ldq_bits_addr_T}; // @[MissQueue.scala 313:50]
  reg [35:0] io_refill_to_ldq_bits_addr_REG; // @[MissQueue.scala 313:40]
  reg  io_refill_to_ldq_bits_data_REG; // @[MissQueue.scala 314:60]
  reg  io_refill_to_ldq_bits_error_REG; // @[MissQueue.scala 315:41]
  reg  io_refill_to_ldq_bits_refill_done_REG; // @[MissQueue.scala 316:47]
  wire  _grow_param_c_cat_T_5 = req_cmd == 5'h4; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_6 = req_cmd == 5'h9; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_7 = req_cmd == 5'ha; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_8 = req_cmd == 5'hb; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_11 = _grow_param_c_cat_T_5 | _grow_param_c_cat_T_6 | _grow_param_c_cat_T_7 |
    _grow_param_c_cat_T_8; // @[package.scala 72:59]
  wire  _grow_param_c_cat_T_12 = req_cmd == 5'h8; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_13 = req_cmd == 5'hc; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_14 = req_cmd == 5'hd; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_15 = req_cmd == 5'he; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_16 = req_cmd == 5'hf; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_20 = _grow_param_c_cat_T_12 | _grow_param_c_cat_T_13 | _grow_param_c_cat_T_14 |
    _grow_param_c_cat_T_15 | _grow_param_c_cat_T_16; // @[package.scala 72:59]
  wire  _grow_param_c_cat_T_21 = _grow_param_c_cat_T_11 | _grow_param_c_cat_T_20; // @[Consts.scala 82:44]
  wire  _grow_param_c_cat_T_22 = req_cmd == 5'h1 | req_cmd == 5'h11 | req_cmd == 5'h7 | _grow_param_c_cat_T_21; // @[Consts.scala 85:76]
  wire  _grow_param_c_cat_T_49 = _grow_param_c_cat_T_22 | req_cmd == 5'h3 | req_cmd == 5'h6; // @[Consts.scala 86:64]
  wire [3:0] _grow_param_T = {_grow_param_c_cat_T_22,_grow_param_c_cat_T_49,req_req_coh_state}; // @[Cat.scala 31:58]
  wire  _grow_param_T_25 = 4'hc == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_27 = _grow_param_T_25 ? 2'h1 : 2'h0; // @[Misc.scala 34:36]
  wire  _grow_param_T_28 = 4'hd == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_30 = _grow_param_T_28 ? 2'h2 : _grow_param_T_27; // @[Misc.scala 34:36]
  wire  _grow_param_T_31 = 4'h4 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_33 = _grow_param_T_31 ? 2'h1 : _grow_param_T_30; // @[Misc.scala 34:36]
  wire  _grow_param_T_34 = 4'h5 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_36 = _grow_param_T_34 ? 2'h2 : _grow_param_T_33; // @[Misc.scala 34:36]
  wire  _grow_param_T_37 = 4'h0 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_39 = _grow_param_T_37 ? 2'h0 : _grow_param_T_36; // @[Misc.scala 34:36]
  wire  _grow_param_T_40 = 4'he == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_42 = _grow_param_T_40 ? 2'h3 : _grow_param_T_39; // @[Misc.scala 34:36]
  wire  _grow_param_T_43 = 4'hf == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_45 = _grow_param_T_43 ? 2'h3 : _grow_param_T_42; // @[Misc.scala 34:36]
  wire  _grow_param_T_46 = 4'h6 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_48 = _grow_param_T_46 ? 2'h2 : _grow_param_T_45; // @[Misc.scala 34:36]
  wire  _grow_param_T_49 = 4'h7 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_51 = _grow_param_T_49 ? 2'h3 : _grow_param_T_48; // @[Misc.scala 34:36]
  wire  _grow_param_T_52 = 4'h1 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_54 = _grow_param_T_52 ? 2'h1 : _grow_param_T_51; // @[Misc.scala 34:36]
  wire  _grow_param_T_55 = 4'h2 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_57 = _grow_param_T_55 ? 2'h2 : _grow_param_T_54; // @[Misc.scala 34:36]
  wire  _grow_param_T_58 = 4'h3 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] grow_param = _grow_param_T_58 ? 2'h3 : _grow_param_T_57; // @[Misc.scala 34:36]
  wire [2:0] acquirePerm_param = {{1'd0}, grow_param}; // @[Edges.scala 360:17 362:15]
  wire [4:0] acquirePerm_source = {{2'd0}, io_id}; // @[Edges.scala 360:17 364:15]
  reg [4:0] grantack_sink; // @[Reg.scala 16:16]
  wire  _io_refill_pipe_req_bits_wmask_T_1 = hasData | _io_secondary_ready_T; // @[MissQueue.scala 372:13]
  wire [7:0] _io_refill_pipe_req_bits_wmask_T_19 = {|req_store_mask[63:56],|req_store_mask[55:48],|req_store_mask[47:40]
    ,|req_store_mask[39:32],|req_store_mask[31:24],|req_store_mask[23:16],|req_store_mask[15:8],|req_store_mask[7:0]}; // @[MissQueue.scala 374:86]
  wire [4:0] _io_refill_pipe_req_bits_meta_coh_T = {_grow_param_c_cat_T_22,_grow_param_c_cat_T_49,grant_param,isDirty}; // @[Cat.scala 31:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_18 = 5'h2 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h1 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_20 = 5'h3 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h1 :
    _io_refill_pipe_req_bits_meta_coh_T_18; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_22 = 5'h0 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h2 :
    _io_refill_pipe_req_bits_meta_coh_T_20; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_24 = 5'h1 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h3 :
    _io_refill_pipe_req_bits_meta_coh_T_22; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_26 = 5'h8 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h2 :
    _io_refill_pipe_req_bits_meta_coh_T_24; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_28 = 5'h9 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h3 :
    _io_refill_pipe_req_bits_meta_coh_T_26; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_30 = 5'h18 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h3 :
    _io_refill_pipe_req_bits_meta_coh_T_28; // @[Mux.scala 81:58]
  assign io_primary_ready = ~req_valid; // @[MissQueue.scala 301:23]
  assign io_secondary_ready = io_secondary_ready_block_match & _io_secondary_ready_T_12; // @[MissQueue.scala 283:17]
  assign io_secondary_reject = req_valid & _io_secondary_reject_T_17; // @[MissQueue.scala 292:15]
  assign io_refill_to_ldq_valid = io_refill_to_ldq_valid_REG & should_refill_data_reg; // @[MissQueue.scala 312:74]
  assign io_refill_to_ldq_bits_addr = io_refill_to_ldq_bits_addr_REG; // @[MissQueue.scala 313:30]
  assign io_refill_to_ldq_bits_data = io_refill_to_ldq_bits_data_REG ? refill_data_splited_1 : refill_data_splited_0; // @[MissQueue.scala 314:{30,30}]
  assign io_refill_to_ldq_bits_error = io_refill_to_ldq_bits_error_REG; // @[MissQueue.scala 315:31]
  assign io_refill_to_ldq_bits_data_raw = {refill_data_raw_1,refill_data_raw_0}; // @[MissQueue.scala 318:53]
  assign io_refill_to_ldq_bits_hasdata = hasData; // @[MissQueue.scala 317:33]
  assign io_refill_to_ldq_bits_refill_done = io_refill_to_ldq_bits_refill_done_REG; // @[MissQueue.scala 316:37]
  assign io_mem_acquire_valid = ~s_acquire; // @[MissQueue.scala 320:27]
  assign io_mem_acquire_bits_opcode = full_overwrite ? 3'h7 : 3'h6; // @[MissQueue.scala 334:29]
  assign io_mem_acquire_bits_param = full_overwrite ? acquirePerm_param : acquirePerm_param; // @[MissQueue.scala 334:29]
  assign io_mem_acquire_bits_source = full_overwrite ? acquirePerm_source : acquirePerm_source; // @[MissQueue.scala 334:29]
  assign io_mem_acquire_bits_address = req_addr; // @[MissQueue.scala 334:29]
  assign io_mem_acquire_bits_user_alias = req_vaddr[13:12]; // @[MissQueue.scala 336:66]
  assign io_mem_grant_ready = _io_refill_to_ldq_valid_T & s_acquire; // @[MissQueue.scala 343:38]
  assign io_mem_finish_valid = ~s_grantack & w_grantfirst; // @[MissQueue.scala 347:38]
  assign io_mem_finish_bits_sink = grantack_sink; // @[MissQueue.scala 348:22]
  assign io_refill_pipe_req_valid = ~s_refill & w_replace_resp & w_grantlast; // @[MissQueue.scala 366:59]
  assign io_refill_pipe_req_bits_source = req_source; // @[MissQueue.scala 368:17]
  assign io_refill_pipe_req_bits_addr = req_addr; // @[MissQueue.scala 369:15]
  assign io_refill_pipe_req_bits_way_en = req_way_en; // @[MissQueue.scala 370:17]
  assign io_refill_pipe_req_bits_wmask = _io_refill_pipe_req_bits_wmask_T_1 ? 8'hff :
    _io_refill_pipe_req_bits_wmask_T_19; // @[MissQueue.scala 371:22]
  assign io_refill_pipe_req_bits_data_0 = refill_data_splited_data[63:0]; // @[MissQueue.scala 376:38]
  assign io_refill_pipe_req_bits_data_1 = refill_data_splited_data[127:64]; // @[MissQueue.scala 376:38]
  assign io_refill_pipe_req_bits_data_2 = refill_data_splited_data[191:128]; // @[MissQueue.scala 376:38]
  assign io_refill_pipe_req_bits_data_3 = refill_data_splited_data[255:192]; // @[MissQueue.scala 376:38]
  assign io_refill_pipe_req_bits_data_4 = refill_data_splited_data[319:256]; // @[MissQueue.scala 376:38]
  assign io_refill_pipe_req_bits_data_5 = refill_data_splited_data[383:320]; // @[MissQueue.scala 376:38]
  assign io_refill_pipe_req_bits_data_6 = refill_data_splited_data[447:384]; // @[MissQueue.scala 376:38]
  assign io_refill_pipe_req_bits_data_7 = refill_data_splited_data[511:448]; // @[MissQueue.scala 376:38]
  assign io_refill_pipe_req_bits_meta_coh_state = 5'h19 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h3 :
    _io_refill_pipe_req_bits_meta_coh_T_30; // @[Mux.scala 81:58]
  assign io_refill_pipe_req_bits_alias = req_vaddr[13:12]; // @[MissQueue.scala 394:28]
  assign io_refill_pipe_req_bits_miss_id = io_id; // @[MissQueue.scala 377:18]
  assign io_refill_pipe_req_bits_id = req_id; // @[MissQueue.scala 378:13]
  assign io_refill_pipe_req_bits_error = error; // @[MissQueue.scala 393:16]
  assign io_replace_pipe_req_valid = ~s_replace_req; // @[MissQueue.scala 350:32]
  assign io_replace_pipe_req_bits_miss_id = io_id; // @[MissQueue.scala 354:19]
  assign io_replace_pipe_req_bits_vaddr = req_vaddr; // @[MissQueue.scala 359:17]
  assign io_replace_pipe_req_bits_addr = {req_replace_tag,12'h0}; // @[Cat.scala 31:58]
  assign io_replace_pipe_req_bits_replace_way_en = req_way_en; // @[MissQueue.scala 363:26]
  assign io_main_pipe_req_valid = ~s_mainpipe_req & w_grantlast; // @[MissQueue.scala 396:45]
  assign io_main_pipe_req_bits_miss_id = io_id; // @[MissQueue.scala 399:33]
  assign io_main_pipe_req_bits_miss_param = grant_param; // @[MissQueue.scala 400:36]
  assign io_main_pipe_req_bits_miss_dirty = isDirty; // @[MissQueue.scala 401:36]
  assign io_main_pipe_req_bits_miss_way_en = req_way_en; // @[MissQueue.scala 402:37]
  assign io_main_pipe_req_bits_source = req_source; // @[MissQueue.scala 404:32]
  assign io_main_pipe_req_bits_cmd = req_cmd; // @[MissQueue.scala 405:29]
  assign io_main_pipe_req_bits_vaddr = req_vaddr; // @[MissQueue.scala 406:31]
  assign io_main_pipe_req_bits_addr = req_addr; // @[MissQueue.scala 407:30]
  assign io_main_pipe_req_bits_store_data = {refill_data_splited_data_hi,refill_data_splited_data_lo}; // @[MissQueue.scala 408:51]
  assign io_main_pipe_req_bits_word_idx = req_word_idx; // @[MissQueue.scala 410:34]
  assign io_main_pipe_req_bits_amo_data = req_amo_data; // @[MissQueue.scala 411:34]
  assign io_main_pipe_req_bits_amo_mask = req_amo_mask; // @[MissQueue.scala 412:34]
  assign io_main_pipe_req_bits_error = error; // @[MissQueue.scala 413:31]
  assign io_main_pipe_req_bits_id = req_id; // @[MissQueue.scala 414:28]
  assign io_block_addr_valid = req_valid & w_grantlast & ~w_refill_resp; // @[MissQueue.scala 416:51]
  assign io_block_addr_bits = req_addr; // @[MissQueue.scala 417:22]
  always @(posedge clock) begin
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (_T_29) begin // @[MissQueue.scala 186:32]
        req_source <= io_req_bits_source; // @[MissQueue.scala 187:11]
      end else begin
        req_source <= _GEN_23;
      end
    end else begin
      req_source <= _GEN_23;
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (_T_29) begin // @[MissQueue.scala 186:32]
        req_cmd <= io_req_bits_cmd; // @[MissQueue.scala 187:11]
      end else begin
        req_cmd <= _GEN_22;
      end
    end else begin
      req_cmd <= _GEN_22;
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (_T_29) begin // @[MissQueue.scala 186:32]
        req_addr <= _req_addr_T_1; // @[MissQueue.scala 188:16]
      end else begin
        req_addr <= _GEN_21;
      end
    end else begin
      req_addr <= _GEN_21;
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (_T_29) begin // @[MissQueue.scala 186:32]
        req_vaddr <= io_req_bits_vaddr; // @[MissQueue.scala 187:11]
      end else begin
        req_vaddr <= _GEN_20;
      end
    end else begin
      req_vaddr <= _GEN_20;
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (!(_T_29)) begin // @[MissQueue.scala 186:32]
        req_way_en <= _GEN_19;
      end
    end else begin
      req_way_en <= _GEN_19;
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (_T_29) begin // @[MissQueue.scala 186:32]
        req_store_data <= io_req_bits_store_data; // @[MissQueue.scala 187:11]
      end else begin
        req_store_data <= _GEN_18;
      end
    end else begin
      req_store_data <= _GEN_18;
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (_T_29) begin // @[MissQueue.scala 186:32]
        req_store_mask <= io_req_bits_store_mask; // @[MissQueue.scala 187:11]
      end else begin
        req_store_mask <= _GEN_17;
      end
    end else begin
      req_store_mask <= _GEN_17;
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (_T_29) begin // @[MissQueue.scala 186:32]
        req_word_idx <= io_req_bits_word_idx; // @[MissQueue.scala 187:11]
      end else begin
        req_word_idx <= _GEN_16;
      end
    end else begin
      req_word_idx <= _GEN_16;
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (_T_29) begin // @[MissQueue.scala 186:32]
        req_amo_data <= io_req_bits_amo_data; // @[MissQueue.scala 187:11]
      end else begin
        req_amo_data <= _GEN_15;
      end
    end else begin
      req_amo_data <= _GEN_15;
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (_T_29) begin // @[MissQueue.scala 186:32]
        req_amo_mask <= io_req_bits_amo_mask; // @[MissQueue.scala 187:11]
      end else begin
        req_amo_mask <= _GEN_14;
      end
    end else begin
      req_amo_mask <= _GEN_14;
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      req_req_coh_state <= io_req_bits_req_coh_state;
    end else if (primary_fire) begin // @[MissQueue.scala 149:23]
      req_req_coh_state <= io_req_bits_req_coh_state; // @[MissQueue.scala 151:9]
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (!(_T_29)) begin // @[MissQueue.scala 186:32]
        req_replace_tag <= _GEN_11;
      end
    end else begin
      req_replace_tag <= _GEN_11;
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (_T_29) begin // @[MissQueue.scala 186:32]
        req_id <= io_req_bits_id; // @[MissQueue.scala 187:11]
      end else begin
        req_id <= _GEN_10;
      end
    end else begin
      req_id <= _GEN_10;
    end
    if (reset) begin // @[MissQueue.scala 114:26]
      req_valid <= 1'h0; // @[MissQueue.scala 114:26]
    end else begin
      req_valid <= _GEN_8;
    end
    s_acquire <= reset | _GEN_68; // @[MissQueue.scala 117:{26,26}]
    s_grantack <= reset | _GEN_113; // @[MissQueue.scala 118:{27,27}]
    s_replace_req <= reset | _GEN_114; // @[MissQueue.scala 119:{30,30}]
    s_refill <= reset | _GEN_116; // @[MissQueue.scala 120:{25,25}]
    s_mainpipe_req <= reset | _GEN_118; // @[MissQueue.scala 121:{31,31}]
    w_grantfirst <= reset | _GEN_101; // @[MissQueue.scala 123:{29,29}]
    w_grantlast <= reset | _GEN_107; // @[MissQueue.scala 124:{28,28}]
    w_replace_resp <= reset | _GEN_115; // @[MissQueue.scala 125:{31,31}]
    w_refill_resp <= reset | _GEN_117; // @[MissQueue.scala 126:{30,30}]
    w_mainpipe_resp <= reset | _GEN_119; // @[MissQueue.scala 127:{32,32}]
    if (reset) begin // @[MissQueue.scala 134:22]
      error <= 1'h0; // @[MissQueue.scala 134:22]
    end else if (_T_6) begin // @[MissQueue.scala 217:30]
      error <= io_mem_grant_bits_denied | io_mem_grant_bits_corrupt | error; // @[MissQueue.scala 239:11]
    end else if (primary_fire) begin // @[MissQueue.scala 149:23]
      error <= 1'h0; // @[MissQueue.scala 176:11]
    end
    if (secondary_fire) begin // @[MissQueue.scala 180:25]
      if (secondary_fire) begin // @[MissQueue.scala 180:25]
        should_refill_data_reg <= should_refill_data_reg | _should_refill_data_reg_T; // @[MissQueue.scala 194:24]
      end
    end else if (primary_fire) begin // @[MissQueue.scala 149:23]
      should_refill_data_reg <= _should_refill_data_reg_T; // @[MissQueue.scala 175:28]
    end
    if (reset) begin // @[Edges.scala 228:27]
      counter <= 1'h0; // @[Edges.scala 228:27]
    end else if (_T_6) begin // @[Edges.scala 234:17]
      if (first) begin // @[Edges.scala 235:21]
        counter <= beats1;
      end else begin
        counter <= counter1;
      end
    end
    if (_T_6) begin // @[MissQueue.scala 217:30]
      grant_param <= io_mem_grant_bits_param; // @[MissQueue.scala 219:17]
    end
    if (_T_6) begin // @[MissQueue.scala 217:30]
      if (beats1_opdata) begin // @[MissQueue.scala 220:44]
        if (2'h0 == idx_1) begin // @[MissQueue.scala 225:26]
          refill_data_0 <= _refill_data_T_7; // @[MissQueue.scala 225:26]
        end else if (2'h0 == idx) begin // @[MissQueue.scala 225:26]
          refill_data_0 <= _refill_data_T_3; // @[MissQueue.scala 225:26]
        end
      end else begin
        refill_data_0 <= new_data_0; // @[MissQueue.scala 233:24]
      end
    end
    if (_T_6) begin // @[MissQueue.scala 217:30]
      if (beats1_opdata) begin // @[MissQueue.scala 220:44]
        if (2'h1 == idx_1) begin // @[MissQueue.scala 225:26]
          refill_data_1 <= _refill_data_T_7; // @[MissQueue.scala 225:26]
        end else if (2'h1 == idx) begin // @[MissQueue.scala 225:26]
          refill_data_1 <= _refill_data_T_3; // @[MissQueue.scala 225:26]
        end
      end else begin
        refill_data_1 <= new_data_1; // @[MissQueue.scala 233:24]
      end
    end
    if (_T_6) begin // @[MissQueue.scala 217:30]
      if (beats1_opdata) begin // @[MissQueue.scala 220:44]
        if (2'h2 == idx_1) begin // @[MissQueue.scala 225:26]
          refill_data_2 <= _refill_data_T_7; // @[MissQueue.scala 225:26]
        end else if (2'h2 == idx) begin // @[MissQueue.scala 225:26]
          refill_data_2 <= _refill_data_T_3; // @[MissQueue.scala 225:26]
        end
      end else begin
        refill_data_2 <= new_data_2; // @[MissQueue.scala 233:24]
      end
    end
    if (_T_6) begin // @[MissQueue.scala 217:30]
      if (beats1_opdata) begin // @[MissQueue.scala 220:44]
        if (2'h3 == idx_1) begin // @[MissQueue.scala 225:26]
          refill_data_3 <= _refill_data_T_7; // @[MissQueue.scala 225:26]
        end else if (2'h3 == idx) begin // @[MissQueue.scala 225:26]
          refill_data_3 <= _refill_data_T_3; // @[MissQueue.scala 225:26]
        end
      end else begin
        refill_data_3 <= new_data_3; // @[MissQueue.scala 233:24]
      end
    end
    if (_T_6) begin // @[MissQueue.scala 217:30]
      if (~refill_count) begin // @[MissQueue.scala 241:35]
        refill_data_raw_0 <= io_mem_grant_bits_data; // @[MissQueue.scala 241:35]
      end
    end
    if (_T_6) begin // @[MissQueue.scala 217:30]
      if (refill_count) begin // @[MissQueue.scala 241:35]
        refill_data_raw_1 <= io_mem_grant_bits_data; // @[MissQueue.scala 241:35]
      end
    end
    hasData <= reset | _GEN_108; // @[MissQueue.scala 215:{24,24}]
    if (reset) begin // @[MissQueue.scala 216:24]
      isDirty <= 1'h0; // @[MissQueue.scala 216:24]
    end else if (_T_6) begin // @[MissQueue.scala 217:30]
      isDirty <= io_mem_grant_bits_echo_blockisdirty; // @[MissQueue.scala 242:13]
    end
    io_refill_to_ldq_valid_REG <= ~w_grantlast & _T_6; // @[MissQueue.scala 312:50]
    io_refill_to_ldq_bits_addr_REG <= req_addr + _GEN_130; // @[MissQueue.scala 313:50]
    io_refill_to_ldq_bits_data_REG <= beats1 & ~counter1; // @[Edges.scala 233:25]
    io_refill_to_ldq_bits_error_REG <= io_mem_grant_bits_corrupt | io_mem_grant_bits_denied; // @[MissQueue.scala 315:68]
    io_refill_to_ldq_bits_refill_done_REG <= refill_done & _T_6; // @[MissQueue.scala 316:60]
    if (_T_6) begin // @[Reg.scala 17:18]
      grantack_sink <= io_mem_grant_bits_sink; // @[Reg.scala 17:22]
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
  req_source = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  req_cmd = _RAND_1[4:0];
  _RAND_2 = {2{`RANDOM}};
  req_addr = _RAND_2[35:0];
  _RAND_3 = {2{`RANDOM}};
  req_vaddr = _RAND_3[38:0];
  _RAND_4 = {1{`RANDOM}};
  req_way_en = _RAND_4[3:0];
  _RAND_5 = {16{`RANDOM}};
  req_store_data = _RAND_5[511:0];
  _RAND_6 = {2{`RANDOM}};
  req_store_mask = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  req_word_idx = _RAND_7[2:0];
  _RAND_8 = {2{`RANDOM}};
  req_amo_data = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  req_amo_mask = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  req_req_coh_state = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  req_replace_tag = _RAND_11[23:0];
  _RAND_12 = {2{`RANDOM}};
  req_id = _RAND_12[63:0];
  _RAND_13 = {1{`RANDOM}};
  req_valid = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s_acquire = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s_grantack = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s_replace_req = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s_refill = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  s_mainpipe_req = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  w_grantfirst = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  w_grantlast = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  w_replace_resp = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  w_refill_resp = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  w_mainpipe_resp = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  error = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  should_refill_data_reg = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  counter = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  grant_param = _RAND_27[1:0];
  _RAND_28 = {4{`RANDOM}};
  refill_data_0 = _RAND_28[127:0];
  _RAND_29 = {4{`RANDOM}};
  refill_data_1 = _RAND_29[127:0];
  _RAND_30 = {4{`RANDOM}};
  refill_data_2 = _RAND_30[127:0];
  _RAND_31 = {4{`RANDOM}};
  refill_data_3 = _RAND_31[127:0];
  _RAND_32 = {8{`RANDOM}};
  refill_data_raw_0 = _RAND_32[255:0];
  _RAND_33 = {8{`RANDOM}};
  refill_data_raw_1 = _RAND_33[255:0];
  _RAND_34 = {1{`RANDOM}};
  hasData = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  isDirty = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_refill_to_ldq_valid_REG = _RAND_36[0:0];
  _RAND_37 = {2{`RANDOM}};
  io_refill_to_ldq_bits_addr_REG = _RAND_37[35:0];
  _RAND_38 = {1{`RANDOM}};
  io_refill_to_ldq_bits_data_REG = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_refill_to_ldq_bits_error_REG = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  io_refill_to_ldq_bits_refill_done_REG = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  grantack_sink = _RAND_41[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
