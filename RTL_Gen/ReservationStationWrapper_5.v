module ReservationStationWrapper_5(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_fromDispatch_0_ready,
  input         io_fromDispatch_0_valid,
  input         io_fromDispatch_0_bits_cf_trigger_backendEn_0,
  input         io_fromDispatch_0_bits_cf_trigger_backendEn_1,
  input         io_fromDispatch_0_bits_cf_trigger_backendHit_0,
  input         io_fromDispatch_0_bits_cf_trigger_backendHit_1,
  input         io_fromDispatch_0_bits_cf_trigger_backendHit_2,
  input         io_fromDispatch_0_bits_cf_trigger_backendHit_3,
  input         io_fromDispatch_0_bits_cf_trigger_backendHit_4,
  input         io_fromDispatch_0_bits_cf_trigger_backendHit_5,
  input         io_fromDispatch_0_bits_cf_pd_isRVC,
  input  [1:0]  io_fromDispatch_0_bits_cf_pd_brType,
  input         io_fromDispatch_0_bits_cf_pd_isCall,
  input         io_fromDispatch_0_bits_cf_pd_isRet,
  input         io_fromDispatch_0_bits_cf_pred_taken,
  input  [4:0]  io_fromDispatch_0_bits_cf_ssid,
  input         io_fromDispatch_0_bits_cf_ftqPtr_flag,
  input  [5:0]  io_fromDispatch_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromDispatch_0_bits_cf_ftqOffset,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_srcType_0,
  input  [3:0]  io_fromDispatch_0_bits_ctrl_fuType,
  input  [6:0]  io_fromDispatch_0_bits_ctrl_fuOpType,
  input         io_fromDispatch_0_bits_ctrl_rfWen,
  input         io_fromDispatch_0_bits_ctrl_fpWen,
  input  [19:0] io_fromDispatch_0_bits_ctrl_imm,
  input         io_fromDispatch_0_bits_ctrl_fpu_isAddSub,
  input         io_fromDispatch_0_bits_ctrl_fpu_typeTagIn,
  input         io_fromDispatch_0_bits_ctrl_fpu_typeTagOut,
  input         io_fromDispatch_0_bits_ctrl_fpu_fromInt,
  input         io_fromDispatch_0_bits_ctrl_fpu_wflags,
  input         io_fromDispatch_0_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_fpu_fmaCmd,
  input         io_fromDispatch_0_bits_ctrl_fpu_div,
  input         io_fromDispatch_0_bits_ctrl_fpu_sqrt,
  input         io_fromDispatch_0_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_fpu_typ,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_fpu_fmt,
  input         io_fromDispatch_0_bits_ctrl_fpu_ren3,
  input  [2:0]  io_fromDispatch_0_bits_ctrl_fpu_rm,
  input         io_fromDispatch_0_bits_srcState_0,
  input  [6:0]  io_fromDispatch_0_bits_psrc_0,
  input  [6:0]  io_fromDispatch_0_bits_pdest,
  input         io_fromDispatch_0_bits_robIdx_flag,
  input  [6:0]  io_fromDispatch_0_bits_robIdx_value,
  input         io_fromDispatch_0_bits_lqIdx_flag,
  input  [5:0]  io_fromDispatch_0_bits_lqIdx_value,
  input         io_fromDispatch_0_bits_sqIdx_flag,
  input  [4:0]  io_fromDispatch_0_bits_sqIdx_value,
  output        io_fromDispatch_1_ready,
  input         io_fromDispatch_1_valid,
  input         io_fromDispatch_1_bits_cf_trigger_backendEn_0,
  input         io_fromDispatch_1_bits_cf_trigger_backendEn_1,
  input         io_fromDispatch_1_bits_cf_trigger_backendHit_0,
  input         io_fromDispatch_1_bits_cf_trigger_backendHit_1,
  input         io_fromDispatch_1_bits_cf_trigger_backendHit_2,
  input         io_fromDispatch_1_bits_cf_trigger_backendHit_3,
  input         io_fromDispatch_1_bits_cf_trigger_backendHit_4,
  input         io_fromDispatch_1_bits_cf_trigger_backendHit_5,
  input         io_fromDispatch_1_bits_cf_pd_isRVC,
  input  [1:0]  io_fromDispatch_1_bits_cf_pd_brType,
  input         io_fromDispatch_1_bits_cf_pd_isCall,
  input         io_fromDispatch_1_bits_cf_pd_isRet,
  input         io_fromDispatch_1_bits_cf_pred_taken,
  input  [4:0]  io_fromDispatch_1_bits_cf_ssid,
  input         io_fromDispatch_1_bits_cf_ftqPtr_flag,
  input  [5:0]  io_fromDispatch_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromDispatch_1_bits_cf_ftqOffset,
  input  [1:0]  io_fromDispatch_1_bits_ctrl_srcType_0,
  input  [3:0]  io_fromDispatch_1_bits_ctrl_fuType,
  input  [6:0]  io_fromDispatch_1_bits_ctrl_fuOpType,
  input         io_fromDispatch_1_bits_ctrl_rfWen,
  input         io_fromDispatch_1_bits_ctrl_fpWen,
  input  [19:0] io_fromDispatch_1_bits_ctrl_imm,
  input         io_fromDispatch_1_bits_ctrl_fpu_isAddSub,
  input         io_fromDispatch_1_bits_ctrl_fpu_typeTagIn,
  input         io_fromDispatch_1_bits_ctrl_fpu_typeTagOut,
  input         io_fromDispatch_1_bits_ctrl_fpu_fromInt,
  input         io_fromDispatch_1_bits_ctrl_fpu_wflags,
  input         io_fromDispatch_1_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_fromDispatch_1_bits_ctrl_fpu_fmaCmd,
  input         io_fromDispatch_1_bits_ctrl_fpu_div,
  input         io_fromDispatch_1_bits_ctrl_fpu_sqrt,
  input         io_fromDispatch_1_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_fromDispatch_1_bits_ctrl_fpu_typ,
  input  [1:0]  io_fromDispatch_1_bits_ctrl_fpu_fmt,
  input         io_fromDispatch_1_bits_ctrl_fpu_ren3,
  input  [2:0]  io_fromDispatch_1_bits_ctrl_fpu_rm,
  input         io_fromDispatch_1_bits_srcState_0,
  input  [6:0]  io_fromDispatch_1_bits_psrc_0,
  input  [6:0]  io_fromDispatch_1_bits_pdest,
  input         io_fromDispatch_1_bits_robIdx_flag,
  input  [6:0]  io_fromDispatch_1_bits_robIdx_value,
  input         io_fromDispatch_1_bits_lqIdx_flag,
  input  [5:0]  io_fromDispatch_1_bits_lqIdx_value,
  input         io_fromDispatch_1_bits_sqIdx_flag,
  input  [4:0]  io_fromDispatch_1_bits_sqIdx_value,
  input  [63:0] io_srcRegValue_0_0,
  input  [63:0] io_srcRegValue_1_0,
  input  [63:0] io_fpRegValue_0,
  input  [63:0] io_fpRegValue_1,
  input         io_deq_0_ready,
  output        io_deq_0_valid,
  output [3:0]  io_deq_0_bits_uop_ctrl_fuType,
  output [6:0]  io_deq_0_bits_uop_ctrl_fuOpType,
  output        io_deq_0_bits_uop_robIdx_flag,
  output [6:0]  io_deq_0_bits_uop_robIdx_value,
  output [4:0]  io_deq_0_bits_uop_sqIdx_value,
  output [63:0] io_deq_0_bits_src_0,
  input         io_deq_1_ready,
  output        io_deq_1_valid,
  output [3:0]  io_deq_1_bits_uop_ctrl_fuType,
  output [6:0]  io_deq_1_bits_uop_ctrl_fuOpType,
  output        io_deq_1_bits_uop_robIdx_flag,
  output [6:0]  io_deq_1_bits_uop_robIdx_value,
  output [4:0]  io_deq_1_bits_uop_sqIdx_value,
  output [63:0] io_deq_1_bits_src_0,
  input         io_slowPorts_0_valid,
  input         io_slowPorts_0_bits_uop_ctrl_rfWen,
  input         io_slowPorts_0_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_0_bits_uop_pdest,
  input  [63:0] io_slowPorts_0_bits_data,
  input         io_slowPorts_1_valid,
  input         io_slowPorts_1_bits_uop_ctrl_rfWen,
  input         io_slowPorts_1_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_1_bits_uop_pdest,
  input  [63:0] io_slowPorts_1_bits_data,
  input         io_slowPorts_2_valid,
  input         io_slowPorts_2_bits_uop_ctrl_rfWen,
  input         io_slowPorts_2_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_2_bits_uop_pdest,
  input  [63:0] io_slowPorts_2_bits_data,
  input         io_slowPorts_3_valid,
  input         io_slowPorts_3_bits_uop_ctrl_rfWen,
  input         io_slowPorts_3_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_3_bits_uop_pdest,
  input  [63:0] io_slowPorts_3_bits_data,
  input         io_slowPorts_4_valid,
  input         io_slowPorts_4_bits_uop_ctrl_rfWen,
  input         io_slowPorts_4_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_4_bits_uop_pdest,
  input  [63:0] io_slowPorts_4_bits_data,
  input         io_slowPorts_5_valid,
  input         io_slowPorts_5_bits_uop_ctrl_rfWen,
  input         io_slowPorts_5_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_5_bits_uop_pdest,
  input  [63:0] io_slowPorts_5_bits_data,
  input         io_slowPorts_6_valid,
  input         io_slowPorts_6_bits_uop_ctrl_rfWen,
  input         io_slowPorts_6_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_6_bits_uop_pdest,
  input  [63:0] io_slowPorts_6_bits_data,
  input         io_slowPorts_7_valid,
  input         io_slowPorts_7_bits_uop_ctrl_rfWen,
  input         io_slowPorts_7_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_7_bits_uop_pdest,
  input  [63:0] io_slowPorts_7_bits_data,
  input         io_slowPorts_8_valid,
  input         io_slowPorts_8_bits_uop_ctrl_rfWen,
  input         io_slowPorts_8_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_8_bits_uop_pdest,
  input  [63:0] io_slowPorts_8_bits_data,
  input         io_slowPorts_9_valid,
  input         io_slowPorts_9_bits_uop_ctrl_rfWen,
  input         io_slowPorts_9_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_9_bits_uop_pdest,
  input  [63:0] io_slowPorts_9_bits_data,
  input         io_slowPorts_10_valid,
  input         io_slowPorts_10_bits_uop_ctrl_rfWen,
  input         io_slowPorts_10_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_10_bits_uop_pdest,
  input  [63:0] io_slowPorts_10_bits_data,
  input         io_slowPorts_11_valid,
  input         io_slowPorts_11_bits_uop_ctrl_rfWen,
  input         io_slowPorts_11_bits_uop_ctrl_fpWen,
  input  [6:0]  io_slowPorts_11_bits_uop_pdest,
  input  [63:0] io_slowPorts_11_bits_data,
  output [5:0]  io_perf_0_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  rs_0_clock; // @[ReservationStation.scala 159:13]
  wire  rs_0_reset; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_redirect_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_redirect_bits_robIdx_flag; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_redirect_bits_robIdx_value; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_redirect_bits_level; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_ready; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_0; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_1; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_2; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_3; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_4; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_5; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 159:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_cf_pd_brType; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_pd_isCall; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_pd_isRet; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_pred_taken; // @[ReservationStation.scala 159:13]
  wire [4:0] rs_0_io_fromDispatch_0_bits_cf_ssid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 159:13]
  wire [5:0] rs_0_io_fromDispatch_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 159:13]
  wire [2:0] rs_0_io_fromDispatch_0_bits_cf_ftqOffset; // @[ReservationStation.scala 159:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 159:13]
  wire [3:0] rs_0_io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [19:0] rs_0_io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_isAddSub; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_fromInt; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_wflags; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_fpWen; // @[ReservationStation.scala 159:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_div; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_sqrt; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_fcvt; // @[ReservationStation.scala 159:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_ctrl_fpu_typ; // @[ReservationStation.scala 159:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmt; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_ren3; // @[ReservationStation.scala 159:13]
  wire [2:0] rs_0_io_fromDispatch_0_bits_ctrl_fpu_rm; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_fromDispatch_0_bits_psrc_0; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_lqIdx_flag; // @[ReservationStation.scala 159:13]
  wire [5:0] rs_0_io_fromDispatch_0_bits_lqIdx_value; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_0_bits_sqIdx_flag; // @[ReservationStation.scala 159:13]
  wire [4:0] rs_0_io_fromDispatch_0_bits_sqIdx_value; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_ready; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_0; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_1; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_2; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_3; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_4; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_5; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_pd_isRVC; // @[ReservationStation.scala 159:13]
  wire [1:0] rs_0_io_fromDispatch_1_bits_cf_pd_brType; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_pd_isCall; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_pd_isRet; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_pred_taken; // @[ReservationStation.scala 159:13]
  wire [4:0] rs_0_io_fromDispatch_1_bits_cf_ssid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 159:13]
  wire [5:0] rs_0_io_fromDispatch_1_bits_cf_ftqPtr_value; // @[ReservationStation.scala 159:13]
  wire [2:0] rs_0_io_fromDispatch_1_bits_cf_ftqOffset; // @[ReservationStation.scala 159:13]
  wire [1:0] rs_0_io_fromDispatch_1_bits_ctrl_srcType_0; // @[ReservationStation.scala 159:13]
  wire [3:0] rs_0_io_fromDispatch_1_bits_ctrl_fuType; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_fromDispatch_1_bits_ctrl_fuOpType; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [19:0] rs_0_io_fromDispatch_1_bits_ctrl_imm; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_fpu_isAddSub; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_fpu_fromInt; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_fpu_wflags; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_fpu_fpWen; // @[ReservationStation.scala 159:13]
  wire [1:0] rs_0_io_fromDispatch_1_bits_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_fpu_div; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_fpu_sqrt; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_fpu_fcvt; // @[ReservationStation.scala 159:13]
  wire [1:0] rs_0_io_fromDispatch_1_bits_ctrl_fpu_typ; // @[ReservationStation.scala 159:13]
  wire [1:0] rs_0_io_fromDispatch_1_bits_ctrl_fpu_fmt; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_ctrl_fpu_ren3; // @[ReservationStation.scala 159:13]
  wire [2:0] rs_0_io_fromDispatch_1_bits_ctrl_fpu_rm; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_srcState_0; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_fromDispatch_1_bits_psrc_0; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_fromDispatch_1_bits_pdest; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_robIdx_flag; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_fromDispatch_1_bits_robIdx_value; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_lqIdx_flag; // @[ReservationStation.scala 159:13]
  wire [5:0] rs_0_io_fromDispatch_1_bits_lqIdx_value; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_fromDispatch_1_bits_sqIdx_flag; // @[ReservationStation.scala 159:13]
  wire [4:0] rs_0_io_fromDispatch_1_bits_sqIdx_value; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_srcRegValue_0_0; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_srcRegValue_1_0; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_fpRegValue_0; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_fpRegValue_1; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_deq_0_ready; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_deq_0_valid; // @[ReservationStation.scala 159:13]
  wire [3:0] rs_0_io_deq_0_bits_uop_ctrl_fuType; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_deq_0_bits_uop_ctrl_fuOpType; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_deq_0_bits_uop_robIdx_flag; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_deq_0_bits_uop_robIdx_value; // @[ReservationStation.scala 159:13]
  wire [4:0] rs_0_io_deq_0_bits_uop_sqIdx_value; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_deq_0_bits_src_0; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_deq_1_ready; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_deq_1_valid; // @[ReservationStation.scala 159:13]
  wire [3:0] rs_0_io_deq_1_bits_uop_ctrl_fuType; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_deq_1_bits_uop_ctrl_fuOpType; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_deq_1_bits_uop_robIdx_flag; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_deq_1_bits_uop_robIdx_value; // @[ReservationStation.scala 159:13]
  wire [4:0] rs_0_io_deq_1_bits_uop_sqIdx_value; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_deq_1_bits_src_0; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_0_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_0_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_0_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_0_bits_data; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_1_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_1_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_1_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_1_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_1_bits_data; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_2_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_2_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_2_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_2_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_2_bits_data; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_3_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_3_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_3_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_3_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_3_bits_data; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_4_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_4_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_4_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_4_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_4_bits_data; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_5_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_5_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_5_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_5_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_5_bits_data; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_6_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_6_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_6_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_6_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_6_bits_data; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_7_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_7_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_7_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_7_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_7_bits_data; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_8_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_8_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_8_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_8_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_8_bits_data; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_9_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_9_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_9_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_9_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_9_bits_data; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_10_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_10_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_10_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_10_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_10_bits_data; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_11_valid; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_11_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 159:13]
  wire  rs_0_io_slowPorts_11_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 159:13]
  wire [6:0] rs_0_io_slowPorts_11_bits_uop_pdest; // @[ReservationStation.scala 159:13]
  wire [63:0] rs_0_io_slowPorts_11_bits_data; // @[ReservationStation.scala 159:13]
  wire [5:0] rs_0_io_perf_0_value; // @[ReservationStation.scala 159:13]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  ReservationStation_6 rs_0 ( // @[ReservationStation.scala 159:13]
    .clock(rs_0_clock),
    .reset(rs_0_reset),
    .io_redirect_valid(rs_0_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(rs_0_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(rs_0_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(rs_0_io_redirect_bits_level),
    .io_fromDispatch_0_ready(rs_0_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(rs_0_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_0(rs_0_io_fromDispatch_0_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_1(rs_0_io_fromDispatch_0_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_0(rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_0),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_1(rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_1),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_2(rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_2),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_3(rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_3),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_4(rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_4),
    .io_fromDispatch_0_bits_cf_trigger_backendHit_5(rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_5),
    .io_fromDispatch_0_bits_cf_pd_isRVC(rs_0_io_fromDispatch_0_bits_cf_pd_isRVC),
    .io_fromDispatch_0_bits_cf_pd_brType(rs_0_io_fromDispatch_0_bits_cf_pd_brType),
    .io_fromDispatch_0_bits_cf_pd_isCall(rs_0_io_fromDispatch_0_bits_cf_pd_isCall),
    .io_fromDispatch_0_bits_cf_pd_isRet(rs_0_io_fromDispatch_0_bits_cf_pd_isRet),
    .io_fromDispatch_0_bits_cf_pred_taken(rs_0_io_fromDispatch_0_bits_cf_pred_taken),
    .io_fromDispatch_0_bits_cf_ssid(rs_0_io_fromDispatch_0_bits_cf_ssid),
    .io_fromDispatch_0_bits_cf_ftqPtr_flag(rs_0_io_fromDispatch_0_bits_cf_ftqPtr_flag),
    .io_fromDispatch_0_bits_cf_ftqPtr_value(rs_0_io_fromDispatch_0_bits_cf_ftqPtr_value),
    .io_fromDispatch_0_bits_cf_ftqOffset(rs_0_io_fromDispatch_0_bits_cf_ftqOffset),
    .io_fromDispatch_0_bits_ctrl_srcType_0(rs_0_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_fuType(rs_0_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(rs_0_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(rs_0_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(rs_0_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_imm(rs_0_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_ctrl_fpu_isAddSub(rs_0_io_fromDispatch_0_bits_ctrl_fpu_isAddSub),
    .io_fromDispatch_0_bits_ctrl_fpu_typeTagIn(rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn),
    .io_fromDispatch_0_bits_ctrl_fpu_typeTagOut(rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut),
    .io_fromDispatch_0_bits_ctrl_fpu_fromInt(rs_0_io_fromDispatch_0_bits_ctrl_fpu_fromInt),
    .io_fromDispatch_0_bits_ctrl_fpu_wflags(rs_0_io_fromDispatch_0_bits_ctrl_fpu_wflags),
    .io_fromDispatch_0_bits_ctrl_fpu_fpWen(rs_0_io_fromDispatch_0_bits_ctrl_fpu_fpWen),
    .io_fromDispatch_0_bits_ctrl_fpu_fmaCmd(rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd),
    .io_fromDispatch_0_bits_ctrl_fpu_div(rs_0_io_fromDispatch_0_bits_ctrl_fpu_div),
    .io_fromDispatch_0_bits_ctrl_fpu_sqrt(rs_0_io_fromDispatch_0_bits_ctrl_fpu_sqrt),
    .io_fromDispatch_0_bits_ctrl_fpu_fcvt(rs_0_io_fromDispatch_0_bits_ctrl_fpu_fcvt),
    .io_fromDispatch_0_bits_ctrl_fpu_typ(rs_0_io_fromDispatch_0_bits_ctrl_fpu_typ),
    .io_fromDispatch_0_bits_ctrl_fpu_fmt(rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmt),
    .io_fromDispatch_0_bits_ctrl_fpu_ren3(rs_0_io_fromDispatch_0_bits_ctrl_fpu_ren3),
    .io_fromDispatch_0_bits_ctrl_fpu_rm(rs_0_io_fromDispatch_0_bits_ctrl_fpu_rm),
    .io_fromDispatch_0_bits_srcState_0(rs_0_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_psrc_0(rs_0_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_pdest(rs_0_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(rs_0_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(rs_0_io_fromDispatch_0_bits_robIdx_value),
    .io_fromDispatch_0_bits_lqIdx_flag(rs_0_io_fromDispatch_0_bits_lqIdx_flag),
    .io_fromDispatch_0_bits_lqIdx_value(rs_0_io_fromDispatch_0_bits_lqIdx_value),
    .io_fromDispatch_0_bits_sqIdx_flag(rs_0_io_fromDispatch_0_bits_sqIdx_flag),
    .io_fromDispatch_0_bits_sqIdx_value(rs_0_io_fromDispatch_0_bits_sqIdx_value),
    .io_fromDispatch_1_ready(rs_0_io_fromDispatch_1_ready),
    .io_fromDispatch_1_valid(rs_0_io_fromDispatch_1_valid),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_0(rs_0_io_fromDispatch_1_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_1(rs_0_io_fromDispatch_1_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_0(rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_0),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_1(rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_1),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_2(rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_2),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_3(rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_3),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_4(rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_4),
    .io_fromDispatch_1_bits_cf_trigger_backendHit_5(rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_5),
    .io_fromDispatch_1_bits_cf_pd_isRVC(rs_0_io_fromDispatch_1_bits_cf_pd_isRVC),
    .io_fromDispatch_1_bits_cf_pd_brType(rs_0_io_fromDispatch_1_bits_cf_pd_brType),
    .io_fromDispatch_1_bits_cf_pd_isCall(rs_0_io_fromDispatch_1_bits_cf_pd_isCall),
    .io_fromDispatch_1_bits_cf_pd_isRet(rs_0_io_fromDispatch_1_bits_cf_pd_isRet),
    .io_fromDispatch_1_bits_cf_pred_taken(rs_0_io_fromDispatch_1_bits_cf_pred_taken),
    .io_fromDispatch_1_bits_cf_ssid(rs_0_io_fromDispatch_1_bits_cf_ssid),
    .io_fromDispatch_1_bits_cf_ftqPtr_flag(rs_0_io_fromDispatch_1_bits_cf_ftqPtr_flag),
    .io_fromDispatch_1_bits_cf_ftqPtr_value(rs_0_io_fromDispatch_1_bits_cf_ftqPtr_value),
    .io_fromDispatch_1_bits_cf_ftqOffset(rs_0_io_fromDispatch_1_bits_cf_ftqOffset),
    .io_fromDispatch_1_bits_ctrl_srcType_0(rs_0_io_fromDispatch_1_bits_ctrl_srcType_0),
    .io_fromDispatch_1_bits_ctrl_fuType(rs_0_io_fromDispatch_1_bits_ctrl_fuType),
    .io_fromDispatch_1_bits_ctrl_fuOpType(rs_0_io_fromDispatch_1_bits_ctrl_fuOpType),
    .io_fromDispatch_1_bits_ctrl_rfWen(rs_0_io_fromDispatch_1_bits_ctrl_rfWen),
    .io_fromDispatch_1_bits_ctrl_fpWen(rs_0_io_fromDispatch_1_bits_ctrl_fpWen),
    .io_fromDispatch_1_bits_ctrl_imm(rs_0_io_fromDispatch_1_bits_ctrl_imm),
    .io_fromDispatch_1_bits_ctrl_fpu_isAddSub(rs_0_io_fromDispatch_1_bits_ctrl_fpu_isAddSub),
    .io_fromDispatch_1_bits_ctrl_fpu_typeTagIn(rs_0_io_fromDispatch_1_bits_ctrl_fpu_typeTagIn),
    .io_fromDispatch_1_bits_ctrl_fpu_typeTagOut(rs_0_io_fromDispatch_1_bits_ctrl_fpu_typeTagOut),
    .io_fromDispatch_1_bits_ctrl_fpu_fromInt(rs_0_io_fromDispatch_1_bits_ctrl_fpu_fromInt),
    .io_fromDispatch_1_bits_ctrl_fpu_wflags(rs_0_io_fromDispatch_1_bits_ctrl_fpu_wflags),
    .io_fromDispatch_1_bits_ctrl_fpu_fpWen(rs_0_io_fromDispatch_1_bits_ctrl_fpu_fpWen),
    .io_fromDispatch_1_bits_ctrl_fpu_fmaCmd(rs_0_io_fromDispatch_1_bits_ctrl_fpu_fmaCmd),
    .io_fromDispatch_1_bits_ctrl_fpu_div(rs_0_io_fromDispatch_1_bits_ctrl_fpu_div),
    .io_fromDispatch_1_bits_ctrl_fpu_sqrt(rs_0_io_fromDispatch_1_bits_ctrl_fpu_sqrt),
    .io_fromDispatch_1_bits_ctrl_fpu_fcvt(rs_0_io_fromDispatch_1_bits_ctrl_fpu_fcvt),
    .io_fromDispatch_1_bits_ctrl_fpu_typ(rs_0_io_fromDispatch_1_bits_ctrl_fpu_typ),
    .io_fromDispatch_1_bits_ctrl_fpu_fmt(rs_0_io_fromDispatch_1_bits_ctrl_fpu_fmt),
    .io_fromDispatch_1_bits_ctrl_fpu_ren3(rs_0_io_fromDispatch_1_bits_ctrl_fpu_ren3),
    .io_fromDispatch_1_bits_ctrl_fpu_rm(rs_0_io_fromDispatch_1_bits_ctrl_fpu_rm),
    .io_fromDispatch_1_bits_srcState_0(rs_0_io_fromDispatch_1_bits_srcState_0),
    .io_fromDispatch_1_bits_psrc_0(rs_0_io_fromDispatch_1_bits_psrc_0),
    .io_fromDispatch_1_bits_pdest(rs_0_io_fromDispatch_1_bits_pdest),
    .io_fromDispatch_1_bits_robIdx_flag(rs_0_io_fromDispatch_1_bits_robIdx_flag),
    .io_fromDispatch_1_bits_robIdx_value(rs_0_io_fromDispatch_1_bits_robIdx_value),
    .io_fromDispatch_1_bits_lqIdx_flag(rs_0_io_fromDispatch_1_bits_lqIdx_flag),
    .io_fromDispatch_1_bits_lqIdx_value(rs_0_io_fromDispatch_1_bits_lqIdx_value),
    .io_fromDispatch_1_bits_sqIdx_flag(rs_0_io_fromDispatch_1_bits_sqIdx_flag),
    .io_fromDispatch_1_bits_sqIdx_value(rs_0_io_fromDispatch_1_bits_sqIdx_value),
    .io_srcRegValue_0_0(rs_0_io_srcRegValue_0_0),
    .io_srcRegValue_1_0(rs_0_io_srcRegValue_1_0),
    .io_fpRegValue_0(rs_0_io_fpRegValue_0),
    .io_fpRegValue_1(rs_0_io_fpRegValue_1),
    .io_deq_0_ready(rs_0_io_deq_0_ready),
    .io_deq_0_valid(rs_0_io_deq_0_valid),
    .io_deq_0_bits_uop_ctrl_fuType(rs_0_io_deq_0_bits_uop_ctrl_fuType),
    .io_deq_0_bits_uop_ctrl_fuOpType(rs_0_io_deq_0_bits_uop_ctrl_fuOpType),
    .io_deq_0_bits_uop_robIdx_flag(rs_0_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(rs_0_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_uop_sqIdx_value(rs_0_io_deq_0_bits_uop_sqIdx_value),
    .io_deq_0_bits_src_0(rs_0_io_deq_0_bits_src_0),
    .io_deq_1_ready(rs_0_io_deq_1_ready),
    .io_deq_1_valid(rs_0_io_deq_1_valid),
    .io_deq_1_bits_uop_ctrl_fuType(rs_0_io_deq_1_bits_uop_ctrl_fuType),
    .io_deq_1_bits_uop_ctrl_fuOpType(rs_0_io_deq_1_bits_uop_ctrl_fuOpType),
    .io_deq_1_bits_uop_robIdx_flag(rs_0_io_deq_1_bits_uop_robIdx_flag),
    .io_deq_1_bits_uop_robIdx_value(rs_0_io_deq_1_bits_uop_robIdx_value),
    .io_deq_1_bits_uop_sqIdx_value(rs_0_io_deq_1_bits_uop_sqIdx_value),
    .io_deq_1_bits_src_0(rs_0_io_deq_1_bits_src_0),
    .io_slowPorts_0_valid(rs_0_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_0_bits_uop_ctrl_rfWen),
    .io_slowPorts_0_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_0_bits_uop_ctrl_fpWen),
    .io_slowPorts_0_bits_uop_pdest(rs_0_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(rs_0_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(rs_0_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_1_bits_uop_ctrl_rfWen),
    .io_slowPorts_1_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_1_bits_uop_ctrl_fpWen),
    .io_slowPorts_1_bits_uop_pdest(rs_0_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(rs_0_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(rs_0_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_2_bits_uop_ctrl_rfWen),
    .io_slowPorts_2_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_2_bits_uop_ctrl_fpWen),
    .io_slowPorts_2_bits_uop_pdest(rs_0_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(rs_0_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(rs_0_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_3_bits_uop_ctrl_rfWen),
    .io_slowPorts_3_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_3_bits_uop_ctrl_fpWen),
    .io_slowPorts_3_bits_uop_pdest(rs_0_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(rs_0_io_slowPorts_3_bits_data),
    .io_slowPorts_4_valid(rs_0_io_slowPorts_4_valid),
    .io_slowPorts_4_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_4_bits_uop_ctrl_rfWen),
    .io_slowPorts_4_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_4_bits_uop_ctrl_fpWen),
    .io_slowPorts_4_bits_uop_pdest(rs_0_io_slowPorts_4_bits_uop_pdest),
    .io_slowPorts_4_bits_data(rs_0_io_slowPorts_4_bits_data),
    .io_slowPorts_5_valid(rs_0_io_slowPorts_5_valid),
    .io_slowPorts_5_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_5_bits_uop_ctrl_rfWen),
    .io_slowPorts_5_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_5_bits_uop_ctrl_fpWen),
    .io_slowPorts_5_bits_uop_pdest(rs_0_io_slowPorts_5_bits_uop_pdest),
    .io_slowPorts_5_bits_data(rs_0_io_slowPorts_5_bits_data),
    .io_slowPorts_6_valid(rs_0_io_slowPorts_6_valid),
    .io_slowPorts_6_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_6_bits_uop_ctrl_rfWen),
    .io_slowPorts_6_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_6_bits_uop_ctrl_fpWen),
    .io_slowPorts_6_bits_uop_pdest(rs_0_io_slowPorts_6_bits_uop_pdest),
    .io_slowPorts_6_bits_data(rs_0_io_slowPorts_6_bits_data),
    .io_slowPorts_7_valid(rs_0_io_slowPorts_7_valid),
    .io_slowPorts_7_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_7_bits_uop_ctrl_rfWen),
    .io_slowPorts_7_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_7_bits_uop_ctrl_fpWen),
    .io_slowPorts_7_bits_uop_pdest(rs_0_io_slowPorts_7_bits_uop_pdest),
    .io_slowPorts_7_bits_data(rs_0_io_slowPorts_7_bits_data),
    .io_slowPorts_8_valid(rs_0_io_slowPorts_8_valid),
    .io_slowPorts_8_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_8_bits_uop_ctrl_rfWen),
    .io_slowPorts_8_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_8_bits_uop_ctrl_fpWen),
    .io_slowPorts_8_bits_uop_pdest(rs_0_io_slowPorts_8_bits_uop_pdest),
    .io_slowPorts_8_bits_data(rs_0_io_slowPorts_8_bits_data),
    .io_slowPorts_9_valid(rs_0_io_slowPorts_9_valid),
    .io_slowPorts_9_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_9_bits_uop_ctrl_rfWen),
    .io_slowPorts_9_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_9_bits_uop_ctrl_fpWen),
    .io_slowPorts_9_bits_uop_pdest(rs_0_io_slowPorts_9_bits_uop_pdest),
    .io_slowPorts_9_bits_data(rs_0_io_slowPorts_9_bits_data),
    .io_slowPorts_10_valid(rs_0_io_slowPorts_10_valid),
    .io_slowPorts_10_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_10_bits_uop_ctrl_rfWen),
    .io_slowPorts_10_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_10_bits_uop_ctrl_fpWen),
    .io_slowPorts_10_bits_uop_pdest(rs_0_io_slowPorts_10_bits_uop_pdest),
    .io_slowPorts_10_bits_data(rs_0_io_slowPorts_10_bits_data),
    .io_slowPorts_11_valid(rs_0_io_slowPorts_11_valid),
    .io_slowPorts_11_bits_uop_ctrl_rfWen(rs_0_io_slowPorts_11_bits_uop_ctrl_rfWen),
    .io_slowPorts_11_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_11_bits_uop_ctrl_fpWen),
    .io_slowPorts_11_bits_uop_pdest(rs_0_io_slowPorts_11_bits_uop_pdest),
    .io_slowPorts_11_bits_data(rs_0_io_slowPorts_11_bits_data),
    .io_perf_0_value(rs_0_io_perf_0_value)
  );
  assign io_fromDispatch_0_ready = rs_0_io_fromDispatch_0_ready; // @[ReservationStation.scala 171:21]
  assign io_fromDispatch_1_ready = rs_0_io_fromDispatch_1_ready; // @[ReservationStation.scala 171:21]
  assign io_deq_0_valid = rs_0_io_deq_0_valid; // @[ReservationStation.scala 176:12]
  assign io_deq_0_bits_uop_ctrl_fuType = rs_0_io_deq_0_bits_uop_ctrl_fuType; // @[ReservationStation.scala 176:12]
  assign io_deq_0_bits_uop_ctrl_fuOpType = rs_0_io_deq_0_bits_uop_ctrl_fuOpType; // @[ReservationStation.scala 176:12]
  assign io_deq_0_bits_uop_robIdx_flag = rs_0_io_deq_0_bits_uop_robIdx_flag; // @[ReservationStation.scala 176:12]
  assign io_deq_0_bits_uop_robIdx_value = rs_0_io_deq_0_bits_uop_robIdx_value; // @[ReservationStation.scala 176:12]
  assign io_deq_0_bits_uop_sqIdx_value = rs_0_io_deq_0_bits_uop_sqIdx_value; // @[ReservationStation.scala 176:12]
  assign io_deq_0_bits_src_0 = rs_0_io_deq_0_bits_src_0; // @[ReservationStation.scala 176:12]
  assign io_deq_1_valid = rs_0_io_deq_1_valid; // @[ReservationStation.scala 176:12]
  assign io_deq_1_bits_uop_ctrl_fuType = rs_0_io_deq_1_bits_uop_ctrl_fuType; // @[ReservationStation.scala 176:12]
  assign io_deq_1_bits_uop_ctrl_fuOpType = rs_0_io_deq_1_bits_uop_ctrl_fuOpType; // @[ReservationStation.scala 176:12]
  assign io_deq_1_bits_uop_robIdx_flag = rs_0_io_deq_1_bits_uop_robIdx_flag; // @[ReservationStation.scala 176:12]
  assign io_deq_1_bits_uop_robIdx_value = rs_0_io_deq_1_bits_uop_robIdx_value; // @[ReservationStation.scala 176:12]
  assign io_deq_1_bits_uop_sqIdx_value = rs_0_io_deq_1_bits_uop_sqIdx_value; // @[ReservationStation.scala 176:12]
  assign io_deq_1_bits_src_0 = rs_0_io_deq_1_bits_src_0; // @[ReservationStation.scala 176:12]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign rs_0_clock = clock;
  assign rs_0_reset = reset;
  assign rs_0_io_redirect_valid = io_redirect_valid; // @[ReservationStation.scala 169:30]
  assign rs_0_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[ReservationStation.scala 169:30]
  assign rs_0_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[ReservationStation.scala 169:30]
  assign rs_0_io_redirect_bits_level = io_redirect_bits_level; // @[ReservationStation.scala 169:30]
  assign rs_0_io_fromDispatch_0_valid = io_fromDispatch_0_valid; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_trigger_backendEn_0 = io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_trigger_backendEn_1 = io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_0 = io_fromDispatch_0_bits_cf_trigger_backendHit_0; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_1 = io_fromDispatch_0_bits_cf_trigger_backendHit_1; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_2 = io_fromDispatch_0_bits_cf_trigger_backendHit_2; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_3 = io_fromDispatch_0_bits_cf_trigger_backendHit_3; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_4 = io_fromDispatch_0_bits_cf_trigger_backendHit_4; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_trigger_backendHit_5 = io_fromDispatch_0_bits_cf_trigger_backendHit_5; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_pd_isRVC = io_fromDispatch_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_pd_brType = io_fromDispatch_0_bits_cf_pd_brType; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_pd_isCall = io_fromDispatch_0_bits_cf_pd_isCall; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_pd_isRet = io_fromDispatch_0_bits_cf_pd_isRet; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_pred_taken = io_fromDispatch_0_bits_cf_pred_taken; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_ssid = io_fromDispatch_0_bits_cf_ssid; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_ftqPtr_flag = io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_ftqPtr_value = io_fromDispatch_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_cf_ftqOffset = io_fromDispatch_0_bits_cf_ftqOffset; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_srcType_0 = io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fuType = io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fuOpType = io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_rfWen = io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpWen = io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_imm = io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_isAddSub = io_fromDispatch_0_bits_ctrl_fpu_isAddSub; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn = io_fromDispatch_0_bits_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut = io_fromDispatch_0_bits_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_fromInt = io_fromDispatch_0_bits_ctrl_fpu_fromInt; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_wflags = io_fromDispatch_0_bits_ctrl_fpu_wflags; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_fpWen = io_fromDispatch_0_bits_ctrl_fpu_fpWen; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd = io_fromDispatch_0_bits_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_div = io_fromDispatch_0_bits_ctrl_fpu_div; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_sqrt = io_fromDispatch_0_bits_ctrl_fpu_sqrt; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_fcvt = io_fromDispatch_0_bits_ctrl_fpu_fcvt; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_typ = io_fromDispatch_0_bits_ctrl_fpu_typ; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmt = io_fromDispatch_0_bits_ctrl_fpu_fmt; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_ren3 = io_fromDispatch_0_bits_ctrl_fpu_ren3; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_rm = io_fromDispatch_0_bits_ctrl_fpu_rm; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_srcState_0 = io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_psrc_0 = io_fromDispatch_0_bits_psrc_0; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_pdest = io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_robIdx_flag = io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_robIdx_value = io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_lqIdx_flag = io_fromDispatch_0_bits_lqIdx_flag; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_lqIdx_value = io_fromDispatch_0_bits_lqIdx_value; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_sqIdx_flag = io_fromDispatch_0_bits_sqIdx_flag; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_0_bits_sqIdx_value = io_fromDispatch_0_bits_sqIdx_value; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_valid = io_fromDispatch_1_valid; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_trigger_backendEn_0 = io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_trigger_backendEn_1 = io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_0 = io_fromDispatch_1_bits_cf_trigger_backendHit_0; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_1 = io_fromDispatch_1_bits_cf_trigger_backendHit_1; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_2 = io_fromDispatch_1_bits_cf_trigger_backendHit_2; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_3 = io_fromDispatch_1_bits_cf_trigger_backendHit_3; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_4 = io_fromDispatch_1_bits_cf_trigger_backendHit_4; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_trigger_backendHit_5 = io_fromDispatch_1_bits_cf_trigger_backendHit_5; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_pd_isRVC = io_fromDispatch_1_bits_cf_pd_isRVC; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_pd_brType = io_fromDispatch_1_bits_cf_pd_brType; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_pd_isCall = io_fromDispatch_1_bits_cf_pd_isCall; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_pd_isRet = io_fromDispatch_1_bits_cf_pd_isRet; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_pred_taken = io_fromDispatch_1_bits_cf_pred_taken; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_ssid = io_fromDispatch_1_bits_cf_ssid; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_ftqPtr_flag = io_fromDispatch_1_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_ftqPtr_value = io_fromDispatch_1_bits_cf_ftqPtr_value; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_cf_ftqOffset = io_fromDispatch_1_bits_cf_ftqOffset; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_srcType_0 = io_fromDispatch_1_bits_ctrl_srcType_0; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fuType = io_fromDispatch_1_bits_ctrl_fuType; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fuOpType = io_fromDispatch_1_bits_ctrl_fuOpType; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_rfWen = io_fromDispatch_1_bits_ctrl_rfWen; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpWen = io_fromDispatch_1_bits_ctrl_fpWen; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_imm = io_fromDispatch_1_bits_ctrl_imm; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_isAddSub = io_fromDispatch_1_bits_ctrl_fpu_isAddSub; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_typeTagIn = io_fromDispatch_1_bits_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_typeTagOut = io_fromDispatch_1_bits_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_fromInt = io_fromDispatch_1_bits_ctrl_fpu_fromInt; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_wflags = io_fromDispatch_1_bits_ctrl_fpu_wflags; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_fpWen = io_fromDispatch_1_bits_ctrl_fpu_fpWen; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_fmaCmd = io_fromDispatch_1_bits_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_div = io_fromDispatch_1_bits_ctrl_fpu_div; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_sqrt = io_fromDispatch_1_bits_ctrl_fpu_sqrt; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_fcvt = io_fromDispatch_1_bits_ctrl_fpu_fcvt; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_typ = io_fromDispatch_1_bits_ctrl_fpu_typ; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_fmt = io_fromDispatch_1_bits_ctrl_fpu_fmt; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_ren3 = io_fromDispatch_1_bits_ctrl_fpu_ren3; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_ctrl_fpu_rm = io_fromDispatch_1_bits_ctrl_fpu_rm; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_srcState_0 = io_fromDispatch_1_bits_srcState_0; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_psrc_0 = io_fromDispatch_1_bits_psrc_0; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_pdest = io_fromDispatch_1_bits_pdest; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_robIdx_flag = io_fromDispatch_1_bits_robIdx_flag; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_robIdx_value = io_fromDispatch_1_bits_robIdx_value; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_lqIdx_flag = io_fromDispatch_1_bits_lqIdx_flag; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_lqIdx_value = io_fromDispatch_1_bits_lqIdx_value; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_sqIdx_flag = io_fromDispatch_1_bits_sqIdx_flag; // @[ReservationStation.scala 171:21]
  assign rs_0_io_fromDispatch_1_bits_sqIdx_value = io_fromDispatch_1_bits_sqIdx_value; // @[ReservationStation.scala 171:21]
  assign rs_0_io_srcRegValue_0_0 = io_srcRegValue_0_0; // @[ReservationStation.scala 172:20]
  assign rs_0_io_srcRegValue_1_0 = io_srcRegValue_1_0; // @[ReservationStation.scala 172:20]
  assign rs_0_io_fpRegValue_0 = io_fpRegValue_0; // @[ReservationStation.scala 174:25]
  assign rs_0_io_fpRegValue_1 = io_fpRegValue_1; // @[ReservationStation.scala 174:25]
  assign rs_0_io_deq_0_ready = io_deq_0_ready; // @[ReservationStation.scala 176:12]
  assign rs_0_io_deq_1_ready = io_deq_1_ready; // @[ReservationStation.scala 176:12]
  assign rs_0_io_slowPorts_0_valid = io_slowPorts_0_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_0_bits_uop_ctrl_rfWen = io_slowPorts_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_0_bits_uop_ctrl_fpWen = io_slowPorts_0_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_0_bits_uop_pdest = io_slowPorts_0_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_0_bits_data = io_slowPorts_0_bits_data; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_1_valid = io_slowPorts_1_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_1_bits_uop_ctrl_rfWen = io_slowPorts_1_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_1_bits_uop_ctrl_fpWen = io_slowPorts_1_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_1_bits_uop_pdest = io_slowPorts_1_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_1_bits_data = io_slowPorts_1_bits_data; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_2_valid = io_slowPorts_2_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_2_bits_uop_ctrl_rfWen = io_slowPorts_2_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_2_bits_uop_ctrl_fpWen = io_slowPorts_2_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_2_bits_uop_pdest = io_slowPorts_2_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_2_bits_data = io_slowPorts_2_bits_data; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_3_valid = io_slowPorts_3_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_3_bits_uop_ctrl_rfWen = io_slowPorts_3_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_3_bits_uop_ctrl_fpWen = io_slowPorts_3_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_3_bits_uop_pdest = io_slowPorts_3_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_3_bits_data = io_slowPorts_3_bits_data; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_4_valid = io_slowPorts_4_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_4_bits_uop_ctrl_rfWen = io_slowPorts_4_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_4_bits_uop_ctrl_fpWen = io_slowPorts_4_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_4_bits_uop_pdest = io_slowPorts_4_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_4_bits_data = io_slowPorts_4_bits_data; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_5_valid = io_slowPorts_5_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_5_bits_uop_ctrl_rfWen = io_slowPorts_5_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_5_bits_uop_ctrl_fpWen = io_slowPorts_5_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_5_bits_uop_pdest = io_slowPorts_5_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_5_bits_data = io_slowPorts_5_bits_data; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_6_valid = io_slowPorts_6_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_6_bits_uop_ctrl_rfWen = io_slowPorts_6_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_6_bits_uop_ctrl_fpWen = io_slowPorts_6_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_6_bits_uop_pdest = io_slowPorts_6_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_6_bits_data = io_slowPorts_6_bits_data; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_7_valid = io_slowPorts_7_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_7_bits_uop_ctrl_rfWen = io_slowPorts_7_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_7_bits_uop_ctrl_fpWen = io_slowPorts_7_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_7_bits_uop_pdest = io_slowPorts_7_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_7_bits_data = io_slowPorts_7_bits_data; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_8_valid = io_slowPorts_8_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_8_bits_uop_ctrl_rfWen = io_slowPorts_8_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_8_bits_uop_ctrl_fpWen = io_slowPorts_8_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_8_bits_uop_pdest = io_slowPorts_8_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_8_bits_data = io_slowPorts_8_bits_data; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_9_valid = io_slowPorts_9_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_9_bits_uop_ctrl_rfWen = io_slowPorts_9_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_9_bits_uop_ctrl_fpWen = io_slowPorts_9_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_9_bits_uop_pdest = io_slowPorts_9_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_9_bits_data = io_slowPorts_9_bits_data; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_10_valid = io_slowPorts_10_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_10_bits_uop_ctrl_rfWen = io_slowPorts_10_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_10_bits_uop_ctrl_fpWen = io_slowPorts_10_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_10_bits_uop_pdest = io_slowPorts_10_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_10_bits_data = io_slowPorts_10_bits_data; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_11_valid = io_slowPorts_11_valid; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_11_bits_uop_ctrl_rfWen = io_slowPorts_11_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_11_bits_uop_ctrl_fpWen = io_slowPorts_11_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_11_bits_uop_pdest = io_slowPorts_11_bits_uop_pdest; // @[ReservationStation.scala 179:31]
  assign rs_0_io_slowPorts_11_bits_data = io_slowPorts_11_bits_data; // @[ReservationStation.scala 179:31]
  always @(posedge clock) begin
    io_perf_0_value_REG <= rs_0_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  io_perf_0_value_REG = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_1[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule