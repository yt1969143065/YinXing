module FCMA_ADD_s1(
  input  [55:0] io_a,
  input  [55:0] io_b,
  input         io_binter_valid,
  input         io_binter_flags_isNaN,
  input         io_binter_flags_isInf,
  input         io_binter_flags_isInv,
  input         io_binter_flags_overflow,
  input  [2:0]  io_rm,
  output [2:0]  io_out_rm,
  output        io_out_far_path_out_sign,
  output [7:0]  io_out_far_path_out_exp,
  output [26:0] io_out_far_path_out_sig,
  output        io_out_near_path_out_sign,
  output [7:0]  io_out_near_path_out_exp,
  output [26:0] io_out_near_path_out_sig,
  output        io_out_special_case_valid,
  output        io_out_special_case_bits_iv,
  output        io_out_special_case_bits_nan,
  output        io_out_special_case_bits_inf_sign,
  output        io_out_small_add,
  output        io_out_far_path_mul_of,
  output        io_out_near_path_sig_is_zero,
  output        io_out_sel_far_path
);
  wire  far_path_mods_0_io_in_a_sign; // @[FADD.scala 208:26]
  wire [7:0] far_path_mods_0_io_in_a_exp; // @[FADD.scala 208:26]
  wire [47:0] far_path_mods_0_io_in_a_sig; // @[FADD.scala 208:26]
  wire [47:0] far_path_mods_0_io_in_bsig; // @[FADD.scala 208:26]
  wire [7:0] far_path_mods_0_io_in_expDiff; // @[FADD.scala 208:26]
  wire  far_path_mods_0_io_in_effSub; // @[FADD.scala 208:26]
  wire  far_path_mods_0_io_in_smallAdd; // @[FADD.scala 208:26]
  wire  far_path_mods_0_io_out_result_sign; // @[FADD.scala 208:26]
  wire [7:0] far_path_mods_0_io_out_result_exp; // @[FADD.scala 208:26]
  wire [26:0] far_path_mods_0_io_out_result_sig; // @[FADD.scala 208:26]
  wire  near_path_mods_0_io_in_a_sign; // @[FADD.scala 232:27]
  wire [7:0] near_path_mods_0_io_in_a_exp; // @[FADD.scala 232:27]
  wire [47:0] near_path_mods_0_io_in_a_sig; // @[FADD.scala 232:27]
  wire  near_path_mods_0_io_in_bsign; // @[FADD.scala 232:27]
  wire [47:0] near_path_mods_0_io_in_bsig; // @[FADD.scala 232:27]
  wire  near_path_mods_0_io_in_need_shift_b; // @[FADD.scala 232:27]
  wire  near_path_mods_0_io_out_result_sign; // @[FADD.scala 232:27]
  wire [7:0] near_path_mods_0_io_out_result_exp; // @[FADD.scala 232:27]
  wire [26:0] near_path_mods_0_io_out_result_sig; // @[FADD.scala 232:27]
  wire  near_path_mods_0_io_out_sig_is_zero; // @[FADD.scala 232:27]
  wire  near_path_mods_0_io_out_a_lt_b; // @[FADD.scala 232:27]
  wire  near_path_mods_1_io_in_a_sign; // @[FADD.scala 232:27]
  wire [7:0] near_path_mods_1_io_in_a_exp; // @[FADD.scala 232:27]
  wire [47:0] near_path_mods_1_io_in_a_sig; // @[FADD.scala 232:27]
  wire  near_path_mods_1_io_in_bsign; // @[FADD.scala 232:27]
  wire [47:0] near_path_mods_1_io_in_bsig; // @[FADD.scala 232:27]
  wire  near_path_mods_1_io_in_need_shift_b; // @[FADD.scala 232:27]
  wire  near_path_mods_1_io_out_result_sign; // @[FADD.scala 232:27]
  wire [7:0] near_path_mods_1_io_out_result_exp; // @[FADD.scala 232:27]
  wire [26:0] near_path_mods_1_io_out_result_sig; // @[FADD.scala 232:27]
  wire  near_path_mods_1_io_out_sig_is_zero; // @[FADD.scala 232:27]
  wire  near_path_mods_1_io_out_a_lt_b; // @[FADD.scala 232:27]
  wire  fp_a_sign = io_a[55]; // @[package.scala 59:19]
  wire [7:0] fp_a_exp = io_a[54:47]; // @[package.scala 60:18]
  wire [46:0] fp_a_sig = io_a[46:0]; // @[package.scala 61:18]
  wire  fp_bsign = io_b[55]; // @[package.scala 59:19]
  wire [7:0] fp_bexp = io_b[54:47]; // @[package.scala 60:18]
  wire [46:0] fp_bsig = io_b[46:0]; // @[package.scala 61:18]
  wire  decode_a_expNotZero = |fp_a_exp; // @[package.scala 32:31]
  wire  decode_a_expIsOnes = &fp_a_exp; // @[package.scala 33:31]
  wire  decode_a_sigNotZero = |fp_a_sig; // @[package.scala 34:31]
  wire  decode_a__expIsZero = ~decode_a_expNotZero; // @[package.scala 37:27]
  wire  decode_a__sigIsZero = ~decode_a_sigNotZero; // @[package.scala 40:27]
  wire  decode_a__isInf = decode_a_expIsOnes & decode_a__sigIsZero; // @[package.scala 42:40]
  wire  decode_a__isNaN = decode_a_expIsOnes & decode_a_sigNotZero; // @[package.scala 44:40]
  wire  decode_a__isSNaN = decode_a__isNaN & ~fp_a_sig[46]; // @[package.scala 45:37]
  wire  decode_bexpNotZero = |fp_bexp; // @[package.scala 32:31]
  wire  decode_bexpIsOnes = &fp_bexp; // @[package.scala 33:31]
  wire  decode_bsigNotZero = |fp_bsig; // @[package.scala 34:31]
  wire  decode_b_expIsZero = ~decode_bexpNotZero; // @[package.scala 37:27]
  wire  decode_b_sigIsZero = ~decode_bsigNotZero; // @[package.scala 40:27]
  wire  decode_b_isInf = decode_bexpIsOnes & decode_b_sigIsZero; // @[package.scala 42:40]
  wire  decode_b_isNaN = decode_bexpIsOnes & decode_bsigNotZero; // @[package.scala 44:40]
  wire  decode_b_isSNaN = decode_b_isNaN & ~fp_bsig[46]; // @[package.scala 45:37]
  wire [7:0] _GEN_0 = {{7'd0}, decode_a__expIsZero}; // @[package.scala 83:27]
  wire [7:0] raw_a_exp = fp_a_exp | _GEN_0; // @[package.scala 83:27]
  wire [47:0] raw_a_sig = {decode_a_expNotZero,fp_a_sig}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_1 = {{7'd0}, decode_b_expIsZero}; // @[package.scala 83:27]
  wire [7:0] raw_bexp = fp_bexp | _GEN_1; // @[package.scala 83:27]
  wire [47:0] raw_bsig = {decode_bexpNotZero,fp_bsig}; // @[Cat.scala 31:58]
  wire  eff_sub = fp_a_sign ^ fp_bsign; // @[FADD.scala 168:28]
  wire  b_isNaN = io_binter_valid ? io_binter_flags_isNaN : decode_b_isNaN; // @[FADD.scala 175:20]
  wire  b_isSNaN = io_binter_valid ? io_binter_flags_isInv : decode_b_isSNaN; // @[FADD.scala 176:21]
  wire  b_isInf = io_binter_valid ? io_binter_flags_isInf : decode_b_isInf; // @[FADD.scala 177:20]
  wire  special_path_hasNaN = decode_a__isNaN | b_isNaN; // @[FADD.scala 179:44]
  wire  special_path_hasSNaN = decode_a__isSNaN | b_isSNaN; // @[FADD.scala 180:46]
  wire  special_path_hasInf = decode_a__isInf | b_isInf; // @[FADD.scala 181:44]
  wire  special_path_inf_iv = decode_a__isInf & b_isInf & eff_sub; // @[FADD.scala 182:55]
  wire [8:0] _exp_diff_a_bT = {1'h0,raw_a_exp}; // @[Cat.scala 31:58]
  wire [8:0] _exp_diff_a_bT_1 = {1'h0,raw_bexp}; // @[Cat.scala 31:58]
  wire [8:0] exp_diff_a_b = _exp_diff_a_bT - _exp_diff_a_bT_1; // @[FADD.scala 187:47]
  wire [8:0] exp_diff_ba = _exp_diff_a_bT_1 - _exp_diff_a_bT; // @[FADD.scala 188:47]
  wire  need_swap = exp_diff_a_b[8] | io_binter_flags_overflow; // @[FADD.scala 190:47]
  wire [7:0] ea_minus_eb = need_swap ? exp_diff_ba[7:0] : exp_diff_a_b[7:0]; // @[FADD.scala 192:24]
  wire  _sel_far_path_T = ~eff_sub; // @[FADD.scala 193:22]
  wire  _T = ~need_swap; // @[FADD.scala 201:11]
  wire [8:0] _T_5 = _T ? exp_diff_a_b : exp_diff_ba; // @[FADD.scala 203:10]
  wire  near_path_exp_neq = raw_a_exp[1:0] != raw_bexp[1:0]; // @[FADD.scala 225:43]
  wire  _near_path_out_T_2 = need_swap | ~near_path_exp_neq & near_path_mods_0_io_out_a_lt_b; // @[FADD.scala 242:15]
  FarPath far_path_mods_0 ( // @[FADD.scala 208:26]
    .io_in_a_sign(far_path_mods_0_io_in_a_sign),
    .io_in_a_exp(far_path_mods_0_io_in_a_exp),
    .io_in_a_sig(far_path_mods_0_io_in_a_sig),
    .io_in_bsig(far_path_mods_0_io_in_bsig),
    .io_in_expDiff(far_path_mods_0_io_in_expDiff),
    .io_in_effSub(far_path_mods_0_io_in_effSub),
    .io_in_smallAdd(far_path_mods_0_io_in_smallAdd),
    .io_out_result_sign(far_path_mods_0_io_out_result_sign),
    .io_out_result_exp(far_path_mods_0_io_out_result_exp),
    .io_out_result_sig(far_path_mods_0_io_out_result_sig)
  );
  NearPath near_path_mods_0 ( // @[FADD.scala 232:27]
    .io_in_a_sign(near_path_mods_0_io_in_a_sign),
    .io_in_a_exp(near_path_mods_0_io_in_a_exp),
    .io_in_a_sig(near_path_mods_0_io_in_a_sig),
    .io_in_bsign(near_path_mods_0_io_in_bsign),
    .io_in_bsig(near_path_mods_0_io_in_bsig),
    .io_in_need_shift_b(near_path_mods_0_io_in_need_shift_b),
    .io_out_result_sign(near_path_mods_0_io_out_result_sign),
    .io_out_result_exp(near_path_mods_0_io_out_result_exp),
    .io_out_result_sig(near_path_mods_0_io_out_result_sig),
    .io_out_sig_is_zero(near_path_mods_0_io_out_sig_is_zero),
    .io_out_a_lt_b(near_path_mods_0_io_out_a_lt_b)
  );
  NearPath near_path_mods_1 ( // @[FADD.scala 232:27]
    .io_in_a_sign(near_path_mods_1_io_in_a_sign),
    .io_in_a_exp(near_path_mods_1_io_in_a_exp),
    .io_in_a_sig(near_path_mods_1_io_in_a_sig),
    .io_in_bsign(near_path_mods_1_io_in_bsign),
    .io_in_bsig(near_path_mods_1_io_in_bsig),
    .io_in_need_shift_b(near_path_mods_1_io_in_need_shift_b),
    .io_out_result_sign(near_path_mods_1_io_out_result_sign),
    .io_out_result_exp(near_path_mods_1_io_out_result_exp),
    .io_out_result_sig(near_path_mods_1_io_out_result_sig),
    .io_out_sig_is_zero(near_path_mods_1_io_out_sig_is_zero),
    .io_out_a_lt_b(near_path_mods_1_io_out_a_lt_b)
  );
  assign io_out_rm = io_rm; // @[FADD.scala 247:13]
  assign io_out_far_path_out_sign = far_path_mods_0_io_out_result_sign; // @[FADD.scala 251:23]
  assign io_out_far_path_out_exp = far_path_mods_0_io_out_result_exp; // @[FADD.scala 251:23]
  assign io_out_far_path_out_sig = far_path_mods_0_io_out_result_sig; // @[FADD.scala 251:23]
  assign io_out_near_path_out_sign = _near_path_out_T_2 ? near_path_mods_1_io_out_result_sign :
    near_path_mods_0_io_out_result_sign; // @[FADD.scala 241:26]
  assign io_out_near_path_out_exp = _near_path_out_T_2 ? near_path_mods_1_io_out_result_exp :
    near_path_mods_0_io_out_result_exp; // @[FADD.scala 241:26]
  assign io_out_near_path_out_sig = _near_path_out_T_2 ? near_path_mods_1_io_out_result_sig :
    near_path_mods_0_io_out_result_sig; // @[FADD.scala 241:26]
  assign io_out_special_case_valid = special_path_hasNaN | special_path_hasInf; // @[FADD.scala 184:49]
  assign io_out_special_case_bits_iv = special_path_hasSNaN | special_path_inf_iv; // @[FADD.scala 185:46]
  assign io_out_special_case_bits_nan = special_path_hasNaN | special_path_inf_iv; // @[FADD.scala 259:55]
  assign io_out_special_case_bits_inf_sign = decode_a__isInf ? fp_a_sign : fp_bsign; // @[FADD.scala 260:43]
  assign io_out_small_add = decode_a__expIsZero & decode_b_expIsZero; // @[FADD.scala 170:38]
  assign io_out_far_path_mul_of = io_binter_flags_overflow | decode_bexpIsOnes & _sel_far_path_T; // @[FADD.scala 252:46]
  assign io_out_near_path_sig_is_zero = _near_path_out_T_2 ? near_path_mods_1_io_out_sig_is_zero :
    near_path_mods_0_io_out_sig_is_zero; // @[FADD.scala 241:26]
  assign io_out_sel_far_path = ~eff_sub | ea_minus_eb > 8'h1 | io_binter_flags_overflow; // @[FADD.scala 193:52]
  assign far_path_mods_0_io_in_a_sign = ~need_swap ? fp_a_sign : fp_bsign; // @[FADD.scala 201:10]
  assign far_path_mods_0_io_in_a_exp = ~need_swap ? raw_a_exp : raw_bexp; // @[FADD.scala 201:10]
  assign far_path_mods_0_io_in_a_sig = ~need_swap ? raw_a_sig : raw_bsig; // @[FADD.scala 201:10]
  assign far_path_mods_0_io_in_bsig = _T ? raw_bsig : raw_a_sig; // @[FADD.scala 202:10]
  assign far_path_mods_0_io_in_expDiff = _T_5[7:0]; // @[FADD.scala 211:28]
  assign far_path_mods_0_io_in_effSub = fp_a_sign ^ fp_bsign; // @[FADD.scala 168:28]
  assign far_path_mods_0_io_in_smallAdd = decode_a__expIsZero & decode_b_expIsZero; // @[FADD.scala 170:38]
  assign near_path_mods_0_io_in_a_sign = io_a[55]; // @[package.scala 59:19]
  assign near_path_mods_0_io_in_a_exp = fp_a_exp | _GEN_0; // @[package.scala 83:27]
  assign near_path_mods_0_io_in_a_sig = {decode_a_expNotZero,fp_a_sig}; // @[Cat.scala 31:58]
  assign near_path_mods_0_io_in_bsign = io_b[55]; // @[package.scala 59:19]
  assign near_path_mods_0_io_in_bsig = {decode_bexpNotZero,fp_bsig}; // @[Cat.scala 31:58]
  assign near_path_mods_0_io_in_need_shift_b = raw_a_exp[1:0] != raw_bexp[1:0]; // @[FADD.scala 225:43]
  assign near_path_mods_1_io_in_a_sign = io_b[55]; // @[package.scala 59:19]
  assign near_path_mods_1_io_in_a_exp = fp_bexp | _GEN_1; // @[package.scala 83:27]
  assign near_path_mods_1_io_in_a_sig = {decode_bexpNotZero,fp_bsig}; // @[Cat.scala 31:58]
  assign near_path_mods_1_io_in_bsign = io_a[55]; // @[package.scala 59:19]
  assign near_path_mods_1_io_in_bsig = {decode_a_expNotZero,fp_a_sig}; // @[Cat.scala 31:58]
  assign near_path_mods_1_io_in_need_shift_b = raw_a_exp[1:0] != raw_bexp[1:0]; // @[FADD.scala 225:43]
endmodule
