module LsqEnqCtrl(
  input        clock,
  input        reset,
  input        io_redirect_valid,
  output       io_enq_canAccept,
  input  [1:0] io_enq_needAlloc_0,
  input  [1:0] io_enq_needAlloc_1,
  input  [1:0] io_enq_needAlloc_2,
  input  [1:0] io_enq_needAlloc_3,
  input        io_enq_req_0_valid,
  input        io_enq_req_0_bits_robIdx_flag,
  input  [6:0] io_enq_req_0_bits_robIdx_value,
  input        io_enq_req_1_valid,
  input        io_enq_req_1_bits_robIdx_flag,
  input  [6:0] io_enq_req_1_bits_robIdx_value,
  input        io_enq_req_2_valid,
  input        io_enq_req_2_bits_robIdx_flag,
  input  [6:0] io_enq_req_2_bits_robIdx_value,
  input        io_enq_req_3_valid,
  input        io_enq_req_3_bits_robIdx_flag,
  input  [6:0] io_enq_req_3_bits_robIdx_value,
  output       io_enq_resp_0_lqIdx_flag,
  output [5:0] io_enq_resp_0_lqIdx_value,
  output       io_enq_resp_0_sqIdx_flag,
  output [4:0] io_enq_resp_0_sqIdx_value,
  output       io_enq_resp_1_lqIdx_flag,
  output [5:0] io_enq_resp_1_lqIdx_value,
  output       io_enq_resp_1_sqIdx_flag,
  output [4:0] io_enq_resp_1_sqIdx_value,
  output       io_enq_resp_2_lqIdx_flag,
  output [5:0] io_enq_resp_2_lqIdx_value,
  output       io_enq_resp_2_sqIdx_flag,
  output [4:0] io_enq_resp_2_sqIdx_value,
  output       io_enq_resp_3_lqIdx_flag,
  output [5:0] io_enq_resp_3_lqIdx_value,
  output       io_enq_resp_3_sqIdx_flag,
  output [4:0] io_enq_resp_3_sqIdx_value,
  input  [2:0] io_lcommit,
  input  [1:0] io_scommit,
  input  [5:0] io_lqCancelCnt,
  input  [5:0] io_sqCancelCnt,
  output [1:0] io_enqLsq_needAlloc_0,
  output [1:0] io_enqLsq_needAlloc_1,
  output [1:0] io_enqLsq_needAlloc_2,
  output [1:0] io_enqLsq_needAlloc_3,
  output       io_enqLsq_req_0_valid,
  output       io_enqLsq_req_0_bits_robIdx_flag,
  output [6:0] io_enqLsq_req_0_bits_robIdx_value,
  output [5:0] io_enqLsq_req_0_bits_lqIdx_value,
  output [4:0] io_enqLsq_req_0_bits_sqIdx_value,
  output       io_enqLsq_req_1_valid,
  output       io_enqLsq_req_1_bits_robIdx_flag,
  output [6:0] io_enqLsq_req_1_bits_robIdx_value,
  output [5:0] io_enqLsq_req_1_bits_lqIdx_value,
  output [4:0] io_enqLsq_req_1_bits_sqIdx_value,
  output       io_enqLsq_req_2_valid,
  output       io_enqLsq_req_2_bits_robIdx_flag,
  output [6:0] io_enqLsq_req_2_bits_robIdx_value,
  output [5:0] io_enqLsq_req_2_bits_lqIdx_value,
  output [4:0] io_enqLsq_req_2_bits_sqIdx_value,
  output       io_enqLsq_req_3_valid,
  output       io_enqLsq_req_3_bits_robIdx_flag,
  output [6:0] io_enqLsq_req_3_bits_robIdx_value,
  output [5:0] io_enqLsq_req_3_bits_lqIdx_value,
  output [4:0] io_enqLsq_req_3_bits_sqIdx_value
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
`endif // RANDOMIZE_REG_INIT
  reg  lqPtr_flag; // @[LSQWrapper.scala 222:22]
  reg [5:0] lqPtr_value; // @[LSQWrapper.scala 222:22]
  reg  sqPtr_flag; // @[LSQWrapper.scala 223:22]
  reg [4:0] sqPtr_value; // @[LSQWrapper.scala 223:22]
  reg [5:0] lqCounter; // @[LSQWrapper.scala 224:26]
  reg [5:0] sqCounter; // @[LSQWrapper.scala 225:26]
  wire  _loadEnqNumber_T_1 = io_enq_req_0_valid & io_enq_needAlloc_0[0]; // @[LSQWrapper.scala 228:85]
  wire  _loadEnqNumber_T_3 = io_enq_req_1_valid & io_enq_needAlloc_1[0]; // @[LSQWrapper.scala 228:85]
  wire  _loadEnqNumber_T_5 = io_enq_req_2_valid & io_enq_needAlloc_2[0]; // @[LSQWrapper.scala 228:85]
  wire  _loadEnqNumber_T_7 = io_enq_req_3_valid & io_enq_needAlloc_3[0]; // @[LSQWrapper.scala 228:85]
  wire [1:0] _loadEnqNumber_T_8 = _loadEnqNumber_T_1 + _loadEnqNumber_T_3; // @[Bitwise.scala 48:55]
  wire [1:0] _loadEnqNumber_T_10 = _loadEnqNumber_T_5 + _loadEnqNumber_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] loadEnqNumber = _loadEnqNumber_T_8 + _loadEnqNumber_T_10; // @[Bitwise.scala 48:55]
  wire  _storeEnqNumber_T_1 = io_enq_req_0_valid & io_enq_needAlloc_0[1]; // @[LSQWrapper.scala 229:86]
  wire  _storeEnqNumber_T_3 = io_enq_req_1_valid & io_enq_needAlloc_1[1]; // @[LSQWrapper.scala 229:86]
  wire  _storeEnqNumber_T_5 = io_enq_req_2_valid & io_enq_needAlloc_2[1]; // @[LSQWrapper.scala 229:86]
  wire  _storeEnqNumber_T_7 = io_enq_req_3_valid & io_enq_needAlloc_3[1]; // @[LSQWrapper.scala 229:86]
  wire [1:0] _storeEnqNumber_T_8 = _storeEnqNumber_T_1 + _storeEnqNumber_T_3; // @[Bitwise.scala 48:55]
  wire [1:0] _storeEnqNumber_T_10 = _storeEnqNumber_T_5 + _storeEnqNumber_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] storeEnqNumber = _storeEnqNumber_T_8 + _storeEnqNumber_T_10; // @[Bitwise.scala 48:55]
  reg  t1_redirect; // @[LSQWrapper.scala 234:28]
  reg  t2_redirect; // @[LSQWrapper.scala 235:28]
  wire [3:0] _t2_update_T_4 = {|io_enq_needAlloc_3,|io_enq_needAlloc_2,|io_enq_needAlloc_1,|io_enq_needAlloc_0}; // @[LSQWrapper.scala 236:72]
  wire  t2_update = t2_redirect & ~(|_t2_update_T_4); // @[LSQWrapper.scala 236:31]
  reg  t3_update; // @[LSQWrapper.scala 237:26]
  reg [5:0] t3_lqCancelCnt; // @[LSQWrapper.scala 238:31]
  reg [5:0] t3_sqCancelCnt; // @[LSQWrapper.scala 239:31]
  wire [5:0] _lqPtr_flipped_new_ptr_T_1 = 6'h30 - t3_lqCancelCnt; // @[CircularQueuePtr.scala 55:50]
  wire [6:0] lqPtr_flipped_new_ptr_new_value = lqPtr_value + _lqPtr_flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 42:34]
  wire [7:0] _lqPtr_flipped_new_ptr_diff_T_1 = {1'h0,lqPtr_flipped_new_ptr_new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [7:0] lqPtr_flipped_new_ptr_diff = $signed(_lqPtr_flipped_new_ptr_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 43:52]
  wire  lqPtr_flipped_new_ptr_reverse_flag = $signed(lqPtr_flipped_new_ptr_diff) >= 8'sh0; // @[CircularQueuePtr.scala 44:31]
  wire  lqPtr_flipped_new_ptr_flag = lqPtr_flipped_new_ptr_reverse_flag ? ~lqPtr_flag : lqPtr_flag; // @[CircularQueuePtr.scala 45:26]
  wire [7:0] _lqPtr_flipped_new_ptr_new_ptr_value_T = $signed(_lqPtr_flipped_new_ptr_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 47:20]
  wire [7:0] _lqPtr_flipped_new_ptr_new_ptr_value_T_1 = lqPtr_flipped_new_ptr_reverse_flag ?
    _lqPtr_flipped_new_ptr_new_ptr_value_T : {{1'd0}, lqPtr_flipped_new_ptr_new_value}; // @[CircularQueuePtr.scala 46:27]
  wire  lqPtr_new_ptr_flag = ~lqPtr_flipped_new_ptr_flag; // @[CircularQueuePtr.scala 57:21]
  wire [5:0] _GEN_504 = {{3'd0}, io_lcommit}; // @[LSQWrapper.scala 242:28]
  wire [5:0] _lqCounter_T_1 = lqCounter + _GEN_504; // @[LSQWrapper.scala 242:28]
  wire [5:0] _lqCounter_T_3 = _lqCounter_T_1 + t3_lqCancelCnt; // @[LSQWrapper.scala 242:41]
  wire [5:0] _sqPtr_flipped_new_ptr_T_1 = 6'h20 - t3_sqCancelCnt; // @[CircularQueuePtr.scala 55:50]
  wire [5:0] _sqPtr_flipped_new_ptr_new_ptr_T = {sqPtr_flag,sqPtr_value}; // @[Cat.scala 31:58]
  wire [5:0] _sqPtr_flipped_new_ptr_new_ptr_T_2 = _sqPtr_flipped_new_ptr_new_ptr_T + _sqPtr_flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] sqPtr_flipped_new_ptr_value = _sqPtr_flipped_new_ptr_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  sqPtr_flipped_new_ptr_flag = _sqPtr_flipped_new_ptr_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 40:59]
  wire  sqPtr_new_ptr_flag = ~sqPtr_flipped_new_ptr_flag; // @[CircularQueuePtr.scala 57:21]
  wire [5:0] _GEN_505 = {{4'd0}, io_scommit}; // @[LSQWrapper.scala 244:28]
  wire [5:0] _sqCounter_T_1 = sqCounter + _GEN_505; // @[LSQWrapper.scala 244:28]
  wire [5:0] _sqCounter_T_3 = _sqCounter_T_1 + t3_sqCancelCnt; // @[LSQWrapper.scala 244:41]
  wire  _T = ~io_redirect_valid; // @[LSQWrapper.scala 245:15]
  wire [5:0] _GEN_506 = {{3'd0}, loadEnqNumber}; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] lqPtr_new_value = lqPtr_value + _GEN_506; // @[CircularQueuePtr.scala 42:34]
  wire [7:0] _lqPtr_diff_T_1 = {1'h0,lqPtr_new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [7:0] lqPtr_diff = $signed(_lqPtr_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 43:52]
  wire  lqPtr_reverse_flag = $signed(lqPtr_diff) >= 8'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [7:0] _lqPtr_new_ptr_value_T = $signed(_lqPtr_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 47:20]
  wire [7:0] _lqPtr_new_ptr_value_T_1 = lqPtr_reverse_flag ? _lqPtr_new_ptr_value_T : {{1'd0}, lqPtr_new_value}; // @[CircularQueuePtr.scala 46:27]
  wire [5:0] _lqCounter_T_7 = _lqCounter_T_1 - _GEN_506; // @[LSQWrapper.scala 247:41]
  wire [5:0] _GEN_509 = {{3'd0}, storeEnqNumber}; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] _sqPtr_new_ptr_T_2 = _sqPtr_flipped_new_ptr_new_ptr_T + _GEN_509; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] sqPtr_new_ptr_1_value = _sqPtr_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 40:59]
  wire  sqPtr_new_ptr_1_flag = _sqPtr_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 40:59]
  wire [5:0] _sqCounter_T_7 = _sqCounter_T_1 - _GEN_509; // @[LSQWrapper.scala 249:41]
  wire [5:0] lqPtr_new_ptr_1_value = _lqPtr_new_ptr_value_T_1[5:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [5:0] lqPtr_flipped_new_ptr_value = _lqPtr_flipped_new_ptr_new_ptr_value_T_1[5:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [3:0] _ldCanAccept_T = loadEnqNumber + 3'h2; // @[LSQWrapper.scala 257:48]
  wire [5:0] _GEN_514 = {{2'd0}, _ldCanAccept_T}; // @[LSQWrapper.scala 257:31]
  wire  ldCanAccept = lqCounter >= _GEN_514; // @[LSQWrapper.scala 257:31]
  wire [3:0] _sqCanAccept_T = storeEnqNumber + 3'h2; // @[LSQWrapper.scala 258:49]
  wire [5:0] _GEN_515 = {{2'd0}, _sqCanAccept_T}; // @[LSQWrapper.scala 258:31]
  wire  sqCanAccept = sqCounter >= _GEN_515; // @[LSQWrapper.scala 258:31]
  reg  io_enq_canAccept_REG; // @[LSQWrapper.scala 264:30]
  wire [6:0] io_enq_resp_0_lqIdx_new_value = {{1'd0}, lqPtr_value}; // @[CircularQueuePtr.scala 42:34]
  wire [7:0] _io_enq_resp_0_lqIdx_diff_T_1 = {1'h0,io_enq_resp_0_lqIdx_new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [7:0] io_enq_resp_0_lqIdx_diff = $signed(_io_enq_resp_0_lqIdx_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 43:52]
  wire  io_enq_resp_0_lqIdx_reverse_flag = $signed(io_enq_resp_0_lqIdx_diff) >= 8'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [7:0] _io_enq_resp_0_lqIdx_new_ptr_value_T = $signed(_io_enq_resp_0_lqIdx_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 47:20]
  wire [7:0] _io_enq_resp_0_lqIdx_new_ptr_value_T_1 = io_enq_resp_0_lqIdx_reverse_flag ?
    _io_enq_resp_0_lqIdx_new_ptr_value_T : {{1'd0}, io_enq_resp_0_lqIdx_new_value}; // @[CircularQueuePtr.scala 46:27]
  wire [6:0] _io_enq_resp_0_sqIdx_new_ptr_T_1 = {{1'd0}, _sqPtr_flipped_new_ptr_new_ptr_T}; // @[CircularQueuePtr.scala 40:46]
  wire [1:0] lqOffset_1 = {{1'd0}, io_enq_needAlloc_0[0]}; // @[LSQWrapper.scala 265:22 268:17]
  wire [5:0] _GEN_516 = {{4'd0}, lqOffset_1}; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] io_enq_resp_1_lqIdx_new_value = lqPtr_value + _GEN_516; // @[CircularQueuePtr.scala 42:34]
  wire [7:0] _io_enq_resp_1_lqIdx_diff_T_1 = {1'h0,io_enq_resp_1_lqIdx_new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [7:0] io_enq_resp_1_lqIdx_diff = $signed(_io_enq_resp_1_lqIdx_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 43:52]
  wire  io_enq_resp_1_lqIdx_reverse_flag = $signed(io_enq_resp_1_lqIdx_diff) >= 8'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [7:0] _io_enq_resp_1_lqIdx_new_ptr_value_T = $signed(_io_enq_resp_1_lqIdx_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 47:20]
  wire [7:0] _io_enq_resp_1_lqIdx_new_ptr_value_T_1 = io_enq_resp_1_lqIdx_reverse_flag ?
    _io_enq_resp_1_lqIdx_new_ptr_value_T : {{1'd0}, io_enq_resp_1_lqIdx_new_value}; // @[CircularQueuePtr.scala 46:27]
  wire [1:0] sqOffset_1 = {{1'd0}, io_enq_needAlloc_0[1]}; // @[LSQWrapper.scala 266:22 270:17]
  wire [5:0] _GEN_517 = {{4'd0}, sqOffset_1}; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] _io_enq_resp_1_sqIdx_new_ptr_T_2 = _sqPtr_flipped_new_ptr_new_ptr_T + _GEN_517; // @[CircularQueuePtr.scala 40:46]
  wire [1:0] lqOffset_2 = io_enq_needAlloc_0[0] + io_enq_needAlloc_1[0]; // @[Bitwise.scala 48:55]
  wire [5:0] _GEN_518 = {{4'd0}, lqOffset_2}; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] io_enq_resp_2_lqIdx_new_value = lqPtr_value + _GEN_518; // @[CircularQueuePtr.scala 42:34]
  wire [7:0] _io_enq_resp_2_lqIdx_diff_T_1 = {1'h0,io_enq_resp_2_lqIdx_new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [7:0] io_enq_resp_2_lqIdx_diff = $signed(_io_enq_resp_2_lqIdx_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 43:52]
  wire  io_enq_resp_2_lqIdx_reverse_flag = $signed(io_enq_resp_2_lqIdx_diff) >= 8'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [7:0] _io_enq_resp_2_lqIdx_new_ptr_value_T = $signed(_io_enq_resp_2_lqIdx_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 47:20]
  wire [7:0] _io_enq_resp_2_lqIdx_new_ptr_value_T_1 = io_enq_resp_2_lqIdx_reverse_flag ?
    _io_enq_resp_2_lqIdx_new_ptr_value_T : {{1'd0}, io_enq_resp_2_lqIdx_new_value}; // @[CircularQueuePtr.scala 46:27]
  wire [1:0] sqOffset_2 = io_enq_needAlloc_0[1] + io_enq_needAlloc_1[1]; // @[Bitwise.scala 48:55]
  wire [5:0] _GEN_519 = {{4'd0}, sqOffset_2}; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] _io_enq_resp_2_sqIdx_new_ptr_T_2 = _sqPtr_flipped_new_ptr_new_ptr_T + _GEN_519; // @[CircularQueuePtr.scala 40:46]
  wire [1:0] _lqOffset_3_T_3 = io_enq_needAlloc_1[0] + io_enq_needAlloc_2[0]; // @[Bitwise.scala 48:55]
  wire [2:0] _lqOffset_3_T_5 = lqOffset_1 + _lqOffset_3_T_3; // @[Bitwise.scala 48:55]
  wire [1:0] lqOffset_3 = _lqOffset_3_T_5[1:0]; // @[Bitwise.scala 48:55]
  wire [5:0] _GEN_521 = {{4'd0}, lqOffset_3}; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] io_enq_resp_3_lqIdx_new_value = lqPtr_value + _GEN_521; // @[CircularQueuePtr.scala 42:34]
  wire [7:0] _io_enq_resp_3_lqIdx_diff_T_1 = {1'h0,io_enq_resp_3_lqIdx_new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [7:0] io_enq_resp_3_lqIdx_diff = $signed(_io_enq_resp_3_lqIdx_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 43:52]
  wire  io_enq_resp_3_lqIdx_reverse_flag = $signed(io_enq_resp_3_lqIdx_diff) >= 8'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [7:0] _io_enq_resp_3_lqIdx_new_ptr_value_T = $signed(_io_enq_resp_3_lqIdx_diff_T_1) - 8'sh30; // @[CircularQueuePtr.scala 47:20]
  wire [7:0] _io_enq_resp_3_lqIdx_new_ptr_value_T_1 = io_enq_resp_3_lqIdx_reverse_flag ?
    _io_enq_resp_3_lqIdx_new_ptr_value_T : {{1'd0}, io_enq_resp_3_lqIdx_new_value}; // @[CircularQueuePtr.scala 46:27]
  wire [1:0] _sqOffset_3_T_3 = io_enq_needAlloc_1[1] + io_enq_needAlloc_2[1]; // @[Bitwise.scala 48:55]
  wire [2:0] _sqOffset_3_T_5 = sqOffset_1 + _sqOffset_3_T_3; // @[Bitwise.scala 48:55]
  wire [1:0] sqOffset_3 = _sqOffset_3_T_5[1:0]; // @[Bitwise.scala 48:55]
  wire [5:0] _GEN_523 = {{4'd0}, sqOffset_3}; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] _io_enq_resp_3_sqIdx_new_ptr_T_2 = _sqPtr_flipped_new_ptr_new_ptr_T + _GEN_523; // @[CircularQueuePtr.scala 40:46]
  reg [1:0] REG_0; // @[LSQWrapper.scala 274:33]
  reg [1:0] REG_1; // @[LSQWrapper.scala 274:33]
  reg [1:0] REG_2; // @[LSQWrapper.scala 274:33]
  reg [1:0] REG_3; // @[LSQWrapper.scala 274:33]
  wire  do_enq = io_enq_req_0_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 276:50]
  reg  io_enqLsq_req_0_valid_REG; // @[LSQWrapper.scala 277:27]
  reg  io_enqLsq_req_0_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [6:0] io_enqLsq_req_0_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg [5:0] io_enqLsq_req_0_bits_lqIdx_rvalue; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_0_bits_sqIdx_rvalue; // @[Reg.scala 16:16]
  wire  do_enq_1 = io_enq_req_1_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 276:50]
  reg  io_enqLsq_req_1_valid_REG; // @[LSQWrapper.scala 277:27]
  reg  io_enqLsq_req_1_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [6:0] io_enqLsq_req_1_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg [5:0] io_enqLsq_req_1_bits_lqIdx_rvalue; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_1_bits_sqIdx_rvalue; // @[Reg.scala 16:16]
  wire  do_enq_2 = io_enq_req_2_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 276:50]
  reg  io_enqLsq_req_2_valid_REG; // @[LSQWrapper.scala 277:27]
  reg  io_enqLsq_req_2_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [6:0] io_enqLsq_req_2_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg [5:0] io_enqLsq_req_2_bits_lqIdx_rvalue; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_2_bits_sqIdx_rvalue; // @[Reg.scala 16:16]
  wire  do_enq_3 = io_enq_req_3_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 276:50]
  reg  io_enqLsq_req_3_valid_REG; // @[LSQWrapper.scala 277:27]
  reg  io_enqLsq_req_3_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [6:0] io_enqLsq_req_3_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg [5:0] io_enqLsq_req_3_bits_lqIdx_rvalue; // @[Reg.scala 16:16]
  reg [4:0] io_enqLsq_req_3_bits_sqIdx_rvalue; // @[Reg.scala 16:16]
  assign io_enq_canAccept = io_enq_canAccept_REG; // @[LSQWrapper.scala 264:20]
  assign io_enq_resp_0_lqIdx_flag = io_enq_resp_0_lqIdx_reverse_flag ? ~lqPtr_flag : lqPtr_flag; // @[CircularQueuePtr.scala 45:26]
  assign io_enq_resp_0_lqIdx_value = _io_enq_resp_0_lqIdx_new_ptr_value_T_1[5:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  assign io_enq_resp_0_sqIdx_flag = _io_enq_resp_0_sqIdx_new_ptr_T_1[5]; // @[CircularQueuePtr.scala 40:59]
  assign io_enq_resp_0_sqIdx_value = _io_enq_resp_0_sqIdx_new_ptr_T_1[4:0]; // @[CircularQueuePtr.scala 40:59]
  assign io_enq_resp_1_lqIdx_flag = io_enq_resp_1_lqIdx_reverse_flag ? ~lqPtr_flag : lqPtr_flag; // @[CircularQueuePtr.scala 45:26]
  assign io_enq_resp_1_lqIdx_value = _io_enq_resp_1_lqIdx_new_ptr_value_T_1[5:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  assign io_enq_resp_1_sqIdx_flag = _io_enq_resp_1_sqIdx_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 40:59]
  assign io_enq_resp_1_sqIdx_value = _io_enq_resp_1_sqIdx_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 40:59]
  assign io_enq_resp_2_lqIdx_flag = io_enq_resp_2_lqIdx_reverse_flag ? ~lqPtr_flag : lqPtr_flag; // @[CircularQueuePtr.scala 45:26]
  assign io_enq_resp_2_lqIdx_value = _io_enq_resp_2_lqIdx_new_ptr_value_T_1[5:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  assign io_enq_resp_2_sqIdx_flag = _io_enq_resp_2_sqIdx_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 40:59]
  assign io_enq_resp_2_sqIdx_value = _io_enq_resp_2_sqIdx_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 40:59]
  assign io_enq_resp_3_lqIdx_flag = io_enq_resp_3_lqIdx_reverse_flag ? ~lqPtr_flag : lqPtr_flag; // @[CircularQueuePtr.scala 45:26]
  assign io_enq_resp_3_lqIdx_value = _io_enq_resp_3_lqIdx_new_ptr_value_T_1[5:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  assign io_enq_resp_3_sqIdx_flag = _io_enq_resp_3_sqIdx_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 40:59]
  assign io_enq_resp_3_sqIdx_value = _io_enq_resp_3_sqIdx_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 40:59]
  assign io_enqLsq_needAlloc_0 = REG_0; // @[LSQWrapper.scala 274:23]
  assign io_enqLsq_needAlloc_1 = REG_1; // @[LSQWrapper.scala 274:23]
  assign io_enqLsq_needAlloc_2 = REG_2; // @[LSQWrapper.scala 274:23]
  assign io_enqLsq_needAlloc_3 = REG_3; // @[LSQWrapper.scala 274:23]
  assign io_enqLsq_req_0_valid = io_enqLsq_req_0_valid_REG; // @[LSQWrapper.scala 277:17]
  assign io_enqLsq_req_0_bits_robIdx_flag = io_enqLsq_req_0_bits_rrobIdx_flag; // @[LSQWrapper.scala 278:16]
  assign io_enqLsq_req_0_bits_robIdx_value = io_enqLsq_req_0_bits_rrobIdx_value; // @[LSQWrapper.scala 278:16]
  assign io_enqLsq_req_0_bits_lqIdx_value = io_enqLsq_req_0_bits_lqIdx_rvalue; // @[LSQWrapper.scala 279:22]
  assign io_enqLsq_req_0_bits_sqIdx_value = io_enqLsq_req_0_bits_sqIdx_rvalue; // @[LSQWrapper.scala 280:22]
  assign io_enqLsq_req_1_valid = io_enqLsq_req_1_valid_REG; // @[LSQWrapper.scala 277:17]
  assign io_enqLsq_req_1_bits_robIdx_flag = io_enqLsq_req_1_bits_rrobIdx_flag; // @[LSQWrapper.scala 278:16]
  assign io_enqLsq_req_1_bits_robIdx_value = io_enqLsq_req_1_bits_rrobIdx_value; // @[LSQWrapper.scala 278:16]
  assign io_enqLsq_req_1_bits_lqIdx_value = io_enqLsq_req_1_bits_lqIdx_rvalue; // @[LSQWrapper.scala 279:22]
  assign io_enqLsq_req_1_bits_sqIdx_value = io_enqLsq_req_1_bits_sqIdx_rvalue; // @[LSQWrapper.scala 280:22]
  assign io_enqLsq_req_2_valid = io_enqLsq_req_2_valid_REG; // @[LSQWrapper.scala 277:17]
  assign io_enqLsq_req_2_bits_robIdx_flag = io_enqLsq_req_2_bits_rrobIdx_flag; // @[LSQWrapper.scala 278:16]
  assign io_enqLsq_req_2_bits_robIdx_value = io_enqLsq_req_2_bits_rrobIdx_value; // @[LSQWrapper.scala 278:16]
  assign io_enqLsq_req_2_bits_lqIdx_value = io_enqLsq_req_2_bits_lqIdx_rvalue; // @[LSQWrapper.scala 279:22]
  assign io_enqLsq_req_2_bits_sqIdx_value = io_enqLsq_req_2_bits_sqIdx_rvalue; // @[LSQWrapper.scala 280:22]
  assign io_enqLsq_req_3_valid = io_enqLsq_req_3_valid_REG; // @[LSQWrapper.scala 277:17]
  assign io_enqLsq_req_3_bits_robIdx_flag = io_enqLsq_req_3_bits_rrobIdx_flag; // @[LSQWrapper.scala 278:16]
  assign io_enqLsq_req_3_bits_robIdx_value = io_enqLsq_req_3_bits_rrobIdx_value; // @[LSQWrapper.scala 278:16]
  assign io_enqLsq_req_3_bits_lqIdx_value = io_enqLsq_req_3_bits_lqIdx_rvalue; // @[LSQWrapper.scala 279:22]
  assign io_enqLsq_req_3_bits_sqIdx_value = io_enqLsq_req_3_bits_sqIdx_rvalue; // @[LSQWrapper.scala 280:22]
  always @(posedge clock) begin
    if (reset) begin // @[LSQWrapper.scala 222:22]
      lqPtr_flag <= 1'h0; // @[LSQWrapper.scala 222:22]
    end else if (t3_update) begin // @[LSQWrapper.scala 240:20]
      lqPtr_flag <= lqPtr_new_ptr_flag; // @[LSQWrapper.scala 241:11]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 245:55]
      if (lqPtr_reverse_flag) begin // @[CircularQueuePtr.scala 45:26]
        lqPtr_flag <= ~lqPtr_flag;
      end
    end
    if (reset) begin // @[LSQWrapper.scala 222:22]
      lqPtr_value <= 6'h0; // @[LSQWrapper.scala 222:22]
    end else if (t3_update) begin // @[LSQWrapper.scala 240:20]
      lqPtr_value <= lqPtr_flipped_new_ptr_value; // @[LSQWrapper.scala 241:11]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 245:55]
      lqPtr_value <= lqPtr_new_ptr_1_value; // @[LSQWrapper.scala 246:11]
    end
    if (reset) begin // @[LSQWrapper.scala 223:22]
      sqPtr_flag <= 1'h0; // @[LSQWrapper.scala 223:22]
    end else if (t3_update) begin // @[LSQWrapper.scala 240:20]
      sqPtr_flag <= sqPtr_new_ptr_flag; // @[LSQWrapper.scala 243:11]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 245:55]
      sqPtr_flag <= sqPtr_new_ptr_1_flag; // @[LSQWrapper.scala 248:11]
    end
    if (reset) begin // @[LSQWrapper.scala 223:22]
      sqPtr_value <= 5'h0; // @[LSQWrapper.scala 223:22]
    end else if (t3_update) begin // @[LSQWrapper.scala 240:20]
      sqPtr_value <= sqPtr_flipped_new_ptr_value; // @[LSQWrapper.scala 243:11]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 245:55]
      sqPtr_value <= sqPtr_new_ptr_1_value; // @[LSQWrapper.scala 248:11]
    end
    if (reset) begin // @[LSQWrapper.scala 224:26]
      lqCounter <= 6'h30; // @[LSQWrapper.scala 224:26]
    end else if (t3_update) begin // @[LSQWrapper.scala 240:20]
      lqCounter <= _lqCounter_T_3; // @[LSQWrapper.scala 242:15]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 245:55]
      lqCounter <= _lqCounter_T_7; // @[LSQWrapper.scala 247:15]
    end else begin
      lqCounter <= _lqCounter_T_1; // @[LSQWrapper.scala 251:15]
    end
    if (reset) begin // @[LSQWrapper.scala 225:26]
      sqCounter <= 6'h20; // @[LSQWrapper.scala 225:26]
    end else if (t3_update) begin // @[LSQWrapper.scala 240:20]
      sqCounter <= _sqCounter_T_3; // @[LSQWrapper.scala 244:15]
    end else if (~io_redirect_valid & io_enq_canAccept) begin // @[LSQWrapper.scala 245:55]
      sqCounter <= _sqCounter_T_7; // @[LSQWrapper.scala 249:15]
    end else begin
      sqCounter <= _sqCounter_T_1; // @[LSQWrapper.scala 252:15]
    end
    t1_redirect <= io_redirect_valid; // @[LSQWrapper.scala 234:28]
    t2_redirect <= t1_redirect; // @[LSQWrapper.scala 235:28]
    t3_update <= t2_redirect & ~(|_t2_update_T_4); // @[LSQWrapper.scala 236:31]
    t3_lqCancelCnt <= io_lqCancelCnt; // @[LSQWrapper.scala 238:31]
    t3_sqCancelCnt <= io_sqCancelCnt; // @[LSQWrapper.scala 239:31]
    io_enq_canAccept_REG <= ldCanAccept & sqCanAccept & ~t2_update; // @[LSQWrapper.scala 264:58]
    REG_0 <= io_enq_needAlloc_0; // @[LSQWrapper.scala 274:33]
    REG_1 <= io_enq_needAlloc_1; // @[LSQWrapper.scala 274:33]
    REG_2 <= io_enq_needAlloc_2; // @[LSQWrapper.scala 274:33]
    REG_3 <= io_enq_needAlloc_3; // @[LSQWrapper.scala 274:33]
    io_enqLsq_req_0_valid_REG <= io_enq_req_0_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 276:50]
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_rrobIdx_flag <= io_enq_req_0_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_rrobIdx_value <= io_enq_req_0_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_lqIdx_rvalue <= io_enq_resp_0_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq) begin // @[Reg.scala 17:18]
      io_enqLsq_req_0_bits_sqIdx_rvalue <= io_enq_resp_0_sqIdx_value; // @[Reg.scala 17:22]
    end
    io_enqLsq_req_1_valid_REG <= io_enq_req_1_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 276:50]
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_rrobIdx_flag <= io_enq_req_1_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_rrobIdx_value <= io_enq_req_1_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_lqIdx_rvalue <= io_enq_resp_1_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_1) begin // @[Reg.scala 17:18]
      io_enqLsq_req_1_bits_sqIdx_rvalue <= io_enq_resp_1_sqIdx_value; // @[Reg.scala 17:22]
    end
    io_enqLsq_req_2_valid_REG <= io_enq_req_2_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 276:50]
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_rrobIdx_flag <= io_enq_req_2_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_rrobIdx_value <= io_enq_req_2_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_lqIdx_rvalue <= io_enq_resp_2_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_2) begin // @[Reg.scala 17:18]
      io_enqLsq_req_2_bits_sqIdx_rvalue <= io_enq_resp_2_sqIdx_value; // @[Reg.scala 17:22]
    end
    io_enqLsq_req_3_valid_REG <= io_enq_req_3_valid & _T & io_enq_canAccept; // @[LSQWrapper.scala 276:50]
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_rrobIdx_flag <= io_enq_req_3_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_rrobIdx_value <= io_enq_req_3_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_lqIdx_rvalue <= io_enq_resp_3_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (do_enq_3) begin // @[Reg.scala 17:18]
      io_enqLsq_req_3_bits_sqIdx_rvalue <= io_enq_resp_3_sqIdx_value; // @[Reg.scala 17:22]
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
  lqPtr_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  lqPtr_value = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  sqPtr_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  sqPtr_value = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  lqCounter = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  sqCounter = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  t1_redirect = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  t2_redirect = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  t3_update = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  t3_lqCancelCnt = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  t3_sqCancelCnt = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  io_enq_canAccept_REG = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  REG_0 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  REG_1 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  REG_2 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  REG_3 = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  io_enqLsq_req_0_valid_REG = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_rrobIdx_flag = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_rrobIdx_value = _RAND_18[6:0];
  _RAND_19 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_lqIdx_rvalue = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  io_enqLsq_req_0_bits_sqIdx_rvalue = _RAND_20[4:0];
  _RAND_21 = {1{`RANDOM}};
  io_enqLsq_req_1_valid_REG = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_rrobIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_rrobIdx_value = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_lqIdx_rvalue = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  io_enqLsq_req_1_bits_sqIdx_rvalue = _RAND_25[4:0];
  _RAND_26 = {1{`RANDOM}};
  io_enqLsq_req_2_valid_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_rrobIdx_flag = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_rrobIdx_value = _RAND_28[6:0];
  _RAND_29 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_lqIdx_rvalue = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  io_enqLsq_req_2_bits_sqIdx_rvalue = _RAND_30[4:0];
  _RAND_31 = {1{`RANDOM}};
  io_enqLsq_req_3_valid_REG = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_rrobIdx_flag = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_rrobIdx_value = _RAND_33[6:0];
  _RAND_34 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_lqIdx_rvalue = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  io_enqLsq_req_3_bits_sqIdx_rvalue = _RAND_35[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
