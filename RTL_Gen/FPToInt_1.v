module FPToInt_1(
  input  [63:0] io_a,
  input  [2:0]  io_rm,
  input  [1:0]  io_op,
  output [63:0] io_result,
  output [4:0]  io_fflags
);
  wire [53:0] shiftRightJam_io_in; // @[ShiftRightJam.scala 27:31]
  wire [10:0] shiftRightJam_io_shamt; // @[ShiftRightJam.scala 27:31]
  wire [53:0] shiftRightJam_io_out; // @[ShiftRightJam.scala 27:31]
  wire  shiftRightJam_io_sticky; // @[ShiftRightJam.scala 27:31]
  wire [52:0] rpath_rounder_io_in; // @[FPToInt.scala 55:29]
  wire  rpath_rounder_io_roundIn; // @[FPToInt.scala 55:29]
  wire  rpath_rounder_io_stickyIn; // @[FPToInt.scala 55:29]
  wire  rpath_rounder_io_signIn; // @[FPToInt.scala 55:29]
  wire [2:0] rpath_rounder_io_rm; // @[FPToInt.scala 55:29]
  wire [52:0] rpath_rounder_io_out; // @[FPToInt.scala 55:29]
  wire  rpath_rounder_io_inexact; // @[FPToInt.scala 55:29]
  wire  rpath_rounder_io_cout; // @[FPToInt.scala 55:29]
  wire  rpath_rounder_io_rup; // @[FPToInt.scala 55:29]
  wire  is_signed_int = io_op[0]; // @[FPToInt.scala 22:28]
  wire  is_long_int = io_op[1]; // @[FPToInt.scala 23:26]
  wire  fp_a_sign = io_a[63]; // @[package.scala 59:19]
  wire [10:0] fp_a_exp = io_a[62:52]; // @[package.scala 60:18]
  wire [51:0] fp_a_sig = io_a[51:0]; // @[package.scala 61:18]
  wire  decode_a_expNotZero = |fp_a_exp; // @[package.scala 32:31]
  wire  decode_a_expIsOnes = &fp_a_exp; // @[package.scala 33:31]
  wire  decode_a_sigNotZero = |fp_a_sig; // @[package.scala 34:31]
  wire  decode_a__expIsZero = ~decode_a_expNotZero; // @[package.scala 37:27]
  wire  decode_a__isNaN = decode_a_expIsOnes & decode_a_sigNotZero; // @[package.scala 44:40]
  wire [10:0] _GEN_0 = {{10'd0}, decode_a__expIsZero}; // @[package.scala 83:27]
  wire [10:0] raw_a_exp = fp_a_exp | _GEN_0; // @[package.scala 83:27]
  wire [52:0] raw_a_sig = {decode_a_expNotZero,fp_a_sig}; // @[Cat.scala 31:58]
  wire [5:0] _max_int_exp_T = is_long_int ? 6'h3f : 6'h1f; // @[FPToInt.scala 30:42]
  wire [9:0] _GEN_1 = {{4'd0}, _max_int_exp_T}; // @[FPToInt.scala 30:36]
  wire [10:0] max_int_exp = 10'h3ff + _GEN_1; // @[FPToInt.scala 30:36]
  wire  exp_of = raw_a_exp > max_int_exp; // @[FPToInt.scala 31:26]
  wire [10:0] lpath_shamt = raw_a_exp - 11'h433; // @[FPToInt.scala 36:31]
  wire [67:0] _GEN_2 = {{15'd0}, raw_a_sig}; // @[FPToInt.scala 40:16]
  wire [67:0] _lpath_sig_shifted_T_1 = _GEN_2 << lpath_shamt[3:0]; // @[FPToInt.scala 40:16]
  wire [63:0] lpath_sig_shifted = _lpath_sig_shifted_T_1[63:0]; // @[FPToInt.scala 40:61]
  wire  _lpath_iv_T = ~is_signed_int; // @[FPToInt.scala 41:18]
  wire  lpath_iv = ~is_signed_int & fp_a_sign; // @[FPToInt.scala 41:33]
  wire  lpath_may_of = is_signed_int & raw_a_exp == max_int_exp; // @[FPToInt.scala 42:36]
  wire  _lpath_pos_of_T = ~fp_a_sign; // @[FPToInt.scala 43:38]
  wire  lpath_pos_of = lpath_may_of & ~fp_a_sign; // @[FPToInt.scala 43:35]
  wire  lpath_neg_of = lpath_may_of & fp_a_sign & |raw_a_sig[51:0]; // @[FPToInt.scala 44:49]
  wire  lpath_of = lpath_pos_of | lpath_neg_of; // @[FPToInt.scala 45:31]
  wire [63:0] rpath_sig = {10'h0,rpath_rounder_io_cout,rpath_rounder_io_out}; // @[Cat.scala 31:58]
  wire  rpath_iv = lpath_iv & |rpath_sig; // @[FPToInt.scala 67:47]
  wire  rpath_of_rpath_exp_inc = rpath_rounder_io_rup & &rpath_rounder_io_in[30:0]; // @[FPToInt.scala 70:29]
  wire  rpath_of_rpath_exp_eq_31 = raw_a_exp == 11'h41e; // @[FPToInt.scala 71:37]
  wire  rpath_of_rpath_exp_eq_30 = raw_a_exp == 11'h41d; // @[FPToInt.scala 72:37]
  wire  _rpath_of_rpath_pos_of_T_2 = rpath_of_rpath_exp_eq_31 | rpath_of_rpath_exp_eq_30 & rpath_of_rpath_exp_inc; // @[FPToInt.scala 75:23]
  wire  _rpath_of_rpath_pos_of_T_3 = rpath_of_rpath_exp_eq_31 & rpath_of_rpath_exp_inc; // @[FPToInt.scala 76:23]
  wire  _rpath_of_rpath_pos_of_T_4 = is_signed_int ? _rpath_of_rpath_pos_of_T_2 : _rpath_of_rpath_pos_of_T_3; // @[FPToInt.scala 73:42]
  wire  rpath_of_rpath_pos_of = _lpath_pos_of_T & _rpath_of_rpath_pos_of_T_4; // @[FPToInt.scala 73:36]
  wire  _rpath_of_rpath_neg_of_T_3 = |rpath_rounder_io_in[30:0] | rpath_rounder_io_rup; // @[FPToInt.scala 79:41]
  wire  rpath_of_rpath_neg_of = fp_a_sign & rpath_of_rpath_exp_eq_31 & _rpath_of_rpath_neg_of_T_3; // @[FPToInt.scala 78:54]
  wire  rpath_of = ~is_long_int & (rpath_of_rpath_pos_of | rpath_of_rpath_neg_of); // @[FPToInt.scala 81:18]
  wire  sel_lpath = raw_a_exp >= 11'h433; // @[FPToInt.scala 87:29]
  wire  _of_T_2 = ~sel_lpath; // @[FPToInt.scala 88:50]
  wire  of = exp_of | sel_lpath & lpath_of | ~sel_lpath & rpath_of; // @[FPToInt.scala 88:46]
  wire  iv = of | sel_lpath & lpath_iv | _of_T_2 & rpath_iv; // @[FPToInt.scala 89:42]
  wire  ix = ~iv & _of_T_2 & rpath_rounder_io_inexact; // @[FPToInt.scala 90:30]
  wire [63:0] int_abs = sel_lpath ? lpath_sig_shifted : rpath_sig; // @[FPToInt.scala 92:20]
  wire [63:0] _int_T_2 = 64'h0 - int_abs; // @[FPToInt.scala 93:46]
  wire [63:0] _int_T_3 = fp_a_sign & is_signed_int ? _int_T_2 : int_abs; // @[FPToInt.scala 93:16]
  wire [31:0] _int_T_5 = is_long_int ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _int_T_7 = {_int_T_5,32'hffffffff}; // @[Cat.scala 31:58]
  wire [63:0] int_ = _int_T_3 & _int_T_7; // @[FPToInt.scala 93:65]
  wire [63:0] max_int64 = {_lpath_iv_T,63'h7fffffffffffffff}; // @[Cat.scala 31:58]
  wire [63:0] min_int64 = {is_signed_int,63'h0}; // @[Cat.scala 31:58]
  wire [63:0] max_int32 = {32'h0,max_int64[63:32]}; // @[Cat.scala 31:58]
  wire [63:0] min_int32 = {32'h0,min_int64[63:32]}; // @[Cat.scala 31:58]
  wire  _io_result_T_1 = decode_a__isNaN | _lpath_pos_of_T; // @[FPToInt.scala 106:22]
  wire [63:0] _io_result_T_2 = is_long_int ? max_int64 : max_int32; // @[FPToInt.scala 107:10]
  wire [63:0] _io_result_T_3 = is_long_int ? min_int64 : min_int32; // @[FPToInt.scala 108:10]
  wire [63:0] _io_result_T_4 = _io_result_T_1 ? _io_result_T_2 : _io_result_T_3; // @[FPToInt.scala 105:8]
  wire [1:0] io_fflags_lo = {1'h0,ix}; // @[Cat.scala 31:58]
  wire [2:0] io_fflags_hi = {iv,1'h0,1'h0}; // @[Cat.scala 31:58]
  ShiftRightJam_3 shiftRightJam ( // @[ShiftRightJam.scala 27:31]
    .io_in(shiftRightJam_io_in),
    .io_shamt(shiftRightJam_io_shamt),
    .io_out(shiftRightJam_io_out),
    .io_sticky(shiftRightJam_io_sticky)
  );
  RoundingUnit_19 rpath_rounder ( // @[FPToInt.scala 55:29]
    .io_in(rpath_rounder_io_in),
    .io_roundIn(rpath_rounder_io_roundIn),
    .io_stickyIn(rpath_rounder_io_stickyIn),
    .io_signIn(rpath_rounder_io_signIn),
    .io_rm(rpath_rounder_io_rm),
    .io_out(rpath_rounder_io_out),
    .io_inexact(rpath_rounder_io_inexact),
    .io_cout(rpath_rounder_io_cout),
    .io_rup(rpath_rounder_io_rup)
  );
  assign io_result = iv ? _io_result_T_4 : int_; // @[FPToInt.scala 103:19]
  assign io_fflags = {io_fflags_hi,io_fflags_lo}; // @[Cat.scala 31:58]
  assign shiftRightJam_io_in = {raw_a_sig,1'h0}; // @[Cat.scala 31:58]
  assign shiftRightJam_io_shamt = 11'h433 - raw_a_exp; // @[FPToInt.scala 50:70]
  assign rpath_rounder_io_in = shiftRightJam_io_out[53:1]; // @[FPToInt.scala 56:48]
  assign rpath_rounder_io_roundIn = shiftRightJam_io_out[0]; // @[FPToInt.scala 57:48]
  assign rpath_rounder_io_stickyIn = shiftRightJam_io_sticky; // @[FPToInt.scala 58:29]
  assign rpath_rounder_io_signIn = io_a[63]; // @[package.scala 59:19]
  assign rpath_rounder_io_rm = io_rm; // @[FPToInt.scala 60:23]
endmodule
