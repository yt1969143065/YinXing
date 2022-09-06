module PipelineConnectModule_2(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input         io_in_bits_uop_cf_trigger_backendEn_0,
  input         io_in_bits_uop_cf_trigger_backendEn_1,
  input         io_in_bits_uop_cf_trigger_backendHit_0,
  input         io_in_bits_uop_cf_trigger_backendHit_1,
  input         io_in_bits_uop_cf_trigger_backendHit_2,
  input         io_in_bits_uop_cf_trigger_backendHit_3,
  input         io_in_bits_uop_cf_trigger_backendHit_4,
  input         io_in_bits_uop_cf_trigger_backendHit_5,
  input         io_in_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_bits_uop_cf_pd_brType,
  input         io_in_bits_uop_cf_pd_isCall,
  input         io_in_bits_uop_cf_pd_isRet,
  input         io_in_bits_uop_cf_pred_taken,
  input  [4:0]  io_in_bits_uop_cf_ssid,
  input         io_in_bits_uop_cf_ftqPtr_flag,
  input  [5:0]  io_in_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_in_bits_uop_cf_ftqOffset,
  input  [3:0]  io_in_bits_uop_ctrl_fuType,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [19:0] io_in_bits_uop_ctrl_imm,
  input         io_in_bits_uop_ctrl_fpu_isAddSub,
  input         io_in_bits_uop_ctrl_fpu_typeTagIn,
  input         io_in_bits_uop_ctrl_fpu_typeTagOut,
  input         io_in_bits_uop_ctrl_fpu_fromInt,
  input         io_in_bits_uop_ctrl_fpu_wflags,
  input         io_in_bits_uop_ctrl_fpu_fpWen,
  input  [1:0]  io_in_bits_uop_ctrl_fpu_fmaCmd,
  input         io_in_bits_uop_ctrl_fpu_div,
  input         io_in_bits_uop_ctrl_fpu_sqrt,
  input         io_in_bits_uop_ctrl_fpu_fcvt,
  input  [1:0]  io_in_bits_uop_ctrl_fpu_typ,
  input  [1:0]  io_in_bits_uop_ctrl_fpu_fmt,
  input         io_in_bits_uop_ctrl_fpu_ren3,
  input  [2:0]  io_in_bits_uop_ctrl_fpu_rm,
  input  [6:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [6:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [5:0]  io_in_bits_uop_lqIdx_value,
  input         io_in_bits_uop_sqIdx_flag,
  input  [4:0]  io_in_bits_uop_sqIdx_value,
  input  [63:0] io_in_bits_src_0,
  input         io_out_ready,
  output        io_out_valid,
  output        io_out_bits_uop_cf_trigger_backendEn_0,
  output        io_out_bits_uop_cf_trigger_backendEn_1,
  output        io_out_bits_uop_cf_trigger_backendHit_0,
  output        io_out_bits_uop_cf_trigger_backendHit_1,
  output        io_out_bits_uop_cf_trigger_backendHit_2,
  output        io_out_bits_uop_cf_trigger_backendHit_3,
  output        io_out_bits_uop_cf_trigger_backendHit_4,
  output        io_out_bits_uop_cf_trigger_backendHit_5,
  output        io_out_bits_uop_cf_pd_isRVC,
  output [1:0]  io_out_bits_uop_cf_pd_brType,
  output        io_out_bits_uop_cf_pd_isCall,
  output        io_out_bits_uop_cf_pd_isRet,
  output        io_out_bits_uop_cf_pred_taken,
  output [4:0]  io_out_bits_uop_cf_ssid,
  output        io_out_bits_uop_cf_ftqPtr_flag,
  output [5:0]  io_out_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_out_bits_uop_cf_ftqOffset,
  output [3:0]  io_out_bits_uop_ctrl_fuType,
  output [6:0]  io_out_bits_uop_ctrl_fuOpType,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [19:0] io_out_bits_uop_ctrl_imm,
  output        io_out_bits_uop_ctrl_fpu_isAddSub,
  output        io_out_bits_uop_ctrl_fpu_typeTagIn,
  output        io_out_bits_uop_ctrl_fpu_typeTagOut,
  output        io_out_bits_uop_ctrl_fpu_fromInt,
  output        io_out_bits_uop_ctrl_fpu_wflags,
  output        io_out_bits_uop_ctrl_fpu_fpWen,
  output [1:0]  io_out_bits_uop_ctrl_fpu_fmaCmd,
  output        io_out_bits_uop_ctrl_fpu_div,
  output        io_out_bits_uop_ctrl_fpu_sqrt,
  output        io_out_bits_uop_ctrl_fpu_fcvt,
  output [1:0]  io_out_bits_uop_ctrl_fpu_typ,
  output [1:0]  io_out_bits_uop_ctrl_fpu_fmt,
  output        io_out_bits_uop_ctrl_fpu_ren3,
  output [2:0]  io_out_bits_uop_ctrl_fpu_rm,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [5:0]  io_out_bits_uop_lqIdx_value,
  output        io_out_bits_uop_sqIdx_flag,
  output [4:0]  io_out_bits_uop_sqIdx_value,
  output [63:0] io_out_bits_src_0,
  input         io_rightOutFire
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
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [63:0] _RAND_44;
`endif // RANDOMIZE_REG_INIT
  reg  pipeline_valid; // @[PipelineConnect.scala 34:24]
  wire  leftFire = io_in_valid & io_out_ready; // @[PipelineConnect.scala 36:32]
  wire  _GEN_0 = io_rightOutFire ? 1'h0 : pipeline_valid; // @[PipelineConnect.scala 34:24 37:{28,36}]
  wire  _GEN_1 = leftFire | _GEN_0; // @[PipelineConnect.scala 38:{21,29}]
  reg  io_out_bits_ruop_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_0; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_1; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_2; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_3; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_4; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_5; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] io_out_bits_ruop_cf_pd_brType; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_pd_isCall; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_pd_isRet; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_pred_taken; // @[Reg.scala 16:16]
  reg [4:0] io_out_bits_ruop_cf_ssid; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [5:0] io_out_bits_ruop_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] io_out_bits_ruop_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [3:0] io_out_bits_ruop_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] io_out_bits_ruop_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [19:0] io_out_bits_ruop_ctrl_imm; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpu_isAddSub; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpu_typeTagIn; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpu_typeTagOut; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpu_fromInt; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpu_wflags; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpu_fpWen; // @[Reg.scala 16:16]
  reg [1:0] io_out_bits_ruop_ctrl_fpu_fmaCmd; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpu_div; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpu_sqrt; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpu_fcvt; // @[Reg.scala 16:16]
  reg [1:0] io_out_bits_ruop_ctrl_fpu_typ; // @[Reg.scala 16:16]
  reg [1:0] io_out_bits_ruop_ctrl_fpu_fmt; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpu_ren3; // @[Reg.scala 16:16]
  reg [2:0] io_out_bits_ruop_ctrl_fpu_rm; // @[Reg.scala 16:16]
  reg [6:0] io_out_bits_ruop_pdest; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_robIdx_flag; // @[Reg.scala 16:16]
  reg [6:0] io_out_bits_ruop_robIdx_value; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [5:0] io_out_bits_ruop_lqIdx_value; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_sqIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_out_bits_ruop_sqIdx_value; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_rsrc_0; // @[Reg.scala 16:16]
  assign io_in_ready = io_out_ready; // @[PipelineConnect.scala 41:33]
  assign io_out_valid = pipeline_valid; // @[PipelineConnect.scala 43:18]
  assign io_out_bits_uop_cf_trigger_backendEn_0 = io_out_bits_ruop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendEn_1 = io_out_bits_ruop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = io_out_bits_ruop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = io_out_bits_ruop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = io_out_bits_ruop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = io_out_bits_ruop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = io_out_bits_ruop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = io_out_bits_ruop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_pd_isRVC = io_out_bits_ruop_cf_pd_isRVC; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_pd_brType = io_out_bits_ruop_cf_pd_brType; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_pd_isCall = io_out_bits_ruop_cf_pd_isCall; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_pd_isRet = io_out_bits_ruop_cf_pd_isRet; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_pred_taken = io_out_bits_ruop_cf_pred_taken; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_ssid = io_out_bits_ruop_cf_ssid; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_ftqPtr_flag = io_out_bits_ruop_cf_ftqPtr_flag; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_ftqPtr_value = io_out_bits_ruop_cf_ftqPtr_value; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_ftqOffset = io_out_bits_ruop_cf_ftqOffset; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fuType = io_out_bits_ruop_ctrl_fuType; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fuOpType = io_out_bits_ruop_ctrl_fuOpType; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_rfWen = io_out_bits_ruop_ctrl_rfWen; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpWen = io_out_bits_ruop_ctrl_fpWen; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_imm = io_out_bits_ruop_ctrl_imm; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_isAddSub = io_out_bits_ruop_ctrl_fpu_isAddSub; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_typeTagIn = io_out_bits_ruop_ctrl_fpu_typeTagIn; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_typeTagOut = io_out_bits_ruop_ctrl_fpu_typeTagOut; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_fromInt = io_out_bits_ruop_ctrl_fpu_fromInt; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_wflags = io_out_bits_ruop_ctrl_fpu_wflags; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_fpWen = io_out_bits_ruop_ctrl_fpu_fpWen; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_fmaCmd = io_out_bits_ruop_ctrl_fpu_fmaCmd; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_div = io_out_bits_ruop_ctrl_fpu_div; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_sqrt = io_out_bits_ruop_ctrl_fpu_sqrt; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_fcvt = io_out_bits_ruop_ctrl_fpu_fcvt; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_typ = io_out_bits_ruop_ctrl_fpu_typ; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_fmt = io_out_bits_ruop_ctrl_fpu_fmt; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_ren3 = io_out_bits_ruop_ctrl_fpu_ren3; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpu_rm = io_out_bits_ruop_ctrl_fpu_rm; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_pdest = io_out_bits_ruop_pdest; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_robIdx_flag = io_out_bits_ruop_robIdx_flag; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_robIdx_value = io_out_bits_ruop_robIdx_value; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_lqIdx_flag = io_out_bits_ruop_lqIdx_flag; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_lqIdx_value = io_out_bits_ruop_lqIdx_value; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_sqIdx_flag = io_out_bits_ruop_sqIdx_flag; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_sqIdx_value = io_out_bits_ruop_sqIdx_value; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_src_0 = io_out_bits_rsrc_0; // @[PipelineConnect.scala 42:17]
  always @(posedge clock) begin
    if (reset) begin // @[PipelineConnect.scala 34:24]
      pipeline_valid <= 1'h0; // @[PipelineConnect.scala 34:24]
    end else begin
      pipeline_valid <= _GEN_1;
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_trigger_backendEn_0 <= io_in_bits_uop_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_trigger_backendEn_1 <= io_in_bits_uop_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_pd_isRVC <= io_in_bits_uop_cf_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_pd_brType <= io_in_bits_uop_cf_pd_brType; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_pd_isCall <= io_in_bits_uop_cf_pd_isCall; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_pd_isRet <= io_in_bits_uop_cf_pd_isRet; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_pred_taken <= io_in_bits_uop_cf_pred_taken; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_ssid <= io_in_bits_uop_cf_ssid; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_ftqPtr_flag <= io_in_bits_uop_cf_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_ftqPtr_value <= io_in_bits_uop_cf_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_ftqOffset <= io_in_bits_uop_cf_ftqOffset; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fuType <= io_in_bits_uop_ctrl_fuType; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fuOpType <= io_in_bits_uop_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_imm <= io_in_bits_uop_ctrl_imm; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_isAddSub <= io_in_bits_uop_ctrl_fpu_isAddSub; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_typeTagIn <= io_in_bits_uop_ctrl_fpu_typeTagIn; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_typeTagOut <= io_in_bits_uop_ctrl_fpu_typeTagOut; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_fromInt <= io_in_bits_uop_ctrl_fpu_fromInt; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_wflags <= io_in_bits_uop_ctrl_fpu_wflags; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_fpWen <= io_in_bits_uop_ctrl_fpu_fpWen; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_fmaCmd <= io_in_bits_uop_ctrl_fpu_fmaCmd; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_div <= io_in_bits_uop_ctrl_fpu_div; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_sqrt <= io_in_bits_uop_ctrl_fpu_sqrt; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_fcvt <= io_in_bits_uop_ctrl_fpu_fcvt; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_typ <= io_in_bits_uop_ctrl_fpu_typ; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_fmt <= io_in_bits_uop_ctrl_fpu_fmt; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_ren3 <= io_in_bits_uop_ctrl_fpu_ren3; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_ctrl_fpu_rm <= io_in_bits_uop_ctrl_fpu_rm; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_pdest <= io_in_bits_uop_pdest; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_sqIdx_flag <= io_in_bits_uop_sqIdx_flag; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_sqIdx_value <= io_in_bits_uop_sqIdx_value; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_rsrc_0 <= io_in_bits_src_0; // @[Reg.scala 17:22]
    end
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
  pipeline_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendEn_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendEn_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_3 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_4 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_5 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_bits_ruop_cf_pd_isRVC = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_bits_ruop_cf_pd_brType = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_bits_ruop_cf_pd_isCall = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_bits_ruop_cf_pd_isRet = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_bits_ruop_cf_pred_taken = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_bits_ruop_cf_ssid = _RAND_14[4:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_bits_ruop_cf_ftqPtr_flag = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_bits_ruop_cf_ftqPtr_value = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_bits_ruop_cf_ftqOffset = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fuType = _RAND_18[3:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fuOpType = _RAND_19[6:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_rfWen = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpWen = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_imm = _RAND_22[19:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_isAddSub = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_typeTagIn = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_typeTagOut = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_fromInt = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_wflags = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_fpWen = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_fmaCmd = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_div = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_sqrt = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_fcvt = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_typ = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_fmt = _RAND_34[1:0];
  _RAND_35 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_ren3 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpu_rm = _RAND_36[2:0];
  _RAND_37 = {1{`RANDOM}};
  io_out_bits_ruop_pdest = _RAND_37[6:0];
  _RAND_38 = {1{`RANDOM}};
  io_out_bits_ruop_robIdx_flag = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_out_bits_ruop_robIdx_value = _RAND_39[6:0];
  _RAND_40 = {1{`RANDOM}};
  io_out_bits_ruop_lqIdx_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  io_out_bits_ruop_lqIdx_value = _RAND_41[5:0];
  _RAND_42 = {1{`RANDOM}};
  io_out_bits_ruop_sqIdx_flag = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  io_out_bits_ruop_sqIdx_value = _RAND_43[4:0];
  _RAND_44 = {2{`RANDOM}};
  io_out_bits_rsrc_0 = _RAND_44[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
