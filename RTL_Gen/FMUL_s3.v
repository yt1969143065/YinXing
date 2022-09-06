module FMUL_s3(
  input         io_in_special_case_valid,
  input         io_in_special_case_bits_nan,
  input         io_in_special_case_bits_inf,
  input         io_in_special_case_bits_inv,
  input         io_in_special_case_bits_hasZero,
  input         io_in_early_overflow,
  input  [47:0] io_in_prod,
  input         io_in_prod_sign,
  input  [8:0]  io_in_shift_amt,
  input  [8:0]  io_in_exp_shifted,
  input         io_in_may_be_subnormal,
  input  [2:0]  io_in_rm,
  output [31:0] io_result,
  output [4:0]  io_fflags,
  output        io_to_fadd_fp_prod_sign,
  output [7:0]  io_to_fadd_fp_prod_exp,
  output [46:0] io_to_fadd_fp_prod_sig,
  output        io_to_fadd_inter_flags_isNaN,
  output        io_to_fadd_inter_flags_isInf,
  output        io_to_fadd_inter_flags_isInv,
  output        io_to_fadd_inter_flags_overflow
);
  wire  tininess_rounder_io_in_sign; // @[FMUL.scala 181:32]
  wire [26:0] tininess_rounder_io_in_sig; // @[FMUL.scala 181:32]
  wire [2:0] tininess_rounder_io_rm; // @[FMUL.scala 181:32]
  wire  tininess_rounder_io_tininess; // @[FMUL.scala 181:32]
  wire [22:0] rounder_io_in; // @[RoundingUnit.scala 44:25]
  wire  rounder_io_roundIn; // @[RoundingUnit.scala 44:25]
  wire  rounder_io_stickyIn; // @[RoundingUnit.scala 44:25]
  wire  rounder_io_signIn; // @[RoundingUnit.scala 44:25]
  wire [2:0] rounder_io_rm; // @[RoundingUnit.scala 44:25]
  wire [22:0] rounder_io_out; // @[RoundingUnit.scala 44:25]
  wire  rounder_io_inexact; // @[RoundingUnit.scala 44:25]
  wire  rounder_io_cout; // @[RoundingUnit.scala 44:25]
  wire [73:0] sig_shifter_in = {26'h0,io_in_prod}; // @[Cat.scala 31:58]
  wire [584:0] _GEN_2 = {{511'd0}, sig_shifter_in}; // @[FMUL.scala 169:41]
  wire [584:0] _sig_shifted_raw_T = _GEN_2 << io_in_shift_amt; // @[FMUL.scala 169:41]
  wire [73:0] sig_shifted_raw = _sig_shifted_raw_T[73:0]; // @[FMUL.scala 169:54]
  wire  exp_is_subnormal = io_in_may_be_subnormal & ~sig_shifted_raw[73]; // @[FMUL.scala 170:49]
  wire  no_extra_shift = sig_shifted_raw[73] | exp_is_subnormal; // @[FMUL.scala 171:55]
  wire [8:0] _exp_pre_round_T_1 = io_in_exp_shifted - 9'h1; // @[FMUL.scala 173:95]
  wire [8:0] _exp_pre_round_T_2 = no_extra_shift ? io_in_exp_shifted : _exp_pre_round_T_1; // @[FMUL.scala 173:53]
  wire [8:0] exp_pre_round = exp_is_subnormal ? 9'h0 : _exp_pre_round_T_2; // @[FMUL.scala 173:26]
  wire [73:0] _sig_shifted_T_1 = {sig_shifted_raw[72:0],1'h0}; // @[Cat.scala 31:58]
  wire [73:0] sig_shifted = no_extra_shift ? sig_shifted_raw : _sig_shifted_T_1; // @[FMUL.scala 174:24]
  wire  _raw_in_sig_T_2 = |sig_shifted[47:0]; // @[FMUL.scala 179:86]
  wire [26:0] raw_in_sig = {sig_shifted[73:48],_raw_in_sig_T_2}; // @[Cat.scala 31:58]
  wire [7:0] raw_in_exp = exp_pre_round[7:0]; // @[FMUL.scala 176:20 178:14]
  wire [7:0] _GEN_0 = {{7'd0}, rounder_io_cout}; // @[FMUL.scala 193:37]
  wire [7:0] exp_rounded = _GEN_0 + raw_in_exp; // @[FMUL.scala 193:37]
  wire  _common_of_T = raw_in_exp == 8'hfe; // @[FMUL.scala 198:16]
  wire  _common_of_T_1 = raw_in_exp == 8'hff; // @[FMUL.scala 199:16]
  wire  _common_of_T_2 = rounder_io_cout ? _common_of_T : _common_of_T_1; // @[FMUL.scala 196:22]
  wire  common_of = _common_of_T_2 | io_in_early_overflow; // @[FMUL.scala 200:5]
  wire  common_ix = rounder_io_inexact | common_of; // @[FMUL.scala 201:38]
  wire  common_uf = tininess_rounder_io_tininess & common_ix; // @[FMUL.scala 202:28]
  wire  rmin = io_in_rm == 3'h1 | io_in_rm == 3'h2 & ~io_in_prod_sign | io_in_rm == 3'h3 & io_in_prod_sign; // @[RoundingUnit.scala 54:41]
  wire [7:0] of_exp = rmin ? 8'hfe : 8'hff; // @[FMUL.scala 206:19]
  wire [7:0] common_exp = common_of ? of_exp : exp_rounded; // @[FMUL.scala 210:23]
  wire [22:0] _common_sig_T_1 = rmin ? 23'h7fffff : 23'h0; // @[FMUL.scala 217:8]
  wire [22:0] common_sig = common_of ? _common_sig_T_1 : rounder_io_out; // @[FMUL.scala 215:23]
  wire [31:0] common_result = {io_in_prod_sign,common_exp,common_sig}; // @[Cat.scala 31:58]
  wire [4:0] common_fflags = {2'h0,common_of,common_uf,common_ix}; // @[Cat.scala 31:58]
  wire [31:0] _special_result_T_2 = {io_in_prod_sign,8'hff,23'h0}; // @[Cat.scala 31:58]
  wire [31:0] _special_result_T_3 = {io_in_prod_sign,31'h0}; // @[Cat.scala 31:58]
  wire [31:0] _special_result_T_4 = io_in_special_case_bits_inf ? _special_result_T_2 : _special_result_T_3; // @[FMUL.scala 228:8]
  wire [31:0] special_result = io_in_special_case_bits_nan ? 32'h7fc00000 : _special_result_T_4; // @[FMUL.scala 226:27]
  wire [4:0] special_fflags = {io_in_special_case_bits_inv,1'h0,1'h0,2'h0}; // @[Cat.scala 31:58]
  wire [8:0] _io_to_fadd_fp_prod_exp_T = io_in_special_case_bits_hasZero ? 9'h0 : exp_pre_round; // @[FMUL.scala 242:32]
  wire [46:0] _GEN_1 = {{46'd0}, |sig_shifted[25:0]}; // @[FMUL.scala 245:49]
  wire [46:0] _io_to_fadd_fp_prod_sig_T_4 = sig_shifted[72:26] | _GEN_1; // @[FMUL.scala 245:49]
  TininessRounder tininess_rounder ( // @[FMUL.scala 181:32]
    .io_in_sign(tininess_rounder_io_in_sign),
    .io_in_sig(tininess_rounder_io_in_sig),
    .io_rm(tininess_rounder_io_rm),
    .io_tininess(tininess_rounder_io_tininess)
  );
  RoundingUnit rounder ( // @[RoundingUnit.scala 44:25]
    .io_in(rounder_io_in),
    .io_roundIn(rounder_io_roundIn),
    .io_stickyIn(rounder_io_stickyIn),
    .io_signIn(rounder_io_signIn),
    .io_rm(rounder_io_rm),
    .io_out(rounder_io_out),
    .io_inexact(rounder_io_inexact),
    .io_cout(rounder_io_cout)
  );
  assign io_result = io_in_special_case_valid ? special_result : common_result; // @[FMUL.scala 238:19]
  assign io_fflags = io_in_special_case_valid ? special_fflags : common_fflags; // @[FMUL.scala 239:19]
  assign io_to_fadd_fp_prod_sign = io_in_prod_sign; // @[FMUL.scala 241:27]
  assign io_to_fadd_fp_prod_exp = _io_to_fadd_fp_prod_exp_T[7:0]; // @[FMUL.scala 242:26]
  assign io_to_fadd_fp_prod_sig = io_in_special_case_bits_hasZero ? 47'h0 : _io_to_fadd_fp_prod_sig_T_4; // @[FMUL.scala 243:32]
  assign io_to_fadd_inter_flags_isNaN = io_in_special_case_bits_nan; // @[FMUL.scala 249:32]
  assign io_to_fadd_inter_flags_isInf = io_in_special_case_bits_inf & ~io_in_special_case_bits_nan; // @[FMUL.scala 248:57]
  assign io_to_fadd_inter_flags_isInv = io_in_special_case_bits_inv; // @[FMUL.scala 247:32]
  assign io_to_fadd_inter_flags_overflow = exp_pre_round > 9'hff; // @[FMUL.scala 250:52]
  assign tininess_rounder_io_in_sign = io_in_prod_sign; // @[FMUL.scala 176:20 177:15]
  assign tininess_rounder_io_in_sig = {sig_shifted[73:48],_raw_in_sig_T_2}; // @[Cat.scala 31:58]
  assign tininess_rounder_io_rm = io_in_rm; // @[FMUL.scala 183:26]
  assign rounder_io_in = raw_in_sig[25:3]; // @[RoundingUnit.scala 45:33]
  assign rounder_io_roundIn = raw_in_sig[2]; // @[RoundingUnit.scala 46:50]
  assign rounder_io_stickyIn = |raw_in_sig[1:0]; // @[RoundingUnit.scala 47:54]
  assign rounder_io_signIn = io_in_prod_sign; // @[FMUL.scala 176:20 177:15]
  assign rounder_io_rm = io_in_rm; // @[RoundingUnit.scala 48:19]
endmodule
