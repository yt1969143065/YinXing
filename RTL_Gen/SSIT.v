module SSIT(
  input        clock,
  input        reset,
  input  [9:0] io_raddr_0,
  input  [9:0] io_raddr_1,
  input  [9:0] io_raddr_2,
  input  [9:0] io_raddr_3,
  output       io_rdata_0_valid,
  output [4:0] io_rdata_0_ssid,
  output       io_rdata_0_strict,
  output       io_rdata_1_valid,
  output [4:0] io_rdata_1_ssid,
  output       io_rdata_1_strict,
  output       io_rdata_2_valid,
  output [4:0] io_rdata_2_ssid,
  output       io_rdata_2_strict,
  output       io_rdata_3_valid,
  output [4:0] io_rdata_3_ssid,
  output       io_rdata_3_strict,
  input        io_update_valid,
  input  [9:0] io_update_ldpc,
  input  [9:0] io_update_stpc,
  input  [4:0] io_csrCtrl_lvpred_timeout
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  valid_sram_clock; // @[StoreSet.scala 76:26]
  wire [9:0] valid_sram_io_raddr_0; // @[StoreSet.scala 76:26]
  wire [9:0] valid_sram_io_raddr_1; // @[StoreSet.scala 76:26]
  wire [9:0] valid_sram_io_raddr_2; // @[StoreSet.scala 76:26]
  wire [9:0] valid_sram_io_raddr_3; // @[StoreSet.scala 76:26]
  wire  valid_sram_io_rdata_0; // @[StoreSet.scala 76:26]
  wire  valid_sram_io_rdata_1; // @[StoreSet.scala 76:26]
  wire  valid_sram_io_rdata_2; // @[StoreSet.scala 76:26]
  wire  valid_sram_io_rdata_3; // @[StoreSet.scala 76:26]
  wire  valid_sram_io_wen_0; // @[StoreSet.scala 76:26]
  wire  valid_sram_io_wen_1; // @[StoreSet.scala 76:26]
  wire [9:0] valid_sram_io_waddr_0; // @[StoreSet.scala 76:26]
  wire [9:0] valid_sram_io_waddr_1; // @[StoreSet.scala 76:26]
  wire  valid_sram_io_wdata_0; // @[StoreSet.scala 76:26]
  wire  data_sram_clock; // @[StoreSet.scala 83:25]
  wire [9:0] data_sram_io_raddr_0; // @[StoreSet.scala 83:25]
  wire [9:0] data_sram_io_raddr_1; // @[StoreSet.scala 83:25]
  wire [9:0] data_sram_io_raddr_2; // @[StoreSet.scala 83:25]
  wire [9:0] data_sram_io_raddr_3; // @[StoreSet.scala 83:25]
  wire [4:0] data_sram_io_rdata_0_ssid; // @[StoreSet.scala 83:25]
  wire  data_sram_io_rdata_0_strict; // @[StoreSet.scala 83:25]
  wire [4:0] data_sram_io_rdata_1_ssid; // @[StoreSet.scala 83:25]
  wire  data_sram_io_rdata_1_strict; // @[StoreSet.scala 83:25]
  wire [4:0] data_sram_io_rdata_2_ssid; // @[StoreSet.scala 83:25]
  wire  data_sram_io_rdata_2_strict; // @[StoreSet.scala 83:25]
  wire [4:0] data_sram_io_rdata_3_ssid; // @[StoreSet.scala 83:25]
  wire  data_sram_io_rdata_3_strict; // @[StoreSet.scala 83:25]
  wire  data_sram_io_wen_0; // @[StoreSet.scala 83:25]
  wire  data_sram_io_wen_1; // @[StoreSet.scala 83:25]
  wire [9:0] data_sram_io_waddr_0; // @[StoreSet.scala 83:25]
  wire [9:0] data_sram_io_waddr_1; // @[StoreSet.scala 83:25]
  wire [4:0] data_sram_io_wdata_0_ssid; // @[StoreSet.scala 83:25]
  wire  data_sram_io_wdata_0_strict; // @[StoreSet.scala 83:25]
  wire [4:0] data_sram_io_wdata_1_ssid; // @[StoreSet.scala 83:25]
  reg [19:0] resetCounter; // @[StoreSet.scala 108:29]
  wire [19:0] _resetCounter_T_1 = resetCounter + 20'h1; // @[StoreSet.scala 109:32]
  reg [10:0] resetStepCounter; // @[StoreSet.scala 128:33]
  wire  resetStepCounterFull = resetStepCounter[10]; // @[StoreSet.scala 129:46]
  reg  state; // @[StoreSet.scala 131:22]
  reg [4:0] REG; // @[StoreSet.scala 135:70]
  wire [9:0] _T_2 = resetCounter[19:10] >> REG; // @[StoreSet.scala 135:62]
  wire  _GEN_0 = _T_2[0] | state; // @[StoreSet.scala 135:100 136:15 131:22]
  wire [10:0] _resetStepCounter_T_1 = resetStepCounter + 11'h1; // @[StoreSet.scala 149:46]
  wire  _GEN_1026 = resetStepCounterFull ? 1'h0 : state; // @[StoreSet.scala 141:34 142:15 131:22]
  wire  _GEN_1028 = resetStepCounterFull ? 1'h0 : 1'h1; // @[StoreSet.scala 141:34 91:26 145:49]
  wire  _GEN_2055 = state ? _GEN_1026 : state; // @[StoreSet.scala 133:18 131:22]
  wire  _GEN_3084 = ~state ? _GEN_0 : _GEN_2055; // @[StoreSet.scala 133:18]
  wire  _GEN_3087 = ~state ? 1'h0 : state & _GEN_1028; // @[StoreSet.scala 133:18 91:26]
  reg  memPredUpdateReqValid; // @[StoreSet.scala 157:38]
  reg [9:0] memPredUpdateReqReg_ldpc; // @[Reg.scala 16:16]
  reg [9:0] memPredUpdateReqReg_stpc; // @[Reg.scala 16:16]
  wire [4:0] winnerSSID = data_sram_io_rdata_0_ssid < data_sram_io_rdata_1_ssid ? data_sram_io_rdata_0_ssid :
    data_sram_io_rdata_1_ssid; // @[StoreSet.scala 181:23]
  wire  ssidIsSame = data_sram_io_rdata_0_ssid == data_sram_io_rdata_1_ssid; // @[StoreSet.scala 182:32]
  wire [4:0] ssidAllocate = memPredUpdateReqReg_ldpc[4:0]; // @[StoreSet.scala 185:46]
  wire [1:0] _T_6 = {valid_sram_io_rdata_0,valid_sram_io_rdata_1}; // @[Cat.scala 31:58]
  wire [10:0] _GEN_24603 = 2'h3 == _T_6 ? {{1'd0}, memPredUpdateReqReg_ldpc} : resetStepCounter; // @[StoreSet.scala 215:47 189:54]
  wire  _GEN_27684 = 2'h1 == _T_6 | (2'h3 == _T_6 | _GEN_3087); // @[StoreSet.scala 215:47 188:52]
  wire [10:0] _GEN_27685 = 2'h1 == _T_6 ? {{1'd0}, memPredUpdateReqReg_ldpc} : _GEN_24603; // @[StoreSet.scala 215:47 189:54]
  wire  _GEN_27686 = 2'h1 == _T_6 | 2'h3 == _T_6; // @[StoreSet.scala 215:47 190:54]
  wire [4:0] _GEN_27689 = 2'h1 == _T_6 ? data_sram_io_rdata_1_ssid : winnerSSID; // @[StoreSet.scala 215:47 193:58]
  wire  _GEN_27690 = 2'h1 == _T_6 ? 1'h0 : ssidIsSame; // @[StoreSet.scala 215:47 194:60]
  wire  _GEN_30763 = 2'h1 == _T_6 ? 1'h0 : 2'h3 == _T_6; // @[StoreSet.scala 215:47 91:26]
  wire [4:0] _GEN_30771 = 2'h2 == _T_6 ? data_sram_io_rdata_0_ssid : winnerSSID; // @[StoreSet.scala 215:47 206:59]
  wire  _GEN_33845 = 2'h2 == _T_6 ? _GEN_3087 : _GEN_27684; // @[StoreSet.scala 215:47]
  wire [10:0] _GEN_33846 = 2'h2 == _T_6 ? resetStepCounter : _GEN_27685; // @[StoreSet.scala 215:47]
  wire  _GEN_33847 = 2'h2 == _T_6 ? 1'h0 : _GEN_27686; // @[StoreSet.scala 215:47]
  wire  _GEN_33852 = 2'h0 == _T_6 | _GEN_33845; // @[StoreSet.scala 215:47 188:52]
  wire [10:0] _GEN_33853 = 2'h0 == _T_6 ? {{1'd0}, memPredUpdateReqReg_ldpc} : _GEN_33846; // @[StoreSet.scala 215:47 189:54]
  wire  _GEN_33854 = 2'h0 == _T_6 | _GEN_33847; // @[StoreSet.scala 215:47 190:54]
  wire  _GEN_36931 = 2'h0 == _T_6 | (2'h2 == _T_6 | _GEN_30763); // @[StoreSet.scala 215:47 201:53]
  wire [10:0] _GEN_36937 = memPredUpdateReqValid ? _GEN_33853 : resetStepCounter; // @[StoreSet.scala 214:30]
  wire  _GEN_40015 = memPredUpdateReqValid & _GEN_36931; // @[StoreSet.scala 214:30 91:26]
  SyncDataModuleTemplate_8 valid_sram ( // @[StoreSet.scala 76:26]
    .clock(valid_sram_clock),
    .io_raddr_0(valid_sram_io_raddr_0),
    .io_raddr_1(valid_sram_io_raddr_1),
    .io_raddr_2(valid_sram_io_raddr_2),
    .io_raddr_3(valid_sram_io_raddr_3),
    .io_rdata_0(valid_sram_io_rdata_0),
    .io_rdata_1(valid_sram_io_rdata_1),
    .io_rdata_2(valid_sram_io_rdata_2),
    .io_rdata_3(valid_sram_io_rdata_3),
    .io_wen_0(valid_sram_io_wen_0),
    .io_wen_1(valid_sram_io_wen_1),
    .io_waddr_0(valid_sram_io_waddr_0),
    .io_waddr_1(valid_sram_io_waddr_1),
    .io_wdata_0(valid_sram_io_wdata_0)
  );
  SyncDataModuleTemplate_9 data_sram ( // @[StoreSet.scala 83:25]
    .clock(data_sram_clock),
    .io_raddr_0(data_sram_io_raddr_0),
    .io_raddr_1(data_sram_io_raddr_1),
    .io_raddr_2(data_sram_io_raddr_2),
    .io_raddr_3(data_sram_io_raddr_3),
    .io_rdata_0_ssid(data_sram_io_rdata_0_ssid),
    .io_rdata_0_strict(data_sram_io_rdata_0_strict),
    .io_rdata_1_ssid(data_sram_io_rdata_1_ssid),
    .io_rdata_1_strict(data_sram_io_rdata_1_strict),
    .io_rdata_2_ssid(data_sram_io_rdata_2_ssid),
    .io_rdata_2_strict(data_sram_io_rdata_2_strict),
    .io_rdata_3_ssid(data_sram_io_rdata_3_ssid),
    .io_rdata_3_strict(data_sram_io_rdata_3_strict),
    .io_wen_0(data_sram_io_wen_0),
    .io_wen_1(data_sram_io_wen_1),
    .io_waddr_0(data_sram_io_waddr_0),
    .io_waddr_1(data_sram_io_waddr_1),
    .io_wdata_0_ssid(data_sram_io_wdata_0_ssid),
    .io_wdata_0_strict(data_sram_io_wdata_0_strict),
    .io_wdata_1_ssid(data_sram_io_wdata_1_ssid)
  );
  assign io_rdata_0_valid = valid_sram_io_rdata_0; // @[StoreSet.scala 121:23]
  assign io_rdata_0_ssid = data_sram_io_rdata_0_ssid; // @[StoreSet.scala 122:22]
  assign io_rdata_0_strict = data_sram_io_rdata_0_strict; // @[StoreSet.scala 123:24]
  assign io_rdata_1_valid = valid_sram_io_rdata_1; // @[StoreSet.scala 121:23]
  assign io_rdata_1_ssid = data_sram_io_rdata_1_ssid; // @[StoreSet.scala 122:22]
  assign io_rdata_1_strict = data_sram_io_rdata_1_strict; // @[StoreSet.scala 123:24]
  assign io_rdata_2_valid = valid_sram_io_rdata_2; // @[StoreSet.scala 121:23]
  assign io_rdata_2_ssid = data_sram_io_rdata_2_ssid; // @[StoreSet.scala 122:22]
  assign io_rdata_2_strict = data_sram_io_rdata_2_strict; // @[StoreSet.scala 123:24]
  assign io_rdata_3_valid = valid_sram_io_rdata_3; // @[StoreSet.scala 121:23]
  assign io_rdata_3_ssid = data_sram_io_rdata_3_ssid; // @[StoreSet.scala 122:22]
  assign io_rdata_3_strict = data_sram_io_rdata_3_strict; // @[StoreSet.scala 123:24]
  assign valid_sram_clock = clock;
  assign valid_sram_io_raddr_0 = io_update_valid ? io_update_ldpc : io_raddr_0; // @[StoreSet.scala 161:26 117:28 162:53]
  assign valid_sram_io_raddr_1 = io_update_valid ? io_update_stpc : io_raddr_1; // @[StoreSet.scala 161:26 117:28 163:54]
  assign valid_sram_io_raddr_2 = io_raddr_2; // @[StoreSet.scala 117:28]
  assign valid_sram_io_raddr_3 = io_raddr_3; // @[StoreSet.scala 117:28]
  assign valid_sram_io_wen_0 = memPredUpdateReqValid ? _GEN_33852 : _GEN_3087; // @[StoreSet.scala 214:30]
  assign valid_sram_io_wen_1 = valid_sram_io_waddr_0 == valid_sram_io_waddr_1 ? 1'h0 : _GEN_40015; // @[StoreSet.scala 277:111 278:53]
  assign valid_sram_io_waddr_0 = _GEN_36937[9:0];
  assign valid_sram_io_waddr_1 = memPredUpdateReqReg_stpc; // @[StoreSet.scala 215:47 202:55]
  assign valid_sram_io_wdata_0 = memPredUpdateReqValid & _GEN_33854; // @[StoreSet.scala 214:30]
  assign data_sram_clock = clock;
  assign data_sram_io_raddr_0 = io_update_valid ? io_update_ldpc : io_raddr_0; // @[StoreSet.scala 161:26 117:28 162:53]
  assign data_sram_io_raddr_1 = io_update_valid ? io_update_stpc : io_raddr_1; // @[StoreSet.scala 161:26 117:28 163:54]
  assign data_sram_io_raddr_2 = io_raddr_2; // @[StoreSet.scala 118:27]
  assign data_sram_io_raddr_3 = io_raddr_3; // @[StoreSet.scala 118:27]
  assign data_sram_io_wen_0 = memPredUpdateReqValid & _GEN_33854; // @[StoreSet.scala 214:30 94:25]
  assign data_sram_io_wen_1 = data_sram_io_waddr_0 == data_sram_io_waddr_1 ? 1'h0 : _GEN_40015; // @[StoreSet.scala 281:109 282:52]
  assign data_sram_io_waddr_0 = memPredUpdateReqReg_ldpc; // @[StoreSet.scala 215:47 192:53]
  assign data_sram_io_waddr_1 = memPredUpdateReqReg_stpc; // @[StoreSet.scala 215:47 202:55]
  assign data_sram_io_wdata_0_ssid = 2'h0 == _T_6 ? ssidAllocate : _GEN_27689; // @[StoreSet.scala 215:47 193:58]
  assign data_sram_io_wdata_0_strict = 2'h0 == _T_6 ? 1'h0 : _GEN_27690; // @[StoreSet.scala 215:47 194:60]
  assign data_sram_io_wdata_1_ssid = 2'h0 == _T_6 ? ssidAllocate : _GEN_30771; // @[StoreSet.scala 215:47 206:59]
  always @(posedge clock) begin
    if (reset) begin // @[StoreSet.scala 108:29]
      resetCounter <= 20'h0; // @[StoreSet.scala 108:29]
    end else if (~state) begin // @[StoreSet.scala 133:18]
      if (_T_2[0]) begin // @[StoreSet.scala 135:100]
        resetCounter <= 20'h0; // @[StoreSet.scala 137:22]
      end else begin
        resetCounter <= _resetCounter_T_1; // @[StoreSet.scala 109:16]
      end
    end else begin
      resetCounter <= _resetCounter_T_1; // @[StoreSet.scala 109:16]
    end
    if (reset) begin // @[StoreSet.scala 128:33]
      resetStepCounter <= 11'h0; // @[StoreSet.scala 128:33]
    end else if (!(~state)) begin // @[StoreSet.scala 133:18]
      if (state) begin // @[StoreSet.scala 133:18]
        if (resetStepCounterFull) begin // @[StoreSet.scala 141:34]
          resetStepCounter <= 11'h0; // @[StoreSet.scala 143:26]
        end else begin
          resetStepCounter <= _resetStepCounter_T_1; // @[StoreSet.scala 149:26]
        end
      end
    end
    state <= reset | _GEN_3084; // @[StoreSet.scala 131:{22,22}]
    REG <= io_csrCtrl_lvpred_timeout; // @[StoreSet.scala 135:70]
    memPredUpdateReqValid <= io_update_valid; // @[StoreSet.scala 157:38]
    if (io_update_valid) begin // @[Reg.scala 17:18]
      memPredUpdateReqReg_ldpc <= io_update_ldpc; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      memPredUpdateReqReg_stpc <= io_update_stpc; // @[Reg.scala 17:22]
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
  resetCounter = _RAND_0[19:0];
  _RAND_1 = {1{`RANDOM}};
  resetStepCounter = _RAND_1[10:0];
  _RAND_2 = {1{`RANDOM}};
  state = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  REG = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  memPredUpdateReqValid = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  memPredUpdateReqReg_ldpc = _RAND_5[9:0];
  _RAND_6 = {1{`RANDOM}};
  memPredUpdateReqReg_stpc = _RAND_6[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
