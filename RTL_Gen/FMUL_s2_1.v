module FMUL_s2_1(
  input          io_in_special_case_valid,
  input          io_in_special_case_bits_nan,
  input          io_in_special_case_bits_inf,
  input          io_in_special_case_bits_inv,
  input          io_in_special_case_bits_hasZero,
  input          io_in_early_overflow,
  input          io_in_prod_sign,
  input  [11:0]  io_in_shift_amt,
  input  [11:0]  io_in_exp_shifted,
  input          io_in_may_be_subnormal,
  input  [2:0]   io_in_rm,
  input  [105:0] io_prod,
  output         io_out_special_case_valid,
  output         io_out_special_case_bits_nan,
  output         io_out_special_case_bits_inf,
  output         io_out_special_case_bits_inv,
  output         io_out_special_case_bits_hasZero,
  output         io_out_early_overflow,
  output [105:0] io_out_prod,
  output         io_out_prod_sign,
  output [11:0]  io_out_shift_amt,
  output [11:0]  io_out_exp_shifted,
  output         io_out_may_be_subnormal,
  output [2:0]   io_out_rm
);
  assign io_out_special_case_valid = io_in_special_case_valid; // @[FMUL.scala 129:23]
  assign io_out_special_case_bits_nan = io_in_special_case_bits_nan; // @[FMUL.scala 129:23]
  assign io_out_special_case_bits_inf = io_in_special_case_bits_inf; // @[FMUL.scala 129:23]
  assign io_out_special_case_bits_inv = io_in_special_case_bits_inv; // @[FMUL.scala 129:23]
  assign io_out_special_case_bits_hasZero = io_in_special_case_bits_hasZero; // @[FMUL.scala 129:23]
  assign io_out_early_overflow = io_in_early_overflow; // @[FMUL.scala 130:25]
  assign io_out_prod = io_prod; // @[FMUL.scala 136:15]
  assign io_out_prod_sign = io_in_prod_sign; // @[FMUL.scala 131:20]
  assign io_out_shift_amt = io_in_shift_amt; // @[FMUL.scala 132:20]
  assign io_out_exp_shifted = io_in_exp_shifted; // @[FMUL.scala 133:22]
  assign io_out_may_be_subnormal = io_in_may_be_subnormal; // @[FMUL.scala 134:27]
  assign io_out_rm = io_in_rm; // @[FMUL.scala 135:13]
endmodule
