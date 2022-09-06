module WritebackEntry(
  input          clock,
  input          reset,
  input  [3:0]   io_id,
  input          io_primary_valid,
  output         io_primary_ready,
  input          io_secondary_valid,
  output         io_secondary_ready,
  input          io_req_valid,
  input  [35:0]  io_req_bits_addr,
  input  [2:0]   io_req_bits_param,
  input          io_req_bits_voluntary,
  input          io_req_bits_hasData,
  input          io_req_bits_dirty,
  input  [511:0] io_req_bits_data,
  input          io_req_bits_delay_release,
  input  [2:0]   io_req_bits_miss_id,
  input          io_mem_release_ready,
  output         io_mem_release_valid,
  output [2:0]   io_mem_release_bits_opcode,
  output [2:0]   io_mem_release_bits_param,
  output [2:0]   io_mem_release_bits_size,
  output [4:0]   io_mem_release_bits_source,
  output [35:0]  io_mem_release_bits_address,
  output         io_mem_release_bits_echo_blockisdirty,
  output [255:0] io_mem_release_bits_data,
  output         io_mem_grant_ready,
  input          io_mem_grant_valid,
  output         io_block_addr_valid,
  output [35:0]  io_block_addr_bits,
  input          io_release_wakeup_valid,
  input  [2:0]   io_release_wakeup_bits,
  input          io_release_update_valid,
  input  [35:0]  io_release_update_bits_addr,
  input  [7:0]   io_release_update_bits_mask,
  input  [511:0] io_release_update_bits_data
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
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [511:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[WritebackQueue.scala 85:22]
  reg [1:0] remain; // @[WritebackQueue.scala 89:23]
  wire  _T_34 = io_mem_grant_ready & io_mem_grant_valid; // @[Decoupled.scala 50:35]
  wire  merge = io_secondary_valid & io_secondary_ready; // @[WritebackQueue.scala 132:34]
  wire [1:0] _remain_set_T_16 = io_req_bits_hasData ? 2'h3 : 2'h1; // @[WritebackQueue.scala 353:26]
  reg  release_later; // @[WritebackQueue.scala 231:30]
  reg  req_later_hasData; // @[WritebackQueue.scala 254:22]
  wire [1:0] _remain_set_T_18 = req_later_hasData ? 2'h3 : 2'h1; // @[WritebackQueue.scala 358:26]
  reg  req_voluntary; // @[WritebackQueue.scala 96:17]
  wire  _T_27 = io_mem_release_ready & io_mem_release_valid; // @[Decoupled.scala 50:35]
  reg  c_already_sent; // @[WritebackQueue.scala 232:31]
  reg [2:0] req_miss_id; // @[WritebackQueue.scala 96:17]
  reg  req_hasData; // @[WritebackQueue.scala 96:17]
  reg [35:0] req_addr; // @[WritebackQueue.scala 96:17]
  wire  update = io_release_update_valid & io_release_update_bits_addr == req_addr; // @[WritebackQueue.scala 138:42]
  wire  _remain_set_T_5 = |io_release_update_bits_mask; // @[WritebackQueue.scala 162:62]
  wire  _remain_set_T_9 = req_hasData | update & |io_release_update_bits_mask | merge & io_req_bits_hasData; // @[WritebackQueue.scala 162:66]
  wire [1:0] _remain_set_T_11 = _remain_set_T_9 ? 2'h3 : 2'h1; // @[WritebackQueue.scala 161:24]
  wire [1:0] _GEN_1 = io_req_bits_delay_release ? 2'h0 : _remain_set_T_16; // @[WritebackQueue.scala 122:38 126:18]
  wire [1:0] _GEN_11 = io_req_valid & io_primary_valid & io_primary_ready ? _GEN_1 : 2'h0; // @[WritebackQueue.scala 119:63]
  wire  _remain_set_T_2 = req_hasData | io_req_bits_hasData; // @[WritebackQueue.scala 155:37]
  wire [1:0] _remain_set_T_4 = req_hasData | io_req_bits_hasData ? 2'h3 : 2'h1; // @[WritebackQueue.scala 155:24]
  wire [1:0] _GEN_19 = merge ? _remain_set_T_4 : _GEN_11; // @[WritebackQueue.scala 143:24 155:18]
  wire [1:0] _GEN_27 = update ? _GEN_11 : _GEN_19; // @[WritebackQueue.scala 139:19]
  wire [1:0] _GEN_30 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? _remain_set_T_11 : _GEN_27; // @[WritebackQueue.scala 158:78 161:18]
  wire [1:0] _GEN_38 = state == 2'h1 ? _GEN_30 : _GEN_11; // @[WritebackQueue.scala 133:28]
  wire [1:0] _GEN_57 = _T_27 | c_already_sent ? _GEN_38 : _remain_set_T_4; // @[WritebackQueue.scala 268:56 288:22]
  wire [1:0] _GEN_70 = merge ? _GEN_57 : _GEN_38; // @[WritebackQueue.scala 267:20]
  wire [1:0] _GEN_123 = req_voluntary ? _GEN_70 : _GEN_38; // @[WritebackQueue.scala 261:26]
  wire [1:0] _GEN_141 = state == 2'h2 ? _GEN_123 : _GEN_38; // @[WritebackQueue.scala 256:34]
  wire [1:0] _GEN_161 = release_later ? _remain_set_T_18 : _GEN_141; // @[WritebackQueue.scala 355:33 358:20]
  wire [1:0] _GEN_171 = merge ? _remain_set_T_16 : _GEN_161; // @[WritebackQueue.scala 350:20 353:20]
  wire [1:0] _GEN_181 = _T_34 ? _GEN_171 : _GEN_141; // @[WritebackQueue.scala 349:32]
  wire [1:0] remain_set = state == 2'h3 ? _GEN_181 : _GEN_141; // @[WritebackQueue.scala 337:35]
  wire [1:0] _remain_T = remain | remain_set; // @[WritebackQueue.scala 92:21]
  wire [1:0] _remain_clr_T_2 = remain[1] ? 2'h2 : 2'h0; // @[Mux.scala 47:70]
  wire [1:0] _remain_clr_T_3 = remain[0] ? 2'h1 : _remain_clr_T_2; // @[Mux.scala 47:70]
  wire [1:0] remain_clr = _T_27 ? _remain_clr_T_3 : 2'h0; // @[WritebackQueue.scala 219:{32,45}]
  wire [1:0] _remain_T_1 = ~remain_clr; // @[WritebackQueue.scala 92:37]
  wire [1:0] _remain_T_2 = _remain_T & _remain_T_1; // @[WritebackQueue.scala 92:35]
  reg [2:0] req_param; // @[WritebackQueue.scala 96:17]
  reg  req_dirty; // @[WritebackQueue.scala 96:17]
  reg [511:0] req_data; // @[WritebackQueue.scala 96:17]
  wire  _io_block_addr_valid_T = state != 2'h0; // @[WritebackQueue.scala 103:33]
  wire [1:0] _GEN_0 = io_req_bits_delay_release ? 2'h1 : 2'h2; // @[WritebackQueue.scala 122:38 123:13 125:13]
  wire [2:0] _GEN_2 = io_req_valid & io_primary_valid & io_primary_ready ? io_req_bits_miss_id : req_miss_id; // @[WritebackQueue.scala 119:63 121:9 96:17]
  wire [511:0] _GEN_4 = io_req_valid & io_primary_valid & io_primary_ready ? io_req_bits_data : req_data; // @[WritebackQueue.scala 119:63 121:9 96:17]
  wire  _GEN_5 = io_req_valid & io_primary_valid & io_primary_ready ? io_req_bits_dirty : req_dirty; // @[WritebackQueue.scala 119:63 121:9 96:17]
  wire  _GEN_6 = io_req_valid & io_primary_valid & io_primary_ready ? io_req_bits_hasData : req_hasData; // @[WritebackQueue.scala 119:63 121:9 96:17]
  wire  _GEN_7 = io_req_valid & io_primary_valid & io_primary_ready ? io_req_bits_voluntary : req_voluntary; // @[WritebackQueue.scala 119:63 121:9 96:17]
  wire [2:0] _GEN_8 = io_req_valid & io_primary_valid & io_primary_ready ? io_req_bits_param : req_param; // @[WritebackQueue.scala 119:63 121:9 96:17]
  wire [35:0] _GEN_9 = io_req_valid & io_primary_valid & io_primary_ready ? io_req_bits_addr : req_addr; // @[WritebackQueue.scala 119:63 121:9 96:17]
  wire [1:0] _GEN_10 = io_req_valid & io_primary_valid & io_primary_ready ? _GEN_0 : state; // @[WritebackQueue.scala 119:63 85:22]
  wire [63:0] _req_data_full_wmask_T_9 = io_release_update_bits_mask[0] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _req_data_full_wmask_T_11 = io_release_update_bits_mask[1] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _req_data_full_wmask_T_13 = io_release_update_bits_mask[2] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _req_data_full_wmask_T_15 = io_release_update_bits_mask[3] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _req_data_full_wmask_T_17 = io_release_update_bits_mask[4] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _req_data_full_wmask_T_19 = io_release_update_bits_mask[5] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _req_data_full_wmask_T_21 = io_release_update_bits_mask[6] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _req_data_full_wmask_T_23 = io_release_update_bits_mask[7] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [511:0] req_data_full_wmask = {_req_data_full_wmask_T_23,_req_data_full_wmask_T_21,_req_data_full_wmask_T_19,
    _req_data_full_wmask_T_17,_req_data_full_wmask_T_15,_req_data_full_wmask_T_13,_req_data_full_wmask_T_11,
    _req_data_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [511:0] _req_data_T = ~req_data_full_wmask; // @[WritebackQueue.scala 113:6]
  wire [511:0] _req_data_T_1 = _req_data_T & req_data; // @[WritebackQueue.scala 113:18]
  wire [511:0] _req_data_T_2 = req_data_full_wmask & io_release_update_bits_data; // @[WritebackQueue.scala 113:42]
  wire [511:0] _req_data_T_3 = _req_data_T_1 | _req_data_T_2; // @[WritebackQueue.scala 113:29]
  wire  _req_dirty_T_2 = req_dirty | io_req_bits_dirty; // @[WritebackQueue.scala 148:30]
  wire [511:0] _req_data_T_4 = io_req_bits_hasData ? io_req_bits_data : req_data; // @[WritebackQueue.scala 149:22]
  wire [1:0] _GEN_12 = merge ? 2'h2 : _GEN_10; // @[WritebackQueue.scala 143:24 144:13]
  wire  _GEN_13 = merge ? 1'h0 : _GEN_7; // @[WritebackQueue.scala 143:24 145:21]
  wire [2:0] _GEN_14 = merge ? req_param : _GEN_8; // @[WritebackQueue.scala 143:24 146:17]
  wire  _GEN_15 = merge ? _remain_set_T_2 : _GEN_6; // @[WritebackQueue.scala 143:24 147:19]
  wire  _GEN_16 = merge ? req_dirty | io_req_bits_dirty : _GEN_5; // @[WritebackQueue.scala 143:24 148:17]
  wire [511:0] _GEN_17 = merge ? _req_data_T_4 : _GEN_4; // @[WritebackQueue.scala 143:24 149:16]
  wire  _GEN_20 = update ? req_hasData | _remain_set_T_5 : _GEN_15; // @[WritebackQueue.scala 139:19 140:19]
  wire  _GEN_21 = update ? req_dirty | _remain_set_T_5 : _GEN_16; // @[WritebackQueue.scala 139:19 141:17]
  wire [511:0] _GEN_22 = update ? _req_data_T_3 : _GEN_17; // @[WritebackQueue.scala 139:19 142:16]
  wire [1:0] _GEN_23 = update ? _GEN_10 : _GEN_12; // @[WritebackQueue.scala 139:19]
  wire  _GEN_24 = update ? _GEN_7 : _GEN_13; // @[WritebackQueue.scala 139:19]
  wire [2:0] _GEN_25 = update ? _GEN_8 : _GEN_14; // @[WritebackQueue.scala 139:19]
  wire [1:0] _GEN_28 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_23; // @[WritebackQueue.scala 158:78 159:13]
  wire  _GEN_31 = state == 2'h1 ? _GEN_20 : _GEN_6; // @[WritebackQueue.scala 133:28]
  wire  _GEN_32 = state == 2'h1 ? _GEN_21 : _GEN_5; // @[WritebackQueue.scala 133:28]
  wire [511:0] _GEN_33 = state == 2'h1 ? _GEN_22 : _GEN_4; // @[WritebackQueue.scala 133:28]
  wire [1:0] _GEN_34 = state == 2'h1 ? _GEN_28 : _GEN_10; // @[WritebackQueue.scala 133:28]
  wire  _GEN_35 = state == 2'h1 ? _GEN_24 : _GEN_7; // @[WritebackQueue.scala 133:28]
  wire [2:0] _GEN_36 = state == 2'h1 ? _GEN_25 : _GEN_8; // @[WritebackQueue.scala 133:28]
  wire  beat = remain[0] ? 1'h0 : 1'h1; // @[Mux.scala 47:70]
  wire [255:0] beat_data_0 = req_data[255:0]; // @[WritebackQueue.scala 176:29]
  wire [255:0] beat_data_1 = req_data[511:256]; // @[WritebackQueue.scala 176:29]
  wire [255:0] voluntaryReleaseData_data = beat ? beat_data_1 : beat_data_0; // @[Edges.scala 428:{15,15}]
  wire [2:0] _io_mem_release_bits_T_opcode = req_hasData ? 3'h7 : 3'h6; // @[WritebackQueue.scala 216:8]
  wire [4:0] voluntaryReleaseData_source = {{1'd0}, io_id}; // @[Edges.scala 389:17 393:15]
  wire [4:0] _io_mem_release_bits_T_source = req_hasData ? voluntaryReleaseData_source : voluntaryReleaseData_source; // @[WritebackQueue.scala 216:8]
  wire  _io_mem_release_bits_T_echo_blockisdirty = req_hasData & req_dirty; // @[WritebackQueue.scala 216:8]
  wire [255:0] _io_mem_release_bits_T_data = req_hasData ? voluntaryReleaseData_data : 256'h0; // @[WritebackQueue.scala 216:8]
  wire [2:0] _io_mem_release_bits_T_1_opcode = req_hasData ? 3'h5 : 3'h4; // @[WritebackQueue.scala 217:8]
  wire [12:0] _release_done_beats1_decode_T_1 = 13'h3f << io_mem_release_bits_size; // @[package.scala 234:77]
  wire [5:0] _release_done_beats1_decode_T_3 = ~_release_done_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  release_done_beats1_decode = _release_done_beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  release_done_beats1_opdata = io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  release_done_beats1 = release_done_beats1_opdata & release_done_beats1_decode; // @[Edges.scala 220:14]
  reg  release_done_counter; // @[Edges.scala 228:27]
  wire  release_done_counter1 = release_done_counter - 1'h1; // @[Edges.scala 229:28]
  wire  release_done_first = ~release_done_counter; // @[Edges.scala 230:25]
  wire  release_done_last = release_done_counter | ~release_done_beats1; // @[Edges.scala 231:37]
  wire  release_done = release_done_last & _T_27; // @[Edges.scala 232:22]
  reg [2:0] req_later_param; // @[WritebackQueue.scala 254:22]
  reg  req_later_voluntary; // @[WritebackQueue.scala 254:22]
  reg  req_later_dirty; // @[WritebackQueue.scala 254:22]
  reg  req_later_delay_release; // @[WritebackQueue.scala 254:22]
  reg [2:0] req_later_miss_id; // @[WritebackQueue.scala 254:22]
  wire [1:0] _GEN_44 = release_done ? 2'h3 : _GEN_34; // @[WritebackQueue.scala 263:27 264:15]
  wire  _GEN_45 = _T_27 | c_already_sent | release_later; // @[WritebackQueue.scala 268:56 270:25 231:30]
  wire [2:0] _GEN_46 = _T_27 | c_already_sent ? io_req_bits_param : req_later_param; // @[WritebackQueue.scala 254:22 268:56 271:27]
  wire  _GEN_47 = _T_27 | c_already_sent ? io_req_bits_voluntary : req_later_voluntary; // @[WritebackQueue.scala 254:22 268:56 272:31]
  wire  _GEN_48 = _T_27 | c_already_sent ? io_req_bits_hasData : req_later_hasData; // @[WritebackQueue.scala 254:22 268:56 273:29]
  wire  _GEN_49 = _T_27 | c_already_sent ? io_req_bits_dirty : req_later_dirty; // @[WritebackQueue.scala 254:22 268:56 274:27]
  wire  _GEN_50 = _T_27 | c_already_sent ? io_req_bits_delay_release : req_later_delay_release; // @[WritebackQueue.scala 254:22 268:56 275:35]
  wire [2:0] _GEN_51 = _T_27 | c_already_sent ? io_req_bits_miss_id : req_later_miss_id; // @[WritebackQueue.scala 254:22 268:56 276:29]
  wire  _GEN_52 = (_T_27 | c_already_sent) & _GEN_35; // @[WritebackQueue.scala 268:56 279:25]
  wire  _GEN_53 = _T_27 | c_already_sent ? _GEN_31 : _remain_set_T_2; // @[WritebackQueue.scala 268:56 280:23]
  wire  _GEN_54 = _T_27 | c_already_sent ? _GEN_32 : _req_dirty_T_2; // @[WritebackQueue.scala 268:56 281:21]
  wire [511:0] _GEN_55 = _T_27 | c_already_sent ? _GEN_33 : _req_data_T_4; // @[WritebackQueue.scala 268:56 282:20]
  wire  _GEN_58 = merge ? _GEN_45 : release_later; // @[WritebackQueue.scala 267:20 231:30]
  wire [2:0] _GEN_59 = merge ? _GEN_46 : req_later_param; // @[WritebackQueue.scala 267:20 254:22]
  wire  _GEN_60 = merge ? _GEN_47 : req_later_voluntary; // @[WritebackQueue.scala 267:20 254:22]
  wire  _GEN_61 = merge ? _GEN_48 : req_later_hasData; // @[WritebackQueue.scala 267:20 254:22]
  wire  _GEN_62 = merge ? _GEN_49 : req_later_dirty; // @[WritebackQueue.scala 267:20 254:22]
  wire  _GEN_63 = merge ? _GEN_50 : req_later_delay_release; // @[WritebackQueue.scala 267:20 254:22]
  wire [2:0] _GEN_64 = merge ? _GEN_51 : req_later_miss_id; // @[WritebackQueue.scala 267:20 254:22]
  wire  _GEN_65 = merge ? _GEN_52 : _GEN_35; // @[WritebackQueue.scala 267:20]
  wire  _GEN_66 = merge ? _GEN_53 : _GEN_31; // @[WritebackQueue.scala 267:20]
  wire  _GEN_67 = merge ? _GEN_54 : _GEN_32; // @[WritebackQueue.scala 267:20]
  wire [511:0] _GEN_68 = merge ? _GEN_55 : _GEN_33; // @[WritebackQueue.scala 267:20]
  wire  _GEN_71 = merge | release_later; // @[WritebackQueue.scala 293:20 294:23 231:30]
  wire [2:0] _GEN_72 = merge ? io_req_bits_param : req_later_param; // @[WritebackQueue.scala 293:20 254:22 295:25]
  wire  _GEN_73 = merge ? io_req_bits_voluntary : req_later_voluntary; // @[WritebackQueue.scala 293:20 254:22 296:29]
  wire  _GEN_74 = merge ? io_req_bits_hasData : req_later_hasData; // @[WritebackQueue.scala 293:20 254:22 297:27]
  wire  _GEN_75 = merge ? io_req_bits_dirty : req_later_dirty; // @[WritebackQueue.scala 293:20 254:22 298:25]
  wire  _GEN_76 = merge ? io_req_bits_delay_release : req_later_delay_release; // @[WritebackQueue.scala 293:20 254:22 299:33]
  wire [2:0] _GEN_77 = merge ? io_req_bits_miss_id : req_later_miss_id; // @[WritebackQueue.scala 293:20 254:22 300:27]
  wire  _state_T_1 = io_release_wakeup_valid & io_release_wakeup_bits == req_later_miss_id; // @[WritebackQueue.scala 314:37]
  wire  _state_T_3 = io_release_wakeup_valid & io_release_wakeup_bits == req_later_miss_id | ~req_later_delay_release; // @[WritebackQueue.scala 314:85]
  wire [1:0] _state_T_4 = _state_T_3 ? 2'h2 : 2'h1; // @[WritebackQueue.scala 313:23]
  wire [1:0] _GEN_79 = release_later ? _state_T_4 : 2'h0; // @[WritebackQueue.scala 312:36 313:17 324:17]
  wire [2:0] _GEN_80 = release_later ? req_later_miss_id : _GEN_2; // @[WritebackQueue.scala 312:36 318:15]
  wire [511:0] _GEN_82 = release_later ? req_data : _GEN_33; // @[WritebackQueue.scala 312:36 318:15]
  wire  _GEN_83 = release_later ? req_later_dirty : _GEN_32; // @[WritebackQueue.scala 312:36 318:15]
  wire  _GEN_84 = release_later ? req_later_hasData : _GEN_31; // @[WritebackQueue.scala 312:36 318:15]
  wire  _GEN_85 = release_later ? req_later_voluntary : _GEN_35; // @[WritebackQueue.scala 312:36 318:15]
  wire [2:0] _GEN_86 = release_later ? req_later_param : _GEN_36; // @[WritebackQueue.scala 312:36 318:15]
  wire [35:0] _GEN_87 = release_later ? req_addr : _GEN_9; // @[WritebackQueue.scala 312:36 318:15]
  wire [1:0] _GEN_89 = merge ? 2'h1 : _GEN_79; // @[WritebackQueue.scala 304:22 309:17]
  wire [2:0] _GEN_90 = merge ? io_req_bits_miss_id : _GEN_80; // @[WritebackQueue.scala 304:22 310:15]
  wire [511:0] _GEN_92 = merge ? io_req_bits_data : _GEN_82; // @[WritebackQueue.scala 304:22 310:15]
  wire  _GEN_93 = merge ? io_req_bits_dirty : _GEN_83; // @[WritebackQueue.scala 304:22 310:15]
  wire  _GEN_94 = merge ? io_req_bits_hasData : _GEN_84; // @[WritebackQueue.scala 304:22 310:15]
  wire  _GEN_95 = merge ? io_req_bits_voluntary : _GEN_85; // @[WritebackQueue.scala 304:22 310:15]
  wire [2:0] _GEN_96 = merge ? io_req_bits_param : _GEN_86; // @[WritebackQueue.scala 304:22 310:15]
  wire [35:0] _GEN_97 = merge ? io_req_bits_addr : _GEN_87; // @[WritebackQueue.scala 304:22 310:15]
  wire [1:0] _GEN_99 = release_done ? _GEN_89 : _GEN_34; // @[WritebackQueue.scala 303:27]
  wire [2:0] _GEN_100 = release_done ? _GEN_90 : _GEN_2; // @[WritebackQueue.scala 303:27]
  wire [511:0] _GEN_102 = release_done ? _GEN_92 : _GEN_33; // @[WritebackQueue.scala 303:27]
  wire  _GEN_103 = release_done ? _GEN_93 : _GEN_32; // @[WritebackQueue.scala 303:27]
  wire  _GEN_104 = release_done ? _GEN_94 : _GEN_31; // @[WritebackQueue.scala 303:27]
  wire  _GEN_105 = release_done ? _GEN_95 : _GEN_35; // @[WritebackQueue.scala 303:27]
  wire [2:0] _GEN_106 = release_done ? _GEN_96 : _GEN_36; // @[WritebackQueue.scala 303:27]
  wire [35:0] _GEN_107 = release_done ? _GEN_97 : _GEN_9; // @[WritebackQueue.scala 303:27]
  wire  _GEN_108 = release_done ? 1'h0 : _GEN_71; // @[WritebackQueue.scala 303:27]
  wire  _GEN_109 = _state_T_1 ? 1'h0 : _GEN_76; // @[WritebackQueue.scala 329:86 330:33]
  wire [1:0] _GEN_110 = req_voluntary ? _GEN_44 : _GEN_99; // @[WritebackQueue.scala 261:26]
  wire  _GEN_111 = req_voluntary ? _GEN_58 : _GEN_108; // @[WritebackQueue.scala 261:26]
  wire [2:0] _GEN_112 = req_voluntary ? _GEN_59 : _GEN_72; // @[WritebackQueue.scala 261:26]
  wire  _GEN_113 = req_voluntary ? _GEN_60 : _GEN_73; // @[WritebackQueue.scala 261:26]
  wire  _GEN_114 = req_voluntary ? _GEN_61 : _GEN_74; // @[WritebackQueue.scala 261:26]
  wire  _GEN_115 = req_voluntary ? _GEN_62 : _GEN_75; // @[WritebackQueue.scala 261:26]
  wire  _GEN_116 = req_voluntary ? _GEN_63 : _GEN_109; // @[WritebackQueue.scala 261:26]
  wire [2:0] _GEN_117 = req_voluntary ? _GEN_64 : _GEN_77; // @[WritebackQueue.scala 261:26]
  wire  _GEN_118 = req_voluntary ? _GEN_65 : _GEN_105; // @[WritebackQueue.scala 261:26]
  wire  _GEN_119 = req_voluntary ? _GEN_66 : _GEN_104; // @[WritebackQueue.scala 261:26]
  wire  _GEN_120 = req_voluntary ? _GEN_67 : _GEN_103; // @[WritebackQueue.scala 261:26]
  wire [511:0] _GEN_121 = req_voluntary ? _GEN_68 : _GEN_102; // @[WritebackQueue.scala 261:26]
  wire [2:0] _GEN_124 = req_voluntary ? _GEN_2 : _GEN_100; // @[WritebackQueue.scala 261:26]
  wire [2:0] _GEN_125 = req_voluntary ? _GEN_36 : _GEN_106; // @[WritebackQueue.scala 261:26]
  wire [35:0] _GEN_126 = req_voluntary ? _GEN_9 : _GEN_107; // @[WritebackQueue.scala 261:26]
  wire [1:0] _GEN_128 = state == 2'h2 ? _GEN_110 : _GEN_34; // @[WritebackQueue.scala 256:34]
  wire  _GEN_129 = state == 2'h2 ? _GEN_111 : release_later; // @[WritebackQueue.scala 231:30 256:34]
  wire [2:0] _GEN_130 = state == 2'h2 ? _GEN_112 : req_later_param; // @[WritebackQueue.scala 254:22 256:34]
  wire  _GEN_131 = state == 2'h2 ? _GEN_113 : req_later_voluntary; // @[WritebackQueue.scala 254:22 256:34]
  wire  _GEN_132 = state == 2'h2 ? _GEN_114 : req_later_hasData; // @[WritebackQueue.scala 254:22 256:34]
  wire  _GEN_133 = state == 2'h2 ? _GEN_115 : req_later_dirty; // @[WritebackQueue.scala 254:22 256:34]
  wire  _GEN_134 = state == 2'h2 ? _GEN_116 : req_later_delay_release; // @[WritebackQueue.scala 254:22 256:34]
  wire [2:0] _GEN_135 = state == 2'h2 ? _GEN_117 : req_later_miss_id; // @[WritebackQueue.scala 254:22 256:34]
  wire  _GEN_136 = state == 2'h2 ? _GEN_118 : _GEN_35; // @[WritebackQueue.scala 256:34]
  wire  _GEN_137 = state == 2'h2 ? _GEN_119 : _GEN_31; // @[WritebackQueue.scala 256:34]
  wire  _GEN_138 = state == 2'h2 ? _GEN_120 : _GEN_32; // @[WritebackQueue.scala 256:34]
  wire [511:0] _GEN_139 = state == 2'h2 ? _GEN_121 : _GEN_33; // @[WritebackQueue.scala 256:34]
  wire [2:0] _GEN_142 = state == 2'h2 ? _GEN_124 : _GEN_2; // @[WritebackQueue.scala 256:34]
  wire [2:0] _GEN_143 = state == 2'h2 ? _GEN_125 : _GEN_36; // @[WritebackQueue.scala 256:34]
  wire [35:0] _GEN_144 = state == 2'h2 ? _GEN_126 : _GEN_9; // @[WritebackQueue.scala 256:34]
  wire  _GEN_145 = merge | _GEN_129; // @[WritebackQueue.scala 340:18 341:21]
  wire [1:0] _GEN_152 = release_later ? 2'h2 : 2'h0; // @[WritebackQueue.scala 355:33 356:15 361:15]
  assign io_primary_ready = state == 2'h0; // @[WritebackQueue.scala 372:29]
  assign io_secondary_ready = _io_block_addr_valid_T & io_req_bits_addr == req_addr; // @[WritebackQueue.scala 373:45]
  assign io_mem_release_valid = |remain; // @[WritebackQueue.scala 94:21]
  assign io_mem_release_bits_opcode = req_voluntary ? _io_mem_release_bits_T_opcode : _io_mem_release_bits_T_1_opcode; // @[WritebackQueue.scala 215:30]
  assign io_mem_release_bits_param = req_param; // @[WritebackQueue.scala 215:30]
  assign io_mem_release_bits_size = 3'h6; // @[WritebackQueue.scala 215:30]
  assign io_mem_release_bits_source = req_voluntary ? _io_mem_release_bits_T_source : _io_mem_release_bits_T_source; // @[WritebackQueue.scala 215:30]
  assign io_mem_release_bits_address = req_addr; // @[WritebackQueue.scala 215:30]
  assign io_mem_release_bits_echo_blockisdirty = req_voluntary & _io_mem_release_bits_T_echo_blockisdirty; // @[WritebackQueue.scala 215:30]
  assign io_mem_release_bits_data = req_voluntary ? _io_mem_release_bits_T_data : _io_mem_release_bits_T_data; // @[WritebackQueue.scala 215:30]
  assign io_mem_grant_ready = state == 2'h3; // @[WritebackQueue.scala 337:15]
  assign io_block_addr_valid = state != 2'h0; // @[WritebackQueue.scala 103:33]
  assign io_block_addr_bits = req_addr; // @[WritebackQueue.scala 104:24]
  always @(posedge clock) begin
    if (reset) begin // @[WritebackQueue.scala 85:22]
      state <= 2'h0; // @[WritebackQueue.scala 85:22]
    end else if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (_T_34) begin // @[WritebackQueue.scala 349:32]
        if (merge) begin // @[WritebackQueue.scala 350:20]
          state <= 2'h2; // @[WritebackQueue.scala 351:15]
        end else begin
          state <= _GEN_152;
        end
      end else begin
        state <= _GEN_128;
      end
    end else begin
      state <= _GEN_128;
    end
    if (reset) begin // @[WritebackQueue.scala 89:23]
      remain <= 2'h0; // @[WritebackQueue.scala 89:23]
    end else begin
      remain <= _remain_T_2; // @[WritebackQueue.scala 92:10]
    end
    if (reset) begin // @[WritebackQueue.scala 231:30]
      release_later <= 1'h0; // @[WritebackQueue.scala 231:30]
    end else if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (_T_34) begin // @[WritebackQueue.scala 349:32]
        release_later <= 1'h0;
      end else begin
        release_later <= _GEN_145;
      end
    end else if (state == 2'h2) begin // @[WritebackQueue.scala 256:34]
      if (req_voluntary) begin // @[WritebackQueue.scala 261:26]
        release_later <= _GEN_58;
      end else begin
        release_later <= _GEN_108;
      end
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (merge) begin // @[WritebackQueue.scala 340:18]
        req_later_hasData <= io_req_bits_hasData; // @[WritebackQueue.scala 344:25]
      end else begin
        req_later_hasData <= _GEN_132;
      end
    end else begin
      req_later_hasData <= _GEN_132;
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (_T_34) begin // @[WritebackQueue.scala 349:32]
        if (merge) begin // @[WritebackQueue.scala 350:20]
          req_voluntary <= io_req_bits_voluntary; // @[WritebackQueue.scala 352:13]
        end else if (release_later) begin // @[WritebackQueue.scala 355:33]
          req_voluntary <= req_later_voluntary; // @[WritebackQueue.scala 357:13]
        end else begin
          req_voluntary <= _GEN_136;
        end
      end else begin
        req_voluntary <= _GEN_136;
      end
    end else begin
      req_voluntary <= _GEN_136;
    end
    if (reset) begin // @[WritebackQueue.scala 232:31]
      c_already_sent <= 1'h0; // @[WritebackQueue.scala 232:31]
    end else if (state == 2'h2) begin // @[WritebackQueue.scala 256:34]
      if (_T_27) begin // @[WritebackQueue.scala 257:34]
        c_already_sent <= ~release_done; // @[WritebackQueue.scala 258:22]
      end
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (_T_34) begin // @[WritebackQueue.scala 349:32]
        if (merge) begin // @[WritebackQueue.scala 350:20]
          req_miss_id <= io_req_bits_miss_id; // @[WritebackQueue.scala 352:13]
        end else if (release_later) begin // @[WritebackQueue.scala 355:33]
          req_miss_id <= req_later_miss_id; // @[WritebackQueue.scala 357:13]
        end else begin
          req_miss_id <= _GEN_142;
        end
      end else begin
        req_miss_id <= _GEN_142;
      end
    end else begin
      req_miss_id <= _GEN_142;
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (_T_34) begin // @[WritebackQueue.scala 349:32]
        if (merge) begin // @[WritebackQueue.scala 350:20]
          req_hasData <= io_req_bits_hasData; // @[WritebackQueue.scala 352:13]
        end else if (release_later) begin // @[WritebackQueue.scala 355:33]
          req_hasData <= req_later_hasData; // @[WritebackQueue.scala 357:13]
        end else begin
          req_hasData <= _GEN_137;
        end
      end else begin
        req_hasData <= _GEN_137;
      end
    end else begin
      req_hasData <= _GEN_137;
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (_T_34) begin // @[WritebackQueue.scala 349:32]
        if (merge) begin // @[WritebackQueue.scala 350:20]
          req_addr <= io_req_bits_addr; // @[WritebackQueue.scala 352:13]
        end else if (!(release_later)) begin // @[WritebackQueue.scala 355:33]
          req_addr <= _GEN_144;
        end
      end else begin
        req_addr <= _GEN_144;
      end
    end else begin
      req_addr <= _GEN_144;
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (_T_34) begin // @[WritebackQueue.scala 349:32]
        if (merge) begin // @[WritebackQueue.scala 350:20]
          req_param <= io_req_bits_param; // @[WritebackQueue.scala 352:13]
        end else if (release_later) begin // @[WritebackQueue.scala 355:33]
          req_param <= req_later_param; // @[WritebackQueue.scala 357:13]
        end else begin
          req_param <= _GEN_143;
        end
      end else begin
        req_param <= _GEN_143;
      end
    end else begin
      req_param <= _GEN_143;
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (_T_34) begin // @[WritebackQueue.scala 349:32]
        if (merge) begin // @[WritebackQueue.scala 350:20]
          req_dirty <= io_req_bits_dirty; // @[WritebackQueue.scala 352:13]
        end else if (release_later) begin // @[WritebackQueue.scala 355:33]
          req_dirty <= req_later_dirty; // @[WritebackQueue.scala 357:13]
        end else begin
          req_dirty <= _GEN_138;
        end
      end else begin
        req_dirty <= _GEN_138;
      end
    end else begin
      req_dirty <= _GEN_138;
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (_T_34) begin // @[WritebackQueue.scala 349:32]
        if (merge) begin // @[WritebackQueue.scala 350:20]
          req_data <= io_req_bits_data; // @[WritebackQueue.scala 352:13]
        end else if (!(release_later)) begin // @[WritebackQueue.scala 355:33]
          req_data <= _GEN_139;
        end
      end else begin
        req_data <= _GEN_139;
      end
    end else begin
      req_data <= _GEN_139;
    end
    if (reset) begin // @[Edges.scala 228:27]
      release_done_counter <= 1'h0; // @[Edges.scala 228:27]
    end else if (_T_27) begin // @[Edges.scala 234:17]
      if (release_done_first) begin // @[Edges.scala 235:21]
        release_done_counter <= release_done_beats1;
      end else begin
        release_done_counter <= release_done_counter1;
      end
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (merge) begin // @[WritebackQueue.scala 340:18]
        req_later_param <= io_req_bits_param; // @[WritebackQueue.scala 342:23]
      end else begin
        req_later_param <= _GEN_130;
      end
    end else begin
      req_later_param <= _GEN_130;
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (merge) begin // @[WritebackQueue.scala 340:18]
        req_later_voluntary <= io_req_bits_voluntary; // @[WritebackQueue.scala 343:27]
      end else begin
        req_later_voluntary <= _GEN_131;
      end
    end else begin
      req_later_voluntary <= _GEN_131;
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (merge) begin // @[WritebackQueue.scala 340:18]
        req_later_dirty <= io_req_bits_dirty; // @[WritebackQueue.scala 345:23]
      end else begin
        req_later_dirty <= _GEN_133;
      end
    end else begin
      req_later_dirty <= _GEN_133;
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (merge) begin // @[WritebackQueue.scala 340:18]
        req_later_delay_release <= io_req_bits_delay_release; // @[WritebackQueue.scala 346:31]
      end else begin
        req_later_delay_release <= _GEN_134;
      end
    end else begin
      req_later_delay_release <= _GEN_134;
    end
    if (state == 2'h3) begin // @[WritebackQueue.scala 337:35]
      if (merge) begin // @[WritebackQueue.scala 340:18]
        req_later_miss_id <= io_req_bits_miss_id; // @[WritebackQueue.scala 347:25]
      end else begin
        req_later_miss_id <= _GEN_135;
      end
    end else begin
      req_later_miss_id <= _GEN_135;
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
  state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  remain = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  release_later = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  req_later_hasData = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  req_voluntary = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  c_already_sent = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  req_miss_id = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  req_hasData = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  req_addr = _RAND_8[35:0];
  _RAND_9 = {1{`RANDOM}};
  req_param = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  req_dirty = _RAND_10[0:0];
  _RAND_11 = {16{`RANDOM}};
  req_data = _RAND_11[511:0];
  _RAND_12 = {1{`RANDOM}};
  release_done_counter = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  req_later_param = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  req_later_voluntary = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  req_later_dirty = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  req_later_delay_release = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  req_later_miss_id = _RAND_17[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
