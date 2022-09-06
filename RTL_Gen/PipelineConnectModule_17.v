module PipelineConnectModule_17(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input         io_in_bits_uop_cf_exceptionVec_4,
  input         io_in_bits_uop_cf_exceptionVec_5,
  input         io_in_bits_uop_cf_exceptionVec_6,
  input         io_in_bits_uop_cf_exceptionVec_7,
  input         io_in_bits_uop_cf_exceptionVec_13,
  input         io_in_bits_uop_cf_exceptionVec_15,
  input         io_in_bits_uop_cf_trigger_backendEn_0,
  input         io_in_bits_uop_cf_trigger_backendEn_1,
  input         io_in_bits_uop_cf_trigger_backendHit_0,
  input         io_in_bits_uop_cf_trigger_backendHit_1,
  input         io_in_bits_uop_cf_trigger_backendHit_2,
  input         io_in_bits_uop_cf_trigger_backendHit_3,
  input         io_in_bits_uop_cf_trigger_backendHit_4,
  input         io_in_bits_uop_cf_trigger_backendHit_5,
  input         io_in_bits_uop_cf_ftqPtr_flag,
  input  [5:0]  io_in_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_in_bits_uop_cf_ftqOffset,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [6:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [5:0]  io_in_bits_uop_lqIdx_value,
  input         io_in_bits_uop_sqIdx_flag,
  input  [4:0]  io_in_bits_uop_sqIdx_value,
  input  [38:0] io_in_bits_vaddr,
  input  [35:0] io_in_bits_paddr,
  input  [7:0]  io_in_bits_mask,
  input         io_in_bits_wlineflag,
  input         io_in_bits_tlbMiss,
  input         io_in_bits_mmio,
  input  [4:0]  io_in_bits_rsIdx,
  input         io_in_bits_isSoftPrefetch,
  input         io_out_ready,
  output        io_out_valid,
  output        io_out_bits_uop_cf_exceptionVec_4,
  output        io_out_bits_uop_cf_exceptionVec_5,
  output        io_out_bits_uop_cf_exceptionVec_6,
  output        io_out_bits_uop_cf_exceptionVec_7,
  output        io_out_bits_uop_cf_exceptionVec_13,
  output        io_out_bits_uop_cf_exceptionVec_15,
  output        io_out_bits_uop_cf_trigger_backendEn_0,
  output        io_out_bits_uop_cf_trigger_backendEn_1,
  output        io_out_bits_uop_cf_trigger_backendHit_0,
  output        io_out_bits_uop_cf_trigger_backendHit_1,
  output        io_out_bits_uop_cf_trigger_backendHit_2,
  output        io_out_bits_uop_cf_trigger_backendHit_3,
  output        io_out_bits_uop_cf_trigger_backendHit_4,
  output        io_out_bits_uop_cf_trigger_backendHit_5,
  output        io_out_bits_uop_cf_ftqPtr_flag,
  output [5:0]  io_out_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_out_bits_uop_cf_ftqOffset,
  output [6:0]  io_out_bits_uop_ctrl_fuOpType,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [5:0]  io_out_bits_uop_lqIdx_value,
  output        io_out_bits_uop_sqIdx_flag,
  output [4:0]  io_out_bits_uop_sqIdx_value,
  output [38:0] io_out_bits_vaddr,
  output [35:0] io_out_bits_paddr,
  output [7:0]  io_out_bits_mask,
  output        io_out_bits_wlineflag,
  output        io_out_bits_tlbMiss,
  output        io_out_bits_mmio,
  output [4:0]  io_out_bits_rsIdx,
  output        io_out_bits_isSoftPrefetch,
  input         io_isFlush
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
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
`endif // RANDOMIZE_REG_INIT
  reg  pipeline_valid; // @[PipelineConnect.scala 34:24]
  wire  leftFire = io_in_valid & io_out_ready; // @[PipelineConnect.scala 36:32]
  reg  io_out_bits_ruop_cf_exceptionVec_4; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_exceptionVec_5; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_exceptionVec_6; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_exceptionVec_7; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_exceptionVec_13; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_exceptionVec_15; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_0; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_1; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_2; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_3; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_4; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_trigger_backendHit_5; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [5:0] io_out_bits_ruop_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] io_out_bits_ruop_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [6:0] io_out_bits_ruop_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [6:0] io_out_bits_ruop_pdest; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_robIdx_flag; // @[Reg.scala 16:16]
  reg [6:0] io_out_bits_ruop_robIdx_value; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [5:0] io_out_bits_ruop_lqIdx_value; // @[Reg.scala 16:16]
  reg  io_out_bits_ruop_sqIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] io_out_bits_ruop_sqIdx_value; // @[Reg.scala 16:16]
  reg [38:0] io_out_bits_rvaddr; // @[Reg.scala 16:16]
  reg [35:0] io_out_bits_rpaddr; // @[Reg.scala 16:16]
  reg [7:0] io_out_bits_rmask; // @[Reg.scala 16:16]
  reg  io_out_bits_rwlineflag; // @[Reg.scala 16:16]
  reg  io_out_bits_rtlbMiss; // @[Reg.scala 16:16]
  reg  io_out_bits_rmmio; // @[Reg.scala 16:16]
  reg [4:0] io_out_bits_rrsIdx; // @[Reg.scala 16:16]
  reg  io_out_bits_risSoftPrefetch; // @[Reg.scala 16:16]
  assign io_in_ready = io_out_ready; // @[PipelineConnect.scala 41:33]
  assign io_out_valid = pipeline_valid; // @[PipelineConnect.scala 43:18]
  assign io_out_bits_uop_cf_exceptionVec_4 = io_out_bits_ruop_cf_exceptionVec_4; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_exceptionVec_5 = io_out_bits_ruop_cf_exceptionVec_5; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_exceptionVec_6 = io_out_bits_ruop_cf_exceptionVec_6; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_exceptionVec_7 = io_out_bits_ruop_cf_exceptionVec_7; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_exceptionVec_13 = io_out_bits_ruop_cf_exceptionVec_13; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_exceptionVec_15 = io_out_bits_ruop_cf_exceptionVec_15; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendEn_0 = io_out_bits_ruop_cf_trigger_backendEn_0; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendEn_1 = io_out_bits_ruop_cf_trigger_backendEn_1; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = io_out_bits_ruop_cf_trigger_backendHit_0; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = io_out_bits_ruop_cf_trigger_backendHit_1; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = io_out_bits_ruop_cf_trigger_backendHit_2; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = io_out_bits_ruop_cf_trigger_backendHit_3; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = io_out_bits_ruop_cf_trigger_backendHit_4; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = io_out_bits_ruop_cf_trigger_backendHit_5; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_ftqPtr_flag = io_out_bits_ruop_cf_ftqPtr_flag; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_ftqPtr_value = io_out_bits_ruop_cf_ftqPtr_value; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_cf_ftqOffset = io_out_bits_ruop_cf_ftqOffset; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fuOpType = io_out_bits_ruop_ctrl_fuOpType; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_rfWen = io_out_bits_ruop_ctrl_rfWen; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_ctrl_fpWen = io_out_bits_ruop_ctrl_fpWen; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_pdest = io_out_bits_ruop_pdest; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_robIdx_flag = io_out_bits_ruop_robIdx_flag; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_robIdx_value = io_out_bits_ruop_robIdx_value; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_lqIdx_flag = io_out_bits_ruop_lqIdx_flag; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_lqIdx_value = io_out_bits_ruop_lqIdx_value; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_sqIdx_flag = io_out_bits_ruop_sqIdx_flag; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_uop_sqIdx_value = io_out_bits_ruop_sqIdx_value; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_vaddr = io_out_bits_rvaddr; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_paddr = io_out_bits_rpaddr; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_mask = io_out_bits_rmask; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_wlineflag = io_out_bits_rwlineflag; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_tlbMiss = io_out_bits_rtlbMiss; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_mmio = io_out_bits_rmmio; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_rsIdx = io_out_bits_rrsIdx; // @[PipelineConnect.scala 42:17]
  assign io_out_bits_isSoftPrefetch = io_out_bits_risSoftPrefetch; // @[PipelineConnect.scala 42:17]
  always @(posedge clock) begin
    if (reset) begin // @[PipelineConnect.scala 34:24]
      pipeline_valid <= 1'h0; // @[PipelineConnect.scala 34:24]
    end else if (io_isFlush) begin // @[PipelineConnect.scala 39:23]
      pipeline_valid <= 1'h0; // @[PipelineConnect.scala 39:31]
    end else begin
      pipeline_valid <= leftFire;
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_exceptionVec_4 <= io_in_bits_uop_cf_exceptionVec_4; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_exceptionVec_5 <= io_in_bits_uop_cf_exceptionVec_5; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_exceptionVec_6 <= io_in_bits_uop_cf_exceptionVec_6; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_exceptionVec_7 <= io_in_bits_uop_cf_exceptionVec_7; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_exceptionVec_13 <= io_in_bits_uop_cf_exceptionVec_13; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_exceptionVec_15 <= io_in_bits_uop_cf_exceptionVec_15; // @[Reg.scala 17:22]
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
      io_out_bits_ruop_cf_ftqPtr_flag <= io_in_bits_uop_cf_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_ftqPtr_value <= io_in_bits_uop_cf_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_ruop_cf_ftqOffset <= io_in_bits_uop_cf_ftqOffset; // @[Reg.scala 17:22]
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
      io_out_bits_rvaddr <= io_in_bits_vaddr; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_rpaddr <= io_in_bits_paddr; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_rmask <= io_in_bits_mask; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_rwlineflag <= io_in_bits_wlineflag; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_rtlbMiss <= io_in_bits_tlbMiss; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_rmmio <= io_in_bits_mmio; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_rrsIdx <= io_in_bits_rsIdx; // @[Reg.scala 17:22]
    end
    if (leftFire) begin // @[Reg.scala 17:18]
      io_out_bits_risSoftPrefetch <= io_in_bits_isSoftPrefetch; // @[Reg.scala 17:22]
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
  io_out_bits_ruop_cf_exceptionVec_4 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_bits_ruop_cf_exceptionVec_5 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_bits_ruop_cf_exceptionVec_6 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_bits_ruop_cf_exceptionVec_7 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_bits_ruop_cf_exceptionVec_13 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_bits_ruop_cf_exceptionVec_15 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendEn_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendEn_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_2 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_3 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_4 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_bits_ruop_cf_trigger_backendHit_5 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_bits_ruop_cf_ftqPtr_flag = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_bits_ruop_cf_ftqPtr_value = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_bits_ruop_cf_ftqOffset = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fuOpType = _RAND_18[6:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_rfWen = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_bits_ruop_ctrl_fpWen = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_bits_ruop_pdest = _RAND_21[6:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_bits_ruop_robIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_bits_ruop_robIdx_value = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  io_out_bits_ruop_lqIdx_flag = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_out_bits_ruop_lqIdx_value = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  io_out_bits_ruop_sqIdx_flag = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_out_bits_ruop_sqIdx_value = _RAND_27[4:0];
  _RAND_28 = {2{`RANDOM}};
  io_out_bits_rvaddr = _RAND_28[38:0];
  _RAND_29 = {2{`RANDOM}};
  io_out_bits_rpaddr = _RAND_29[35:0];
  _RAND_30 = {1{`RANDOM}};
  io_out_bits_rmask = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  io_out_bits_rwlineflag = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_out_bits_rtlbMiss = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_out_bits_rmmio = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  io_out_bits_rrsIdx = _RAND_34[4:0];
  _RAND_35 = {1{`RANDOM}};
  io_out_bits_risSoftPrefetch = _RAND_35[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
