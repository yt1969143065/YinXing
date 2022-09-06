module TageBTable(
  input         clock,
  input         reset,
  input         io_s0_fire,
  input  [38:0] io_s0_pc,
  output [1:0]  io_s1_cnt_0,
  output [1:0]  io_s1_cnt_1,
  input         io_update_mask_0,
  input         io_update_mask_1,
  input  [38:0] io_update_pc,
  input  [1:0]  io_update_cnt_0,
  input  [1:0]  io_update_cnt_1,
  input         io_update_takens_0,
  input         io_update_takens_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  bt_clock; // @[Tage.scala 156:18]
  wire  bt_reset; // @[Tage.scala 156:18]
  wire  bt_io_rreq_valid; // @[Tage.scala 156:18]
  wire [10:0] bt_io_rreq_bits_setIdx; // @[Tage.scala 156:18]
  wire [1:0] bt_io_rresp_data_0; // @[Tage.scala 156:18]
  wire [1:0] bt_io_rresp_data_1; // @[Tage.scala 156:18]
  wire  bt_io_wreq_valid; // @[Tage.scala 156:18]
  wire [10:0] bt_io_wreq_bits_setIdx; // @[Tage.scala 156:18]
  wire [1:0] bt_io_wreq_bits_data_0; // @[Tage.scala 156:18]
  wire [1:0] bt_io_wreq_bits_data_1; // @[Tage.scala 156:18]
  wire [1:0] bt_io_wreq_bits_waymask; // @[Tage.scala 156:18]
  wire  wrbypass_clock; // @[Tage.scala 180:24]
  wire  wrbypass_reset; // @[Tage.scala 180:24]
  wire  wrbypass_io_wen; // @[Tage.scala 180:24]
  wire [10:0] wrbypass_io_write_idx; // @[Tage.scala 180:24]
  wire [1:0] wrbypass_io_write_data_0; // @[Tage.scala 180:24]
  wire [1:0] wrbypass_io_write_data_1; // @[Tage.scala 180:24]
  wire  wrbypass_io_write_way_mask_0; // @[Tage.scala 180:24]
  wire  wrbypass_io_write_way_mask_1; // @[Tage.scala 180:24]
  wire  wrbypass_io_hit; // @[Tage.scala 180:24]
  wire  wrbypass_io_hit_data_0_valid; // @[Tage.scala 180:24]
  wire [1:0] wrbypass_io_hit_data_0_bits; // @[Tage.scala 180:24]
  wire  wrbypass_io_hit_data_1_valid; // @[Tage.scala 180:24]
  wire [1:0] wrbypass_io_hit_data_1_bits; // @[Tage.scala 180:24]
  reg  doing_reset; // @[Tage.scala 158:28]
  reg [10:0] resetRow; // @[Tage.scala 159:25]
  wire [10:0] _GEN_22 = {{10'd0}, doing_reset}; // @[Tage.scala 160:24]
  wire [10:0] _resetRow_T_1 = resetRow + _GEN_22; // @[Tage.scala 160:24]
  wire  _GEN_0 = resetRow == 11'h7ff ? 1'h0 : doing_reset; // @[Tage.scala 158:28 161:{36,50}]
  reg [10:0] s1_idx; // @[Reg.scala 16:16]
  wire  per_br_ctr_shiftAmount = s1_idx[0]; // @[Tage.scala 59:42]
  wire [1:0] _per_br_ctr_T_2 = 2'h1 << per_br_ctr_shiftAmount; // @[OneHot.scala 64:12]
  wire [1:0] _per_br_ctr_T_6 = _per_br_ctr_T_2[0] ? bt_io_rresp_data_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _per_br_ctr_T_7 = _per_br_ctr_T_2[1] ? bt_io_rresp_data_1 : 2'h0; // @[Mux.scala 27:73]
  wire  per_br_ctr_shiftAmount_1 = per_br_ctr_shiftAmount ^ 1'h1; // @[Tage.scala 61:92]
  wire [1:0] _per_br_ctr_T_11 = 2'h1 << per_br_ctr_shiftAmount_1; // @[OneHot.scala 64:12]
  wire [1:0] _per_br_ctr_T_15 = _per_br_ctr_T_11[0] ? bt_io_rresp_data_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _per_br_ctr_T_16 = _per_br_ctr_T_11[1] ? bt_io_rresp_data_1 : 2'h0; // @[Mux.scala 27:73]
  wire  _wrbypass_io_wen_T = io_update_mask_0 | io_update_mask_1; // @[Tage.scala 181:45]
  wire  br_pidx = io_update_pc[1]; // @[Tage.scala 59:42]
  wire  _GEN_7 = br_pidx ? wrbypass_io_hit_data_1_valid : wrbypass_io_hit_data_0_valid; // @[Tage.scala 193:{27,27}]
  wire [1:0] _GEN_8 = wrbypass_io_hit_data_0_bits; // @[Tage.scala 193:{10,10}]
  wire [1:0] _GEN_9 = br_pidx ? wrbypass_io_hit_data_1_bits : _GEN_8; // @[Tage.scala 193:{10,10}]
  wire [1:0] _GEN_11 = br_pidx ? io_update_cnt_1 : io_update_cnt_0; // @[Tage.scala 193:{10,10}]
  wire [1:0] oldCtrs_0 = wrbypass_io_hit & _GEN_7 ? _GEN_9 : _GEN_11; // @[Tage.scala 193:10]
  wire  oldSatTaken = oldCtrs_0 == 2'h3; // @[Tage.scala 199:27]
  wire  _GEN_19 = br_pidx ? io_update_takens_1 : io_update_takens_0; // @[Tage.scala 201:{21,21}]
  wire  oldSatNotTaken = oldCtrs_0 == 2'h0; // @[Tage.scala 200:30]
  wire [1:0] _T_5 = oldCtrs_0 + 2'h1; // @[Tage.scala 203:24]
  wire [1:0] _T_7 = oldCtrs_0 - 2'h1; // @[Tage.scala 203:35]
  wire [1:0] _T_8 = _GEN_19 ? _T_5 : _T_7; // @[Tage.scala 203:12]
  wire [1:0] _T_9 = oldSatNotTaken & ~_GEN_19 ? 2'h0 : _T_8; // @[Tage.scala 202:10]
  wire [1:0] newCtrs_0 = oldSatTaken & _GEN_19 ? 2'h3 : _T_9; // @[Tage.scala 201:8]
  wire  oldCtrs_br_lidx_1 = br_pidx ^ 1'h1; // @[Tage.scala 62:92]
  wire  _GEN_13 = oldCtrs_br_lidx_1 ? wrbypass_io_hit_data_1_valid : wrbypass_io_hit_data_0_valid; // @[Tage.scala 193:{27,27}]
  wire [1:0] _GEN_15 = oldCtrs_br_lidx_1 ? wrbypass_io_hit_data_1_bits : _GEN_8; // @[Tage.scala 193:{10,10}]
  wire [1:0] _GEN_17 = oldCtrs_br_lidx_1 ? io_update_cnt_1 : io_update_cnt_0; // @[Tage.scala 193:{10,10}]
  wire [1:0] oldCtrs_1 = wrbypass_io_hit & _GEN_13 ? _GEN_15 : _GEN_17; // @[Tage.scala 193:10]
  wire  oldSatTaken_1 = oldCtrs_1 == 2'h3; // @[Tage.scala 199:27]
  wire  _GEN_21 = oldCtrs_br_lidx_1 ? io_update_takens_1 : io_update_takens_0; // @[Tage.scala 201:{21,21}]
  wire  oldSatNotTaken_1 = oldCtrs_1 == 2'h0; // @[Tage.scala 200:30]
  wire [1:0] _T_15 = oldCtrs_1 + 2'h1; // @[Tage.scala 203:24]
  wire [1:0] _T_17 = oldCtrs_1 - 2'h1; // @[Tage.scala 203:35]
  wire [1:0] _T_18 = _GEN_21 ? _T_15 : _T_17; // @[Tage.scala 203:12]
  wire [1:0] _T_19 = oldSatNotTaken_1 & ~_GEN_21 ? 2'h0 : _T_18; // @[Tage.scala 202:10]
  wire [1:0] newCtrs_1 = oldSatTaken_1 & _GEN_21 ? 2'h3 : _T_19; // @[Tage.scala 201:8]
  wire  _updateWayMask_T_3 = io_update_mask_0 & ~br_pidx; // @[Tage.scala 214:26]
  wire  _updateWayMask_T_7 = io_update_mask_1 & ~oldCtrs_br_lidx_1; // @[Tage.scala 214:26]
  wire  _updateWayMask_T_8 = _updateWayMask_T_3 | _updateWayMask_T_7; // @[Tage.scala 215:15]
  wire  _updateWayMask_T_12 = io_update_mask_0 & br_pidx; // @[Tage.scala 214:26]
  wire  _updateWayMask_T_16 = io_update_mask_1 & oldCtrs_br_lidx_1; // @[Tage.scala 214:26]
  wire  _updateWayMask_T_17 = _updateWayMask_T_12 | _updateWayMask_T_16; // @[Tage.scala 215:15]
  wire [1:0] updateWayMask = {_updateWayMask_T_17,_updateWayMask_T_8}; // @[Tage.scala 216:6]
  SRAMTemplate_99 bt ( // @[Tage.scala 156:18]
    .clock(bt_clock),
    .reset(bt_reset),
    .io_rreq_valid(bt_io_rreq_valid),
    .io_rreq_bits_setIdx(bt_io_rreq_bits_setIdx),
    .io_rresp_data_0(bt_io_rresp_data_0),
    .io_rresp_data_1(bt_io_rresp_data_1),
    .io_wreq_valid(bt_io_wreq_valid),
    .io_wreq_bits_setIdx(bt_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(bt_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(bt_io_wreq_bits_data_1),
    .io_wreq_bits_waymask(bt_io_wreq_bits_waymask)
  );
  WrBypass_160 wrbypass ( // @[Tage.scala 180:24]
    .clock(wrbypass_clock),
    .reset(wrbypass_reset),
    .io_wen(wrbypass_io_wen),
    .io_write_idx(wrbypass_io_write_idx),
    .io_write_data_0(wrbypass_io_write_data_0),
    .io_write_data_1(wrbypass_io_write_data_1),
    .io_write_way_mask_0(wrbypass_io_write_way_mask_0),
    .io_write_way_mask_1(wrbypass_io_write_way_mask_1),
    .io_hit(wrbypass_io_hit),
    .io_hit_data_0_valid(wrbypass_io_hit_data_0_valid),
    .io_hit_data_0_bits(wrbypass_io_hit_data_0_bits),
    .io_hit_data_1_valid(wrbypass_io_hit_data_1_valid),
    .io_hit_data_1_bits(wrbypass_io_hit_data_1_bits)
  );
  assign io_s1_cnt_0 = _per_br_ctr_T_6 | _per_br_ctr_T_7; // @[Mux.scala 27:73]
  assign io_s1_cnt_1 = _per_br_ctr_T_15 | _per_br_ctr_T_16; // @[Mux.scala 27:73]
  assign bt_clock = clock;
  assign bt_reset = reset;
  assign bt_io_rreq_valid = io_s0_fire; // @[Tage.scala 164:21]
  assign bt_io_rreq_bits_setIdx = io_s0_pc[11:1]; // @[FrontendBundle.scala 359:65]
  assign bt_io_wreq_valid = _wrbypass_io_wen_T | doing_reset; // @[Tage.scala 219:41]
  assign bt_io_wreq_bits_setIdx = doing_reset ? resetRow : io_update_pc[11:1]; // @[Tage.scala 221:17]
  assign bt_io_wreq_bits_data_0 = doing_reset ? 2'h2 : newCtrs_0; // @[Tage.scala 220:15]
  assign bt_io_wreq_bits_data_1 = doing_reset ? 2'h2 : newCtrs_1; // @[Tage.scala 220:15]
  assign bt_io_wreq_bits_waymask = doing_reset ? 2'h3 : updateWayMask; // @[Tage.scala 222:18]
  assign wrbypass_clock = clock;
  assign wrbypass_reset = reset;
  assign wrbypass_io_wen = io_update_mask_0 | io_update_mask_1; // @[Tage.scala 181:45]
  assign wrbypass_io_write_idx = io_update_pc[11:1]; // @[FrontendBundle.scala 359:65]
  assign wrbypass_io_write_data_0 = br_pidx ? newCtrs_1 : newCtrs_0; // @[Tage.scala 186:{32,32}]
  assign wrbypass_io_write_data_1 = oldCtrs_br_lidx_1 ? newCtrs_1 : newCtrs_0; // @[Tage.scala 186:{32,32}]
  assign wrbypass_io_write_way_mask_0 = io_update_mask_0; // @[Tage.scala 183:36]
  assign wrbypass_io_write_way_mask_1 = io_update_mask_1; // @[Tage.scala 183:36]
  always @(posedge clock) begin
    doing_reset <= reset | _GEN_0; // @[Tage.scala 158:{28,28}]
    if (reset) begin // @[Tage.scala 159:25]
      resetRow <= 11'h0; // @[Tage.scala 159:25]
    end else begin
      resetRow <= _resetRow_T_1; // @[Tage.scala 160:12]
    end
    if (io_s0_fire) begin // @[Reg.scala 17:18]
      s1_idx <= io_s0_pc[11:1]; // @[Reg.scala 17:22]
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
  doing_reset = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  resetRow = _RAND_1[10:0];
  _RAND_2 = {1{`RANDOM}};
  s1_idx = _RAND_2[10:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
