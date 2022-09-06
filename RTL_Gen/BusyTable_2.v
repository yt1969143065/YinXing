module BusyTable_2(
  input        clock,
  input        reset,
  input        io_allocPregs_0_valid,
  input  [6:0] io_allocPregs_0_bits,
  input        io_allocPregs_1_valid,
  input  [6:0] io_allocPregs_1_bits,
  input        io_allocPregs_2_valid,
  input  [6:0] io_allocPregs_2_bits,
  input        io_allocPregs_3_valid,
  input  [6:0] io_allocPregs_3_bits,
  input        io_wbPregs_0_valid,
  input  [6:0] io_wbPregs_0_bits,
  input        io_wbPregs_1_valid,
  input  [6:0] io_wbPregs_1_bits,
  input        io_wbPregs_2_valid,
  input  [6:0] io_wbPregs_2_bits,
  input        io_wbPregs_3_valid,
  input  [6:0] io_wbPregs_3_bits,
  input        io_wbPregs_4_valid,
  input  [6:0] io_wbPregs_4_bits,
  input  [6:0] io_read_2_req,
  output       io_read_2_resp,
  input  [6:0] io_read_3_req,
  output       io_read_3_resp,
  input  [6:0] io_read_4_req,
  output       io_read_4_resp,
  input  [6:0] io_read_5_req,
  output       io_read_5_resp,
  input  [6:0] io_read_6_req,
  output       io_read_6_resp,
  input  [6:0] io_read_7_req,
  output       io_read_7_resp,
  output [5:0] io_perf_0_value,
  output [5:0] io_perf_1_value,
  output [5:0] io_perf_2_value,
  output [5:0] io_perf_3_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [95:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [95:0] table_; // @[BusyTable.scala 41:22]
  wire [127:0] _wbMask_T = 128'h1 << io_wbPregs_0_bits; // @[OneHot.scala 57:35]
  wire [127:0] _wbMask_T_1 = io_wbPregs_0_valid ? _wbMask_T : 128'h0; // @[BusyTable.scala 44:33]
  wire [127:0] _wbMask_T_2 = 128'h1 << io_wbPregs_1_bits; // @[OneHot.scala 57:35]
  wire [127:0] _wbMask_T_3 = io_wbPregs_1_valid ? _wbMask_T_2 : 128'h0; // @[BusyTable.scala 44:33]
  wire [127:0] _wbMask_T_4 = 128'h1 << io_wbPregs_2_bits; // @[OneHot.scala 57:35]
  wire [127:0] _wbMask_T_5 = io_wbPregs_2_valid ? _wbMask_T_4 : 128'h0; // @[BusyTable.scala 44:33]
  wire [127:0] _wbMask_T_6 = 128'h1 << io_wbPregs_3_bits; // @[OneHot.scala 57:35]
  wire [127:0] _wbMask_T_7 = io_wbPregs_3_valid ? _wbMask_T_6 : 128'h0; // @[BusyTable.scala 44:33]
  wire [127:0] _wbMask_T_8 = 128'h1 << io_wbPregs_4_bits; // @[OneHot.scala 57:35]
  wire [127:0] _wbMask_T_9 = io_wbPregs_4_valid ? _wbMask_T_8 : 128'h0; // @[BusyTable.scala 44:33]
  wire [127:0] _wbMask_T_10 = _wbMask_T_1 | _wbMask_T_3; // @[ParallelMux.scala 37:55]
  wire [127:0] _wbMask_T_11 = _wbMask_T_7 | _wbMask_T_9; // @[ParallelMux.scala 37:55]
  wire [127:0] _wbMask_T_12 = _wbMask_T_5 | _wbMask_T_11; // @[ParallelMux.scala 37:55]
  wire [127:0] wbMask = _wbMask_T_10 | _wbMask_T_12; // @[ParallelMux.scala 37:55]
  wire [127:0] _allocMask_T = 128'h1 << io_allocPregs_0_bits; // @[OneHot.scala 57:35]
  wire [127:0] _allocMask_T_1 = io_allocPregs_0_valid ? _allocMask_T : 128'h0; // @[BusyTable.scala 44:33]
  wire [127:0] _allocMask_T_2 = 128'h1 << io_allocPregs_1_bits; // @[OneHot.scala 57:35]
  wire [127:0] _allocMask_T_3 = io_allocPregs_1_valid ? _allocMask_T_2 : 128'h0; // @[BusyTable.scala 44:33]
  wire [127:0] _allocMask_T_4 = 128'h1 << io_allocPregs_2_bits; // @[OneHot.scala 57:35]
  wire [127:0] _allocMask_T_5 = io_allocPregs_2_valid ? _allocMask_T_4 : 128'h0; // @[BusyTable.scala 44:33]
  wire [127:0] _allocMask_T_6 = 128'h1 << io_allocPregs_3_bits; // @[OneHot.scala 57:35]
  wire [127:0] _allocMask_T_7 = io_allocPregs_3_valid ? _allocMask_T_6 : 128'h0; // @[BusyTable.scala 44:33]
  wire [127:0] _allocMask_T_8 = _allocMask_T_1 | _allocMask_T_3; // @[ParallelMux.scala 37:55]
  wire [127:0] _allocMask_T_9 = _allocMask_T_5 | _allocMask_T_7; // @[ParallelMux.scala 37:55]
  wire [127:0] allocMask = _allocMask_T_8 | _allocMask_T_9; // @[ParallelMux.scala 37:55]
  wire [127:0] _tableAfterWb_T = ~wbMask; // @[BusyTable.scala 50:31]
  wire [127:0] _GEN_0 = {{32'd0}, table_}; // @[BusyTable.scala 50:28]
  wire [127:0] tableAfterWb = _GEN_0 & _tableAfterWb_T; // @[BusyTable.scala 50:28]
  wire [127:0] tableAfterAlloc = tableAfterWb | allocMask; // @[BusyTable.scala 51:38]
  wire [95:0] _io_read_2_resp_T = table_ >> io_read_2_req; // @[BusyTable.scala 53:36]
  wire [95:0] _io_read_3_resp_T = table_ >> io_read_3_req; // @[BusyTable.scala 53:36]
  wire [95:0] _io_read_4_resp_T = table_ >> io_read_4_req; // @[BusyTable.scala 53:36]
  wire [95:0] _io_read_5_resp_T = table_ >> io_read_5_req; // @[BusyTable.scala 53:36]
  wire [95:0] _io_read_6_resp_T = table_ >> io_read_6_req; // @[BusyTable.scala 53:36]
  wire [95:0] _io_read_7_resp_T = table_ >> io_read_7_req; // @[BusyTable.scala 53:36]
  wire [1:0] _T_192 = table_[1] + table_[2]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_1 = {{1'd0}, table_[0]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_194 = _GEN_1 + _T_192; // @[Bitwise.scala 48:55]
  wire [1:0] _T_196 = table_[4] + table_[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_2 = {{1'd0}, table_[3]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_198 = _GEN_2 + _T_196; // @[Bitwise.scala 48:55]
  wire [2:0] _T_200 = _T_194[1:0] + _T_198[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_202 = table_[7] + table_[8]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_3 = {{1'd0}, table_[6]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_204 = _GEN_3 + _T_202; // @[Bitwise.scala 48:55]
  wire [1:0] _T_206 = table_[10] + table_[11]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_4 = {{1'd0}, table_[9]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_208 = _GEN_4 + _T_206; // @[Bitwise.scala 48:55]
  wire [2:0] _T_210 = _T_204[1:0] + _T_208[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _T_212 = _T_200 + _T_210; // @[Bitwise.scala 48:55]
  wire [1:0] _T_214 = table_[13] + table_[14]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_5 = {{1'd0}, table_[12]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_216 = _GEN_5 + _T_214; // @[Bitwise.scala 48:55]
  wire [1:0] _T_218 = table_[16] + table_[17]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_6 = {{1'd0}, table_[15]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_220 = _GEN_6 + _T_218; // @[Bitwise.scala 48:55]
  wire [2:0] _T_222 = _T_216[1:0] + _T_220[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_224 = table_[19] + table_[20]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_7 = {{1'd0}, table_[18]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_226 = _GEN_7 + _T_224; // @[Bitwise.scala 48:55]
  wire [1:0] _T_228 = table_[22] + table_[23]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_8 = {{1'd0}, table_[21]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_230 = _GEN_8 + _T_228; // @[Bitwise.scala 48:55]
  wire [2:0] _T_232 = _T_226[1:0] + _T_230[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _T_234 = _T_222 + _T_232; // @[Bitwise.scala 48:55]
  wire [4:0] _T_236 = _T_212 + _T_234; // @[Bitwise.scala 48:55]
  wire [1:0] _T_238 = table_[25] + table_[26]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_9 = {{1'd0}, table_[24]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_240 = _GEN_9 + _T_238; // @[Bitwise.scala 48:55]
  wire [1:0] _T_242 = table_[28] + table_[29]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_10 = {{1'd0}, table_[27]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_244 = _GEN_10 + _T_242; // @[Bitwise.scala 48:55]
  wire [2:0] _T_246 = _T_240[1:0] + _T_244[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_248 = table_[31] + table_[32]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_11 = {{1'd0}, table_[30]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_250 = _GEN_11 + _T_248; // @[Bitwise.scala 48:55]
  wire [1:0] _T_252 = table_[34] + table_[35]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_12 = {{1'd0}, table_[33]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_254 = _GEN_12 + _T_252; // @[Bitwise.scala 48:55]
  wire [2:0] _T_256 = _T_250[1:0] + _T_254[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _T_258 = _T_246 + _T_256; // @[Bitwise.scala 48:55]
  wire [1:0] _T_260 = table_[37] + table_[38]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_13 = {{1'd0}, table_[36]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_262 = _GEN_13 + _T_260; // @[Bitwise.scala 48:55]
  wire [1:0] _T_264 = table_[40] + table_[41]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_14 = {{1'd0}, table_[39]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_266 = _GEN_14 + _T_264; // @[Bitwise.scala 48:55]
  wire [2:0] _T_268 = _T_262[1:0] + _T_266[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_270 = table_[43] + table_[44]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_15 = {{1'd0}, table_[42]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_272 = _GEN_15 + _T_270; // @[Bitwise.scala 48:55]
  wire [1:0] _T_274 = table_[46] + table_[47]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_16 = {{1'd0}, table_[45]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_276 = _GEN_16 + _T_274; // @[Bitwise.scala 48:55]
  wire [2:0] _T_278 = _T_272[1:0] + _T_276[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _T_280 = _T_268 + _T_278; // @[Bitwise.scala 48:55]
  wire [4:0] _T_282 = _T_258 + _T_280; // @[Bitwise.scala 48:55]
  wire [5:0] _T_284 = _T_236 + _T_282; // @[Bitwise.scala 48:55]
  wire [1:0] _T_286 = table_[49] + table_[50]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_17 = {{1'd0}, table_[48]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_288 = _GEN_17 + _T_286; // @[Bitwise.scala 48:55]
  wire [1:0] _T_290 = table_[52] + table_[53]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_18 = {{1'd0}, table_[51]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_292 = _GEN_18 + _T_290; // @[Bitwise.scala 48:55]
  wire [2:0] _T_294 = _T_288[1:0] + _T_292[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_296 = table_[55] + table_[56]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_19 = {{1'd0}, table_[54]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_298 = _GEN_19 + _T_296; // @[Bitwise.scala 48:55]
  wire [1:0] _T_300 = table_[58] + table_[59]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_20 = {{1'd0}, table_[57]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_302 = _GEN_20 + _T_300; // @[Bitwise.scala 48:55]
  wire [2:0] _T_304 = _T_298[1:0] + _T_302[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _T_306 = _T_294 + _T_304; // @[Bitwise.scala 48:55]
  wire [1:0] _T_308 = table_[61] + table_[62]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_21 = {{1'd0}, table_[60]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_310 = _GEN_21 + _T_308; // @[Bitwise.scala 48:55]
  wire [1:0] _T_312 = table_[64] + table_[65]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_22 = {{1'd0}, table_[63]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_314 = _GEN_22 + _T_312; // @[Bitwise.scala 48:55]
  wire [2:0] _T_316 = _T_310[1:0] + _T_314[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_318 = table_[67] + table_[68]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_23 = {{1'd0}, table_[66]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_320 = _GEN_23 + _T_318; // @[Bitwise.scala 48:55]
  wire [1:0] _T_322 = table_[70] + table_[71]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_24 = {{1'd0}, table_[69]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_324 = _GEN_24 + _T_322; // @[Bitwise.scala 48:55]
  wire [2:0] _T_326 = _T_320[1:0] + _T_324[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _T_328 = _T_316 + _T_326; // @[Bitwise.scala 48:55]
  wire [4:0] _T_330 = _T_306 + _T_328; // @[Bitwise.scala 48:55]
  wire [1:0] _T_332 = table_[73] + table_[74]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_25 = {{1'd0}, table_[72]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_334 = _GEN_25 + _T_332; // @[Bitwise.scala 48:55]
  wire [1:0] _T_336 = table_[76] + table_[77]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_26 = {{1'd0}, table_[75]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_338 = _GEN_26 + _T_336; // @[Bitwise.scala 48:55]
  wire [2:0] _T_340 = _T_334[1:0] + _T_338[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_342 = table_[79] + table_[80]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_27 = {{1'd0}, table_[78]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_344 = _GEN_27 + _T_342; // @[Bitwise.scala 48:55]
  wire [1:0] _T_346 = table_[82] + table_[83]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_28 = {{1'd0}, table_[81]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_348 = _GEN_28 + _T_346; // @[Bitwise.scala 48:55]
  wire [2:0] _T_350 = _T_344[1:0] + _T_348[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _T_352 = _T_340 + _T_350; // @[Bitwise.scala 48:55]
  wire [1:0] _T_354 = table_[85] + table_[86]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_29 = {{1'd0}, table_[84]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_356 = _GEN_29 + _T_354; // @[Bitwise.scala 48:55]
  wire [1:0] _T_358 = table_[88] + table_[89]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_30 = {{1'd0}, table_[87]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_360 = _GEN_30 + _T_358; // @[Bitwise.scala 48:55]
  wire [2:0] _T_362 = _T_356[1:0] + _T_360[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_364 = table_[91] + table_[92]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_31 = {{1'd0}, table_[90]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_366 = _GEN_31 + _T_364; // @[Bitwise.scala 48:55]
  wire [1:0] _T_368 = table_[94] + table_[95]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_32 = {{1'd0}, table_[93]}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_370 = _GEN_32 + _T_368; // @[Bitwise.scala 48:55]
  wire [2:0] _T_372 = _T_366[1:0] + _T_370[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _T_374 = _T_362 + _T_372; // @[Bitwise.scala 48:55]
  wire [4:0] _T_376 = _T_352 + _T_374; // @[Bitwise.scala 48:55]
  wire [5:0] _T_378 = _T_330 + _T_376; // @[Bitwise.scala 48:55]
  wire [6:0] _T_380 = _T_284 + _T_378; // @[Bitwise.scala 48:55]
  wire [6:0] _T_668 = 7'h60 / 3'h4; // @[BusyTable.scala 68:63]
  wire [6:0] _T_1244 = 7'h60 / 2'h2; // @[BusyTable.scala 69:104]
  wire [8:0] _T_1821 = 7'h60 * 2'h3; // @[BusyTable.scala 70:104]
  wire [8:0] _T_1822 = _T_1821 / 3'h4; // @[BusyTable.scala 70:108]
  wire [8:0] _GEN_193 = {{2'd0}, _T_380}; // @[BusyTable.scala 70:89]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  assign io_read_2_resp = ~_io_read_2_resp_T[0]; // @[BusyTable.scala 53:30]
  assign io_read_3_resp = ~_io_read_3_resp_T[0]; // @[BusyTable.scala 53:30]
  assign io_read_4_resp = ~_io_read_4_resp_T[0]; // @[BusyTable.scala 53:30]
  assign io_read_5_resp = ~_io_read_5_resp_T[0]; // @[BusyTable.scala 53:30]
  assign io_read_6_resp = ~_io_read_6_resp_T[0]; // @[BusyTable.scala 53:30]
  assign io_read_7_resp = ~_io_read_7_resp_T[0]; // @[BusyTable.scala 53:30]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  always @(posedge clock) begin
    if (reset) begin // @[BusyTable.scala 41:22]
      table_ <= 96'h0; // @[BusyTable.scala 41:22]
    end else begin
      table_ <= tableAfterAlloc[95:0]; // @[BusyTable.scala 55:9]
    end
    io_perf_0_value_REG <= _T_380 < _T_668; // @[BusyTable.scala 68:49]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= _T_380 > _T_668 & _T_380 <= _T_1244; // @[BusyTable.scala 69:70]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= _T_380 > _T_1244 & _GEN_193 <= _T_1822; // @[BusyTable.scala 70:70]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= _GEN_193 > _T_1822; // @[BusyTable.scala 71:49]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  _RAND_0 = {3{`RANDOM}};
  table_ = _RAND_0[95:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
