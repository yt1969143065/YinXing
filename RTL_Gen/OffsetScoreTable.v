module OffsetScoreTable(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [35:0] io_req_bits,
  output [4:0]  io_prefetchOffset,
  output        io_test_req_valid,
  output [35:0] io_test_req_bits_addr,
  output [4:0]  io_test_req_bits_testOffset,
  output [3:0]  io_test_req_bits_ptr,
  output        io_test_resp_ready,
  input         io_test_resp_valid,
  input  [3:0]  io_test_resp_bits_ptr,
  input         io_test_resp_bits_hit
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
  reg [4:0] prefetchOffset; // @[BestOffsetPrefetch.scala 138:31]
  reg [4:0] st_0_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [4:0] st_1_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [4:0] st_2_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [4:0] st_3_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [4:0] st_4_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [4:0] st_5_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [4:0] st_6_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [4:0] st_7_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [4:0] st_8_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [4:0] st_9_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [4:0] st_10_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [4:0] st_11_score; // @[BestOffsetPrefetch.scala 140:19]
  reg [3:0] ptr; // @[BestOffsetPrefetch.scala 141:20]
  reg [5:0] round; // @[BestOffsetPrefetch.scala 142:22]
  reg [4:0] bestOffset_offset; // @[BestOffsetPrefetch.scala 144:27]
  reg [4:0] bestOffset_score; // @[BestOffsetPrefetch.scala 144:27]
  wire [4:0] _GEN_1 = 4'h1 == ptr ? 5'h2 : 5'h1; // @[]
  wire [4:0] _GEN_2 = 4'h2 == ptr ? 5'h3 : _GEN_1; // @[]
  wire [4:0] _GEN_3 = 4'h3 == ptr ? 5'h4 : _GEN_2; // @[]
  wire [4:0] _GEN_4 = 4'h4 == ptr ? 5'h5 : _GEN_3; // @[]
  wire [4:0] _GEN_5 = 4'h5 == ptr ? 5'h6 : _GEN_4; // @[]
  wire [4:0] _GEN_6 = 4'h6 == ptr ? 5'h8 : _GEN_5; // @[]
  wire [4:0] _GEN_7 = 4'h7 == ptr ? 5'h9 : _GEN_6; // @[]
  wire [4:0] _GEN_8 = 4'h8 == ptr ? 5'ha : _GEN_7; // @[]
  wire [4:0] _GEN_9 = 4'h9 == ptr ? 5'hc : _GEN_8; // @[]
  wire [4:0] _GEN_10 = 4'ha == ptr ? 5'hf : _GEN_9; // @[]
  reg  state; // @[BestOffsetPrefetch.scala 153:22]
  wire [4:0] _GEN_12 = ~state ? 5'h0 : st_0_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [4:0] _GEN_13 = ~state ? 5'h0 : st_1_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [4:0] _GEN_14 = ~state ? 5'h0 : st_2_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [4:0] _GEN_15 = ~state ? 5'h0 : st_3_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [4:0] _GEN_16 = ~state ? 5'h0 : st_4_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [4:0] _GEN_17 = ~state ? 5'h0 : st_5_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [4:0] _GEN_18 = ~state ? 5'h0 : st_6_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [4:0] _GEN_19 = ~state ? 5'h0 : st_7_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [4:0] _GEN_20 = ~state ? 5'h0 : st_8_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [4:0] _GEN_21 = ~state ? 5'h0 : st_9_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [4:0] _GEN_22 = ~state ? 5'h0 : st_10_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [4:0] _GEN_23 = ~state ? 5'h0 : st_11_score; // @[BestOffsetPrefetch.scala 140:19 158:26 159:24]
  wire [3:0] _GEN_24 = ~state ? 4'h0 : ptr; // @[BestOffsetPrefetch.scala 141:20 158:26 160:9]
  wire [5:0] _GEN_25 = ~state ? 6'h0 : round; // @[BestOffsetPrefetch.scala 158:26 161:11 142:22]
  wire [4:0] _GEN_26 = ~state ? 5'h1 : bestOffset_score; // @[BestOffsetPrefetch.scala 158:26 162:22 144:27]
  wire  _GEN_28 = ~state | state; // @[BestOffsetPrefetch.scala 158:26 164:11 153:22]
  wire  roundFinish = ptr == 4'hb; // @[BestOffsetPrefetch.scala 177:29]
  wire [3:0] _ptr_T_1 = ptr + 4'h1; // @[BestOffsetPrefetch.scala 178:40]
  wire [5:0] _round_T_1 = round + 6'h1; // @[BestOffsetPrefetch.scala 179:39]
  wire  _GEN_31 = round >= 6'h32 ? 1'h0 : _GEN_28; // @[BestOffsetPrefetch.scala 183:31 184:13]
  wire  _T_4 = io_test_resp_ready & io_test_resp_valid; // @[Decoupled.scala 50:35]
  wire [4:0] _GEN_33 = 4'h1 == io_test_resp_bits_ptr ? st_1_score : st_0_score; // @[BestOffsetPrefetch.scala 190:{31,31}]
  wire [4:0] _GEN_34 = 4'h2 == io_test_resp_bits_ptr ? st_2_score : _GEN_33; // @[BestOffsetPrefetch.scala 190:{31,31}]
  wire [4:0] _GEN_35 = 4'h3 == io_test_resp_bits_ptr ? st_3_score : _GEN_34; // @[BestOffsetPrefetch.scala 190:{31,31}]
  wire [4:0] _GEN_36 = 4'h4 == io_test_resp_bits_ptr ? st_4_score : _GEN_35; // @[BestOffsetPrefetch.scala 190:{31,31}]
  wire [4:0] _GEN_37 = 4'h5 == io_test_resp_bits_ptr ? st_5_score : _GEN_36; // @[BestOffsetPrefetch.scala 190:{31,31}]
  wire [4:0] _GEN_38 = 4'h6 == io_test_resp_bits_ptr ? st_6_score : _GEN_37; // @[BestOffsetPrefetch.scala 190:{31,31}]
  wire [4:0] _GEN_39 = 4'h7 == io_test_resp_bits_ptr ? st_7_score : _GEN_38; // @[BestOffsetPrefetch.scala 190:{31,31}]
  wire [4:0] _GEN_40 = 4'h8 == io_test_resp_bits_ptr ? st_8_score : _GEN_39; // @[BestOffsetPrefetch.scala 190:{31,31}]
  wire [4:0] _GEN_41 = 4'h9 == io_test_resp_bits_ptr ? st_9_score : _GEN_40; // @[BestOffsetPrefetch.scala 190:{31,31}]
  wire [4:0] _GEN_42 = 4'ha == io_test_resp_bits_ptr ? st_10_score : _GEN_41; // @[BestOffsetPrefetch.scala 190:{31,31}]
  wire [4:0] _GEN_43 = 4'hb == io_test_resp_bits_ptr ? st_11_score : _GEN_42; // @[BestOffsetPrefetch.scala 190:{31,31}]
  wire [4:0] newScore = _GEN_43 + 5'h1; // @[BestOffsetPrefetch.scala 190:31]
  wire [4:0] _GEN_57 = 4'h1 == io_test_resp_bits_ptr ? 5'h2 : 5'h1; // @[BestOffsetPrefetch.scala 58:{18,18}]
  wire [4:0] _GEN_58 = 4'h2 == io_test_resp_bits_ptr ? 5'h3 : _GEN_57; // @[BestOffsetPrefetch.scala 58:{18,18}]
  wire [4:0] _GEN_59 = 4'h3 == io_test_resp_bits_ptr ? 5'h4 : _GEN_58; // @[BestOffsetPrefetch.scala 58:{18,18}]
  wire [4:0] _GEN_60 = 4'h4 == io_test_resp_bits_ptr ? 5'h5 : _GEN_59; // @[BestOffsetPrefetch.scala 58:{18,18}]
  wire [4:0] _GEN_61 = 4'h5 == io_test_resp_bits_ptr ? 5'h6 : _GEN_60; // @[BestOffsetPrefetch.scala 58:{18,18}]
  wire [4:0] _GEN_62 = 4'h6 == io_test_resp_bits_ptr ? 5'h8 : _GEN_61; // @[BestOffsetPrefetch.scala 58:{18,18}]
  wire [4:0] _GEN_63 = 4'h7 == io_test_resp_bits_ptr ? 5'h9 : _GEN_62; // @[BestOffsetPrefetch.scala 58:{18,18}]
  wire [4:0] _GEN_64 = 4'h8 == io_test_resp_bits_ptr ? 5'ha : _GEN_63; // @[BestOffsetPrefetch.scala 58:{18,18}]
  wire [4:0] _GEN_65 = 4'h9 == io_test_resp_bits_ptr ? 5'hc : _GEN_64; // @[BestOffsetPrefetch.scala 58:{18,18}]
  wire [4:0] _GEN_66 = 4'ha == io_test_resp_bits_ptr ? 5'hf : _GEN_65; // @[BestOffsetPrefetch.scala 58:{18,18}]
  wire [4:0] bestOffset_entry_1_offset = 4'hb == io_test_resp_bits_ptr ? 5'h10 : _GEN_66; // @[BestOffsetPrefetch.scala 58:{18,18}]
  assign io_req_ready = state; // @[BestOffsetPrefetch.scala 201:25]
  assign io_prefetchOffset = prefetchOffset; // @[BestOffsetPrefetch.scala 202:21]
  assign io_test_req_valid = state & io_req_valid; // @[BestOffsetPrefetch.scala 203:42]
  assign io_test_req_bits_addr = io_req_bits; // @[BestOffsetPrefetch.scala 204:25]
  assign io_test_req_bits_testOffset = 4'hb == ptr ? 5'h10 : _GEN_10; // @[]
  assign io_test_req_bits_ptr = ptr; // @[BestOffsetPrefetch.scala 206:24]
  assign io_test_resp_ready = 1'h1; // @[BestOffsetPrefetch.scala 207:22]
  always @(posedge clock) begin
    if (reset) begin // @[BestOffsetPrefetch.scala 138:31]
      prefetchOffset <= 5'h2; // @[BestOffsetPrefetch.scala 138:31]
    end else if (~state) begin // @[BestOffsetPrefetch.scala 158:26]
      prefetchOffset <= bestOffset_offset; // @[BestOffsetPrefetch.scala 163:20]
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_0_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'h0 == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_0_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_0_score <= _GEN_12;
        end
      end else begin
        st_0_score <= _GEN_12;
      end
    end else begin
      st_0_score <= _GEN_12;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_1_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'h1 == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_1_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_1_score <= _GEN_13;
        end
      end else begin
        st_1_score <= _GEN_13;
      end
    end else begin
      st_1_score <= _GEN_13;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_2_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'h2 == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_2_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_2_score <= _GEN_14;
        end
      end else begin
        st_2_score <= _GEN_14;
      end
    end else begin
      st_2_score <= _GEN_14;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_3_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'h3 == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_3_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_3_score <= _GEN_15;
        end
      end else begin
        st_3_score <= _GEN_15;
      end
    end else begin
      st_3_score <= _GEN_15;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_4_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'h4 == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_4_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_4_score <= _GEN_16;
        end
      end else begin
        st_4_score <= _GEN_16;
      end
    end else begin
      st_4_score <= _GEN_16;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_5_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'h5 == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_5_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_5_score <= _GEN_17;
        end
      end else begin
        st_5_score <= _GEN_17;
      end
    end else begin
      st_5_score <= _GEN_17;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_6_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'h6 == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_6_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_6_score <= _GEN_18;
        end
      end else begin
        st_6_score <= _GEN_18;
      end
    end else begin
      st_6_score <= _GEN_18;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_7_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'h7 == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_7_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_7_score <= _GEN_19;
        end
      end else begin
        st_7_score <= _GEN_19;
      end
    end else begin
      st_7_score <= _GEN_19;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_8_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'h8 == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_8_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_8_score <= _GEN_20;
        end
      end else begin
        st_8_score <= _GEN_20;
      end
    end else begin
      st_8_score <= _GEN_20;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_9_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'h9 == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_9_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_9_score <= _GEN_21;
        end
      end else begin
        st_9_score <= _GEN_21;
      end
    end else begin
      st_9_score <= _GEN_21;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_10_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'ha == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_10_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_10_score <= _GEN_22;
        end
      end else begin
        st_10_score <= _GEN_22;
      end
    end else begin
      st_10_score <= _GEN_22;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 140:19]
      st_11_score <= 5'h0; // @[BestOffsetPrefetch.scala 140:19]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (4'hb == io_test_resp_bits_ptr) begin // @[BestOffsetPrefetch.scala 192:39]
          st_11_score <= newScore; // @[BestOffsetPrefetch.scala 192:39]
        end else begin
          st_11_score <= _GEN_23;
        end
      end else begin
        st_11_score <= _GEN_23;
      end
    end else begin
      st_11_score <= _GEN_23;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 141:20]
      ptr <= 4'h0; // @[BestOffsetPrefetch.scala 141:20]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (io_test_req_valid) begin // @[BestOffsetPrefetch.scala 176:30]
        if (roundFinish) begin // @[BestOffsetPrefetch.scala 178:17]
          ptr <= 4'h0;
        end else begin
          ptr <= _ptr_T_1;
        end
      end else begin
        ptr <= _GEN_24;
      end
    end else begin
      ptr <= _GEN_24;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 142:22]
      round <= 6'h0; // @[BestOffsetPrefetch.scala 142:22]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (io_test_req_valid) begin // @[BestOffsetPrefetch.scala 176:30]
        if (roundFinish) begin // @[BestOffsetPrefetch.scala 179:19]
          round <= _round_T_1;
        end
      end else begin
        round <= _GEN_25;
      end
    end else begin
      round <= _GEN_25;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 144:27]
      bestOffset_offset <= 5'h2; // @[BestOffsetPrefetch.scala 144:27]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (newScore > bestOffset_score) begin // @[BestOffsetPrefetch.scala 148:13]
          bestOffset_offset <= bestOffset_entry_1_offset;
        end
      end
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 144:27]
      bestOffset_score <= 5'h0; // @[BestOffsetPrefetch.scala 144:27]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (newScore > bestOffset_score) begin // @[BestOffsetPrefetch.scala 148:13]
          bestOffset_score <= newScore;
        end
      end else begin
        bestOffset_score <= _GEN_26;
      end
    end else begin
      bestOffset_score <= _GEN_26;
    end
    if (reset) begin // @[BestOffsetPrefetch.scala 153:22]
      state <= 1'h0; // @[BestOffsetPrefetch.scala 153:22]
    end else if (state) begin // @[BestOffsetPrefetch.scala 175:27]
      if (_T_4 & io_test_resp_bits_hit) begin // @[BestOffsetPrefetch.scala 187:56]
        if (newScore >= 5'h1f) begin // @[BestOffsetPrefetch.scala 195:36]
          state <= 1'h0; // @[BestOffsetPrefetch.scala 196:15]
        end else begin
          state <= _GEN_31;
        end
      end else begin
        state <= _GEN_31;
      end
    end else begin
      state <= _GEN_28;
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
  prefetchOffset = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  st_0_score = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  st_1_score = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  st_2_score = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  st_3_score = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  st_4_score = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  st_5_score = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  st_6_score = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  st_7_score = _RAND_8[4:0];
  _RAND_9 = {1{`RANDOM}};
  st_8_score = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  st_9_score = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  st_10_score = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  st_11_score = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  ptr = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  round = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  bestOffset_offset = _RAND_15[4:0];
  _RAND_16 = {1{`RANDOM}};
  bestOffset_score = _RAND_16[4:0];
  _RAND_17 = {1{`RANDOM}};
  state = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
