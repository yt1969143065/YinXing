module DecodeStage(
  input         clock,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [31:0] io_in_0_bits_instr,
  input  [9:0]  io_in_0_bits_foldpc,
  input         io_in_0_bits_exceptionVec_1,
  input         io_in_0_bits_exceptionVec_12,
  input         io_in_0_bits_trigger_frontendHit_0,
  input         io_in_0_bits_trigger_frontendHit_1,
  input         io_in_0_bits_trigger_frontendHit_2,
  input         io_in_0_bits_trigger_frontendHit_3,
  input         io_in_0_bits_trigger_backendEn_0,
  input         io_in_0_bits_trigger_backendEn_1,
  input         io_in_0_bits_trigger_backendHit_0,
  input         io_in_0_bits_trigger_backendHit_1,
  input         io_in_0_bits_trigger_backendHit_2,
  input         io_in_0_bits_trigger_backendHit_3,
  input         io_in_0_bits_trigger_backendHit_4,
  input         io_in_0_bits_trigger_backendHit_5,
  input         io_in_0_bits_pd_isRVC,
  input  [1:0]  io_in_0_bits_pd_brType,
  input         io_in_0_bits_pd_isCall,
  input         io_in_0_bits_pd_isRet,
  input         io_in_0_bits_pred_taken,
  input         io_in_0_bits_crossPageIPFFix,
  input         io_in_0_bits_ftqPtr_flag,
  input  [5:0]  io_in_0_bits_ftqPtr_value,
  input  [2:0]  io_in_0_bits_ftqOffset,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [31:0] io_in_1_bits_instr,
  input  [9:0]  io_in_1_bits_foldpc,
  input         io_in_1_bits_exceptionVec_1,
  input         io_in_1_bits_exceptionVec_12,
  input         io_in_1_bits_trigger_frontendHit_0,
  input         io_in_1_bits_trigger_frontendHit_1,
  input         io_in_1_bits_trigger_frontendHit_2,
  input         io_in_1_bits_trigger_frontendHit_3,
  input         io_in_1_bits_trigger_backendEn_0,
  input         io_in_1_bits_trigger_backendEn_1,
  input         io_in_1_bits_trigger_backendHit_0,
  input         io_in_1_bits_trigger_backendHit_1,
  input         io_in_1_bits_trigger_backendHit_2,
  input         io_in_1_bits_trigger_backendHit_3,
  input         io_in_1_bits_trigger_backendHit_4,
  input         io_in_1_bits_trigger_backendHit_5,
  input         io_in_1_bits_pd_isRVC,
  input  [1:0]  io_in_1_bits_pd_brType,
  input         io_in_1_bits_pd_isCall,
  input         io_in_1_bits_pd_isRet,
  input         io_in_1_bits_pred_taken,
  input         io_in_1_bits_crossPageIPFFix,
  input         io_in_1_bits_ftqPtr_flag,
  input  [5:0]  io_in_1_bits_ftqPtr_value,
  input  [2:0]  io_in_1_bits_ftqOffset,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [31:0] io_in_2_bits_instr,
  input  [9:0]  io_in_2_bits_foldpc,
  input         io_in_2_bits_exceptionVec_1,
  input         io_in_2_bits_exceptionVec_12,
  input         io_in_2_bits_trigger_frontendHit_0,
  input         io_in_2_bits_trigger_frontendHit_1,
  input         io_in_2_bits_trigger_frontendHit_2,
  input         io_in_2_bits_trigger_frontendHit_3,
  input         io_in_2_bits_trigger_backendEn_0,
  input         io_in_2_bits_trigger_backendEn_1,
  input         io_in_2_bits_trigger_backendHit_0,
  input         io_in_2_bits_trigger_backendHit_1,
  input         io_in_2_bits_trigger_backendHit_2,
  input         io_in_2_bits_trigger_backendHit_3,
  input         io_in_2_bits_trigger_backendHit_4,
  input         io_in_2_bits_trigger_backendHit_5,
  input         io_in_2_bits_pd_isRVC,
  input  [1:0]  io_in_2_bits_pd_brType,
  input         io_in_2_bits_pd_isCall,
  input         io_in_2_bits_pd_isRet,
  input         io_in_2_bits_pred_taken,
  input         io_in_2_bits_crossPageIPFFix,
  input         io_in_2_bits_ftqPtr_flag,
  input  [5:0]  io_in_2_bits_ftqPtr_value,
  input  [2:0]  io_in_2_bits_ftqOffset,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [31:0] io_in_3_bits_instr,
  input  [9:0]  io_in_3_bits_foldpc,
  input         io_in_3_bits_exceptionVec_1,
  input         io_in_3_bits_exceptionVec_12,
  input         io_in_3_bits_trigger_frontendHit_0,
  input         io_in_3_bits_trigger_frontendHit_1,
  input         io_in_3_bits_trigger_frontendHit_2,
  input         io_in_3_bits_trigger_frontendHit_3,
  input         io_in_3_bits_trigger_backendEn_0,
  input         io_in_3_bits_trigger_backendEn_1,
  input         io_in_3_bits_trigger_backendHit_0,
  input         io_in_3_bits_trigger_backendHit_1,
  input         io_in_3_bits_trigger_backendHit_2,
  input         io_in_3_bits_trigger_backendHit_3,
  input         io_in_3_bits_trigger_backendHit_4,
  input         io_in_3_bits_trigger_backendHit_5,
  input         io_in_3_bits_pd_isRVC,
  input  [1:0]  io_in_3_bits_pd_brType,
  input         io_in_3_bits_pd_isCall,
  input         io_in_3_bits_pd_isRet,
  input         io_in_3_bits_pred_taken,
  input         io_in_3_bits_crossPageIPFFix,
  input         io_in_3_bits_ftqPtr_flag,
  input  [5:0]  io_in_3_bits_ftqPtr_value,
  input  [2:0]  io_in_3_bits_ftqOffset,
  input         io_out_0_ready,
  output        io_out_0_valid,
  output [9:0]  io_out_0_bits_cf_foldpc,
  output        io_out_0_bits_cf_exceptionVec_1,
  output        io_out_0_bits_cf_exceptionVec_2,
  output        io_out_0_bits_cf_exceptionVec_12,
  output        io_out_0_bits_cf_trigger_frontendHit_0,
  output        io_out_0_bits_cf_trigger_frontendHit_1,
  output        io_out_0_bits_cf_trigger_frontendHit_2,
  output        io_out_0_bits_cf_trigger_frontendHit_3,
  output        io_out_0_bits_cf_trigger_backendEn_0,
  output        io_out_0_bits_cf_trigger_backendEn_1,
  output        io_out_0_bits_cf_trigger_backendHit_0,
  output        io_out_0_bits_cf_trigger_backendHit_1,
  output        io_out_0_bits_cf_trigger_backendHit_2,
  output        io_out_0_bits_cf_trigger_backendHit_3,
  output        io_out_0_bits_cf_trigger_backendHit_4,
  output        io_out_0_bits_cf_trigger_backendHit_5,
  output        io_out_0_bits_cf_pd_isRVC,
  output [1:0]  io_out_0_bits_cf_pd_brType,
  output        io_out_0_bits_cf_pd_isCall,
  output        io_out_0_bits_cf_pd_isRet,
  output        io_out_0_bits_cf_pred_taken,
  output        io_out_0_bits_cf_crossPageIPFFix,
  output        io_out_0_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_0_bits_cf_ftqPtr_value,
  output [2:0]  io_out_0_bits_cf_ftqOffset,
  output [1:0]  io_out_0_bits_ctrl_srcType_0,
  output [1:0]  io_out_0_bits_ctrl_srcType_1,
  output [1:0]  io_out_0_bits_ctrl_srcType_2,
  output [4:0]  io_out_0_bits_ctrl_lsrc_0,
  output [4:0]  io_out_0_bits_ctrl_lsrc_1,
  output [4:0]  io_out_0_bits_ctrl_lsrc_2,
  output [4:0]  io_out_0_bits_ctrl_ldest,
  output [3:0]  io_out_0_bits_ctrl_fuType,
  output [6:0]  io_out_0_bits_ctrl_fuOpType,
  output        io_out_0_bits_ctrl_rfWen,
  output        io_out_0_bits_ctrl_fpWen,
  output        io_out_0_bits_ctrl_isRVCORETrap,
  output        io_out_0_bits_ctrl_noSpecExec,
  output        io_out_0_bits_ctrl_blockBackward,
  output        io_out_0_bits_ctrl_flushPipe,
  output [3:0]  io_out_0_bits_ctrl_selImm,
  output [19:0] io_out_0_bits_ctrl_imm,
  output [2:0]  io_out_0_bits_ctrl_commitType,
  output        io_out_0_bits_ctrl_fpu_isAddSub,
  output        io_out_0_bits_ctrl_fpu_typeTagIn,
  output        io_out_0_bits_ctrl_fpu_typeTagOut,
  output        io_out_0_bits_ctrl_fpu_fromInt,
  output        io_out_0_bits_ctrl_fpu_wflags,
  output        io_out_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_0_bits_ctrl_fpu_fmaCmd,
  output        io_out_0_bits_ctrl_fpu_div,
  output        io_out_0_bits_ctrl_fpu_sqrt,
  output        io_out_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_0_bits_ctrl_fpu_typ,
  output [1:0]  io_out_0_bits_ctrl_fpu_fmt,
  output        io_out_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_0_bits_ctrl_fpu_rm,
  output        io_out_0_bits_ctrl_isMove,
  input         io_out_1_ready,
  output        io_out_1_valid,
  output [9:0]  io_out_1_bits_cf_foldpc,
  output        io_out_1_bits_cf_exceptionVec_1,
  output        io_out_1_bits_cf_exceptionVec_2,
  output        io_out_1_bits_cf_exceptionVec_12,
  output        io_out_1_bits_cf_trigger_frontendHit_0,
  output        io_out_1_bits_cf_trigger_frontendHit_1,
  output        io_out_1_bits_cf_trigger_frontendHit_2,
  output        io_out_1_bits_cf_trigger_frontendHit_3,
  output        io_out_1_bits_cf_trigger_backendEn_0,
  output        io_out_1_bits_cf_trigger_backendEn_1,
  output        io_out_1_bits_cf_trigger_backendHit_0,
  output        io_out_1_bits_cf_trigger_backendHit_1,
  output        io_out_1_bits_cf_trigger_backendHit_2,
  output        io_out_1_bits_cf_trigger_backendHit_3,
  output        io_out_1_bits_cf_trigger_backendHit_4,
  output        io_out_1_bits_cf_trigger_backendHit_5,
  output        io_out_1_bits_cf_pd_isRVC,
  output [1:0]  io_out_1_bits_cf_pd_brType,
  output        io_out_1_bits_cf_pd_isCall,
  output        io_out_1_bits_cf_pd_isRet,
  output        io_out_1_bits_cf_pred_taken,
  output        io_out_1_bits_cf_crossPageIPFFix,
  output        io_out_1_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_1_bits_cf_ftqPtr_value,
  output [2:0]  io_out_1_bits_cf_ftqOffset,
  output [1:0]  io_out_1_bits_ctrl_srcType_0,
  output [1:0]  io_out_1_bits_ctrl_srcType_1,
  output [1:0]  io_out_1_bits_ctrl_srcType_2,
  output [4:0]  io_out_1_bits_ctrl_lsrc_0,
  output [4:0]  io_out_1_bits_ctrl_lsrc_1,
  output [4:0]  io_out_1_bits_ctrl_lsrc_2,
  output [4:0]  io_out_1_bits_ctrl_ldest,
  output [3:0]  io_out_1_bits_ctrl_fuType,
  output [6:0]  io_out_1_bits_ctrl_fuOpType,
  output        io_out_1_bits_ctrl_rfWen,
  output        io_out_1_bits_ctrl_fpWen,
  output        io_out_1_bits_ctrl_isRVCORETrap,
  output        io_out_1_bits_ctrl_noSpecExec,
  output        io_out_1_bits_ctrl_blockBackward,
  output        io_out_1_bits_ctrl_flushPipe,
  output [3:0]  io_out_1_bits_ctrl_selImm,
  output [19:0] io_out_1_bits_ctrl_imm,
  output [2:0]  io_out_1_bits_ctrl_commitType,
  output        io_out_1_bits_ctrl_fpu_isAddSub,
  output        io_out_1_bits_ctrl_fpu_typeTagIn,
  output        io_out_1_bits_ctrl_fpu_typeTagOut,
  output        io_out_1_bits_ctrl_fpu_fromInt,
  output        io_out_1_bits_ctrl_fpu_wflags,
  output        io_out_1_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_1_bits_ctrl_fpu_fmaCmd,
  output        io_out_1_bits_ctrl_fpu_div,
  output        io_out_1_bits_ctrl_fpu_sqrt,
  output        io_out_1_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_1_bits_ctrl_fpu_typ,
  output [1:0]  io_out_1_bits_ctrl_fpu_fmt,
  output        io_out_1_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_1_bits_ctrl_fpu_rm,
  output        io_out_1_bits_ctrl_isMove,
  input         io_out_2_ready,
  output        io_out_2_valid,
  output [9:0]  io_out_2_bits_cf_foldpc,
  output        io_out_2_bits_cf_exceptionVec_1,
  output        io_out_2_bits_cf_exceptionVec_2,
  output        io_out_2_bits_cf_exceptionVec_12,
  output        io_out_2_bits_cf_trigger_frontendHit_0,
  output        io_out_2_bits_cf_trigger_frontendHit_1,
  output        io_out_2_bits_cf_trigger_frontendHit_2,
  output        io_out_2_bits_cf_trigger_frontendHit_3,
  output        io_out_2_bits_cf_trigger_backendEn_0,
  output        io_out_2_bits_cf_trigger_backendEn_1,
  output        io_out_2_bits_cf_trigger_backendHit_0,
  output        io_out_2_bits_cf_trigger_backendHit_1,
  output        io_out_2_bits_cf_trigger_backendHit_2,
  output        io_out_2_bits_cf_trigger_backendHit_3,
  output        io_out_2_bits_cf_trigger_backendHit_4,
  output        io_out_2_bits_cf_trigger_backendHit_5,
  output        io_out_2_bits_cf_pd_isRVC,
  output [1:0]  io_out_2_bits_cf_pd_brType,
  output        io_out_2_bits_cf_pd_isCall,
  output        io_out_2_bits_cf_pd_isRet,
  output        io_out_2_bits_cf_pred_taken,
  output        io_out_2_bits_cf_crossPageIPFFix,
  output        io_out_2_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_2_bits_cf_ftqPtr_value,
  output [2:0]  io_out_2_bits_cf_ftqOffset,
  output [1:0]  io_out_2_bits_ctrl_srcType_0,
  output [1:0]  io_out_2_bits_ctrl_srcType_1,
  output [1:0]  io_out_2_bits_ctrl_srcType_2,
  output [4:0]  io_out_2_bits_ctrl_lsrc_0,
  output [4:0]  io_out_2_bits_ctrl_lsrc_1,
  output [4:0]  io_out_2_bits_ctrl_lsrc_2,
  output [4:0]  io_out_2_bits_ctrl_ldest,
  output [3:0]  io_out_2_bits_ctrl_fuType,
  output [6:0]  io_out_2_bits_ctrl_fuOpType,
  output        io_out_2_bits_ctrl_rfWen,
  output        io_out_2_bits_ctrl_fpWen,
  output        io_out_2_bits_ctrl_isRVCORETrap,
  output        io_out_2_bits_ctrl_noSpecExec,
  output        io_out_2_bits_ctrl_blockBackward,
  output        io_out_2_bits_ctrl_flushPipe,
  output [3:0]  io_out_2_bits_ctrl_selImm,
  output [19:0] io_out_2_bits_ctrl_imm,
  output [2:0]  io_out_2_bits_ctrl_commitType,
  output        io_out_2_bits_ctrl_fpu_isAddSub,
  output        io_out_2_bits_ctrl_fpu_typeTagIn,
  output        io_out_2_bits_ctrl_fpu_typeTagOut,
  output        io_out_2_bits_ctrl_fpu_fromInt,
  output        io_out_2_bits_ctrl_fpu_wflags,
  output        io_out_2_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_2_bits_ctrl_fpu_fmaCmd,
  output        io_out_2_bits_ctrl_fpu_div,
  output        io_out_2_bits_ctrl_fpu_sqrt,
  output        io_out_2_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_2_bits_ctrl_fpu_typ,
  output [1:0]  io_out_2_bits_ctrl_fpu_fmt,
  output        io_out_2_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_2_bits_ctrl_fpu_rm,
  output        io_out_2_bits_ctrl_isMove,
  input         io_out_3_ready,
  output        io_out_3_valid,
  output [9:0]  io_out_3_bits_cf_foldpc,
  output        io_out_3_bits_cf_exceptionVec_1,
  output        io_out_3_bits_cf_exceptionVec_2,
  output        io_out_3_bits_cf_exceptionVec_12,
  output        io_out_3_bits_cf_trigger_frontendHit_0,
  output        io_out_3_bits_cf_trigger_frontendHit_1,
  output        io_out_3_bits_cf_trigger_frontendHit_2,
  output        io_out_3_bits_cf_trigger_frontendHit_3,
  output        io_out_3_bits_cf_trigger_backendEn_0,
  output        io_out_3_bits_cf_trigger_backendEn_1,
  output        io_out_3_bits_cf_trigger_backendHit_0,
  output        io_out_3_bits_cf_trigger_backendHit_1,
  output        io_out_3_bits_cf_trigger_backendHit_2,
  output        io_out_3_bits_cf_trigger_backendHit_3,
  output        io_out_3_bits_cf_trigger_backendHit_4,
  output        io_out_3_bits_cf_trigger_backendHit_5,
  output        io_out_3_bits_cf_pd_isRVC,
  output [1:0]  io_out_3_bits_cf_pd_brType,
  output        io_out_3_bits_cf_pd_isCall,
  output        io_out_3_bits_cf_pd_isRet,
  output        io_out_3_bits_cf_pred_taken,
  output        io_out_3_bits_cf_crossPageIPFFix,
  output        io_out_3_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_3_bits_cf_ftqPtr_value,
  output [2:0]  io_out_3_bits_cf_ftqOffset,
  output [1:0]  io_out_3_bits_ctrl_srcType_0,
  output [1:0]  io_out_3_bits_ctrl_srcType_1,
  output [1:0]  io_out_3_bits_ctrl_srcType_2,
  output [4:0]  io_out_3_bits_ctrl_lsrc_0,
  output [4:0]  io_out_3_bits_ctrl_lsrc_1,
  output [4:0]  io_out_3_bits_ctrl_lsrc_2,
  output [4:0]  io_out_3_bits_ctrl_ldest,
  output [3:0]  io_out_3_bits_ctrl_fuType,
  output [6:0]  io_out_3_bits_ctrl_fuOpType,
  output        io_out_3_bits_ctrl_rfWen,
  output        io_out_3_bits_ctrl_fpWen,
  output        io_out_3_bits_ctrl_isRVCORETrap,
  output        io_out_3_bits_ctrl_noSpecExec,
  output        io_out_3_bits_ctrl_blockBackward,
  output        io_out_3_bits_ctrl_flushPipe,
  output [3:0]  io_out_3_bits_ctrl_selImm,
  output [19:0] io_out_3_bits_ctrl_imm,
  output        io_out_3_bits_ctrl_fpu_isAddSub,
  output        io_out_3_bits_ctrl_fpu_typeTagIn,
  output        io_out_3_bits_ctrl_fpu_typeTagOut,
  output        io_out_3_bits_ctrl_fpu_fromInt,
  output        io_out_3_bits_ctrl_fpu_wflags,
  output        io_out_3_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_3_bits_ctrl_fpu_fmaCmd,
  output        io_out_3_bits_ctrl_fpu_div,
  output        io_out_3_bits_ctrl_fpu_sqrt,
  output        io_out_3_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_3_bits_ctrl_fpu_typ,
  output [1:0]  io_out_3_bits_ctrl_fpu_fmt,
  output        io_out_3_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_3_bits_ctrl_fpu_rm,
  output        io_out_3_bits_ctrl_isMove,
  input         io_csrCtrl_soft_prefetch_enable,
  input         io_csrCtrl_svinval_enable,
  input         io_csrCtrl_singlestep,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] decoders_0_io_enq_ctrl_flow_instr; // @[DecodeStage.scala 36:46]
  wire [9:0] decoders_0_io_enq_ctrl_flow_foldpc; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_exceptionVec_1; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_exceptionVec_12; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_frontendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_frontendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_frontendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_frontendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_backendEn_0; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_backendEn_1; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_backendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_backendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_backendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_backendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_backendHit_4; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_trigger_backendHit_5; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_pd_isRVC; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_0_io_enq_ctrl_flow_pd_brType; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_pd_isCall; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_pd_isRet; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_pred_taken; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_crossPageIPFFix; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_enq_ctrl_flow_ftqPtr_flag; // @[DecodeStage.scala 36:46]
  wire [5:0] decoders_0_io_enq_ctrl_flow_ftqPtr_value; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_0_io_enq_ctrl_flow_ftqOffset; // @[DecodeStage.scala 36:46]
  wire [9:0] decoders_0_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_4; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_5; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 36:46]
  wire [5:0] decoders_0_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_0_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_0_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_0_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_0_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_0_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 36:46]
  wire [3:0] decoders_0_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 36:46]
  wire [6:0] decoders_0_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_isRVCORETrap; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 36:46]
  wire [3:0] decoders_0_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 36:46]
  wire [19:0] decoders_0_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_0_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_csrCtrl_soft_prefetch_enable; // @[DecodeStage.scala 36:46]
  wire  decoders_0_io_csrCtrl_svinval_enable; // @[DecodeStage.scala 36:46]
  wire [31:0] decoders_1_io_enq_ctrl_flow_instr; // @[DecodeStage.scala 36:46]
  wire [9:0] decoders_1_io_enq_ctrl_flow_foldpc; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_exceptionVec_1; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_exceptionVec_12; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_frontendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_frontendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_frontendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_frontendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_backendEn_0; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_backendEn_1; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_backendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_backendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_backendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_backendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_backendHit_4; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_trigger_backendHit_5; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_pd_isRVC; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_1_io_enq_ctrl_flow_pd_brType; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_pd_isCall; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_pd_isRet; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_pred_taken; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_crossPageIPFFix; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_enq_ctrl_flow_ftqPtr_flag; // @[DecodeStage.scala 36:46]
  wire [5:0] decoders_1_io_enq_ctrl_flow_ftqPtr_value; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_1_io_enq_ctrl_flow_ftqOffset; // @[DecodeStage.scala 36:46]
  wire [9:0] decoders_1_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_4; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_5; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 36:46]
  wire [5:0] decoders_1_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_1_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_1_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_1_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_1_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_1_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 36:46]
  wire [3:0] decoders_1_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 36:46]
  wire [6:0] decoders_1_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_isRVCORETrap; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 36:46]
  wire [3:0] decoders_1_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 36:46]
  wire [19:0] decoders_1_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_1_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_csrCtrl_soft_prefetch_enable; // @[DecodeStage.scala 36:46]
  wire  decoders_1_io_csrCtrl_svinval_enable; // @[DecodeStage.scala 36:46]
  wire [31:0] decoders_2_io_enq_ctrl_flow_instr; // @[DecodeStage.scala 36:46]
  wire [9:0] decoders_2_io_enq_ctrl_flow_foldpc; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_exceptionVec_1; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_exceptionVec_12; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_frontendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_frontendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_frontendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_frontendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_backendEn_0; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_backendEn_1; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_backendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_backendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_backendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_backendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_backendHit_4; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_trigger_backendHit_5; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_pd_isRVC; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_2_io_enq_ctrl_flow_pd_brType; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_pd_isCall; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_pd_isRet; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_pred_taken; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_crossPageIPFFix; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_enq_ctrl_flow_ftqPtr_flag; // @[DecodeStage.scala 36:46]
  wire [5:0] decoders_2_io_enq_ctrl_flow_ftqPtr_value; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_2_io_enq_ctrl_flow_ftqOffset; // @[DecodeStage.scala 36:46]
  wire [9:0] decoders_2_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_4; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_5; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_2_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 36:46]
  wire [5:0] decoders_2_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_2_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_2_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_2_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_2_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_2_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_2_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_2_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_2_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 36:46]
  wire [3:0] decoders_2_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 36:46]
  wire [6:0] decoders_2_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_isRVCORETrap; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 36:46]
  wire [3:0] decoders_2_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 36:46]
  wire [19:0] decoders_2_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_2_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_2_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_2_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_2_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_csrCtrl_soft_prefetch_enable; // @[DecodeStage.scala 36:46]
  wire  decoders_2_io_csrCtrl_svinval_enable; // @[DecodeStage.scala 36:46]
  wire [31:0] decoders_3_io_enq_ctrl_flow_instr; // @[DecodeStage.scala 36:46]
  wire [9:0] decoders_3_io_enq_ctrl_flow_foldpc; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_exceptionVec_1; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_exceptionVec_12; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_frontendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_frontendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_frontendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_frontendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_backendEn_0; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_backendEn_1; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_backendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_backendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_backendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_backendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_backendHit_4; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_trigger_backendHit_5; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_pd_isRVC; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_3_io_enq_ctrl_flow_pd_brType; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_pd_isCall; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_pd_isRet; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_pred_taken; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_crossPageIPFFix; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_enq_ctrl_flow_ftqPtr_flag; // @[DecodeStage.scala 36:46]
  wire [5:0] decoders_3_io_enq_ctrl_flow_ftqPtr_value; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_3_io_enq_ctrl_flow_ftqOffset; // @[DecodeStage.scala 36:46]
  wire [9:0] decoders_3_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_0; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_1; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_2; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_3; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_4; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_5; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_3_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 36:46]
  wire [5:0] decoders_3_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_3_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_3_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_3_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_3_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_3_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_3_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_3_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 36:46]
  wire [4:0] decoders_3_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 36:46]
  wire [3:0] decoders_3_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 36:46]
  wire [6:0] decoders_3_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_isRVCORETrap; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 36:46]
  wire [3:0] decoders_3_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 36:46]
  wire [19:0] decoders_3_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_3_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_3_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 36:46]
  wire [1:0] decoders_3_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 36:46]
  wire [2:0] decoders_3_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_csrCtrl_soft_prefetch_enable; // @[DecodeStage.scala 36:46]
  wire  decoders_3_io_csrCtrl_svinval_enable; // @[DecodeStage.scala 36:46]
  wire  fusionDecoder_io_in_0_valid; // @[DecodeStage.scala 50:29]
  wire [31:0] fusionDecoder_io_in_0_bits; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_in_1_valid; // @[DecodeStage.scala 50:29]
  wire [31:0] fusionDecoder_io_in_1_bits; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_in_2_valid; // @[DecodeStage.scala 50:29]
  wire [31:0] fusionDecoder_io_in_2_bits; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_in_3_valid; // @[DecodeStage.scala 50:29]
  wire [31:0] fusionDecoder_io_in_3_bits; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_0_srcType_0; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_0_srcType_1; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_0_srcType_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_0_lsrc_0; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_0_lsrc_1; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_0_lsrc_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_0_ldest; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_dec_0_fuType; // @[DecodeStage.scala 50:29]
  wire [6:0] fusionDecoder_io_dec_0_fuOpType; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_rfWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_fpWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_isRVCORETrap; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_noSpecExec; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_blockBackward; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_flushPipe; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_dec_0_selImm; // @[DecodeStage.scala 50:29]
  wire [19:0] fusionDecoder_io_dec_0_imm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_fpu_isAddSub; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_fpu_typeTagIn; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_fpu_typeTagOut; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_fpu_fromInt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_fpu_wflags; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_fpu_fpWen; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_0_fpu_fmaCmd; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_fpu_div; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_fpu_sqrt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_fpu_fcvt; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_0_fpu_typ; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_0_fpu_fmt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_fpu_ren3; // @[DecodeStage.scala 50:29]
  wire [2:0] fusionDecoder_io_dec_0_fpu_rm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_0_isMove; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_1_srcType_0; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_1_srcType_1; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_1_srcType_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_1_lsrc_0; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_1_lsrc_1; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_1_lsrc_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_1_ldest; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_dec_1_fuType; // @[DecodeStage.scala 50:29]
  wire [6:0] fusionDecoder_io_dec_1_fuOpType; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_rfWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_fpWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_isRVCORETrap; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_noSpecExec; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_blockBackward; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_flushPipe; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_dec_1_selImm; // @[DecodeStage.scala 50:29]
  wire [19:0] fusionDecoder_io_dec_1_imm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_fpu_isAddSub; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_fpu_typeTagIn; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_fpu_typeTagOut; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_fpu_fromInt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_fpu_wflags; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_fpu_fpWen; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_1_fpu_fmaCmd; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_fpu_div; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_fpu_sqrt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_fpu_fcvt; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_1_fpu_typ; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_1_fpu_fmt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_fpu_ren3; // @[DecodeStage.scala 50:29]
  wire [2:0] fusionDecoder_io_dec_1_fpu_rm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_1_isMove; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_2_srcType_0; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_2_srcType_1; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_2_srcType_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_2_lsrc_0; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_2_lsrc_1; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_2_lsrc_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_dec_2_ldest; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_dec_2_fuType; // @[DecodeStage.scala 50:29]
  wire [6:0] fusionDecoder_io_dec_2_fuOpType; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_rfWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_fpWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_isRVCORETrap; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_noSpecExec; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_blockBackward; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_flushPipe; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_dec_2_selImm; // @[DecodeStage.scala 50:29]
  wire [19:0] fusionDecoder_io_dec_2_imm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_fpu_isAddSub; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_fpu_typeTagIn; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_fpu_typeTagOut; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_fpu_fromInt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_fpu_wflags; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_fpu_fpWen; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_2_fpu_fmaCmd; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_fpu_div; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_fpu_sqrt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_fpu_fcvt; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_2_fpu_typ; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_dec_2_fpu_fmt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_fpu_ren3; // @[DecodeStage.scala 50:29]
  wire [2:0] fusionDecoder_io_dec_2_fpu_rm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_dec_2_isMove; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_ready; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_valid; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_0_bits_srcType_0; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_0_bits_srcType_1; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_0_bits_srcType_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_0_bits_lsrc_0; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_0_bits_lsrc_1; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_0_bits_lsrc_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_0_bits_ldest; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_out_0_bits_fuType; // @[DecodeStage.scala 50:29]
  wire [6:0] fusionDecoder_io_out_0_bits_fuOpType; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_rfWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_fpWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_isRVCORETrap; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_noSpecExec; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_blockBackward; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_flushPipe; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_out_0_bits_selImm; // @[DecodeStage.scala 50:29]
  wire [19:0] fusionDecoder_io_out_0_bits_imm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_fpu_isAddSub; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_fpu_typeTagIn; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_fpu_typeTagOut; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_fpu_fromInt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_fpu_wflags; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_fpu_fpWen; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_0_bits_fpu_fmaCmd; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_fpu_div; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_fpu_sqrt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_fpu_fcvt; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_0_bits_fpu_typ; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_0_bits_fpu_fmt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_fpu_ren3; // @[DecodeStage.scala 50:29]
  wire [2:0] fusionDecoder_io_out_0_bits_fpu_rm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_0_bits_isMove; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_ready; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_valid; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_1_bits_srcType_0; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_1_bits_srcType_1; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_1_bits_srcType_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_1_bits_lsrc_0; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_1_bits_lsrc_1; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_1_bits_lsrc_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_1_bits_ldest; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_out_1_bits_fuType; // @[DecodeStage.scala 50:29]
  wire [6:0] fusionDecoder_io_out_1_bits_fuOpType; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_rfWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_fpWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_isRVCORETrap; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_noSpecExec; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_blockBackward; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_flushPipe; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_out_1_bits_selImm; // @[DecodeStage.scala 50:29]
  wire [19:0] fusionDecoder_io_out_1_bits_imm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_fpu_isAddSub; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_fpu_typeTagIn; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_fpu_typeTagOut; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_fpu_fromInt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_fpu_wflags; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_fpu_fpWen; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_1_bits_fpu_fmaCmd; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_fpu_div; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_fpu_sqrt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_fpu_fcvt; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_1_bits_fpu_typ; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_1_bits_fpu_fmt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_fpu_ren3; // @[DecodeStage.scala 50:29]
  wire [2:0] fusionDecoder_io_out_1_bits_fpu_rm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_1_bits_isMove; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_ready; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_valid; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_2_bits_srcType_0; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_2_bits_srcType_1; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_2_bits_srcType_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_2_bits_lsrc_0; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_2_bits_lsrc_1; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_2_bits_lsrc_2; // @[DecodeStage.scala 50:29]
  wire [4:0] fusionDecoder_io_out_2_bits_ldest; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_out_2_bits_fuType; // @[DecodeStage.scala 50:29]
  wire [6:0] fusionDecoder_io_out_2_bits_fuOpType; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_rfWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_fpWen; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_isRVCORETrap; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_noSpecExec; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_blockBackward; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_flushPipe; // @[DecodeStage.scala 50:29]
  wire [3:0] fusionDecoder_io_out_2_bits_selImm; // @[DecodeStage.scala 50:29]
  wire [19:0] fusionDecoder_io_out_2_bits_imm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_fpu_isAddSub; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_fpu_typeTagIn; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_fpu_typeTagOut; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_fpu_fromInt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_fpu_wflags; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_fpu_fpWen; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_2_bits_fpu_fmaCmd; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_fpu_div; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_fpu_sqrt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_fpu_fcvt; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_2_bits_fpu_typ; // @[DecodeStage.scala 50:29]
  wire [1:0] fusionDecoder_io_out_2_bits_fpu_fmt; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_fpu_ren3; // @[DecodeStage.scala 50:29]
  wire [2:0] fusionDecoder_io_out_2_bits_fpu_rm; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_out_2_bits_isMove; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_clear_0; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_clear_1; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_clear_2; // @[DecodeStage.scala 50:29]
  wire  fusionDecoder_io_clear_3; // @[DecodeStage.scala 50:29]
  wire  sameFtqPtr = io_out_0_bits_cf_ftqPtr_value == io_out_1_bits_cf_ftqPtr_value; // @[DecodeStage.scala 63:49]
  wire [2:0] ftqOffsetDiff = io_out_1_bits_cf_ftqOffset - io_out_0_bits_cf_ftqOffset; // @[DecodeStage.scala 66:38]
  wire  cond1 = sameFtqPtr & ftqOffsetDiff == 3'h1; // @[DecodeStage.scala 67:30]
  wire  cond2 = sameFtqPtr & ftqOffsetDiff == 3'h2; // @[DecodeStage.scala 68:30]
  wire  cond3 = ~sameFtqPtr & io_out_1_bits_cf_ftqOffset == 3'h0; // @[DecodeStage.scala 69:31]
  wire [2:0] _io_out_0_bits_ctrl_commitType_T = cond3 ? 3'h6 : 3'h7; // @[DecodeStage.scala 71:70]
  wire [2:0] _io_out_0_bits_ctrl_commitType_T_1 = cond2 ? 3'h5 : _io_out_0_bits_ctrl_commitType_T; // @[DecodeStage.scala 71:54]
  wire [2:0] _io_out_0_bits_ctrl_commitType_T_2 = cond1 ? 3'h4 : _io_out_0_bits_ctrl_commitType_T_1; // @[DecodeStage.scala 71:38]
  wire  sameFtqPtr_1 = io_out_1_bits_cf_ftqPtr_value == io_out_2_bits_cf_ftqPtr_value; // @[DecodeStage.scala 63:49]
  wire [2:0] ftqOffsetDiff_1 = io_out_2_bits_cf_ftqOffset - io_out_1_bits_cf_ftqOffset; // @[DecodeStage.scala 66:38]
  wire  cond1_1 = sameFtqPtr_1 & ftqOffsetDiff_1 == 3'h1; // @[DecodeStage.scala 67:30]
  wire  cond2_1 = sameFtqPtr_1 & ftqOffsetDiff_1 == 3'h2; // @[DecodeStage.scala 68:30]
  wire  cond3_1 = ~sameFtqPtr_1 & io_out_2_bits_cf_ftqOffset == 3'h0; // @[DecodeStage.scala 69:31]
  wire [2:0] _io_out_1_bits_ctrl_commitType_T = cond3_1 ? 3'h6 : 3'h7; // @[DecodeStage.scala 71:70]
  wire [2:0] _io_out_1_bits_ctrl_commitType_T_1 = cond2_1 ? 3'h5 : _io_out_1_bits_ctrl_commitType_T; // @[DecodeStage.scala 71:54]
  wire [2:0] _io_out_1_bits_ctrl_commitType_T_2 = cond1_1 ? 3'h4 : _io_out_1_bits_ctrl_commitType_T_1; // @[DecodeStage.scala 71:38]
  wire  sameFtqPtr_2 = io_out_2_bits_cf_ftqPtr_value == io_out_3_bits_cf_ftqPtr_value; // @[DecodeStage.scala 63:49]
  wire [2:0] ftqOffsetDiff_2 = io_out_3_bits_cf_ftqOffset - io_out_2_bits_cf_ftqOffset; // @[DecodeStage.scala 66:38]
  wire  cond1_2 = sameFtqPtr_2 & ftqOffsetDiff_2 == 3'h1; // @[DecodeStage.scala 67:30]
  wire  cond2_2 = sameFtqPtr_2 & ftqOffsetDiff_2 == 3'h2; // @[DecodeStage.scala 68:30]
  wire  cond3_2 = ~sameFtqPtr_2 & io_out_3_bits_cf_ftqOffset == 3'h0; // @[DecodeStage.scala 69:31]
  wire [2:0] _io_out_2_bits_ctrl_commitType_T = cond3_2 ? 3'h6 : 3'h7; // @[DecodeStage.scala 71:70]
  wire [2:0] _io_out_2_bits_ctrl_commitType_T_1 = cond2_2 ? 3'h5 : _io_out_2_bits_ctrl_commitType_T; // @[DecodeStage.scala 71:54]
  wire [2:0] _io_out_2_bits_ctrl_commitType_T_2 = cond1_2 ? 3'h4 : _io_out_2_bits_ctrl_commitType_T_1; // @[DecodeStage.scala 71:38]
  wire [3:0] _hasValid_T = {io_in_3_valid,io_in_2_valid,io_in_1_valid,io_in_0_valid}; // @[DecodeStage.scala 81:46]
  wire  hasValid = |_hasValid_T; // @[DecodeStage.scala 81:53]
  wire [1:0] _T_27 = io_in_0_valid + io_in_1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _T_29 = io_in_2_valid + io_in_3_valid; // @[Bitwise.scala 48:55]
  wire  _T_34 = io_in_0_valid & ~io_in_0_ready; // @[DecodeStage.scala 83:92]
  wire  _T_36 = io_in_1_valid & ~io_in_1_ready; // @[DecodeStage.scala 83:92]
  wire  _T_38 = io_in_2_valid & ~io_in_2_ready; // @[DecodeStage.scala 83:92]
  wire  _T_40 = io_in_3_valid & ~io_in_3_ready; // @[DecodeStage.scala 83:92]
  wire [1:0] _T_41 = _T_34 + _T_36; // @[Bitwise.scala 48:55]
  wire [1:0] _T_43 = _T_38 + _T_40; // @[Bitwise.scala 48:55]
  wire  _T_47 = ~io_out_0_ready; // @[DecodeStage.scala 84:51]
  wire  _T_49 = fusionDecoder_io_out_0_ready & fusionDecoder_io_out_0_valid; // @[Decoupled.scala 50:35]
  wire  _T_50 = fusionDecoder_io_out_1_ready & fusionDecoder_io_out_1_valid; // @[Decoupled.scala 50:35]
  wire  _T_51 = fusionDecoder_io_out_2_ready & fusionDecoder_io_out_2_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _T_52 = _T_50 + _T_51; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_112 = {{1'd0}, _T_49}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_54 = _GEN_112 + _T_52; // @[Bitwise.scala 48:55]
  reg [1:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [1:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [2:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [2:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  DecodeUnit decoders_0 ( // @[DecodeStage.scala 36:46]
    .io_enq_ctrl_flow_instr(decoders_0_io_enq_ctrl_flow_instr),
    .io_enq_ctrl_flow_foldpc(decoders_0_io_enq_ctrl_flow_foldpc),
    .io_enq_ctrl_flow_exceptionVec_1(decoders_0_io_enq_ctrl_flow_exceptionVec_1),
    .io_enq_ctrl_flow_exceptionVec_12(decoders_0_io_enq_ctrl_flow_exceptionVec_12),
    .io_enq_ctrl_flow_trigger_frontendHit_0(decoders_0_io_enq_ctrl_flow_trigger_frontendHit_0),
    .io_enq_ctrl_flow_trigger_frontendHit_1(decoders_0_io_enq_ctrl_flow_trigger_frontendHit_1),
    .io_enq_ctrl_flow_trigger_frontendHit_2(decoders_0_io_enq_ctrl_flow_trigger_frontendHit_2),
    .io_enq_ctrl_flow_trigger_frontendHit_3(decoders_0_io_enq_ctrl_flow_trigger_frontendHit_3),
    .io_enq_ctrl_flow_trigger_backendEn_0(decoders_0_io_enq_ctrl_flow_trigger_backendEn_0),
    .io_enq_ctrl_flow_trigger_backendEn_1(decoders_0_io_enq_ctrl_flow_trigger_backendEn_1),
    .io_enq_ctrl_flow_trigger_backendHit_0(decoders_0_io_enq_ctrl_flow_trigger_backendHit_0),
    .io_enq_ctrl_flow_trigger_backendHit_1(decoders_0_io_enq_ctrl_flow_trigger_backendHit_1),
    .io_enq_ctrl_flow_trigger_backendHit_2(decoders_0_io_enq_ctrl_flow_trigger_backendHit_2),
    .io_enq_ctrl_flow_trigger_backendHit_3(decoders_0_io_enq_ctrl_flow_trigger_backendHit_3),
    .io_enq_ctrl_flow_trigger_backendHit_4(decoders_0_io_enq_ctrl_flow_trigger_backendHit_4),
    .io_enq_ctrl_flow_trigger_backendHit_5(decoders_0_io_enq_ctrl_flow_trigger_backendHit_5),
    .io_enq_ctrl_flow_pd_isRVC(decoders_0_io_enq_ctrl_flow_pd_isRVC),
    .io_enq_ctrl_flow_pd_brType(decoders_0_io_enq_ctrl_flow_pd_brType),
    .io_enq_ctrl_flow_pd_isCall(decoders_0_io_enq_ctrl_flow_pd_isCall),
    .io_enq_ctrl_flow_pd_isRet(decoders_0_io_enq_ctrl_flow_pd_isRet),
    .io_enq_ctrl_flow_pred_taken(decoders_0_io_enq_ctrl_flow_pred_taken),
    .io_enq_ctrl_flow_crossPageIPFFix(decoders_0_io_enq_ctrl_flow_crossPageIPFFix),
    .io_enq_ctrl_flow_ftqPtr_flag(decoders_0_io_enq_ctrl_flow_ftqPtr_flag),
    .io_enq_ctrl_flow_ftqPtr_value(decoders_0_io_enq_ctrl_flow_ftqPtr_value),
    .io_enq_ctrl_flow_ftqOffset(decoders_0_io_enq_ctrl_flow_ftqOffset),
    .io_deq_cf_ctrl_cf_foldpc(decoders_0_io_deq_cf_ctrl_cf_foldpc),
    .io_deq_cf_ctrl_cf_exceptionVec_1(decoders_0_io_deq_cf_ctrl_cf_exceptionVec_1),
    .io_deq_cf_ctrl_cf_exceptionVec_2(decoders_0_io_deq_cf_ctrl_cf_exceptionVec_2),
    .io_deq_cf_ctrl_cf_exceptionVec_12(decoders_0_io_deq_cf_ctrl_cf_exceptionVec_12),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_0(decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_0),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_1(decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_1),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_2(decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_2),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_3(decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_3),
    .io_deq_cf_ctrl_cf_trigger_backendEn_0(decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_0),
    .io_deq_cf_ctrl_cf_trigger_backendEn_1(decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_1),
    .io_deq_cf_ctrl_cf_trigger_backendHit_0(decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_0),
    .io_deq_cf_ctrl_cf_trigger_backendHit_1(decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_1),
    .io_deq_cf_ctrl_cf_trigger_backendHit_2(decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_2),
    .io_deq_cf_ctrl_cf_trigger_backendHit_3(decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_3),
    .io_deq_cf_ctrl_cf_trigger_backendHit_4(decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_4),
    .io_deq_cf_ctrl_cf_trigger_backendHit_5(decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_5),
    .io_deq_cf_ctrl_cf_pd_isRVC(decoders_0_io_deq_cf_ctrl_cf_pd_isRVC),
    .io_deq_cf_ctrl_cf_pd_brType(decoders_0_io_deq_cf_ctrl_cf_pd_brType),
    .io_deq_cf_ctrl_cf_pd_isCall(decoders_0_io_deq_cf_ctrl_cf_pd_isCall),
    .io_deq_cf_ctrl_cf_pd_isRet(decoders_0_io_deq_cf_ctrl_cf_pd_isRet),
    .io_deq_cf_ctrl_cf_pred_taken(decoders_0_io_deq_cf_ctrl_cf_pred_taken),
    .io_deq_cf_ctrl_cf_crossPageIPFFix(decoders_0_io_deq_cf_ctrl_cf_crossPageIPFFix),
    .io_deq_cf_ctrl_cf_ftqPtr_flag(decoders_0_io_deq_cf_ctrl_cf_ftqPtr_flag),
    .io_deq_cf_ctrl_cf_ftqPtr_value(decoders_0_io_deq_cf_ctrl_cf_ftqPtr_value),
    .io_deq_cf_ctrl_cf_ftqOffset(decoders_0_io_deq_cf_ctrl_cf_ftqOffset),
    .io_deq_cf_ctrl_ctrl_srcType_0(decoders_0_io_deq_cf_ctrl_ctrl_srcType_0),
    .io_deq_cf_ctrl_ctrl_srcType_1(decoders_0_io_deq_cf_ctrl_ctrl_srcType_1),
    .io_deq_cf_ctrl_ctrl_srcType_2(decoders_0_io_deq_cf_ctrl_ctrl_srcType_2),
    .io_deq_cf_ctrl_ctrl_lsrc_0(decoders_0_io_deq_cf_ctrl_ctrl_lsrc_0),
    .io_deq_cf_ctrl_ctrl_lsrc_1(decoders_0_io_deq_cf_ctrl_ctrl_lsrc_1),
    .io_deq_cf_ctrl_ctrl_lsrc_2(decoders_0_io_deq_cf_ctrl_ctrl_lsrc_2),
    .io_deq_cf_ctrl_ctrl_ldest(decoders_0_io_deq_cf_ctrl_ctrl_ldest),
    .io_deq_cf_ctrl_ctrl_fuType(decoders_0_io_deq_cf_ctrl_ctrl_fuType),
    .io_deq_cf_ctrl_ctrl_fuOpType(decoders_0_io_deq_cf_ctrl_ctrl_fuOpType),
    .io_deq_cf_ctrl_ctrl_rfWen(decoders_0_io_deq_cf_ctrl_ctrl_rfWen),
    .io_deq_cf_ctrl_ctrl_fpWen(decoders_0_io_deq_cf_ctrl_ctrl_fpWen),
    .io_deq_cf_ctrl_ctrl_isRVCORETrap(decoders_0_io_deq_cf_ctrl_ctrl_isRVCORETrap),
    .io_deq_cf_ctrl_ctrl_noSpecExec(decoders_0_io_deq_cf_ctrl_ctrl_noSpecExec),
    .io_deq_cf_ctrl_ctrl_blockBackward(decoders_0_io_deq_cf_ctrl_ctrl_blockBackward),
    .io_deq_cf_ctrl_ctrl_flushPipe(decoders_0_io_deq_cf_ctrl_ctrl_flushPipe),
    .io_deq_cf_ctrl_ctrl_selImm(decoders_0_io_deq_cf_ctrl_ctrl_selImm),
    .io_deq_cf_ctrl_ctrl_imm(decoders_0_io_deq_cf_ctrl_ctrl_imm),
    .io_deq_cf_ctrl_ctrl_fpu_isAddSub(decoders_0_io_deq_cf_ctrl_ctrl_fpu_isAddSub),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagIn(decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagIn),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagOut(decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagOut),
    .io_deq_cf_ctrl_ctrl_fpu_fromInt(decoders_0_io_deq_cf_ctrl_ctrl_fpu_fromInt),
    .io_deq_cf_ctrl_ctrl_fpu_wflags(decoders_0_io_deq_cf_ctrl_ctrl_fpu_wflags),
    .io_deq_cf_ctrl_ctrl_fpu_fpWen(decoders_0_io_deq_cf_ctrl_ctrl_fpu_fpWen),
    .io_deq_cf_ctrl_ctrl_fpu_fmaCmd(decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmaCmd),
    .io_deq_cf_ctrl_ctrl_fpu_div(decoders_0_io_deq_cf_ctrl_ctrl_fpu_div),
    .io_deq_cf_ctrl_ctrl_fpu_sqrt(decoders_0_io_deq_cf_ctrl_ctrl_fpu_sqrt),
    .io_deq_cf_ctrl_ctrl_fpu_fcvt(decoders_0_io_deq_cf_ctrl_ctrl_fpu_fcvt),
    .io_deq_cf_ctrl_ctrl_fpu_typ(decoders_0_io_deq_cf_ctrl_ctrl_fpu_typ),
    .io_deq_cf_ctrl_ctrl_fpu_fmt(decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmt),
    .io_deq_cf_ctrl_ctrl_fpu_ren3(decoders_0_io_deq_cf_ctrl_ctrl_fpu_ren3),
    .io_deq_cf_ctrl_ctrl_fpu_rm(decoders_0_io_deq_cf_ctrl_ctrl_fpu_rm),
    .io_deq_cf_ctrl_ctrl_isMove(decoders_0_io_deq_cf_ctrl_ctrl_isMove),
    .io_csrCtrl_soft_prefetch_enable(decoders_0_io_csrCtrl_soft_prefetch_enable),
    .io_csrCtrl_svinval_enable(decoders_0_io_csrCtrl_svinval_enable)
  );
  DecodeUnit decoders_1 ( // @[DecodeStage.scala 36:46]
    .io_enq_ctrl_flow_instr(decoders_1_io_enq_ctrl_flow_instr),
    .io_enq_ctrl_flow_foldpc(decoders_1_io_enq_ctrl_flow_foldpc),
    .io_enq_ctrl_flow_exceptionVec_1(decoders_1_io_enq_ctrl_flow_exceptionVec_1),
    .io_enq_ctrl_flow_exceptionVec_12(decoders_1_io_enq_ctrl_flow_exceptionVec_12),
    .io_enq_ctrl_flow_trigger_frontendHit_0(decoders_1_io_enq_ctrl_flow_trigger_frontendHit_0),
    .io_enq_ctrl_flow_trigger_frontendHit_1(decoders_1_io_enq_ctrl_flow_trigger_frontendHit_1),
    .io_enq_ctrl_flow_trigger_frontendHit_2(decoders_1_io_enq_ctrl_flow_trigger_frontendHit_2),
    .io_enq_ctrl_flow_trigger_frontendHit_3(decoders_1_io_enq_ctrl_flow_trigger_frontendHit_3),
    .io_enq_ctrl_flow_trigger_backendEn_0(decoders_1_io_enq_ctrl_flow_trigger_backendEn_0),
    .io_enq_ctrl_flow_trigger_backendEn_1(decoders_1_io_enq_ctrl_flow_trigger_backendEn_1),
    .io_enq_ctrl_flow_trigger_backendHit_0(decoders_1_io_enq_ctrl_flow_trigger_backendHit_0),
    .io_enq_ctrl_flow_trigger_backendHit_1(decoders_1_io_enq_ctrl_flow_trigger_backendHit_1),
    .io_enq_ctrl_flow_trigger_backendHit_2(decoders_1_io_enq_ctrl_flow_trigger_backendHit_2),
    .io_enq_ctrl_flow_trigger_backendHit_3(decoders_1_io_enq_ctrl_flow_trigger_backendHit_3),
    .io_enq_ctrl_flow_trigger_backendHit_4(decoders_1_io_enq_ctrl_flow_trigger_backendHit_4),
    .io_enq_ctrl_flow_trigger_backendHit_5(decoders_1_io_enq_ctrl_flow_trigger_backendHit_5),
    .io_enq_ctrl_flow_pd_isRVC(decoders_1_io_enq_ctrl_flow_pd_isRVC),
    .io_enq_ctrl_flow_pd_brType(decoders_1_io_enq_ctrl_flow_pd_brType),
    .io_enq_ctrl_flow_pd_isCall(decoders_1_io_enq_ctrl_flow_pd_isCall),
    .io_enq_ctrl_flow_pd_isRet(decoders_1_io_enq_ctrl_flow_pd_isRet),
    .io_enq_ctrl_flow_pred_taken(decoders_1_io_enq_ctrl_flow_pred_taken),
    .io_enq_ctrl_flow_crossPageIPFFix(decoders_1_io_enq_ctrl_flow_crossPageIPFFix),
    .io_enq_ctrl_flow_ftqPtr_flag(decoders_1_io_enq_ctrl_flow_ftqPtr_flag),
    .io_enq_ctrl_flow_ftqPtr_value(decoders_1_io_enq_ctrl_flow_ftqPtr_value),
    .io_enq_ctrl_flow_ftqOffset(decoders_1_io_enq_ctrl_flow_ftqOffset),
    .io_deq_cf_ctrl_cf_foldpc(decoders_1_io_deq_cf_ctrl_cf_foldpc),
    .io_deq_cf_ctrl_cf_exceptionVec_1(decoders_1_io_deq_cf_ctrl_cf_exceptionVec_1),
    .io_deq_cf_ctrl_cf_exceptionVec_2(decoders_1_io_deq_cf_ctrl_cf_exceptionVec_2),
    .io_deq_cf_ctrl_cf_exceptionVec_12(decoders_1_io_deq_cf_ctrl_cf_exceptionVec_12),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_0(decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_0),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_1(decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_1),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_2(decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_2),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_3(decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_3),
    .io_deq_cf_ctrl_cf_trigger_backendEn_0(decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_0),
    .io_deq_cf_ctrl_cf_trigger_backendEn_1(decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_1),
    .io_deq_cf_ctrl_cf_trigger_backendHit_0(decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_0),
    .io_deq_cf_ctrl_cf_trigger_backendHit_1(decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_1),
    .io_deq_cf_ctrl_cf_trigger_backendHit_2(decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_2),
    .io_deq_cf_ctrl_cf_trigger_backendHit_3(decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_3),
    .io_deq_cf_ctrl_cf_trigger_backendHit_4(decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_4),
    .io_deq_cf_ctrl_cf_trigger_backendHit_5(decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_5),
    .io_deq_cf_ctrl_cf_pd_isRVC(decoders_1_io_deq_cf_ctrl_cf_pd_isRVC),
    .io_deq_cf_ctrl_cf_pd_brType(decoders_1_io_deq_cf_ctrl_cf_pd_brType),
    .io_deq_cf_ctrl_cf_pd_isCall(decoders_1_io_deq_cf_ctrl_cf_pd_isCall),
    .io_deq_cf_ctrl_cf_pd_isRet(decoders_1_io_deq_cf_ctrl_cf_pd_isRet),
    .io_deq_cf_ctrl_cf_pred_taken(decoders_1_io_deq_cf_ctrl_cf_pred_taken),
    .io_deq_cf_ctrl_cf_crossPageIPFFix(decoders_1_io_deq_cf_ctrl_cf_crossPageIPFFix),
    .io_deq_cf_ctrl_cf_ftqPtr_flag(decoders_1_io_deq_cf_ctrl_cf_ftqPtr_flag),
    .io_deq_cf_ctrl_cf_ftqPtr_value(decoders_1_io_deq_cf_ctrl_cf_ftqPtr_value),
    .io_deq_cf_ctrl_cf_ftqOffset(decoders_1_io_deq_cf_ctrl_cf_ftqOffset),
    .io_deq_cf_ctrl_ctrl_srcType_0(decoders_1_io_deq_cf_ctrl_ctrl_srcType_0),
    .io_deq_cf_ctrl_ctrl_srcType_1(decoders_1_io_deq_cf_ctrl_ctrl_srcType_1),
    .io_deq_cf_ctrl_ctrl_srcType_2(decoders_1_io_deq_cf_ctrl_ctrl_srcType_2),
    .io_deq_cf_ctrl_ctrl_lsrc_0(decoders_1_io_deq_cf_ctrl_ctrl_lsrc_0),
    .io_deq_cf_ctrl_ctrl_lsrc_1(decoders_1_io_deq_cf_ctrl_ctrl_lsrc_1),
    .io_deq_cf_ctrl_ctrl_lsrc_2(decoders_1_io_deq_cf_ctrl_ctrl_lsrc_2),
    .io_deq_cf_ctrl_ctrl_ldest(decoders_1_io_deq_cf_ctrl_ctrl_ldest),
    .io_deq_cf_ctrl_ctrl_fuType(decoders_1_io_deq_cf_ctrl_ctrl_fuType),
    .io_deq_cf_ctrl_ctrl_fuOpType(decoders_1_io_deq_cf_ctrl_ctrl_fuOpType),
    .io_deq_cf_ctrl_ctrl_rfWen(decoders_1_io_deq_cf_ctrl_ctrl_rfWen),
    .io_deq_cf_ctrl_ctrl_fpWen(decoders_1_io_deq_cf_ctrl_ctrl_fpWen),
    .io_deq_cf_ctrl_ctrl_isRVCORETrap(decoders_1_io_deq_cf_ctrl_ctrl_isRVCORETrap),
    .io_deq_cf_ctrl_ctrl_noSpecExec(decoders_1_io_deq_cf_ctrl_ctrl_noSpecExec),
    .io_deq_cf_ctrl_ctrl_blockBackward(decoders_1_io_deq_cf_ctrl_ctrl_blockBackward),
    .io_deq_cf_ctrl_ctrl_flushPipe(decoders_1_io_deq_cf_ctrl_ctrl_flushPipe),
    .io_deq_cf_ctrl_ctrl_selImm(decoders_1_io_deq_cf_ctrl_ctrl_selImm),
    .io_deq_cf_ctrl_ctrl_imm(decoders_1_io_deq_cf_ctrl_ctrl_imm),
    .io_deq_cf_ctrl_ctrl_fpu_isAddSub(decoders_1_io_deq_cf_ctrl_ctrl_fpu_isAddSub),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagIn(decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagIn),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagOut(decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagOut),
    .io_deq_cf_ctrl_ctrl_fpu_fromInt(decoders_1_io_deq_cf_ctrl_ctrl_fpu_fromInt),
    .io_deq_cf_ctrl_ctrl_fpu_wflags(decoders_1_io_deq_cf_ctrl_ctrl_fpu_wflags),
    .io_deq_cf_ctrl_ctrl_fpu_fpWen(decoders_1_io_deq_cf_ctrl_ctrl_fpu_fpWen),
    .io_deq_cf_ctrl_ctrl_fpu_fmaCmd(decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmaCmd),
    .io_deq_cf_ctrl_ctrl_fpu_div(decoders_1_io_deq_cf_ctrl_ctrl_fpu_div),
    .io_deq_cf_ctrl_ctrl_fpu_sqrt(decoders_1_io_deq_cf_ctrl_ctrl_fpu_sqrt),
    .io_deq_cf_ctrl_ctrl_fpu_fcvt(decoders_1_io_deq_cf_ctrl_ctrl_fpu_fcvt),
    .io_deq_cf_ctrl_ctrl_fpu_typ(decoders_1_io_deq_cf_ctrl_ctrl_fpu_typ),
    .io_deq_cf_ctrl_ctrl_fpu_fmt(decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmt),
    .io_deq_cf_ctrl_ctrl_fpu_ren3(decoders_1_io_deq_cf_ctrl_ctrl_fpu_ren3),
    .io_deq_cf_ctrl_ctrl_fpu_rm(decoders_1_io_deq_cf_ctrl_ctrl_fpu_rm),
    .io_deq_cf_ctrl_ctrl_isMove(decoders_1_io_deq_cf_ctrl_ctrl_isMove),
    .io_csrCtrl_soft_prefetch_enable(decoders_1_io_csrCtrl_soft_prefetch_enable),
    .io_csrCtrl_svinval_enable(decoders_1_io_csrCtrl_svinval_enable)
  );
  DecodeUnit decoders_2 ( // @[DecodeStage.scala 36:46]
    .io_enq_ctrl_flow_instr(decoders_2_io_enq_ctrl_flow_instr),
    .io_enq_ctrl_flow_foldpc(decoders_2_io_enq_ctrl_flow_foldpc),
    .io_enq_ctrl_flow_exceptionVec_1(decoders_2_io_enq_ctrl_flow_exceptionVec_1),
    .io_enq_ctrl_flow_exceptionVec_12(decoders_2_io_enq_ctrl_flow_exceptionVec_12),
    .io_enq_ctrl_flow_trigger_frontendHit_0(decoders_2_io_enq_ctrl_flow_trigger_frontendHit_0),
    .io_enq_ctrl_flow_trigger_frontendHit_1(decoders_2_io_enq_ctrl_flow_trigger_frontendHit_1),
    .io_enq_ctrl_flow_trigger_frontendHit_2(decoders_2_io_enq_ctrl_flow_trigger_frontendHit_2),
    .io_enq_ctrl_flow_trigger_frontendHit_3(decoders_2_io_enq_ctrl_flow_trigger_frontendHit_3),
    .io_enq_ctrl_flow_trigger_backendEn_0(decoders_2_io_enq_ctrl_flow_trigger_backendEn_0),
    .io_enq_ctrl_flow_trigger_backendEn_1(decoders_2_io_enq_ctrl_flow_trigger_backendEn_1),
    .io_enq_ctrl_flow_trigger_backendHit_0(decoders_2_io_enq_ctrl_flow_trigger_backendHit_0),
    .io_enq_ctrl_flow_trigger_backendHit_1(decoders_2_io_enq_ctrl_flow_trigger_backendHit_1),
    .io_enq_ctrl_flow_trigger_backendHit_2(decoders_2_io_enq_ctrl_flow_trigger_backendHit_2),
    .io_enq_ctrl_flow_trigger_backendHit_3(decoders_2_io_enq_ctrl_flow_trigger_backendHit_3),
    .io_enq_ctrl_flow_trigger_backendHit_4(decoders_2_io_enq_ctrl_flow_trigger_backendHit_4),
    .io_enq_ctrl_flow_trigger_backendHit_5(decoders_2_io_enq_ctrl_flow_trigger_backendHit_5),
    .io_enq_ctrl_flow_pd_isRVC(decoders_2_io_enq_ctrl_flow_pd_isRVC),
    .io_enq_ctrl_flow_pd_brType(decoders_2_io_enq_ctrl_flow_pd_brType),
    .io_enq_ctrl_flow_pd_isCall(decoders_2_io_enq_ctrl_flow_pd_isCall),
    .io_enq_ctrl_flow_pd_isRet(decoders_2_io_enq_ctrl_flow_pd_isRet),
    .io_enq_ctrl_flow_pred_taken(decoders_2_io_enq_ctrl_flow_pred_taken),
    .io_enq_ctrl_flow_crossPageIPFFix(decoders_2_io_enq_ctrl_flow_crossPageIPFFix),
    .io_enq_ctrl_flow_ftqPtr_flag(decoders_2_io_enq_ctrl_flow_ftqPtr_flag),
    .io_enq_ctrl_flow_ftqPtr_value(decoders_2_io_enq_ctrl_flow_ftqPtr_value),
    .io_enq_ctrl_flow_ftqOffset(decoders_2_io_enq_ctrl_flow_ftqOffset),
    .io_deq_cf_ctrl_cf_foldpc(decoders_2_io_deq_cf_ctrl_cf_foldpc),
    .io_deq_cf_ctrl_cf_exceptionVec_1(decoders_2_io_deq_cf_ctrl_cf_exceptionVec_1),
    .io_deq_cf_ctrl_cf_exceptionVec_2(decoders_2_io_deq_cf_ctrl_cf_exceptionVec_2),
    .io_deq_cf_ctrl_cf_exceptionVec_12(decoders_2_io_deq_cf_ctrl_cf_exceptionVec_12),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_0(decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_0),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_1(decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_1),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_2(decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_2),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_3(decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_3),
    .io_deq_cf_ctrl_cf_trigger_backendEn_0(decoders_2_io_deq_cf_ctrl_cf_trigger_backendEn_0),
    .io_deq_cf_ctrl_cf_trigger_backendEn_1(decoders_2_io_deq_cf_ctrl_cf_trigger_backendEn_1),
    .io_deq_cf_ctrl_cf_trigger_backendHit_0(decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_0),
    .io_deq_cf_ctrl_cf_trigger_backendHit_1(decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_1),
    .io_deq_cf_ctrl_cf_trigger_backendHit_2(decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_2),
    .io_deq_cf_ctrl_cf_trigger_backendHit_3(decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_3),
    .io_deq_cf_ctrl_cf_trigger_backendHit_4(decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_4),
    .io_deq_cf_ctrl_cf_trigger_backendHit_5(decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_5),
    .io_deq_cf_ctrl_cf_pd_isRVC(decoders_2_io_deq_cf_ctrl_cf_pd_isRVC),
    .io_deq_cf_ctrl_cf_pd_brType(decoders_2_io_deq_cf_ctrl_cf_pd_brType),
    .io_deq_cf_ctrl_cf_pd_isCall(decoders_2_io_deq_cf_ctrl_cf_pd_isCall),
    .io_deq_cf_ctrl_cf_pd_isRet(decoders_2_io_deq_cf_ctrl_cf_pd_isRet),
    .io_deq_cf_ctrl_cf_pred_taken(decoders_2_io_deq_cf_ctrl_cf_pred_taken),
    .io_deq_cf_ctrl_cf_crossPageIPFFix(decoders_2_io_deq_cf_ctrl_cf_crossPageIPFFix),
    .io_deq_cf_ctrl_cf_ftqPtr_flag(decoders_2_io_deq_cf_ctrl_cf_ftqPtr_flag),
    .io_deq_cf_ctrl_cf_ftqPtr_value(decoders_2_io_deq_cf_ctrl_cf_ftqPtr_value),
    .io_deq_cf_ctrl_cf_ftqOffset(decoders_2_io_deq_cf_ctrl_cf_ftqOffset),
    .io_deq_cf_ctrl_ctrl_srcType_0(decoders_2_io_deq_cf_ctrl_ctrl_srcType_0),
    .io_deq_cf_ctrl_ctrl_srcType_1(decoders_2_io_deq_cf_ctrl_ctrl_srcType_1),
    .io_deq_cf_ctrl_ctrl_srcType_2(decoders_2_io_deq_cf_ctrl_ctrl_srcType_2),
    .io_deq_cf_ctrl_ctrl_lsrc_0(decoders_2_io_deq_cf_ctrl_ctrl_lsrc_0),
    .io_deq_cf_ctrl_ctrl_lsrc_1(decoders_2_io_deq_cf_ctrl_ctrl_lsrc_1),
    .io_deq_cf_ctrl_ctrl_lsrc_2(decoders_2_io_deq_cf_ctrl_ctrl_lsrc_2),
    .io_deq_cf_ctrl_ctrl_ldest(decoders_2_io_deq_cf_ctrl_ctrl_ldest),
    .io_deq_cf_ctrl_ctrl_fuType(decoders_2_io_deq_cf_ctrl_ctrl_fuType),
    .io_deq_cf_ctrl_ctrl_fuOpType(decoders_2_io_deq_cf_ctrl_ctrl_fuOpType),
    .io_deq_cf_ctrl_ctrl_rfWen(decoders_2_io_deq_cf_ctrl_ctrl_rfWen),
    .io_deq_cf_ctrl_ctrl_fpWen(decoders_2_io_deq_cf_ctrl_ctrl_fpWen),
    .io_deq_cf_ctrl_ctrl_isRVCORETrap(decoders_2_io_deq_cf_ctrl_ctrl_isRVCORETrap),
    .io_deq_cf_ctrl_ctrl_noSpecExec(decoders_2_io_deq_cf_ctrl_ctrl_noSpecExec),
    .io_deq_cf_ctrl_ctrl_blockBackward(decoders_2_io_deq_cf_ctrl_ctrl_blockBackward),
    .io_deq_cf_ctrl_ctrl_flushPipe(decoders_2_io_deq_cf_ctrl_ctrl_flushPipe),
    .io_deq_cf_ctrl_ctrl_selImm(decoders_2_io_deq_cf_ctrl_ctrl_selImm),
    .io_deq_cf_ctrl_ctrl_imm(decoders_2_io_deq_cf_ctrl_ctrl_imm),
    .io_deq_cf_ctrl_ctrl_fpu_isAddSub(decoders_2_io_deq_cf_ctrl_ctrl_fpu_isAddSub),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagIn(decoders_2_io_deq_cf_ctrl_ctrl_fpu_typeTagIn),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagOut(decoders_2_io_deq_cf_ctrl_ctrl_fpu_typeTagOut),
    .io_deq_cf_ctrl_ctrl_fpu_fromInt(decoders_2_io_deq_cf_ctrl_ctrl_fpu_fromInt),
    .io_deq_cf_ctrl_ctrl_fpu_wflags(decoders_2_io_deq_cf_ctrl_ctrl_fpu_wflags),
    .io_deq_cf_ctrl_ctrl_fpu_fpWen(decoders_2_io_deq_cf_ctrl_ctrl_fpu_fpWen),
    .io_deq_cf_ctrl_ctrl_fpu_fmaCmd(decoders_2_io_deq_cf_ctrl_ctrl_fpu_fmaCmd),
    .io_deq_cf_ctrl_ctrl_fpu_div(decoders_2_io_deq_cf_ctrl_ctrl_fpu_div),
    .io_deq_cf_ctrl_ctrl_fpu_sqrt(decoders_2_io_deq_cf_ctrl_ctrl_fpu_sqrt),
    .io_deq_cf_ctrl_ctrl_fpu_fcvt(decoders_2_io_deq_cf_ctrl_ctrl_fpu_fcvt),
    .io_deq_cf_ctrl_ctrl_fpu_typ(decoders_2_io_deq_cf_ctrl_ctrl_fpu_typ),
    .io_deq_cf_ctrl_ctrl_fpu_fmt(decoders_2_io_deq_cf_ctrl_ctrl_fpu_fmt),
    .io_deq_cf_ctrl_ctrl_fpu_ren3(decoders_2_io_deq_cf_ctrl_ctrl_fpu_ren3),
    .io_deq_cf_ctrl_ctrl_fpu_rm(decoders_2_io_deq_cf_ctrl_ctrl_fpu_rm),
    .io_deq_cf_ctrl_ctrl_isMove(decoders_2_io_deq_cf_ctrl_ctrl_isMove),
    .io_csrCtrl_soft_prefetch_enable(decoders_2_io_csrCtrl_soft_prefetch_enable),
    .io_csrCtrl_svinval_enable(decoders_2_io_csrCtrl_svinval_enable)
  );
  DecodeUnit decoders_3 ( // @[DecodeStage.scala 36:46]
    .io_enq_ctrl_flow_instr(decoders_3_io_enq_ctrl_flow_instr),
    .io_enq_ctrl_flow_foldpc(decoders_3_io_enq_ctrl_flow_foldpc),
    .io_enq_ctrl_flow_exceptionVec_1(decoders_3_io_enq_ctrl_flow_exceptionVec_1),
    .io_enq_ctrl_flow_exceptionVec_12(decoders_3_io_enq_ctrl_flow_exceptionVec_12),
    .io_enq_ctrl_flow_trigger_frontendHit_0(decoders_3_io_enq_ctrl_flow_trigger_frontendHit_0),
    .io_enq_ctrl_flow_trigger_frontendHit_1(decoders_3_io_enq_ctrl_flow_trigger_frontendHit_1),
    .io_enq_ctrl_flow_trigger_frontendHit_2(decoders_3_io_enq_ctrl_flow_trigger_frontendHit_2),
    .io_enq_ctrl_flow_trigger_frontendHit_3(decoders_3_io_enq_ctrl_flow_trigger_frontendHit_3),
    .io_enq_ctrl_flow_trigger_backendEn_0(decoders_3_io_enq_ctrl_flow_trigger_backendEn_0),
    .io_enq_ctrl_flow_trigger_backendEn_1(decoders_3_io_enq_ctrl_flow_trigger_backendEn_1),
    .io_enq_ctrl_flow_trigger_backendHit_0(decoders_3_io_enq_ctrl_flow_trigger_backendHit_0),
    .io_enq_ctrl_flow_trigger_backendHit_1(decoders_3_io_enq_ctrl_flow_trigger_backendHit_1),
    .io_enq_ctrl_flow_trigger_backendHit_2(decoders_3_io_enq_ctrl_flow_trigger_backendHit_2),
    .io_enq_ctrl_flow_trigger_backendHit_3(decoders_3_io_enq_ctrl_flow_trigger_backendHit_3),
    .io_enq_ctrl_flow_trigger_backendHit_4(decoders_3_io_enq_ctrl_flow_trigger_backendHit_4),
    .io_enq_ctrl_flow_trigger_backendHit_5(decoders_3_io_enq_ctrl_flow_trigger_backendHit_5),
    .io_enq_ctrl_flow_pd_isRVC(decoders_3_io_enq_ctrl_flow_pd_isRVC),
    .io_enq_ctrl_flow_pd_brType(decoders_3_io_enq_ctrl_flow_pd_brType),
    .io_enq_ctrl_flow_pd_isCall(decoders_3_io_enq_ctrl_flow_pd_isCall),
    .io_enq_ctrl_flow_pd_isRet(decoders_3_io_enq_ctrl_flow_pd_isRet),
    .io_enq_ctrl_flow_pred_taken(decoders_3_io_enq_ctrl_flow_pred_taken),
    .io_enq_ctrl_flow_crossPageIPFFix(decoders_3_io_enq_ctrl_flow_crossPageIPFFix),
    .io_enq_ctrl_flow_ftqPtr_flag(decoders_3_io_enq_ctrl_flow_ftqPtr_flag),
    .io_enq_ctrl_flow_ftqPtr_value(decoders_3_io_enq_ctrl_flow_ftqPtr_value),
    .io_enq_ctrl_flow_ftqOffset(decoders_3_io_enq_ctrl_flow_ftqOffset),
    .io_deq_cf_ctrl_cf_foldpc(decoders_3_io_deq_cf_ctrl_cf_foldpc),
    .io_deq_cf_ctrl_cf_exceptionVec_1(decoders_3_io_deq_cf_ctrl_cf_exceptionVec_1),
    .io_deq_cf_ctrl_cf_exceptionVec_2(decoders_3_io_deq_cf_ctrl_cf_exceptionVec_2),
    .io_deq_cf_ctrl_cf_exceptionVec_12(decoders_3_io_deq_cf_ctrl_cf_exceptionVec_12),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_0(decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_0),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_1(decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_1),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_2(decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_2),
    .io_deq_cf_ctrl_cf_trigger_frontendHit_3(decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_3),
    .io_deq_cf_ctrl_cf_trigger_backendEn_0(decoders_3_io_deq_cf_ctrl_cf_trigger_backendEn_0),
    .io_deq_cf_ctrl_cf_trigger_backendEn_1(decoders_3_io_deq_cf_ctrl_cf_trigger_backendEn_1),
    .io_deq_cf_ctrl_cf_trigger_backendHit_0(decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_0),
    .io_deq_cf_ctrl_cf_trigger_backendHit_1(decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_1),
    .io_deq_cf_ctrl_cf_trigger_backendHit_2(decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_2),
    .io_deq_cf_ctrl_cf_trigger_backendHit_3(decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_3),
    .io_deq_cf_ctrl_cf_trigger_backendHit_4(decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_4),
    .io_deq_cf_ctrl_cf_trigger_backendHit_5(decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_5),
    .io_deq_cf_ctrl_cf_pd_isRVC(decoders_3_io_deq_cf_ctrl_cf_pd_isRVC),
    .io_deq_cf_ctrl_cf_pd_brType(decoders_3_io_deq_cf_ctrl_cf_pd_brType),
    .io_deq_cf_ctrl_cf_pd_isCall(decoders_3_io_deq_cf_ctrl_cf_pd_isCall),
    .io_deq_cf_ctrl_cf_pd_isRet(decoders_3_io_deq_cf_ctrl_cf_pd_isRet),
    .io_deq_cf_ctrl_cf_pred_taken(decoders_3_io_deq_cf_ctrl_cf_pred_taken),
    .io_deq_cf_ctrl_cf_crossPageIPFFix(decoders_3_io_deq_cf_ctrl_cf_crossPageIPFFix),
    .io_deq_cf_ctrl_cf_ftqPtr_flag(decoders_3_io_deq_cf_ctrl_cf_ftqPtr_flag),
    .io_deq_cf_ctrl_cf_ftqPtr_value(decoders_3_io_deq_cf_ctrl_cf_ftqPtr_value),
    .io_deq_cf_ctrl_cf_ftqOffset(decoders_3_io_deq_cf_ctrl_cf_ftqOffset),
    .io_deq_cf_ctrl_ctrl_srcType_0(decoders_3_io_deq_cf_ctrl_ctrl_srcType_0),
    .io_deq_cf_ctrl_ctrl_srcType_1(decoders_3_io_deq_cf_ctrl_ctrl_srcType_1),
    .io_deq_cf_ctrl_ctrl_srcType_2(decoders_3_io_deq_cf_ctrl_ctrl_srcType_2),
    .io_deq_cf_ctrl_ctrl_lsrc_0(decoders_3_io_deq_cf_ctrl_ctrl_lsrc_0),
    .io_deq_cf_ctrl_ctrl_lsrc_1(decoders_3_io_deq_cf_ctrl_ctrl_lsrc_1),
    .io_deq_cf_ctrl_ctrl_lsrc_2(decoders_3_io_deq_cf_ctrl_ctrl_lsrc_2),
    .io_deq_cf_ctrl_ctrl_ldest(decoders_3_io_deq_cf_ctrl_ctrl_ldest),
    .io_deq_cf_ctrl_ctrl_fuType(decoders_3_io_deq_cf_ctrl_ctrl_fuType),
    .io_deq_cf_ctrl_ctrl_fuOpType(decoders_3_io_deq_cf_ctrl_ctrl_fuOpType),
    .io_deq_cf_ctrl_ctrl_rfWen(decoders_3_io_deq_cf_ctrl_ctrl_rfWen),
    .io_deq_cf_ctrl_ctrl_fpWen(decoders_3_io_deq_cf_ctrl_ctrl_fpWen),
    .io_deq_cf_ctrl_ctrl_isRVCORETrap(decoders_3_io_deq_cf_ctrl_ctrl_isRVCORETrap),
    .io_deq_cf_ctrl_ctrl_noSpecExec(decoders_3_io_deq_cf_ctrl_ctrl_noSpecExec),
    .io_deq_cf_ctrl_ctrl_blockBackward(decoders_3_io_deq_cf_ctrl_ctrl_blockBackward),
    .io_deq_cf_ctrl_ctrl_flushPipe(decoders_3_io_deq_cf_ctrl_ctrl_flushPipe),
    .io_deq_cf_ctrl_ctrl_selImm(decoders_3_io_deq_cf_ctrl_ctrl_selImm),
    .io_deq_cf_ctrl_ctrl_imm(decoders_3_io_deq_cf_ctrl_ctrl_imm),
    .io_deq_cf_ctrl_ctrl_fpu_isAddSub(decoders_3_io_deq_cf_ctrl_ctrl_fpu_isAddSub),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagIn(decoders_3_io_deq_cf_ctrl_ctrl_fpu_typeTagIn),
    .io_deq_cf_ctrl_ctrl_fpu_typeTagOut(decoders_3_io_deq_cf_ctrl_ctrl_fpu_typeTagOut),
    .io_deq_cf_ctrl_ctrl_fpu_fromInt(decoders_3_io_deq_cf_ctrl_ctrl_fpu_fromInt),
    .io_deq_cf_ctrl_ctrl_fpu_wflags(decoders_3_io_deq_cf_ctrl_ctrl_fpu_wflags),
    .io_deq_cf_ctrl_ctrl_fpu_fpWen(decoders_3_io_deq_cf_ctrl_ctrl_fpu_fpWen),
    .io_deq_cf_ctrl_ctrl_fpu_fmaCmd(decoders_3_io_deq_cf_ctrl_ctrl_fpu_fmaCmd),
    .io_deq_cf_ctrl_ctrl_fpu_div(decoders_3_io_deq_cf_ctrl_ctrl_fpu_div),
    .io_deq_cf_ctrl_ctrl_fpu_sqrt(decoders_3_io_deq_cf_ctrl_ctrl_fpu_sqrt),
    .io_deq_cf_ctrl_ctrl_fpu_fcvt(decoders_3_io_deq_cf_ctrl_ctrl_fpu_fcvt),
    .io_deq_cf_ctrl_ctrl_fpu_typ(decoders_3_io_deq_cf_ctrl_ctrl_fpu_typ),
    .io_deq_cf_ctrl_ctrl_fpu_fmt(decoders_3_io_deq_cf_ctrl_ctrl_fpu_fmt),
    .io_deq_cf_ctrl_ctrl_fpu_ren3(decoders_3_io_deq_cf_ctrl_ctrl_fpu_ren3),
    .io_deq_cf_ctrl_ctrl_fpu_rm(decoders_3_io_deq_cf_ctrl_ctrl_fpu_rm),
    .io_deq_cf_ctrl_ctrl_isMove(decoders_3_io_deq_cf_ctrl_ctrl_isMove),
    .io_csrCtrl_soft_prefetch_enable(decoders_3_io_csrCtrl_soft_prefetch_enable),
    .io_csrCtrl_svinval_enable(decoders_3_io_csrCtrl_svinval_enable)
  );
  FusionDecoder fusionDecoder ( // @[DecodeStage.scala 50:29]
    .io_in_0_valid(fusionDecoder_io_in_0_valid),
    .io_in_0_bits(fusionDecoder_io_in_0_bits),
    .io_in_1_valid(fusionDecoder_io_in_1_valid),
    .io_in_1_bits(fusionDecoder_io_in_1_bits),
    .io_in_2_valid(fusionDecoder_io_in_2_valid),
    .io_in_2_bits(fusionDecoder_io_in_2_bits),
    .io_in_3_valid(fusionDecoder_io_in_3_valid),
    .io_in_3_bits(fusionDecoder_io_in_3_bits),
    .io_dec_0_srcType_0(fusionDecoder_io_dec_0_srcType_0),
    .io_dec_0_srcType_1(fusionDecoder_io_dec_0_srcType_1),
    .io_dec_0_srcType_2(fusionDecoder_io_dec_0_srcType_2),
    .io_dec_0_lsrc_0(fusionDecoder_io_dec_0_lsrc_0),
    .io_dec_0_lsrc_1(fusionDecoder_io_dec_0_lsrc_1),
    .io_dec_0_lsrc_2(fusionDecoder_io_dec_0_lsrc_2),
    .io_dec_0_ldest(fusionDecoder_io_dec_0_ldest),
    .io_dec_0_fuType(fusionDecoder_io_dec_0_fuType),
    .io_dec_0_fuOpType(fusionDecoder_io_dec_0_fuOpType),
    .io_dec_0_rfWen(fusionDecoder_io_dec_0_rfWen),
    .io_dec_0_fpWen(fusionDecoder_io_dec_0_fpWen),
    .io_dec_0_isRVCORETrap(fusionDecoder_io_dec_0_isRVCORETrap),
    .io_dec_0_noSpecExec(fusionDecoder_io_dec_0_noSpecExec),
    .io_dec_0_blockBackward(fusionDecoder_io_dec_0_blockBackward),
    .io_dec_0_flushPipe(fusionDecoder_io_dec_0_flushPipe),
    .io_dec_0_selImm(fusionDecoder_io_dec_0_selImm),
    .io_dec_0_imm(fusionDecoder_io_dec_0_imm),
    .io_dec_0_fpu_isAddSub(fusionDecoder_io_dec_0_fpu_isAddSub),
    .io_dec_0_fpu_typeTagIn(fusionDecoder_io_dec_0_fpu_typeTagIn),
    .io_dec_0_fpu_typeTagOut(fusionDecoder_io_dec_0_fpu_typeTagOut),
    .io_dec_0_fpu_fromInt(fusionDecoder_io_dec_0_fpu_fromInt),
    .io_dec_0_fpu_wflags(fusionDecoder_io_dec_0_fpu_wflags),
    .io_dec_0_fpu_fpWen(fusionDecoder_io_dec_0_fpu_fpWen),
    .io_dec_0_fpu_fmaCmd(fusionDecoder_io_dec_0_fpu_fmaCmd),
    .io_dec_0_fpu_div(fusionDecoder_io_dec_0_fpu_div),
    .io_dec_0_fpu_sqrt(fusionDecoder_io_dec_0_fpu_sqrt),
    .io_dec_0_fpu_fcvt(fusionDecoder_io_dec_0_fpu_fcvt),
    .io_dec_0_fpu_typ(fusionDecoder_io_dec_0_fpu_typ),
    .io_dec_0_fpu_fmt(fusionDecoder_io_dec_0_fpu_fmt),
    .io_dec_0_fpu_ren3(fusionDecoder_io_dec_0_fpu_ren3),
    .io_dec_0_fpu_rm(fusionDecoder_io_dec_0_fpu_rm),
    .io_dec_0_isMove(fusionDecoder_io_dec_0_isMove),
    .io_dec_1_srcType_0(fusionDecoder_io_dec_1_srcType_0),
    .io_dec_1_srcType_1(fusionDecoder_io_dec_1_srcType_1),
    .io_dec_1_srcType_2(fusionDecoder_io_dec_1_srcType_2),
    .io_dec_1_lsrc_0(fusionDecoder_io_dec_1_lsrc_0),
    .io_dec_1_lsrc_1(fusionDecoder_io_dec_1_lsrc_1),
    .io_dec_1_lsrc_2(fusionDecoder_io_dec_1_lsrc_2),
    .io_dec_1_ldest(fusionDecoder_io_dec_1_ldest),
    .io_dec_1_fuType(fusionDecoder_io_dec_1_fuType),
    .io_dec_1_fuOpType(fusionDecoder_io_dec_1_fuOpType),
    .io_dec_1_rfWen(fusionDecoder_io_dec_1_rfWen),
    .io_dec_1_fpWen(fusionDecoder_io_dec_1_fpWen),
    .io_dec_1_isRVCORETrap(fusionDecoder_io_dec_1_isRVCORETrap),
    .io_dec_1_noSpecExec(fusionDecoder_io_dec_1_noSpecExec),
    .io_dec_1_blockBackward(fusionDecoder_io_dec_1_blockBackward),
    .io_dec_1_flushPipe(fusionDecoder_io_dec_1_flushPipe),
    .io_dec_1_selImm(fusionDecoder_io_dec_1_selImm),
    .io_dec_1_imm(fusionDecoder_io_dec_1_imm),
    .io_dec_1_fpu_isAddSub(fusionDecoder_io_dec_1_fpu_isAddSub),
    .io_dec_1_fpu_typeTagIn(fusionDecoder_io_dec_1_fpu_typeTagIn),
    .io_dec_1_fpu_typeTagOut(fusionDecoder_io_dec_1_fpu_typeTagOut),
    .io_dec_1_fpu_fromInt(fusionDecoder_io_dec_1_fpu_fromInt),
    .io_dec_1_fpu_wflags(fusionDecoder_io_dec_1_fpu_wflags),
    .io_dec_1_fpu_fpWen(fusionDecoder_io_dec_1_fpu_fpWen),
    .io_dec_1_fpu_fmaCmd(fusionDecoder_io_dec_1_fpu_fmaCmd),
    .io_dec_1_fpu_div(fusionDecoder_io_dec_1_fpu_div),
    .io_dec_1_fpu_sqrt(fusionDecoder_io_dec_1_fpu_sqrt),
    .io_dec_1_fpu_fcvt(fusionDecoder_io_dec_1_fpu_fcvt),
    .io_dec_1_fpu_typ(fusionDecoder_io_dec_1_fpu_typ),
    .io_dec_1_fpu_fmt(fusionDecoder_io_dec_1_fpu_fmt),
    .io_dec_1_fpu_ren3(fusionDecoder_io_dec_1_fpu_ren3),
    .io_dec_1_fpu_rm(fusionDecoder_io_dec_1_fpu_rm),
    .io_dec_1_isMove(fusionDecoder_io_dec_1_isMove),
    .io_dec_2_srcType_0(fusionDecoder_io_dec_2_srcType_0),
    .io_dec_2_srcType_1(fusionDecoder_io_dec_2_srcType_1),
    .io_dec_2_srcType_2(fusionDecoder_io_dec_2_srcType_2),
    .io_dec_2_lsrc_0(fusionDecoder_io_dec_2_lsrc_0),
    .io_dec_2_lsrc_1(fusionDecoder_io_dec_2_lsrc_1),
    .io_dec_2_lsrc_2(fusionDecoder_io_dec_2_lsrc_2),
    .io_dec_2_ldest(fusionDecoder_io_dec_2_ldest),
    .io_dec_2_fuType(fusionDecoder_io_dec_2_fuType),
    .io_dec_2_fuOpType(fusionDecoder_io_dec_2_fuOpType),
    .io_dec_2_rfWen(fusionDecoder_io_dec_2_rfWen),
    .io_dec_2_fpWen(fusionDecoder_io_dec_2_fpWen),
    .io_dec_2_isRVCORETrap(fusionDecoder_io_dec_2_isRVCORETrap),
    .io_dec_2_noSpecExec(fusionDecoder_io_dec_2_noSpecExec),
    .io_dec_2_blockBackward(fusionDecoder_io_dec_2_blockBackward),
    .io_dec_2_flushPipe(fusionDecoder_io_dec_2_flushPipe),
    .io_dec_2_selImm(fusionDecoder_io_dec_2_selImm),
    .io_dec_2_imm(fusionDecoder_io_dec_2_imm),
    .io_dec_2_fpu_isAddSub(fusionDecoder_io_dec_2_fpu_isAddSub),
    .io_dec_2_fpu_typeTagIn(fusionDecoder_io_dec_2_fpu_typeTagIn),
    .io_dec_2_fpu_typeTagOut(fusionDecoder_io_dec_2_fpu_typeTagOut),
    .io_dec_2_fpu_fromInt(fusionDecoder_io_dec_2_fpu_fromInt),
    .io_dec_2_fpu_wflags(fusionDecoder_io_dec_2_fpu_wflags),
    .io_dec_2_fpu_fpWen(fusionDecoder_io_dec_2_fpu_fpWen),
    .io_dec_2_fpu_fmaCmd(fusionDecoder_io_dec_2_fpu_fmaCmd),
    .io_dec_2_fpu_div(fusionDecoder_io_dec_2_fpu_div),
    .io_dec_2_fpu_sqrt(fusionDecoder_io_dec_2_fpu_sqrt),
    .io_dec_2_fpu_fcvt(fusionDecoder_io_dec_2_fpu_fcvt),
    .io_dec_2_fpu_typ(fusionDecoder_io_dec_2_fpu_typ),
    .io_dec_2_fpu_fmt(fusionDecoder_io_dec_2_fpu_fmt),
    .io_dec_2_fpu_ren3(fusionDecoder_io_dec_2_fpu_ren3),
    .io_dec_2_fpu_rm(fusionDecoder_io_dec_2_fpu_rm),
    .io_dec_2_isMove(fusionDecoder_io_dec_2_isMove),
    .io_out_0_ready(fusionDecoder_io_out_0_ready),
    .io_out_0_valid(fusionDecoder_io_out_0_valid),
    .io_out_0_bits_srcType_0(fusionDecoder_io_out_0_bits_srcType_0),
    .io_out_0_bits_srcType_1(fusionDecoder_io_out_0_bits_srcType_1),
    .io_out_0_bits_srcType_2(fusionDecoder_io_out_0_bits_srcType_2),
    .io_out_0_bits_lsrc_0(fusionDecoder_io_out_0_bits_lsrc_0),
    .io_out_0_bits_lsrc_1(fusionDecoder_io_out_0_bits_lsrc_1),
    .io_out_0_bits_lsrc_2(fusionDecoder_io_out_0_bits_lsrc_2),
    .io_out_0_bits_ldest(fusionDecoder_io_out_0_bits_ldest),
    .io_out_0_bits_fuType(fusionDecoder_io_out_0_bits_fuType),
    .io_out_0_bits_fuOpType(fusionDecoder_io_out_0_bits_fuOpType),
    .io_out_0_bits_rfWen(fusionDecoder_io_out_0_bits_rfWen),
    .io_out_0_bits_fpWen(fusionDecoder_io_out_0_bits_fpWen),
    .io_out_0_bits_isRVCORETrap(fusionDecoder_io_out_0_bits_isRVCORETrap),
    .io_out_0_bits_noSpecExec(fusionDecoder_io_out_0_bits_noSpecExec),
    .io_out_0_bits_blockBackward(fusionDecoder_io_out_0_bits_blockBackward),
    .io_out_0_bits_flushPipe(fusionDecoder_io_out_0_bits_flushPipe),
    .io_out_0_bits_selImm(fusionDecoder_io_out_0_bits_selImm),
    .io_out_0_bits_imm(fusionDecoder_io_out_0_bits_imm),
    .io_out_0_bits_fpu_isAddSub(fusionDecoder_io_out_0_bits_fpu_isAddSub),
    .io_out_0_bits_fpu_typeTagIn(fusionDecoder_io_out_0_bits_fpu_typeTagIn),
    .io_out_0_bits_fpu_typeTagOut(fusionDecoder_io_out_0_bits_fpu_typeTagOut),
    .io_out_0_bits_fpu_fromInt(fusionDecoder_io_out_0_bits_fpu_fromInt),
    .io_out_0_bits_fpu_wflags(fusionDecoder_io_out_0_bits_fpu_wflags),
    .io_out_0_bits_fpu_fpWen(fusionDecoder_io_out_0_bits_fpu_fpWen),
    .io_out_0_bits_fpu_fmaCmd(fusionDecoder_io_out_0_bits_fpu_fmaCmd),
    .io_out_0_bits_fpu_div(fusionDecoder_io_out_0_bits_fpu_div),
    .io_out_0_bits_fpu_sqrt(fusionDecoder_io_out_0_bits_fpu_sqrt),
    .io_out_0_bits_fpu_fcvt(fusionDecoder_io_out_0_bits_fpu_fcvt),
    .io_out_0_bits_fpu_typ(fusionDecoder_io_out_0_bits_fpu_typ),
    .io_out_0_bits_fpu_fmt(fusionDecoder_io_out_0_bits_fpu_fmt),
    .io_out_0_bits_fpu_ren3(fusionDecoder_io_out_0_bits_fpu_ren3),
    .io_out_0_bits_fpu_rm(fusionDecoder_io_out_0_bits_fpu_rm),
    .io_out_0_bits_isMove(fusionDecoder_io_out_0_bits_isMove),
    .io_out_1_ready(fusionDecoder_io_out_1_ready),
    .io_out_1_valid(fusionDecoder_io_out_1_valid),
    .io_out_1_bits_srcType_0(fusionDecoder_io_out_1_bits_srcType_0),
    .io_out_1_bits_srcType_1(fusionDecoder_io_out_1_bits_srcType_1),
    .io_out_1_bits_srcType_2(fusionDecoder_io_out_1_bits_srcType_2),
    .io_out_1_bits_lsrc_0(fusionDecoder_io_out_1_bits_lsrc_0),
    .io_out_1_bits_lsrc_1(fusionDecoder_io_out_1_bits_lsrc_1),
    .io_out_1_bits_lsrc_2(fusionDecoder_io_out_1_bits_lsrc_2),
    .io_out_1_bits_ldest(fusionDecoder_io_out_1_bits_ldest),
    .io_out_1_bits_fuType(fusionDecoder_io_out_1_bits_fuType),
    .io_out_1_bits_fuOpType(fusionDecoder_io_out_1_bits_fuOpType),
    .io_out_1_bits_rfWen(fusionDecoder_io_out_1_bits_rfWen),
    .io_out_1_bits_fpWen(fusionDecoder_io_out_1_bits_fpWen),
    .io_out_1_bits_isRVCORETrap(fusionDecoder_io_out_1_bits_isRVCORETrap),
    .io_out_1_bits_noSpecExec(fusionDecoder_io_out_1_bits_noSpecExec),
    .io_out_1_bits_blockBackward(fusionDecoder_io_out_1_bits_blockBackward),
    .io_out_1_bits_flushPipe(fusionDecoder_io_out_1_bits_flushPipe),
    .io_out_1_bits_selImm(fusionDecoder_io_out_1_bits_selImm),
    .io_out_1_bits_imm(fusionDecoder_io_out_1_bits_imm),
    .io_out_1_bits_fpu_isAddSub(fusionDecoder_io_out_1_bits_fpu_isAddSub),
    .io_out_1_bits_fpu_typeTagIn(fusionDecoder_io_out_1_bits_fpu_typeTagIn),
    .io_out_1_bits_fpu_typeTagOut(fusionDecoder_io_out_1_bits_fpu_typeTagOut),
    .io_out_1_bits_fpu_fromInt(fusionDecoder_io_out_1_bits_fpu_fromInt),
    .io_out_1_bits_fpu_wflags(fusionDecoder_io_out_1_bits_fpu_wflags),
    .io_out_1_bits_fpu_fpWen(fusionDecoder_io_out_1_bits_fpu_fpWen),
    .io_out_1_bits_fpu_fmaCmd(fusionDecoder_io_out_1_bits_fpu_fmaCmd),
    .io_out_1_bits_fpu_div(fusionDecoder_io_out_1_bits_fpu_div),
    .io_out_1_bits_fpu_sqrt(fusionDecoder_io_out_1_bits_fpu_sqrt),
    .io_out_1_bits_fpu_fcvt(fusionDecoder_io_out_1_bits_fpu_fcvt),
    .io_out_1_bits_fpu_typ(fusionDecoder_io_out_1_bits_fpu_typ),
    .io_out_1_bits_fpu_fmt(fusionDecoder_io_out_1_bits_fpu_fmt),
    .io_out_1_bits_fpu_ren3(fusionDecoder_io_out_1_bits_fpu_ren3),
    .io_out_1_bits_fpu_rm(fusionDecoder_io_out_1_bits_fpu_rm),
    .io_out_1_bits_isMove(fusionDecoder_io_out_1_bits_isMove),
    .io_out_2_ready(fusionDecoder_io_out_2_ready),
    .io_out_2_valid(fusionDecoder_io_out_2_valid),
    .io_out_2_bits_srcType_0(fusionDecoder_io_out_2_bits_srcType_0),
    .io_out_2_bits_srcType_1(fusionDecoder_io_out_2_bits_srcType_1),
    .io_out_2_bits_srcType_2(fusionDecoder_io_out_2_bits_srcType_2),
    .io_out_2_bits_lsrc_0(fusionDecoder_io_out_2_bits_lsrc_0),
    .io_out_2_bits_lsrc_1(fusionDecoder_io_out_2_bits_lsrc_1),
    .io_out_2_bits_lsrc_2(fusionDecoder_io_out_2_bits_lsrc_2),
    .io_out_2_bits_ldest(fusionDecoder_io_out_2_bits_ldest),
    .io_out_2_bits_fuType(fusionDecoder_io_out_2_bits_fuType),
    .io_out_2_bits_fuOpType(fusionDecoder_io_out_2_bits_fuOpType),
    .io_out_2_bits_rfWen(fusionDecoder_io_out_2_bits_rfWen),
    .io_out_2_bits_fpWen(fusionDecoder_io_out_2_bits_fpWen),
    .io_out_2_bits_isRVCORETrap(fusionDecoder_io_out_2_bits_isRVCORETrap),
    .io_out_2_bits_noSpecExec(fusionDecoder_io_out_2_bits_noSpecExec),
    .io_out_2_bits_blockBackward(fusionDecoder_io_out_2_bits_blockBackward),
    .io_out_2_bits_flushPipe(fusionDecoder_io_out_2_bits_flushPipe),
    .io_out_2_bits_selImm(fusionDecoder_io_out_2_bits_selImm),
    .io_out_2_bits_imm(fusionDecoder_io_out_2_bits_imm),
    .io_out_2_bits_fpu_isAddSub(fusionDecoder_io_out_2_bits_fpu_isAddSub),
    .io_out_2_bits_fpu_typeTagIn(fusionDecoder_io_out_2_bits_fpu_typeTagIn),
    .io_out_2_bits_fpu_typeTagOut(fusionDecoder_io_out_2_bits_fpu_typeTagOut),
    .io_out_2_bits_fpu_fromInt(fusionDecoder_io_out_2_bits_fpu_fromInt),
    .io_out_2_bits_fpu_wflags(fusionDecoder_io_out_2_bits_fpu_wflags),
    .io_out_2_bits_fpu_fpWen(fusionDecoder_io_out_2_bits_fpu_fpWen),
    .io_out_2_bits_fpu_fmaCmd(fusionDecoder_io_out_2_bits_fpu_fmaCmd),
    .io_out_2_bits_fpu_div(fusionDecoder_io_out_2_bits_fpu_div),
    .io_out_2_bits_fpu_sqrt(fusionDecoder_io_out_2_bits_fpu_sqrt),
    .io_out_2_bits_fpu_fcvt(fusionDecoder_io_out_2_bits_fpu_fcvt),
    .io_out_2_bits_fpu_typ(fusionDecoder_io_out_2_bits_fpu_typ),
    .io_out_2_bits_fpu_fmt(fusionDecoder_io_out_2_bits_fpu_fmt),
    .io_out_2_bits_fpu_ren3(fusionDecoder_io_out_2_bits_fpu_ren3),
    .io_out_2_bits_fpu_rm(fusionDecoder_io_out_2_bits_fpu_rm),
    .io_out_2_bits_isMove(fusionDecoder_io_out_2_bits_isMove),
    .io_clear_0(fusionDecoder_io_clear_0),
    .io_clear_1(fusionDecoder_io_clear_1),
    .io_clear_2(fusionDecoder_io_clear_2),
    .io_clear_3(fusionDecoder_io_clear_3)
  );
  assign io_in_0_ready = io_out_0_ready; // @[DecodeStage.scala 46:26]
  assign io_in_1_ready = io_out_1_ready; // @[DecodeStage.scala 46:26]
  assign io_in_2_ready = io_out_2_ready; // @[DecodeStage.scala 46:26]
  assign io_in_3_ready = io_out_3_ready; // @[DecodeStage.scala 46:26]
  assign io_out_0_valid = io_in_0_valid; // @[DecodeStage.scala 76:14 44:26 77:9]
  assign io_out_0_bits_cf_foldpc = decoders_0_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_exceptionVec_1 = decoders_0_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_exceptionVec_2 = decoders_0_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_exceptionVec_12 = decoders_0_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_frontendHit_0 = decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_frontendHit_1 = decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_frontendHit_2 = decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_frontendHit_3 = decoders_0_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_backendEn_0 = decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_backendEn_1 = decoders_0_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_backendHit_0 = decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_0; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_backendHit_1 = decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_1; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_backendHit_2 = decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_2; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_backendHit_3 = decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_3; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_backendHit_4 = decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_4; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_trigger_backendHit_5 = decoders_0_io_deq_cf_ctrl_cf_trigger_backendHit_5; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_pd_isRVC = decoders_0_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_pd_brType = decoders_0_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_pd_isCall = decoders_0_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_pd_isRet = decoders_0_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_pred_taken = decoders_0_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_crossPageIPFFix = decoders_0_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_ftqPtr_flag = decoders_0_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_ftqPtr_value = decoders_0_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_cf_ftqOffset = decoders_0_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 45:26]
  assign io_out_0_bits_ctrl_srcType_0 = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_srcType_0 : decoders_0_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_srcType_1 = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_srcType_1 : decoders_0_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_srcType_2 = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_srcType_2 : decoders_0_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_lsrc_0 = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_lsrc_0 : decoders_0_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_lsrc_1 = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_lsrc_1 : decoders_0_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_lsrc_2 = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_lsrc_2 : decoders_0_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_ldest = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_ldest : decoders_0_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fuType = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fuType : decoders_0_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fuOpType = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fuOpType : decoders_0_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_rfWen = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_rfWen : decoders_0_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpWen = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpWen : decoders_0_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_isRVCORETrap = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_isRVCORETrap : decoders_0_io_deq_cf_ctrl_ctrl_isRVCORETrap; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_noSpecExec = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_noSpecExec : decoders_0_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_blockBackward = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_blockBackward : decoders_0_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_flushPipe = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_flushPipe : decoders_0_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_selImm = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_selImm : decoders_0_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_imm = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_imm : decoders_0_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_commitType = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    _io_out_0_bits_ctrl_commitType_T_2 : 3'h0; // @[DecodeStage.scala 45:26 59:46 71:32]
  assign io_out_0_bits_ctrl_fpu_isAddSub = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_isAddSub : decoders_0_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_typeTagIn = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_typeTagIn : decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_typeTagOut = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_typeTagOut : decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_fromInt = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_fromInt : decoders_0_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_wflags = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_wflags : decoders_0_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_fpWen = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_fpWen : decoders_0_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_fmaCmd = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_fmaCmd : decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_div = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_div : decoders_0_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_sqrt = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_sqrt : decoders_0_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_fcvt = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_fcvt : decoders_0_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_typ = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_typ : decoders_0_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_fmt = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_fmt : decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_ren3 = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_ren3 : decoders_0_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_fpu_rm = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_fpu_rm : decoders_0_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_0_bits_ctrl_isMove = fusionDecoder_io_out_0_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_0_bits_isMove : decoders_0_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_valid = fusionDecoder_io_clear_1 ? 1'h0 : io_in_1_valid; // @[DecodeStage.scala 76:14 44:26 77:9]
  assign io_out_1_bits_cf_foldpc = decoders_1_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_exceptionVec_1 = decoders_1_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_exceptionVec_2 = decoders_1_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_exceptionVec_12 = decoders_1_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_frontendHit_0 = decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_frontendHit_1 = decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_frontendHit_2 = decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_frontendHit_3 = decoders_1_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_backendEn_0 = decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_backendEn_1 = decoders_1_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_backendHit_0 = decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_0; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_backendHit_1 = decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_1; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_backendHit_2 = decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_2; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_backendHit_3 = decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_3; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_backendHit_4 = decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_4; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_trigger_backendHit_5 = decoders_1_io_deq_cf_ctrl_cf_trigger_backendHit_5; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_pd_isRVC = decoders_1_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_pd_brType = decoders_1_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_pd_isCall = decoders_1_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_pd_isRet = decoders_1_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_pred_taken = decoders_1_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_crossPageIPFFix = decoders_1_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_ftqPtr_flag = decoders_1_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_ftqPtr_value = decoders_1_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_cf_ftqOffset = decoders_1_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 45:26]
  assign io_out_1_bits_ctrl_srcType_0 = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_srcType_0 : decoders_1_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_srcType_1 = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_srcType_1 : decoders_1_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_srcType_2 = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_srcType_2 : decoders_1_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_lsrc_0 = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_lsrc_0 : decoders_1_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_lsrc_1 = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_lsrc_1 : decoders_1_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_lsrc_2 = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_lsrc_2 : decoders_1_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_ldest = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_ldest : decoders_1_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fuType = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fuType : decoders_1_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fuOpType = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fuOpType : decoders_1_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_rfWen = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_rfWen : decoders_1_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpWen = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpWen : decoders_1_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_isRVCORETrap = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_isRVCORETrap : decoders_1_io_deq_cf_ctrl_ctrl_isRVCORETrap; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_noSpecExec = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_noSpecExec : decoders_1_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_blockBackward = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_blockBackward : decoders_1_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_flushPipe = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_flushPipe : decoders_1_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_selImm = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_selImm : decoders_1_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_imm = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_imm : decoders_1_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_commitType = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    _io_out_1_bits_ctrl_commitType_T_2 : 3'h0; // @[DecodeStage.scala 45:26 59:46 71:32]
  assign io_out_1_bits_ctrl_fpu_isAddSub = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_isAddSub : decoders_1_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_typeTagIn = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_typeTagIn : decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_typeTagOut = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_typeTagOut : decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_fromInt = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_fromInt : decoders_1_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_wflags = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_wflags : decoders_1_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_fpWen = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_fpWen : decoders_1_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_fmaCmd = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_fmaCmd : decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_div = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_div : decoders_1_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_sqrt = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_sqrt : decoders_1_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_fcvt = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_fcvt : decoders_1_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_typ = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_typ : decoders_1_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_fmt = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_fmt : decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_ren3 = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_ren3 : decoders_1_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_fpu_rm = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_fpu_rm : decoders_1_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_1_bits_ctrl_isMove = fusionDecoder_io_out_1_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_1_bits_isMove : decoders_1_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_valid = fusionDecoder_io_clear_2 ? 1'h0 : io_in_2_valid; // @[DecodeStage.scala 76:14 44:26 77:9]
  assign io_out_2_bits_cf_foldpc = decoders_2_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_exceptionVec_1 = decoders_2_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_exceptionVec_2 = decoders_2_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_exceptionVec_12 = decoders_2_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_frontendHit_0 = decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_frontendHit_1 = decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_frontendHit_2 = decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_frontendHit_3 = decoders_2_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_backendEn_0 = decoders_2_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_backendEn_1 = decoders_2_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_backendHit_0 = decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_0; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_backendHit_1 = decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_1; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_backendHit_2 = decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_2; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_backendHit_3 = decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_3; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_backendHit_4 = decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_4; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_trigger_backendHit_5 = decoders_2_io_deq_cf_ctrl_cf_trigger_backendHit_5; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_pd_isRVC = decoders_2_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_pd_brType = decoders_2_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_pd_isCall = decoders_2_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_pd_isRet = decoders_2_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_pred_taken = decoders_2_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_crossPageIPFFix = decoders_2_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_ftqPtr_flag = decoders_2_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_ftqPtr_value = decoders_2_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_cf_ftqOffset = decoders_2_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 45:26]
  assign io_out_2_bits_ctrl_srcType_0 = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_srcType_0 : decoders_2_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_srcType_1 = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_srcType_1 : decoders_2_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_srcType_2 = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_srcType_2 : decoders_2_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_lsrc_0 = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_lsrc_0 : decoders_2_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_lsrc_1 = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_lsrc_1 : decoders_2_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_lsrc_2 = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_lsrc_2 : decoders_2_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_ldest = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_ldest : decoders_2_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fuType = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fuType : decoders_2_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fuOpType = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fuOpType : decoders_2_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_rfWen = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_rfWen : decoders_2_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpWen = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpWen : decoders_2_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_isRVCORETrap = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_isRVCORETrap : decoders_2_io_deq_cf_ctrl_ctrl_isRVCORETrap; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_noSpecExec = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_noSpecExec : decoders_2_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_blockBackward = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_blockBackward : decoders_2_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_flushPipe = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_flushPipe : decoders_2_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_selImm = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_selImm : decoders_2_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_imm = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_imm : decoders_2_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_commitType = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    _io_out_2_bits_ctrl_commitType_T_2 : 3'h0; // @[DecodeStage.scala 45:26 59:46 71:32]
  assign io_out_2_bits_ctrl_fpu_isAddSub = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_isAddSub : decoders_2_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_typeTagIn = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_typeTagIn : decoders_2_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_typeTagOut = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_typeTagOut : decoders_2_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_fromInt = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_fromInt : decoders_2_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_wflags = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_wflags : decoders_2_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_fpWen = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_fpWen : decoders_2_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_fmaCmd = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_fmaCmd : decoders_2_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_div = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_div : decoders_2_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_sqrt = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_sqrt : decoders_2_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_fcvt = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_fcvt : decoders_2_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_typ = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_typ : decoders_2_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_fmt = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_fmt : decoders_2_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_ren3 = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_ren3 : decoders_2_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_fpu_rm = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_fpu_rm : decoders_2_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_2_bits_ctrl_isMove = fusionDecoder_io_out_2_valid & ~io_csrCtrl_singlestep ?
    fusionDecoder_io_out_2_bits_isMove : decoders_2_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 59:46 60:21 45:26]
  assign io_out_3_valid = fusionDecoder_io_clear_3 ? 1'h0 : io_in_3_valid; // @[DecodeStage.scala 76:14 44:26 77:9]
  assign io_out_3_bits_cf_foldpc = decoders_3_io_deq_cf_ctrl_cf_foldpc; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_exceptionVec_1 = decoders_3_io_deq_cf_ctrl_cf_exceptionVec_1; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_exceptionVec_2 = decoders_3_io_deq_cf_ctrl_cf_exceptionVec_2; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_exceptionVec_12 = decoders_3_io_deq_cf_ctrl_cf_exceptionVec_12; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_frontendHit_0 = decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_0; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_frontendHit_1 = decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_1; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_frontendHit_2 = decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_2; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_frontendHit_3 = decoders_3_io_deq_cf_ctrl_cf_trigger_frontendHit_3; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_backendEn_0 = decoders_3_io_deq_cf_ctrl_cf_trigger_backendEn_0; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_backendEn_1 = decoders_3_io_deq_cf_ctrl_cf_trigger_backendEn_1; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_backendHit_0 = decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_0; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_backendHit_1 = decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_1; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_backendHit_2 = decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_2; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_backendHit_3 = decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_3; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_backendHit_4 = decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_4; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_trigger_backendHit_5 = decoders_3_io_deq_cf_ctrl_cf_trigger_backendHit_5; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_pd_isRVC = decoders_3_io_deq_cf_ctrl_cf_pd_isRVC; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_pd_brType = decoders_3_io_deq_cf_ctrl_cf_pd_brType; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_pd_isCall = decoders_3_io_deq_cf_ctrl_cf_pd_isCall; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_pd_isRet = decoders_3_io_deq_cf_ctrl_cf_pd_isRet; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_pred_taken = decoders_3_io_deq_cf_ctrl_cf_pred_taken; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_crossPageIPFFix = decoders_3_io_deq_cf_ctrl_cf_crossPageIPFFix; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_ftqPtr_flag = decoders_3_io_deq_cf_ctrl_cf_ftqPtr_flag; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_ftqPtr_value = decoders_3_io_deq_cf_ctrl_cf_ftqPtr_value; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_cf_ftqOffset = decoders_3_io_deq_cf_ctrl_cf_ftqOffset; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_srcType_0 = decoders_3_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_srcType_1 = decoders_3_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_srcType_2 = decoders_3_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_lsrc_0 = decoders_3_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_lsrc_1 = decoders_3_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_lsrc_2 = decoders_3_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_ldest = decoders_3_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fuType = decoders_3_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fuOpType = decoders_3_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_rfWen = decoders_3_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpWen = decoders_3_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_isRVCORETrap = decoders_3_io_deq_cf_ctrl_ctrl_isRVCORETrap; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_noSpecExec = decoders_3_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_blockBackward = decoders_3_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_flushPipe = decoders_3_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_selImm = decoders_3_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_imm = decoders_3_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_isAddSub = decoders_3_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_typeTagIn = decoders_3_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_typeTagOut = decoders_3_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_fromInt = decoders_3_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_wflags = decoders_3_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_fpWen = decoders_3_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_fmaCmd = decoders_3_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_div = decoders_3_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_sqrt = decoders_3_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_fcvt = decoders_3_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_typ = decoders_3_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_fmt = decoders_3_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_ren3 = decoders_3_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_fpu_rm = decoders_3_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 45:26]
  assign io_out_3_bits_ctrl_isMove = decoders_3_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 45:26]
  assign io_perf_0_value = {{4'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{3'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{3'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign decoders_0_io_enq_ctrl_flow_instr = io_in_0_bits_instr; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_foldpc = io_in_0_bits_foldpc; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_exceptionVec_1 = io_in_0_bits_exceptionVec_1; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_exceptionVec_12 = io_in_0_bits_exceptionVec_12; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_frontendHit_0 = io_in_0_bits_trigger_frontendHit_0; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_frontendHit_1 = io_in_0_bits_trigger_frontendHit_1; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_frontendHit_2 = io_in_0_bits_trigger_frontendHit_2; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_frontendHit_3 = io_in_0_bits_trigger_frontendHit_3; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_backendEn_0 = io_in_0_bits_trigger_backendEn_0; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_backendEn_1 = io_in_0_bits_trigger_backendEn_1; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_backendHit_0 = io_in_0_bits_trigger_backendHit_0; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_backendHit_1 = io_in_0_bits_trigger_backendHit_1; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_backendHit_2 = io_in_0_bits_trigger_backendHit_2; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_backendHit_3 = io_in_0_bits_trigger_backendHit_3; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_backendHit_4 = io_in_0_bits_trigger_backendHit_4; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_trigger_backendHit_5 = io_in_0_bits_trigger_backendHit_5; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_pd_isRVC = io_in_0_bits_pd_isRVC; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_pd_brType = io_in_0_bits_pd_brType; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_pd_isCall = io_in_0_bits_pd_isCall; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_pd_isRet = io_in_0_bits_pd_isRet; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_pred_taken = io_in_0_bits_pred_taken; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_crossPageIPFFix = io_in_0_bits_crossPageIPFFix; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_ftqPtr_flag = io_in_0_bits_ftqPtr_flag; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_ftqPtr_value = io_in_0_bits_ftqPtr_value; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_enq_ctrl_flow_ftqOffset = io_in_0_bits_ftqOffset; // @[DecodeStage.scala 39:34]
  assign decoders_0_io_csrCtrl_soft_prefetch_enable = io_csrCtrl_soft_prefetch_enable; // @[DecodeStage.scala 42:28]
  assign decoders_0_io_csrCtrl_svinval_enable = io_csrCtrl_svinval_enable; // @[DecodeStage.scala 42:28]
  assign decoders_1_io_enq_ctrl_flow_instr = io_in_1_bits_instr; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_foldpc = io_in_1_bits_foldpc; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_exceptionVec_1 = io_in_1_bits_exceptionVec_1; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_exceptionVec_12 = io_in_1_bits_exceptionVec_12; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_frontendHit_0 = io_in_1_bits_trigger_frontendHit_0; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_frontendHit_1 = io_in_1_bits_trigger_frontendHit_1; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_frontendHit_2 = io_in_1_bits_trigger_frontendHit_2; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_frontendHit_3 = io_in_1_bits_trigger_frontendHit_3; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_backendEn_0 = io_in_1_bits_trigger_backendEn_0; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_backendEn_1 = io_in_1_bits_trigger_backendEn_1; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_backendHit_0 = io_in_1_bits_trigger_backendHit_0; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_backendHit_1 = io_in_1_bits_trigger_backendHit_1; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_backendHit_2 = io_in_1_bits_trigger_backendHit_2; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_backendHit_3 = io_in_1_bits_trigger_backendHit_3; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_backendHit_4 = io_in_1_bits_trigger_backendHit_4; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_trigger_backendHit_5 = io_in_1_bits_trigger_backendHit_5; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_pd_isRVC = io_in_1_bits_pd_isRVC; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_pd_brType = io_in_1_bits_pd_brType; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_pd_isCall = io_in_1_bits_pd_isCall; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_pd_isRet = io_in_1_bits_pd_isRet; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_pred_taken = io_in_1_bits_pred_taken; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_crossPageIPFFix = io_in_1_bits_crossPageIPFFix; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_ftqPtr_flag = io_in_1_bits_ftqPtr_flag; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_ftqPtr_value = io_in_1_bits_ftqPtr_value; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_enq_ctrl_flow_ftqOffset = io_in_1_bits_ftqOffset; // @[DecodeStage.scala 39:34]
  assign decoders_1_io_csrCtrl_soft_prefetch_enable = io_csrCtrl_soft_prefetch_enable; // @[DecodeStage.scala 42:28]
  assign decoders_1_io_csrCtrl_svinval_enable = io_csrCtrl_svinval_enable; // @[DecodeStage.scala 42:28]
  assign decoders_2_io_enq_ctrl_flow_instr = io_in_2_bits_instr; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_foldpc = io_in_2_bits_foldpc; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_exceptionVec_1 = io_in_2_bits_exceptionVec_1; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_exceptionVec_12 = io_in_2_bits_exceptionVec_12; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_frontendHit_0 = io_in_2_bits_trigger_frontendHit_0; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_frontendHit_1 = io_in_2_bits_trigger_frontendHit_1; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_frontendHit_2 = io_in_2_bits_trigger_frontendHit_2; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_frontendHit_3 = io_in_2_bits_trigger_frontendHit_3; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_backendEn_0 = io_in_2_bits_trigger_backendEn_0; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_backendEn_1 = io_in_2_bits_trigger_backendEn_1; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_backendHit_0 = io_in_2_bits_trigger_backendHit_0; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_backendHit_1 = io_in_2_bits_trigger_backendHit_1; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_backendHit_2 = io_in_2_bits_trigger_backendHit_2; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_backendHit_3 = io_in_2_bits_trigger_backendHit_3; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_backendHit_4 = io_in_2_bits_trigger_backendHit_4; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_trigger_backendHit_5 = io_in_2_bits_trigger_backendHit_5; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_pd_isRVC = io_in_2_bits_pd_isRVC; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_pd_brType = io_in_2_bits_pd_brType; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_pd_isCall = io_in_2_bits_pd_isCall; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_pd_isRet = io_in_2_bits_pd_isRet; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_pred_taken = io_in_2_bits_pred_taken; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_crossPageIPFFix = io_in_2_bits_crossPageIPFFix; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_ftqPtr_flag = io_in_2_bits_ftqPtr_flag; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_ftqPtr_value = io_in_2_bits_ftqPtr_value; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_enq_ctrl_flow_ftqOffset = io_in_2_bits_ftqOffset; // @[DecodeStage.scala 39:34]
  assign decoders_2_io_csrCtrl_soft_prefetch_enable = io_csrCtrl_soft_prefetch_enable; // @[DecodeStage.scala 42:28]
  assign decoders_2_io_csrCtrl_svinval_enable = io_csrCtrl_svinval_enable; // @[DecodeStage.scala 42:28]
  assign decoders_3_io_enq_ctrl_flow_instr = io_in_3_bits_instr; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_foldpc = io_in_3_bits_foldpc; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_exceptionVec_1 = io_in_3_bits_exceptionVec_1; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_exceptionVec_12 = io_in_3_bits_exceptionVec_12; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_frontendHit_0 = io_in_3_bits_trigger_frontendHit_0; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_frontendHit_1 = io_in_3_bits_trigger_frontendHit_1; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_frontendHit_2 = io_in_3_bits_trigger_frontendHit_2; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_frontendHit_3 = io_in_3_bits_trigger_frontendHit_3; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_backendEn_0 = io_in_3_bits_trigger_backendEn_0; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_backendEn_1 = io_in_3_bits_trigger_backendEn_1; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_backendHit_0 = io_in_3_bits_trigger_backendHit_0; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_backendHit_1 = io_in_3_bits_trigger_backendHit_1; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_backendHit_2 = io_in_3_bits_trigger_backendHit_2; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_backendHit_3 = io_in_3_bits_trigger_backendHit_3; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_backendHit_4 = io_in_3_bits_trigger_backendHit_4; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_trigger_backendHit_5 = io_in_3_bits_trigger_backendHit_5; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_pd_isRVC = io_in_3_bits_pd_isRVC; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_pd_brType = io_in_3_bits_pd_brType; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_pd_isCall = io_in_3_bits_pd_isCall; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_pd_isRet = io_in_3_bits_pd_isRet; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_pred_taken = io_in_3_bits_pred_taken; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_crossPageIPFFix = io_in_3_bits_crossPageIPFFix; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_ftqPtr_flag = io_in_3_bits_ftqPtr_flag; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_ftqPtr_value = io_in_3_bits_ftqPtr_value; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_enq_ctrl_flow_ftqOffset = io_in_3_bits_ftqOffset; // @[DecodeStage.scala 39:34]
  assign decoders_3_io_csrCtrl_soft_prefetch_enable = io_csrCtrl_soft_prefetch_enable; // @[DecodeStage.scala 42:28]
  assign decoders_3_io_csrCtrl_svinval_enable = io_csrCtrl_svinval_enable; // @[DecodeStage.scala 42:28]
  assign fusionDecoder_io_in_0_valid = io_in_0_valid; // @[DecodeStage.scala 53:13]
  assign fusionDecoder_io_in_0_bits = io_in_0_bits_instr; // @[DecodeStage.scala 54:12]
  assign fusionDecoder_io_in_1_valid = io_in_1_valid; // @[DecodeStage.scala 53:13]
  assign fusionDecoder_io_in_1_bits = io_in_1_bits_instr; // @[DecodeStage.scala 54:12]
  assign fusionDecoder_io_in_2_valid = io_in_2_valid; // @[DecodeStage.scala 53:13]
  assign fusionDecoder_io_in_2_bits = io_in_2_bits_instr; // @[DecodeStage.scala 54:12]
  assign fusionDecoder_io_in_3_valid = io_in_3_valid; // @[DecodeStage.scala 53:13]
  assign fusionDecoder_io_in_3_bits = io_in_3_bits_instr; // @[DecodeStage.scala 54:12]
  assign fusionDecoder_io_dec_0_srcType_0 = decoders_0_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_srcType_1 = decoders_0_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_srcType_2 = decoders_0_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_lsrc_0 = decoders_0_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_lsrc_1 = decoders_0_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_lsrc_2 = decoders_0_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_ldest = decoders_0_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fuType = decoders_0_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fuOpType = decoders_0_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_rfWen = decoders_0_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpWen = decoders_0_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_isRVCORETrap = decoders_0_io_deq_cf_ctrl_ctrl_isRVCORETrap; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_noSpecExec = decoders_0_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_blockBackward = decoders_0_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_flushPipe = decoders_0_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_selImm = decoders_0_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_imm = decoders_0_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_isAddSub = decoders_0_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_typeTagIn = decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_typeTagOut = decoders_0_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_fromInt = decoders_0_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_wflags = decoders_0_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_fpWen = decoders_0_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_fmaCmd = decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_div = decoders_0_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_sqrt = decoders_0_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_fcvt = decoders_0_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_typ = decoders_0_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_fmt = decoders_0_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_ren3 = decoders_0_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_fpu_rm = decoders_0_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_0_isMove = decoders_0_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_srcType_0 = decoders_1_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_srcType_1 = decoders_1_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_srcType_2 = decoders_1_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_lsrc_0 = decoders_1_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_lsrc_1 = decoders_1_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_lsrc_2 = decoders_1_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_ldest = decoders_1_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fuType = decoders_1_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fuOpType = decoders_1_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_rfWen = decoders_1_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpWen = decoders_1_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_isRVCORETrap = decoders_1_io_deq_cf_ctrl_ctrl_isRVCORETrap; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_noSpecExec = decoders_1_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_blockBackward = decoders_1_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_flushPipe = decoders_1_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_selImm = decoders_1_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_imm = decoders_1_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_isAddSub = decoders_1_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_typeTagIn = decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_typeTagOut = decoders_1_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_fromInt = decoders_1_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_wflags = decoders_1_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_fpWen = decoders_1_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_fmaCmd = decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_div = decoders_1_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_sqrt = decoders_1_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_fcvt = decoders_1_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_typ = decoders_1_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_fmt = decoders_1_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_ren3 = decoders_1_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_fpu_rm = decoders_1_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_1_isMove = decoders_1_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_srcType_0 = decoders_2_io_deq_cf_ctrl_ctrl_srcType_0; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_srcType_1 = decoders_2_io_deq_cf_ctrl_ctrl_srcType_1; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_srcType_2 = decoders_2_io_deq_cf_ctrl_ctrl_srcType_2; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_lsrc_0 = decoders_2_io_deq_cf_ctrl_ctrl_lsrc_0; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_lsrc_1 = decoders_2_io_deq_cf_ctrl_ctrl_lsrc_1; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_lsrc_2 = decoders_2_io_deq_cf_ctrl_ctrl_lsrc_2; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_ldest = decoders_2_io_deq_cf_ctrl_ctrl_ldest; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fuType = decoders_2_io_deq_cf_ctrl_ctrl_fuType; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fuOpType = decoders_2_io_deq_cf_ctrl_ctrl_fuOpType; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_rfWen = decoders_2_io_deq_cf_ctrl_ctrl_rfWen; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpWen = decoders_2_io_deq_cf_ctrl_ctrl_fpWen; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_isRVCORETrap = decoders_2_io_deq_cf_ctrl_ctrl_isRVCORETrap; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_noSpecExec = decoders_2_io_deq_cf_ctrl_ctrl_noSpecExec; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_blockBackward = decoders_2_io_deq_cf_ctrl_ctrl_blockBackward; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_flushPipe = decoders_2_io_deq_cf_ctrl_ctrl_flushPipe; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_selImm = decoders_2_io_deq_cf_ctrl_ctrl_selImm; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_imm = decoders_2_io_deq_cf_ctrl_ctrl_imm; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_isAddSub = decoders_2_io_deq_cf_ctrl_ctrl_fpu_isAddSub; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_typeTagIn = decoders_2_io_deq_cf_ctrl_ctrl_fpu_typeTagIn; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_typeTagOut = decoders_2_io_deq_cf_ctrl_ctrl_fpu_typeTagOut; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_fromInt = decoders_2_io_deq_cf_ctrl_ctrl_fpu_fromInt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_wflags = decoders_2_io_deq_cf_ctrl_ctrl_fpu_wflags; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_fpWen = decoders_2_io_deq_cf_ctrl_ctrl_fpu_fpWen; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_fmaCmd = decoders_2_io_deq_cf_ctrl_ctrl_fpu_fmaCmd; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_div = decoders_2_io_deq_cf_ctrl_ctrl_fpu_div; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_sqrt = decoders_2_io_deq_cf_ctrl_ctrl_fpu_sqrt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_fcvt = decoders_2_io_deq_cf_ctrl_ctrl_fpu_fcvt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_typ = decoders_2_io_deq_cf_ctrl_ctrl_fpu_typ; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_fmt = decoders_2_io_deq_cf_ctrl_ctrl_fpu_fmt; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_ren3 = decoders_2_io_deq_cf_ctrl_ctrl_fpu_ren3; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_fpu_rm = decoders_2_io_deq_cf_ctrl_ctrl_fpu_rm; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_dec_2_isMove = decoders_2_io_deq_cf_ctrl_ctrl_isMove; // @[DecodeStage.scala 56:24]
  assign fusionDecoder_io_out_0_ready = io_out_0_ready; // @[DecodeStage.scala 58:13]
  assign fusionDecoder_io_out_1_ready = io_out_1_ready; // @[DecodeStage.scala 58:13]
  assign fusionDecoder_io_out_2_ready = io_out_2_ready; // @[DecodeStage.scala 58:13]
  always @(posedge clock) begin
    io_perf_0_value_REG <= _T_54[1:0]; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= _T_41 + _T_43; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= hasValid & _T_47; // @[DecodeStage.scala 89:48]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= _T_27 + _T_29; // @[Bitwise.scala 48:55]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_7[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
