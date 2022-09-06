module PrefetchQueue(
  input         clock,
  input         reset,
  input         io_enq_valid,
  input  [21:0] io_enq_bits_tag,
  input  [7:0]  io_enq_bits_set,
  input         io_enq_bits_needT,
  input  [5:0]  io_enq_bits_source,
  input         io_deq_ready,
  output        io_deq_valid,
  output [21:0] io_deq_bits_tag,
  output [7:0]  io_deq_bits_set,
  output        io_deq_bits_needT,
  output [5:0]  io_deq_bits_source
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
`endif // RANDOMIZE_REG_INIT
  reg [21:0] queue_0_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_0_set; // @[Prefetcher.scala 51:22]
  reg  queue_0_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_0_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_1_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_1_set; // @[Prefetcher.scala 51:22]
  reg  queue_1_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_1_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_2_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_2_set; // @[Prefetcher.scala 51:22]
  reg  queue_2_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_2_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_3_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_3_set; // @[Prefetcher.scala 51:22]
  reg  queue_3_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_3_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_4_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_4_set; // @[Prefetcher.scala 51:22]
  reg  queue_4_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_4_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_5_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_5_set; // @[Prefetcher.scala 51:22]
  reg  queue_5_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_5_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_6_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_6_set; // @[Prefetcher.scala 51:22]
  reg  queue_6_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_6_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_7_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_7_set; // @[Prefetcher.scala 51:22]
  reg  queue_7_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_7_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_8_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_8_set; // @[Prefetcher.scala 51:22]
  reg  queue_8_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_8_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_9_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_9_set; // @[Prefetcher.scala 51:22]
  reg  queue_9_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_9_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_10_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_10_set; // @[Prefetcher.scala 51:22]
  reg  queue_10_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_10_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_11_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_11_set; // @[Prefetcher.scala 51:22]
  reg  queue_11_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_11_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_12_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_12_set; // @[Prefetcher.scala 51:22]
  reg  queue_12_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_12_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_13_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_13_set; // @[Prefetcher.scala 51:22]
  reg  queue_13_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_13_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_14_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_14_set; // @[Prefetcher.scala 51:22]
  reg  queue_14_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_14_source; // @[Prefetcher.scala 51:22]
  reg [21:0] queue_15_tag; // @[Prefetcher.scala 51:22]
  reg [7:0] queue_15_set; // @[Prefetcher.scala 51:22]
  reg  queue_15_needT; // @[Prefetcher.scala 51:22]
  reg [5:0] queue_15_source; // @[Prefetcher.scala 51:22]
  reg  valids_15; // @[Prefetcher.scala 52:23]
  reg [3:0] head; // @[Prefetcher.scala 54:21]
  reg [3:0] tail; // @[Prefetcher.scala 55:21]
  wire  _empty_T = head == tail; // @[Prefetcher.scala 56:20]
  wire  empty = head == tail & ~valids_15; // @[Prefetcher.scala 56:29]
  wire  full = _empty_T & valids_15; // @[Prefetcher.scala 57:28]
  wire  _T = ~empty; // @[Prefetcher.scala 59:8]
  wire  _GEN_15 = 4'hf == head ? 1'h0 : valids_15; // @[Prefetcher.scala 60:{18,18} 52:23]
  wire [3:0] _head_T_1 = head + 4'h1; // @[Prefetcher.scala 61:18]
  wire  _GEN_31 = ~empty & io_deq_ready ? _GEN_15 : valids_15; // @[Prefetcher.scala 52:23 59:32]
  wire [3:0] _GEN_32 = ~empty & io_deq_ready ? _head_T_1 : head; // @[Prefetcher.scala 59:32 61:10 54:21]
  wire  _valids_T_1 = ~io_deq_ready; // @[Prefetcher.scala 66:31]
  wire  _valids_T_2 = _T | ~io_deq_ready; // @[Prefetcher.scala 66:28]
  wire [3:0] _GEN_260 = {{3'd0}, _valids_T_2}; // @[Prefetcher.scala 67:18]
  wire [3:0] _tail_T_4 = tail + _GEN_260; // @[Prefetcher.scala 67:18]
  wire [21:0] _GEN_200 = 4'h1 == head ? queue_1_tag : queue_0_tag; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_201 = 4'h1 == head ? queue_1_set : queue_0_set; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_202 = 4'h1 == head ? queue_1_needT : queue_0_needT; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_203 = 4'h1 == head ? queue_1_source : queue_0_source; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_204 = 4'h2 == head ? queue_2_tag : _GEN_200; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_205 = 4'h2 == head ? queue_2_set : _GEN_201; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_206 = 4'h2 == head ? queue_2_needT : _GEN_202; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_207 = 4'h2 == head ? queue_2_source : _GEN_203; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_208 = 4'h3 == head ? queue_3_tag : _GEN_204; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_209 = 4'h3 == head ? queue_3_set : _GEN_205; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_210 = 4'h3 == head ? queue_3_needT : _GEN_206; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_211 = 4'h3 == head ? queue_3_source : _GEN_207; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_212 = 4'h4 == head ? queue_4_tag : _GEN_208; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_213 = 4'h4 == head ? queue_4_set : _GEN_209; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_214 = 4'h4 == head ? queue_4_needT : _GEN_210; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_215 = 4'h4 == head ? queue_4_source : _GEN_211; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_216 = 4'h5 == head ? queue_5_tag : _GEN_212; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_217 = 4'h5 == head ? queue_5_set : _GEN_213; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_218 = 4'h5 == head ? queue_5_needT : _GEN_214; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_219 = 4'h5 == head ? queue_5_source : _GEN_215; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_220 = 4'h6 == head ? queue_6_tag : _GEN_216; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_221 = 4'h6 == head ? queue_6_set : _GEN_217; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_222 = 4'h6 == head ? queue_6_needT : _GEN_218; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_223 = 4'h6 == head ? queue_6_source : _GEN_219; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_224 = 4'h7 == head ? queue_7_tag : _GEN_220; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_225 = 4'h7 == head ? queue_7_set : _GEN_221; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_226 = 4'h7 == head ? queue_7_needT : _GEN_222; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_227 = 4'h7 == head ? queue_7_source : _GEN_223; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_228 = 4'h8 == head ? queue_8_tag : _GEN_224; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_229 = 4'h8 == head ? queue_8_set : _GEN_225; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_230 = 4'h8 == head ? queue_8_needT : _GEN_226; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_231 = 4'h8 == head ? queue_8_source : _GEN_227; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_232 = 4'h9 == head ? queue_9_tag : _GEN_228; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_233 = 4'h9 == head ? queue_9_set : _GEN_229; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_234 = 4'h9 == head ? queue_9_needT : _GEN_230; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_235 = 4'h9 == head ? queue_9_source : _GEN_231; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_236 = 4'ha == head ? queue_10_tag : _GEN_232; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_237 = 4'ha == head ? queue_10_set : _GEN_233; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_238 = 4'ha == head ? queue_10_needT : _GEN_234; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_239 = 4'ha == head ? queue_10_source : _GEN_235; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_240 = 4'hb == head ? queue_11_tag : _GEN_236; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_241 = 4'hb == head ? queue_11_set : _GEN_237; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_242 = 4'hb == head ? queue_11_needT : _GEN_238; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_243 = 4'hb == head ? queue_11_source : _GEN_239; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_244 = 4'hc == head ? queue_12_tag : _GEN_240; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_245 = 4'hc == head ? queue_12_set : _GEN_241; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_246 = 4'hc == head ? queue_12_needT : _GEN_242; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_247 = 4'hc == head ? queue_12_source : _GEN_243; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_248 = 4'hd == head ? queue_13_tag : _GEN_244; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_249 = 4'hd == head ? queue_13_set : _GEN_245; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_250 = 4'hd == head ? queue_13_needT : _GEN_246; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_251 = 4'hd == head ? queue_13_source : _GEN_247; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_252 = 4'he == head ? queue_14_tag : _GEN_248; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_253 = 4'he == head ? queue_14_set : _GEN_249; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_254 = 4'he == head ? queue_14_needT : _GEN_250; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_255 = 4'he == head ? queue_14_source : _GEN_251; // @[Prefetcher.scala 75:{21,21}]
  wire [21:0] _GEN_256 = 4'hf == head ? queue_15_tag : _GEN_252; // @[Prefetcher.scala 75:{21,21}]
  wire [7:0] _GEN_257 = 4'hf == head ? queue_15_set : _GEN_253; // @[Prefetcher.scala 75:{21,21}]
  wire  _GEN_258 = 4'hf == head ? queue_15_needT : _GEN_254; // @[Prefetcher.scala 75:{21,21}]
  wire [5:0] _GEN_259 = 4'hf == head ? queue_15_source : _GEN_255; // @[Prefetcher.scala 75:{21,21}]
  assign io_deq_valid = _T | io_enq_valid; // @[Prefetcher.scala 74:26]
  assign io_deq_bits_tag = empty ? io_enq_bits_tag : _GEN_256; // @[Prefetcher.scala 75:21]
  assign io_deq_bits_set = empty ? io_enq_bits_set : _GEN_257; // @[Prefetcher.scala 75:21]
  assign io_deq_bits_needT = empty ? io_enq_bits_needT : _GEN_258; // @[Prefetcher.scala 75:21]
  assign io_deq_bits_source = empty ? io_enq_bits_source : _GEN_259; // @[Prefetcher.scala 75:21]
  always @(posedge clock) begin
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_0_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h0 == tail) begin // @[Prefetcher.scala 65:17]
        queue_0_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_0_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h0 == tail) begin // @[Prefetcher.scala 65:17]
        queue_0_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_0_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h0 == tail) begin // @[Prefetcher.scala 65:17]
        queue_0_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_0_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h0 == tail) begin // @[Prefetcher.scala 65:17]
        queue_0_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_1_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h1 == tail) begin // @[Prefetcher.scala 65:17]
        queue_1_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_1_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h1 == tail) begin // @[Prefetcher.scala 65:17]
        queue_1_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_1_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h1 == tail) begin // @[Prefetcher.scala 65:17]
        queue_1_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_1_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h1 == tail) begin // @[Prefetcher.scala 65:17]
        queue_1_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_2_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h2 == tail) begin // @[Prefetcher.scala 65:17]
        queue_2_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_2_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h2 == tail) begin // @[Prefetcher.scala 65:17]
        queue_2_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_2_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h2 == tail) begin // @[Prefetcher.scala 65:17]
        queue_2_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_2_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h2 == tail) begin // @[Prefetcher.scala 65:17]
        queue_2_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_3_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h3 == tail) begin // @[Prefetcher.scala 65:17]
        queue_3_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_3_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h3 == tail) begin // @[Prefetcher.scala 65:17]
        queue_3_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_3_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h3 == tail) begin // @[Prefetcher.scala 65:17]
        queue_3_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_3_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h3 == tail) begin // @[Prefetcher.scala 65:17]
        queue_3_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_4_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h4 == tail) begin // @[Prefetcher.scala 65:17]
        queue_4_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_4_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h4 == tail) begin // @[Prefetcher.scala 65:17]
        queue_4_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_4_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h4 == tail) begin // @[Prefetcher.scala 65:17]
        queue_4_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_4_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h4 == tail) begin // @[Prefetcher.scala 65:17]
        queue_4_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_5_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h5 == tail) begin // @[Prefetcher.scala 65:17]
        queue_5_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_5_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h5 == tail) begin // @[Prefetcher.scala 65:17]
        queue_5_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_5_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h5 == tail) begin // @[Prefetcher.scala 65:17]
        queue_5_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_5_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h5 == tail) begin // @[Prefetcher.scala 65:17]
        queue_5_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_6_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h6 == tail) begin // @[Prefetcher.scala 65:17]
        queue_6_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_6_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h6 == tail) begin // @[Prefetcher.scala 65:17]
        queue_6_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_6_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h6 == tail) begin // @[Prefetcher.scala 65:17]
        queue_6_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_6_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h6 == tail) begin // @[Prefetcher.scala 65:17]
        queue_6_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_7_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h7 == tail) begin // @[Prefetcher.scala 65:17]
        queue_7_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_7_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h7 == tail) begin // @[Prefetcher.scala 65:17]
        queue_7_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_7_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h7 == tail) begin // @[Prefetcher.scala 65:17]
        queue_7_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_7_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h7 == tail) begin // @[Prefetcher.scala 65:17]
        queue_7_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_8_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h8 == tail) begin // @[Prefetcher.scala 65:17]
        queue_8_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_8_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h8 == tail) begin // @[Prefetcher.scala 65:17]
        queue_8_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_8_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h8 == tail) begin // @[Prefetcher.scala 65:17]
        queue_8_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_8_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h8 == tail) begin // @[Prefetcher.scala 65:17]
        queue_8_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_9_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h9 == tail) begin // @[Prefetcher.scala 65:17]
        queue_9_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_9_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h9 == tail) begin // @[Prefetcher.scala 65:17]
        queue_9_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_9_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h9 == tail) begin // @[Prefetcher.scala 65:17]
        queue_9_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_9_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'h9 == tail) begin // @[Prefetcher.scala 65:17]
        queue_9_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_10_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'ha == tail) begin // @[Prefetcher.scala 65:17]
        queue_10_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_10_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'ha == tail) begin // @[Prefetcher.scala 65:17]
        queue_10_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_10_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'ha == tail) begin // @[Prefetcher.scala 65:17]
        queue_10_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_10_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'ha == tail) begin // @[Prefetcher.scala 65:17]
        queue_10_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_11_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hb == tail) begin // @[Prefetcher.scala 65:17]
        queue_11_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_11_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hb == tail) begin // @[Prefetcher.scala 65:17]
        queue_11_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_11_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hb == tail) begin // @[Prefetcher.scala 65:17]
        queue_11_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_11_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hb == tail) begin // @[Prefetcher.scala 65:17]
        queue_11_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_12_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hc == tail) begin // @[Prefetcher.scala 65:17]
        queue_12_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_12_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hc == tail) begin // @[Prefetcher.scala 65:17]
        queue_12_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_12_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hc == tail) begin // @[Prefetcher.scala 65:17]
        queue_12_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_12_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hc == tail) begin // @[Prefetcher.scala 65:17]
        queue_12_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_13_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hd == tail) begin // @[Prefetcher.scala 65:17]
        queue_13_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_13_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hd == tail) begin // @[Prefetcher.scala 65:17]
        queue_13_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_13_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hd == tail) begin // @[Prefetcher.scala 65:17]
        queue_13_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_13_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hd == tail) begin // @[Prefetcher.scala 65:17]
        queue_13_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_14_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'he == tail) begin // @[Prefetcher.scala 65:17]
        queue_14_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_14_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'he == tail) begin // @[Prefetcher.scala 65:17]
        queue_14_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_14_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'he == tail) begin // @[Prefetcher.scala 65:17]
        queue_14_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_14_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'he == tail) begin // @[Prefetcher.scala 65:17]
        queue_14_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_15_tag <= 22'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hf == tail) begin // @[Prefetcher.scala 65:17]
        queue_15_tag <= io_enq_bits_tag; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_15_set <= 8'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hf == tail) begin // @[Prefetcher.scala 65:17]
        queue_15_set <= io_enq_bits_set; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_15_needT <= 1'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hf == tail) begin // @[Prefetcher.scala 65:17]
        queue_15_needT <= io_enq_bits_needT; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 51:22]
      queue_15_source <= 6'h0; // @[Prefetcher.scala 51:22]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hf == tail) begin // @[Prefetcher.scala 65:17]
        queue_15_source <= io_enq_bits_source; // @[Prefetcher.scala 65:17]
      end
    end
    if (reset) begin // @[Prefetcher.scala 52:23]
      valids_15 <= 1'h0; // @[Prefetcher.scala 52:23]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (4'hf == tail) begin // @[Prefetcher.scala 66:18]
        valids_15 <= _T | ~io_deq_ready; // @[Prefetcher.scala 66:18]
      end else begin
        valids_15 <= _GEN_31;
      end
    end else begin
      valids_15 <= _GEN_31;
    end
    if (reset) begin // @[Prefetcher.scala 54:21]
      head <= 4'h0; // @[Prefetcher.scala 54:21]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      if (full & _valids_T_1) begin // @[Prefetcher.scala 68:33]
        head <= _head_T_1; // @[Prefetcher.scala 69:12]
      end else begin
        head <= _GEN_32;
      end
    end else begin
      head <= _GEN_32;
    end
    if (reset) begin // @[Prefetcher.scala 55:21]
      tail <= 4'h0; // @[Prefetcher.scala 55:21]
    end else if (io_enq_valid) begin // @[Prefetcher.scala 64:22]
      tail <= _tail_T_4; // @[Prefetcher.scala 67:10]
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
  queue_0_tag = _RAND_0[21:0];
  _RAND_1 = {1{`RANDOM}};
  queue_0_set = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  queue_0_needT = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  queue_0_source = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  queue_1_tag = _RAND_4[21:0];
  _RAND_5 = {1{`RANDOM}};
  queue_1_set = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  queue_1_needT = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  queue_1_source = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  queue_2_tag = _RAND_8[21:0];
  _RAND_9 = {1{`RANDOM}};
  queue_2_set = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  queue_2_needT = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  queue_2_source = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  queue_3_tag = _RAND_12[21:0];
  _RAND_13 = {1{`RANDOM}};
  queue_3_set = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  queue_3_needT = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  queue_3_source = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  queue_4_tag = _RAND_16[21:0];
  _RAND_17 = {1{`RANDOM}};
  queue_4_set = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  queue_4_needT = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  queue_4_source = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  queue_5_tag = _RAND_20[21:0];
  _RAND_21 = {1{`RANDOM}};
  queue_5_set = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  queue_5_needT = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  queue_5_source = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  queue_6_tag = _RAND_24[21:0];
  _RAND_25 = {1{`RANDOM}};
  queue_6_set = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  queue_6_needT = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  queue_6_source = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  queue_7_tag = _RAND_28[21:0];
  _RAND_29 = {1{`RANDOM}};
  queue_7_set = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  queue_7_needT = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  queue_7_source = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  queue_8_tag = _RAND_32[21:0];
  _RAND_33 = {1{`RANDOM}};
  queue_8_set = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  queue_8_needT = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  queue_8_source = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  queue_9_tag = _RAND_36[21:0];
  _RAND_37 = {1{`RANDOM}};
  queue_9_set = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  queue_9_needT = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  queue_9_source = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  queue_10_tag = _RAND_40[21:0];
  _RAND_41 = {1{`RANDOM}};
  queue_10_set = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  queue_10_needT = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  queue_10_source = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  queue_11_tag = _RAND_44[21:0];
  _RAND_45 = {1{`RANDOM}};
  queue_11_set = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  queue_11_needT = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  queue_11_source = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  queue_12_tag = _RAND_48[21:0];
  _RAND_49 = {1{`RANDOM}};
  queue_12_set = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  queue_12_needT = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  queue_12_source = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  queue_13_tag = _RAND_52[21:0];
  _RAND_53 = {1{`RANDOM}};
  queue_13_set = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  queue_13_needT = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  queue_13_source = _RAND_55[5:0];
  _RAND_56 = {1{`RANDOM}};
  queue_14_tag = _RAND_56[21:0];
  _RAND_57 = {1{`RANDOM}};
  queue_14_set = _RAND_57[7:0];
  _RAND_58 = {1{`RANDOM}};
  queue_14_needT = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  queue_14_source = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  queue_15_tag = _RAND_60[21:0];
  _RAND_61 = {1{`RANDOM}};
  queue_15_set = _RAND_61[7:0];
  _RAND_62 = {1{`RANDOM}};
  queue_15_needT = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  queue_15_source = _RAND_63[5:0];
  _RAND_64 = {1{`RANDOM}};
  valids_15 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  head = _RAND_65[3:0];
  _RAND_66 = {1{`RANDOM}};
  tail = _RAND_66[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
