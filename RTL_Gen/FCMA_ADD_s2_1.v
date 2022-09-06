module FCMA_ADD_s2_1(
  input  [2:0]  io_in_rm,
  input         io_in_far_path_out_sign,
  input  [10:0] io_in_far_path_out_exp,
  input  [55:0] io_in_far_path_out_sig,
  input         io_in_near_path_out_sign,
  input  [10:0] io_in_near_path_out_exp,
  input  [55:0] io_in_near_path_out_sig,
  input         io_in_special_case_valid,
  input         io_in_special_case_bits_iv,
  input         io_in_special_case_bits_nan,
  input         io_in_special_case_bits_inf_sign,
  input         io_in_small_add,
  input         io_in_far_path_mul_of,
  input         io_in_near_path_sig_is_zero,
  input         io_in_sel_far_path,
  output [63:0] io_result,
  output [4:0]  io_fflags
);
  wire  far_path_tininess_rounder_io_in_sign; // @[FADD.scala 313:41]
  wire [55:0] far_path_tininess_rounder_io_in_sig; // @[FADD.scala 313:41]
  wire [2:0] far_path_tininess_rounder_io_rm; // @[FADD.scala 313:41]
  wire  far_path_tininess_rounder_io_tininess; // @[FADD.scala 313:41]
  wire [51:0] far_path_rounder_io_in; // @[RoundingUnit.scala 44:25]
  wire  far_path_rounder_io_roundIn; // @[RoundingUnit.scala 44:25]
  wire  far_path_rounder_io_stickyIn; // @[RoundingUnit.scala 44:25]
  wire  far_path_rounder_io_signIn; // @[RoundingUnit.scala 44:25]
  wire [2:0] far_path_rounder_io_rm; // @[RoundingUnit.scala 44:25]
  wire [51:0] far_path_rounder_io_out; // @[RoundingUnit.scala 44:25]
  wire  far_path_rounder_io_inexact; // @[RoundingUnit.scala 44:25]
  wire  far_path_rounder_io_cout; // @[RoundingUnit.scala 44:25]
  wire  near_path_tininess_rounder_io_in_sign; // @[FADD.scala 352:42]
  wire [55:0] near_path_tininess_rounder_io_in_sig; // @[FADD.scala 352:42]
  wire [2:0] near_path_tininess_rounder_io_rm; // @[FADD.scala 352:42]
  wire  near_path_tininess_rounder_io_tininess; // @[FADD.scala 352:42]
  wire [51:0] near_path_rounder_io_in; // @[RoundingUnit.scala 44:25]
  wire  near_path_rounder_io_roundIn; // @[RoundingUnit.scala 44:25]
  wire  near_path_rounder_io_stickyIn; // @[RoundingUnit.scala 44:25]
  wire  near_path_rounder_io_signIn; // @[RoundingUnit.scala 44:25]
  wire [2:0] near_path_rounder_io_rm; // @[RoundingUnit.scala 44:25]
  wire [51:0] near_path_rounder_io_out; // @[RoundingUnit.scala 44:25]
  wire  near_path_rounder_io_inexact; // @[RoundingUnit.scala 44:25]
  wire  near_path_rounder_io_cout; // @[RoundingUnit.scala 44:25]
  wire [63:0] _special_path_result_T_3 = {io_in_special_case_bits_inf_sign,11'h7ff,52'h0}; // @[Cat.scala 31:58]
  wire [63:0] special_path_result = io_in_special_case_bits_nan ? 64'h7ff8000000000000 : _special_path_result_T_3; // @[FADD.scala 295:32]
  wire [4:0] special_path_fflags = {io_in_special_case_bits_iv,4'h0}; // @[Cat.scala 31:58]
  wire  far_path_tininess = io_in_small_add & far_path_tininess_rounder_io_tininess; // @[FADD.scala 316:37]
  wire [10:0] _GEN_0 = {{10'd0}, far_path_rounder_io_cout}; // @[FADD.scala 325:55]
  wire [10:0] far_path_exp_rounded = _GEN_0 + io_in_far_path_out_exp; // @[FADD.scala 325:55]
  wire  far_path_may_uf = far_path_tininess & ~io_in_far_path_mul_of; // @[FADD.scala 330:43]
  wire  far_path_of_before_round = io_in_far_path_out_exp == 11'h7ff; // @[FADD.scala 333:18]
  wire  _far_path_of_after_round_T = io_in_far_path_out_exp == 11'h7fe; // @[FADD.scala 335:18]
  wire  far_path_of_after_round = far_path_rounder_io_cout & _far_path_of_after_round_T; // @[FADD.scala 334:58]
  wire  far_path_of = far_path_of_before_round | far_path_of_after_round | io_in_far_path_mul_of; // @[FADD.scala 338:57]
  wire  far_path_ix = far_path_rounder_io_inexact | far_path_of; // @[FADD.scala 339:49]
  wire  far_path_uf = far_path_may_uf & far_path_ix; // @[FADD.scala 340:37]
  wire [63:0] far_path_result = {io_in_far_path_out_sign,far_path_exp_rounded,far_path_rounder_io_out}; // @[Cat.scala 31:58]
  wire  near_path_is_zero = io_in_near_path_out_exp == 11'h0 & io_in_near_path_sig_is_zero; // @[FADD.scala 350:49]
  wire [10:0] _GEN_1 = {{10'd0}, near_path_rounder_io_cout}; // @[FADD.scala 364:57]
  wire [10:0] near_path_exp_rounded = _GEN_1 + io_in_near_path_out_exp; // @[FADD.scala 364:57]
  wire  near_path_zero_sign = io_in_rm == 3'h2; // @[FADD.scala 366:38]
  wire  _near_path_result_T_3 = io_in_near_path_out_sign & ~near_path_is_zero | near_path_zero_sign & near_path_is_zero; // @[FADD.scala 368:44]
  wire [63:0] near_path_result = {_near_path_result_T_3,near_path_exp_rounded,near_path_rounder_io_out}; // @[Cat.scala 31:58]
  wire  near_path_of = near_path_exp_rounded == 11'h7ff; // @[FADD.scala 373:44]
  wire  near_path_ix = near_path_rounder_io_inexact | near_path_of; // @[FADD.scala 374:51]
  wire  near_path_uf = near_path_tininess_rounder_io_tininess & near_path_ix; // @[FADD.scala 375:41]
  wire  _common_overflow_T_1 = ~io_in_sel_far_path; // @[FADD.scala 379:36]
  wire  common_overflow = io_in_sel_far_path & far_path_of | ~io_in_sel_far_path & near_path_of; // @[FADD.scala 379:33]
  wire  common_overflow_sign = io_in_sel_far_path ? io_in_far_path_out_sign : io_in_near_path_out_sign; // @[FADD.scala 381:8]
  wire  rmin = io_in_rm == 3'h1 | near_path_zero_sign & ~io_in_far_path_out_sign | io_in_rm == 3'h3 &
    io_in_far_path_out_sign; // @[RoundingUnit.scala 54:41]
  wire [10:0] common_overflow_exp = rmin ? 11'h7fe : 11'h7ff; // @[FADD.scala 383:32]
  wire [51:0] common_overflow_sig = rmin ? 52'hfffffffffffff : 52'h0; // @[FADD.scala 389:8]
  wire  common_underflow = io_in_sel_far_path & far_path_uf | _common_overflow_T_1 & near_path_uf; // @[FADD.scala 391:33]
  wire  common_inexact = io_in_sel_far_path & far_path_ix | _common_overflow_T_1 & near_path_ix; // @[FADD.scala 393:33]
  wire [4:0] common_fflags = {2'h0,common_overflow,common_underflow,common_inexact}; // @[Cat.scala 31:58]
  wire [63:0] _io_result_T = {common_overflow_sign,common_overflow_exp,common_overflow_sig}; // @[Cat.scala 31:58]
  wire [63:0] _io_result_T_1 = io_in_sel_far_path ? far_path_result : near_path_result; // @[FADD.scala 408:10]
  wire [63:0] _io_result_T_2 = common_overflow ? _io_result_T : _io_result_T_1; // @[FADD.scala 405:8]
  TininessRounder_1 far_path_tininess_rounder ( // @[FADD.scala 313:41]
    .io_in_sign(far_path_tininess_rounder_io_in_sign),
    .io_in_sig(far_path_tininess_rounder_io_in_sig),
    .io_rm(far_path_tininess_rounder_io_rm),
    .io_tininess(far_path_tininess_rounder_io_tininess)
  );
  RoundingUnit_1 far_path_rounder ( // @[RoundingUnit.scala 44:25]
    .io_in(far_path_rounder_io_in),
    .io_roundIn(far_path_rounder_io_roundIn),
    .io_stickyIn(far_path_rounder_io_stickyIn),
    .io_signIn(far_path_rounder_io_signIn),
    .io_rm(far_path_rounder_io_rm),
    .io_out(far_path_rounder_io_out),
    .io_inexact(far_path_rounder_io_inexact),
    .io_cout(far_path_rounder_io_cout)
  );
  TininessRounder_1 near_path_tininess_rounder ( // @[FADD.scala 352:42]
    .io_in_sign(near_path_tininess_rounder_io_in_sign),
    .io_in_sig(near_path_tininess_rounder_io_in_sig),
    .io_rm(near_path_tininess_rounder_io_rm),
    .io_tininess(near_path_tininess_rounder_io_tininess)
  );
  RoundingUnit_1 near_path_rounder ( // @[RoundingUnit.scala 44:25]
    .io_in(near_path_rounder_io_in),
    .io_roundIn(near_path_rounder_io_roundIn),
    .io_stickyIn(near_path_rounder_io_stickyIn),
    .io_signIn(near_path_rounder_io_signIn),
    .io_rm(near_path_rounder_io_rm),
    .io_out(near_path_rounder_io_out),
    .io_inexact(near_path_rounder_io_inexact),
    .io_cout(near_path_rounder_io_cout)
  );
  assign io_result = io_in_special_case_valid ? special_path_result : _io_result_T_2; // @[FADD.scala 402:19]
  assign io_fflags = io_in_special_case_valid ? special_path_fflags : common_fflags; // @[FADD.scala 411:19]
  assign far_path_tininess_rounder_io_in_sign = io_in_far_path_out_sign; // @[FADD.scala 314:35]
  assign far_path_tininess_rounder_io_in_sig = io_in_far_path_out_sig; // @[FADD.scala 314:35]
  assign far_path_tininess_rounder_io_rm = io_in_rm; // @[FADD.scala 315:35]
  assign far_path_rounder_io_in = io_in_far_path_out_sig[54:3]; // @[RoundingUnit.scala 45:33]
  assign far_path_rounder_io_roundIn = io_in_far_path_out_sig[2]; // @[RoundingUnit.scala 46:50]
  assign far_path_rounder_io_stickyIn = |io_in_far_path_out_sig[1:0]; // @[RoundingUnit.scala 47:54]
  assign far_path_rounder_io_signIn = io_in_far_path_out_sign; // @[RoundingUnit.scala 49:23]
  assign far_path_rounder_io_rm = io_in_rm; // @[RoundingUnit.scala 48:19]
  assign near_path_tininess_rounder_io_in_sign = io_in_near_path_out_sign; // @[FADD.scala 353:36]
  assign near_path_tininess_rounder_io_in_sig = io_in_near_path_out_sig; // @[FADD.scala 353:36]
  assign near_path_tininess_rounder_io_rm = io_in_rm; // @[FADD.scala 354:36]
  assign near_path_rounder_io_in = io_in_near_path_out_sig[54:3]; // @[RoundingUnit.scala 45:33]
  assign near_path_rounder_io_roundIn = io_in_near_path_out_sig[2]; // @[RoundingUnit.scala 46:50]
  assign near_path_rounder_io_stickyIn = |io_in_near_path_out_sig[1:0]; // @[RoundingUnit.scala 47:54]
  assign near_path_rounder_io_signIn = io_in_near_path_out_sign; // @[RoundingUnit.scala 49:23]
  assign near_path_rounder_io_rm = io_in_rm; // @[RoundingUnit.scala 48:19]
endmodule
