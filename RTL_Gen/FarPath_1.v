module FarPath_1(
  input          io_in_a_sign,
  input  [10:0]  io_in_a_exp,
  input  [105:0] io_in_a_sig,
  input  [105:0] io_in_bsig,
  input  [10:0]  io_in_expDiff,
  input          io_in_effSub,
  input          io_in_smallAdd,
  output         io_out_result_sign,
  output [10:0]  io_out_result_exp,
  output [55:0]  io_out_result_sig
);
  wire [107:0] shiftRightJam_io_in; // @[ShiftRightJam.scala 27:31]
  wire [10:0] shiftRightJam_io_shamt; // @[ShiftRightJam.scala 27:31]
  wire [107:0] shiftRightJam_io_out; // @[ShiftRightJam.scala 27:31]
  wire  shiftRightJam_io_sticky; // @[ShiftRightJam.scala 27:31]
  wire [109:0] adder_in_sig_b = {1'h0,shiftRightJam_io_out,shiftRightJam_io_sticky}; // @[Cat.scala 31:58]
  wire [109:0] adder_in_sig_a = {1'h0,io_in_a_sig,3'h0}; // @[Cat.scala 31:58]
  wire [109:0] _adder_result_T = ~adder_in_sig_b; // @[FADD.scala 33:19]
  wire [109:0] _adder_result_T_1 = io_in_effSub ? _adder_result_T : adder_in_sig_b; // @[FADD.scala 33:10]
  wire [109:0] _adder_result_T_3 = adder_in_sig_a + _adder_result_T_1; // @[FADD.scala 32:20]
  wire [109:0] _GEN_0 = {{109'd0}, io_in_effSub}; // @[FADD.scala 33:61]
  wire [109:0] adder_result = _adder_result_T_3 + _GEN_0; // @[FADD.scala 33:61]
  wire [10:0] exp_a_plus_1 = io_in_a_exp + 11'h1; // @[FADD.scala 35:28]
  wire [10:0] exp_a_minus_1 = io_in_a_exp - 11'h1; // @[FADD.scala 36:29]
  wire  cout = adder_result[109]; // @[FADD.scala 38:31]
  wire  keep = adder_result[109:108] == 2'h1; // @[FADD.scala 39:35]
  wire  cancellation = adder_result[109:108] == 2'h0; // @[FADD.scala 40:43]
  wire  _far_path_sig_T = keep | io_in_smallAdd; // @[FADD.scala 43:20]
  wire  _far_path_sig_T_2 = cancellation & ~io_in_smallAdd; // @[FADD.scala 43:46]
  wire [55:0] _far_path_sig_T_6 = {adder_result[109:55],|adder_result[54:0]}; // @[FADD.scala 45:36]
  wire [55:0] _far_path_sig_T_11 = {adder_result[108:54],|adder_result[53:0]}; // @[FADD.scala 46:44]
  wire [55:0] _far_path_sig_T_16 = {adder_result[107:53],|adder_result[52:0]}; // @[FADD.scala 47:44]
  wire [55:0] _far_path_sig_T_17 = cout ? _far_path_sig_T_6 : 56'h0; // @[Mux.scala 27:73]
  wire [55:0] _far_path_sig_T_18 = _far_path_sig_T ? _far_path_sig_T_11 : 56'h0; // @[Mux.scala 27:73]
  wire [55:0] _far_path_sig_T_19 = _far_path_sig_T_2 ? _far_path_sig_T_16 : 56'h0; // @[Mux.scala 27:73]
  wire [55:0] _far_path_sig_T_20 = _far_path_sig_T_17 | _far_path_sig_T_18; // @[Mux.scala 27:73]
  wire [10:0] _far_path_exp_T = cout ? exp_a_plus_1 : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _far_path_exp_T_1 = keep ? io_in_a_exp : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _far_path_exp_T_2 = cancellation ? exp_a_minus_1 : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _far_path_exp_T_3 = _far_path_exp_T | _far_path_exp_T_1; // @[Mux.scala 27:73]
  ShiftRightJam_1 shiftRightJam ( // @[ShiftRightJam.scala 27:31]
    .io_in(shiftRightJam_io_in),
    .io_shamt(shiftRightJam_io_shamt),
    .io_out(shiftRightJam_io_out),
    .io_sticky(shiftRightJam_io_sticky)
  );
  assign io_out_result_sign = io_in_a_sign; // @[FADD.scala 56:20 57:15]
  assign io_out_result_exp = _far_path_exp_T_3 | _far_path_exp_T_2; // @[Mux.scala 27:73]
  assign io_out_result_sig = _far_path_sig_T_20 | _far_path_sig_T_19; // @[Mux.scala 27:73]
  assign shiftRightJam_io_in = {io_in_bsig,2'h0}; // @[Cat.scala 31:58]
  assign shiftRightJam_io_shamt = io_in_expDiff; // @[ShiftRightJam.scala 29:28]
endmodule
