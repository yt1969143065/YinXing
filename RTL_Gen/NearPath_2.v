module NearPath_2(
  input          io_in_a_sign,
  input  [10:0]  io_in_a_exp,
  input  [105:0] io_in_a_sig,
  input          io_in_bsign,
  input  [105:0] io_in_bsig,
  input          io_in_need_shift_b,
  output         io_out_result_sign,
  output [10:0]  io_out_result_exp,
  output [55:0]  io_out_result_sig,
  output         io_out_sig_is_zero,
  output         io_out_a_lt_b
);
  wire [106:0] lza_ab_io_a; // @[FADD.scala 87:22]
  wire [106:0] lza_ab_io_b; // @[FADD.scala 87:22]
  wire [106:0] lza_ab_io_f; // @[FADD.scala 87:22]
  wire [106:0] lzc_clz_io_in; // @[CLZ.scala 22:21]
  wire [6:0] lzc_clz_io_out; // @[CLZ.scala 22:21]
  wire [106:0] _bsig_T = {io_in_bsig,1'h0}; // @[Cat.scala 31:58]
  wire [106:0] b_sig = _bsig_T >> io_in_need_shift_b; // @[FADD.scala 81:37]
  wire [106:0] b_neg = ~b_sig; // @[FADD.scala 82:16]
  wire [107:0] _a_minus_bT = {1'h0,io_in_a_sig,1'h0}; // @[Cat.scala 31:58]
  wire [107:0] _a_minus_bT_1 = {1'h1,b_neg}; // @[Cat.scala 31:58]
  wire [107:0] _a_minus_bT_3 = _a_minus_bT + _a_minus_bT_1; // @[FADD.scala 84:40]
  wire [107:0] a_minus_b = _a_minus_bT_3 + 108'h1; // @[FADD.scala 84:63]
  wire  a_lt_b = a_minus_b[107]; // @[FADD.scala 85:30]
  wire [106:0] sig_raw = a_minus_b[106:0]; // @[FADD.scala 86:31]
  wire  lza_str_zero = ~(|lza_ab_io_f); // @[FADD.scala 91:22]
  wire  need_shift_lim = io_in_a_exp < 11'h6b; // @[FADD.scala 94:30]
  wire [107:0] _shift_lim_mask_raw_T_2 = 108'h800000000000000000000000000 >> io_in_a_exp[6:0]; // @[FADD.scala 97:41]
  wire [106:0] shift_lim_mask_raw = _shift_lim_mask_raw_T_2[106:0]; // @[FADD.scala 98:16]
  wire [106:0] shift_lim_mask = need_shift_lim ? shift_lim_mask_raw : 107'h0; // @[FADD.scala 99:27]
  wire [106:0] _shift_lim_bit_T = shift_lim_mask_raw & sig_raw; // @[FADD.scala 100:43]
  wire  shift_lim_bit = |_shift_lim_bit_T; // @[FADD.scala 100:57]
  wire [106:0] lzc_str = shift_lim_mask | lza_ab_io_f; // @[FADD.scala 102:32]
  wire  _int_bit_mask_T_5 = lzc_str[105] & ~(|lzc_str[106]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_10 = lzc_str[104] & ~(|lzc_str[106:105]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_15 = lzc_str[103] & ~(|lzc_str[106:104]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_20 = lzc_str[102] & ~(|lzc_str[106:103]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_25 = lzc_str[101] & ~(|lzc_str[106:102]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_30 = lzc_str[100] & ~(|lzc_str[106:101]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_35 = lzc_str[99] & ~(|lzc_str[106:100]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_40 = lzc_str[98] & ~(|lzc_str[106:99]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_45 = lzc_str[97] & ~(|lzc_str[106:98]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_50 = lzc_str[96] & ~(|lzc_str[106:97]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_55 = lzc_str[95] & ~(|lzc_str[106:96]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_60 = lzc_str[94] & ~(|lzc_str[106:95]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_65 = lzc_str[93] & ~(|lzc_str[106:94]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_70 = lzc_str[92] & ~(|lzc_str[106:93]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_75 = lzc_str[91] & ~(|lzc_str[106:92]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_80 = lzc_str[90] & ~(|lzc_str[106:91]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_85 = lzc_str[89] & ~(|lzc_str[106:90]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_90 = lzc_str[88] & ~(|lzc_str[106:89]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_95 = lzc_str[87] & ~(|lzc_str[106:88]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_100 = lzc_str[86] & ~(|lzc_str[106:87]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_105 = lzc_str[85] & ~(|lzc_str[106:86]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_110 = lzc_str[84] & ~(|lzc_str[106:85]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_115 = lzc_str[83] & ~(|lzc_str[106:84]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_120 = lzc_str[82] & ~(|lzc_str[106:83]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_125 = lzc_str[81] & ~(|lzc_str[106:82]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_130 = lzc_str[80] & ~(|lzc_str[106:81]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_135 = lzc_str[79] & ~(|lzc_str[106:80]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_140 = lzc_str[78] & ~(|lzc_str[106:79]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_145 = lzc_str[77] & ~(|lzc_str[106:78]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_150 = lzc_str[76] & ~(|lzc_str[106:77]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_155 = lzc_str[75] & ~(|lzc_str[106:76]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_160 = lzc_str[74] & ~(|lzc_str[106:75]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_165 = lzc_str[73] & ~(|lzc_str[106:74]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_170 = lzc_str[72] & ~(|lzc_str[106:73]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_175 = lzc_str[71] & ~(|lzc_str[106:72]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_180 = lzc_str[70] & ~(|lzc_str[106:71]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_185 = lzc_str[69] & ~(|lzc_str[106:70]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_190 = lzc_str[68] & ~(|lzc_str[106:69]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_195 = lzc_str[67] & ~(|lzc_str[106:68]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_200 = lzc_str[66] & ~(|lzc_str[106:67]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_205 = lzc_str[65] & ~(|lzc_str[106:66]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_210 = lzc_str[64] & ~(|lzc_str[106:65]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_215 = lzc_str[63] & ~(|lzc_str[106:64]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_220 = lzc_str[62] & ~(|lzc_str[106:63]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_225 = lzc_str[61] & ~(|lzc_str[106:62]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_230 = lzc_str[60] & ~(|lzc_str[106:61]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_235 = lzc_str[59] & ~(|lzc_str[106:60]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_240 = lzc_str[58] & ~(|lzc_str[106:59]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_245 = lzc_str[57] & ~(|lzc_str[106:58]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_250 = lzc_str[56] & ~(|lzc_str[106:57]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_255 = lzc_str[55] & ~(|lzc_str[106:56]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_260 = lzc_str[54] & ~(|lzc_str[106:55]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_265 = lzc_str[53] & ~(|lzc_str[106:54]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_270 = lzc_str[52] & ~(|lzc_str[106:53]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_275 = lzc_str[51] & ~(|lzc_str[106:52]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_280 = lzc_str[50] & ~(|lzc_str[106:51]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_285 = lzc_str[49] & ~(|lzc_str[106:50]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_290 = lzc_str[48] & ~(|lzc_str[106:49]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_295 = lzc_str[47] & ~(|lzc_str[106:48]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_300 = lzc_str[46] & ~(|lzc_str[106:47]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_305 = lzc_str[45] & ~(|lzc_str[106:46]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_310 = lzc_str[44] & ~(|lzc_str[106:45]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_315 = lzc_str[43] & ~(|lzc_str[106:44]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_320 = lzc_str[42] & ~(|lzc_str[106:43]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_325 = lzc_str[41] & ~(|lzc_str[106:42]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_330 = lzc_str[40] & ~(|lzc_str[106:41]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_335 = lzc_str[39] & ~(|lzc_str[106:40]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_340 = lzc_str[38] & ~(|lzc_str[106:39]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_345 = lzc_str[37] & ~(|lzc_str[106:38]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_350 = lzc_str[36] & ~(|lzc_str[106:37]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_355 = lzc_str[35] & ~(|lzc_str[106:36]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_360 = lzc_str[34] & ~(|lzc_str[106:35]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_365 = lzc_str[33] & ~(|lzc_str[106:34]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_370 = lzc_str[32] & ~(|lzc_str[106:33]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_375 = lzc_str[31] & ~(|lzc_str[106:32]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_380 = lzc_str[30] & ~(|lzc_str[106:31]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_385 = lzc_str[29] & ~(|lzc_str[106:30]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_390 = lzc_str[28] & ~(|lzc_str[106:29]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_395 = lzc_str[27] & ~(|lzc_str[106:28]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_400 = lzc_str[26] & ~(|lzc_str[106:27]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_405 = lzc_str[25] & ~(|lzc_str[106:26]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_410 = lzc_str[24] & ~(|lzc_str[106:25]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_415 = lzc_str[23] & ~(|lzc_str[106:24]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_420 = lzc_str[22] & ~(|lzc_str[106:23]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_425 = lzc_str[21] & ~(|lzc_str[106:22]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_430 = lzc_str[20] & ~(|lzc_str[106:21]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_435 = lzc_str[19] & ~(|lzc_str[106:20]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_440 = lzc_str[18] & ~(|lzc_str[106:19]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_445 = lzc_str[17] & ~(|lzc_str[106:18]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_450 = lzc_str[16] & ~(|lzc_str[106:17]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_455 = lzc_str[15] & ~(|lzc_str[106:16]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_460 = lzc_str[14] & ~(|lzc_str[106:15]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_465 = lzc_str[13] & ~(|lzc_str[106:14]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_470 = lzc_str[12] & ~(|lzc_str[106:13]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_475 = lzc_str[11] & ~(|lzc_str[106:12]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_480 = lzc_str[10] & ~(|lzc_str[106:11]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_485 = lzc_str[9] & ~(|lzc_str[106:10]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_490 = lzc_str[8] & ~(|lzc_str[106:9]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_495 = lzc_str[7] & ~(|lzc_str[106:8]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_500 = lzc_str[6] & ~(|lzc_str[106:7]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_505 = lzc_str[5] & ~(|lzc_str[106:6]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_510 = lzc_str[4] & ~(|lzc_str[106:5]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_515 = lzc_str[3] & ~(|lzc_str[106:4]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_520 = lzc_str[2] & ~(|lzc_str[106:3]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_525 = lzc_str[1] & ~(|lzc_str[106:2]); // @[FADD.scala 107:40]
  wire  _int_bit_mask_T_530 = lzc_str[0] & ~(|lzc_str[106:1]); // @[FADD.scala 107:40]
  wire [5:0] int_bit_mask_lo_lo_lo_lo = {_int_bit_mask_T_505,_int_bit_mask_T_510,_int_bit_mask_T_515,_int_bit_mask_T_520
    ,_int_bit_mask_T_525,_int_bit_mask_T_530}; // @[Cat.scala 31:58]
  wire [12:0] int_bit_mask_lo_lo_lo = {_int_bit_mask_T_470,_int_bit_mask_T_475,_int_bit_mask_T_480,_int_bit_mask_T_485,
    _int_bit_mask_T_490,_int_bit_mask_T_495,_int_bit_mask_T_500,int_bit_mask_lo_lo_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] int_bit_mask_lo_lo_hi_lo = {_int_bit_mask_T_440,_int_bit_mask_T_445,_int_bit_mask_T_450,_int_bit_mask_T_455
    ,_int_bit_mask_T_460,_int_bit_mask_T_465}; // @[Cat.scala 31:58]
  wire [25:0] int_bit_mask_lo_lo = {_int_bit_mask_T_405,_int_bit_mask_T_410,_int_bit_mask_T_415,_int_bit_mask_T_420,
    _int_bit_mask_T_425,_int_bit_mask_T_430,_int_bit_mask_T_435,int_bit_mask_lo_lo_hi_lo,int_bit_mask_lo_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] int_bit_mask_lo_hi_lo_lo = {_int_bit_mask_T_375,_int_bit_mask_T_380,_int_bit_mask_T_385,_int_bit_mask_T_390
    ,_int_bit_mask_T_395,_int_bit_mask_T_400}; // @[Cat.scala 31:58]
  wire [12:0] int_bit_mask_lo_hi_lo = {_int_bit_mask_T_340,_int_bit_mask_T_345,_int_bit_mask_T_350,_int_bit_mask_T_355,
    _int_bit_mask_T_360,_int_bit_mask_T_365,_int_bit_mask_T_370,int_bit_mask_lo_hi_lo_lo}; // @[Cat.scala 31:58]
  wire [6:0] int_bit_mask_lo_hi_hi_lo = {_int_bit_mask_T_305,_int_bit_mask_T_310,_int_bit_mask_T_315,_int_bit_mask_T_320
    ,_int_bit_mask_T_325,_int_bit_mask_T_330,_int_bit_mask_T_335}; // @[Cat.scala 31:58]
  wire [52:0] int_bit_mask_lo = {_int_bit_mask_T_270,_int_bit_mask_T_275,_int_bit_mask_T_280,_int_bit_mask_T_285,
    _int_bit_mask_T_290,_int_bit_mask_T_295,_int_bit_mask_T_300,int_bit_mask_lo_hi_hi_lo,int_bit_mask_lo_hi_lo,
    int_bit_mask_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] int_bit_mask_hi_lo_lo_lo = {_int_bit_mask_T_240,_int_bit_mask_T_245,_int_bit_mask_T_250,_int_bit_mask_T_255
    ,_int_bit_mask_T_260,_int_bit_mask_T_265}; // @[Cat.scala 31:58]
  wire [12:0] int_bit_mask_hi_lo_lo = {_int_bit_mask_T_205,_int_bit_mask_T_210,_int_bit_mask_T_215,_int_bit_mask_T_220,
    _int_bit_mask_T_225,_int_bit_mask_T_230,_int_bit_mask_T_235,int_bit_mask_hi_lo_lo_lo}; // @[Cat.scala 31:58]
  wire [6:0] int_bit_mask_hi_lo_hi_lo = {_int_bit_mask_T_170,_int_bit_mask_T_175,_int_bit_mask_T_180,_int_bit_mask_T_185
    ,_int_bit_mask_T_190,_int_bit_mask_T_195,_int_bit_mask_T_200}; // @[Cat.scala 31:58]
  wire [26:0] int_bit_mask_hi_lo = {_int_bit_mask_T_135,_int_bit_mask_T_140,_int_bit_mask_T_145,_int_bit_mask_T_150,
    _int_bit_mask_T_155,_int_bit_mask_T_160,_int_bit_mask_T_165,int_bit_mask_hi_lo_hi_lo,int_bit_mask_hi_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] int_bit_mask_hi_hi_lo_lo = {_int_bit_mask_T_105,_int_bit_mask_T_110,_int_bit_mask_T_115,_int_bit_mask_T_120
    ,_int_bit_mask_T_125,_int_bit_mask_T_130}; // @[Cat.scala 31:58]
  wire [12:0] int_bit_mask_hi_hi_lo = {_int_bit_mask_T_70,_int_bit_mask_T_75,_int_bit_mask_T_80,_int_bit_mask_T_85,
    _int_bit_mask_T_90,_int_bit_mask_T_95,_int_bit_mask_T_100,int_bit_mask_hi_hi_lo_lo}; // @[Cat.scala 31:58]
  wire [6:0] int_bit_mask_hi_hi_hi_lo = {_int_bit_mask_T_35,_int_bit_mask_T_40,_int_bit_mask_T_45,_int_bit_mask_T_50,
    _int_bit_mask_T_55,_int_bit_mask_T_60,_int_bit_mask_T_65}; // @[Cat.scala 31:58]
  wire [53:0] int_bit_mask_hi = {lzc_str[106],_int_bit_mask_T_5,_int_bit_mask_T_10,_int_bit_mask_T_15,_int_bit_mask_T_20
    ,_int_bit_mask_T_25,_int_bit_mask_T_30,int_bit_mask_hi_hi_hi_lo,int_bit_mask_hi_hi_lo,int_bit_mask_hi_lo}; // @[Cat.scala 31:58]
  wire [106:0] int_bit_mask = {int_bit_mask_hi,int_bit_mask_lo}; // @[Cat.scala 31:58]
  wire [106:0] _GEN_0 = {{106'd0}, lza_str_zero}; // @[FADD.scala 111:20]
  wire [106:0] _int_bit_predicted_T = int_bit_mask | _GEN_0; // @[FADD.scala 111:20]
  wire [106:0] _int_bit_predicted_T_1 = _int_bit_predicted_T & sig_raw; // @[FADD.scala 111:36]
  wire  int_bit_predicted = |_int_bit_predicted_T_1; // @[FADD.scala 111:50]
  wire [106:0] _int_bit_rshift_1_T = {{1'd0}, int_bit_mask[106:1]}; // @[FADD.scala 113:20]
  wire [106:0] _int_bit_rshift_1_T_1 = _int_bit_rshift_1_T & sig_raw; // @[FADD.scala 113:37]
  wire  int_bit_rshift_1 = |_int_bit_rshift_1_T_1; // @[FADD.scala 113:51]
  wire  _exceed_lim_mask_T_1 = |lza_ab_io_f[106]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_3 = |lza_ab_io_f[106:105]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_5 = |lza_ab_io_f[106:104]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_7 = |lza_ab_io_f[106:103]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_9 = |lza_ab_io_f[106:102]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_11 = |lza_ab_io_f[106:101]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_13 = |lza_ab_io_f[106:100]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_15 = |lza_ab_io_f[106:99]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_17 = |lza_ab_io_f[106:98]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_19 = |lza_ab_io_f[106:97]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_21 = |lza_ab_io_f[106:96]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_23 = |lza_ab_io_f[106:95]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_25 = |lza_ab_io_f[106:94]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_27 = |lza_ab_io_f[106:93]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_29 = |lza_ab_io_f[106:92]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_31 = |lza_ab_io_f[106:91]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_33 = |lza_ab_io_f[106:90]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_35 = |lza_ab_io_f[106:89]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_37 = |lza_ab_io_f[106:88]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_39 = |lza_ab_io_f[106:87]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_41 = |lza_ab_io_f[106:86]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_43 = |lza_ab_io_f[106:85]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_45 = |lza_ab_io_f[106:84]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_47 = |lza_ab_io_f[106:83]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_49 = |lza_ab_io_f[106:82]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_51 = |lza_ab_io_f[106:81]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_53 = |lza_ab_io_f[106:80]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_55 = |lza_ab_io_f[106:79]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_57 = |lza_ab_io_f[106:78]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_59 = |lza_ab_io_f[106:77]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_61 = |lza_ab_io_f[106:76]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_63 = |lza_ab_io_f[106:75]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_65 = |lza_ab_io_f[106:74]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_67 = |lza_ab_io_f[106:73]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_69 = |lza_ab_io_f[106:72]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_71 = |lza_ab_io_f[106:71]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_73 = |lza_ab_io_f[106:70]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_75 = |lza_ab_io_f[106:69]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_77 = |lza_ab_io_f[106:68]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_79 = |lza_ab_io_f[106:67]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_81 = |lza_ab_io_f[106:66]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_83 = |lza_ab_io_f[106:65]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_85 = |lza_ab_io_f[106:64]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_87 = |lza_ab_io_f[106:63]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_89 = |lza_ab_io_f[106:62]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_91 = |lza_ab_io_f[106:61]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_93 = |lza_ab_io_f[106:60]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_95 = |lza_ab_io_f[106:59]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_97 = |lza_ab_io_f[106:58]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_99 = |lza_ab_io_f[106:57]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_101 = |lza_ab_io_f[106:56]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_103 = |lza_ab_io_f[106:55]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_105 = |lza_ab_io_f[106:54]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_107 = |lza_ab_io_f[106:53]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_109 = |lza_ab_io_f[106:52]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_111 = |lza_ab_io_f[106:51]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_113 = |lza_ab_io_f[106:50]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_115 = |lza_ab_io_f[106:49]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_117 = |lza_ab_io_f[106:48]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_119 = |lza_ab_io_f[106:47]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_121 = |lza_ab_io_f[106:46]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_123 = |lza_ab_io_f[106:45]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_125 = |lza_ab_io_f[106:44]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_127 = |lza_ab_io_f[106:43]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_129 = |lza_ab_io_f[106:42]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_131 = |lza_ab_io_f[106:41]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_133 = |lza_ab_io_f[106:40]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_135 = |lza_ab_io_f[106:39]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_137 = |lza_ab_io_f[106:38]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_139 = |lza_ab_io_f[106:37]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_141 = |lza_ab_io_f[106:36]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_143 = |lza_ab_io_f[106:35]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_145 = |lza_ab_io_f[106:34]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_147 = |lza_ab_io_f[106:33]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_149 = |lza_ab_io_f[106:32]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_151 = |lza_ab_io_f[106:31]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_153 = |lza_ab_io_f[106:30]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_155 = |lza_ab_io_f[106:29]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_157 = |lza_ab_io_f[106:28]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_159 = |lza_ab_io_f[106:27]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_161 = |lza_ab_io_f[106:26]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_163 = |lza_ab_io_f[106:25]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_165 = |lza_ab_io_f[106:24]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_167 = |lza_ab_io_f[106:23]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_169 = |lza_ab_io_f[106:22]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_171 = |lza_ab_io_f[106:21]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_173 = |lza_ab_io_f[106:20]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_175 = |lza_ab_io_f[106:19]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_177 = |lza_ab_io_f[106:18]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_179 = |lza_ab_io_f[106:17]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_181 = |lza_ab_io_f[106:16]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_183 = |lza_ab_io_f[106:15]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_185 = |lza_ab_io_f[106:14]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_187 = |lza_ab_io_f[106:13]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_189 = |lza_ab_io_f[106:12]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_191 = |lza_ab_io_f[106:11]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_193 = |lza_ab_io_f[106:10]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_195 = |lza_ab_io_f[106:9]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_197 = |lza_ab_io_f[106:8]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_199 = |lza_ab_io_f[106:7]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_201 = |lza_ab_io_f[106:6]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_203 = |lza_ab_io_f[106:5]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_205 = |lza_ab_io_f[106:4]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_207 = |lza_ab_io_f[106:3]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_209 = |lza_ab_io_f[106:2]; // @[FADD.scala 117:64]
  wire  _exceed_lim_mask_T_211 = |lza_ab_io_f[106:1]; // @[FADD.scala 117:64]
  wire [5:0] exceed_lim_mask_lo_lo_lo_lo = {_exceed_lim_mask_T_201,_exceed_lim_mask_T_203,_exceed_lim_mask_T_205,
    _exceed_lim_mask_T_207,_exceed_lim_mask_T_209,_exceed_lim_mask_T_211}; // @[Cat.scala 31:58]
  wire [12:0] exceed_lim_mask_lo_lo_lo = {_exceed_lim_mask_T_187,_exceed_lim_mask_T_189,_exceed_lim_mask_T_191,
    _exceed_lim_mask_T_193,_exceed_lim_mask_T_195,_exceed_lim_mask_T_197,_exceed_lim_mask_T_199,
    exceed_lim_mask_lo_lo_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] exceed_lim_mask_lo_lo_hi_lo = {_exceed_lim_mask_T_175,_exceed_lim_mask_T_177,_exceed_lim_mask_T_179,
    _exceed_lim_mask_T_181,_exceed_lim_mask_T_183,_exceed_lim_mask_T_185}; // @[Cat.scala 31:58]
  wire [25:0] exceed_lim_mask_lo_lo = {_exceed_lim_mask_T_161,_exceed_lim_mask_T_163,_exceed_lim_mask_T_165,
    _exceed_lim_mask_T_167,_exceed_lim_mask_T_169,_exceed_lim_mask_T_171,_exceed_lim_mask_T_173,
    exceed_lim_mask_lo_lo_hi_lo,exceed_lim_mask_lo_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] exceed_lim_mask_lo_hi_lo_lo = {_exceed_lim_mask_T_149,_exceed_lim_mask_T_151,_exceed_lim_mask_T_153,
    _exceed_lim_mask_T_155,_exceed_lim_mask_T_157,_exceed_lim_mask_T_159}; // @[Cat.scala 31:58]
  wire [12:0] exceed_lim_mask_lo_hi_lo = {_exceed_lim_mask_T_135,_exceed_lim_mask_T_137,_exceed_lim_mask_T_139,
    _exceed_lim_mask_T_141,_exceed_lim_mask_T_143,_exceed_lim_mask_T_145,_exceed_lim_mask_T_147,
    exceed_lim_mask_lo_hi_lo_lo}; // @[Cat.scala 31:58]
  wire [6:0] exceed_lim_mask_lo_hi_hi_lo = {_exceed_lim_mask_T_121,_exceed_lim_mask_T_123,_exceed_lim_mask_T_125,
    _exceed_lim_mask_T_127,_exceed_lim_mask_T_129,_exceed_lim_mask_T_131,_exceed_lim_mask_T_133}; // @[Cat.scala 31:58]
  wire [52:0] exceed_lim_mask_lo = {_exceed_lim_mask_T_107,_exceed_lim_mask_T_109,_exceed_lim_mask_T_111,
    _exceed_lim_mask_T_113,_exceed_lim_mask_T_115,_exceed_lim_mask_T_117,_exceed_lim_mask_T_119,
    exceed_lim_mask_lo_hi_hi_lo,exceed_lim_mask_lo_hi_lo,exceed_lim_mask_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] exceed_lim_mask_hi_lo_lo_lo = {_exceed_lim_mask_T_95,_exceed_lim_mask_T_97,_exceed_lim_mask_T_99,
    _exceed_lim_mask_T_101,_exceed_lim_mask_T_103,_exceed_lim_mask_T_105}; // @[Cat.scala 31:58]
  wire [12:0] exceed_lim_mask_hi_lo_lo = {_exceed_lim_mask_T_81,_exceed_lim_mask_T_83,_exceed_lim_mask_T_85,
    _exceed_lim_mask_T_87,_exceed_lim_mask_T_89,_exceed_lim_mask_T_91,_exceed_lim_mask_T_93,exceed_lim_mask_hi_lo_lo_lo}
    ; // @[Cat.scala 31:58]
  wire [6:0] exceed_lim_mask_hi_lo_hi_lo = {_exceed_lim_mask_T_67,_exceed_lim_mask_T_69,_exceed_lim_mask_T_71,
    _exceed_lim_mask_T_73,_exceed_lim_mask_T_75,_exceed_lim_mask_T_77,_exceed_lim_mask_T_79}; // @[Cat.scala 31:58]
  wire [26:0] exceed_lim_mask_hi_lo = {_exceed_lim_mask_T_53,_exceed_lim_mask_T_55,_exceed_lim_mask_T_57,
    _exceed_lim_mask_T_59,_exceed_lim_mask_T_61,_exceed_lim_mask_T_63,_exceed_lim_mask_T_65,exceed_lim_mask_hi_lo_hi_lo,
    exceed_lim_mask_hi_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] exceed_lim_mask_hi_hi_lo_lo = {_exceed_lim_mask_T_41,_exceed_lim_mask_T_43,_exceed_lim_mask_T_45,
    _exceed_lim_mask_T_47,_exceed_lim_mask_T_49,_exceed_lim_mask_T_51}; // @[Cat.scala 31:58]
  wire [12:0] exceed_lim_mask_hi_hi_lo = {_exceed_lim_mask_T_27,_exceed_lim_mask_T_29,_exceed_lim_mask_T_31,
    _exceed_lim_mask_T_33,_exceed_lim_mask_T_35,_exceed_lim_mask_T_37,_exceed_lim_mask_T_39,exceed_lim_mask_hi_hi_lo_lo}
    ; // @[Cat.scala 31:58]
  wire [6:0] exceed_lim_mask_hi_hi_hi_lo = {_exceed_lim_mask_T_13,_exceed_lim_mask_T_15,_exceed_lim_mask_T_17,
    _exceed_lim_mask_T_19,_exceed_lim_mask_T_21,_exceed_lim_mask_T_23,_exceed_lim_mask_T_25}; // @[Cat.scala 31:58]
  wire [53:0] exceed_lim_mask_hi = {1'h0,_exceed_lim_mask_T_1,_exceed_lim_mask_T_3,_exceed_lim_mask_T_5,
    _exceed_lim_mask_T_7,_exceed_lim_mask_T_9,_exceed_lim_mask_T_11,exceed_lim_mask_hi_hi_hi_lo,exceed_lim_mask_hi_hi_lo
    ,exceed_lim_mask_hi_lo}; // @[Cat.scala 31:58]
  wire [106:0] exceed_lim_mask = {exceed_lim_mask_hi,exceed_lim_mask_lo}; // @[Cat.scala 31:58]
  wire [106:0] _exceed_lim_T = exceed_lim_mask & shift_lim_mask_raw; // @[FADD.scala 120:41]
  wire  exceed_lim = need_shift_lim & ~(|_exceed_lim_T); // @[FADD.scala 120:20]
  wire  int_bit = exceed_lim ? shift_lim_bit : int_bit_rshift_1 | int_bit_predicted; // @[FADD.scala 123:8]
  wire  lza_error = ~int_bit_predicted & ~exceed_lim; // @[FADD.scala 125:38]
  wire [10:0] _GEN_2 = {{4'd0}, lzc_clz_io_out}; // @[FADD.scala 126:22]
  wire [10:0] exp_s1 = io_in_a_exp - _GEN_2; // @[FADD.scala 126:22]
  wire [10:0] _GEN_3 = {{10'd0}, lza_error}; // @[FADD.scala 127:23]
  wire [10:0] exp_s2 = exp_s1 - _GEN_3; // @[FADD.scala 127:23]
  wire [233:0] _GEN_4 = {{127'd0}, sig_raw}; // @[FADD.scala 128:25]
  wire [233:0] _sig_s1_T = _GEN_4 << lzc_clz_io_out; // @[FADD.scala 128:25]
  wire [106:0] sig_s1 = _sig_s1_T[106:0]; // @[FADD.scala 128:32]
  wire [106:0] _sig_s2_T_1 = {sig_s1[105:0],1'h0}; // @[Cat.scala 31:58]
  wire [106:0] near_path_sig = lza_error ? _sig_s2_T_1 : sig_s1; // @[FADD.scala 129:19]
  LZA_4 lza_ab ( // @[FADD.scala 87:22]
    .io_a(lza_ab_io_a),
    .io_b(lza_ab_io_b),
    .io_f(lza_ab_io_f)
  );
  CLZ_10 lzc_clz ( // @[CLZ.scala 22:21]
    .io_in(lzc_clz_io_in),
    .io_out(lzc_clz_io_out)
  );
  assign io_out_result_sign = a_lt_b ? io_in_bsign : io_in_a_sign; // @[FADD.scala 139:27]
  assign io_out_result_exp = int_bit ? exp_s2 : 11'h0; // @[FADD.scala 138:26]
  assign io_out_result_sig = {near_path_sig[106:52],|near_path_sig[51:0]}; // @[FADD.scala 144:47]
  assign io_out_sig_is_zero = lza_str_zero & ~sig_raw[0]; // @[FADD.scala 146:38]
  assign io_out_a_lt_b = a_minus_b[107]; // @[FADD.scala 85:30]
  assign lza_ab_io_a = {io_in_a_sig,1'h0}; // @[Cat.scala 31:58]
  assign lza_ab_io_b = ~b_sig; // @[FADD.scala 82:16]
  assign lzc_clz_io_in = shift_lim_mask | lza_ab_io_f; // @[FADD.scala 102:32]
endmodule