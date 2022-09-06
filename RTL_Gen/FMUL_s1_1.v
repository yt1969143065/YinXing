module FMUL_s1_1(
  input  [63:0] io_a,
  input  [63:0] io_b,
  input  [2:0]  io_rm,
  output        io_out_special_case_valid,
  output        io_out_special_case_bits_nan,
  output        io_out_special_case_bits_inf,
  output        io_out_special_case_bits_inv,
  output        io_out_special_case_bits_hasZero,
  output        io_out_early_overflow,
  output        io_out_prod_sign,
  output [11:0] io_out_shift_amt,
  output [11:0] io_out_exp_shifted,
  output        io_out_may_be_subnormal,
  output [2:0]  io_out_rm
);
  wire [107:0] lzc_clz_io_in; // @[CLZ.scala 22:21]
  wire [6:0] lzc_clz_io_out; // @[CLZ.scala 22:21]
  wire  fp_a_sign = io_a[63]; // @[package.scala 59:19]
  wire [10:0] fp_a_exp = io_a[62:52]; // @[package.scala 60:18]
  wire [51:0] fp_a_sig = io_a[51:0]; // @[package.scala 61:18]
  wire  fp_bsign = io_b[63]; // @[package.scala 59:19]
  wire [10:0] fp_bexp = io_b[62:52]; // @[package.scala 60:18]
  wire [51:0] fp_bsig = io_b[51:0]; // @[package.scala 61:18]
  wire  expNotZero = |fp_a_exp; // @[package.scala 32:31]
  wire  expIsOnes = &fp_a_exp; // @[package.scala 33:31]
  wire  sigNotZero = |fp_a_sig; // @[package.scala 34:31]
  wire  decode_a_expIsZero = ~expNotZero; // @[package.scala 37:27]
  wire  decode_a_sigIsZero = ~sigNotZero; // @[package.scala 40:27]
  wire  decode_a_isInf = expIsOnes & decode_a_sigIsZero; // @[package.scala 42:40]
  wire  decode_a_isZero = decode_a_expIsZero & decode_a_sigIsZero; // @[package.scala 43:41]
  wire  decode_a_isNaN = expIsOnes & sigNotZero; // @[package.scala 44:40]
  wire  decode_a_isSNaN = decode_a_isNaN & ~fp_a_sig[51]; // @[package.scala 45:37]
  wire  expNotZero_1 = |fp_bexp; // @[package.scala 32:31]
  wire  expIsOnes_1 = &fp_bexp; // @[package.scala 33:31]
  wire  sigNotZero_1 = |fp_bsig; // @[package.scala 34:31]
  wire  decode_bexpIsZero = ~expNotZero_1; // @[package.scala 37:27]
  wire  decode_bsigIsZero = ~sigNotZero_1; // @[package.scala 40:27]
  wire  decode_bisInf = expIsOnes_1 & decode_bsigIsZero; // @[package.scala 42:40]
  wire  decode_bisZero = decode_bexpIsZero & decode_bsigIsZero; // @[package.scala 43:41]
  wire  decode_bisNaN = expIsOnes_1 & sigNotZero_1; // @[package.scala 44:40]
  wire  decode_bisSNaN = decode_bisNaN & ~fp_bsig[51]; // @[package.scala 45:37]
  wire [10:0] _GEN_0 = {{10'd0}, decode_a_expIsZero}; // @[package.scala 83:27]
  wire [10:0] raw_a_exp = fp_a_exp | _GEN_0; // @[package.scala 83:27]
  wire [52:0] raw_a_sig = {expNotZero,fp_a_sig}; // @[Cat.scala 31:58]
  wire [10:0] _GEN_1 = {{10'd0}, decode_bexpIsZero}; // @[package.scala 83:27]
  wire [10:0] raw_bexp = fp_bexp | _GEN_1; // @[package.scala 83:27]
  wire [52:0] raw_bsig = {expNotZero_1,fp_bsig}; // @[Cat.scala 31:58]
  wire [11:0] exp_sum = raw_a_exp + raw_bexp; // @[FMUL.scala 77:27]
  wire [11:0] prod_exp = exp_sum - 12'h3c7; // @[FMUL.scala 78:26]
  wire [12:0] _shift_lim_sub_T = {1'h0,exp_sum}; // @[Cat.scala 31:58]
  wire [12:0] shift_lim_sub = _shift_lim_sub_T - 13'h3c8; // @[FMUL.scala 80:46]
  wire  prod_exp_uf = shift_lim_sub[12]; // @[FMUL.scala 81:39]
  wire [11:0] shift_lim = shift_lim_sub[11:0]; // @[FMUL.scala 82:37]
  wire [52:0] subnormal_sig = decode_a_expIsZero ? raw_a_sig : raw_bsig; // @[FMUL.scala 87:26]
  wire [11:0] _GEN_2 = {{5'd0}, lzc_clz_io_out}; // @[FMUL.scala 89:30]
  wire  exceed_lim = shift_lim <= _GEN_2; // @[FMUL.scala 89:30]
  wire [11:0] _shift_amt_T = exceed_lim ? shift_lim : {{5'd0}, lzc_clz_io_out}; // @[FMUL.scala 90:44]
  wire [11:0] shift_amt = prod_exp_uf ? 12'h0 : _shift_amt_T; // @[FMUL.scala 90:22]
  wire  hasZero = decode_a_isZero | decode_bisZero; // @[FMUL.scala 104:33]
  wire  hasNaN = decode_a_isNaN | decode_bisNaN; // @[FMUL.scala 105:31]
  wire  hasSNaN = decode_a_isSNaN | decode_bisSNaN; // @[FMUL.scala 106:33]
  wire  hasInf = decode_a_isInf | decode_bisInf; // @[FMUL.scala 107:31]
  wire  zero_mul_inf = hasZero & hasInf; // @[FMUL.scala 110:30]
  CLZ_5 lzc_clz ( // @[CLZ.scala 22:21]
    .io_in(lzc_clz_io_in),
    .io_out(lzc_clz_io_out)
  );
  assign io_out_special_case_valid = hasZero | hasNaN | hasInf; // @[FMUL.scala 108:47]
  assign io_out_special_case_bits_nan = hasNaN | zero_mul_inf; // @[FMUL.scala 111:27]
  assign io_out_special_case_bits_inf = decode_a_isInf | decode_bisInf; // @[FMUL.scala 107:31]
  assign io_out_special_case_bits_inv = hasSNaN | zero_mul_inf; // @[FMUL.scala 112:28]
  assign io_out_special_case_bits_hasZero = decode_a_isZero | decode_bisZero; // @[FMUL.scala 104:33]
  assign io_out_early_overflow = exp_sum > 12'hbfd; // @[FMUL.scala 84:29]
  assign io_out_prod_sign = fp_a_sign ^ fp_bsign; // @[FMUL.scala 60:29]
  assign io_out_shift_amt = prod_exp_uf ? 12'h0 : _shift_amt_T; // @[FMUL.scala 90:22]
  assign io_out_exp_shifted = prod_exp - shift_amt; // @[FMUL.scala 92:30]
  assign io_out_may_be_subnormal = exceed_lim | prod_exp_uf; // @[FMUL.scala 98:41]
  assign io_out_rm = io_rm; // @[FMUL.scala 99:13]
  assign lzc_clz_io_in = {55'h0,subnormal_sig}; // @[Cat.scala 31:58]
endmodule
