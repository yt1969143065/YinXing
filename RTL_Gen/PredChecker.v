module PredChecker(
  input         io_in_ftqOffset_valid,
  input  [2:0]  io_in_ftqOffset_bits,
  input  [63:0] io_in_jumpOffset_0,
  input  [63:0] io_in_jumpOffset_1,
  input  [63:0] io_in_jumpOffset_2,
  input  [63:0] io_in_jumpOffset_3,
  input  [63:0] io_in_jumpOffset_4,
  input  [63:0] io_in_jumpOffset_5,
  input  [63:0] io_in_jumpOffset_6,
  input  [63:0] io_in_jumpOffset_7,
  input  [38:0] io_in_target,
  input         io_in_instrRange_0,
  input         io_in_instrRange_1,
  input         io_in_instrRange_2,
  input         io_in_instrRange_3,
  input         io_in_instrRange_4,
  input         io_in_instrRange_5,
  input         io_in_instrRange_6,
  input         io_in_instrRange_7,
  input         io_in_instrValid_0,
  input         io_in_instrValid_1,
  input         io_in_instrValid_2,
  input         io_in_instrValid_3,
  input         io_in_instrValid_4,
  input         io_in_instrValid_5,
  input         io_in_instrValid_6,
  input         io_in_instrValid_7,
  input         io_in_pds_0_isRVC,
  input  [1:0]  io_in_pds_0_brType,
  input         io_in_pds_0_isRet,
  input         io_in_pds_1_isRVC,
  input  [1:0]  io_in_pds_1_brType,
  input         io_in_pds_1_isRet,
  input         io_in_pds_2_isRVC,
  input  [1:0]  io_in_pds_2_brType,
  input         io_in_pds_2_isRet,
  input         io_in_pds_3_isRVC,
  input  [1:0]  io_in_pds_3_brType,
  input         io_in_pds_3_isRet,
  input         io_in_pds_4_isRVC,
  input  [1:0]  io_in_pds_4_brType,
  input         io_in_pds_4_isRet,
  input         io_in_pds_5_isRVC,
  input  [1:0]  io_in_pds_5_brType,
  input         io_in_pds_5_isRet,
  input         io_in_pds_6_isRVC,
  input  [1:0]  io_in_pds_6_brType,
  input         io_in_pds_6_isRet,
  input         io_in_pds_7_isRVC,
  input  [1:0]  io_in_pds_7_brType,
  input         io_in_pds_7_isRet,
  input  [38:0] io_in_pc_0,
  input  [38:0] io_in_pc_1,
  input  [38:0] io_in_pc_2,
  input  [38:0] io_in_pc_3,
  input  [38:0] io_in_pc_4,
  input  [38:0] io_in_pc_5,
  input  [38:0] io_in_pc_6,
  input  [38:0] io_in_pc_7,
  output        io_out_fixedRange_0,
  output        io_out_fixedRange_1,
  output        io_out_fixedRange_2,
  output        io_out_fixedRange_3,
  output        io_out_fixedRange_4,
  output        io_out_fixedRange_5,
  output        io_out_fixedRange_6,
  output        io_out_fixedRange_7,
  output        io_out_fixedTaken_0,
  output        io_out_fixedTaken_1,
  output        io_out_fixedTaken_2,
  output        io_out_fixedTaken_3,
  output        io_out_fixedTaken_4,
  output        io_out_fixedTaken_5,
  output        io_out_fixedTaken_6,
  output        io_out_fixedTaken_7,
  output [38:0] io_out_fixedTarget_0,
  output [38:0] io_out_fixedTarget_1,
  output [38:0] io_out_fixedTarget_2,
  output [38:0] io_out_fixedTarget_3,
  output [38:0] io_out_fixedTarget_4,
  output [38:0] io_out_fixedTarget_5,
  output [38:0] io_out_fixedTarget_6,
  output [38:0] io_out_fixedTarget_7,
  output        io_out_fixedMissPred_0,
  output        io_out_fixedMissPred_1,
  output        io_out_fixedMissPred_2,
  output        io_out_fixedMissPred_3,
  output        io_out_fixedMissPred_4,
  output        io_out_fixedMissPred_5,
  output        io_out_fixedMissPred_6,
  output        io_out_fixedMissPred_7
);
  wire  _T = io_in_pds_0_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_5 = ~io_in_ftqOffset_valid; // @[PreDecode.scala 225:148]
  wire  _T_6 = io_in_ftqOffset_bits > 3'h0 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 225:145]
  wire  jalFaultVec_0 = _T & io_in_instrRange_0 & io_in_instrValid_0 & (io_in_ftqOffset_bits > 3'h0 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 225:113]
  wire  _T_8 = io_in_pds_1_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_14 = io_in_ftqOffset_bits > 3'h1 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 225:145]
  wire  jalFaultVec_1 = _T_8 & io_in_instrRange_1 & io_in_instrValid_1 & (io_in_ftqOffset_bits > 3'h1 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 225:113]
  wire  _T_16 = io_in_pds_2_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_22 = io_in_ftqOffset_bits > 3'h2 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 225:145]
  wire  jalFaultVec_2 = _T_16 & io_in_instrRange_2 & io_in_instrValid_2 & (io_in_ftqOffset_bits > 3'h2 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 225:113]
  wire  _T_24 = io_in_pds_3_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_30 = io_in_ftqOffset_bits > 3'h3 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 225:145]
  wire  jalFaultVec_3 = _T_24 & io_in_instrRange_3 & io_in_instrValid_3 & (io_in_ftqOffset_bits > 3'h3 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 225:113]
  wire  _T_32 = io_in_pds_4_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_38 = io_in_ftqOffset_bits > 3'h4 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 225:145]
  wire  jalFaultVec_4 = _T_32 & io_in_instrRange_4 & io_in_instrValid_4 & (io_in_ftqOffset_bits > 3'h4 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 225:113]
  wire  _T_40 = io_in_pds_5_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_46 = io_in_ftqOffset_bits > 3'h5 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 225:145]
  wire  jalFaultVec_5 = _T_40 & io_in_instrRange_5 & io_in_instrValid_5 & (io_in_ftqOffset_bits > 3'h5 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 225:113]
  wire  _T_48 = io_in_pds_6_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_54 = io_in_ftqOffset_bits > 3'h6 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 225:145]
  wire  jalFaultVec_6 = _T_48 & io_in_instrRange_6 & io_in_instrValid_6 & (io_in_ftqOffset_bits > 3'h6 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 225:113]
  wire  _T_56 = io_in_pds_7_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  jalFaultVec_7 = _T_56 & io_in_instrRange_7 & io_in_instrValid_7 & ~io_in_ftqOffset_valid; // @[PreDecode.scala 225:113]
  wire  retFaultVec_0 = io_in_pds_0_isRet & io_in_instrRange_0 & io_in_instrValid_0 & _T_6; // @[PreDecode.scala 226:113]
  wire  retFaultVec_1 = io_in_pds_1_isRet & io_in_instrRange_1 & io_in_instrValid_1 & _T_14; // @[PreDecode.scala 226:113]
  wire  retFaultVec_2 = io_in_pds_2_isRet & io_in_instrRange_2 & io_in_instrValid_2 & _T_22; // @[PreDecode.scala 226:113]
  wire  retFaultVec_3 = io_in_pds_3_isRet & io_in_instrRange_3 & io_in_instrValid_3 & _T_30; // @[PreDecode.scala 226:113]
  wire  retFaultVec_4 = io_in_pds_4_isRet & io_in_instrRange_4 & io_in_instrValid_4 & _T_38; // @[PreDecode.scala 226:113]
  wire  retFaultVec_5 = io_in_pds_5_isRet & io_in_instrRange_5 & io_in_instrValid_5 & _T_46; // @[PreDecode.scala 226:113]
  wire  retFaultVec_6 = io_in_pds_6_isRet & io_in_instrRange_6 & io_in_instrValid_6 & _T_54; // @[PreDecode.scala 226:113]
  wire  retFaultVec_7 = io_in_pds_7_isRet & io_in_instrRange_7 & io_in_instrValid_7 & _T_5; // @[PreDecode.scala 226:113]
  wire  remaskFault_0 = jalFaultVec_0 | retFaultVec_0; // @[PreDecode.scala 227:81]
  wire  remaskFault_1 = jalFaultVec_1 | retFaultVec_1; // @[PreDecode.scala 227:81]
  wire  remaskFault_2 = jalFaultVec_2 | retFaultVec_2; // @[PreDecode.scala 227:81]
  wire  remaskFault_3 = jalFaultVec_3 | retFaultVec_3; // @[PreDecode.scala 227:81]
  wire  remaskFault_4 = jalFaultVec_4 | retFaultVec_4; // @[PreDecode.scala 227:81]
  wire  remaskFault_5 = jalFaultVec_5 | retFaultVec_5; // @[PreDecode.scala 227:81]
  wire  remaskFault_6 = jalFaultVec_6 | retFaultVec_6; // @[PreDecode.scala 227:81]
  wire  remaskFault_7 = jalFaultVec_7 | retFaultVec_7; // @[PreDecode.scala 227:81]
  wire [7:0] _remaskIdx_T = {remaskFault_7,remaskFault_6,remaskFault_5,remaskFault_4,remaskFault_3,remaskFault_2,
    remaskFault_1,remaskFault_0}; // @[PreDecode.scala 228:62]
  wire  _remaskIdx_T_10 = _remaskIdx_T[0] ? 1'h0 : 1'h1; // @[ParallelMux.scala 90:77]
  wire [1:0] _remaskIdx_T_12 = _remaskIdx_T[2] ? 2'h2 : 2'h3; // @[ParallelMux.scala 90:77]
  wire [1:0] _remaskIdx_T_14 = _remaskIdx_T[0] | _remaskIdx_T[1] ? {{1'd0}, _remaskIdx_T_10} : _remaskIdx_T_12; // @[ParallelMux.scala 90:77]
  wire [2:0] _remaskIdx_T_16 = _remaskIdx_T[4] ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _remaskIdx_T_18 = _remaskIdx_T[6] ? 3'h6 : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _remaskIdx_T_20 = _remaskIdx_T[4] | _remaskIdx_T[5] ? _remaskIdx_T_16 : _remaskIdx_T_18; // @[ParallelMux.scala 90:77]
  wire [2:0] remaskIdx = _remaskIdx_T[0] | _remaskIdx_T[1] | (_remaskIdx_T[2] | _remaskIdx_T[3]) ? {{1'd0},
    _remaskIdx_T_14} : _remaskIdx_T_20; // @[ParallelMux.scala 90:77]
  wire  needRemask = remaskFault_0 | remaskFault_1 | (remaskFault_2 | remaskFault_3) | (remaskFault_4 | remaskFault_5 |
    (remaskFault_6 | remaskFault_7)); // @[ParallelMux.scala 37:55]
  wire [7:0] _fixedRange_T = {io_in_instrRange_7,io_in_instrRange_6,io_in_instrRange_5,io_in_instrRange_4,
    io_in_instrRange_3,io_in_instrRange_2,io_in_instrRange_1,io_in_instrRange_0}; // @[PreDecode.scala 230:37]
  wire  _fixedRange_T_1 = ~needRemask; // @[PreDecode.scala 230:66]
  wire [7:0] _fixedRange_T_3 = _fixedRange_T_1 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [2:0] _fixedRange_T_5 = ~remaskIdx; // @[PreDecode.scala 230:113]
  wire [7:0] _fixedRange_T_6 = 8'hff >> _fixedRange_T_5; // @[PreDecode.scala 230:110]
  wire [7:0] _fixedRange_T_7 = _fixedRange_T_3 | _fixedRange_T_6; // @[PreDecode.scala 230:79]
  wire [7:0] fixedRange = _fixedRange_T & _fixedRange_T_7; // @[PreDecode.scala 230:44]
  wire  _T_132 = io_in_ftqOffset_bits == 3'h0; // @[PreDecode.scala 234:137]
  wire  _T_134 = io_in_pds_0_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_143 = io_in_ftqOffset_bits == 3'h1; // @[PreDecode.scala 234:137]
  wire  _T_145 = io_in_pds_1_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_154 = io_in_ftqOffset_bits == 3'h2; // @[PreDecode.scala 234:137]
  wire  _T_156 = io_in_pds_2_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_165 = io_in_ftqOffset_bits == 3'h3; // @[PreDecode.scala 234:137]
  wire  _T_167 = io_in_pds_3_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_176 = io_in_ftqOffset_bits == 3'h4; // @[PreDecode.scala 234:137]
  wire  _T_178 = io_in_pds_4_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_187 = io_in_ftqOffset_bits == 3'h5; // @[PreDecode.scala 234:137]
  wire  _T_189 = io_in_pds_5_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_198 = io_in_ftqOffset_bits == 3'h6; // @[PreDecode.scala 234:137]
  wire  _T_200 = io_in_pds_6_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_209 = io_in_ftqOffset_bits == 3'h7; // @[PreDecode.scala 234:137]
  wire  _T_211 = io_in_pds_7_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_217 = fixedRange[0] & io_in_instrValid_0; // @[PreDecode.scala 237:77]
  wire  _T_218 = 3'h0 == io_in_ftqOffset_bits; // @[PreDecode.scala 237:101]
  wire  notCFITaken_0 = fixedRange[0] & io_in_instrValid_0 & 3'h0 == io_in_ftqOffset_bits & _T_134 &
    io_in_ftqOffset_valid; // @[PreDecode.scala 237:127]
  wire  _T_224 = fixedRange[1] & io_in_instrValid_1; // @[PreDecode.scala 237:77]
  wire  _T_225 = 3'h1 == io_in_ftqOffset_bits; // @[PreDecode.scala 237:101]
  wire  notCFITaken_1 = fixedRange[1] & io_in_instrValid_1 & 3'h1 == io_in_ftqOffset_bits & _T_145 &
    io_in_ftqOffset_valid; // @[PreDecode.scala 237:127]
  wire  _T_231 = fixedRange[2] & io_in_instrValid_2; // @[PreDecode.scala 237:77]
  wire  _T_232 = 3'h2 == io_in_ftqOffset_bits; // @[PreDecode.scala 237:101]
  wire  notCFITaken_2 = fixedRange[2] & io_in_instrValid_2 & 3'h2 == io_in_ftqOffset_bits & _T_156 &
    io_in_ftqOffset_valid; // @[PreDecode.scala 237:127]
  wire  _T_238 = fixedRange[3] & io_in_instrValid_3; // @[PreDecode.scala 237:77]
  wire  _T_239 = 3'h3 == io_in_ftqOffset_bits; // @[PreDecode.scala 237:101]
  wire  notCFITaken_3 = fixedRange[3] & io_in_instrValid_3 & 3'h3 == io_in_ftqOffset_bits & _T_167 &
    io_in_ftqOffset_valid; // @[PreDecode.scala 237:127]
  wire  _T_245 = fixedRange[4] & io_in_instrValid_4; // @[PreDecode.scala 237:77]
  wire  _T_246 = 3'h4 == io_in_ftqOffset_bits; // @[PreDecode.scala 237:101]
  wire  notCFITaken_4 = fixedRange[4] & io_in_instrValid_4 & 3'h4 == io_in_ftqOffset_bits & _T_178 &
    io_in_ftqOffset_valid; // @[PreDecode.scala 237:127]
  wire  _T_252 = fixedRange[5] & io_in_instrValid_5; // @[PreDecode.scala 237:77]
  wire  _T_253 = 3'h5 == io_in_ftqOffset_bits; // @[PreDecode.scala 237:101]
  wire  notCFITaken_5 = fixedRange[5] & io_in_instrValid_5 & 3'h5 == io_in_ftqOffset_bits & _T_189 &
    io_in_ftqOffset_valid; // @[PreDecode.scala 237:127]
  wire  _T_259 = fixedRange[6] & io_in_instrValid_6; // @[PreDecode.scala 237:77]
  wire  _T_260 = 3'h6 == io_in_ftqOffset_bits; // @[PreDecode.scala 237:101]
  wire  notCFITaken_6 = fixedRange[6] & io_in_instrValid_6 & 3'h6 == io_in_ftqOffset_bits & _T_200 &
    io_in_ftqOffset_valid; // @[PreDecode.scala 237:127]
  wire  _T_266 = fixedRange[7] & io_in_instrValid_7; // @[PreDecode.scala 237:77]
  wire  _T_267 = 3'h7 == io_in_ftqOffset_bits; // @[PreDecode.scala 237:101]
  wire  notCFITaken_7 = fixedRange[7] & io_in_instrValid_7 & 3'h7 == io_in_ftqOffset_bits & _T_211 &
    io_in_ftqOffset_valid; // @[PreDecode.scala 237:127]
  wire  _T_273 = ~io_in_instrValid_0; // @[PreDecode.scala 238:80]
  wire  invalidTaken_0 = fixedRange[0] & ~io_in_instrValid_0 & _T_218 & io_in_ftqOffset_valid; // @[PreDecode.scala 238:117]
  wire  _T_279 = ~io_in_instrValid_1; // @[PreDecode.scala 238:80]
  wire  invalidTaken_1 = fixedRange[1] & ~io_in_instrValid_1 & _T_225 & io_in_ftqOffset_valid; // @[PreDecode.scala 238:117]
  wire  _T_285 = ~io_in_instrValid_2; // @[PreDecode.scala 238:80]
  wire  invalidTaken_2 = fixedRange[2] & ~io_in_instrValid_2 & _T_232 & io_in_ftqOffset_valid; // @[PreDecode.scala 238:117]
  wire  _T_291 = ~io_in_instrValid_3; // @[PreDecode.scala 238:80]
  wire  invalidTaken_3 = fixedRange[3] & ~io_in_instrValid_3 & _T_239 & io_in_ftqOffset_valid; // @[PreDecode.scala 238:117]
  wire  _T_297 = ~io_in_instrValid_4; // @[PreDecode.scala 238:80]
  wire  invalidTaken_4 = fixedRange[4] & ~io_in_instrValid_4 & _T_246 & io_in_ftqOffset_valid; // @[PreDecode.scala 238:117]
  wire  _T_303 = ~io_in_instrValid_5; // @[PreDecode.scala 238:80]
  wire  invalidTaken_5 = fixedRange[5] & ~io_in_instrValid_5 & _T_253 & io_in_ftqOffset_valid; // @[PreDecode.scala 238:117]
  wire  _T_309 = ~io_in_instrValid_6; // @[PreDecode.scala 238:80]
  wire  invalidTaken_6 = fixedRange[6] & ~io_in_instrValid_6 & _T_260 & io_in_ftqOffset_valid; // @[PreDecode.scala 238:117]
  wire  _T_315 = ~io_in_instrValid_7; // @[PreDecode.scala 238:80]
  wire  invalidTaken_7 = fixedRange[7] & ~io_in_instrValid_7 & _T_267 & io_in_ftqOffset_valid; // @[PreDecode.scala 238:117]
  wire [63:0] _GEN_0 = {{25'd0}, io_in_pc_0}; // @[PreDecode.scala 241:79]
  wire [63:0] jumpTargets_0 = _GEN_0 + io_in_jumpOffset_0; // @[PreDecode.scala 241:79]
  wire [63:0] _GEN_1 = {{25'd0}, io_in_pc_1}; // @[PreDecode.scala 241:79]
  wire [63:0] jumpTargets_1 = _GEN_1 + io_in_jumpOffset_1; // @[PreDecode.scala 241:79]
  wire [63:0] _GEN_2 = {{25'd0}, io_in_pc_2}; // @[PreDecode.scala 241:79]
  wire [63:0] jumpTargets_2 = _GEN_2 + io_in_jumpOffset_2; // @[PreDecode.scala 241:79]
  wire [63:0] _GEN_3 = {{25'd0}, io_in_pc_3}; // @[PreDecode.scala 241:79]
  wire [63:0] jumpTargets_3 = _GEN_3 + io_in_jumpOffset_3; // @[PreDecode.scala 241:79]
  wire [63:0] _GEN_4 = {{25'd0}, io_in_pc_4}; // @[PreDecode.scala 241:79]
  wire [63:0] jumpTargets_4 = _GEN_4 + io_in_jumpOffset_4; // @[PreDecode.scala 241:79]
  wire [63:0] _GEN_5 = {{25'd0}, io_in_pc_5}; // @[PreDecode.scala 241:79]
  wire [63:0] jumpTargets_5 = _GEN_5 + io_in_jumpOffset_5; // @[PreDecode.scala 241:79]
  wire [63:0] _GEN_6 = {{25'd0}, io_in_pc_6}; // @[PreDecode.scala 241:79]
  wire [63:0] jumpTargets_6 = _GEN_6 + io_in_jumpOffset_6; // @[PreDecode.scala 241:79]
  wire [63:0] _GEN_7 = {{25'd0}, io_in_pc_7}; // @[PreDecode.scala 241:79]
  wire [63:0] jumpTargets_7 = _GEN_7 + io_in_jumpOffset_7; // @[PreDecode.scala 241:79]
  wire  _T_323 = io_in_pds_0_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire [63:0] _GEN_8 = {{25'd0}, io_in_target}; // @[PreDecode.scala 242:171]
  wire  targetFault_0 = _T_217 & (_T | _T_323) & _T_132 & io_in_ftqOffset_valid & _GEN_8 != jumpTargets_0; // @[PreDecode.scala 242:156]
  wire  _T_334 = io_in_pds_1_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_1 = _T_224 & (_T_8 | _T_334) & _T_143 & io_in_ftqOffset_valid & _GEN_8 != jumpTargets_1; // @[PreDecode.scala 242:156]
  wire  _T_345 = io_in_pds_2_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_2 = _T_231 & (_T_16 | _T_345) & _T_154 & io_in_ftqOffset_valid & _GEN_8 != jumpTargets_2; // @[PreDecode.scala 242:156]
  wire  _T_356 = io_in_pds_3_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_3 = _T_238 & (_T_24 | _T_356) & _T_165 & io_in_ftqOffset_valid & _GEN_8 != jumpTargets_3; // @[PreDecode.scala 242:156]
  wire  _T_367 = io_in_pds_4_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_4 = _T_245 & (_T_32 | _T_367) & _T_176 & io_in_ftqOffset_valid & _GEN_8 != jumpTargets_4; // @[PreDecode.scala 242:156]
  wire  _T_378 = io_in_pds_5_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_5 = _T_252 & (_T_40 | _T_378) & _T_187 & io_in_ftqOffset_valid & _GEN_8 != jumpTargets_5; // @[PreDecode.scala 242:156]
  wire  _T_389 = io_in_pds_6_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_6 = _T_259 & (_T_48 | _T_389) & _T_198 & io_in_ftqOffset_valid & _GEN_8 != jumpTargets_6; // @[PreDecode.scala 242:156]
  wire  _T_400 = io_in_pds_7_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_7 = _T_266 & (_T_56 | _T_400) & _T_209 & io_in_ftqOffset_valid & _GEN_8 != jumpTargets_7; // @[PreDecode.scala 242:156]
  wire [2:0] _seqTargets_T_2 = io_in_pds_0_isRVC | _T_273 ? 3'h2 : 3'h4; // @[PreDecode.scala 244:71]
  wire [38:0] _GEN_16 = {{36'd0}, _seqTargets_T_2}; // @[PreDecode.scala 244:66]
  wire [38:0] seqTargets_0 = io_in_pc_0 + _GEN_16; // @[PreDecode.scala 244:66]
  wire [2:0] _seqTargets_T_7 = io_in_pds_1_isRVC | _T_279 ? 3'h2 : 3'h4; // @[PreDecode.scala 244:71]
  wire [38:0] _GEN_17 = {{36'd0}, _seqTargets_T_7}; // @[PreDecode.scala 244:66]
  wire [38:0] seqTargets_1 = io_in_pc_1 + _GEN_17; // @[PreDecode.scala 244:66]
  wire [2:0] _seqTargets_T_12 = io_in_pds_2_isRVC | _T_285 ? 3'h2 : 3'h4; // @[PreDecode.scala 244:71]
  wire [38:0] _GEN_18 = {{36'd0}, _seqTargets_T_12}; // @[PreDecode.scala 244:66]
  wire [38:0] seqTargets_2 = io_in_pc_2 + _GEN_18; // @[PreDecode.scala 244:66]
  wire [2:0] _seqTargets_T_17 = io_in_pds_3_isRVC | _T_291 ? 3'h2 : 3'h4; // @[PreDecode.scala 244:71]
  wire [38:0] _GEN_19 = {{36'd0}, _seqTargets_T_17}; // @[PreDecode.scala 244:66]
  wire [38:0] seqTargets_3 = io_in_pc_3 + _GEN_19; // @[PreDecode.scala 244:66]
  wire [2:0] _seqTargets_T_22 = io_in_pds_4_isRVC | _T_297 ? 3'h2 : 3'h4; // @[PreDecode.scala 244:71]
  wire [38:0] _GEN_20 = {{36'd0}, _seqTargets_T_22}; // @[PreDecode.scala 244:66]
  wire [38:0] seqTargets_4 = io_in_pc_4 + _GEN_20; // @[PreDecode.scala 244:66]
  wire [2:0] _seqTargets_T_27 = io_in_pds_5_isRVC | _T_303 ? 3'h2 : 3'h4; // @[PreDecode.scala 244:71]
  wire [38:0] _GEN_21 = {{36'd0}, _seqTargets_T_27}; // @[PreDecode.scala 244:66]
  wire [38:0] seqTargets_5 = io_in_pc_5 + _GEN_21; // @[PreDecode.scala 244:66]
  wire [2:0] _seqTargets_T_32 = io_in_pds_6_isRVC | _T_309 ? 3'h2 : 3'h4; // @[PreDecode.scala 244:71]
  wire [38:0] _GEN_22 = {{36'd0}, _seqTargets_T_32}; // @[PreDecode.scala 244:66]
  wire [38:0] seqTargets_6 = io_in_pc_6 + _GEN_22; // @[PreDecode.scala 244:66]
  wire [2:0] _seqTargets_T_37 = io_in_pds_7_isRVC | _T_315 ? 3'h2 : 3'h4; // @[PreDecode.scala 244:71]
  wire [38:0] _GEN_23 = {{36'd0}, _seqTargets_T_37}; // @[PreDecode.scala 244:66]
  wire [38:0] seqTargets_7 = io_in_pc_7 + _GEN_23; // @[PreDecode.scala 244:66]
  wire [63:0] _io_out_fixedTarget_0_T_1 = jalFaultVec_0 | targetFault_0 ? jumpTargets_0 : {{25'd0}, seqTargets_0}; // @[PreDecode.scala 253:71]
  wire [63:0] _io_out_fixedTarget_1_T_1 = jalFaultVec_1 | targetFault_1 ? jumpTargets_1 : {{25'd0}, seqTargets_1}; // @[PreDecode.scala 253:71]
  wire [63:0] _io_out_fixedTarget_2_T_1 = jalFaultVec_2 | targetFault_2 ? jumpTargets_2 : {{25'd0}, seqTargets_2}; // @[PreDecode.scala 253:71]
  wire [63:0] _io_out_fixedTarget_3_T_1 = jalFaultVec_3 | targetFault_3 ? jumpTargets_3 : {{25'd0}, seqTargets_3}; // @[PreDecode.scala 253:71]
  wire [63:0] _io_out_fixedTarget_4_T_1 = jalFaultVec_4 | targetFault_4 ? jumpTargets_4 : {{25'd0}, seqTargets_4}; // @[PreDecode.scala 253:71]
  wire [63:0] _io_out_fixedTarget_5_T_1 = jalFaultVec_5 | targetFault_5 ? jumpTargets_5 : {{25'd0}, seqTargets_5}; // @[PreDecode.scala 253:71]
  wire [63:0] _io_out_fixedTarget_6_T_1 = jalFaultVec_6 | targetFault_6 ? jumpTargets_6 : {{25'd0}, seqTargets_6}; // @[PreDecode.scala 253:71]
  wire [63:0] _io_out_fixedTarget_7_T_1 = jalFaultVec_7 | targetFault_7 ? jumpTargets_7 : {{25'd0}, seqTargets_7}; // @[PreDecode.scala 253:71]
  assign io_out_fixedRange_0 = fixedRange[0]; // @[PreDecode.scala 232:43]
  assign io_out_fixedRange_1 = fixedRange[1]; // @[PreDecode.scala 232:43]
  assign io_out_fixedRange_2 = fixedRange[2]; // @[PreDecode.scala 232:43]
  assign io_out_fixedRange_3 = fixedRange[3]; // @[PreDecode.scala 232:43]
  assign io_out_fixedRange_4 = fixedRange[4]; // @[PreDecode.scala 232:43]
  assign io_out_fixedRange_5 = fixedRange[5]; // @[PreDecode.scala 232:43]
  assign io_out_fixedRange_6 = fixedRange[6]; // @[PreDecode.scala 232:43]
  assign io_out_fixedRange_7 = fixedRange[7]; // @[PreDecode.scala 232:43]
  assign io_out_fixedTaken_0 = io_in_instrValid_0 & fixedRange[0] & (io_in_pds_0_isRet | _T | io_in_ftqOffset_bits == 3'h0
     & io_in_ftqOffset_valid & ~_T_134); // @[PreDecode.scala 234:100]
  assign io_out_fixedTaken_1 = io_in_instrValid_1 & fixedRange[1] & (io_in_pds_1_isRet | _T_8 | io_in_ftqOffset_bits == 3'h1
     & io_in_ftqOffset_valid & ~_T_145); // @[PreDecode.scala 234:100]
  assign io_out_fixedTaken_2 = io_in_instrValid_2 & fixedRange[2] & (io_in_pds_2_isRet | _T_16 | io_in_ftqOffset_bits
     == 3'h2 & io_in_ftqOffset_valid & ~_T_156); // @[PreDecode.scala 234:100]
  assign io_out_fixedTaken_3 = io_in_instrValid_3 & fixedRange[3] & (io_in_pds_3_isRet | _T_24 | io_in_ftqOffset_bits
     == 3'h3 & io_in_ftqOffset_valid & ~_T_167); // @[PreDecode.scala 234:100]
  assign io_out_fixedTaken_4 = io_in_instrValid_4 & fixedRange[4] & (io_in_pds_4_isRet | _T_32 | io_in_ftqOffset_bits
     == 3'h4 & io_in_ftqOffset_valid & ~_T_178); // @[PreDecode.scala 234:100]
  assign io_out_fixedTaken_5 = io_in_instrValid_5 & fixedRange[5] & (io_in_pds_5_isRet | _T_40 | io_in_ftqOffset_bits
     == 3'h5 & io_in_ftqOffset_valid & ~_T_189); // @[PreDecode.scala 234:100]
  assign io_out_fixedTaken_6 = io_in_instrValid_6 & fixedRange[6] & (io_in_pds_6_isRet | _T_48 | io_in_ftqOffset_bits
     == 3'h6 & io_in_ftqOffset_valid & ~_T_200); // @[PreDecode.scala 234:100]
  assign io_out_fixedTaken_7 = io_in_instrValid_7 & fixedRange[7] & (io_in_pds_7_isRet | _T_56 | io_in_ftqOffset_bits
     == 3'h7 & io_in_ftqOffset_valid & ~_T_211); // @[PreDecode.scala 234:100]
  assign io_out_fixedTarget_0 = _io_out_fixedTarget_0_T_1[38:0]; // @[PreDecode.scala 253:65]
  assign io_out_fixedTarget_1 = _io_out_fixedTarget_1_T_1[38:0]; // @[PreDecode.scala 253:65]
  assign io_out_fixedTarget_2 = _io_out_fixedTarget_2_T_1[38:0]; // @[PreDecode.scala 253:65]
  assign io_out_fixedTarget_3 = _io_out_fixedTarget_3_T_1[38:0]; // @[PreDecode.scala 253:65]
  assign io_out_fixedTarget_4 = _io_out_fixedTarget_4_T_1[38:0]; // @[PreDecode.scala 253:65]
  assign io_out_fixedTarget_5 = _io_out_fixedTarget_5_T_1[38:0]; // @[PreDecode.scala 253:65]
  assign io_out_fixedTarget_6 = _io_out_fixedTarget_6_T_1[38:0]; // @[PreDecode.scala 253:65]
  assign io_out_fixedTarget_7 = _io_out_fixedTarget_7_T_1[38:0]; // @[PreDecode.scala 253:65]
  assign io_out_fixedMissPred_0 = remaskFault_0 | notCFITaken_0 | invalidTaken_0 | targetFault_0; // @[PreDecode.scala 252:145]
  assign io_out_fixedMissPred_1 = remaskFault_1 | notCFITaken_1 | invalidTaken_1 | targetFault_1; // @[PreDecode.scala 252:145]
  assign io_out_fixedMissPred_2 = remaskFault_2 | notCFITaken_2 | invalidTaken_2 | targetFault_2; // @[PreDecode.scala 252:145]
  assign io_out_fixedMissPred_3 = remaskFault_3 | notCFITaken_3 | invalidTaken_3 | targetFault_3; // @[PreDecode.scala 252:145]
  assign io_out_fixedMissPred_4 = remaskFault_4 | notCFITaken_4 | invalidTaken_4 | targetFault_4; // @[PreDecode.scala 252:145]
  assign io_out_fixedMissPred_5 = remaskFault_5 | notCFITaken_5 | invalidTaken_5 | targetFault_5; // @[PreDecode.scala 252:145]
  assign io_out_fixedMissPred_6 = remaskFault_6 | notCFITaken_6 | invalidTaken_6 | targetFault_6; // @[PreDecode.scala 252:145]
  assign io_out_fixedMissPred_7 = remaskFault_7 | notCFITaken_7 | invalidTaken_7 | targetFault_7; // @[PreDecode.scala 252:145]
endmodule
