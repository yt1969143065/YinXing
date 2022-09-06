module FMUL(
  input  [31:0] io_a,
  input  [31:0] io_b,
  input  [2:0]  io_rm
);
  wire [24:0] multiplier_io_a; // @[FMUL.scala 262:26]
  wire [24:0] multiplier_io_b; // @[FMUL.scala 262:26]
  wire [49:0] multiplier_io_result; // @[FMUL.scala 262:26]
  wire [31:0] fmul_s1_io_a; // @[FMUL.scala 263:23]
  wire [31:0] fmul_s1_io_b; // @[FMUL.scala 263:23]
  wire [2:0] fmul_s1_io_rm; // @[FMUL.scala 263:23]
  wire  fmul_s1_io_out_special_case_valid; // @[FMUL.scala 263:23]
  wire  fmul_s1_io_out_special_case_bits_nan; // @[FMUL.scala 263:23]
  wire  fmul_s1_io_out_special_case_bits_inf; // @[FMUL.scala 263:23]
  wire  fmul_s1_io_out_special_case_bits_inv; // @[FMUL.scala 263:23]
  wire  fmul_s1_io_out_special_case_bits_hasZero; // @[FMUL.scala 263:23]
  wire  fmul_s1_io_out_early_overflow; // @[FMUL.scala 263:23]
  wire  fmul_s1_io_out_prod_sign; // @[FMUL.scala 263:23]
  wire [8:0] fmul_s1_io_out_shift_amt; // @[FMUL.scala 263:23]
  wire [8:0] fmul_s1_io_out_exp_shifted; // @[FMUL.scala 263:23]
  wire  fmul_s1_io_out_may_be_subnormal; // @[FMUL.scala 263:23]
  wire [2:0] fmul_s1_io_out_rm; // @[FMUL.scala 263:23]
  wire  fmul_s2_io_in_special_case_valid; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_in_special_case_bits_nan; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_in_special_case_bits_inf; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_in_special_case_bits_inv; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_in_special_case_bits_hasZero; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_in_early_overflow; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_in_prod_sign; // @[FMUL.scala 264:23]
  wire [8:0] fmul_s2_io_in_shift_amt; // @[FMUL.scala 264:23]
  wire [8:0] fmul_s2_io_in_exp_shifted; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_in_may_be_subnormal; // @[FMUL.scala 264:23]
  wire [2:0] fmul_s2_io_in_rm; // @[FMUL.scala 264:23]
  wire [47:0] fmul_s2_io_prod; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_out_special_case_valid; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_out_special_case_bits_nan; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_out_special_case_bits_inf; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_out_special_case_bits_inv; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_out_special_case_bits_hasZero; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_out_early_overflow; // @[FMUL.scala 264:23]
  wire [47:0] fmul_s2_io_out_prod; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_out_prod_sign; // @[FMUL.scala 264:23]
  wire [8:0] fmul_s2_io_out_shift_amt; // @[FMUL.scala 264:23]
  wire [8:0] fmul_s2_io_out_exp_shifted; // @[FMUL.scala 264:23]
  wire  fmul_s2_io_out_may_be_subnormal; // @[FMUL.scala 264:23]
  wire [2:0] fmul_s2_io_out_rm; // @[FMUL.scala 264:23]
  wire  fmul_s3_io_in_special_case_valid; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_in_special_case_bits_nan; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_in_special_case_bits_inf; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_in_special_case_bits_inv; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_in_special_case_bits_hasZero; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_in_early_overflow; // @[FMUL.scala 265:23]
  wire [47:0] fmul_s3_io_in_prod; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_in_prod_sign; // @[FMUL.scala 265:23]
  wire [8:0] fmul_s3_io_in_shift_amt; // @[FMUL.scala 265:23]
  wire [8:0] fmul_s3_io_in_exp_shifted; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_in_may_be_subnormal; // @[FMUL.scala 265:23]
  wire [2:0] fmul_s3_io_in_rm; // @[FMUL.scala 265:23]
  wire [31:0] fmul_s3_io_result; // @[FMUL.scala 265:23]
  wire [4:0] fmul_s3_io_fflags; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_to_fadd_fp_prod_sign; // @[FMUL.scala 265:23]
  wire [7:0] fmul_s3_io_to_fadd_fp_prod_exp; // @[FMUL.scala 265:23]
  wire [46:0] fmul_s3_io_to_fadd_fp_prod_sig; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_to_fadd_inter_flags_isNaN; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_to_fadd_inter_flags_isInf; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_to_fadd_inter_flags_isInv; // @[FMUL.scala 265:23]
  wire  fmul_s3_io_to_fadd_inter_flags_overflow; // @[FMUL.scala 265:23]
  wire [7:0] raw_a_fp_exp = io_a[30:23]; // @[package.scala 60:18]
  wire [22:0] raw_a_fp_sig = io_a[22:0]; // @[package.scala 61:18]
  wire  raw_a_raw_nz = |raw_a_fp_exp; // @[package.scala 81:72]
  wire [23:0] raw_a_sig = {raw_a_raw_nz,raw_a_fp_sig}; // @[Cat.scala 31:58]
  wire [7:0] raw_bfp_exp = io_b[30:23]; // @[package.scala 60:18]
  wire [22:0] raw_bfp_sig = io_b[22:0]; // @[package.scala 61:18]
  wire  raw_braw_nz = |raw_bfp_exp; // @[package.scala 81:72]
  wire [23:0] raw_bsig = {raw_braw_nz,raw_bfp_sig}; // @[Cat.scala 31:58]
  Multiplier_1 multiplier ( // @[FMUL.scala 262:26]
    .io_a(multiplier_io_a),
    .io_b(multiplier_io_b),
    .io_result(multiplier_io_result)
  );
  FMUL_s1 fmul_s1 ( // @[FMUL.scala 263:23]
    .io_a(fmul_s1_io_a),
    .io_b(fmul_s1_io_b),
    .io_rm(fmul_s1_io_rm),
    .io_out_special_case_valid(fmul_s1_io_out_special_case_valid),
    .io_out_special_case_bits_nan(fmul_s1_io_out_special_case_bits_nan),
    .io_out_special_case_bits_inf(fmul_s1_io_out_special_case_bits_inf),
    .io_out_special_case_bits_inv(fmul_s1_io_out_special_case_bits_inv),
    .io_out_special_case_bits_hasZero(fmul_s1_io_out_special_case_bits_hasZero),
    .io_out_early_overflow(fmul_s1_io_out_early_overflow),
    .io_out_prod_sign(fmul_s1_io_out_prod_sign),
    .io_out_shift_amt(fmul_s1_io_out_shift_amt),
    .io_out_exp_shifted(fmul_s1_io_out_exp_shifted),
    .io_out_may_be_subnormal(fmul_s1_io_out_may_be_subnormal),
    .io_out_rm(fmul_s1_io_out_rm)
  );
  FMUL_s2 fmul_s2 ( // @[FMUL.scala 264:23]
    .io_in_special_case_valid(fmul_s2_io_in_special_case_valid),
    .io_in_special_case_bits_nan(fmul_s2_io_in_special_case_bits_nan),
    .io_in_special_case_bits_inf(fmul_s2_io_in_special_case_bits_inf),
    .io_in_special_case_bits_inv(fmul_s2_io_in_special_case_bits_inv),
    .io_in_special_case_bits_hasZero(fmul_s2_io_in_special_case_bits_hasZero),
    .io_in_early_overflow(fmul_s2_io_in_early_overflow),
    .io_in_prod_sign(fmul_s2_io_in_prod_sign),
    .io_in_shift_amt(fmul_s2_io_in_shift_amt),
    .io_in_exp_shifted(fmul_s2_io_in_exp_shifted),
    .io_in_may_be_subnormal(fmul_s2_io_in_may_be_subnormal),
    .io_in_rm(fmul_s2_io_in_rm),
    .io_prod(fmul_s2_io_prod),
    .io_out_special_case_valid(fmul_s2_io_out_special_case_valid),
    .io_out_special_case_bits_nan(fmul_s2_io_out_special_case_bits_nan),
    .io_out_special_case_bits_inf(fmul_s2_io_out_special_case_bits_inf),
    .io_out_special_case_bits_inv(fmul_s2_io_out_special_case_bits_inv),
    .io_out_special_case_bits_hasZero(fmul_s2_io_out_special_case_bits_hasZero),
    .io_out_early_overflow(fmul_s2_io_out_early_overflow),
    .io_out_prod(fmul_s2_io_out_prod),
    .io_out_prod_sign(fmul_s2_io_out_prod_sign),
    .io_out_shift_amt(fmul_s2_io_out_shift_amt),
    .io_out_exp_shifted(fmul_s2_io_out_exp_shifted),
    .io_out_may_be_subnormal(fmul_s2_io_out_may_be_subnormal),
    .io_out_rm(fmul_s2_io_out_rm)
  );
  FMUL_s3 fmul_s3 ( // @[FMUL.scala 265:23]
    .io_in_special_case_valid(fmul_s3_io_in_special_case_valid),
    .io_in_special_case_bits_nan(fmul_s3_io_in_special_case_bits_nan),
    .io_in_special_case_bits_inf(fmul_s3_io_in_special_case_bits_inf),
    .io_in_special_case_bits_inv(fmul_s3_io_in_special_case_bits_inv),
    .io_in_special_case_bits_hasZero(fmul_s3_io_in_special_case_bits_hasZero),
    .io_in_early_overflow(fmul_s3_io_in_early_overflow),
    .io_in_prod(fmul_s3_io_in_prod),
    .io_in_prod_sign(fmul_s3_io_in_prod_sign),
    .io_in_shift_amt(fmul_s3_io_in_shift_amt),
    .io_in_exp_shifted(fmul_s3_io_in_exp_shifted),
    .io_in_may_be_subnormal(fmul_s3_io_in_may_be_subnormal),
    .io_in_rm(fmul_s3_io_in_rm),
    .io_result(fmul_s3_io_result),
    .io_fflags(fmul_s3_io_fflags),
    .io_to_fadd_fp_prod_sign(fmul_s3_io_to_fadd_fp_prod_sign),
    .io_to_fadd_fp_prod_exp(fmul_s3_io_to_fadd_fp_prod_exp),
    .io_to_fadd_fp_prod_sig(fmul_s3_io_to_fadd_fp_prod_sig),
    .io_to_fadd_inter_flags_isNaN(fmul_s3_io_to_fadd_inter_flags_isNaN),
    .io_to_fadd_inter_flags_isInf(fmul_s3_io_to_fadd_inter_flags_isInf),
    .io_to_fadd_inter_flags_isInv(fmul_s3_io_to_fadd_inter_flags_isInv),
    .io_to_fadd_inter_flags_overflow(fmul_s3_io_to_fadd_inter_flags_overflow)
  );
  assign multiplier_io_a = {{1'd0}, raw_a_sig}; // @[FMUL.scala 271:19]
  assign multiplier_io_b = {{1'd0}, raw_bsig}; // @[FMUL.scala 272:19]
  assign fmul_s1_io_a = io_a; // @[FMUL.scala 275:16]
  assign fmul_s1_io_b = io_b; // @[FMUL.scala 276:16]
  assign fmul_s1_io_rm = io_rm; // @[FMUL.scala 277:17]
  assign fmul_s2_io_in_special_case_valid = fmul_s1_io_out_special_case_valid; // @[FMUL.scala 279:17]
  assign fmul_s2_io_in_special_case_bits_nan = fmul_s1_io_out_special_case_bits_nan; // @[FMUL.scala 279:17]
  assign fmul_s2_io_in_special_case_bits_inf = fmul_s1_io_out_special_case_bits_inf; // @[FMUL.scala 279:17]
  assign fmul_s2_io_in_special_case_bits_inv = fmul_s1_io_out_special_case_bits_inv; // @[FMUL.scala 279:17]
  assign fmul_s2_io_in_special_case_bits_hasZero = fmul_s1_io_out_special_case_bits_hasZero; // @[FMUL.scala 279:17]
  assign fmul_s2_io_in_early_overflow = fmul_s1_io_out_early_overflow; // @[FMUL.scala 279:17]
  assign fmul_s2_io_in_prod_sign = fmul_s1_io_out_prod_sign; // @[FMUL.scala 279:17]
  assign fmul_s2_io_in_shift_amt = fmul_s1_io_out_shift_amt; // @[FMUL.scala 279:17]
  assign fmul_s2_io_in_exp_shifted = fmul_s1_io_out_exp_shifted; // @[FMUL.scala 279:17]
  assign fmul_s2_io_in_may_be_subnormal = fmul_s1_io_out_may_be_subnormal; // @[FMUL.scala 279:17]
  assign fmul_s2_io_in_rm = fmul_s1_io_out_rm; // @[FMUL.scala 279:17]
  assign fmul_s2_io_prod = multiplier_io_result[47:0]; // @[FMUL.scala 280:19]
  assign fmul_s3_io_in_special_case_valid = fmul_s2_io_out_special_case_valid; // @[FMUL.scala 282:17]
  assign fmul_s3_io_in_special_case_bits_nan = fmul_s2_io_out_special_case_bits_nan; // @[FMUL.scala 282:17]
  assign fmul_s3_io_in_special_case_bits_inf = fmul_s2_io_out_special_case_bits_inf; // @[FMUL.scala 282:17]
  assign fmul_s3_io_in_special_case_bits_inv = fmul_s2_io_out_special_case_bits_inv; // @[FMUL.scala 282:17]
  assign fmul_s3_io_in_special_case_bits_hasZero = fmul_s2_io_out_special_case_bits_hasZero; // @[FMUL.scala 282:17]
  assign fmul_s3_io_in_early_overflow = fmul_s2_io_out_early_overflow; // @[FMUL.scala 282:17]
  assign fmul_s3_io_in_prod = fmul_s2_io_out_prod; // @[FMUL.scala 282:17]
  assign fmul_s3_io_in_prod_sign = fmul_s2_io_out_prod_sign; // @[FMUL.scala 282:17]
  assign fmul_s3_io_in_shift_amt = fmul_s2_io_out_shift_amt; // @[FMUL.scala 282:17]
  assign fmul_s3_io_in_exp_shifted = fmul_s2_io_out_exp_shifted; // @[FMUL.scala 282:17]
  assign fmul_s3_io_in_may_be_subnormal = fmul_s2_io_out_may_be_subnormal; // @[FMUL.scala 282:17]
  assign fmul_s3_io_in_rm = fmul_s2_io_out_rm; // @[FMUL.scala 282:17]
endmodule
