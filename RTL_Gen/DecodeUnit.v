module DecodeUnit(
  input  [31:0] io_enq_ctrl_flow_instr,
  input  [9:0]  io_enq_ctrl_flow_foldpc,
  input         io_enq_ctrl_flow_exceptionVec_1,
  input         io_enq_ctrl_flow_exceptionVec_12,
  input         io_enq_ctrl_flow_trigger_frontendHit_0,
  input         io_enq_ctrl_flow_trigger_frontendHit_1,
  input         io_enq_ctrl_flow_trigger_frontendHit_2,
  input         io_enq_ctrl_flow_trigger_frontendHit_3,
  input         io_enq_ctrl_flow_trigger_backendEn_0,
  input         io_enq_ctrl_flow_trigger_backendEn_1,
  input         io_enq_ctrl_flow_trigger_backendHit_0,
  input         io_enq_ctrl_flow_trigger_backendHit_1,
  input         io_enq_ctrl_flow_trigger_backendHit_2,
  input         io_enq_ctrl_flow_trigger_backendHit_3,
  input         io_enq_ctrl_flow_trigger_backendHit_4,
  input         io_enq_ctrl_flow_trigger_backendHit_5,
  input         io_enq_ctrl_flow_pd_isRVC,
  input  [1:0]  io_enq_ctrl_flow_pd_brType,
  input         io_enq_ctrl_flow_pd_isCall,
  input         io_enq_ctrl_flow_pd_isRet,
  input         io_enq_ctrl_flow_pred_taken,
  input         io_enq_ctrl_flow_crossPageIPFFix,
  input         io_enq_ctrl_flow_ftqPtr_flag,
  input  [5:0]  io_enq_ctrl_flow_ftqPtr_value,
  input  [2:0]  io_enq_ctrl_flow_ftqOffset,
  output [9:0]  io_deq_cf_ctrl_cf_foldpc,
  output        io_deq_cf_ctrl_cf_exceptionVec_1,
  output        io_deq_cf_ctrl_cf_exceptionVec_2,
  output        io_deq_cf_ctrl_cf_exceptionVec_12,
  output        io_deq_cf_ctrl_cf_trigger_frontendHit_0,
  output        io_deq_cf_ctrl_cf_trigger_frontendHit_1,
  output        io_deq_cf_ctrl_cf_trigger_frontendHit_2,
  output        io_deq_cf_ctrl_cf_trigger_frontendHit_3,
  output        io_deq_cf_ctrl_cf_trigger_backendEn_0,
  output        io_deq_cf_ctrl_cf_trigger_backendEn_1,
  output        io_deq_cf_ctrl_cf_trigger_backendHit_0,
  output        io_deq_cf_ctrl_cf_trigger_backendHit_1,
  output        io_deq_cf_ctrl_cf_trigger_backendHit_2,
  output        io_deq_cf_ctrl_cf_trigger_backendHit_3,
  output        io_deq_cf_ctrl_cf_trigger_backendHit_4,
  output        io_deq_cf_ctrl_cf_trigger_backendHit_5,
  output        io_deq_cf_ctrl_cf_pd_isRVC,
  output [1:0]  io_deq_cf_ctrl_cf_pd_brType,
  output        io_deq_cf_ctrl_cf_pd_isCall,
  output        io_deq_cf_ctrl_cf_pd_isRet,
  output        io_deq_cf_ctrl_cf_pred_taken,
  output        io_deq_cf_ctrl_cf_crossPageIPFFix,
  output        io_deq_cf_ctrl_cf_ftqPtr_flag,
  output [5:0]  io_deq_cf_ctrl_cf_ftqPtr_value,
  output [2:0]  io_deq_cf_ctrl_cf_ftqOffset,
  output [1:0]  io_deq_cf_ctrl_ctrl_srcType_0,
  output [1:0]  io_deq_cf_ctrl_ctrl_srcType_1,
  output [1:0]  io_deq_cf_ctrl_ctrl_srcType_2,
  output [4:0]  io_deq_cf_ctrl_ctrl_lsrc_0,
  output [4:0]  io_deq_cf_ctrl_ctrl_lsrc_1,
  output [4:0]  io_deq_cf_ctrl_ctrl_lsrc_2,
  output [4:0]  io_deq_cf_ctrl_ctrl_ldest,
  output [3:0]  io_deq_cf_ctrl_ctrl_fuType,
  output [6:0]  io_deq_cf_ctrl_ctrl_fuOpType,
  output        io_deq_cf_ctrl_ctrl_rfWen,
  output        io_deq_cf_ctrl_ctrl_fpWen,
  output        io_deq_cf_ctrl_ctrl_isRVCORETrap,
  output        io_deq_cf_ctrl_ctrl_noSpecExec,
  output        io_deq_cf_ctrl_ctrl_blockBackward,
  output        io_deq_cf_ctrl_ctrl_flushPipe,
  output [3:0]  io_deq_cf_ctrl_ctrl_selImm,
  output [19:0] io_deq_cf_ctrl_ctrl_imm,
  output        io_deq_cf_ctrl_ctrl_fpu_isAddSub,
  output        io_deq_cf_ctrl_ctrl_fpu_typeTagIn,
  output        io_deq_cf_ctrl_ctrl_fpu_typeTagOut,
  output        io_deq_cf_ctrl_ctrl_fpu_fromInt,
  output        io_deq_cf_ctrl_ctrl_fpu_wflags,
  output        io_deq_cf_ctrl_ctrl_fpu_fpWen,
  output [1:0]  io_deq_cf_ctrl_ctrl_fpu_fmaCmd,
  output        io_deq_cf_ctrl_ctrl_fpu_div,
  output        io_deq_cf_ctrl_ctrl_fpu_sqrt,
  output        io_deq_cf_ctrl_ctrl_fpu_fcvt,
  output [1:0]  io_deq_cf_ctrl_ctrl_fpu_typ,
  output [1:0]  io_deq_cf_ctrl_ctrl_fpu_fmt,
  output        io_deq_cf_ctrl_ctrl_fpu_ren3,
  output [2:0]  io_deq_cf_ctrl_ctrl_fpu_rm,
  output        io_deq_cf_ctrl_ctrl_isMove,
  input         io_csrCtrl_soft_prefetch_enable,
  input         io_csrCtrl_svinval_enable
);
  wire [31:0] fpDecoder_io_instr; // @[DecodeUnit.scala 591:25]
  wire  fpDecoder_io_fpCtrl_isAddSub; // @[DecodeUnit.scala 591:25]
  wire  fpDecoder_io_fpCtrl_typeTagIn; // @[DecodeUnit.scala 591:25]
  wire  fpDecoder_io_fpCtrl_typeTagOut; // @[DecodeUnit.scala 591:25]
  wire  fpDecoder_io_fpCtrl_fromInt; // @[DecodeUnit.scala 591:25]
  wire  fpDecoder_io_fpCtrl_wflags; // @[DecodeUnit.scala 591:25]
  wire  fpDecoder_io_fpCtrl_fpWen; // @[DecodeUnit.scala 591:25]
  wire [1:0] fpDecoder_io_fpCtrl_fmaCmd; // @[DecodeUnit.scala 591:25]
  wire  fpDecoder_io_fpCtrl_div; // @[DecodeUnit.scala 591:25]
  wire  fpDecoder_io_fpCtrl_sqrt; // @[DecodeUnit.scala 591:25]
  wire  fpDecoder_io_fpCtrl_fcvt; // @[DecodeUnit.scala 591:25]
  wire [1:0] fpDecoder_io_fpCtrl_typ; // @[DecodeUnit.scala 591:25]
  wire [1:0] fpDecoder_io_fpCtrl_fmt; // @[DecodeUnit.scala 591:25]
  wire  fpDecoder_io_fpCtrl_ren3; // @[DecodeUnit.scala 591:25]
  wire [2:0] fpDecoder_io_fpCtrl_rm; // @[DecodeUnit.scala 591:25]
  wire [31:0] cs_decoder_decoded_invInputs = ~io_enq_ctrl_flow_instr; // @[pla.scala 78:21]
  wire  cs_decoder_decoded_andMatrixInput_0 = io_enq_ctrl_flow_instr[0]; // @[pla.scala 90:45]
  wire  cs_decoder_decoded_andMatrixInput_1 = io_enq_ctrl_flow_instr[1]; // @[pla.scala 90:45]
  wire  cs_decoder_decoded_andMatrixInput_2 = cs_decoder_decoded_invInputs[2]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_3 = cs_decoder_decoded_invInputs[3]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_4 = cs_decoder_decoded_invInputs[5]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_5 = cs_decoder_decoded_invInputs[6]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_6 = cs_decoder_decoded_invInputs[12]; // @[pla.scala 91:29]
  wire [6:0] _cs_decoder_decoded_T = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_1 = &_cs_decoder_decoded_T; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_4_1 = cs_decoder_decoded_invInputs[4]; // @[pla.scala 91:29]
  wire [7:0] _cs_decoder_decoded_T_2 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_3 = &_cs_decoder_decoded_T_2; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_7_1 = cs_decoder_decoded_invInputs[13]; // @[pla.scala 91:29]
  wire [7:0] _cs_decoder_decoded_T_4 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_1}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_5 = &_cs_decoder_decoded_T_4; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_6_3 = cs_decoder_decoded_invInputs[14]; // @[pla.scala 91:29]
  wire [6:0] _cs_decoder_decoded_T_6 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_7 = &_cs_decoder_decoded_T_6; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_8 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_9 = &_cs_decoder_decoded_T_8; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_10 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_11 = &_cs_decoder_decoded_T_10; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_2_6 = io_enq_ctrl_flow_instr[2]; // @[pla.scala 90:45]
  wire  cs_decoder_decoded_andMatrixInput_3_6 = io_enq_ctrl_flow_instr[3]; // @[pla.scala 90:45]
  wire [8:0] _cs_decoder_decoded_T_12 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_13 = &_cs_decoder_decoded_T_12; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_4_7 = io_enq_ctrl_flow_instr[4]; // @[pla.scala 90:45]
  wire [8:0] _cs_decoder_decoded_T_14 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_15 = &_cs_decoder_decoded_T_14; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_16 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_4,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_17 = &_cs_decoder_decoded_T_16; // @[pla.scala 98:74]
  wire [5:0] _cs_decoder_decoded_T_18 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_19 = &_cs_decoder_decoded_T_18; // @[pla.scala 98:74]
  wire [6:0] _cs_decoder_decoded_T_20 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_21 = &_cs_decoder_decoded_T_20; // @[pla.scala 98:74]
  wire [9:0] _cs_decoder_decoded_T_22 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_23 = &_cs_decoder_decoded_T_22; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_5_12 = io_enq_ctrl_flow_instr[5]; // @[pla.scala 90:45]
  wire [7:0] _cs_decoder_decoded_T_24 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_25 = &_cs_decoder_decoded_T_24; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_26 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_27 = &_cs_decoder_decoded_T_26; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_9_1 = cs_decoder_decoded_invInputs[25]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_10 = cs_decoder_decoded_invInputs[26]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_11 = cs_decoder_decoded_invInputs[27]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_12 = cs_decoder_decoded_invInputs[28]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_13 = cs_decoder_decoded_invInputs[29]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_14 = cs_decoder_decoded_invInputs[31]; // @[pla.scala 91:29]
  wire [6:0] cs_decoder_decoded_lo_14 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_28 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_14}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_29 = &_cs_decoder_decoded_T_28; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_15 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,
    cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_30 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_15}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_31 = &_cs_decoder_decoded_T_30; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_11_2 = cs_decoder_decoded_invInputs[30]; // @[pla.scala 91:29]
  wire [5:0] cs_decoder_decoded_lo_16 = {cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,
    cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_T_32 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_16}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_33 = &_cs_decoder_decoded_T_32; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_17 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_34 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_17}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_35 = &_cs_decoder_decoded_T_34; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_18 = {cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_36 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_lo_18}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_37 = &_cs_decoder_decoded_T_36; // @[pla.scala 98:74]
  wire [6:0] _cs_decoder_decoded_T_38 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_39 = &_cs_decoder_decoded_T_38; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_20 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_40 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_20}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_41 = &_cs_decoder_decoded_T_40; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_21 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_42 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_21}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_43 = &_cs_decoder_decoded_T_42; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_4_22 = io_enq_ctrl_flow_instr[6]; // @[pla.scala 90:45]
  wire [5:0] _cs_decoder_decoded_T_44 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_4_1,cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,
    cs_decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_45 = &_cs_decoder_decoded_T_44; // @[pla.scala 98:74]
  wire [6:0] _cs_decoder_decoded_T_46 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_4_1,cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_47 = &_cs_decoder_decoded_T_46; // @[pla.scala 98:74]
  wire [4:0] cs_decoder_decoded_lo_24 = {cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [10:0] _cs_decoder_decoded_T_48 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_lo_24}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_49 = &_cs_decoder_decoded_T_48; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_25 = {cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [11:0] _cs_decoder_decoded_T_50 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_lo_25}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_51 = &_cs_decoder_decoded_T_50; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_26 = {cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [11:0] _cs_decoder_decoded_T_52 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_lo_26}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_53 = &_cs_decoder_decoded_T_52; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_27 = {cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [11:0] _cs_decoder_decoded_T_54 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_lo_27}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_55 = &_cs_decoder_decoded_T_54; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_56 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_1}
    ; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_57 = &_cs_decoder_decoded_T_56; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_58 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_59 = &_cs_decoder_decoded_T_58; // @[pla.scala 98:74]
  wire [9:0] _cs_decoder_decoded_T_60 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_61 = &_cs_decoder_decoded_T_60; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_7_24 = cs_decoder_decoded_invInputs[7]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_8_17 = cs_decoder_decoded_invInputs[8]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_9_13 = cs_decoder_decoded_invInputs[9]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_10_11 = cs_decoder_decoded_invInputs[10]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_11_10 = cs_decoder_decoded_invInputs[11]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_15_3 = cs_decoder_decoded_invInputs[20]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_16 = cs_decoder_decoded_invInputs[21]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_17 = cs_decoder_decoded_invInputs[22]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_18 = cs_decoder_decoded_invInputs[23]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_19 = cs_decoder_decoded_invInputs[24]; // @[pla.scala 91:29]
  wire [12:0] cs_decoder_decoded_lo_31 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_15_3,
    cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_lo_16}; // @[Cat.scala 31:58]
  wire [6:0] cs_decoder_decoded_hi_lo_29 = {cs_decoder_decoded_andMatrixInput_7_24,
    cs_decoder_decoded_andMatrixInput_8_17,cs_decoder_decoded_andMatrixInput_9_13,
    cs_decoder_decoded_andMatrixInput_10_11,cs_decoder_decoded_andMatrixInput_11_10,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1}; // @[Cat.scala 31:58]
  wire [26:0] _cs_decoder_decoded_T_62 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_hi_lo_29,
    cs_decoder_decoded_lo_31}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_63 = &_cs_decoder_decoded_T_62; // @[pla.scala 98:74]
  wire [6:0] _cs_decoder_decoded_T_64 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_65 = &_cs_decoder_decoded_T_64; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_15_4 = cs_decoder_decoded_invInputs[15]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_16_1 = cs_decoder_decoded_invInputs[16]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_17_1 = cs_decoder_decoded_invInputs[17]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_18_1 = cs_decoder_decoded_invInputs[18]; // @[pla.scala 91:29]
  wire  cs_decoder_decoded_andMatrixInput_19_1 = cs_decoder_decoded_invInputs[19]; // @[pla.scala 91:29]
  wire [14:0] cs_decoder_decoded_lo_33 = {cs_decoder_decoded_andMatrixInput_16_1,cs_decoder_decoded_andMatrixInput_17_1,
    cs_decoder_decoded_andMatrixInput_18_1,cs_decoder_decoded_andMatrixInput_19_1,cs_decoder_decoded_andMatrixInput_16,
    cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,
    cs_decoder_decoded_lo_18}; // @[Cat.scala 31:58]
  wire [7:0] cs_decoder_decoded_hi_lo_31 = {cs_decoder_decoded_andMatrixInput_8_17,
    cs_decoder_decoded_andMatrixInput_9_13,cs_decoder_decoded_andMatrixInput_10_11,
    cs_decoder_decoded_andMatrixInput_11_10,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_15_4}; // @[Cat.scala 31:58]
  wire [30:0] _cs_decoder_decoded_T_66 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_24
    ,cs_decoder_decoded_hi_lo_31,cs_decoder_decoded_lo_33}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_67 = &_cs_decoder_decoded_T_66; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_7_26 = io_enq_ctrl_flow_instr[12]; // @[pla.scala 90:45]
  wire [9:0] _cs_decoder_decoded_T_68 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_69 = &_cs_decoder_decoded_T_68; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_35 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_70 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_lo_35}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_71 = &_cs_decoder_decoded_T_70; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_72 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_35}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_73 = &_cs_decoder_decoded_T_72; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_74 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_18}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_75 = &_cs_decoder_decoded_T_74; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_38 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_76 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_38}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_77 = &_cs_decoder_decoded_T_76; // @[pla.scala 98:74]
  wire [15:0] _cs_decoder_decoded_T_78 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_21}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_79 = &_cs_decoder_decoded_T_78; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_80 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_1}
    ; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_81 = &_cs_decoder_decoded_T_80; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_82 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_26
    ,cs_decoder_decoded_andMatrixInput_7_1}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_83 = &_cs_decoder_decoded_T_82; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_84 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_26
    }; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_85 = &_cs_decoder_decoded_T_84; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_7_35 = io_enq_ctrl_flow_instr[13]; // @[pla.scala 90:45]
  wire [7:0] _cs_decoder_decoded_T_86 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_35}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_87 = &_cs_decoder_decoded_T_86; // @[pla.scala 98:74]
  wire [6:0] _cs_decoder_decoded_T_88 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,cs_decoder_decoded_andMatrixInput_5,
    cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_89 = &_cs_decoder_decoded_T_88; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_90 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,cs_decoder_decoded_andMatrixInput_5,
    cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_91 = &_cs_decoder_decoded_T_90; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_92 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_93 = &_cs_decoder_decoded_T_92; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_94 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_95 = &_cs_decoder_decoded_T_94; // @[pla.scala 98:74]
  wire [12:0] cs_decoder_decoded_lo_48 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_15_3,cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_lo_16}; // @[Cat.scala 31:58]
  wire [5:0] cs_decoder_decoded_hi_lo_46 = {cs_decoder_decoded_andMatrixInput_7_24,
    cs_decoder_decoded_andMatrixInput_8_17,cs_decoder_decoded_andMatrixInput_9_13,
    cs_decoder_decoded_andMatrixInput_10_11,cs_decoder_decoded_andMatrixInput_11_10,cs_decoder_decoded_andMatrixInput_6}
    ; // @[Cat.scala 31:58]
  wire [25:0] _cs_decoder_decoded_T_96 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_hi_lo_46,
    cs_decoder_decoded_lo_48}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_97 = &_cs_decoder_decoded_T_96; // @[pla.scala 98:74]
  wire [12:0] cs_decoder_decoded_lo_49 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_15_3,cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_lo_16}; // @[Cat.scala 31:58]
  wire [25:0] _cs_decoder_decoded_T_98 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_hi_lo_46,
    cs_decoder_decoded_lo_49}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_99 = &_cs_decoder_decoded_T_98; // @[pla.scala 98:74]
  wire [12:0] cs_decoder_decoded_lo_50 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_lo_16}; // @[Cat.scala 31:58]
  wire [25:0] _cs_decoder_decoded_T_100 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_hi_lo_46,
    cs_decoder_decoded_lo_50}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_101 = &_cs_decoder_decoded_T_100; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_102 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_103 = &_cs_decoder_decoded_T_102; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_104 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_105 = &_cs_decoder_decoded_T_104; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_106 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_107 = &_cs_decoder_decoded_T_106; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_108 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_109 = &_cs_decoder_decoded_T_108; // @[pla.scala 98:74]
  wire [4:0] cs_decoder_decoded_lo_55 = {cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12}; // @[Cat.scala 31:58]
  wire [10:0] _cs_decoder_decoded_T_110 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_lo_55}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_111 = &_cs_decoder_decoded_T_110; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_56 = {cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_11,
    cs_decoder_decoded_andMatrixInput_12}; // @[Cat.scala 31:58]
  wire [11:0] _cs_decoder_decoded_T_112 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_lo_56}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_113 = &_cs_decoder_decoded_T_112; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_57 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_T_114 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_57}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_115 = &_cs_decoder_decoded_T_114; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_58 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_T_116 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_58}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_117 = &_cs_decoder_decoded_T_116; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_59 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_T_118 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_59}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_119 = &_cs_decoder_decoded_T_118; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_60 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_120 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_60}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_121 = &_cs_decoder_decoded_T_120; // @[pla.scala 98:74]
  wire [15:0] _cs_decoder_decoded_T_122 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_lo_21}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_123 = &_cs_decoder_decoded_T_122; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_124 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_35
    }; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_125 = &_cs_decoder_decoded_T_124; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_126 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_35}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_127 = &_cs_decoder_decoded_T_126; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_7_55 = io_enq_ctrl_flow_instr[14]; // @[pla.scala 90:45]
  wire [7:0] _cs_decoder_decoded_T_128 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_55}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_129 = &_cs_decoder_decoded_T_128; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_130 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_55}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_131 = &_cs_decoder_decoded_T_130; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_132 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_andMatrixInput_7_55}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_133 = &_cs_decoder_decoded_T_132; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_134 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_andMatrixInput_7_55}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_135 = &_cs_decoder_decoded_T_134; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_136 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_55}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_137 = &_cs_decoder_decoded_T_136; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_69 = {cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_138 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_69}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_139 = &_cs_decoder_decoded_T_138; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_140 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_69}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_141 = &_cs_decoder_decoded_T_140; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_142 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_69}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_143 = &_cs_decoder_decoded_T_142; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_72 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_144 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_72}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_145 = &_cs_decoder_decoded_T_144; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_73 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_146 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_73}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_147 = &_cs_decoder_decoded_T_146; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_148 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_55
    }; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_149 = &_cs_decoder_decoded_T_148; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_75 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_150 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_75}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_151 = &_cs_decoder_decoded_T_150; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_152 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_69}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_153 = &_cs_decoder_decoded_T_152; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_154 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_55
    }; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_155 = &_cs_decoder_decoded_T_154; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_156 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_26
    ,cs_decoder_decoded_andMatrixInput_7_55}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_157 = &_cs_decoder_decoded_T_156; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_158 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_26
    ,cs_decoder_decoded_andMatrixInput_7_55}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_159 = &_cs_decoder_decoded_T_158; // @[pla.scala 98:74]
  wire [8:0] _cs_decoder_decoded_T_160 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_andMatrixInput_7_55}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_161 = &_cs_decoder_decoded_T_160; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_162 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_lo_69}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_163 = &_cs_decoder_decoded_T_162; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_82 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,
    cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_164 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_82}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_165 = &_cs_decoder_decoded_T_164; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_83 = {cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_166 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_lo_83}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_167 = &_cs_decoder_decoded_T_166; // @[pla.scala 98:74]
  wire [7:0] _cs_decoder_decoded_T_168 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_7_55
    }; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_169 = &_cs_decoder_decoded_T_168; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_85 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_170 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_85}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_171 = &_cs_decoder_decoded_T_170; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_86 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_172 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_86}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_173 = &_cs_decoder_decoded_T_172; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_7_78 = io_enq_ctrl_flow_instr[25]; // @[pla.scala 90:45]
  wire [6:0] cs_decoder_decoded_lo_87 = {cs_decoder_decoded_andMatrixInput_7_78,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_174 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_87}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_175 = &_cs_decoder_decoded_T_174; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_176 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_87}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_177 = &_cs_decoder_decoded_T_176; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_89 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_78,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_178 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_89}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_179 = &_cs_decoder_decoded_T_178; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_90 = {cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_78,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_180 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_90}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_181 = &_cs_decoder_decoded_T_180; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_91 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_7_78,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_182 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_91}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_183 = &_cs_decoder_decoded_T_182; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_92 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_7_78,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_184 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_92}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_185 = &_cs_decoder_decoded_T_184; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_93 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_7_78,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_186 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_lo_93}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_187 = &_cs_decoder_decoded_T_186; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_94 = {cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_7_78,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_188 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_94}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_189 = &_cs_decoder_decoded_T_188; // @[pla.scala 98:74]
  wire [13:0] _cs_decoder_decoded_T_190 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_lo_87}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_191 = &_cs_decoder_decoded_T_190; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_192 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_lo_87}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_193 = &_cs_decoder_decoded_T_192; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_194 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_lo_87}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_195 = &_cs_decoder_decoded_T_194; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_196 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_lo_87}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_197 = &_cs_decoder_decoded_T_196; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_11_50 = io_enq_ctrl_flow_instr[27]; // @[pla.scala 90:45]
  wire [7:0] cs_decoder_decoded_lo_99 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_198 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_99}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_199 = &_cs_decoder_decoded_T_198; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_100 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [16:0] _cs_decoder_decoded_T_200 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_lo_100}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_201 = &_cs_decoder_decoded_T_200; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_101 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_202 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_101}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_203 = &_cs_decoder_decoded_T_202; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_102 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_T_204 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_102}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_205 = &_cs_decoder_decoded_T_204; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_103 = {cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_206 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_103}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_207 = &_cs_decoder_decoded_T_206; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_104 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_208 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_104}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_209 = &_cs_decoder_decoded_T_208; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_105 = {cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_210 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_105}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_211 = &_cs_decoder_decoded_T_210; // @[pla.scala 98:74]
  wire [16:0] _cs_decoder_decoded_T_212 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_lo_105}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_213 = &_cs_decoder_decoded_T_212; // @[pla.scala 98:74]
  wire [16:0] _cs_decoder_decoded_T_214 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_lo_105}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_215 = &_cs_decoder_decoded_T_214; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_108 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_7_78,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_216 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_108}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_217 = &_cs_decoder_decoded_T_216; // @[pla.scala 98:74]
  wire [16:0] _cs_decoder_decoded_T_218 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_lo_108}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_219 = &_cs_decoder_decoded_T_218; // @[pla.scala 98:74]
  wire [15:0] _cs_decoder_decoded_T_220 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_lo_108}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_221 = &_cs_decoder_decoded_T_220; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_111 = {cs_decoder_decoded_andMatrixInput_7_78,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_222 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_lo_111}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_223 = &_cs_decoder_decoded_T_222; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_112 = {cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_7_78,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_224 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_112}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_225 = &_cs_decoder_decoded_T_224; // @[pla.scala 98:74]
  wire [15:0] _cs_decoder_decoded_T_226 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_lo_112}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_227 = &_cs_decoder_decoded_T_226; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_18_5 = io_enq_ctrl_flow_instr[28]; // @[pla.scala 90:45]
  wire [9:0] cs_decoder_decoded_lo_114 = {cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_hi_lo_112 = {cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_15_3}; // @[Cat.scala 31:58]
  wire [20:0] _cs_decoder_decoded_T_228 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_112,cs_decoder_decoded_lo_114}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_229 = &_cs_decoder_decoded_T_228; // @[pla.scala 98:74]
  wire [4:0] cs_decoder_decoded_lo_lo_106 = {cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5
    ,cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [9:0] cs_decoder_decoded_lo_115 = {cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [9:0] cs_decoder_decoded_hi_115 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire [19:0] _cs_decoder_decoded_T_230 = {cs_decoder_decoded_hi_115,cs_decoder_decoded_lo_115}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_231 = &_cs_decoder_decoded_T_230; // @[pla.scala 98:74]
  wire [20:0] _cs_decoder_decoded_T_232 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_112,cs_decoder_decoded_lo_115}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_233 = &_cs_decoder_decoded_T_232; // @[pla.scala 98:74]
  wire [18:0] _cs_decoder_decoded_T_234 = {cs_decoder_decoded_hi_115,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_235 = &_cs_decoder_decoded_T_234; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_118 = {cs_decoder_decoded_andMatrixInput_15_3,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [19:0] _cs_decoder_decoded_T_236 = {cs_decoder_decoded_hi_115,cs_decoder_decoded_lo_118}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_237 = &_cs_decoder_decoded_T_236; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_hi_119 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_15_3}; // @[Cat.scala 31:58]
  wire [18:0] _cs_decoder_decoded_T_238 = {cs_decoder_decoded_hi_119,cs_decoder_decoded_andMatrixInput_16,
    cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_239 = &_cs_decoder_decoded_T_238; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_120 = {cs_decoder_decoded_andMatrixInput_15_3,cs_decoder_decoded_andMatrixInput_16,
    cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [9:0] cs_decoder_decoded_hi_120 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire [19:0] _cs_decoder_decoded_T_240 = {cs_decoder_decoded_hi_120,cs_decoder_decoded_lo_120}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_241 = &_cs_decoder_decoded_T_240; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_21_5 = io_enq_ctrl_flow_instr[21]; // @[pla.scala 90:45]
  wire [6:0] cs_decoder_decoded_lo_lo_112 = {cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] cs_decoder_decoded_lo_121 = {cs_decoder_decoded_andMatrixInput_16_1,cs_decoder_decoded_andMatrixInput_17_1
    ,cs_decoder_decoded_andMatrixInput_18_1,cs_decoder_decoded_andMatrixInput_19_1,
    cs_decoder_decoded_andMatrixInput_15_3,cs_decoder_decoded_andMatrixInput_21_5,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_lo_lo_112}; // @[Cat.scala 31:58]
  wire [30:0] _cs_decoder_decoded_T_242 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_24
    ,cs_decoder_decoded_hi_lo_31,cs_decoder_decoded_lo_121}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_243 = &_cs_decoder_decoded_T_242; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_122 = {cs_decoder_decoded_andMatrixInput_21_5,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [19:0] _cs_decoder_decoded_T_244 = {cs_decoder_decoded_hi_115,cs_decoder_decoded_lo_122}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_245 = &_cs_decoder_decoded_T_244; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_10_76 = io_enq_ctrl_flow_instr[22]; // @[pla.scala 90:45]
  wire [9:0] cs_decoder_decoded_lo_123 = {cs_decoder_decoded_andMatrixInput_10_76,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [19:0] _cs_decoder_decoded_T_246 = {cs_decoder_decoded_hi_115,cs_decoder_decoded_lo_123}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_247 = &_cs_decoder_decoded_T_246; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_20_8 = io_enq_ctrl_flow_instr[20]; // @[pla.scala 90:45]
  wire [7:0] cs_decoder_decoded_lo_lo_115 = {cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] cs_decoder_decoded_lo_124 = {cs_decoder_decoded_andMatrixInput_16_1,cs_decoder_decoded_andMatrixInput_17_1
    ,cs_decoder_decoded_andMatrixInput_18_1,cs_decoder_decoded_andMatrixInput_19_1,
    cs_decoder_decoded_andMatrixInput_20_8,cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_10_76,
    cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_lo_lo_115}; // @[Cat.scala 31:58]
  wire [31:0] _cs_decoder_decoded_T_248 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_24
    ,cs_decoder_decoded_hi_lo_31,cs_decoder_decoded_lo_124}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_249 = &_cs_decoder_decoded_T_248; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_12_72 = io_enq_ctrl_flow_instr[23]; // @[pla.scala 90:45]
  wire [9:0] cs_decoder_decoded_lo_125 = {cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_12_72,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_hi_lo_123 = {cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_16}; // @[Cat.scala 31:58]
  wire [20:0] _cs_decoder_decoded_T_250 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_123,cs_decoder_decoded_lo_125}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_251 = &_cs_decoder_decoded_T_250; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_126 = {cs_decoder_decoded_andMatrixInput_11_10,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_7_78,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_hi_lo_124 = {cs_decoder_decoded_andMatrixInput_4_22,
    cs_decoder_decoded_andMatrixInput_7_24,cs_decoder_decoded_andMatrixInput_8_17,cs_decoder_decoded_andMatrixInput_9_13
    ,cs_decoder_decoded_andMatrixInput_10_11}; // @[Cat.scala 31:58]
  wire [20:0] _cs_decoder_decoded_T_252 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_hi_lo_124,cs_decoder_decoded_lo_126}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_253 = &_cs_decoder_decoded_T_252; // @[pla.scala 98:74]
  wire [10:0] cs_decoder_decoded_lo_127 = {cs_decoder_decoded_andMatrixInput_11_10,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_7_78,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_lo_lo_106}; // @[Cat.scala 31:58]
  wire [21:0] _cs_decoder_decoded_T_254 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_hi_lo_124,cs_decoder_decoded_lo_127}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_255 = &_cs_decoder_decoded_T_254; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_128 = {cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,
    cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_T_256 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_lo_128}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_257 = &_cs_decoder_decoded_T_256; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_lo_120 = {cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] cs_decoder_decoded_lo_129 = {cs_decoder_decoded_andMatrixInput_16_1,cs_decoder_decoded_andMatrixInput_17_1
    ,cs_decoder_decoded_andMatrixInput_18_1,cs_decoder_decoded_andMatrixInput_19_1,cs_decoder_decoded_andMatrixInput_16,
    cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,
    cs_decoder_decoded_lo_lo_120}; // @[Cat.scala 31:58]
  wire [30:0] _cs_decoder_decoded_T_258 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_24
    ,cs_decoder_decoded_hi_lo_31,cs_decoder_decoded_lo_129}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_259 = &_cs_decoder_decoded_T_258; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_130 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_260 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_130}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_261 = &_cs_decoder_decoded_T_260; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_lo_122 = {cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_18_5,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] cs_decoder_decoded_lo_131 = {cs_decoder_decoded_andMatrixInput_16_1,cs_decoder_decoded_andMatrixInput_17_1
    ,cs_decoder_decoded_andMatrixInput_18_1,cs_decoder_decoded_andMatrixInput_19_1,
    cs_decoder_decoded_andMatrixInput_20_8,cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_lo_lo_122}; // @[Cat.scala 31:58]
  wire [31:0] _cs_decoder_decoded_T_262 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_24
    ,cs_decoder_decoded_hi_lo_31,cs_decoder_decoded_lo_131}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_263 = &_cs_decoder_decoded_T_262; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_12_79 = io_enq_ctrl_flow_instr[29]; // @[pla.scala 90:45]
  wire [6:0] cs_decoder_decoded_lo_132 = {cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_264 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_lo_132}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_265 = &_cs_decoder_decoded_T_264; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_133 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_266 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_lo_133}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_267 = &_cs_decoder_decoded_T_266; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_134 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_268 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_134}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_269 = &_cs_decoder_decoded_T_268; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_270 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_134}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_271 = &_cs_decoder_decoded_T_270; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_136 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_272 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_lo_136}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_273 = &_cs_decoder_decoded_T_272; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_137 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_274 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_137}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_275 = &_cs_decoder_decoded_T_274; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_138 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_276 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_138}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_277 = &_cs_decoder_decoded_T_276; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_139 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_T_278 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_139}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_279 = &_cs_decoder_decoded_T_278; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_140 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}
    ; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_280 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_140}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_281 = &_cs_decoder_decoded_T_280; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_141 = {cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_282 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_lo_141}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_283 = &_cs_decoder_decoded_T_282; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_142 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}
    ; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_284 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_142}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_285 = &_cs_decoder_decoded_T_284; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_286 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_lo_141}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_287 = &_cs_decoder_decoded_T_286; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_144 = {cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}
    ; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_288 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_144}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_289 = &_cs_decoder_decoded_T_288; // @[pla.scala 98:74]
  wire [15:0] _cs_decoder_decoded_T_290 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_144}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_291 = &_cs_decoder_decoded_T_290; // @[pla.scala 98:74]
  wire [15:0] _cs_decoder_decoded_T_292 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_35,
    cs_decoder_decoded_lo_144}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_293 = &_cs_decoder_decoded_T_292; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_147 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_294 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_147}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_295 = &_cs_decoder_decoded_T_294; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_148 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79
    ,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_296 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_148}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_297 = &_cs_decoder_decoded_T_296; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_149 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,
    cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_298 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_149}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_299 = &_cs_decoder_decoded_T_298; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_150 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}
    ; // @[Cat.scala 31:58]
  wire [16:0] _cs_decoder_decoded_T_300 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_lo_150}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_301 = &_cs_decoder_decoded_T_300; // @[pla.scala 98:74]
  wire [16:0] _cs_decoder_decoded_T_302 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_lo_150}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_303 = &_cs_decoder_decoded_T_302; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_152 = {cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}
    ; // @[Cat.scala 31:58]
  wire [16:0] _cs_decoder_decoded_T_304 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_lo_152}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_305 = &_cs_decoder_decoded_T_304; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_153 = {cs_decoder_decoded_andMatrixInput_21_5,cs_decoder_decoded_andMatrixInput_10_76
    ,cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_hi_lo_151 = {cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_20_8}
    ; // @[Cat.scala 31:58]
  wire [20:0] _cs_decoder_decoded_T_306 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_151,cs_decoder_decoded_lo_153}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_307 = &_cs_decoder_decoded_T_306; // @[pla.scala 98:74]
  wire [4:0] cs_decoder_decoded_lo_lo_145 = {cs_decoder_decoded_andMatrixInput_11_50,
    cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [10:0] cs_decoder_decoded_lo_154 = {cs_decoder_decoded_andMatrixInput_21_5,
    cs_decoder_decoded_andMatrixInput_10_76,cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_lo_lo_145}; // @[Cat.scala 31:58]
  wire [21:0] _cs_decoder_decoded_T_308 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_151,cs_decoder_decoded_lo_154}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_309 = &_cs_decoder_decoded_T_308; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_155 = {cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_11,
    cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_12_79}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_310 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_155}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_311 = &_cs_decoder_decoded_T_310; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_156 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_312 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_156}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_313 = &_cs_decoder_decoded_T_312; // @[pla.scala 98:74]
  wire [4:0] cs_decoder_decoded_lo_lo_148 = {cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5
    ,cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14
    }; // @[Cat.scala 31:58]
  wire [10:0] cs_decoder_decoded_lo_157 = {cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_lo_lo_148}; // @[Cat.scala 31:58]
  wire [21:0] _cs_decoder_decoded_T_314 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_112,cs_decoder_decoded_lo_157}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_315 = &_cs_decoder_decoded_T_314; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_10_111 = io_enq_ctrl_flow_instr[24]; // @[pla.scala 90:45]
  wire [8:0] cs_decoder_decoded_lo_158 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_10_111
    ,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,
    cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [17:0] _cs_decoder_decoded_T_316 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_lo_158}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_317 = &_cs_decoder_decoded_T_316; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_159 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_7_78,cs_decoder_decoded_andMatrixInput_18_5,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}
    ; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_318 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_159}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_319 = &_cs_decoder_decoded_T_318; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_160 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_7_78,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_18_5,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}
    ; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_320 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_160}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_321 = &_cs_decoder_decoded_T_320; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_11_112 = io_enq_ctrl_flow_instr[26]; // @[pla.scala 90:45]
  wire [6:0] cs_decoder_decoded_lo_161 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_11_112,cs_decoder_decoded_andMatrixInput_11,
    cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_12_79}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_322 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_161}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_323 = &_cs_decoder_decoded_T_322; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_162 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_7_78,cs_decoder_decoded_andMatrixInput_11_50,
    cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_324 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_162}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_325 = &_cs_decoder_decoded_T_324; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_163 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_7_78,cs_decoder_decoded_andMatrixInput_11_112,
    cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_18_5,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_326 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_163}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_327 = &_cs_decoder_decoded_T_326; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_14_91 = io_enq_ctrl_flow_instr[30]; // @[pla.scala 90:45]
  wire [7:0] cs_decoder_decoded_lo_164 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_328 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_164}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_329 = &_cs_decoder_decoded_T_328; // @[pla.scala 98:74]
  wire [16:0] _cs_decoder_decoded_T_330 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_lo_164}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_331 = &_cs_decoder_decoded_T_330; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_166 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_14_91,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_T_332 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_166}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_333 = &_cs_decoder_decoded_T_332; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_167 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_334 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_167}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_335 = &_cs_decoder_decoded_T_334; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_168 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_336 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_168}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_337 = &_cs_decoder_decoded_T_336; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_169 = {cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_338 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_169}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_339 = &_cs_decoder_decoded_T_338; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_170 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,
    cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_340 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_170}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_341 = &_cs_decoder_decoded_T_340; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_171 = {cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_342 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_171}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_343 = &_cs_decoder_decoded_T_342; // @[pla.scala 98:74]
  wire [15:0] _cs_decoder_decoded_T_344 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_170}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_345 = &_cs_decoder_decoded_T_344; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_173 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_346 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_173}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_347 = &_cs_decoder_decoded_T_346; // @[pla.scala 98:74]
  wire [8:0] cs_decoder_decoded_lo_174 = {cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_14_91}; // @[Cat.scala 31:58]
  wire [17:0] _cs_decoder_decoded_T_348 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_20_8,
    cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_lo_174}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_349 = &_cs_decoder_decoded_T_348; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_hi_175 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_20_8,
    cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17}; // @[Cat.scala 31:58]
  wire [18:0] _cs_decoder_decoded_T_350 = {cs_decoder_decoded_hi_175,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_351 = &_cs_decoder_decoded_T_350; // @[pla.scala 98:74]
  wire [8:0] cs_decoder_decoded_lo_176 = {cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_7_78,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_14_91}; // @[Cat.scala 31:58]
  wire [17:0] _cs_decoder_decoded_T_352 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_15_3,
    cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_lo_176}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_353 = &_cs_decoder_decoded_T_352; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_hi_177 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_15_3,
    cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17}; // @[Cat.scala 31:58]
  wire [18:0] _cs_decoder_decoded_T_354 = {cs_decoder_decoded_hi_177,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_7_78,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_355 = &_cs_decoder_decoded_T_354; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_178 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_356 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_178}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_357 = &_cs_decoder_decoded_T_356; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_179 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_358 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_179}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_359 = &_cs_decoder_decoded_T_358; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_180 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,
    cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_360 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_180}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_361 = &_cs_decoder_decoded_T_360; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_181 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_362 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_181}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_363 = &_cs_decoder_decoded_T_362; // @[pla.scala 98:74]
  wire [8:0] cs_decoder_decoded_lo_182 = {cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,
    cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14_91,
    cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [17:0] _cs_decoder_decoded_T_364 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_15_3,
    cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_lo_182}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_365 = &_cs_decoder_decoded_T_364; // @[pla.scala 98:74]
  wire [18:0] _cs_decoder_decoded_T_366 = {cs_decoder_decoded_hi_177,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_367 = &_cs_decoder_decoded_T_366; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_184 = {cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [19:0] _cs_decoder_decoded_T_368 = {cs_decoder_decoded_hi_115,cs_decoder_decoded_lo_184}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_369 = &_cs_decoder_decoded_T_368; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_185 = {cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [9:0] cs_decoder_decoded_hi_185 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_4,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_15_3}; // @[Cat.scala 31:58]
  wire [19:0] _cs_decoder_decoded_T_370 = {cs_decoder_decoded_hi_185,cs_decoder_decoded_lo_185}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_371 = &_cs_decoder_decoded_T_370; // @[pla.scala 98:74]
  wire [20:0] _cs_decoder_decoded_T_372 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_112,cs_decoder_decoded_lo_185}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_373 = &_cs_decoder_decoded_T_372; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_hi_187 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_4,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_16}; // @[Cat.scala 31:58]
  wire [19:0] _cs_decoder_decoded_T_374 = {cs_decoder_decoded_hi_187,cs_decoder_decoded_lo_185}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_375 = &_cs_decoder_decoded_T_374; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_188 = {cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_376 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_5_12,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_188}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_377 = &_cs_decoder_decoded_T_376; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_189 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14
    }; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_378 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_189}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_379 = &_cs_decoder_decoded_T_378; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_190 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14
    }; // @[Cat.scala 31:58]
  wire [16:0] _cs_decoder_decoded_T_380 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_lo_190}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_381 = &_cs_decoder_decoded_T_380; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_191 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_382 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_191}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_383 = &_cs_decoder_decoded_T_382; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_192 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14
    }; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_384 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_192}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_385 = &_cs_decoder_decoded_T_384; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_193 = {cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14
    }; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_386 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_193}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_387 = &_cs_decoder_decoded_T_386; // @[pla.scala 98:74]
  wire [4:0] cs_decoder_decoded_hi_lo_192 = {cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_20_8}; // @[Cat.scala 31:58]
  wire [20:0] _cs_decoder_decoded_T_388 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_192,cs_decoder_decoded_lo_184}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_389 = &_cs_decoder_decoded_T_388; // @[pla.scala 98:74]
  wire [4:0] cs_decoder_decoded_hi_lo_193 = {cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_20_8,
    cs_decoder_decoded_andMatrixInput_16}; // @[Cat.scala 31:58]
  wire [20:0] _cs_decoder_decoded_T_390 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_4,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_hi_lo_193,cs_decoder_decoded_lo_185}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_391 = &_cs_decoder_decoded_T_390; // @[pla.scala 98:74]
  wire [4:0] cs_decoder_decoded_hi_lo_194 = {cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_15_3,
    cs_decoder_decoded_andMatrixInput_21_5}; // @[Cat.scala 31:58]
  wire [20:0] _cs_decoder_decoded_T_392 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_4_7,cs_decoder_decoded_andMatrixInput_4,
    cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_hi_lo_194,cs_decoder_decoded_lo_185}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_393 = &_cs_decoder_decoded_T_392; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_197 = {cs_decoder_decoded_andMatrixInput_10_76,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [20:0] _cs_decoder_decoded_T_394 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_123,cs_decoder_decoded_lo_197}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_395 = &_cs_decoder_decoded_T_394; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_198 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14
    }; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_396 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_lo_198}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_397 = &_cs_decoder_decoded_T_396; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_199 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14
    }; // @[Cat.scala 31:58]
  wire [16:0] _cs_decoder_decoded_T_398 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_lo_199}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_399 = &_cs_decoder_decoded_T_398; // @[pla.scala 98:74]
  wire [4:0] cs_decoder_decoded_lo_lo_191 = {cs_decoder_decoded_andMatrixInput_11_50,
    cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_14_91
    ,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [10:0] cs_decoder_decoded_lo_200 = {cs_decoder_decoded_andMatrixInput_21_5,
    cs_decoder_decoded_andMatrixInput_10_76,cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_lo_lo_191}; // @[Cat.scala 31:58]
  wire [21:0] _cs_decoder_decoded_T_400 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_151,cs_decoder_decoded_lo_200}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_401 = &_cs_decoder_decoded_T_400; // @[pla.scala 98:74]
  wire [10:0] cs_decoder_decoded_lo_201 = {cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_andMatrixInput_12_72,cs_decoder_decoded_andMatrixInput_10_111,
    cs_decoder_decoded_andMatrixInput_7_78,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_lo_lo_191}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_hi_lo_199 = {cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_7_26,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_7_55,cs_decoder_decoded_andMatrixInput_15_3}
    ; // @[Cat.scala 31:58]
  wire [21:0] _cs_decoder_decoded_T_402 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_199,cs_decoder_decoded_lo_201}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_403 = &_cs_decoder_decoded_T_402; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_lo_193 = {cs_decoder_decoded_andMatrixInput_10_111,
    cs_decoder_decoded_andMatrixInput_7_78,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11_50,
    cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [15:0] cs_decoder_decoded_lo_202 = {cs_decoder_decoded_andMatrixInput_16_1,cs_decoder_decoded_andMatrixInput_17_1
    ,cs_decoder_decoded_andMatrixInput_18_1,cs_decoder_decoded_andMatrixInput_19_1,
    cs_decoder_decoded_andMatrixInput_15_3,cs_decoder_decoded_andMatrixInput_21_5,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_lo_lo_193}; // @[Cat.scala 31:58]
  wire [31:0] _cs_decoder_decoded_T_404 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_24
    ,cs_decoder_decoded_hi_lo_31,cs_decoder_decoded_lo_202}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_405 = &_cs_decoder_decoded_T_404; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_203 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_7_78,
    cs_decoder_decoded_andMatrixInput_11_112,cs_decoder_decoded_andMatrixInput_11_50,
    cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_14}; // @[Cat.scala 31:58]
  wire [16:0] _cs_decoder_decoded_T_406 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_lo_203}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_407 = &_cs_decoder_decoded_T_406; // @[pla.scala 98:74]
  wire  cs_decoder_decoded_andMatrixInput_12_151 = io_enq_ctrl_flow_instr[31]; // @[pla.scala 90:45]
  wire [5:0] cs_decoder_decoded_lo_204 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_T_408 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_204}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_409 = &_cs_decoder_decoded_T_408; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_205 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_410 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_205}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_411 = &_cs_decoder_decoded_T_410; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_206 = {cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_11_2,cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_412 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_206}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_413 = &_cs_decoder_decoded_T_412; // @[pla.scala 98:74]
  wire [14:0] _cs_decoder_decoded_T_414 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_lo_206}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_415 = &_cs_decoder_decoded_T_414; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_208 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_T_416 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_208}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_417 = &_cs_decoder_decoded_T_416; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_209 = {cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,
    cs_decoder_decoded_andMatrixInput_12_79,cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_418 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_lo_209}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_419 = &_cs_decoder_decoded_T_418; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_210 = {cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_13,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [14:0] _cs_decoder_decoded_T_420 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_lo_210}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_421 = &_cs_decoder_decoded_T_420; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_211 = {cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,
    cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14_91,
    cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_422 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_lo_211}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_423 = &_cs_decoder_decoded_T_422; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_212 = {cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14_91,
    cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_424 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_lo_212}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_425 = &_cs_decoder_decoded_T_424; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_lo_213 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_14_91,
    cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_T_426 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_213}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_427 = &_cs_decoder_decoded_T_426; // @[pla.scala 98:74]
  wire [7:0] cs_decoder_decoded_lo_214 = {cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,
    cs_decoder_decoded_andMatrixInput_13,cs_decoder_decoded_andMatrixInput_14_91,
    cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [15:0] _cs_decoder_decoded_T_428 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_lo_214}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_429 = &_cs_decoder_decoded_T_428; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_215 = {cs_decoder_decoded_andMatrixInput_15_3,cs_decoder_decoded_andMatrixInput_16,
    cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [9:0] cs_decoder_decoded_hi_215 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3}; // @[Cat.scala 31:58]
  wire [19:0] _cs_decoder_decoded_T_430 = {cs_decoder_decoded_hi_215,cs_decoder_decoded_lo_215}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_431 = &_cs_decoder_decoded_T_430; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_216 = {cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,
    cs_decoder_decoded_andMatrixInput_10,cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_hi_lo_214 = {cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_6,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_15_3}; // @[Cat.scala 31:58]
  wire [20:0] _cs_decoder_decoded_T_432 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_214,cs_decoder_decoded_lo_216}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_433 = &_cs_decoder_decoded_T_432; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_217 = {cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [9:0] cs_decoder_decoded_hi_217 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_andMatrixInput_4_22,cs_decoder_decoded_andMatrixInput_7_1,
    cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_15_3}; // @[Cat.scala 31:58]
  wire [19:0] _cs_decoder_decoded_T_434 = {cs_decoder_decoded_hi_217,cs_decoder_decoded_lo_217}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_435 = &_cs_decoder_decoded_T_434; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_218 = {cs_decoder_decoded_andMatrixInput_17,cs_decoder_decoded_andMatrixInput_18,
    cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_9_1,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_hi_lo_216 = {cs_decoder_decoded_andMatrixInput_4_22,
    cs_decoder_decoded_andMatrixInput_7_1,cs_decoder_decoded_andMatrixInput_6_3,cs_decoder_decoded_andMatrixInput_15_3,
    cs_decoder_decoded_andMatrixInput_16}; // @[Cat.scala 31:58]
  wire [20:0] _cs_decoder_decoded_T_436 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_216,cs_decoder_decoded_lo_218}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_437 = &_cs_decoder_decoded_T_436; // @[pla.scala 98:74]
  wire [6:0] cs_decoder_decoded_lo_219 = {cs_decoder_decoded_andMatrixInput_7_35,cs_decoder_decoded_andMatrixInput_6_3,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_12,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [13:0] _cs_decoder_decoded_T_438 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2_6,cs_decoder_decoded_andMatrixInput_3_6,cs_decoder_decoded_andMatrixInput_4_1,
    cs_decoder_decoded_andMatrixInput_5_12,cs_decoder_decoded_andMatrixInput_5,cs_decoder_decoded_lo_219}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_439 = &_cs_decoder_decoded_T_438; // @[pla.scala 98:74]
  wire [9:0] cs_decoder_decoded_lo_220 = {cs_decoder_decoded_andMatrixInput_16,cs_decoder_decoded_andMatrixInput_17,
    cs_decoder_decoded_andMatrixInput_18,cs_decoder_decoded_andMatrixInput_19,cs_decoder_decoded_andMatrixInput_10,
    cs_decoder_decoded_andMatrixInput_11,cs_decoder_decoded_andMatrixInput_18_5,cs_decoder_decoded_andMatrixInput_12_79,
    cs_decoder_decoded_andMatrixInput_14_91,cs_decoder_decoded_andMatrixInput_12_151}; // @[Cat.scala 31:58]
  wire [20:0] _cs_decoder_decoded_T_440 = {cs_decoder_decoded_andMatrixInput_0,cs_decoder_decoded_andMatrixInput_1,
    cs_decoder_decoded_andMatrixInput_2,cs_decoder_decoded_andMatrixInput_3,cs_decoder_decoded_andMatrixInput_4_7,
    cs_decoder_decoded_andMatrixInput_4,cs_decoder_decoded_hi_lo_214,cs_decoder_decoded_lo_220}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_T_441 = &_cs_decoder_decoded_T_440; // @[pla.scala 98:74]
  wire [5:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_lo = {_cs_decoder_decoded_T_375,_cs_decoder_decoded_T_377,
    _cs_decoder_decoded_T_403,_cs_decoder_decoded_T_421,_cs_decoder_decoded_T_431,_cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [12:0] cs_decoder_decoded_orMatrixOutputs_lo_lo = {_cs_decoder_decoded_T_327,_cs_decoder_decoded_T_349,
    _cs_decoder_decoded_T_353,_cs_decoder_decoded_T_363,_cs_decoder_decoded_T_365,_cs_decoder_decoded_T_369,
    _cs_decoder_decoded_T_371,cs_decoder_decoded_orMatrixOutputs_lo_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] cs_decoder_decoded_orMatrixOutputs_lo_hi_lo = {_cs_decoder_decoded_T_283,_cs_decoder_decoded_T_287,
    _cs_decoder_decoded_T_299,_cs_decoder_decoded_T_307,_cs_decoder_decoded_T_311,_cs_decoder_decoded_T_319}; // @[Cat.scala 31:58]
  wire [25:0] cs_decoder_decoded_orMatrixOutputs_lo = {_cs_decoder_decoded_T_249,_cs_decoder_decoded_T_253,
    _cs_decoder_decoded_T_259,_cs_decoder_decoded_T_265,_cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273,
    _cs_decoder_decoded_T_281,cs_decoder_decoded_orMatrixOutputs_lo_hi_lo,cs_decoder_decoded_orMatrixOutputs_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_lo = {_cs_decoder_decoded_T_199,_cs_decoder_decoded_T_205,
    _cs_decoder_decoded_T_229,_cs_decoder_decoded_T_231,_cs_decoder_decoded_T_235,_cs_decoder_decoded_T_239}; // @[Cat.scala 31:58]
  wire [12:0] cs_decoder_decoded_orMatrixOutputs_hi_lo = {_cs_decoder_decoded_T_155,_cs_decoder_decoded_T_169,
    _cs_decoder_decoded_T_171,_cs_decoder_decoded_T_181,_cs_decoder_decoded_T_183,_cs_decoder_decoded_T_189,
    _cs_decoder_decoded_T_191,cs_decoder_decoded_orMatrixOutputs_hi_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] cs_decoder_decoded_orMatrixOutputs_hi_hi_lo = {_cs_decoder_decoded_T_57,_cs_decoder_decoded_T_65,
    _cs_decoder_decoded_T_111,_cs_decoder_decoded_T_139,_cs_decoder_decoded_T_145,_cs_decoder_decoded_T_153}; // @[Cat.scala 31:58]
  wire [51:0] _cs_decoder_decoded_orMatrixOutputs_T = {_cs_decoder_decoded_T_13,_cs_decoder_decoded_T_29,
    _cs_decoder_decoded_T_33,_cs_decoder_decoded_T_35,_cs_decoder_decoded_T_37,_cs_decoder_decoded_T_45,
    _cs_decoder_decoded_T_49,cs_decoder_decoded_orMatrixOutputs_hi_hi_lo,cs_decoder_decoded_orMatrixOutputs_hi_lo,
    cs_decoder_decoded_orMatrixOutputs_lo}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_1 = |_cs_decoder_decoded_orMatrixOutputs_T; // @[pla.scala 114:39]
  wire [5:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_1 = {_cs_decoder_decoded_T_295,_cs_decoder_decoded_T_317,
    _cs_decoder_decoded_T_335,_cs_decoder_decoded_T_341,_cs_decoder_decoded_T_359,_cs_decoder_decoded_T_405}; // @[Cat.scala 31:58]
  wire [11:0] cs_decoder_decoded_orMatrixOutputs_lo_1 = {_cs_decoder_decoded_T_101,_cs_decoder_decoded_T_103,
    _cs_decoder_decoded_T_125,_cs_decoder_decoded_T_149,_cs_decoder_decoded_T_203,_cs_decoder_decoded_T_243,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_1}; // @[Cat.scala 31:58]
  wire [5:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_1 = {_cs_decoder_decoded_T_73,_cs_decoder_decoded_T_77,
    _cs_decoder_decoded_T_81,_cs_decoder_decoded_T_89,_cs_decoder_decoded_T_97,_cs_decoder_decoded_T_99}; // @[Cat.scala 31:58]
  wire [24:0] _cs_decoder_decoded_orMatrixOutputs_T_2 = {_cs_decoder_decoded_T_1,_cs_decoder_decoded_T_5,
    _cs_decoder_decoded_T_7,_cs_decoder_decoded_T_17,_cs_decoder_decoded_T_59,_cs_decoder_decoded_T_63,
    _cs_decoder_decoded_T_67,cs_decoder_decoded_orMatrixOutputs_hi_lo_1,cs_decoder_decoded_orMatrixOutputs_lo_1}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_3 = |_cs_decoder_decoded_orMatrixOutputs_T_2; // @[pla.scala 114:39]
  wire [7:0] _cs_decoder_decoded_orMatrixOutputs_T_4 = {_cs_decoder_decoded_T_19,_cs_decoder_decoded_T_27,
    _cs_decoder_decoded_T_65,_cs_decoder_decoded_T_97,_cs_decoder_decoded_T_99,_cs_decoder_decoded_T_101,
    _cs_decoder_decoded_T_107,_cs_decoder_decoded_T_149}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_5 = |_cs_decoder_decoded_orMatrixOutputs_T_4; // @[pla.scala 114:39]
  wire [4:0] cs_decoder_decoded_orMatrixOutputs_lo_3 = {_cs_decoder_decoded_T_349,_cs_decoder_decoded_T_367,
    _cs_decoder_decoded_T_423,_cs_decoder_decoded_T_433,_cs_decoder_decoded_T_437}; // @[Cat.scala 31:58]
  wire [10:0] _cs_decoder_decoded_orMatrixOutputs_T_6 = {_cs_decoder_decoded_T_47,_cs_decoder_decoded_T_51,
    _cs_decoder_decoded_T_95,_cs_decoder_decoded_T_269,_cs_decoder_decoded_T_271,_cs_decoder_decoded_T_275,
    cs_decoder_decoded_orMatrixOutputs_lo_3}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_7 = |_cs_decoder_decoded_orMatrixOutputs_T_6; // @[pla.scala 114:39]
  wire [2:0] _cs_decoder_decoded_orMatrixOutputs_T_8 = {_cs_decoder_decoded_T_13,_cs_decoder_decoded_T_255,
    _cs_decoder_decoded_T_263}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_9 = |_cs_decoder_decoded_orMatrixOutputs_T_8; // @[pla.scala 114:39]
  wire [5:0] cs_decoder_decoded_orMatrixOutputs_lo_4 = {_cs_decoder_decoded_T_239,_cs_decoder_decoded_T_243,
    _cs_decoder_decoded_T_249,_cs_decoder_decoded_T_255,_cs_decoder_decoded_T_259,_cs_decoder_decoded_T_405}; // @[Cat.scala 31:58]
  wire [12:0] _cs_decoder_decoded_orMatrixOutputs_T_10 = {_cs_decoder_decoded_T_13,_cs_decoder_decoded_T_63,
    _cs_decoder_decoded_T_67,_cs_decoder_decoded_T_85,_cs_decoder_decoded_T_111,_cs_decoder_decoded_T_125,
    _cs_decoder_decoded_T_205,cs_decoder_decoded_orMatrixOutputs_lo_4}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_11 = |_cs_decoder_decoded_orMatrixOutputs_T_10; // @[pla.scala 114:39]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_14 = |_cs_decoder_decoded_T_63; // @[pla.scala 114:39]
  wire [9:0] _cs_decoder_decoded_orMatrixOutputs_T_15 = {_cs_decoder_decoded_T_45,_cs_decoder_decoded_T_49,
    _cs_decoder_decoded_T_93,_cs_decoder_decoded_T_273,_cs_decoder_decoded_T_277,_cs_decoder_decoded_T_351,
    _cs_decoder_decoded_T_355,_cs_decoder_decoded_T_365,_cs_decoder_decoded_T_429,_cs_decoder_decoded_T_441}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_16 = |_cs_decoder_decoded_orMatrixOutputs_T_15; // @[pla.scala 114:39]
  wire [6:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_lo_2 = {_cs_decoder_decoded_T_377,_cs_decoder_decoded_T_403,
    _cs_decoder_decoded_T_405,_cs_decoder_decoded_T_413,_cs_decoder_decoded_T_415,_cs_decoder_decoded_T_425,
    _cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [13:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_7 = {_cs_decoder_decoded_T_335,_cs_decoder_decoded_T_339,
    _cs_decoder_decoded_T_359,_cs_decoder_decoded_T_363,_cs_decoder_decoded_T_369,_cs_decoder_decoded_T_371,
    _cs_decoder_decoded_T_375,cs_decoder_decoded_orMatrixOutputs_lo_lo_lo_2}; // @[Cat.scala 31:58]
  wire [6:0] cs_decoder_decoded_orMatrixOutputs_lo_hi_lo_2 = {_cs_decoder_decoded_T_295,_cs_decoder_decoded_T_299,
    _cs_decoder_decoded_T_307,_cs_decoder_decoded_T_311,_cs_decoder_decoded_T_317,_cs_decoder_decoded_T_319,
    _cs_decoder_decoded_T_327}; // @[Cat.scala 31:58]
  wire [28:0] cs_decoder_decoded_orMatrixOutputs_lo_7 = {_cs_decoder_decoded_T_231,_cs_decoder_decoded_T_235,
    _cs_decoder_decoded_T_239,_cs_decoder_decoded_T_243,_cs_decoder_decoded_T_249,_cs_decoder_decoded_T_281,
    _cs_decoder_decoded_T_283,_cs_decoder_decoded_T_287,cs_decoder_decoded_orMatrixOutputs_lo_hi_lo_2,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_7}; // @[Cat.scala 31:58]
  wire [6:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_lo_2 = {_cs_decoder_decoded_T_183,_cs_decoder_decoded_T_189,
    _cs_decoder_decoded_T_191,_cs_decoder_decoded_T_199,_cs_decoder_decoded_T_203,_cs_decoder_decoded_T_205,
    _cs_decoder_decoded_T_229}; // @[Cat.scala 31:58]
  wire [13:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_7 = {_cs_decoder_decoded_T_103,_cs_decoder_decoded_T_111,
    _cs_decoder_decoded_T_125,_cs_decoder_decoded_T_139,_cs_decoder_decoded_T_145,_cs_decoder_decoded_T_171,
    _cs_decoder_decoded_T_181,cs_decoder_decoded_orMatrixOutputs_hi_lo_lo_2}; // @[Cat.scala 31:58]
  wire [6:0] cs_decoder_decoded_orMatrixOutputs_hi_hi_lo_4 = {_cs_decoder_decoded_T_61,_cs_decoder_decoded_T_63,
    _cs_decoder_decoded_T_65,_cs_decoder_decoded_T_67,_cs_decoder_decoded_T_71,_cs_decoder_decoded_T_75,
    _cs_decoder_decoded_T_85}; // @[Cat.scala 31:58]
  wire [28:0] cs_decoder_decoded_orMatrixOutputs_hi_8 = {_cs_decoder_decoded_T_1,_cs_decoder_decoded_T_5,
    _cs_decoder_decoded_T_9,_cs_decoder_decoded_T_17,_cs_decoder_decoded_T_19,_cs_decoder_decoded_T_29,
    _cs_decoder_decoded_T_33,_cs_decoder_decoded_T_35,cs_decoder_decoded_orMatrixOutputs_hi_hi_lo_4,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_7}; // @[Cat.scala 31:58]
  wire [57:0] _cs_decoder_decoded_orMatrixOutputs_T_17 = {cs_decoder_decoded_orMatrixOutputs_hi_8,
    cs_decoder_decoded_orMatrixOutputs_lo_7}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_18 = |_cs_decoder_decoded_orMatrixOutputs_T_17; // @[pla.scala 114:39]
  wire [6:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_lo_3 = {_cs_decoder_decoded_T_373,_cs_decoder_decoded_T_381,
    _cs_decoder_decoded_T_405,_cs_decoder_decoded_T_407,_cs_decoder_decoded_T_421,_cs_decoder_decoded_T_431,
    _cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [14:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_8 = {_cs_decoder_decoded_T_349,_cs_decoder_decoded_T_353,
    _cs_decoder_decoded_T_357,_cs_decoder_decoded_T_359,_cs_decoder_decoded_T_361,_cs_decoder_decoded_T_363,
    _cs_decoder_decoded_T_365,_cs_decoder_decoded_T_369,cs_decoder_decoded_orMatrixOutputs_lo_lo_lo_3}; // @[Cat.scala 31:58]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_lo_hi_lo_3 = {_cs_decoder_decoded_T_285,_cs_decoder_decoded_T_291,
    _cs_decoder_decoded_T_303,_cs_decoder_decoded_T_307,_cs_decoder_decoded_T_313,_cs_decoder_decoded_T_321,
    _cs_decoder_decoded_T_329,_cs_decoder_decoded_T_343}; // @[Cat.scala 31:58]
  wire [30:0] cs_decoder_decoded_orMatrixOutputs_lo_8 = {_cs_decoder_decoded_T_237,_cs_decoder_decoded_T_241,
    _cs_decoder_decoded_T_243,_cs_decoder_decoded_T_249,_cs_decoder_decoded_T_259,_cs_decoder_decoded_T_265,
    _cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273,cs_decoder_decoded_orMatrixOutputs_lo_hi_lo_3,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_8}; // @[Cat.scala 31:58]
  wire [6:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_lo_3 = {_cs_decoder_decoded_T_193,_cs_decoder_decoded_T_203,
    _cs_decoder_decoded_T_207,_cs_decoder_decoded_T_219,_cs_decoder_decoded_T_227,_cs_decoder_decoded_T_229,
    _cs_decoder_decoded_T_233}; // @[Cat.scala 31:58]
  wire [14:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_8 = {_cs_decoder_decoded_T_127,_cs_decoder_decoded_T_129,
    _cs_decoder_decoded_T_147,_cs_decoder_decoded_T_149,_cs_decoder_decoded_T_161,_cs_decoder_decoded_T_167,
    _cs_decoder_decoded_T_177,_cs_decoder_decoded_T_185,cs_decoder_decoded_orMatrixOutputs_hi_lo_lo_3}; // @[Cat.scala 31:58]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_hi_hi_lo_5 = {_cs_decoder_decoded_T_65,_cs_decoder_decoded_T_67,
    _cs_decoder_decoded_T_79,_cs_decoder_decoded_T_87,_cs_decoder_decoded_T_91,_cs_decoder_decoded_T_101,
    _cs_decoder_decoded_T_113,_cs_decoder_decoded_T_121}; // @[Cat.scala 31:58]
  wire [30:0] cs_decoder_decoded_orMatrixOutputs_hi_9 = {_cs_decoder_decoded_T_11,_cs_decoder_decoded_T_13,
    _cs_decoder_decoded_T_21,_cs_decoder_decoded_T_23,_cs_decoder_decoded_T_41,_cs_decoder_decoded_T_45,
    _cs_decoder_decoded_T_49,_cs_decoder_decoded_T_57,cs_decoder_decoded_orMatrixOutputs_hi_hi_lo_5,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_8}; // @[Cat.scala 31:58]
  wire [61:0] _cs_decoder_decoded_orMatrixOutputs_T_19 = {cs_decoder_decoded_orMatrixOutputs_hi_9,
    cs_decoder_decoded_orMatrixOutputs_lo_8}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_20 = |_cs_decoder_decoded_orMatrixOutputs_T_19; // @[pla.scala 114:39]
  wire [4:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_lo_4 = {_cs_decoder_decoded_T_391,_cs_decoder_decoded_T_419,
    _cs_decoder_decoded_T_421,_cs_decoder_decoded_T_431,_cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [10:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_9 = {_cs_decoder_decoded_T_349,_cs_decoder_decoded_T_353,
    _cs_decoder_decoded_T_359,_cs_decoder_decoded_T_363,_cs_decoder_decoded_T_365,_cs_decoder_decoded_T_389,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_lo_4}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_orMatrixOutputs_lo_hi_lo_4 = {_cs_decoder_decoded_T_327,_cs_decoder_decoded_T_331,
    _cs_decoder_decoded_T_335,_cs_decoder_decoded_T_343,_cs_decoder_decoded_T_345}; // @[Cat.scala 31:58]
  wire [21:0] cs_decoder_decoded_orMatrixOutputs_lo_9 = {_cs_decoder_decoded_T_273,_cs_decoder_decoded_T_289,
    _cs_decoder_decoded_T_297,_cs_decoder_decoded_T_301,_cs_decoder_decoded_T_309,_cs_decoder_decoded_T_325,
    cs_decoder_decoded_orMatrixOutputs_lo_hi_lo_4,cs_decoder_decoded_orMatrixOutputs_lo_lo_9}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_lo_4 = {_cs_decoder_decoded_T_225,_cs_decoder_decoded_T_239,
    _cs_decoder_decoded_T_245,_cs_decoder_decoded_T_265,_cs_decoder_decoded_T_267}; // @[Cat.scala 31:58]
  wire [10:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_9 = {_cs_decoder_decoded_T_165,_cs_decoder_decoded_T_185,
    _cs_decoder_decoded_T_187,_cs_decoder_decoded_T_197,_cs_decoder_decoded_T_205,_cs_decoder_decoded_T_211,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_lo_4}; // @[Cat.scala 31:58]
  wire [5:0] cs_decoder_decoded_orMatrixOutputs_hi_hi_lo_6 = {_cs_decoder_decoded_T_89,_cs_decoder_decoded_T_97,
    _cs_decoder_decoded_T_111,_cs_decoder_decoded_T_121,_cs_decoder_decoded_T_125,_cs_decoder_decoded_T_157}; // @[Cat.scala 31:58]
  wire [44:0] _cs_decoder_decoded_orMatrixOutputs_T_21 = {_cs_decoder_decoded_T_21,_cs_decoder_decoded_T_45,
    _cs_decoder_decoded_T_49,_cs_decoder_decoded_T_69,_cs_decoder_decoded_T_83,_cs_decoder_decoded_T_87,
    cs_decoder_decoded_orMatrixOutputs_hi_hi_lo_6,cs_decoder_decoded_orMatrixOutputs_hi_lo_9,
    cs_decoder_decoded_orMatrixOutputs_lo_9}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_22 = |_cs_decoder_decoded_orMatrixOutputs_T_21; // @[pla.scala 114:39]
  wire [4:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_lo_5 = {_cs_decoder_decoded_T_407,_cs_decoder_decoded_T_409,
    _cs_decoder_decoded_T_421,_cs_decoder_decoded_T_431,_cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [10:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_10 = {_cs_decoder_decoded_T_379,_cs_decoder_decoded_T_383,
    _cs_decoder_decoded_T_387,_cs_decoder_decoded_T_393,_cs_decoder_decoded_T_397,_cs_decoder_decoded_T_399,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_lo_5}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_orMatrixOutputs_lo_hi_lo_5 = {_cs_decoder_decoded_T_337,_cs_decoder_decoded_T_347,
    _cs_decoder_decoded_T_349,_cs_decoder_decoded_T_353,_cs_decoder_decoded_T_365}; // @[Cat.scala 31:58]
  wire [21:0] cs_decoder_decoded_orMatrixOutputs_lo_10 = {_cs_decoder_decoded_T_303,_cs_decoder_decoded_T_305,
    _cs_decoder_decoded_T_309,_cs_decoder_decoded_T_315,_cs_decoder_decoded_T_317,_cs_decoder_decoded_T_323,
    cs_decoder_decoded_orMatrixOutputs_lo_hi_lo_5,cs_decoder_decoded_orMatrixOutputs_lo_lo_10}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_lo_5 = {_cs_decoder_decoded_T_261,_cs_decoder_decoded_T_265,
    _cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273,_cs_decoder_decoded_T_293}; // @[Cat.scala 31:58]
  wire [10:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_10 = {_cs_decoder_decoded_T_169,_cs_decoder_decoded_T_179,
    _cs_decoder_decoded_T_195,_cs_decoder_decoded_T_223,_cs_decoder_decoded_T_247,_cs_decoder_decoded_T_249,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_lo_5}; // @[Cat.scala 31:58]
  wire [5:0] cs_decoder_decoded_orMatrixOutputs_hi_hi_lo_7 = {_cs_decoder_decoded_T_131,_cs_decoder_decoded_T_133,
    _cs_decoder_decoded_T_135,_cs_decoder_decoded_T_143,_cs_decoder_decoded_T_151,_cs_decoder_decoded_T_159}; // @[Cat.scala 31:58]
  wire [44:0] _cs_decoder_decoded_orMatrixOutputs_T_23 = {_cs_decoder_decoded_T_45,_cs_decoder_decoded_T_49,
    _cs_decoder_decoded_T_97,_cs_decoder_decoded_T_99,_cs_decoder_decoded_T_101,_cs_decoder_decoded_T_115,
    cs_decoder_decoded_orMatrixOutputs_hi_hi_lo_7,cs_decoder_decoded_orMatrixOutputs_hi_lo_10,
    cs_decoder_decoded_orMatrixOutputs_lo_10}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_24 = |_cs_decoder_decoded_orMatrixOutputs_T_23; // @[pla.scala 114:39]
  wire [6:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_11 = {_cs_decoder_decoded_T_375,_cs_decoder_decoded_T_377,
    _cs_decoder_decoded_T_385,_cs_decoder_decoded_T_421,_cs_decoder_decoded_T_431,_cs_decoder_decoded_T_435,
    _cs_decoder_decoded_T_439}; // @[Cat.scala 31:58]
  wire [14:0] cs_decoder_decoded_orMatrixOutputs_lo_11 = {_cs_decoder_decoded_T_287,_cs_decoder_decoded_T_311,
    _cs_decoder_decoded_T_339,_cs_decoder_decoded_T_349,_cs_decoder_decoded_T_353,_cs_decoder_decoded_T_365,
    _cs_decoder_decoded_T_369,_cs_decoder_decoded_T_371,cs_decoder_decoded_orMatrixOutputs_lo_lo_11}; // @[Cat.scala 31:58]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_11 = {_cs_decoder_decoded_T_149,_cs_decoder_decoded_T_213,
    _cs_decoder_decoded_T_215,_cs_decoder_decoded_T_251,_cs_decoder_decoded_T_265,_cs_decoder_decoded_T_267,
    _cs_decoder_decoded_T_273,_cs_decoder_decoded_T_283}; // @[Cat.scala 31:58]
  wire [30:0] _cs_decoder_decoded_orMatrixOutputs_T_25 = {_cs_decoder_decoded_T_45,_cs_decoder_decoded_T_49,
    _cs_decoder_decoded_T_75,_cs_decoder_decoded_T_99,_cs_decoder_decoded_T_101,_cs_decoder_decoded_T_115,
    _cs_decoder_decoded_T_117,_cs_decoder_decoded_T_119,cs_decoder_decoded_orMatrixOutputs_hi_lo_11,
    cs_decoder_decoded_orMatrixOutputs_lo_11}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_26 = |_cs_decoder_decoded_orMatrixOutputs_T_25; // @[pla.scala 114:39]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_12 = {_cs_decoder_decoded_T_365,_cs_decoder_decoded_T_379,
    _cs_decoder_decoded_T_401,_cs_decoder_decoded_T_403,_cs_decoder_decoded_T_411,_cs_decoder_decoded_T_421,
    _cs_decoder_decoded_T_431,_cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_12 = {_cs_decoder_decoded_T_149,_cs_decoder_decoded_T_189,
    _cs_decoder_decoded_T_191,_cs_decoder_decoded_T_209,_cs_decoder_decoded_T_231,_cs_decoder_decoded_T_235,
    _cs_decoder_decoded_T_253,_cs_decoder_decoded_T_265}; // @[Cat.scala 31:58]
  wire [16:0] cs_decoder_decoded_orMatrixOutputs_hi_13 = {_cs_decoder_decoded_T_13,_cs_decoder_decoded_T_23,
    _cs_decoder_decoded_T_43,_cs_decoder_decoded_T_45,_cs_decoder_decoded_T_49,_cs_decoder_decoded_T_57,
    _cs_decoder_decoded_T_75,_cs_decoder_decoded_T_105,_cs_decoder_decoded_T_123,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_12}; // @[Cat.scala 31:58]
  wire [32:0] _cs_decoder_decoded_orMatrixOutputs_T_27 = {cs_decoder_decoded_orMatrixOutputs_hi_13,
    _cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273,_cs_decoder_decoded_T_279,_cs_decoder_decoded_T_329,
    _cs_decoder_decoded_T_333,_cs_decoder_decoded_T_339,_cs_decoder_decoded_T_349,_cs_decoder_decoded_T_353,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_12}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_28 = |_cs_decoder_decoded_orMatrixOutputs_T_27; // @[pla.scala 114:39]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_13 = {_cs_decoder_decoded_T_349,_cs_decoder_decoded_T_353,
    _cs_decoder_decoded_T_365,_cs_decoder_decoded_T_417,_cs_decoder_decoded_T_421,_cs_decoder_decoded_T_427,
    _cs_decoder_decoded_T_431,_cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [15:0] cs_decoder_decoded_orMatrixOutputs_lo_13 = {_cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273,
    _cs_decoder_decoded_T_283,_cs_decoder_decoded_T_287,_cs_decoder_decoded_T_311,_cs_decoder_decoded_T_317,
    _cs_decoder_decoded_T_319,_cs_decoder_decoded_T_327,cs_decoder_decoded_orMatrixOutputs_lo_lo_13}; // @[Cat.scala 31:58]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_13 = {_cs_decoder_decoded_T_123,_cs_decoder_decoded_T_149,
    _cs_decoder_decoded_T_201,_cs_decoder_decoded_T_223,_cs_decoder_decoded_T_229,_cs_decoder_decoded_T_231,
    _cs_decoder_decoded_T_235,_cs_decoder_decoded_T_265}; // @[Cat.scala 31:58]
  wire [31:0] _cs_decoder_decoded_orMatrixOutputs_T_29 = {_cs_decoder_decoded_T_15,_cs_decoder_decoded_T_31,
    _cs_decoder_decoded_T_39,_cs_decoder_decoded_T_45,_cs_decoder_decoded_T_49,_cs_decoder_decoded_T_57,
    _cs_decoder_decoded_T_63,_cs_decoder_decoded_T_105,cs_decoder_decoded_orMatrixOutputs_hi_lo_13,
    cs_decoder_decoded_orMatrixOutputs_lo_13}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_30 = |_cs_decoder_decoded_orMatrixOutputs_T_29; // @[pla.scala 114:39]
  wire [4:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_14 = {_cs_decoder_decoded_T_395,_cs_decoder_decoded_T_403,
    _cs_decoder_decoded_T_421,_cs_decoder_decoded_T_431,_cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [10:0] cs_decoder_decoded_orMatrixOutputs_lo_14 = {_cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273,
    _cs_decoder_decoded_T_307,_cs_decoder_decoded_T_349,_cs_decoder_decoded_T_353,_cs_decoder_decoded_T_365,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_14}; // @[Cat.scala 31:58]
  wire [4:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_14 = {_cs_decoder_decoded_T_161,_cs_decoder_decoded_T_163,
    _cs_decoder_decoded_T_173,_cs_decoder_decoded_T_211,_cs_decoder_decoded_T_265}; // @[Cat.scala 31:58]
  wire [21:0] _cs_decoder_decoded_orMatrixOutputs_T_31 = {_cs_decoder_decoded_T_45,_cs_decoder_decoded_T_49,
    _cs_decoder_decoded_T_57,_cs_decoder_decoded_T_137,_cs_decoder_decoded_T_141,_cs_decoder_decoded_T_149,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_14,cs_decoder_decoded_orMatrixOutputs_lo_14}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_32 = |_cs_decoder_decoded_orMatrixOutputs_T_31; // @[pla.scala 114:39]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_15 = {_cs_decoder_decoded_T_349,_cs_decoder_decoded_T_353,
    _cs_decoder_decoded_T_365,_cs_decoder_decoded_T_371,_cs_decoder_decoded_T_375,_cs_decoder_decoded_T_421,
    _cs_decoder_decoded_T_431,_cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [16:0] cs_decoder_decoded_orMatrixOutputs_lo_15 = {_cs_decoder_decoded_T_265,_cs_decoder_decoded_T_267,
    _cs_decoder_decoded_T_273,_cs_decoder_decoded_T_303,_cs_decoder_decoded_T_305,_cs_decoder_decoded_T_311,
    _cs_decoder_decoded_T_317,_cs_decoder_decoded_T_319,_cs_decoder_decoded_T_327,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_15}; // @[Cat.scala 31:58]
  wire [8:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_15 = {_cs_decoder_decoded_T_217,_cs_decoder_decoded_T_221,
    _cs_decoder_decoded_T_229,_cs_decoder_decoded_T_231,_cs_decoder_decoded_T_235,_cs_decoder_decoded_T_239,
    _cs_decoder_decoded_T_253,_cs_decoder_decoded_T_257,_cs_decoder_decoded_T_259}; // @[Cat.scala 31:58]
  wire [17:0] cs_decoder_decoded_orMatrixOutputs_hi_16 = {_cs_decoder_decoded_T_13,_cs_decoder_decoded_T_25,
    _cs_decoder_decoded_T_97,_cs_decoder_decoded_T_99,_cs_decoder_decoded_T_101,_cs_decoder_decoded_T_107,
    _cs_decoder_decoded_T_111,_cs_decoder_decoded_T_191,_cs_decoder_decoded_T_205,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_15}; // @[Cat.scala 31:58]
  wire [34:0] _cs_decoder_decoded_orMatrixOutputs_T_33 = {cs_decoder_decoded_orMatrixOutputs_hi_16,
    cs_decoder_decoded_orMatrixOutputs_lo_15}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_34 = |_cs_decoder_decoded_orMatrixOutputs_T_33; // @[pla.scala 114:39]
  wire [8:0] cs_decoder_decoded_orMatrixOutputs_lo_16 = {_cs_decoder_decoded_T_89,_cs_decoder_decoded_T_97,
    _cs_decoder_decoded_T_99,_cs_decoder_decoded_T_101,_cs_decoder_decoded_T_175,_cs_decoder_decoded_T_177,
    _cs_decoder_decoded_T_191,_cs_decoder_decoded_T_429,_cs_decoder_decoded_T_441}; // @[Cat.scala 31:58]
  wire [17:0] _cs_decoder_decoded_orMatrixOutputs_T_35 = {_cs_decoder_decoded_T_3,_cs_decoder_decoded_T_5,
    _cs_decoder_decoded_T_7,_cs_decoder_decoded_T_21,_cs_decoder_decoded_T_45,_cs_decoder_decoded_T_53,
    _cs_decoder_decoded_T_55,_cs_decoder_decoded_T_61,_cs_decoder_decoded_T_65,cs_decoder_decoded_orMatrixOutputs_lo_16}
    ; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_36 = |_cs_decoder_decoded_orMatrixOutputs_T_35; // @[pla.scala 114:39]
  wire [4:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_17 = {_cs_decoder_decoded_T_365,_cs_decoder_decoded_T_405,
    _cs_decoder_decoded_T_421,_cs_decoder_decoded_T_431,_cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [10:0] cs_decoder_decoded_orMatrixOutputs_lo_17 = {_cs_decoder_decoded_T_259,_cs_decoder_decoded_T_265,
    _cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273,_cs_decoder_decoded_T_349,_cs_decoder_decoded_T_353,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_17}; // @[Cat.scala 31:58]
  wire [5:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_17 = {_cs_decoder_decoded_T_67,_cs_decoder_decoded_T_85,
    _cs_decoder_decoded_T_125,_cs_decoder_decoded_T_243,_cs_decoder_decoded_T_249,_cs_decoder_decoded_T_253}; // @[Cat.scala 31:58]
  wire [22:0] _cs_decoder_decoded_orMatrixOutputs_T_37 = {_cs_decoder_decoded_T_13,_cs_decoder_decoded_T_21,
    _cs_decoder_decoded_T_45,_cs_decoder_decoded_T_49,_cs_decoder_decoded_T_61,_cs_decoder_decoded_T_65,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_17,cs_decoder_decoded_orMatrixOutputs_lo_17}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_38 = |_cs_decoder_decoded_orMatrixOutputs_T_37; // @[pla.scala 114:39]
  wire [9:0] cs_decoder_decoded_orMatrixOutputs_lo_18 = {_cs_decoder_decoded_T_205,_cs_decoder_decoded_T_239,
    _cs_decoder_decoded_T_265,_cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273,_cs_decoder_decoded_T_349,
    _cs_decoder_decoded_T_353,_cs_decoder_decoded_T_365,_cs_decoder_decoded_T_425,_cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [9:0] cs_decoder_decoded_orMatrixOutputs_hi_19 = {_cs_decoder_decoded_T_3,_cs_decoder_decoded_T_5,
    _cs_decoder_decoded_T_7,_cs_decoder_decoded_T_45,_cs_decoder_decoded_T_49,_cs_decoder_decoded_T_89,
    _cs_decoder_decoded_T_97,_cs_decoder_decoded_T_99,_cs_decoder_decoded_T_101,_cs_decoder_decoded_T_111}; // @[Cat.scala 31:58]
  wire [19:0] _cs_decoder_decoded_orMatrixOutputs_T_39 = {cs_decoder_decoded_orMatrixOutputs_hi_19,
    cs_decoder_decoded_orMatrixOutputs_lo_18}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_40 = |_cs_decoder_decoded_orMatrixOutputs_T_39; // @[pla.scala 114:39]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_41 = |_cs_decoder_decoded_T_45; // @[pla.scala 114:39]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_19 = {_cs_decoder_decoded_T_283,_cs_decoder_decoded_T_287,
    _cs_decoder_decoded_T_299,_cs_decoder_decoded_T_311,_cs_decoder_decoded_T_319,_cs_decoder_decoded_T_327,
    _cs_decoder_decoded_T_363,_cs_decoder_decoded_T_377}; // @[Cat.scala 31:58]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_19 = {_cs_decoder_decoded_T_139,_cs_decoder_decoded_T_145,
    _cs_decoder_decoded_T_149,_cs_decoder_decoded_T_153,_cs_decoder_decoded_T_171,_cs_decoder_decoded_T_181,
    _cs_decoder_decoded_T_183,_cs_decoder_decoded_T_189}; // @[Cat.scala 31:58]
  wire [16:0] cs_decoder_decoded_orMatrixOutputs_hi_20 = {_cs_decoder_decoded_T_27,_cs_decoder_decoded_T_29,
    _cs_decoder_decoded_T_33,_cs_decoder_decoded_T_35,_cs_decoder_decoded_T_37,_cs_decoder_decoded_T_45,
    _cs_decoder_decoded_T_49,_cs_decoder_decoded_T_107,_cs_decoder_decoded_T_111,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_19}; // @[Cat.scala 31:58]
  wire [32:0] _cs_decoder_decoded_orMatrixOutputs_T_43 = {cs_decoder_decoded_orMatrixOutputs_hi_20,
    _cs_decoder_decoded_T_191,_cs_decoder_decoded_T_199,_cs_decoder_decoded_T_205,_cs_decoder_decoded_T_253,
    _cs_decoder_decoded_T_265,_cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273,_cs_decoder_decoded_T_281,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_19}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_44 = |_cs_decoder_decoded_orMatrixOutputs_T_43; // @[pla.scala 114:39]
  wire [5:0] _cs_decoder_decoded_orMatrixOutputs_T_45 = {_cs_decoder_decoded_T_45,_cs_decoder_decoded_T_49,
    _cs_decoder_decoded_T_109,_cs_decoder_decoded_T_265,_cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_46 = |_cs_decoder_decoded_orMatrixOutputs_T_45; // @[pla.scala 114:39]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_lo_15 = {_cs_decoder_decoded_T_371,_cs_decoder_decoded_T_375,
    _cs_decoder_decoded_T_377,_cs_decoder_decoded_T_403,_cs_decoder_decoded_T_405,_cs_decoder_decoded_T_421,
    _cs_decoder_decoded_T_431,_cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire [16:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_20 = {_cs_decoder_decoded_T_327,_cs_decoder_decoded_T_335,
    _cs_decoder_decoded_T_339,_cs_decoder_decoded_T_349,_cs_decoder_decoded_T_353,_cs_decoder_decoded_T_359,
    _cs_decoder_decoded_T_363,_cs_decoder_decoded_T_365,_cs_decoder_decoded_T_369,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_lo_15}; // @[Cat.scala 31:58]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_lo_hi_lo_15 = {_cs_decoder_decoded_T_283,_cs_decoder_decoded_T_287,
    _cs_decoder_decoded_T_295,_cs_decoder_decoded_T_299,_cs_decoder_decoded_T_307,_cs_decoder_decoded_T_311,
    _cs_decoder_decoded_T_317,_cs_decoder_decoded_T_319}; // @[Cat.scala 31:58]
  wire [16:0] cs_decoder_decoded_orMatrixOutputs_lo_hi_21 = {_cs_decoder_decoded_T_231,_cs_decoder_decoded_T_235,
    _cs_decoder_decoded_T_239,_cs_decoder_decoded_T_243,_cs_decoder_decoded_T_253,_cs_decoder_decoded_T_265,
    _cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273,_cs_decoder_decoded_T_281,
    cs_decoder_decoded_orMatrixOutputs_lo_hi_lo_15}; // @[Cat.scala 31:58]
  wire [7:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_lo_15 = {_cs_decoder_decoded_T_181,_cs_decoder_decoded_T_183,
    _cs_decoder_decoded_T_189,_cs_decoder_decoded_T_191,_cs_decoder_decoded_T_199,_cs_decoder_decoded_T_203,
    _cs_decoder_decoded_T_205,_cs_decoder_decoded_T_229}; // @[Cat.scala 31:58]
  wire [16:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_20 = {_cs_decoder_decoded_T_99,_cs_decoder_decoded_T_101,
    _cs_decoder_decoded_T_103,_cs_decoder_decoded_T_111,_cs_decoder_decoded_T_125,_cs_decoder_decoded_T_139,
    _cs_decoder_decoded_T_145,_cs_decoder_decoded_T_149,_cs_decoder_decoded_T_171,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_lo_15}; // @[Cat.scala 31:58]
  wire [8:0] cs_decoder_decoded_orMatrixOutputs_hi_hi_lo_17 = {_cs_decoder_decoded_T_49,_cs_decoder_decoded_T_59,
    _cs_decoder_decoded_T_63,_cs_decoder_decoded_T_67,_cs_decoder_decoded_T_71,_cs_decoder_decoded_T_75,
    _cs_decoder_decoded_T_81,_cs_decoder_decoded_T_89,_cs_decoder_decoded_T_97}; // @[Cat.scala 31:58]
  wire [17:0] cs_decoder_decoded_orMatrixOutputs_hi_hi_21 = {_cs_decoder_decoded_T_1,_cs_decoder_decoded_T_5,
    _cs_decoder_decoded_T_7,_cs_decoder_decoded_T_17,_cs_decoder_decoded_T_29,_cs_decoder_decoded_T_33,
    _cs_decoder_decoded_T_35,_cs_decoder_decoded_T_39,_cs_decoder_decoded_T_45,
    cs_decoder_decoded_orMatrixOutputs_hi_hi_lo_17}; // @[Cat.scala 31:58]
  wire [68:0] _cs_decoder_decoded_orMatrixOutputs_T_47 = {cs_decoder_decoded_orMatrixOutputs_hi_hi_21,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_20,cs_decoder_decoded_orMatrixOutputs_lo_hi_21,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_20}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_48 = |_cs_decoder_decoded_orMatrixOutputs_T_47; // @[pla.scala 114:39]
  wire [9:0] _cs_decoder_decoded_orMatrixOutputs_T_49 = {_cs_decoder_decoded_T_45,_cs_decoder_decoded_T_49,
    _cs_decoder_decoded_T_265,_cs_decoder_decoded_T_267,_cs_decoder_decoded_T_273,_cs_decoder_decoded_T_349,
    _cs_decoder_decoded_T_353,_cs_decoder_decoded_T_365,_cs_decoder_decoded_T_425,_cs_decoder_decoded_T_435}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_orMatrixOutputs_T_50 = |_cs_decoder_decoded_orMatrixOutputs_T_49; // @[pla.scala 114:39]
  wire [5:0] cs_decoder_decoded_orMatrixOutputs_lo_lo_22 = {_cs_decoder_decoded_orMatrixOutputs_T_11,
    _cs_decoder_decoded_orMatrixOutputs_T_9,_cs_decoder_decoded_orMatrixOutputs_T_7,
    _cs_decoder_decoded_orMatrixOutputs_T_5,_cs_decoder_decoded_orMatrixOutputs_T_3,
    _cs_decoder_decoded_orMatrixOutputs_T_1}; // @[Cat.scala 31:58]
  wire [12:0] cs_decoder_decoded_orMatrixOutputs_lo_23 = {_cs_decoder_decoded_orMatrixOutputs_T_24,
    _cs_decoder_decoded_orMatrixOutputs_T_22,_cs_decoder_decoded_orMatrixOutputs_T_20,
    _cs_decoder_decoded_orMatrixOutputs_T_18,_cs_decoder_decoded_orMatrixOutputs_T_16,
    _cs_decoder_decoded_orMatrixOutputs_T_14,_cs_decoder_decoded_orMatrixOutputs_T_11,
    cs_decoder_decoded_orMatrixOutputs_lo_lo_22}; // @[Cat.scala 31:58]
  wire [6:0] cs_decoder_decoded_orMatrixOutputs_hi_lo_22 = {_cs_decoder_decoded_orMatrixOutputs_T_38,
    _cs_decoder_decoded_orMatrixOutputs_T_36,_cs_decoder_decoded_orMatrixOutputs_T_34,
    _cs_decoder_decoded_orMatrixOutputs_T_32,_cs_decoder_decoded_orMatrixOutputs_T_30,
    _cs_decoder_decoded_orMatrixOutputs_T_28,_cs_decoder_decoded_orMatrixOutputs_T_26}; // @[Cat.scala 31:58]
  wire [26:0] cs_decoder_decoded_orMatrixOutputs = {_cs_decoder_decoded_orMatrixOutputs_T_50,
    _cs_decoder_decoded_orMatrixOutputs_T_48,_cs_decoder_decoded_orMatrixOutputs_T_46,
    _cs_decoder_decoded_orMatrixOutputs_T_44,_cs_decoder_decoded_orMatrixOutputs_T_41,
    _cs_decoder_decoded_orMatrixOutputs_T_41,_cs_decoder_decoded_orMatrixOutputs_T_40,
    cs_decoder_decoded_orMatrixOutputs_hi_lo_22,cs_decoder_decoded_orMatrixOutputs_lo_23}; // @[Cat.scala 31:58]
  wire  _cs_decoder_decoded_invMatrixOutputs_T_2 = ~cs_decoder_decoded_orMatrixOutputs[1]; // @[pla.scala 123:40]
  wire  _cs_decoder_decoded_invMatrixOutputs_T_4 = ~cs_decoder_decoded_orMatrixOutputs[2]; // @[pla.scala 123:40]
  wire  _cs_decoder_decoded_invMatrixOutputs_T_13 = ~cs_decoder_decoded_orMatrixOutputs[10]; // @[pla.scala 123:40]
  wire  _cs_decoder_decoded_invMatrixOutputs_T_22 = ~cs_decoder_decoded_orMatrixOutputs[18]; // @[pla.scala 123:40]
  wire  _cs_decoder_decoded_invMatrixOutputs_T_24 = ~cs_decoder_decoded_orMatrixOutputs[19]; // @[pla.scala 123:40]
  wire  _cs_decoder_decoded_invMatrixOutputs_T_27 = ~cs_decoder_decoded_orMatrixOutputs[21]; // @[pla.scala 123:40]
  wire  _cs_decoder_decoded_invMatrixOutputs_T_30 = ~cs_decoder_decoded_orMatrixOutputs[23]; // @[pla.scala 123:40]
  wire  _cs_decoder_decoded_invMatrixOutputs_T_33 = ~cs_decoder_decoded_orMatrixOutputs[25]; // @[pla.scala 123:40]
  wire [5:0] cs_decoder_decoded_invMatrixOutputs_lo_lo = {cs_decoder_decoded_orMatrixOutputs[5],
    cs_decoder_decoded_orMatrixOutputs[4],cs_decoder_decoded_orMatrixOutputs[3],_cs_decoder_decoded_invMatrixOutputs_T_4
    ,_cs_decoder_decoded_invMatrixOutputs_T_2,cs_decoder_decoded_orMatrixOutputs[0]}; // @[Cat.scala 31:58]
  wire [12:0] cs_decoder_decoded_invMatrixOutputs_lo = {cs_decoder_decoded_orMatrixOutputs[12],
    cs_decoder_decoded_orMatrixOutputs[11],_cs_decoder_decoded_invMatrixOutputs_T_13,cs_decoder_decoded_orMatrixOutputs[
    9],cs_decoder_decoded_orMatrixOutputs[8],cs_decoder_decoded_orMatrixOutputs[7],cs_decoder_decoded_orMatrixOutputs[6]
    ,cs_decoder_decoded_invMatrixOutputs_lo_lo}; // @[Cat.scala 31:58]
  wire [6:0] cs_decoder_decoded_invMatrixOutputs_hi_lo = {_cs_decoder_decoded_invMatrixOutputs_T_24,
    _cs_decoder_decoded_invMatrixOutputs_T_22,cs_decoder_decoded_orMatrixOutputs[17],cs_decoder_decoded_orMatrixOutputs[
    16],cs_decoder_decoded_orMatrixOutputs[15],cs_decoder_decoded_orMatrixOutputs[14],cs_decoder_decoded_orMatrixOutputs
    [13]}; // @[Cat.scala 31:58]
  wire [26:0] cs_decoder_decoded_invMatrixOutputs = {cs_decoder_decoded_orMatrixOutputs[26],
    _cs_decoder_decoded_invMatrixOutputs_T_33,cs_decoder_decoded_orMatrixOutputs[24],
    _cs_decoder_decoded_invMatrixOutputs_T_30,cs_decoder_decoded_orMatrixOutputs[22],
    _cs_decoder_decoded_invMatrixOutputs_T_27,cs_decoder_decoded_orMatrixOutputs[20],
    cs_decoder_decoded_invMatrixOutputs_hi_lo,cs_decoder_decoded_invMatrixOutputs_lo}; // @[Cat.scala 31:58]
  wire [3:0] cs_decoder_3 = cs_decoder_decoded_invMatrixOutputs[20:17]; // @[Decode.scala 49:77]
  wire [6:0] cs_decoder_4 = cs_decoder_decoded_invMatrixOutputs[16:10]; // @[Decode.scala 49:77]
  wire  cs_decoder_7 = cs_decoder_decoded_invMatrixOutputs[7]; // @[Decode.scala 49:77]
  wire  cs_decoder_9 = cs_decoder_decoded_invMatrixOutputs[5]; // @[Decode.scala 49:77]
  wire  cs_decoder_10 = cs_decoder_decoded_invMatrixOutputs[4]; // @[Decode.scala 49:77]
  wire [2:0] cs_decoder_12 = cs_decoder_decoded_invMatrixOutputs[2:0]; // @[Decode.scala 49:77]
  wire [31:0] _isMove_T = io_enq_ctrl_flow_instr & 32'hfff0707f; // @[DecodeUnit.scala 595:64]
  wire  isMove = 32'h13 == _isMove_T; // @[DecodeUnit.scala 595:64]
  wire [31:0] _cs_lsrc_0_T = io_enq_ctrl_flow_instr & 32'h7f; // @[DecodeUnit.scala 599:37]
  wire [4:0] _cs_lsrc_0_T_3 = 32'h37 == _cs_lsrc_0_T ? 5'h0 : io_enq_ctrl_flow_instr[19:15]; // @[DecodeUnit.scala 599:20]
  wire [4:0] cs_lsrc_1 = io_enq_ctrl_flow_instr[24:20]; // @[DecodeUnit.scala 600:32]
  wire [31:0] _isORI_T = io_enq_ctrl_flow_instr & 32'h707f; // @[DecodeUnit.scala 632:59]
  wire  isORI = 32'h6013 == _isORI_T; // @[DecodeUnit.scala 632:59]
  wire [2:0] _GEN_5 = io_enq_ctrl_flow_instr[11:7] == 5'h0 ? 3'h0 : cs_decoder_12; // @[DecodeUnit.scala 635:28 636:17 Bundle.scala 183:55]
  wire [2:0] _GEN_8 = isORI & io_csrCtrl_soft_prefetch_enable ? _GEN_5 : cs_decoder_12; // @[DecodeUnit.scala 633:50 Bundle.scala 183:55]
  wire [3:0] cs_selImm = {{1'd0}, _GEN_8}; // @[DecodeUnit.scala 587:16]
  wire  _cf_ctrl_cf_exceptionVec_2_T = cs_selImm == 4'h6; // @[DecodeUnit.scala 607:54]
  wire [31:0] _sinval_T = io_enq_ctrl_flow_instr & 32'hfe007fff; // @[DecodeUnit.scala 611:67]
  wire  sinval = 32'h16000073 == _sinval_T; // @[DecodeUnit.scala 611:67]
  wire  w_inval = 32'h18000073 == io_enq_ctrl_flow_instr; // @[DecodeUnit.scala 612:68]
  wire  inval_ir = 32'h18100073 == io_enq_ctrl_flow_instr; // @[DecodeUnit.scala 613:69]
  wire  svinval_ii = sinval | w_inval | inval_ir; // @[DecodeUnit.scala 614:40]
  wire [31:0] _isFrflags_T = io_enq_ctrl_flow_instr & 32'hfffff07f; // @[DecodeUnit.scala 621:67]
  wire  isFrflags = 32'h102073 == _isFrflags_T; // @[DecodeUnit.scala 621:67]
  wire [3:0] _GEN_6 = io_enq_ctrl_flow_instr[11:7] == 5'h0 ? 4'hc : cs_decoder_3; // @[DecodeUnit.scala 635:28 637:17 Bundle.scala 183:55]
  wire [3:0] cs_fuType = isORI & io_csrCtrl_soft_prefetch_enable ? _GEN_6 : cs_decoder_3; // @[DecodeUnit.scala 633:50 Bundle.scala 183:55]
  wire [3:0] _GEN_4 = cs_lsrc_1 == 5'h1 ? 4'h9 : 4'ha; // @[DecodeUnit.scala 638:39 639:21 641:21]
  wire [6:0] _GEN_7 = io_enq_ctrl_flow_instr[11:7] == 5'h0 ? {{3'd0}, _GEN_4} : cs_decoder_4; // @[DecodeUnit.scala 635:28 Bundle.scala 183:55]
  wire [11:0] cs_imm_minBits = io_enq_ctrl_flow_instr[31:20]; // @[DecodeUnit.scala 480:14]
  wire [11:0] cs_imm_minBits_1 = {io_enq_ctrl_flow_instr[31:25],io_enq_ctrl_flow_instr[11:7]}; // @[Cat.scala 31:58]
  wire [11:0] cs_imm_minBits_2 = {cs_decoder_decoded_andMatrixInput_12_151,io_enq_ctrl_flow_instr[7],
    io_enq_ctrl_flow_instr[30:25],io_enq_ctrl_flow_instr[11:8]}; // @[Cat.scala 31:58]
  wire [19:0] cs_imm_minBits_3 = io_enq_ctrl_flow_instr[31:12]; // @[DecodeUnit.scala 501:10]
  wire [19:0] cs_imm_minBits_4 = {cs_decoder_decoded_andMatrixInput_12_151,io_enq_ctrl_flow_instr[19:12],
    cs_decoder_decoded_andMatrixInput_20_8,io_enq_ctrl_flow_instr[30:25],io_enq_ctrl_flow_instr[24:21]}; // @[Cat.scala 31:58]
  wire [16:0] cs_imm_minBits_5 = {io_enq_ctrl_flow_instr[19:15],cs_imm_minBits}; // @[Cat.scala 31:58]
  wire [5:0] cs_imm_minBits_6 = io_enq_ctrl_flow_instr[25:20]; // @[DecodeUnit.scala 525:10]
  wire  _cs_imm_T = 4'h4 == cs_selImm; // @[LookupTree.scala 25:34]
  wire  _cs_imm_T_1 = 4'h0 == cs_selImm; // @[LookupTree.scala 25:34]
  wire  _cs_imm_T_2 = 4'h1 == cs_selImm; // @[LookupTree.scala 25:34]
  wire  _cs_imm_T_3 = 4'h2 == cs_selImm; // @[LookupTree.scala 25:34]
  wire  _cs_imm_T_4 = 4'h3 == cs_selImm; // @[LookupTree.scala 25:34]
  wire  _cs_imm_T_5 = 4'h5 == cs_selImm; // @[LookupTree.scala 25:34]
  wire  _cs_imm_T_6 = 4'h8 == cs_selImm; // @[LookupTree.scala 25:34]
  wire [11:0] _cs_imm_T_7 = _cs_imm_T ? cs_imm_minBits : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _cs_imm_T_8 = _cs_imm_T_1 ? cs_imm_minBits_1 : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _cs_imm_T_9 = _cs_imm_T_2 ? cs_imm_minBits_2 : 12'h0; // @[Mux.scala 27:73]
  wire [19:0] _cs_imm_T_10 = _cs_imm_T_3 ? cs_imm_minBits_3 : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _cs_imm_T_11 = _cs_imm_T_4 ? cs_imm_minBits_4 : 20'h0; // @[Mux.scala 27:73]
  wire [16:0] _cs_imm_T_12 = _cs_imm_T_5 ? cs_imm_minBits_5 : 17'h0; // @[Mux.scala 27:73]
  wire [5:0] _cs_imm_T_13 = _cs_imm_T_6 ? cs_imm_minBits_6 : 6'h0; // @[Mux.scala 27:73]
  wire [11:0] _cs_imm_T_14 = _cs_imm_T_7 | _cs_imm_T_8; // @[Mux.scala 27:73]
  wire [11:0] _cs_imm_T_15 = _cs_imm_T_14 | _cs_imm_T_9; // @[Mux.scala 27:73]
  wire [19:0] _GEN_11 = {{8'd0}, _cs_imm_T_15}; // @[Mux.scala 27:73]
  wire [19:0] _cs_imm_T_16 = _GEN_11 | _cs_imm_T_10; // @[Mux.scala 27:73]
  wire [19:0] _cs_imm_T_17 = _cs_imm_T_16 | _cs_imm_T_11; // @[Mux.scala 27:73]
  wire [19:0] _GEN_12 = {{3'd0}, _cs_imm_T_12}; // @[Mux.scala 27:73]
  wire [19:0] _cs_imm_T_18 = _cs_imm_T_17 | _GEN_12; // @[Mux.scala 27:73]
  wire [19:0] _GEN_13 = {{14'd0}, _cs_imm_T_13}; // @[Mux.scala 27:73]
  FPDecoder fpDecoder ( // @[DecodeUnit.scala 591:25]
    .io_instr(fpDecoder_io_instr),
    .io_fpCtrl_isAddSub(fpDecoder_io_fpCtrl_isAddSub),
    .io_fpCtrl_typeTagIn(fpDecoder_io_fpCtrl_typeTagIn),
    .io_fpCtrl_typeTagOut(fpDecoder_io_fpCtrl_typeTagOut),
    .io_fpCtrl_fromInt(fpDecoder_io_fpCtrl_fromInt),
    .io_fpCtrl_wflags(fpDecoder_io_fpCtrl_wflags),
    .io_fpCtrl_fpWen(fpDecoder_io_fpCtrl_fpWen),
    .io_fpCtrl_fmaCmd(fpDecoder_io_fpCtrl_fmaCmd),
    .io_fpCtrl_div(fpDecoder_io_fpCtrl_div),
    .io_fpCtrl_sqrt(fpDecoder_io_fpCtrl_sqrt),
    .io_fpCtrl_fcvt(fpDecoder_io_fpCtrl_fcvt),
    .io_fpCtrl_typ(fpDecoder_io_fpCtrl_typ),
    .io_fpCtrl_fmt(fpDecoder_io_fpCtrl_fmt),
    .io_fpCtrl_ren3(fpDecoder_io_fpCtrl_ren3),
    .io_fpCtrl_rm(fpDecoder_io_fpCtrl_rm)
  );
  assign io_deq_cf_ctrl_cf_foldpc = io_enq_ctrl_flow_foldpc; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_exceptionVec_1 = io_enq_ctrl_flow_exceptionVec_1; // @[DecodeUnit.scala 579:21 606:27]
  assign io_deq_cf_ctrl_cf_exceptionVec_2 = ~io_csrCtrl_svinval_enable ? _cf_ctrl_cf_exceptionVec_2_T | svinval_ii :
    cs_selImm == 4'h6; // @[DecodeUnit.scala 609:37 607:41 615:43]
  assign io_deq_cf_ctrl_cf_exceptionVec_12 = io_enq_ctrl_flow_exceptionVec_12; // @[DecodeUnit.scala 579:21 606:27]
  assign io_deq_cf_ctrl_cf_trigger_frontendHit_0 = io_enq_ctrl_flow_trigger_frontendHit_0; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_trigger_frontendHit_1 = io_enq_ctrl_flow_trigger_frontendHit_1; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_trigger_frontendHit_2 = io_enq_ctrl_flow_trigger_frontendHit_2; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_trigger_frontendHit_3 = io_enq_ctrl_flow_trigger_frontendHit_3; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_trigger_backendEn_0 = io_enq_ctrl_flow_trigger_backendEn_0; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_trigger_backendEn_1 = io_enq_ctrl_flow_trigger_backendEn_1; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_trigger_backendHit_0 = io_enq_ctrl_flow_trigger_backendHit_0; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_trigger_backendHit_1 = io_enq_ctrl_flow_trigger_backendHit_1; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_trigger_backendHit_2 = io_enq_ctrl_flow_trigger_backendHit_2; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_trigger_backendHit_3 = io_enq_ctrl_flow_trigger_backendHit_3; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_trigger_backendHit_4 = io_enq_ctrl_flow_trigger_backendHit_4; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_trigger_backendHit_5 = io_enq_ctrl_flow_trigger_backendHit_5; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_pd_isRVC = io_enq_ctrl_flow_pd_isRVC; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_pd_brType = io_enq_ctrl_flow_pd_brType; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_pd_isCall = io_enq_ctrl_flow_pd_isCall; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_pd_isRet = io_enq_ctrl_flow_pd_isRet; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_pred_taken = io_enq_ctrl_flow_pred_taken; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_crossPageIPFFix = io_enq_ctrl_flow_crossPageIPFFix; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_ftqPtr_flag = io_enq_ctrl_flow_ftqPtr_flag; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_ftqPtr_value = io_enq_ctrl_flow_ftqPtr_value; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_cf_ftqOffset = io_enq_ctrl_flow_ftqOffset; // @[DecodeUnit.scala 578:23 581:13]
  assign io_deq_cf_ctrl_ctrl_srcType_0 = cs_decoder_decoded_invMatrixOutputs[26:25]; // @[Decode.scala 49:77]
  assign io_deq_cf_ctrl_ctrl_srcType_1 = cs_decoder_decoded_invMatrixOutputs[24:23]; // @[Decode.scala 49:77]
  assign io_deq_cf_ctrl_ctrl_srcType_2 = cs_decoder_decoded_invMatrixOutputs[22:21]; // @[Decode.scala 49:77]
  assign io_deq_cf_ctrl_ctrl_lsrc_0 = cs_decoder_7 ? 5'ha : _cs_lsrc_0_T_3; // @[DecodeUnit.scala 599:14 627:26 628:16]
  assign io_deq_cf_ctrl_ctrl_lsrc_1 = io_enq_ctrl_flow_instr[24:20]; // @[DecodeUnit.scala 600:32]
  assign io_deq_cf_ctrl_ctrl_lsrc_2 = io_enq_ctrl_flow_instr[31:27]; // @[DecodeUnit.scala 601:32]
  assign io_deq_cf_ctrl_ctrl_ldest = io_enq_ctrl_flow_instr[11:7]; // @[DecodeUnit.scala 603:30]
  assign io_deq_cf_ctrl_ctrl_fuType = isORI & io_csrCtrl_soft_prefetch_enable ? _GEN_6 : cs_decoder_3; // @[DecodeUnit.scala 633:50 Bundle.scala 183:55]
  assign io_deq_cf_ctrl_ctrl_fuOpType = isORI & io_csrCtrl_soft_prefetch_enable ? _GEN_7 : cs_decoder_4; // @[DecodeUnit.scala 633:50 Bundle.scala 183:55]
  assign io_deq_cf_ctrl_ctrl_rfWen = cs_decoder_decoded_invMatrixOutputs[9]; // @[Decode.scala 49:77]
  assign io_deq_cf_ctrl_ctrl_fpWen = cs_decoder_decoded_invMatrixOutputs[8]; // @[Decode.scala 49:77]
  assign io_deq_cf_ctrl_ctrl_isRVCORETrap = cs_decoder_decoded_invMatrixOutputs[7]; // @[Decode.scala 49:77]
  assign io_deq_cf_ctrl_ctrl_noSpecExec = cs_decoder_decoded_invMatrixOutputs[6]; // @[Decode.scala 49:77]
  assign io_deq_cf_ctrl_ctrl_blockBackward = cs_fuType == 4'h2 & isFrflags ? 1'h0 : cs_decoder_9; // @[DecodeUnit.scala 622:48 623:22 Bundle.scala 183:55]
  assign io_deq_cf_ctrl_ctrl_flushPipe = ~io_csrCtrl_svinval_enable ? 1'h0 : cs_decoder_10; // @[DecodeUnit.scala 609:37 616:18 Bundle.scala 183:55]
  assign io_deq_cf_ctrl_ctrl_selImm = {{1'd0}, _GEN_8}; // @[DecodeUnit.scala 587:16]
  assign io_deq_cf_ctrl_ctrl_imm = _cs_imm_T_18 | _GEN_13; // @[Mux.scala 27:73]
  assign io_deq_cf_ctrl_ctrl_fpu_isAddSub = fpDecoder_io_fpCtrl_isAddSub; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_typeTagIn = fpDecoder_io_fpCtrl_typeTagIn; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_typeTagOut = fpDecoder_io_fpCtrl_typeTagOut; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_fromInt = fpDecoder_io_fpCtrl_fromInt; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_wflags = fpDecoder_io_fpCtrl_wflags; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_fpWen = fpDecoder_io_fpCtrl_fpWen; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_fmaCmd = fpDecoder_io_fpCtrl_fmaCmd; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_div = fpDecoder_io_fpCtrl_div; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_sqrt = fpDecoder_io_fpCtrl_sqrt; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_fcvt = fpDecoder_io_fpCtrl_fcvt; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_typ = fpDecoder_io_fpCtrl_typ; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_fmt = fpDecoder_io_fpCtrl_fmt; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_ren3 = fpDecoder_io_fpCtrl_ren3; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_fpu_rm = fpDecoder_io_fpCtrl_rm; // @[DecodeUnit.scala 587:16 593:10]
  assign io_deq_cf_ctrl_ctrl_isMove = isMove & io_enq_ctrl_flow_instr[11:7] != 5'h0; // @[DecodeUnit.scala 596:23]
  assign fpDecoder_io_instr = io_enq_ctrl_flow_instr; // @[DecodeUnit.scala 578:23 581:13]
endmodule
