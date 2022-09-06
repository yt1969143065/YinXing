module ITTageTable(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [38:0] io_req_bits_pc,
  input  [3:0]  io_req_bits_folded_hist_hist_7_folded_hist,
  output        io_resp_valid,
  output [1:0]  io_resp_bits_ctr,
  output [1:0]  io_resp_bits_u,
  output [38:0] io_resp_bits_target,
  input  [38:0] io_update_pc,
  input  [3:0]  io_update_folded_hist_hist_7_folded_hist,
  input         io_update_valid,
  input         io_update_correct,
  input         io_update_alloc,
  input  [1:0]  io_update_oldCtr,
  input         io_update_uValid,
  input         io_update_u,
  input         io_update_reset_u,
  input  [38:0] io_update_target,
  input  [38:0] io_update_old_target
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  us_clock; // @[ITTAGE.scala 222:18]
  wire  us_reset; // @[ITTAGE.scala 222:18]
  wire [6:0] us_io_raddr_0; // @[ITTAGE.scala 222:18]
  wire  us_io_rdata_0; // @[ITTAGE.scala 222:18]
  wire  us_io_wen; // @[ITTAGE.scala 222:18]
  wire [6:0] us_io_waddr; // @[ITTAGE.scala 222:18]
  wire  us_io_wdata; // @[ITTAGE.scala 222:18]
  wire  us_io_resetEn; // @[ITTAGE.scala 222:18]
  wire  table_banks_0_clock; // @[ITTAGE.scala 225:11]
  wire  table_banks_0_reset; // @[ITTAGE.scala 225:11]
  wire  table_banks_0_io_rreq_valid; // @[ITTAGE.scala 225:11]
  wire [5:0] table_banks_0_io_rreq_bits_setIdx; // @[ITTAGE.scala 225:11]
  wire [8:0] table_banks_0_io_rresp_data_0_tag; // @[ITTAGE.scala 225:11]
  wire [1:0] table_banks_0_io_rresp_data_0_ctr; // @[ITTAGE.scala 225:11]
  wire [38:0] table_banks_0_io_rresp_data_0_target; // @[ITTAGE.scala 225:11]
  wire  table_banks_0_io_wreq_valid; // @[ITTAGE.scala 225:11]
  wire [5:0] table_banks_0_io_wreq_bits_setIdx; // @[ITTAGE.scala 225:11]
  wire [8:0] table_banks_0_io_wreq_bits_data_0_tag; // @[ITTAGE.scala 225:11]
  wire [1:0] table_banks_0_io_wreq_bits_data_0_ctr; // @[ITTAGE.scala 225:11]
  wire [38:0] table_banks_0_io_wreq_bits_data_0_target; // @[ITTAGE.scala 225:11]
  wire  table_banks_1_clock; // @[ITTAGE.scala 225:11]
  wire  table_banks_1_reset; // @[ITTAGE.scala 225:11]
  wire  table_banks_1_io_rreq_valid; // @[ITTAGE.scala 225:11]
  wire [5:0] table_banks_1_io_rreq_bits_setIdx; // @[ITTAGE.scala 225:11]
  wire [8:0] table_banks_1_io_rresp_data_0_tag; // @[ITTAGE.scala 225:11]
  wire [1:0] table_banks_1_io_rresp_data_0_ctr; // @[ITTAGE.scala 225:11]
  wire [38:0] table_banks_1_io_rresp_data_0_target; // @[ITTAGE.scala 225:11]
  wire  table_banks_1_io_wreq_valid; // @[ITTAGE.scala 225:11]
  wire [5:0] table_banks_1_io_wreq_bits_setIdx; // @[ITTAGE.scala 225:11]
  wire [8:0] table_banks_1_io_wreq_bits_data_0_tag; // @[ITTAGE.scala 225:11]
  wire [1:0] table_banks_1_io_wreq_bits_data_0_ctr; // @[ITTAGE.scala 225:11]
  wire [38:0] table_banks_1_io_wreq_bits_data_0_target; // @[ITTAGE.scala 225:11]
  wire  wrbypass_clock; // @[ITTAGE.scala 271:24]
  wire  wrbypass_reset; // @[ITTAGE.scala 271:24]
  wire  wrbypass_io_wen; // @[ITTAGE.scala 271:24]
  wire [6:0] wrbypass_io_write_idx; // @[ITTAGE.scala 271:24]
  wire [8:0] wrbypass_io_write_tag; // @[ITTAGE.scala 271:24]
  wire [1:0] wrbypass_io_write_data_0; // @[ITTAGE.scala 271:24]
  wire  wrbypass_io_hit; // @[ITTAGE.scala 271:24]
  wire [1:0] wrbypass_io_hit_data_0_bits; // @[ITTAGE.scala 271:24]
  reg [127:0] validArray; // @[ITTAGE.scala 205:27]
  wire [37:0] s0_unhashed_idx = io_req_bits_pc[38:1]; // @[ITTAGE.scala 212:43]
  wire [37:0] _GEN_261 = {{34'd0}, io_req_bits_folded_hist_hist_7_folded_hist}; // @[ITTAGE.scala 186:31]
  wire [37:0] _idx_T = s0_unhashed_idx ^ _GEN_261; // @[ITTAGE.scala 186:31]
  wire [6:0] s0_idx = _idx_T[6:0]; // @[ITTAGE.scala 186:40]
  wire [30:0] _GEN_262 = {{27'd0}, io_req_bits_folded_hist_hist_7_folded_hist}; // @[ITTAGE.scala 187:52]
  wire [30:0] _tag_T_1 = s0_unhashed_idx[37:7] ^ _GEN_262; // @[ITTAGE.scala 187:52]
  wire [4:0] _tag_T_2 = {io_req_bits_folded_hist_hist_7_folded_hist, 1'h0}; // @[ITTAGE.scala 187:75]
  wire [30:0] _GEN_263 = {{26'd0}, _tag_T_2}; // @[ITTAGE.scala 187:61]
  wire [30:0] _tag_T_3 = _tag_T_1 ^ _GEN_263; // @[ITTAGE.scala 187:61]
  wire [8:0] s0_tag = _tag_T_3[8:0]; // @[ITTAGE.scala 187:82]
  wire  _T = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  reg [6:0] s1_idx; // @[Reg.scala 16:16]
  reg [8:0] s1_tag; // @[Reg.scala 16:16]
  wire  s0_bank_req_1h_0 = ~s0_idx[0]; // @[ITTAGE.scala 165:86]
  reg  s1_bank_req_1h_0; // @[Reg.scala 16:16]
  reg  s1_bank_req_1h_1; // @[Reg.scala 16:16]
  wire [38:0] _resp_selected_T = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_0_target : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _resp_selected_T_1 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_0_target : 39'h0; // @[Mux.scala 27:73]
  wire [1:0] _resp_selected_T_3 = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_0_ctr : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _resp_selected_T_4 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_0_ctr : 2'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_6 = s1_bank_req_1h_0 ? table_banks_0_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _resp_selected_T_7 = s1_bank_req_1h_1 ? table_banks_1_io_rresp_data_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] resp_selected_tag = _resp_selected_T_6 | _resp_selected_T_7; // @[Mux.scala 27:73]
  wire [127:0] _s1_req_rhit_T = validArray >> s1_idx; // @[ITTAGE.scala 237:31]
  wire [37:0] _GEN_264 = {{34'd0}, io_update_folded_hist_hist_7_folded_hist}; // @[ITTAGE.scala 186:31]
  wire [37:0] _idx_T_1 = io_update_pc[38:1] ^ _GEN_264; // @[ITTAGE.scala 186:31]
  wire [6:0] update_idx = _idx_T_1[6:0]; // @[ITTAGE.scala 186:40]
  wire [30:0] _GEN_265 = {{27'd0}, io_update_folded_hist_hist_7_folded_hist}; // @[ITTAGE.scala 187:52]
  wire [30:0] _tag_T_5 = io_update_pc[38:8] ^ _GEN_265; // @[ITTAGE.scala 187:52]
  wire [4:0] _tag_T_6 = {io_update_folded_hist_hist_7_folded_hist, 1'h0}; // @[ITTAGE.scala 187:75]
  wire [30:0] _GEN_266 = {{26'd0}, _tag_T_6}; // @[ITTAGE.scala 187:61]
  wire [30:0] _tag_T_7 = _tag_T_5 ^ _GEN_266; // @[ITTAGE.scala 187:61]
  wire  update_req_bank_1h_0 = ~update_idx[0]; // @[ITTAGE.scala 165:86]
  wire [1:0] old_ctr = wrbypass_io_hit ? wrbypass_io_hit_data_0_bits : io_update_oldCtr; // @[ITTAGE.scala 278:20]
  wire  update_wdata_ctr_oldSatTaken = old_ctr == 2'h3; // @[BPU.scala 87:27]
  wire  update_wdata_ctr_oldSatNotTaken = old_ctr == 2'h0; // @[BPU.scala 88:30]
  wire [1:0] _update_wdata_ctr_T_4 = old_ctr + 2'h1; // @[BPU.scala 91:24]
  wire [1:0] _update_wdata_ctr_T_6 = old_ctr - 2'h1; // @[BPU.scala 91:35]
  wire [1:0] _update_wdata_ctr_T_7 = io_update_correct ? _update_wdata_ctr_T_4 : _update_wdata_ctr_T_6; // @[BPU.scala 91:12]
  wire [1:0] _update_wdata_ctr_T_8 = update_wdata_ctr_oldSatNotTaken & ~io_update_correct ? 2'h0 : _update_wdata_ctr_T_7
    ; // @[BPU.scala 90:10]
  wire [1:0] _update_wdata_ctr_T_9 = update_wdata_ctr_oldSatTaken & io_update_correct ? 2'h3 : _update_wdata_ctr_T_8; // @[BPU.scala 89:8]
  wire  _GEN_4 = 7'h0 == update_idx | validArray[0]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_5 = 7'h1 == update_idx | validArray[1]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_6 = 7'h2 == update_idx | validArray[2]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_7 = 7'h3 == update_idx | validArray[3]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_8 = 7'h4 == update_idx | validArray[4]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_9 = 7'h5 == update_idx | validArray[5]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_10 = 7'h6 == update_idx | validArray[6]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_11 = 7'h7 == update_idx | validArray[7]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_12 = 7'h8 == update_idx | validArray[8]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_13 = 7'h9 == update_idx | validArray[9]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_14 = 7'ha == update_idx | validArray[10]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_15 = 7'hb == update_idx | validArray[11]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_16 = 7'hc == update_idx | validArray[12]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_17 = 7'hd == update_idx | validArray[13]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_18 = 7'he == update_idx | validArray[14]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_19 = 7'hf == update_idx | validArray[15]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_20 = 7'h10 == update_idx | validArray[16]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_21 = 7'h11 == update_idx | validArray[17]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_22 = 7'h12 == update_idx | validArray[18]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_23 = 7'h13 == update_idx | validArray[19]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_24 = 7'h14 == update_idx | validArray[20]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_25 = 7'h15 == update_idx | validArray[21]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_26 = 7'h16 == update_idx | validArray[22]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_27 = 7'h17 == update_idx | validArray[23]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_28 = 7'h18 == update_idx | validArray[24]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_29 = 7'h19 == update_idx | validArray[25]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_30 = 7'h1a == update_idx | validArray[26]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_31 = 7'h1b == update_idx | validArray[27]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_32 = 7'h1c == update_idx | validArray[28]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_33 = 7'h1d == update_idx | validArray[29]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_34 = 7'h1e == update_idx | validArray[30]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_35 = 7'h1f == update_idx | validArray[31]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_36 = 7'h20 == update_idx | validArray[32]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_37 = 7'h21 == update_idx | validArray[33]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_38 = 7'h22 == update_idx | validArray[34]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_39 = 7'h23 == update_idx | validArray[35]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_40 = 7'h24 == update_idx | validArray[36]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_41 = 7'h25 == update_idx | validArray[37]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_42 = 7'h26 == update_idx | validArray[38]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_43 = 7'h27 == update_idx | validArray[39]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_44 = 7'h28 == update_idx | validArray[40]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_45 = 7'h29 == update_idx | validArray[41]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_46 = 7'h2a == update_idx | validArray[42]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_47 = 7'h2b == update_idx | validArray[43]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_48 = 7'h2c == update_idx | validArray[44]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_49 = 7'h2d == update_idx | validArray[45]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_50 = 7'h2e == update_idx | validArray[46]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_51 = 7'h2f == update_idx | validArray[47]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_52 = 7'h30 == update_idx | validArray[48]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_53 = 7'h31 == update_idx | validArray[49]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_54 = 7'h32 == update_idx | validArray[50]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_55 = 7'h33 == update_idx | validArray[51]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_56 = 7'h34 == update_idx | validArray[52]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_57 = 7'h35 == update_idx | validArray[53]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_58 = 7'h36 == update_idx | validArray[54]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_59 = 7'h37 == update_idx | validArray[55]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_60 = 7'h38 == update_idx | validArray[56]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_61 = 7'h39 == update_idx | validArray[57]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_62 = 7'h3a == update_idx | validArray[58]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_63 = 7'h3b == update_idx | validArray[59]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_64 = 7'h3c == update_idx | validArray[60]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_65 = 7'h3d == update_idx | validArray[61]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_66 = 7'h3e == update_idx | validArray[62]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_67 = 7'h3f == update_idx | validArray[63]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_68 = 7'h40 == update_idx | validArray[64]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_69 = 7'h41 == update_idx | validArray[65]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_70 = 7'h42 == update_idx | validArray[66]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_71 = 7'h43 == update_idx | validArray[67]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_72 = 7'h44 == update_idx | validArray[68]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_73 = 7'h45 == update_idx | validArray[69]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_74 = 7'h46 == update_idx | validArray[70]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_75 = 7'h47 == update_idx | validArray[71]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_76 = 7'h48 == update_idx | validArray[72]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_77 = 7'h49 == update_idx | validArray[73]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_78 = 7'h4a == update_idx | validArray[74]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_79 = 7'h4b == update_idx | validArray[75]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_80 = 7'h4c == update_idx | validArray[76]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_81 = 7'h4d == update_idx | validArray[77]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_82 = 7'h4e == update_idx | validArray[78]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_83 = 7'h4f == update_idx | validArray[79]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_84 = 7'h50 == update_idx | validArray[80]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_85 = 7'h51 == update_idx | validArray[81]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_86 = 7'h52 == update_idx | validArray[82]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_87 = 7'h53 == update_idx | validArray[83]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_88 = 7'h54 == update_idx | validArray[84]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_89 = 7'h55 == update_idx | validArray[85]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_90 = 7'h56 == update_idx | validArray[86]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_91 = 7'h57 == update_idx | validArray[87]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_92 = 7'h58 == update_idx | validArray[88]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_93 = 7'h59 == update_idx | validArray[89]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_94 = 7'h5a == update_idx | validArray[90]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_95 = 7'h5b == update_idx | validArray[91]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_96 = 7'h5c == update_idx | validArray[92]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_97 = 7'h5d == update_idx | validArray[93]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_98 = 7'h5e == update_idx | validArray[94]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_99 = 7'h5f == update_idx | validArray[95]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_100 = 7'h60 == update_idx | validArray[96]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_101 = 7'h61 == update_idx | validArray[97]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_102 = 7'h62 == update_idx | validArray[98]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_103 = 7'h63 == update_idx | validArray[99]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_104 = 7'h64 == update_idx | validArray[100]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_105 = 7'h65 == update_idx | validArray[101]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_106 = 7'h66 == update_idx | validArray[102]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_107 = 7'h67 == update_idx | validArray[103]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_108 = 7'h68 == update_idx | validArray[104]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_109 = 7'h69 == update_idx | validArray[105]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_110 = 7'h6a == update_idx | validArray[106]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_111 = 7'h6b == update_idx | validArray[107]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_112 = 7'h6c == update_idx | validArray[108]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_113 = 7'h6d == update_idx | validArray[109]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_114 = 7'h6e == update_idx | validArray[110]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_115 = 7'h6f == update_idx | validArray[111]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_116 = 7'h70 == update_idx | validArray[112]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_117 = 7'h71 == update_idx | validArray[113]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_118 = 7'h72 == update_idx | validArray[114]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_119 = 7'h73 == update_idx | validArray[115]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_120 = 7'h74 == update_idx | validArray[116]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_121 = 7'h75 == update_idx | validArray[117]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_122 = 7'h76 == update_idx | validArray[118]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_123 = 7'h77 == update_idx | validArray[119]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_124 = 7'h78 == update_idx | validArray[120]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_125 = 7'h79 == update_idx | validArray[121]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_126 = 7'h7a == update_idx | validArray[122]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_127 = 7'h7b == update_idx | validArray[123]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_128 = 7'h7c == update_idx | validArray[124]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_129 = 7'h7d == update_idx | validArray[125]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_130 = 7'h7e == update_idx | validArray[126]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  _GEN_131 = 7'h7f == update_idx | validArray[127]; // @[ITTAGE.scala 284:30 286:{31,31}]
  wire  newValidArray_1 = io_update_valid ? _GEN_5 : validArray[1]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_0 = io_update_valid ? _GEN_4 : validArray[0]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_3 = io_update_valid ? _GEN_7 : validArray[3]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_2 = io_update_valid ? _GEN_6 : validArray[2]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_5 = io_update_valid ? _GEN_9 : validArray[5]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_4 = io_update_valid ? _GEN_8 : validArray[4]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_7 = io_update_valid ? _GEN_11 : validArray[7]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_6 = io_update_valid ? _GEN_10 : validArray[6]; // @[ITTAGE.scala 285:26 284:30]
  wire [7:0] validArray_lo_lo_lo_lo = {newValidArray_7,newValidArray_6,newValidArray_5,newValidArray_4,newValidArray_3,
    newValidArray_2,newValidArray_1,newValidArray_0}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_9 = io_update_valid ? _GEN_13 : validArray[9]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_8 = io_update_valid ? _GEN_12 : validArray[8]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_11 = io_update_valid ? _GEN_15 : validArray[11]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_10 = io_update_valid ? _GEN_14 : validArray[10]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_13 = io_update_valid ? _GEN_17 : validArray[13]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_12 = io_update_valid ? _GEN_16 : validArray[12]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_15 = io_update_valid ? _GEN_19 : validArray[15]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_14 = io_update_valid ? _GEN_18 : validArray[14]; // @[ITTAGE.scala 285:26 284:30]
  wire [15:0] validArray_lo_lo_lo = {newValidArray_15,newValidArray_14,newValidArray_13,newValidArray_12,
    newValidArray_11,newValidArray_10,newValidArray_9,newValidArray_8,validArray_lo_lo_lo_lo}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_17 = io_update_valid ? _GEN_21 : validArray[17]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_16 = io_update_valid ? _GEN_20 : validArray[16]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_19 = io_update_valid ? _GEN_23 : validArray[19]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_18 = io_update_valid ? _GEN_22 : validArray[18]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_21 = io_update_valid ? _GEN_25 : validArray[21]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_20 = io_update_valid ? _GEN_24 : validArray[20]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_23 = io_update_valid ? _GEN_27 : validArray[23]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_22 = io_update_valid ? _GEN_26 : validArray[22]; // @[ITTAGE.scala 285:26 284:30]
  wire [7:0] validArray_lo_lo_hi_lo = {newValidArray_23,newValidArray_22,newValidArray_21,newValidArray_20,
    newValidArray_19,newValidArray_18,newValidArray_17,newValidArray_16}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_25 = io_update_valid ? _GEN_29 : validArray[25]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_24 = io_update_valid ? _GEN_28 : validArray[24]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_27 = io_update_valid ? _GEN_31 : validArray[27]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_26 = io_update_valid ? _GEN_30 : validArray[26]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_29 = io_update_valid ? _GEN_33 : validArray[29]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_28 = io_update_valid ? _GEN_32 : validArray[28]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_31 = io_update_valid ? _GEN_35 : validArray[31]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_30 = io_update_valid ? _GEN_34 : validArray[30]; // @[ITTAGE.scala 285:26 284:30]
  wire [31:0] validArray_lo_lo = {newValidArray_31,newValidArray_30,newValidArray_29,newValidArray_28,newValidArray_27,
    newValidArray_26,newValidArray_25,newValidArray_24,validArray_lo_lo_hi_lo,validArray_lo_lo_lo}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_33 = io_update_valid ? _GEN_37 : validArray[33]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_32 = io_update_valid ? _GEN_36 : validArray[32]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_35 = io_update_valid ? _GEN_39 : validArray[35]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_34 = io_update_valid ? _GEN_38 : validArray[34]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_37 = io_update_valid ? _GEN_41 : validArray[37]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_36 = io_update_valid ? _GEN_40 : validArray[36]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_39 = io_update_valid ? _GEN_43 : validArray[39]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_38 = io_update_valid ? _GEN_42 : validArray[38]; // @[ITTAGE.scala 285:26 284:30]
  wire [7:0] validArray_lo_hi_lo_lo = {newValidArray_39,newValidArray_38,newValidArray_37,newValidArray_36,
    newValidArray_35,newValidArray_34,newValidArray_33,newValidArray_32}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_41 = io_update_valid ? _GEN_45 : validArray[41]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_40 = io_update_valid ? _GEN_44 : validArray[40]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_43 = io_update_valid ? _GEN_47 : validArray[43]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_42 = io_update_valid ? _GEN_46 : validArray[42]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_45 = io_update_valid ? _GEN_49 : validArray[45]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_44 = io_update_valid ? _GEN_48 : validArray[44]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_47 = io_update_valid ? _GEN_51 : validArray[47]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_46 = io_update_valid ? _GEN_50 : validArray[46]; // @[ITTAGE.scala 285:26 284:30]
  wire [15:0] validArray_lo_hi_lo = {newValidArray_47,newValidArray_46,newValidArray_45,newValidArray_44,
    newValidArray_43,newValidArray_42,newValidArray_41,newValidArray_40,validArray_lo_hi_lo_lo}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_49 = io_update_valid ? _GEN_53 : validArray[49]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_48 = io_update_valid ? _GEN_52 : validArray[48]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_51 = io_update_valid ? _GEN_55 : validArray[51]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_50 = io_update_valid ? _GEN_54 : validArray[50]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_53 = io_update_valid ? _GEN_57 : validArray[53]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_52 = io_update_valid ? _GEN_56 : validArray[52]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_55 = io_update_valid ? _GEN_59 : validArray[55]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_54 = io_update_valid ? _GEN_58 : validArray[54]; // @[ITTAGE.scala 285:26 284:30]
  wire [7:0] validArray_lo_hi_hi_lo = {newValidArray_55,newValidArray_54,newValidArray_53,newValidArray_52,
    newValidArray_51,newValidArray_50,newValidArray_49,newValidArray_48}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_57 = io_update_valid ? _GEN_61 : validArray[57]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_56 = io_update_valid ? _GEN_60 : validArray[56]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_59 = io_update_valid ? _GEN_63 : validArray[59]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_58 = io_update_valid ? _GEN_62 : validArray[58]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_61 = io_update_valid ? _GEN_65 : validArray[61]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_60 = io_update_valid ? _GEN_64 : validArray[60]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_63 = io_update_valid ? _GEN_67 : validArray[63]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_62 = io_update_valid ? _GEN_66 : validArray[62]; // @[ITTAGE.scala 285:26 284:30]
  wire [31:0] validArray_lo_hi = {newValidArray_63,newValidArray_62,newValidArray_61,newValidArray_60,newValidArray_59,
    newValidArray_58,newValidArray_57,newValidArray_56,validArray_lo_hi_hi_lo,validArray_lo_hi_lo}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_65 = io_update_valid ? _GEN_69 : validArray[65]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_64 = io_update_valid ? _GEN_68 : validArray[64]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_67 = io_update_valid ? _GEN_71 : validArray[67]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_66 = io_update_valid ? _GEN_70 : validArray[66]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_69 = io_update_valid ? _GEN_73 : validArray[69]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_68 = io_update_valid ? _GEN_72 : validArray[68]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_71 = io_update_valid ? _GEN_75 : validArray[71]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_70 = io_update_valid ? _GEN_74 : validArray[70]; // @[ITTAGE.scala 285:26 284:30]
  wire [7:0] validArray_hi_lo_lo_lo = {newValidArray_71,newValidArray_70,newValidArray_69,newValidArray_68,
    newValidArray_67,newValidArray_66,newValidArray_65,newValidArray_64}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_73 = io_update_valid ? _GEN_77 : validArray[73]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_72 = io_update_valid ? _GEN_76 : validArray[72]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_75 = io_update_valid ? _GEN_79 : validArray[75]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_74 = io_update_valid ? _GEN_78 : validArray[74]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_77 = io_update_valid ? _GEN_81 : validArray[77]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_76 = io_update_valid ? _GEN_80 : validArray[76]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_79 = io_update_valid ? _GEN_83 : validArray[79]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_78 = io_update_valid ? _GEN_82 : validArray[78]; // @[ITTAGE.scala 285:26 284:30]
  wire [15:0] validArray_hi_lo_lo = {newValidArray_79,newValidArray_78,newValidArray_77,newValidArray_76,
    newValidArray_75,newValidArray_74,newValidArray_73,newValidArray_72,validArray_hi_lo_lo_lo}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_81 = io_update_valid ? _GEN_85 : validArray[81]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_80 = io_update_valid ? _GEN_84 : validArray[80]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_83 = io_update_valid ? _GEN_87 : validArray[83]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_82 = io_update_valid ? _GEN_86 : validArray[82]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_85 = io_update_valid ? _GEN_89 : validArray[85]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_84 = io_update_valid ? _GEN_88 : validArray[84]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_87 = io_update_valid ? _GEN_91 : validArray[87]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_86 = io_update_valid ? _GEN_90 : validArray[86]; // @[ITTAGE.scala 285:26 284:30]
  wire [7:0] validArray_hi_lo_hi_lo = {newValidArray_87,newValidArray_86,newValidArray_85,newValidArray_84,
    newValidArray_83,newValidArray_82,newValidArray_81,newValidArray_80}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_89 = io_update_valid ? _GEN_93 : validArray[89]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_88 = io_update_valid ? _GEN_92 : validArray[88]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_91 = io_update_valid ? _GEN_95 : validArray[91]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_90 = io_update_valid ? _GEN_94 : validArray[90]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_93 = io_update_valid ? _GEN_97 : validArray[93]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_92 = io_update_valid ? _GEN_96 : validArray[92]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_95 = io_update_valid ? _GEN_99 : validArray[95]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_94 = io_update_valid ? _GEN_98 : validArray[94]; // @[ITTAGE.scala 285:26 284:30]
  wire [31:0] validArray_hi_lo = {newValidArray_95,newValidArray_94,newValidArray_93,newValidArray_92,newValidArray_91,
    newValidArray_90,newValidArray_89,newValidArray_88,validArray_hi_lo_hi_lo,validArray_hi_lo_lo}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_97 = io_update_valid ? _GEN_101 : validArray[97]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_96 = io_update_valid ? _GEN_100 : validArray[96]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_99 = io_update_valid ? _GEN_103 : validArray[99]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_98 = io_update_valid ? _GEN_102 : validArray[98]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_101 = io_update_valid ? _GEN_105 : validArray[101]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_100 = io_update_valid ? _GEN_104 : validArray[100]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_103 = io_update_valid ? _GEN_107 : validArray[103]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_102 = io_update_valid ? _GEN_106 : validArray[102]; // @[ITTAGE.scala 285:26 284:30]
  wire [7:0] validArray_hi_hi_lo_lo = {newValidArray_103,newValidArray_102,newValidArray_101,newValidArray_100,
    newValidArray_99,newValidArray_98,newValidArray_97,newValidArray_96}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_105 = io_update_valid ? _GEN_109 : validArray[105]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_104 = io_update_valid ? _GEN_108 : validArray[104]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_107 = io_update_valid ? _GEN_111 : validArray[107]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_106 = io_update_valid ? _GEN_110 : validArray[106]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_109 = io_update_valid ? _GEN_113 : validArray[109]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_108 = io_update_valid ? _GEN_112 : validArray[108]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_111 = io_update_valid ? _GEN_115 : validArray[111]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_110 = io_update_valid ? _GEN_114 : validArray[110]; // @[ITTAGE.scala 285:26 284:30]
  wire [15:0] validArray_hi_hi_lo = {newValidArray_111,newValidArray_110,newValidArray_109,newValidArray_108,
    newValidArray_107,newValidArray_106,newValidArray_105,newValidArray_104,validArray_hi_hi_lo_lo}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_113 = io_update_valid ? _GEN_117 : validArray[113]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_112 = io_update_valid ? _GEN_116 : validArray[112]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_115 = io_update_valid ? _GEN_119 : validArray[115]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_114 = io_update_valid ? _GEN_118 : validArray[114]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_117 = io_update_valid ? _GEN_121 : validArray[117]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_116 = io_update_valid ? _GEN_120 : validArray[116]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_119 = io_update_valid ? _GEN_123 : validArray[119]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_118 = io_update_valid ? _GEN_122 : validArray[118]; // @[ITTAGE.scala 285:26 284:30]
  wire [7:0] validArray_hi_hi_hi_lo = {newValidArray_119,newValidArray_118,newValidArray_117,newValidArray_116,
    newValidArray_115,newValidArray_114,newValidArray_113,newValidArray_112}; // @[ITTAGE.scala 287:33]
  wire  newValidArray_121 = io_update_valid ? _GEN_125 : validArray[121]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_120 = io_update_valid ? _GEN_124 : validArray[120]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_123 = io_update_valid ? _GEN_127 : validArray[123]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_122 = io_update_valid ? _GEN_126 : validArray[122]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_125 = io_update_valid ? _GEN_129 : validArray[125]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_124 = io_update_valid ? _GEN_128 : validArray[124]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_127 = io_update_valid ? _GEN_131 : validArray[127]; // @[ITTAGE.scala 285:26 284:30]
  wire  newValidArray_126 = io_update_valid ? _GEN_130 : validArray[126]; // @[ITTAGE.scala 285:26 284:30]
  wire [31:0] validArray_hi_hi = {newValidArray_127,newValidArray_126,newValidArray_125,newValidArray_124,
    newValidArray_123,newValidArray_122,newValidArray_121,newValidArray_120,validArray_hi_hi_hi_lo,validArray_hi_hi_lo}; // @[ITTAGE.scala 287:33]
  wire [127:0] _validArray_T = {validArray_hi_hi,validArray_hi_lo,validArray_lo_hi,validArray_lo_lo}; // @[ITTAGE.scala 287:33]
  Folded1WDataModuleTemplate us ( // @[ITTAGE.scala 222:18]
    .clock(us_clock),
    .reset(us_reset),
    .io_raddr_0(us_io_raddr_0),
    .io_rdata_0(us_io_rdata_0),
    .io_wen(us_io_wen),
    .io_waddr(us_io_waddr),
    .io_wdata(us_io_wdata),
    .io_resetEn(us_io_resetEn)
  );
  FoldedSRAMTemplate_90 table_banks_0 ( // @[ITTAGE.scala 225:11]
    .clock(table_banks_0_clock),
    .reset(table_banks_0_reset),
    .io_rreq_valid(table_banks_0_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_0_io_rreq_bits_setIdx),
    .io_rresp_data_0_tag(table_banks_0_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_0_io_rresp_data_0_ctr),
    .io_rresp_data_0_target(table_banks_0_io_rresp_data_0_target),
    .io_wreq_valid(table_banks_0_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_0_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_0_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_0_target(table_banks_0_io_wreq_bits_data_0_target)
  );
  FoldedSRAMTemplate_90 table_banks_1 ( // @[ITTAGE.scala 225:11]
    .clock(table_banks_1_clock),
    .reset(table_banks_1_reset),
    .io_rreq_valid(table_banks_1_io_rreq_valid),
    .io_rreq_bits_setIdx(table_banks_1_io_rreq_bits_setIdx),
    .io_rresp_data_0_tag(table_banks_1_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(table_banks_1_io_rresp_data_0_ctr),
    .io_rresp_data_0_target(table_banks_1_io_rresp_data_0_target),
    .io_wreq_valid(table_banks_1_io_wreq_valid),
    .io_wreq_bits_setIdx(table_banks_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(table_banks_1_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(table_banks_1_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_0_target(table_banks_1_io_wreq_bits_data_0_target)
  );
  WrBypass_169 wrbypass ( // @[ITTAGE.scala 271:24]
    .clock(wrbypass_clock),
    .reset(wrbypass_reset),
    .io_wen(wrbypass_io_wen),
    .io_write_idx(wrbypass_io_write_idx),
    .io_write_tag(wrbypass_io_write_tag),
    .io_write_data_0(wrbypass_io_write_data_0),
    .io_hit(wrbypass_io_hit),
    .io_hit_data_0_bits(wrbypass_io_hit_data_0_bits)
  );
  assign io_req_ready = ~io_update_valid; // @[ITTAGE.scala 263:19]
  assign io_resp_valid = _s1_req_rhit_T[0] & resp_selected_tag == s1_tag; // @[ITTAGE.scala 237:40]
  assign io_resp_bits_ctr = _resp_selected_T_3 | _resp_selected_T_4; // @[Mux.scala 27:73]
  assign io_resp_bits_u = {{1'd0}, us_io_rdata_0}; // @[ITTAGE.scala 241:18]
  assign io_resp_bits_target = _resp_selected_T | _resp_selected_T_1; // @[Mux.scala 27:73]
  assign us_clock = clock;
  assign us_reset = reset;
  assign us_io_raddr_0 = _idx_T[6:0]; // @[ITTAGE.scala 186:40]
  assign us_io_wen = io_update_uValid; // @[ITTAGE.scala 267:13]
  assign us_io_waddr = _idx_T_1[6:0]; // @[ITTAGE.scala 186:40]
  assign us_io_wdata = io_update_u; // @[ITTAGE.scala 269:15]
  assign us_io_resetEn = io_update_reset_u; // @[ITTAGE.scala 291:23]
  assign table_banks_0_clock = clock;
  assign table_banks_0_reset = reset;
  assign table_banks_0_io_rreq_valid = _T & s0_bank_req_1h_0; // @[ITTAGE.scala 228:50]
  assign table_banks_0_io_rreq_bits_setIdx = s0_idx[6:1]; // @[ITTAGE.scala 166:37]
  assign table_banks_0_io_wreq_valid = io_update_valid & update_req_bank_1h_0; // @[ITTAGE.scala 255:33]
  assign table_banks_0_io_wreq_bits_setIdx = update_idx[6:1]; // @[ITTAGE.scala 166:37]
  assign table_banks_0_io_wreq_bits_data_0_tag = _tag_T_7[8:0]; // @[ITTAGE.scala 187:82]
  assign table_banks_0_io_wreq_bits_data_0_ctr = io_update_alloc ? 2'h2 : _update_wdata_ctr_T_9; // @[ITTAGE.scala 279:28]
  assign table_banks_0_io_wreq_bits_data_0_target = io_update_alloc | update_wdata_ctr_oldSatNotTaken ?
    io_update_target : io_update_old_target; // @[ITTAGE.scala 282:29]
  assign table_banks_1_clock = clock;
  assign table_banks_1_reset = reset;
  assign table_banks_1_io_rreq_valid = _T & s0_idx[0]; // @[ITTAGE.scala 228:50]
  assign table_banks_1_io_rreq_bits_setIdx = s0_idx[6:1]; // @[ITTAGE.scala 166:37]
  assign table_banks_1_io_wreq_valid = io_update_valid & update_idx[0]; // @[ITTAGE.scala 255:33]
  assign table_banks_1_io_wreq_bits_setIdx = update_idx[6:1]; // @[ITTAGE.scala 166:37]
  assign table_banks_1_io_wreq_bits_data_0_tag = _tag_T_7[8:0]; // @[ITTAGE.scala 187:82]
  assign table_banks_1_io_wreq_bits_data_0_ctr = io_update_alloc ? 2'h2 : _update_wdata_ctr_T_9; // @[ITTAGE.scala 279:28]
  assign table_banks_1_io_wreq_bits_data_0_target = io_update_alloc | update_wdata_ctr_oldSatNotTaken ?
    io_update_target : io_update_old_target; // @[ITTAGE.scala 282:29]
  assign wrbypass_clock = clock;
  assign wrbypass_reset = reset;
  assign wrbypass_io_wen = io_update_valid; // @[ITTAGE.scala 273:19]
  assign wrbypass_io_write_idx = _idx_T_1[6:0]; // @[ITTAGE.scala 186:40]
  assign wrbypass_io_write_tag = _tag_T_7[8:0]; // @[ITTAGE.scala 187:82]
  assign wrbypass_io_write_data_0 = io_update_alloc ? 2'h2 : _update_wdata_ctr_T_9; // @[ITTAGE.scala 279:28]
  always @(posedge clock) begin
    if (reset) begin // @[ITTAGE.scala 205:27]
      validArray <= 128'h0; // @[ITTAGE.scala 205:27]
    end else if (io_update_valid) begin // @[ITTAGE.scala 285:26]
      validArray <= _validArray_T; // @[ITTAGE.scala 287:16]
    end
    if (_T) begin // @[Reg.scala 17:18]
      s1_idx <= s0_idx; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      s1_tag <= s0_tag; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_0 <= s0_bank_req_1h_0; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      s1_bank_req_1h_1 <= s0_idx[0]; // @[Reg.scala 17:22]
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
  _RAND_0 = {4{`RANDOM}};
  validArray = _RAND_0[127:0];
  _RAND_1 = {1{`RANDOM}};
  s1_idx = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  s1_tag = _RAND_2[8:0];
  _RAND_3 = {1{`RANDOM}};
  s1_bank_req_1h_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s1_bank_req_1h_1 = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
