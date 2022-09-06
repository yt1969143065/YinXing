module RedirectGen(
  input         io_in_rawRedirect_valid,
  input         io_in_rawRedirect_bits_ftqIdx_flag,
  input  [5:0]  io_in_rawRedirect_bits_ftqIdx_value,
  input  [2:0]  io_in_rawRedirect_bits_ftqOffset,
  input         io_in_rawRedirect_bits_level,
  input         io_in_rawRedirect_bits_cfiUpdate_taken,
  input         io_in_rawRedirect_bits_cfiUpdate_isMisPred,
  input         io_in_s1_redirect_onehot_0,
  input         io_in_s1_redirect_onehot_1,
  input         io_in_s1_redirect_onehot_2,
  input         io_in_s1_redirect_onehot_3,
  input         io_in_s1_redirect_onehot_4,
  input         io_in_s1_redirect_onehot_5,
  input         io_in_s1_oldest_redirect_bits_cfiUpdate_taken,
  input         io_in_s1_oldest_exu_output_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_s1_oldest_exu_output_bits_uop_cf_pd_brType,
  input         io_in_s1_oldest_exu_output_bits_uop_cf_pd_isCall,
  input         io_in_s1_oldest_exu_output_bits_uop_cf_pd_isRet,
  input  [19:0] io_in_s1_oldest_exu_output_bits_uop_ctrl_imm,
  input  [38:0] io_in_s1_jumpTarget,
  input         io_in_flushRedirect_valid,
  input         io_in_flushRedirect_bits_ftqIdx_flag,
  input  [5:0]  io_in_flushRedirect_bits_ftqIdx_value,
  input  [2:0]  io_in_flushRedirect_bits_ftqOffset,
  input         io_in_flushRedirect_bits_level,
  input  [38:0] io_in_frontendFlushTarget,
  input  [38:0] io_stage1Pc_0,
  input  [38:0] io_stage1Pc_1,
  input  [38:0] io_stage1Pc_2,
  input  [38:0] io_stage1Pc_3,
  input  [38:0] io_stage1Pc_4,
  input  [38:0] io_stage1Pc_5,
  output        io_out_valid,
  output        io_out_bits_ftqIdx_flag,
  output [5:0]  io_out_bits_ftqIdx_value,
  output [2:0]  io_out_bits_ftqOffset,
  output        io_out_bits_level,
  output [38:0] io_out_bits_cfiUpdate_pc,
  output        io_out_bits_cfiUpdate_pd_isRVC,
  output [1:0]  io_out_bits_cfiUpdate_pd_brType,
  output        io_out_bits_cfiUpdate_pd_isCall,
  output        io_out_bits_cfiUpdate_pd_isRet,
  output [38:0] io_out_bits_cfiUpdate_target,
  output        io_out_bits_cfiUpdate_taken,
  output        io_out_bits_cfiUpdate_isMisPred,
  output [38:0] io_s1_real_pc
);
  wire [11:0] s1_imm12_reg = io_in_s1_oldest_exu_output_bits_uop_ctrl_imm[11:0]; // @[NewFtq.scala 779:39]
  wire [38:0] _real_pc_T = io_in_s1_redirect_onehot_0 ? io_stage1Pc_0 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _real_pc_T_1 = io_in_s1_redirect_onehot_1 ? io_stage1Pc_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _real_pc_T_2 = io_in_s1_redirect_onehot_2 ? io_stage1Pc_2 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _real_pc_T_3 = io_in_s1_redirect_onehot_3 ? io_stage1Pc_3 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _real_pc_T_4 = io_in_s1_redirect_onehot_4 ? io_stage1Pc_4 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _real_pc_T_5 = io_in_s1_redirect_onehot_5 ? io_stage1Pc_5 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _real_pc_T_6 = _real_pc_T | _real_pc_T_1; // @[Mux.scala 27:73]
  wire [38:0] _real_pc_T_7 = _real_pc_T_6 | _real_pc_T_2; // @[Mux.scala 27:73]
  wire [38:0] _real_pc_T_8 = _real_pc_T_7 | _real_pc_T_3; // @[Mux.scala 27:73]
  wire [38:0] _real_pc_T_9 = _real_pc_T_8 | _real_pc_T_4; // @[Mux.scala 27:73]
  wire [38:0] real_pc = _real_pc_T_9 | _real_pc_T_5; // @[Mux.scala 27:73]
  wire [12:0] _brTarget_T_1 = {s1_imm12_reg,1'h0}; // @[Cat.scala 31:58]
  wire  brTarget_signBit = _brTarget_T_1[12]; // @[BitUtils.scala 43:20]
  wire [18:0] _brTarget_T_3 = brTarget_signBit ? 19'h7ffff : 19'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _brTarget_T_4 = {_brTarget_T_3,s1_imm12_reg,1'h0}; // @[Cat.scala 31:58]
  wire  brTarget_signBit_1 = _brTarget_T_4[31]; // @[BitUtils.scala 43:20]
  wire [31:0] _brTarget_T_6 = brTarget_signBit_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _brTarget_T_7 = {_brTarget_T_6,_brTarget_T_3,s1_imm12_reg,1'h0}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_2 = {{25'd0}, real_pc}; // @[NewFtq.scala 784:28]
  wire [63:0] brTarget = _GEN_2 + _brTarget_T_7; // @[NewFtq.scala 784:28]
  wire [2:0] _snpc_T = io_in_s1_oldest_exu_output_bits_uop_cf_pd_isRVC ? 3'h2 : 3'h4; // @[NewFtq.scala 785:29]
  wire [38:0] _GEN_3 = {{36'd0}, _snpc_T}; // @[NewFtq.scala 785:24]
  wire [38:0] snpc = real_pc + _GEN_3; // @[NewFtq.scala 785:24]
  wire [63:0] _target_T = io_in_s1_redirect_onehot_0 ? {{25'd0}, io_in_s1_jumpTarget} : brTarget; // @[NewFtq.scala 789:12]
  wire [63:0] _target_T_1 = io_in_s1_oldest_redirect_bits_cfiUpdate_taken ? _target_T : {{25'd0}, snpc}; // @[NewFtq.scala 788:10]
  wire [63:0] target = io_in_s1_redirect_onehot_5 ? {{25'd0}, real_pc} : _target_T_1; // @[NewFtq.scala 786:21]
  wire  _realRedirect_bits_T_level = io_in_flushRedirect_valid ? io_in_flushRedirect_bits_level :
    io_in_rawRedirect_bits_level; // @[NewFtq.scala 801:29]
  wire [38:0] redirectGenRes_bits_cfiUpdate_target = target[38:0];
  wire [38:0] _realRedirect_bits_T_cfiUpdate_target = io_in_flushRedirect_valid ? 39'h0 :
    redirectGenRes_bits_cfiUpdate_target; // @[NewFtq.scala 801:29]
  assign io_out_valid = io_in_rawRedirect_valid | io_in_flushRedirect_valid; // @[NewFtq.scala 800:48]
  assign io_out_bits_ftqIdx_flag = io_in_flushRedirect_valid ? io_in_flushRedirect_bits_ftqIdx_flag :
    io_in_rawRedirect_bits_ftqIdx_flag; // @[NewFtq.scala 801:29]
  assign io_out_bits_ftqIdx_value = io_in_flushRedirect_valid ? io_in_flushRedirect_bits_ftqIdx_value :
    io_in_rawRedirect_bits_ftqIdx_value; // @[NewFtq.scala 801:29]
  assign io_out_bits_ftqOffset = io_in_flushRedirect_valid ? io_in_flushRedirect_bits_ftqOffset :
    io_in_rawRedirect_bits_ftqOffset; // @[NewFtq.scala 801:29]
  assign io_out_bits_level = io_in_flushRedirect_valid | _realRedirect_bits_T_level; // @[NewFtq.scala 801:23 803:38 804:31]
  assign io_out_bits_cfiUpdate_pc = io_in_flushRedirect_valid ? 39'h0 : real_pc; // @[NewFtq.scala 801:29]
  assign io_out_bits_cfiUpdate_pd_isRVC = io_in_flushRedirect_valid ? 1'h0 :
    io_in_s1_oldest_exu_output_bits_uop_cf_pd_isRVC; // @[NewFtq.scala 801:29]
  assign io_out_bits_cfiUpdate_pd_brType = io_in_flushRedirect_valid ? 2'h0 :
    io_in_s1_oldest_exu_output_bits_uop_cf_pd_brType; // @[NewFtq.scala 801:29]
  assign io_out_bits_cfiUpdate_pd_isCall = io_in_flushRedirect_valid ? 1'h0 :
    io_in_s1_oldest_exu_output_bits_uop_cf_pd_isCall; // @[NewFtq.scala 801:29]
  assign io_out_bits_cfiUpdate_pd_isRet = io_in_flushRedirect_valid ? 1'h0 :
    io_in_s1_oldest_exu_output_bits_uop_cf_pd_isRet; // @[NewFtq.scala 801:29]
  assign io_out_bits_cfiUpdate_target = io_in_flushRedirect_valid ? io_in_frontendFlushTarget :
    _realRedirect_bits_T_cfiUpdate_target; // @[NewFtq.scala 801:23 803:38 805:42]
  assign io_out_bits_cfiUpdate_taken = io_in_flushRedirect_valid ? 1'h0 : io_in_rawRedirect_bits_cfiUpdate_taken; // @[NewFtq.scala 801:29]
  assign io_out_bits_cfiUpdate_isMisPred = io_in_flushRedirect_valid ? 1'h0 : io_in_rawRedirect_bits_cfiUpdate_isMisPred
    ; // @[NewFtq.scala 801:29]
  assign io_s1_real_pc = _real_pc_T_9 | _real_pc_T_5; // @[Mux.scala 27:73]
endmodule
