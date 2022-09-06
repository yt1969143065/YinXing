module TLBFA_1(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_sfence_bits_rs1,
  input         io_sfence_bits_rs2,
  input  [38:0] io_sfence_bits_addr,
  input  [15:0] io_sfence_bits_asid,
  input  [15:0] io_csr_satp_asid,
  output        io_rreq_0_ready,
  input         io_rreq_0_valid,
  input  [26:0] io_rreq_0_bits_vpn,
  output        io_rreq_1_ready,
  input         io_rreq_1_valid,
  input  [26:0] io_rreq_1_bits_vpn,
  output        io_rreq_2_ready,
  input         io_rreq_2_valid,
  input  [26:0] io_rreq_2_bits_vpn,
  output        io_rreq_3_ready,
  input         io_rreq_3_valid,
  input  [26:0] io_rreq_3_bits_vpn,
  output        io_rreq_4_ready,
  input         io_rreq_4_valid,
  input  [26:0] io_rreq_4_bits_vpn,
  output        io_rreq_5_ready,
  input         io_rreq_5_valid,
  input  [26:0] io_rreq_5_bits_vpn,
  output        io_rresp_0_valid,
  output        io_rresp_0_bits_hit,
  output [23:0] io_rresp_0_bits_ppn,
  output        io_rresp_0_bits_perm_pf,
  output        io_rresp_0_bits_perm_af,
  output        io_rresp_0_bits_perm_a,
  output        io_rresp_0_bits_perm_u,
  output        io_rresp_0_bits_perm_x,
  output        io_rresp_1_valid,
  output        io_rresp_1_bits_hit,
  output [23:0] io_rresp_1_bits_ppn,
  output        io_rresp_1_bits_perm_pf,
  output        io_rresp_1_bits_perm_af,
  output        io_rresp_1_bits_perm_a,
  output        io_rresp_1_bits_perm_u,
  output        io_rresp_1_bits_perm_x,
  output        io_rresp_2_valid,
  output        io_rresp_2_bits_hit,
  output [23:0] io_rresp_2_bits_ppn,
  output        io_rresp_2_bits_perm_pf,
  output        io_rresp_2_bits_perm_af,
  output        io_rresp_2_bits_perm_a,
  output        io_rresp_2_bits_perm_u,
  output        io_rresp_2_bits_perm_x,
  output        io_rresp_3_valid,
  output        io_rresp_3_bits_hit,
  output [23:0] io_rresp_3_bits_ppn,
  output        io_rresp_3_bits_perm_pf,
  output        io_rresp_3_bits_perm_af,
  output        io_rresp_3_bits_perm_a,
  output        io_rresp_3_bits_perm_u,
  output        io_rresp_3_bits_perm_x,
  output        io_rresp_4_valid,
  output        io_rresp_4_bits_hit,
  output [23:0] io_rresp_4_bits_ppn,
  output        io_rresp_4_bits_perm_pf,
  output        io_rresp_4_bits_perm_af,
  output        io_rresp_4_bits_perm_a,
  output        io_rresp_4_bits_perm_u,
  output        io_rresp_4_bits_perm_x,
  output        io_rresp_5_valid,
  output        io_rresp_5_bits_hit,
  output [23:0] io_rresp_5_bits_ppn,
  output        io_rresp_5_bits_perm_pf,
  output        io_rresp_5_bits_perm_af,
  output        io_rresp_5_bits_perm_a,
  output        io_rresp_5_bits_perm_u,
  output        io_rresp_5_bits_perm_x,
  output        io_rresp_hit_sameCycle_0,
  output        io_rresp_hit_sameCycle_1,
  output        io_rresp_hit_sameCycle_2,
  output        io_rresp_hit_sameCycle_3,
  output        io_rresp_hit_sameCycle_4,
  output        io_rresp_hit_sameCycle_5,
  input         io_wvalid,
  input  [1:0]  io_wwayIdx,
  input  [26:0] io_wdata_entry_tag,
  input  [23:0] io_wdata_entry_ppn,
  input         io_wdata_entry_perm_d,
  input         io_wdata_entry_perm_a,
  input         io_wdata_entry_perm_g,
  input         io_wdata_entry_perm_u,
  input         io_wdata_entry_perm_x,
  input         io_wdata_entry_perm_w,
  input         io_wdata_entry_perm_r,
  input  [1:0]  io_wdata_entry_level,
  input         io_wdata_pf,
  input         io_wdata_af,
  output        io_access_0_touch_ways_valid,
  output [1:0]  io_access_0_touch_ways_bits,
  output        io_access_1_touch_ways_valid,
  output [1:0]  io_access_1_touch_ways_bits,
  output        io_access_2_touch_ways_valid,
  output [1:0]  io_access_2_touch_ways_bits,
  output        io_access_3_touch_ways_valid,
  output [1:0]  io_access_3_touch_ways_bits,
  output        io_access_4_touch_ways_valid,
  output [1:0]  io_access_4_touch_ways_bits,
  output        io_access_5_touch_ways_valid,
  output [1:0]  io_access_5_touch_ways_bits
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
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
`endif // RANDOMIZE_REG_INIT
  reg  v_0; // @[TLBStorage.scala 42:18]
  reg  v_1; // @[TLBStorage.scala 42:18]
  reg  v_2; // @[TLBStorage.scala 42:18]
  reg  v_3; // @[TLBStorage.scala 42:18]
  reg [17:0] entries_0_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_0_asid; // @[TLBStorage.scala 43:20]
  reg  entries_0_level; // @[TLBStorage.scala 43:20]
  reg [14:0] entries_0_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_r; // @[TLBStorage.scala 43:20]
  reg [17:0] entries_1_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_1_asid; // @[TLBStorage.scala 43:20]
  reg  entries_1_level; // @[TLBStorage.scala 43:20]
  reg [14:0] entries_1_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_r; // @[TLBStorage.scala 43:20]
  reg [17:0] entries_2_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_2_asid; // @[TLBStorage.scala 43:20]
  reg  entries_2_level; // @[TLBStorage.scala 43:20]
  reg [14:0] entries_2_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_r; // @[TLBStorage.scala 43:20]
  reg [17:0] entries_3_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_3_asid; // @[TLBStorage.scala 43:20]
  reg  entries_3_level; // @[TLBStorage.scala 43:20]
  reg [14:0] entries_3_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_r; // @[TLBStorage.scala 43:20]
  wire  _vpn_reg_T = io_rreq_0_ready & io_rreq_0_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg; // @[Reg.scala 16:16]
  wire [3:0] _refill_mask_T = 4'h1 << io_wwayIdx; // @[OneHot.scala 57:35]
  wire [3:0] refill_mask = io_wvalid ? _refill_mask_T : 4'h0; // @[TLBStorage.scala 55:59]
  wire  hitVec_asid_hit = entries_0_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_6 = entries_0_tag[17:9] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_8 = entries_0_tag == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_10 = entries_0_level ? _hitVec_T_8 : _hitVec_T_6; // @[Mux.scala 81:58]
  wire  _hitVec_T_11 = hitVec_asid_hit & _hitVec_T_10; // @[MMUBundle.scala 203:36]
  wire  hitVec__0 = _hitVec_T_11 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 56:139]
  wire  hitVec_asid_hit_1 = entries_1_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_17 = entries_1_tag[17:9] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_19 = entries_1_tag == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_21 = entries_1_level ? _hitVec_T_19 : _hitVec_T_17; // @[Mux.scala 81:58]
  wire  _hitVec_T_22 = hitVec_asid_hit_1 & _hitVec_T_21; // @[MMUBundle.scala 203:36]
  wire  hitVec__1 = _hitVec_T_22 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 56:139]
  wire  hitVec_asid_hit_2 = entries_2_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_28 = entries_2_tag[17:9] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_30 = entries_2_tag == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_32 = entries_2_level ? _hitVec_T_30 : _hitVec_T_28; // @[Mux.scala 81:58]
  wire  _hitVec_T_33 = hitVec_asid_hit_2 & _hitVec_T_32; // @[MMUBundle.scala 203:36]
  wire  hitVec__2 = _hitVec_T_33 & v_2 & ~refill_mask[2]; // @[TLBStorage.scala 56:139]
  wire  hitVec_asid_hit_3 = entries_3_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_39 = entries_3_tag[17:9] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_41 = entries_3_tag == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_43 = entries_3_level ? _hitVec_T_41 : _hitVec_T_39; // @[Mux.scala 81:58]
  wire  _hitVec_T_44 = hitVec_asid_hit_3 & _hitVec_T_43; // @[MMUBundle.scala 203:36]
  wire  hitVec__3 = _hitVec_T_44 & v_3 & ~refill_mask[3]; // @[TLBStorage.scala 56:139]
  reg  hitVecReg__0; // @[Reg.scala 16:16]
  reg  hitVecReg__1; // @[Reg.scala 16:16]
  reg  hitVecReg__2; // @[Reg.scala 16:16]
  reg  hitVecReg__3; // @[Reg.scala 16:16]
  reg  io_rresp_0_valid_REG; // @[TLBStorage.scala 62:58]
  wire [3:0] _io_rresp_0_bits_hit_T = {hitVecReg__0,hitVecReg__1,hitVecReg__2,hitVecReg__3}; // @[Cat.scala 31:58]
  wire  _io_rresp_0_bits_hit_T_1 = |_io_rresp_0_bits_hit_T; // @[TLBStorage.scala 63:37]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_2 = {entries_0_ppn[14:9],vpn_reg[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_4 = {entries_0_ppn,vpn_reg[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res = entries_0_level ? _io_rresp_0_bits_ppn_ppn_res_T_4 :
    _io_rresp_0_bits_ppn_ppn_res_T_2; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_8 = {entries_1_ppn[14:9],vpn_reg[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_10 = {entries_1_ppn,vpn_reg[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res_1 = entries_1_level ? _io_rresp_0_bits_ppn_ppn_res_T_10 :
    _io_rresp_0_bits_ppn_ppn_res_T_8; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_14 = {entries_2_ppn[14:9],vpn_reg[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_16 = {entries_2_ppn,vpn_reg[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res_2 = entries_2_level ? _io_rresp_0_bits_ppn_ppn_res_T_16 :
    _io_rresp_0_bits_ppn_ppn_res_T_14; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_20 = {entries_3_ppn[14:9],vpn_reg[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_22 = {entries_3_ppn,vpn_reg[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res_3 = entries_3_level ? _io_rresp_0_bits_ppn_ppn_res_T_22 :
    _io_rresp_0_bits_ppn_ppn_res_T_20; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_1 = hitVecReg__0 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_0 = _io_rresp_0_bits_ppn_xs_T_1 & io_rresp_0_bits_ppn_ppn_res; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_4 = hitVecReg__1 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_1 = _io_rresp_0_bits_ppn_xs_T_4 & io_rresp_0_bits_ppn_ppn_res_1; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_7 = hitVecReg__2 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_2 = _io_rresp_0_bits_ppn_xs_T_7 & io_rresp_0_bits_ppn_ppn_res_2; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_10 = hitVecReg__3 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_3 = _io_rresp_0_bits_ppn_xs_T_10 & io_rresp_0_bits_ppn_ppn_res_3; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_T = io_rresp_0_bits_ppn_xs_0 | io_rresp_0_bits_ppn_xs_1; // @[ParallelMux.scala 37:55]
  wire [23:0] _io_rresp_0_bits_ppn_T_1 = io_rresp_0_bits_ppn_xs_2 | io_rresp_0_bits_ppn_xs_3; // @[ParallelMux.scala 37:55]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_1 = hitVecReg__0 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo = {entries_0_perm_w,entries_0_perm_r,2'h0,3'h0}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_2 = {entries_0_perm_pf,entries_0_perm_af,entries_0_perm_d,entries_0_perm_a,
    entries_0_perm_g,entries_0_perm_u,entries_0_perm_x,io_rresp_0_bits_perm_xs_lo}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_3 = _io_rresp_0_bits_perm_xs_T_1 & _io_rresp_0_bits_perm_xs_T_2; // @[ParallelMux.scala 65:65]
  wire  io_rresp_0_bits_perm_xs_0_pm_atomic = _io_rresp_0_bits_perm_xs_T_3[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_pm_c = _io_rresp_0_bits_perm_xs_T_3[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_pm_x = _io_rresp_0_bits_perm_xs_T_3[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_pm_w = _io_rresp_0_bits_perm_xs_T_3[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_pm_r = _io_rresp_0_bits_perm_xs_T_3[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_r = _io_rresp_0_bits_perm_xs_T_3[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_w = _io_rresp_0_bits_perm_xs_T_3[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_x = _io_rresp_0_bits_perm_xs_T_3[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_u = _io_rresp_0_bits_perm_xs_T_3[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_g = _io_rresp_0_bits_perm_xs_T_3[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_a = _io_rresp_0_bits_perm_xs_T_3[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_d = _io_rresp_0_bits_perm_xs_T_3[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_af = _io_rresp_0_bits_perm_xs_T_3[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_0_pf = _io_rresp_0_bits_perm_xs_T_3[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_19 = hitVecReg__1 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo_1 = {entries_1_perm_w,entries_1_perm_r,2'h0,3'h0}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_20 = {entries_1_perm_pf,entries_1_perm_af,entries_1_perm_d,entries_1_perm_a,
    entries_1_perm_g,entries_1_perm_u,entries_1_perm_x,io_rresp_0_bits_perm_xs_lo_1}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_21 = _io_rresp_0_bits_perm_xs_T_19 & _io_rresp_0_bits_perm_xs_T_20; // @[ParallelMux.scala 65:65]
  wire  io_rresp_0_bits_perm_xs_1_pm_atomic = _io_rresp_0_bits_perm_xs_T_21[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_pm_c = _io_rresp_0_bits_perm_xs_T_21[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_pm_x = _io_rresp_0_bits_perm_xs_T_21[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_pm_w = _io_rresp_0_bits_perm_xs_T_21[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_pm_r = _io_rresp_0_bits_perm_xs_T_21[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_r = _io_rresp_0_bits_perm_xs_T_21[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_w = _io_rresp_0_bits_perm_xs_T_21[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_x = _io_rresp_0_bits_perm_xs_T_21[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_u = _io_rresp_0_bits_perm_xs_T_21[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_g = _io_rresp_0_bits_perm_xs_T_21[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_a = _io_rresp_0_bits_perm_xs_T_21[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_d = _io_rresp_0_bits_perm_xs_T_21[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_af = _io_rresp_0_bits_perm_xs_T_21[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_1_pf = _io_rresp_0_bits_perm_xs_T_21[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_37 = hitVecReg__2 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo_2 = {entries_2_perm_w,entries_2_perm_r,2'h0,3'h0}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_38 = {entries_2_perm_pf,entries_2_perm_af,entries_2_perm_d,entries_2_perm_a,
    entries_2_perm_g,entries_2_perm_u,entries_2_perm_x,io_rresp_0_bits_perm_xs_lo_2}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_39 = _io_rresp_0_bits_perm_xs_T_37 & _io_rresp_0_bits_perm_xs_T_38; // @[ParallelMux.scala 65:65]
  wire  io_rresp_0_bits_perm_xs_2_pm_atomic = _io_rresp_0_bits_perm_xs_T_39[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_pm_c = _io_rresp_0_bits_perm_xs_T_39[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_pm_x = _io_rresp_0_bits_perm_xs_T_39[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_pm_w = _io_rresp_0_bits_perm_xs_T_39[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_pm_r = _io_rresp_0_bits_perm_xs_T_39[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_r = _io_rresp_0_bits_perm_xs_T_39[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_w = _io_rresp_0_bits_perm_xs_T_39[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_x = _io_rresp_0_bits_perm_xs_T_39[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_u = _io_rresp_0_bits_perm_xs_T_39[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_g = _io_rresp_0_bits_perm_xs_T_39[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_a = _io_rresp_0_bits_perm_xs_T_39[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_d = _io_rresp_0_bits_perm_xs_T_39[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_af = _io_rresp_0_bits_perm_xs_T_39[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_2_pf = _io_rresp_0_bits_perm_xs_T_39[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_55 = hitVecReg__3 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo_3 = {entries_3_perm_w,entries_3_perm_r,2'h0,3'h0}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_56 = {entries_3_perm_pf,entries_3_perm_af,entries_3_perm_d,entries_3_perm_a,
    entries_3_perm_g,entries_3_perm_u,entries_3_perm_x,io_rresp_0_bits_perm_xs_lo_3}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_57 = _io_rresp_0_bits_perm_xs_T_55 & _io_rresp_0_bits_perm_xs_T_56; // @[ParallelMux.scala 65:65]
  wire  io_rresp_0_bits_perm_xs_3_pm_atomic = _io_rresp_0_bits_perm_xs_T_57[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_pm_c = _io_rresp_0_bits_perm_xs_T_57[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_pm_x = _io_rresp_0_bits_perm_xs_T_57[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_pm_w = _io_rresp_0_bits_perm_xs_T_57[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_pm_r = _io_rresp_0_bits_perm_xs_T_57[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_r = _io_rresp_0_bits_perm_xs_T_57[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_w = _io_rresp_0_bits_perm_xs_T_57[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_x = _io_rresp_0_bits_perm_xs_T_57[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_u = _io_rresp_0_bits_perm_xs_T_57[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_g = _io_rresp_0_bits_perm_xs_T_57[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_a = _io_rresp_0_bits_perm_xs_T_57[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_d = _io_rresp_0_bits_perm_xs_T_57[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_af = _io_rresp_0_bits_perm_xs_T_57[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_3_pf = _io_rresp_0_bits_perm_xs_T_57[13]; // @[ParallelMux.scala 65:87]
  wire [6:0] io_rresp_0_bits_perm_lo = {io_rresp_0_bits_perm_xs_0_w,io_rresp_0_bits_perm_xs_0_r,
    io_rresp_0_bits_perm_xs_0_pm_r,io_rresp_0_bits_perm_xs_0_pm_w,io_rresp_0_bits_perm_xs_0_pm_x,
    io_rresp_0_bits_perm_xs_0_pm_c,io_rresp_0_bits_perm_xs_0_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_0_bits_perm_T = {io_rresp_0_bits_perm_xs_0_pf,io_rresp_0_bits_perm_xs_0_af,
    io_rresp_0_bits_perm_xs_0_d,io_rresp_0_bits_perm_xs_0_a,io_rresp_0_bits_perm_xs_0_g,io_rresp_0_bits_perm_xs_0_u,
    io_rresp_0_bits_perm_xs_0_x,io_rresp_0_bits_perm_lo}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_0_bits_perm_lo_1 = {io_rresp_0_bits_perm_xs_1_w,io_rresp_0_bits_perm_xs_1_r,
    io_rresp_0_bits_perm_xs_1_pm_r,io_rresp_0_bits_perm_xs_1_pm_w,io_rresp_0_bits_perm_xs_1_pm_x,
    io_rresp_0_bits_perm_xs_1_pm_c,io_rresp_0_bits_perm_xs_1_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_1 = {io_rresp_0_bits_perm_xs_1_pf,io_rresp_0_bits_perm_xs_1_af,
    io_rresp_0_bits_perm_xs_1_d,io_rresp_0_bits_perm_xs_1_a,io_rresp_0_bits_perm_xs_1_g,io_rresp_0_bits_perm_xs_1_u,
    io_rresp_0_bits_perm_xs_1_x,io_rresp_0_bits_perm_lo_1}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_2 = _io_rresp_0_bits_perm_T | _io_rresp_0_bits_perm_T_1; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_0_bits_perm_lo_2 = {io_rresp_0_bits_perm_xs_2_w,io_rresp_0_bits_perm_xs_2_r,
    io_rresp_0_bits_perm_xs_2_pm_r,io_rresp_0_bits_perm_xs_2_pm_w,io_rresp_0_bits_perm_xs_2_pm_x,
    io_rresp_0_bits_perm_xs_2_pm_c,io_rresp_0_bits_perm_xs_2_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_0_bits_perm_T_17 = {io_rresp_0_bits_perm_xs_2_pf,io_rresp_0_bits_perm_xs_2_af,
    io_rresp_0_bits_perm_xs_2_d,io_rresp_0_bits_perm_xs_2_a,io_rresp_0_bits_perm_xs_2_g,io_rresp_0_bits_perm_xs_2_u,
    io_rresp_0_bits_perm_xs_2_x,io_rresp_0_bits_perm_lo_2}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_0_bits_perm_lo_3 = {io_rresp_0_bits_perm_xs_3_w,io_rresp_0_bits_perm_xs_3_r,
    io_rresp_0_bits_perm_xs_3_pm_r,io_rresp_0_bits_perm_xs_3_pm_w,io_rresp_0_bits_perm_xs_3_pm_x,
    io_rresp_0_bits_perm_xs_3_pm_c,io_rresp_0_bits_perm_xs_3_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_18 = {io_rresp_0_bits_perm_xs_3_pf,io_rresp_0_bits_perm_xs_3_af,
    io_rresp_0_bits_perm_xs_3_d,io_rresp_0_bits_perm_xs_3_a,io_rresp_0_bits_perm_xs_3_g,io_rresp_0_bits_perm_xs_3_u,
    io_rresp_0_bits_perm_xs_3_x,io_rresp_0_bits_perm_lo_3}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_19 = _io_rresp_0_bits_perm_T_17 | _io_rresp_0_bits_perm_T_18; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_0_bits_perm_lo_4 = {_io_rresp_0_bits_perm_T_2[6],_io_rresp_0_bits_perm_T_2[5],
    _io_rresp_0_bits_perm_T_2[4],_io_rresp_0_bits_perm_T_2[3],_io_rresp_0_bits_perm_T_2[2],_io_rresp_0_bits_perm_T_2
    [1],_io_rresp_0_bits_perm_T_2[0]}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_0_bits_perm_T_34 = {_io_rresp_0_bits_perm_T_2[13],_io_rresp_0_bits_perm_T_2[12],
    _io_rresp_0_bits_perm_T_2[11],_io_rresp_0_bits_perm_T_2[10],_io_rresp_0_bits_perm_T_2[9],
    _io_rresp_0_bits_perm_T_2[8],_io_rresp_0_bits_perm_T_2[7],io_rresp_0_bits_perm_lo_4}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_0_bits_perm_lo_5 = {_io_rresp_0_bits_perm_T_19[6],_io_rresp_0_bits_perm_T_19[5],
    _io_rresp_0_bits_perm_T_19[4],_io_rresp_0_bits_perm_T_19[3],_io_rresp_0_bits_perm_T_19[2],
    _io_rresp_0_bits_perm_T_19[1],_io_rresp_0_bits_perm_T_19[0]}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_35 = {_io_rresp_0_bits_perm_T_19[13],_io_rresp_0_bits_perm_T_19[12],
    _io_rresp_0_bits_perm_T_19[11],_io_rresp_0_bits_perm_T_19[10],_io_rresp_0_bits_perm_T_19[9],
    _io_rresp_0_bits_perm_T_19[8],_io_rresp_0_bits_perm_T_19[7],io_rresp_0_bits_perm_lo_5}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_36 = _io_rresp_0_bits_perm_T_34 | _io_rresp_0_bits_perm_T_35; // @[ParallelMux.scala 37:55]
  wire [3:0] _io_rresp_hit_sameCycle_0_T = {hitVec__0,hitVec__1,hitVec__2,hitVec__3}; // @[Cat.scala 31:58]
  wire [3:0] _io_access_0_touch_ways_bits_T = {hitVecReg__3,hitVecReg__2,hitVecReg__1,hitVecReg__0}; // @[OneHot.scala 22:45]
  wire [1:0] io_access_0_touch_ways_bits_hi_1 = _io_access_0_touch_ways_bits_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_access_0_touch_ways_bits_lo_1 = _io_access_0_touch_ways_bits_T[1:0]; // @[OneHot.scala 31:18]
  wire  _io_access_0_touch_ways_bits_T_1 = |io_access_0_touch_ways_bits_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_access_0_touch_ways_bits_T_2 = io_access_0_touch_ways_bits_hi_1 | io_access_0_touch_ways_bits_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] _io_access_0_touch_ways_bits_T_4 = {_io_access_0_touch_ways_bits_T_1,_io_access_0_touch_ways_bits_T_2[1]}; // @[Cat.scala 31:58]
  wire  _vpn_reg_T_1 = io_rreq_1_ready & io_rreq_1_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg_1; // @[Reg.scala 16:16]
  wire  _hitVec_T_54 = entries_0_tag[17:9] == io_rreq_1_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_56 = entries_0_tag == io_rreq_1_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_58 = entries_0_level ? _hitVec_T_56 : _hitVec_T_54; // @[Mux.scala 81:58]
  wire  _hitVec_T_59 = hitVec_asid_hit & _hitVec_T_58; // @[MMUBundle.scala 203:36]
  wire  hitVec_1_0 = _hitVec_T_59 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_65 = entries_1_tag[17:9] == io_rreq_1_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_67 = entries_1_tag == io_rreq_1_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_69 = entries_1_level ? _hitVec_T_67 : _hitVec_T_65; // @[Mux.scala 81:58]
  wire  _hitVec_T_70 = hitVec_asid_hit_1 & _hitVec_T_69; // @[MMUBundle.scala 203:36]
  wire  hitVec_1_1 = _hitVec_T_70 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_76 = entries_2_tag[17:9] == io_rreq_1_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_78 = entries_2_tag == io_rreq_1_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_80 = entries_2_level ? _hitVec_T_78 : _hitVec_T_76; // @[Mux.scala 81:58]
  wire  _hitVec_T_81 = hitVec_asid_hit_2 & _hitVec_T_80; // @[MMUBundle.scala 203:36]
  wire  hitVec_1_2 = _hitVec_T_81 & v_2 & ~refill_mask[2]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_87 = entries_3_tag[17:9] == io_rreq_1_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_89 = entries_3_tag == io_rreq_1_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_91 = entries_3_level ? _hitVec_T_89 : _hitVec_T_87; // @[Mux.scala 81:58]
  wire  _hitVec_T_92 = hitVec_asid_hit_3 & _hitVec_T_91; // @[MMUBundle.scala 203:36]
  wire  hitVec_1_3 = _hitVec_T_92 & v_3 & ~refill_mask[3]; // @[TLBStorage.scala 56:139]
  reg  hitVecReg_1_0; // @[Reg.scala 16:16]
  reg  hitVecReg_1_1; // @[Reg.scala 16:16]
  reg  hitVecReg_1_2; // @[Reg.scala 16:16]
  reg  hitVecReg_1_3; // @[Reg.scala 16:16]
  reg  io_rresp_1_valid_REG; // @[TLBStorage.scala 62:58]
  wire [3:0] _io_rresp_1_bits_hit_T = {hitVecReg_1_0,hitVecReg_1_1,hitVecReg_1_2,hitVecReg_1_3}; // @[Cat.scala 31:58]
  wire  _io_rresp_1_bits_hit_T_1 = |_io_rresp_1_bits_hit_T; // @[TLBStorage.scala 63:37]
  wire [23:0] _io_rresp_1_bits_ppn_ppn_res_T_2 = {entries_0_ppn[14:9],vpn_reg_1[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_1_bits_ppn_ppn_res_T_4 = {entries_0_ppn,vpn_reg_1[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_1_bits_ppn_ppn_res = entries_0_level ? _io_rresp_1_bits_ppn_ppn_res_T_4 :
    _io_rresp_1_bits_ppn_ppn_res_T_2; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_1_bits_ppn_ppn_res_T_8 = {entries_1_ppn[14:9],vpn_reg_1[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_1_bits_ppn_ppn_res_T_10 = {entries_1_ppn,vpn_reg_1[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_1_bits_ppn_ppn_res_1 = entries_1_level ? _io_rresp_1_bits_ppn_ppn_res_T_10 :
    _io_rresp_1_bits_ppn_ppn_res_T_8; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_1_bits_ppn_ppn_res_T_14 = {entries_2_ppn[14:9],vpn_reg_1[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_1_bits_ppn_ppn_res_T_16 = {entries_2_ppn,vpn_reg_1[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_1_bits_ppn_ppn_res_2 = entries_2_level ? _io_rresp_1_bits_ppn_ppn_res_T_16 :
    _io_rresp_1_bits_ppn_ppn_res_T_14; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_1_bits_ppn_ppn_res_T_20 = {entries_3_ppn[14:9],vpn_reg_1[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_1_bits_ppn_ppn_res_T_22 = {entries_3_ppn,vpn_reg_1[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_1_bits_ppn_ppn_res_3 = entries_3_level ? _io_rresp_1_bits_ppn_ppn_res_T_22 :
    _io_rresp_1_bits_ppn_ppn_res_T_20; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_1_bits_ppn_xs_T_1 = hitVecReg_1_0 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_1_bits_ppn_xs_0 = _io_rresp_1_bits_ppn_xs_T_1 & io_rresp_1_bits_ppn_ppn_res; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_1_bits_ppn_xs_T_4 = hitVecReg_1_1 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_1_bits_ppn_xs_1 = _io_rresp_1_bits_ppn_xs_T_4 & io_rresp_1_bits_ppn_ppn_res_1; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_1_bits_ppn_xs_T_7 = hitVecReg_1_2 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_1_bits_ppn_xs_2 = _io_rresp_1_bits_ppn_xs_T_7 & io_rresp_1_bits_ppn_ppn_res_2; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_1_bits_ppn_xs_T_10 = hitVecReg_1_3 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_1_bits_ppn_xs_3 = _io_rresp_1_bits_ppn_xs_T_10 & io_rresp_1_bits_ppn_ppn_res_3; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_1_bits_ppn_T = io_rresp_1_bits_ppn_xs_0 | io_rresp_1_bits_ppn_xs_1; // @[ParallelMux.scala 37:55]
  wire [23:0] _io_rresp_1_bits_ppn_T_1 = io_rresp_1_bits_ppn_xs_2 | io_rresp_1_bits_ppn_xs_3; // @[ParallelMux.scala 37:55]
  wire [13:0] _io_rresp_1_bits_perm_xs_T_1 = hitVecReg_1_0 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_1_bits_perm_xs_T_3 = _io_rresp_1_bits_perm_xs_T_1 & _io_rresp_0_bits_perm_xs_T_2; // @[ParallelMux.scala 65:65]
  wire  io_rresp_1_bits_perm_xs_0_pm_atomic = _io_rresp_1_bits_perm_xs_T_3[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_pm_c = _io_rresp_1_bits_perm_xs_T_3[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_pm_x = _io_rresp_1_bits_perm_xs_T_3[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_pm_w = _io_rresp_1_bits_perm_xs_T_3[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_pm_r = _io_rresp_1_bits_perm_xs_T_3[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_r = _io_rresp_1_bits_perm_xs_T_3[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_w = _io_rresp_1_bits_perm_xs_T_3[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_x = _io_rresp_1_bits_perm_xs_T_3[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_u = _io_rresp_1_bits_perm_xs_T_3[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_g = _io_rresp_1_bits_perm_xs_T_3[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_a = _io_rresp_1_bits_perm_xs_T_3[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_d = _io_rresp_1_bits_perm_xs_T_3[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_af = _io_rresp_1_bits_perm_xs_T_3[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_0_pf = _io_rresp_1_bits_perm_xs_T_3[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_1_bits_perm_xs_T_19 = hitVecReg_1_1 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_1_bits_perm_xs_T_21 = _io_rresp_1_bits_perm_xs_T_19 & _io_rresp_0_bits_perm_xs_T_20; // @[ParallelMux.scala 65:65]
  wire  io_rresp_1_bits_perm_xs_1_pm_atomic = _io_rresp_1_bits_perm_xs_T_21[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_pm_c = _io_rresp_1_bits_perm_xs_T_21[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_pm_x = _io_rresp_1_bits_perm_xs_T_21[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_pm_w = _io_rresp_1_bits_perm_xs_T_21[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_pm_r = _io_rresp_1_bits_perm_xs_T_21[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_r = _io_rresp_1_bits_perm_xs_T_21[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_w = _io_rresp_1_bits_perm_xs_T_21[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_x = _io_rresp_1_bits_perm_xs_T_21[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_u = _io_rresp_1_bits_perm_xs_T_21[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_g = _io_rresp_1_bits_perm_xs_T_21[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_a = _io_rresp_1_bits_perm_xs_T_21[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_d = _io_rresp_1_bits_perm_xs_T_21[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_af = _io_rresp_1_bits_perm_xs_T_21[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_1_pf = _io_rresp_1_bits_perm_xs_T_21[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_1_bits_perm_xs_T_37 = hitVecReg_1_2 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_1_bits_perm_xs_T_39 = _io_rresp_1_bits_perm_xs_T_37 & _io_rresp_0_bits_perm_xs_T_38; // @[ParallelMux.scala 65:65]
  wire  io_rresp_1_bits_perm_xs_2_pm_atomic = _io_rresp_1_bits_perm_xs_T_39[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_pm_c = _io_rresp_1_bits_perm_xs_T_39[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_pm_x = _io_rresp_1_bits_perm_xs_T_39[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_pm_w = _io_rresp_1_bits_perm_xs_T_39[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_pm_r = _io_rresp_1_bits_perm_xs_T_39[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_r = _io_rresp_1_bits_perm_xs_T_39[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_w = _io_rresp_1_bits_perm_xs_T_39[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_x = _io_rresp_1_bits_perm_xs_T_39[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_u = _io_rresp_1_bits_perm_xs_T_39[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_g = _io_rresp_1_bits_perm_xs_T_39[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_a = _io_rresp_1_bits_perm_xs_T_39[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_d = _io_rresp_1_bits_perm_xs_T_39[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_af = _io_rresp_1_bits_perm_xs_T_39[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_2_pf = _io_rresp_1_bits_perm_xs_T_39[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_1_bits_perm_xs_T_55 = hitVecReg_1_3 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_1_bits_perm_xs_T_57 = _io_rresp_1_bits_perm_xs_T_55 & _io_rresp_0_bits_perm_xs_T_56; // @[ParallelMux.scala 65:65]
  wire  io_rresp_1_bits_perm_xs_3_pm_atomic = _io_rresp_1_bits_perm_xs_T_57[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_pm_c = _io_rresp_1_bits_perm_xs_T_57[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_pm_x = _io_rresp_1_bits_perm_xs_T_57[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_pm_w = _io_rresp_1_bits_perm_xs_T_57[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_pm_r = _io_rresp_1_bits_perm_xs_T_57[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_r = _io_rresp_1_bits_perm_xs_T_57[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_w = _io_rresp_1_bits_perm_xs_T_57[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_x = _io_rresp_1_bits_perm_xs_T_57[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_u = _io_rresp_1_bits_perm_xs_T_57[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_g = _io_rresp_1_bits_perm_xs_T_57[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_a = _io_rresp_1_bits_perm_xs_T_57[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_d = _io_rresp_1_bits_perm_xs_T_57[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_af = _io_rresp_1_bits_perm_xs_T_57[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_1_bits_perm_xs_3_pf = _io_rresp_1_bits_perm_xs_T_57[13]; // @[ParallelMux.scala 65:87]
  wire [6:0] io_rresp_1_bits_perm_lo = {io_rresp_1_bits_perm_xs_0_w,io_rresp_1_bits_perm_xs_0_r,
    io_rresp_1_bits_perm_xs_0_pm_r,io_rresp_1_bits_perm_xs_0_pm_w,io_rresp_1_bits_perm_xs_0_pm_x,
    io_rresp_1_bits_perm_xs_0_pm_c,io_rresp_1_bits_perm_xs_0_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_1_bits_perm_T = {io_rresp_1_bits_perm_xs_0_pf,io_rresp_1_bits_perm_xs_0_af,
    io_rresp_1_bits_perm_xs_0_d,io_rresp_1_bits_perm_xs_0_a,io_rresp_1_bits_perm_xs_0_g,io_rresp_1_bits_perm_xs_0_u,
    io_rresp_1_bits_perm_xs_0_x,io_rresp_1_bits_perm_lo}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_1_bits_perm_lo_1 = {io_rresp_1_bits_perm_xs_1_w,io_rresp_1_bits_perm_xs_1_r,
    io_rresp_1_bits_perm_xs_1_pm_r,io_rresp_1_bits_perm_xs_1_pm_w,io_rresp_1_bits_perm_xs_1_pm_x,
    io_rresp_1_bits_perm_xs_1_pm_c,io_rresp_1_bits_perm_xs_1_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_1_bits_perm_T_1 = {io_rresp_1_bits_perm_xs_1_pf,io_rresp_1_bits_perm_xs_1_af,
    io_rresp_1_bits_perm_xs_1_d,io_rresp_1_bits_perm_xs_1_a,io_rresp_1_bits_perm_xs_1_g,io_rresp_1_bits_perm_xs_1_u,
    io_rresp_1_bits_perm_xs_1_x,io_rresp_1_bits_perm_lo_1}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_1_bits_perm_T_2 = _io_rresp_1_bits_perm_T | _io_rresp_1_bits_perm_T_1; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_1_bits_perm_lo_2 = {io_rresp_1_bits_perm_xs_2_w,io_rresp_1_bits_perm_xs_2_r,
    io_rresp_1_bits_perm_xs_2_pm_r,io_rresp_1_bits_perm_xs_2_pm_w,io_rresp_1_bits_perm_xs_2_pm_x,
    io_rresp_1_bits_perm_xs_2_pm_c,io_rresp_1_bits_perm_xs_2_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_1_bits_perm_T_17 = {io_rresp_1_bits_perm_xs_2_pf,io_rresp_1_bits_perm_xs_2_af,
    io_rresp_1_bits_perm_xs_2_d,io_rresp_1_bits_perm_xs_2_a,io_rresp_1_bits_perm_xs_2_g,io_rresp_1_bits_perm_xs_2_u,
    io_rresp_1_bits_perm_xs_2_x,io_rresp_1_bits_perm_lo_2}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_1_bits_perm_lo_3 = {io_rresp_1_bits_perm_xs_3_w,io_rresp_1_bits_perm_xs_3_r,
    io_rresp_1_bits_perm_xs_3_pm_r,io_rresp_1_bits_perm_xs_3_pm_w,io_rresp_1_bits_perm_xs_3_pm_x,
    io_rresp_1_bits_perm_xs_3_pm_c,io_rresp_1_bits_perm_xs_3_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_1_bits_perm_T_18 = {io_rresp_1_bits_perm_xs_3_pf,io_rresp_1_bits_perm_xs_3_af,
    io_rresp_1_bits_perm_xs_3_d,io_rresp_1_bits_perm_xs_3_a,io_rresp_1_bits_perm_xs_3_g,io_rresp_1_bits_perm_xs_3_u,
    io_rresp_1_bits_perm_xs_3_x,io_rresp_1_bits_perm_lo_3}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_1_bits_perm_T_19 = _io_rresp_1_bits_perm_T_17 | _io_rresp_1_bits_perm_T_18; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_1_bits_perm_lo_4 = {_io_rresp_1_bits_perm_T_2[6],_io_rresp_1_bits_perm_T_2[5],
    _io_rresp_1_bits_perm_T_2[4],_io_rresp_1_bits_perm_T_2[3],_io_rresp_1_bits_perm_T_2[2],_io_rresp_1_bits_perm_T_2
    [1],_io_rresp_1_bits_perm_T_2[0]}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_1_bits_perm_T_34 = {_io_rresp_1_bits_perm_T_2[13],_io_rresp_1_bits_perm_T_2[12],
    _io_rresp_1_bits_perm_T_2[11],_io_rresp_1_bits_perm_T_2[10],_io_rresp_1_bits_perm_T_2[9],
    _io_rresp_1_bits_perm_T_2[8],_io_rresp_1_bits_perm_T_2[7],io_rresp_1_bits_perm_lo_4}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_1_bits_perm_lo_5 = {_io_rresp_1_bits_perm_T_19[6],_io_rresp_1_bits_perm_T_19[5],
    _io_rresp_1_bits_perm_T_19[4],_io_rresp_1_bits_perm_T_19[3],_io_rresp_1_bits_perm_T_19[2],
    _io_rresp_1_bits_perm_T_19[1],_io_rresp_1_bits_perm_T_19[0]}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_1_bits_perm_T_35 = {_io_rresp_1_bits_perm_T_19[13],_io_rresp_1_bits_perm_T_19[12],
    _io_rresp_1_bits_perm_T_19[11],_io_rresp_1_bits_perm_T_19[10],_io_rresp_1_bits_perm_T_19[9],
    _io_rresp_1_bits_perm_T_19[8],_io_rresp_1_bits_perm_T_19[7],io_rresp_1_bits_perm_lo_5}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_1_bits_perm_T_36 = _io_rresp_1_bits_perm_T_34 | _io_rresp_1_bits_perm_T_35; // @[ParallelMux.scala 37:55]
  wire [3:0] _io_rresp_hit_sameCycle_1_T = {hitVec_1_0,hitVec_1_1,hitVec_1_2,hitVec_1_3}; // @[Cat.scala 31:58]
  wire [3:0] _io_access_1_touch_ways_bits_T = {hitVecReg_1_3,hitVecReg_1_2,hitVecReg_1_1,hitVecReg_1_0}; // @[OneHot.scala 22:45]
  wire [1:0] io_access_1_touch_ways_bits_hi_1 = _io_access_1_touch_ways_bits_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_access_1_touch_ways_bits_lo_1 = _io_access_1_touch_ways_bits_T[1:0]; // @[OneHot.scala 31:18]
  wire  _io_access_1_touch_ways_bits_T_1 = |io_access_1_touch_ways_bits_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_access_1_touch_ways_bits_T_2 = io_access_1_touch_ways_bits_hi_1 | io_access_1_touch_ways_bits_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] _io_access_1_touch_ways_bits_T_4 = {_io_access_1_touch_ways_bits_T_1,_io_access_1_touch_ways_bits_T_2[1]}; // @[Cat.scala 31:58]
  wire  _vpn_reg_T_2 = io_rreq_2_ready & io_rreq_2_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg_2; // @[Reg.scala 16:16]
  wire  _hitVec_T_102 = entries_0_tag[17:9] == io_rreq_2_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_104 = entries_0_tag == io_rreq_2_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_106 = entries_0_level ? _hitVec_T_104 : _hitVec_T_102; // @[Mux.scala 81:58]
  wire  _hitVec_T_107 = hitVec_asid_hit & _hitVec_T_106; // @[MMUBundle.scala 203:36]
  wire  hitVec_2_0 = _hitVec_T_107 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_113 = entries_1_tag[17:9] == io_rreq_2_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_115 = entries_1_tag == io_rreq_2_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_117 = entries_1_level ? _hitVec_T_115 : _hitVec_T_113; // @[Mux.scala 81:58]
  wire  _hitVec_T_118 = hitVec_asid_hit_1 & _hitVec_T_117; // @[MMUBundle.scala 203:36]
  wire  hitVec_2_1 = _hitVec_T_118 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_124 = entries_2_tag[17:9] == io_rreq_2_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_126 = entries_2_tag == io_rreq_2_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_128 = entries_2_level ? _hitVec_T_126 : _hitVec_T_124; // @[Mux.scala 81:58]
  wire  _hitVec_T_129 = hitVec_asid_hit_2 & _hitVec_T_128; // @[MMUBundle.scala 203:36]
  wire  hitVec_2_2 = _hitVec_T_129 & v_2 & ~refill_mask[2]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_135 = entries_3_tag[17:9] == io_rreq_2_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_137 = entries_3_tag == io_rreq_2_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_139 = entries_3_level ? _hitVec_T_137 : _hitVec_T_135; // @[Mux.scala 81:58]
  wire  _hitVec_T_140 = hitVec_asid_hit_3 & _hitVec_T_139; // @[MMUBundle.scala 203:36]
  wire  hitVec_2_3 = _hitVec_T_140 & v_3 & ~refill_mask[3]; // @[TLBStorage.scala 56:139]
  reg  hitVecReg_2_0; // @[Reg.scala 16:16]
  reg  hitVecReg_2_1; // @[Reg.scala 16:16]
  reg  hitVecReg_2_2; // @[Reg.scala 16:16]
  reg  hitVecReg_2_3; // @[Reg.scala 16:16]
  reg  io_rresp_2_valid_REG; // @[TLBStorage.scala 62:58]
  wire [3:0] _io_rresp_2_bits_hit_T = {hitVecReg_2_0,hitVecReg_2_1,hitVecReg_2_2,hitVecReg_2_3}; // @[Cat.scala 31:58]
  wire  _io_rresp_2_bits_hit_T_1 = |_io_rresp_2_bits_hit_T; // @[TLBStorage.scala 63:37]
  wire [23:0] _io_rresp_2_bits_ppn_ppn_res_T_2 = {entries_0_ppn[14:9],vpn_reg_2[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_2_bits_ppn_ppn_res_T_4 = {entries_0_ppn,vpn_reg_2[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_2_bits_ppn_ppn_res = entries_0_level ? _io_rresp_2_bits_ppn_ppn_res_T_4 :
    _io_rresp_2_bits_ppn_ppn_res_T_2; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_2_bits_ppn_ppn_res_T_8 = {entries_1_ppn[14:9],vpn_reg_2[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_2_bits_ppn_ppn_res_T_10 = {entries_1_ppn,vpn_reg_2[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_2_bits_ppn_ppn_res_1 = entries_1_level ? _io_rresp_2_bits_ppn_ppn_res_T_10 :
    _io_rresp_2_bits_ppn_ppn_res_T_8; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_2_bits_ppn_ppn_res_T_14 = {entries_2_ppn[14:9],vpn_reg_2[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_2_bits_ppn_ppn_res_T_16 = {entries_2_ppn,vpn_reg_2[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_2_bits_ppn_ppn_res_2 = entries_2_level ? _io_rresp_2_bits_ppn_ppn_res_T_16 :
    _io_rresp_2_bits_ppn_ppn_res_T_14; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_2_bits_ppn_ppn_res_T_20 = {entries_3_ppn[14:9],vpn_reg_2[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_2_bits_ppn_ppn_res_T_22 = {entries_3_ppn,vpn_reg_2[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_2_bits_ppn_ppn_res_3 = entries_3_level ? _io_rresp_2_bits_ppn_ppn_res_T_22 :
    _io_rresp_2_bits_ppn_ppn_res_T_20; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_2_bits_ppn_xs_T_1 = hitVecReg_2_0 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_2_bits_ppn_xs_0 = _io_rresp_2_bits_ppn_xs_T_1 & io_rresp_2_bits_ppn_ppn_res; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_2_bits_ppn_xs_T_4 = hitVecReg_2_1 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_2_bits_ppn_xs_1 = _io_rresp_2_bits_ppn_xs_T_4 & io_rresp_2_bits_ppn_ppn_res_1; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_2_bits_ppn_xs_T_7 = hitVecReg_2_2 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_2_bits_ppn_xs_2 = _io_rresp_2_bits_ppn_xs_T_7 & io_rresp_2_bits_ppn_ppn_res_2; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_2_bits_ppn_xs_T_10 = hitVecReg_2_3 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_2_bits_ppn_xs_3 = _io_rresp_2_bits_ppn_xs_T_10 & io_rresp_2_bits_ppn_ppn_res_3; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_2_bits_ppn_T = io_rresp_2_bits_ppn_xs_0 | io_rresp_2_bits_ppn_xs_1; // @[ParallelMux.scala 37:55]
  wire [23:0] _io_rresp_2_bits_ppn_T_1 = io_rresp_2_bits_ppn_xs_2 | io_rresp_2_bits_ppn_xs_3; // @[ParallelMux.scala 37:55]
  wire [13:0] _io_rresp_2_bits_perm_xs_T_1 = hitVecReg_2_0 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_2_bits_perm_xs_T_3 = _io_rresp_2_bits_perm_xs_T_1 & _io_rresp_0_bits_perm_xs_T_2; // @[ParallelMux.scala 65:65]
  wire  io_rresp_2_bits_perm_xs_0_pm_atomic = _io_rresp_2_bits_perm_xs_T_3[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_pm_c = _io_rresp_2_bits_perm_xs_T_3[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_pm_x = _io_rresp_2_bits_perm_xs_T_3[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_pm_w = _io_rresp_2_bits_perm_xs_T_3[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_pm_r = _io_rresp_2_bits_perm_xs_T_3[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_r = _io_rresp_2_bits_perm_xs_T_3[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_w = _io_rresp_2_bits_perm_xs_T_3[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_x = _io_rresp_2_bits_perm_xs_T_3[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_u = _io_rresp_2_bits_perm_xs_T_3[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_g = _io_rresp_2_bits_perm_xs_T_3[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_a = _io_rresp_2_bits_perm_xs_T_3[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_d = _io_rresp_2_bits_perm_xs_T_3[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_af = _io_rresp_2_bits_perm_xs_T_3[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_0_pf = _io_rresp_2_bits_perm_xs_T_3[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_2_bits_perm_xs_T_19 = hitVecReg_2_1 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_2_bits_perm_xs_T_21 = _io_rresp_2_bits_perm_xs_T_19 & _io_rresp_0_bits_perm_xs_T_20; // @[ParallelMux.scala 65:65]
  wire  io_rresp_2_bits_perm_xs_1_pm_atomic = _io_rresp_2_bits_perm_xs_T_21[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_pm_c = _io_rresp_2_bits_perm_xs_T_21[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_pm_x = _io_rresp_2_bits_perm_xs_T_21[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_pm_w = _io_rresp_2_bits_perm_xs_T_21[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_pm_r = _io_rresp_2_bits_perm_xs_T_21[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_r = _io_rresp_2_bits_perm_xs_T_21[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_w = _io_rresp_2_bits_perm_xs_T_21[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_x = _io_rresp_2_bits_perm_xs_T_21[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_u = _io_rresp_2_bits_perm_xs_T_21[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_g = _io_rresp_2_bits_perm_xs_T_21[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_a = _io_rresp_2_bits_perm_xs_T_21[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_d = _io_rresp_2_bits_perm_xs_T_21[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_af = _io_rresp_2_bits_perm_xs_T_21[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_1_pf = _io_rresp_2_bits_perm_xs_T_21[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_2_bits_perm_xs_T_37 = hitVecReg_2_2 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_2_bits_perm_xs_T_39 = _io_rresp_2_bits_perm_xs_T_37 & _io_rresp_0_bits_perm_xs_T_38; // @[ParallelMux.scala 65:65]
  wire  io_rresp_2_bits_perm_xs_2_pm_atomic = _io_rresp_2_bits_perm_xs_T_39[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_pm_c = _io_rresp_2_bits_perm_xs_T_39[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_pm_x = _io_rresp_2_bits_perm_xs_T_39[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_pm_w = _io_rresp_2_bits_perm_xs_T_39[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_pm_r = _io_rresp_2_bits_perm_xs_T_39[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_r = _io_rresp_2_bits_perm_xs_T_39[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_w = _io_rresp_2_bits_perm_xs_T_39[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_x = _io_rresp_2_bits_perm_xs_T_39[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_u = _io_rresp_2_bits_perm_xs_T_39[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_g = _io_rresp_2_bits_perm_xs_T_39[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_a = _io_rresp_2_bits_perm_xs_T_39[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_d = _io_rresp_2_bits_perm_xs_T_39[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_af = _io_rresp_2_bits_perm_xs_T_39[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_2_pf = _io_rresp_2_bits_perm_xs_T_39[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_2_bits_perm_xs_T_55 = hitVecReg_2_3 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_2_bits_perm_xs_T_57 = _io_rresp_2_bits_perm_xs_T_55 & _io_rresp_0_bits_perm_xs_T_56; // @[ParallelMux.scala 65:65]
  wire  io_rresp_2_bits_perm_xs_3_pm_atomic = _io_rresp_2_bits_perm_xs_T_57[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_pm_c = _io_rresp_2_bits_perm_xs_T_57[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_pm_x = _io_rresp_2_bits_perm_xs_T_57[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_pm_w = _io_rresp_2_bits_perm_xs_T_57[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_pm_r = _io_rresp_2_bits_perm_xs_T_57[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_r = _io_rresp_2_bits_perm_xs_T_57[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_w = _io_rresp_2_bits_perm_xs_T_57[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_x = _io_rresp_2_bits_perm_xs_T_57[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_u = _io_rresp_2_bits_perm_xs_T_57[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_g = _io_rresp_2_bits_perm_xs_T_57[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_a = _io_rresp_2_bits_perm_xs_T_57[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_d = _io_rresp_2_bits_perm_xs_T_57[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_af = _io_rresp_2_bits_perm_xs_T_57[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_2_bits_perm_xs_3_pf = _io_rresp_2_bits_perm_xs_T_57[13]; // @[ParallelMux.scala 65:87]
  wire [6:0] io_rresp_2_bits_perm_lo = {io_rresp_2_bits_perm_xs_0_w,io_rresp_2_bits_perm_xs_0_r,
    io_rresp_2_bits_perm_xs_0_pm_r,io_rresp_2_bits_perm_xs_0_pm_w,io_rresp_2_bits_perm_xs_0_pm_x,
    io_rresp_2_bits_perm_xs_0_pm_c,io_rresp_2_bits_perm_xs_0_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_2_bits_perm_T = {io_rresp_2_bits_perm_xs_0_pf,io_rresp_2_bits_perm_xs_0_af,
    io_rresp_2_bits_perm_xs_0_d,io_rresp_2_bits_perm_xs_0_a,io_rresp_2_bits_perm_xs_0_g,io_rresp_2_bits_perm_xs_0_u,
    io_rresp_2_bits_perm_xs_0_x,io_rresp_2_bits_perm_lo}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_2_bits_perm_lo_1 = {io_rresp_2_bits_perm_xs_1_w,io_rresp_2_bits_perm_xs_1_r,
    io_rresp_2_bits_perm_xs_1_pm_r,io_rresp_2_bits_perm_xs_1_pm_w,io_rresp_2_bits_perm_xs_1_pm_x,
    io_rresp_2_bits_perm_xs_1_pm_c,io_rresp_2_bits_perm_xs_1_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_2_bits_perm_T_1 = {io_rresp_2_bits_perm_xs_1_pf,io_rresp_2_bits_perm_xs_1_af,
    io_rresp_2_bits_perm_xs_1_d,io_rresp_2_bits_perm_xs_1_a,io_rresp_2_bits_perm_xs_1_g,io_rresp_2_bits_perm_xs_1_u,
    io_rresp_2_bits_perm_xs_1_x,io_rresp_2_bits_perm_lo_1}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_2_bits_perm_T_2 = _io_rresp_2_bits_perm_T | _io_rresp_2_bits_perm_T_1; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_2_bits_perm_lo_2 = {io_rresp_2_bits_perm_xs_2_w,io_rresp_2_bits_perm_xs_2_r,
    io_rresp_2_bits_perm_xs_2_pm_r,io_rresp_2_bits_perm_xs_2_pm_w,io_rresp_2_bits_perm_xs_2_pm_x,
    io_rresp_2_bits_perm_xs_2_pm_c,io_rresp_2_bits_perm_xs_2_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_2_bits_perm_T_17 = {io_rresp_2_bits_perm_xs_2_pf,io_rresp_2_bits_perm_xs_2_af,
    io_rresp_2_bits_perm_xs_2_d,io_rresp_2_bits_perm_xs_2_a,io_rresp_2_bits_perm_xs_2_g,io_rresp_2_bits_perm_xs_2_u,
    io_rresp_2_bits_perm_xs_2_x,io_rresp_2_bits_perm_lo_2}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_2_bits_perm_lo_3 = {io_rresp_2_bits_perm_xs_3_w,io_rresp_2_bits_perm_xs_3_r,
    io_rresp_2_bits_perm_xs_3_pm_r,io_rresp_2_bits_perm_xs_3_pm_w,io_rresp_2_bits_perm_xs_3_pm_x,
    io_rresp_2_bits_perm_xs_3_pm_c,io_rresp_2_bits_perm_xs_3_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_2_bits_perm_T_18 = {io_rresp_2_bits_perm_xs_3_pf,io_rresp_2_bits_perm_xs_3_af,
    io_rresp_2_bits_perm_xs_3_d,io_rresp_2_bits_perm_xs_3_a,io_rresp_2_bits_perm_xs_3_g,io_rresp_2_bits_perm_xs_3_u,
    io_rresp_2_bits_perm_xs_3_x,io_rresp_2_bits_perm_lo_3}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_2_bits_perm_T_19 = _io_rresp_2_bits_perm_T_17 | _io_rresp_2_bits_perm_T_18; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_2_bits_perm_lo_4 = {_io_rresp_2_bits_perm_T_2[6],_io_rresp_2_bits_perm_T_2[5],
    _io_rresp_2_bits_perm_T_2[4],_io_rresp_2_bits_perm_T_2[3],_io_rresp_2_bits_perm_T_2[2],_io_rresp_2_bits_perm_T_2
    [1],_io_rresp_2_bits_perm_T_2[0]}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_2_bits_perm_T_34 = {_io_rresp_2_bits_perm_T_2[13],_io_rresp_2_bits_perm_T_2[12],
    _io_rresp_2_bits_perm_T_2[11],_io_rresp_2_bits_perm_T_2[10],_io_rresp_2_bits_perm_T_2[9],
    _io_rresp_2_bits_perm_T_2[8],_io_rresp_2_bits_perm_T_2[7],io_rresp_2_bits_perm_lo_4}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_2_bits_perm_lo_5 = {_io_rresp_2_bits_perm_T_19[6],_io_rresp_2_bits_perm_T_19[5],
    _io_rresp_2_bits_perm_T_19[4],_io_rresp_2_bits_perm_T_19[3],_io_rresp_2_bits_perm_T_19[2],
    _io_rresp_2_bits_perm_T_19[1],_io_rresp_2_bits_perm_T_19[0]}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_2_bits_perm_T_35 = {_io_rresp_2_bits_perm_T_19[13],_io_rresp_2_bits_perm_T_19[12],
    _io_rresp_2_bits_perm_T_19[11],_io_rresp_2_bits_perm_T_19[10],_io_rresp_2_bits_perm_T_19[9],
    _io_rresp_2_bits_perm_T_19[8],_io_rresp_2_bits_perm_T_19[7],io_rresp_2_bits_perm_lo_5}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_2_bits_perm_T_36 = _io_rresp_2_bits_perm_T_34 | _io_rresp_2_bits_perm_T_35; // @[ParallelMux.scala 37:55]
  wire [3:0] _io_rresp_hit_sameCycle_2_T = {hitVec_2_0,hitVec_2_1,hitVec_2_2,hitVec_2_3}; // @[Cat.scala 31:58]
  wire [3:0] _io_access_2_touch_ways_bits_T = {hitVecReg_2_3,hitVecReg_2_2,hitVecReg_2_1,hitVecReg_2_0}; // @[OneHot.scala 22:45]
  wire [1:0] io_access_2_touch_ways_bits_hi_1 = _io_access_2_touch_ways_bits_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_access_2_touch_ways_bits_lo_1 = _io_access_2_touch_ways_bits_T[1:0]; // @[OneHot.scala 31:18]
  wire  _io_access_2_touch_ways_bits_T_1 = |io_access_2_touch_ways_bits_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_access_2_touch_ways_bits_T_2 = io_access_2_touch_ways_bits_hi_1 | io_access_2_touch_ways_bits_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] _io_access_2_touch_ways_bits_T_4 = {_io_access_2_touch_ways_bits_T_1,_io_access_2_touch_ways_bits_T_2[1]}; // @[Cat.scala 31:58]
  wire  _vpn_reg_T_3 = io_rreq_3_ready & io_rreq_3_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg_3; // @[Reg.scala 16:16]
  wire  _hitVec_T_150 = entries_0_tag[17:9] == io_rreq_3_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_152 = entries_0_tag == io_rreq_3_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_154 = entries_0_level ? _hitVec_T_152 : _hitVec_T_150; // @[Mux.scala 81:58]
  wire  _hitVec_T_155 = hitVec_asid_hit & _hitVec_T_154; // @[MMUBundle.scala 203:36]
  wire  hitVec_3_0 = _hitVec_T_155 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_161 = entries_1_tag[17:9] == io_rreq_3_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_163 = entries_1_tag == io_rreq_3_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_165 = entries_1_level ? _hitVec_T_163 : _hitVec_T_161; // @[Mux.scala 81:58]
  wire  _hitVec_T_166 = hitVec_asid_hit_1 & _hitVec_T_165; // @[MMUBundle.scala 203:36]
  wire  hitVec_3_1 = _hitVec_T_166 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_172 = entries_2_tag[17:9] == io_rreq_3_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_174 = entries_2_tag == io_rreq_3_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_176 = entries_2_level ? _hitVec_T_174 : _hitVec_T_172; // @[Mux.scala 81:58]
  wire  _hitVec_T_177 = hitVec_asid_hit_2 & _hitVec_T_176; // @[MMUBundle.scala 203:36]
  wire  hitVec_3_2 = _hitVec_T_177 & v_2 & ~refill_mask[2]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_183 = entries_3_tag[17:9] == io_rreq_3_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_185 = entries_3_tag == io_rreq_3_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_187 = entries_3_level ? _hitVec_T_185 : _hitVec_T_183; // @[Mux.scala 81:58]
  wire  _hitVec_T_188 = hitVec_asid_hit_3 & _hitVec_T_187; // @[MMUBundle.scala 203:36]
  wire  hitVec_3_3 = _hitVec_T_188 & v_3 & ~refill_mask[3]; // @[TLBStorage.scala 56:139]
  reg  hitVecReg_3_0; // @[Reg.scala 16:16]
  reg  hitVecReg_3_1; // @[Reg.scala 16:16]
  reg  hitVecReg_3_2; // @[Reg.scala 16:16]
  reg  hitVecReg_3_3; // @[Reg.scala 16:16]
  reg  io_rresp_3_valid_REG; // @[TLBStorage.scala 62:58]
  wire [3:0] _io_rresp_3_bits_hit_T = {hitVecReg_3_0,hitVecReg_3_1,hitVecReg_3_2,hitVecReg_3_3}; // @[Cat.scala 31:58]
  wire  _io_rresp_3_bits_hit_T_1 = |_io_rresp_3_bits_hit_T; // @[TLBStorage.scala 63:37]
  wire [23:0] _io_rresp_3_bits_ppn_ppn_res_T_2 = {entries_0_ppn[14:9],vpn_reg_3[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_3_bits_ppn_ppn_res_T_4 = {entries_0_ppn,vpn_reg_3[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_3_bits_ppn_ppn_res = entries_0_level ? _io_rresp_3_bits_ppn_ppn_res_T_4 :
    _io_rresp_3_bits_ppn_ppn_res_T_2; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_3_bits_ppn_ppn_res_T_8 = {entries_1_ppn[14:9],vpn_reg_3[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_3_bits_ppn_ppn_res_T_10 = {entries_1_ppn,vpn_reg_3[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_3_bits_ppn_ppn_res_1 = entries_1_level ? _io_rresp_3_bits_ppn_ppn_res_T_10 :
    _io_rresp_3_bits_ppn_ppn_res_T_8; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_3_bits_ppn_ppn_res_T_14 = {entries_2_ppn[14:9],vpn_reg_3[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_3_bits_ppn_ppn_res_T_16 = {entries_2_ppn,vpn_reg_3[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_3_bits_ppn_ppn_res_2 = entries_2_level ? _io_rresp_3_bits_ppn_ppn_res_T_16 :
    _io_rresp_3_bits_ppn_ppn_res_T_14; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_3_bits_ppn_ppn_res_T_20 = {entries_3_ppn[14:9],vpn_reg_3[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_3_bits_ppn_ppn_res_T_22 = {entries_3_ppn,vpn_reg_3[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_3_bits_ppn_ppn_res_3 = entries_3_level ? _io_rresp_3_bits_ppn_ppn_res_T_22 :
    _io_rresp_3_bits_ppn_ppn_res_T_20; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_3_bits_ppn_xs_T_1 = hitVecReg_3_0 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_3_bits_ppn_xs_0 = _io_rresp_3_bits_ppn_xs_T_1 & io_rresp_3_bits_ppn_ppn_res; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_3_bits_ppn_xs_T_4 = hitVecReg_3_1 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_3_bits_ppn_xs_1 = _io_rresp_3_bits_ppn_xs_T_4 & io_rresp_3_bits_ppn_ppn_res_1; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_3_bits_ppn_xs_T_7 = hitVecReg_3_2 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_3_bits_ppn_xs_2 = _io_rresp_3_bits_ppn_xs_T_7 & io_rresp_3_bits_ppn_ppn_res_2; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_3_bits_ppn_xs_T_10 = hitVecReg_3_3 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_3_bits_ppn_xs_3 = _io_rresp_3_bits_ppn_xs_T_10 & io_rresp_3_bits_ppn_ppn_res_3; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_3_bits_ppn_T = io_rresp_3_bits_ppn_xs_0 | io_rresp_3_bits_ppn_xs_1; // @[ParallelMux.scala 37:55]
  wire [23:0] _io_rresp_3_bits_ppn_T_1 = io_rresp_3_bits_ppn_xs_2 | io_rresp_3_bits_ppn_xs_3; // @[ParallelMux.scala 37:55]
  wire [13:0] _io_rresp_3_bits_perm_xs_T_1 = hitVecReg_3_0 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_3_bits_perm_xs_T_3 = _io_rresp_3_bits_perm_xs_T_1 & _io_rresp_0_bits_perm_xs_T_2; // @[ParallelMux.scala 65:65]
  wire  io_rresp_3_bits_perm_xs_0_pm_atomic = _io_rresp_3_bits_perm_xs_T_3[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_pm_c = _io_rresp_3_bits_perm_xs_T_3[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_pm_x = _io_rresp_3_bits_perm_xs_T_3[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_pm_w = _io_rresp_3_bits_perm_xs_T_3[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_pm_r = _io_rresp_3_bits_perm_xs_T_3[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_r = _io_rresp_3_bits_perm_xs_T_3[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_w = _io_rresp_3_bits_perm_xs_T_3[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_x = _io_rresp_3_bits_perm_xs_T_3[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_u = _io_rresp_3_bits_perm_xs_T_3[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_g = _io_rresp_3_bits_perm_xs_T_3[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_a = _io_rresp_3_bits_perm_xs_T_3[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_d = _io_rresp_3_bits_perm_xs_T_3[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_af = _io_rresp_3_bits_perm_xs_T_3[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_0_pf = _io_rresp_3_bits_perm_xs_T_3[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_3_bits_perm_xs_T_19 = hitVecReg_3_1 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_3_bits_perm_xs_T_21 = _io_rresp_3_bits_perm_xs_T_19 & _io_rresp_0_bits_perm_xs_T_20; // @[ParallelMux.scala 65:65]
  wire  io_rresp_3_bits_perm_xs_1_pm_atomic = _io_rresp_3_bits_perm_xs_T_21[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_pm_c = _io_rresp_3_bits_perm_xs_T_21[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_pm_x = _io_rresp_3_bits_perm_xs_T_21[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_pm_w = _io_rresp_3_bits_perm_xs_T_21[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_pm_r = _io_rresp_3_bits_perm_xs_T_21[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_r = _io_rresp_3_bits_perm_xs_T_21[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_w = _io_rresp_3_bits_perm_xs_T_21[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_x = _io_rresp_3_bits_perm_xs_T_21[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_u = _io_rresp_3_bits_perm_xs_T_21[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_g = _io_rresp_3_bits_perm_xs_T_21[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_a = _io_rresp_3_bits_perm_xs_T_21[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_d = _io_rresp_3_bits_perm_xs_T_21[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_af = _io_rresp_3_bits_perm_xs_T_21[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_1_pf = _io_rresp_3_bits_perm_xs_T_21[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_3_bits_perm_xs_T_37 = hitVecReg_3_2 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_3_bits_perm_xs_T_39 = _io_rresp_3_bits_perm_xs_T_37 & _io_rresp_0_bits_perm_xs_T_38; // @[ParallelMux.scala 65:65]
  wire  io_rresp_3_bits_perm_xs_2_pm_atomic = _io_rresp_3_bits_perm_xs_T_39[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_pm_c = _io_rresp_3_bits_perm_xs_T_39[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_pm_x = _io_rresp_3_bits_perm_xs_T_39[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_pm_w = _io_rresp_3_bits_perm_xs_T_39[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_pm_r = _io_rresp_3_bits_perm_xs_T_39[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_r = _io_rresp_3_bits_perm_xs_T_39[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_w = _io_rresp_3_bits_perm_xs_T_39[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_x = _io_rresp_3_bits_perm_xs_T_39[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_u = _io_rresp_3_bits_perm_xs_T_39[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_g = _io_rresp_3_bits_perm_xs_T_39[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_a = _io_rresp_3_bits_perm_xs_T_39[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_d = _io_rresp_3_bits_perm_xs_T_39[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_af = _io_rresp_3_bits_perm_xs_T_39[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_2_pf = _io_rresp_3_bits_perm_xs_T_39[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_3_bits_perm_xs_T_55 = hitVecReg_3_3 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_3_bits_perm_xs_T_57 = _io_rresp_3_bits_perm_xs_T_55 & _io_rresp_0_bits_perm_xs_T_56; // @[ParallelMux.scala 65:65]
  wire  io_rresp_3_bits_perm_xs_3_pm_atomic = _io_rresp_3_bits_perm_xs_T_57[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_pm_c = _io_rresp_3_bits_perm_xs_T_57[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_pm_x = _io_rresp_3_bits_perm_xs_T_57[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_pm_w = _io_rresp_3_bits_perm_xs_T_57[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_pm_r = _io_rresp_3_bits_perm_xs_T_57[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_r = _io_rresp_3_bits_perm_xs_T_57[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_w = _io_rresp_3_bits_perm_xs_T_57[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_x = _io_rresp_3_bits_perm_xs_T_57[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_u = _io_rresp_3_bits_perm_xs_T_57[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_g = _io_rresp_3_bits_perm_xs_T_57[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_a = _io_rresp_3_bits_perm_xs_T_57[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_d = _io_rresp_3_bits_perm_xs_T_57[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_af = _io_rresp_3_bits_perm_xs_T_57[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_3_bits_perm_xs_3_pf = _io_rresp_3_bits_perm_xs_T_57[13]; // @[ParallelMux.scala 65:87]
  wire [6:0] io_rresp_3_bits_perm_lo = {io_rresp_3_bits_perm_xs_0_w,io_rresp_3_bits_perm_xs_0_r,
    io_rresp_3_bits_perm_xs_0_pm_r,io_rresp_3_bits_perm_xs_0_pm_w,io_rresp_3_bits_perm_xs_0_pm_x,
    io_rresp_3_bits_perm_xs_0_pm_c,io_rresp_3_bits_perm_xs_0_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_3_bits_perm_T = {io_rresp_3_bits_perm_xs_0_pf,io_rresp_3_bits_perm_xs_0_af,
    io_rresp_3_bits_perm_xs_0_d,io_rresp_3_bits_perm_xs_0_a,io_rresp_3_bits_perm_xs_0_g,io_rresp_3_bits_perm_xs_0_u,
    io_rresp_3_bits_perm_xs_0_x,io_rresp_3_bits_perm_lo}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_3_bits_perm_lo_1 = {io_rresp_3_bits_perm_xs_1_w,io_rresp_3_bits_perm_xs_1_r,
    io_rresp_3_bits_perm_xs_1_pm_r,io_rresp_3_bits_perm_xs_1_pm_w,io_rresp_3_bits_perm_xs_1_pm_x,
    io_rresp_3_bits_perm_xs_1_pm_c,io_rresp_3_bits_perm_xs_1_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_3_bits_perm_T_1 = {io_rresp_3_bits_perm_xs_1_pf,io_rresp_3_bits_perm_xs_1_af,
    io_rresp_3_bits_perm_xs_1_d,io_rresp_3_bits_perm_xs_1_a,io_rresp_3_bits_perm_xs_1_g,io_rresp_3_bits_perm_xs_1_u,
    io_rresp_3_bits_perm_xs_1_x,io_rresp_3_bits_perm_lo_1}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_3_bits_perm_T_2 = _io_rresp_3_bits_perm_T | _io_rresp_3_bits_perm_T_1; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_3_bits_perm_lo_2 = {io_rresp_3_bits_perm_xs_2_w,io_rresp_3_bits_perm_xs_2_r,
    io_rresp_3_bits_perm_xs_2_pm_r,io_rresp_3_bits_perm_xs_2_pm_w,io_rresp_3_bits_perm_xs_2_pm_x,
    io_rresp_3_bits_perm_xs_2_pm_c,io_rresp_3_bits_perm_xs_2_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_3_bits_perm_T_17 = {io_rresp_3_bits_perm_xs_2_pf,io_rresp_3_bits_perm_xs_2_af,
    io_rresp_3_bits_perm_xs_2_d,io_rresp_3_bits_perm_xs_2_a,io_rresp_3_bits_perm_xs_2_g,io_rresp_3_bits_perm_xs_2_u,
    io_rresp_3_bits_perm_xs_2_x,io_rresp_3_bits_perm_lo_2}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_3_bits_perm_lo_3 = {io_rresp_3_bits_perm_xs_3_w,io_rresp_3_bits_perm_xs_3_r,
    io_rresp_3_bits_perm_xs_3_pm_r,io_rresp_3_bits_perm_xs_3_pm_w,io_rresp_3_bits_perm_xs_3_pm_x,
    io_rresp_3_bits_perm_xs_3_pm_c,io_rresp_3_bits_perm_xs_3_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_3_bits_perm_T_18 = {io_rresp_3_bits_perm_xs_3_pf,io_rresp_3_bits_perm_xs_3_af,
    io_rresp_3_bits_perm_xs_3_d,io_rresp_3_bits_perm_xs_3_a,io_rresp_3_bits_perm_xs_3_g,io_rresp_3_bits_perm_xs_3_u,
    io_rresp_3_bits_perm_xs_3_x,io_rresp_3_bits_perm_lo_3}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_3_bits_perm_T_19 = _io_rresp_3_bits_perm_T_17 | _io_rresp_3_bits_perm_T_18; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_3_bits_perm_lo_4 = {_io_rresp_3_bits_perm_T_2[6],_io_rresp_3_bits_perm_T_2[5],
    _io_rresp_3_bits_perm_T_2[4],_io_rresp_3_bits_perm_T_2[3],_io_rresp_3_bits_perm_T_2[2],_io_rresp_3_bits_perm_T_2
    [1],_io_rresp_3_bits_perm_T_2[0]}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_3_bits_perm_T_34 = {_io_rresp_3_bits_perm_T_2[13],_io_rresp_3_bits_perm_T_2[12],
    _io_rresp_3_bits_perm_T_2[11],_io_rresp_3_bits_perm_T_2[10],_io_rresp_3_bits_perm_T_2[9],
    _io_rresp_3_bits_perm_T_2[8],_io_rresp_3_bits_perm_T_2[7],io_rresp_3_bits_perm_lo_4}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_3_bits_perm_lo_5 = {_io_rresp_3_bits_perm_T_19[6],_io_rresp_3_bits_perm_T_19[5],
    _io_rresp_3_bits_perm_T_19[4],_io_rresp_3_bits_perm_T_19[3],_io_rresp_3_bits_perm_T_19[2],
    _io_rresp_3_bits_perm_T_19[1],_io_rresp_3_bits_perm_T_19[0]}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_3_bits_perm_T_35 = {_io_rresp_3_bits_perm_T_19[13],_io_rresp_3_bits_perm_T_19[12],
    _io_rresp_3_bits_perm_T_19[11],_io_rresp_3_bits_perm_T_19[10],_io_rresp_3_bits_perm_T_19[9],
    _io_rresp_3_bits_perm_T_19[8],_io_rresp_3_bits_perm_T_19[7],io_rresp_3_bits_perm_lo_5}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_3_bits_perm_T_36 = _io_rresp_3_bits_perm_T_34 | _io_rresp_3_bits_perm_T_35; // @[ParallelMux.scala 37:55]
  wire [3:0] _io_rresp_hit_sameCycle_3_T = {hitVec_3_0,hitVec_3_1,hitVec_3_2,hitVec_3_3}; // @[Cat.scala 31:58]
  wire [3:0] _io_access_3_touch_ways_bits_T = {hitVecReg_3_3,hitVecReg_3_2,hitVecReg_3_1,hitVecReg_3_0}; // @[OneHot.scala 22:45]
  wire [1:0] io_access_3_touch_ways_bits_hi_1 = _io_access_3_touch_ways_bits_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_access_3_touch_ways_bits_lo_1 = _io_access_3_touch_ways_bits_T[1:0]; // @[OneHot.scala 31:18]
  wire  _io_access_3_touch_ways_bits_T_1 = |io_access_3_touch_ways_bits_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_access_3_touch_ways_bits_T_2 = io_access_3_touch_ways_bits_hi_1 | io_access_3_touch_ways_bits_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] _io_access_3_touch_ways_bits_T_4 = {_io_access_3_touch_ways_bits_T_1,_io_access_3_touch_ways_bits_T_2[1]}; // @[Cat.scala 31:58]
  wire  _vpn_reg_T_4 = io_rreq_4_ready & io_rreq_4_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg_4; // @[Reg.scala 16:16]
  wire  _hitVec_T_198 = entries_0_tag[17:9] == io_rreq_4_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_200 = entries_0_tag == io_rreq_4_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_202 = entries_0_level ? _hitVec_T_200 : _hitVec_T_198; // @[Mux.scala 81:58]
  wire  _hitVec_T_203 = hitVec_asid_hit & _hitVec_T_202; // @[MMUBundle.scala 203:36]
  wire  hitVec_4_0 = _hitVec_T_203 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_209 = entries_1_tag[17:9] == io_rreq_4_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_211 = entries_1_tag == io_rreq_4_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_213 = entries_1_level ? _hitVec_T_211 : _hitVec_T_209; // @[Mux.scala 81:58]
  wire  _hitVec_T_214 = hitVec_asid_hit_1 & _hitVec_T_213; // @[MMUBundle.scala 203:36]
  wire  hitVec_4_1 = _hitVec_T_214 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_220 = entries_2_tag[17:9] == io_rreq_4_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_222 = entries_2_tag == io_rreq_4_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_224 = entries_2_level ? _hitVec_T_222 : _hitVec_T_220; // @[Mux.scala 81:58]
  wire  _hitVec_T_225 = hitVec_asid_hit_2 & _hitVec_T_224; // @[MMUBundle.scala 203:36]
  wire  hitVec_4_2 = _hitVec_T_225 & v_2 & ~refill_mask[2]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_231 = entries_3_tag[17:9] == io_rreq_4_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_233 = entries_3_tag == io_rreq_4_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_235 = entries_3_level ? _hitVec_T_233 : _hitVec_T_231; // @[Mux.scala 81:58]
  wire  _hitVec_T_236 = hitVec_asid_hit_3 & _hitVec_T_235; // @[MMUBundle.scala 203:36]
  wire  hitVec_4_3 = _hitVec_T_236 & v_3 & ~refill_mask[3]; // @[TLBStorage.scala 56:139]
  reg  hitVecReg_4_0; // @[Reg.scala 16:16]
  reg  hitVecReg_4_1; // @[Reg.scala 16:16]
  reg  hitVecReg_4_2; // @[Reg.scala 16:16]
  reg  hitVecReg_4_3; // @[Reg.scala 16:16]
  reg  io_rresp_4_valid_REG; // @[TLBStorage.scala 62:58]
  wire [3:0] _io_rresp_4_bits_hit_T = {hitVecReg_4_0,hitVecReg_4_1,hitVecReg_4_2,hitVecReg_4_3}; // @[Cat.scala 31:58]
  wire  _io_rresp_4_bits_hit_T_1 = |_io_rresp_4_bits_hit_T; // @[TLBStorage.scala 63:37]
  wire [23:0] _io_rresp_4_bits_ppn_ppn_res_T_2 = {entries_0_ppn[14:9],vpn_reg_4[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_4_bits_ppn_ppn_res_T_4 = {entries_0_ppn,vpn_reg_4[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_4_bits_ppn_ppn_res = entries_0_level ? _io_rresp_4_bits_ppn_ppn_res_T_4 :
    _io_rresp_4_bits_ppn_ppn_res_T_2; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_4_bits_ppn_ppn_res_T_8 = {entries_1_ppn[14:9],vpn_reg_4[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_4_bits_ppn_ppn_res_T_10 = {entries_1_ppn,vpn_reg_4[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_4_bits_ppn_ppn_res_1 = entries_1_level ? _io_rresp_4_bits_ppn_ppn_res_T_10 :
    _io_rresp_4_bits_ppn_ppn_res_T_8; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_4_bits_ppn_ppn_res_T_14 = {entries_2_ppn[14:9],vpn_reg_4[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_4_bits_ppn_ppn_res_T_16 = {entries_2_ppn,vpn_reg_4[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_4_bits_ppn_ppn_res_2 = entries_2_level ? _io_rresp_4_bits_ppn_ppn_res_T_16 :
    _io_rresp_4_bits_ppn_ppn_res_T_14; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_4_bits_ppn_ppn_res_T_20 = {entries_3_ppn[14:9],vpn_reg_4[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_4_bits_ppn_ppn_res_T_22 = {entries_3_ppn,vpn_reg_4[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_4_bits_ppn_ppn_res_3 = entries_3_level ? _io_rresp_4_bits_ppn_ppn_res_T_22 :
    _io_rresp_4_bits_ppn_ppn_res_T_20; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_4_bits_ppn_xs_T_1 = hitVecReg_4_0 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_4_bits_ppn_xs_0 = _io_rresp_4_bits_ppn_xs_T_1 & io_rresp_4_bits_ppn_ppn_res; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_4_bits_ppn_xs_T_4 = hitVecReg_4_1 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_4_bits_ppn_xs_1 = _io_rresp_4_bits_ppn_xs_T_4 & io_rresp_4_bits_ppn_ppn_res_1; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_4_bits_ppn_xs_T_7 = hitVecReg_4_2 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_4_bits_ppn_xs_2 = _io_rresp_4_bits_ppn_xs_T_7 & io_rresp_4_bits_ppn_ppn_res_2; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_4_bits_ppn_xs_T_10 = hitVecReg_4_3 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_4_bits_ppn_xs_3 = _io_rresp_4_bits_ppn_xs_T_10 & io_rresp_4_bits_ppn_ppn_res_3; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_4_bits_ppn_T = io_rresp_4_bits_ppn_xs_0 | io_rresp_4_bits_ppn_xs_1; // @[ParallelMux.scala 37:55]
  wire [23:0] _io_rresp_4_bits_ppn_T_1 = io_rresp_4_bits_ppn_xs_2 | io_rresp_4_bits_ppn_xs_3; // @[ParallelMux.scala 37:55]
  wire [13:0] _io_rresp_4_bits_perm_xs_T_1 = hitVecReg_4_0 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_4_bits_perm_xs_T_3 = _io_rresp_4_bits_perm_xs_T_1 & _io_rresp_0_bits_perm_xs_T_2; // @[ParallelMux.scala 65:65]
  wire  io_rresp_4_bits_perm_xs_0_pm_atomic = _io_rresp_4_bits_perm_xs_T_3[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_pm_c = _io_rresp_4_bits_perm_xs_T_3[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_pm_x = _io_rresp_4_bits_perm_xs_T_3[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_pm_w = _io_rresp_4_bits_perm_xs_T_3[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_pm_r = _io_rresp_4_bits_perm_xs_T_3[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_r = _io_rresp_4_bits_perm_xs_T_3[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_w = _io_rresp_4_bits_perm_xs_T_3[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_x = _io_rresp_4_bits_perm_xs_T_3[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_u = _io_rresp_4_bits_perm_xs_T_3[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_g = _io_rresp_4_bits_perm_xs_T_3[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_a = _io_rresp_4_bits_perm_xs_T_3[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_d = _io_rresp_4_bits_perm_xs_T_3[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_af = _io_rresp_4_bits_perm_xs_T_3[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_0_pf = _io_rresp_4_bits_perm_xs_T_3[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_4_bits_perm_xs_T_19 = hitVecReg_4_1 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_4_bits_perm_xs_T_21 = _io_rresp_4_bits_perm_xs_T_19 & _io_rresp_0_bits_perm_xs_T_20; // @[ParallelMux.scala 65:65]
  wire  io_rresp_4_bits_perm_xs_1_pm_atomic = _io_rresp_4_bits_perm_xs_T_21[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_pm_c = _io_rresp_4_bits_perm_xs_T_21[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_pm_x = _io_rresp_4_bits_perm_xs_T_21[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_pm_w = _io_rresp_4_bits_perm_xs_T_21[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_pm_r = _io_rresp_4_bits_perm_xs_T_21[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_r = _io_rresp_4_bits_perm_xs_T_21[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_w = _io_rresp_4_bits_perm_xs_T_21[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_x = _io_rresp_4_bits_perm_xs_T_21[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_u = _io_rresp_4_bits_perm_xs_T_21[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_g = _io_rresp_4_bits_perm_xs_T_21[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_a = _io_rresp_4_bits_perm_xs_T_21[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_d = _io_rresp_4_bits_perm_xs_T_21[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_af = _io_rresp_4_bits_perm_xs_T_21[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_1_pf = _io_rresp_4_bits_perm_xs_T_21[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_4_bits_perm_xs_T_37 = hitVecReg_4_2 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_4_bits_perm_xs_T_39 = _io_rresp_4_bits_perm_xs_T_37 & _io_rresp_0_bits_perm_xs_T_38; // @[ParallelMux.scala 65:65]
  wire  io_rresp_4_bits_perm_xs_2_pm_atomic = _io_rresp_4_bits_perm_xs_T_39[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_pm_c = _io_rresp_4_bits_perm_xs_T_39[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_pm_x = _io_rresp_4_bits_perm_xs_T_39[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_pm_w = _io_rresp_4_bits_perm_xs_T_39[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_pm_r = _io_rresp_4_bits_perm_xs_T_39[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_r = _io_rresp_4_bits_perm_xs_T_39[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_w = _io_rresp_4_bits_perm_xs_T_39[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_x = _io_rresp_4_bits_perm_xs_T_39[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_u = _io_rresp_4_bits_perm_xs_T_39[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_g = _io_rresp_4_bits_perm_xs_T_39[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_a = _io_rresp_4_bits_perm_xs_T_39[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_d = _io_rresp_4_bits_perm_xs_T_39[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_af = _io_rresp_4_bits_perm_xs_T_39[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_2_pf = _io_rresp_4_bits_perm_xs_T_39[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_4_bits_perm_xs_T_55 = hitVecReg_4_3 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_4_bits_perm_xs_T_57 = _io_rresp_4_bits_perm_xs_T_55 & _io_rresp_0_bits_perm_xs_T_56; // @[ParallelMux.scala 65:65]
  wire  io_rresp_4_bits_perm_xs_3_pm_atomic = _io_rresp_4_bits_perm_xs_T_57[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_pm_c = _io_rresp_4_bits_perm_xs_T_57[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_pm_x = _io_rresp_4_bits_perm_xs_T_57[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_pm_w = _io_rresp_4_bits_perm_xs_T_57[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_pm_r = _io_rresp_4_bits_perm_xs_T_57[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_r = _io_rresp_4_bits_perm_xs_T_57[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_w = _io_rresp_4_bits_perm_xs_T_57[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_x = _io_rresp_4_bits_perm_xs_T_57[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_u = _io_rresp_4_bits_perm_xs_T_57[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_g = _io_rresp_4_bits_perm_xs_T_57[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_a = _io_rresp_4_bits_perm_xs_T_57[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_d = _io_rresp_4_bits_perm_xs_T_57[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_af = _io_rresp_4_bits_perm_xs_T_57[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_4_bits_perm_xs_3_pf = _io_rresp_4_bits_perm_xs_T_57[13]; // @[ParallelMux.scala 65:87]
  wire [6:0] io_rresp_4_bits_perm_lo = {io_rresp_4_bits_perm_xs_0_w,io_rresp_4_bits_perm_xs_0_r,
    io_rresp_4_bits_perm_xs_0_pm_r,io_rresp_4_bits_perm_xs_0_pm_w,io_rresp_4_bits_perm_xs_0_pm_x,
    io_rresp_4_bits_perm_xs_0_pm_c,io_rresp_4_bits_perm_xs_0_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_4_bits_perm_T = {io_rresp_4_bits_perm_xs_0_pf,io_rresp_4_bits_perm_xs_0_af,
    io_rresp_4_bits_perm_xs_0_d,io_rresp_4_bits_perm_xs_0_a,io_rresp_4_bits_perm_xs_0_g,io_rresp_4_bits_perm_xs_0_u,
    io_rresp_4_bits_perm_xs_0_x,io_rresp_4_bits_perm_lo}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_4_bits_perm_lo_1 = {io_rresp_4_bits_perm_xs_1_w,io_rresp_4_bits_perm_xs_1_r,
    io_rresp_4_bits_perm_xs_1_pm_r,io_rresp_4_bits_perm_xs_1_pm_w,io_rresp_4_bits_perm_xs_1_pm_x,
    io_rresp_4_bits_perm_xs_1_pm_c,io_rresp_4_bits_perm_xs_1_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_4_bits_perm_T_1 = {io_rresp_4_bits_perm_xs_1_pf,io_rresp_4_bits_perm_xs_1_af,
    io_rresp_4_bits_perm_xs_1_d,io_rresp_4_bits_perm_xs_1_a,io_rresp_4_bits_perm_xs_1_g,io_rresp_4_bits_perm_xs_1_u,
    io_rresp_4_bits_perm_xs_1_x,io_rresp_4_bits_perm_lo_1}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_4_bits_perm_T_2 = _io_rresp_4_bits_perm_T | _io_rresp_4_bits_perm_T_1; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_4_bits_perm_lo_2 = {io_rresp_4_bits_perm_xs_2_w,io_rresp_4_bits_perm_xs_2_r,
    io_rresp_4_bits_perm_xs_2_pm_r,io_rresp_4_bits_perm_xs_2_pm_w,io_rresp_4_bits_perm_xs_2_pm_x,
    io_rresp_4_bits_perm_xs_2_pm_c,io_rresp_4_bits_perm_xs_2_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_4_bits_perm_T_17 = {io_rresp_4_bits_perm_xs_2_pf,io_rresp_4_bits_perm_xs_2_af,
    io_rresp_4_bits_perm_xs_2_d,io_rresp_4_bits_perm_xs_2_a,io_rresp_4_bits_perm_xs_2_g,io_rresp_4_bits_perm_xs_2_u,
    io_rresp_4_bits_perm_xs_2_x,io_rresp_4_bits_perm_lo_2}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_4_bits_perm_lo_3 = {io_rresp_4_bits_perm_xs_3_w,io_rresp_4_bits_perm_xs_3_r,
    io_rresp_4_bits_perm_xs_3_pm_r,io_rresp_4_bits_perm_xs_3_pm_w,io_rresp_4_bits_perm_xs_3_pm_x,
    io_rresp_4_bits_perm_xs_3_pm_c,io_rresp_4_bits_perm_xs_3_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_4_bits_perm_T_18 = {io_rresp_4_bits_perm_xs_3_pf,io_rresp_4_bits_perm_xs_3_af,
    io_rresp_4_bits_perm_xs_3_d,io_rresp_4_bits_perm_xs_3_a,io_rresp_4_bits_perm_xs_3_g,io_rresp_4_bits_perm_xs_3_u,
    io_rresp_4_bits_perm_xs_3_x,io_rresp_4_bits_perm_lo_3}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_4_bits_perm_T_19 = _io_rresp_4_bits_perm_T_17 | _io_rresp_4_bits_perm_T_18; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_4_bits_perm_lo_4 = {_io_rresp_4_bits_perm_T_2[6],_io_rresp_4_bits_perm_T_2[5],
    _io_rresp_4_bits_perm_T_2[4],_io_rresp_4_bits_perm_T_2[3],_io_rresp_4_bits_perm_T_2[2],_io_rresp_4_bits_perm_T_2
    [1],_io_rresp_4_bits_perm_T_2[0]}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_4_bits_perm_T_34 = {_io_rresp_4_bits_perm_T_2[13],_io_rresp_4_bits_perm_T_2[12],
    _io_rresp_4_bits_perm_T_2[11],_io_rresp_4_bits_perm_T_2[10],_io_rresp_4_bits_perm_T_2[9],
    _io_rresp_4_bits_perm_T_2[8],_io_rresp_4_bits_perm_T_2[7],io_rresp_4_bits_perm_lo_4}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_4_bits_perm_lo_5 = {_io_rresp_4_bits_perm_T_19[6],_io_rresp_4_bits_perm_T_19[5],
    _io_rresp_4_bits_perm_T_19[4],_io_rresp_4_bits_perm_T_19[3],_io_rresp_4_bits_perm_T_19[2],
    _io_rresp_4_bits_perm_T_19[1],_io_rresp_4_bits_perm_T_19[0]}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_4_bits_perm_T_35 = {_io_rresp_4_bits_perm_T_19[13],_io_rresp_4_bits_perm_T_19[12],
    _io_rresp_4_bits_perm_T_19[11],_io_rresp_4_bits_perm_T_19[10],_io_rresp_4_bits_perm_T_19[9],
    _io_rresp_4_bits_perm_T_19[8],_io_rresp_4_bits_perm_T_19[7],io_rresp_4_bits_perm_lo_5}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_4_bits_perm_T_36 = _io_rresp_4_bits_perm_T_34 | _io_rresp_4_bits_perm_T_35; // @[ParallelMux.scala 37:55]
  wire [3:0] _io_rresp_hit_sameCycle_4_T = {hitVec_4_0,hitVec_4_1,hitVec_4_2,hitVec_4_3}; // @[Cat.scala 31:58]
  wire [3:0] _io_access_4_touch_ways_bits_T = {hitVecReg_4_3,hitVecReg_4_2,hitVecReg_4_1,hitVecReg_4_0}; // @[OneHot.scala 22:45]
  wire [1:0] io_access_4_touch_ways_bits_hi_1 = _io_access_4_touch_ways_bits_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_access_4_touch_ways_bits_lo_1 = _io_access_4_touch_ways_bits_T[1:0]; // @[OneHot.scala 31:18]
  wire  _io_access_4_touch_ways_bits_T_1 = |io_access_4_touch_ways_bits_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_access_4_touch_ways_bits_T_2 = io_access_4_touch_ways_bits_hi_1 | io_access_4_touch_ways_bits_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] _io_access_4_touch_ways_bits_T_4 = {_io_access_4_touch_ways_bits_T_1,_io_access_4_touch_ways_bits_T_2[1]}; // @[Cat.scala 31:58]
  wire  _vpn_reg_T_5 = io_rreq_5_ready & io_rreq_5_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg_5; // @[Reg.scala 16:16]
  wire  _hitVec_T_246 = entries_0_tag[17:9] == io_rreq_5_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_248 = entries_0_tag == io_rreq_5_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_250 = entries_0_level ? _hitVec_T_248 : _hitVec_T_246; // @[Mux.scala 81:58]
  wire  _hitVec_T_251 = hitVec_asid_hit & _hitVec_T_250; // @[MMUBundle.scala 203:36]
  wire  hitVec_5_0 = _hitVec_T_251 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_257 = entries_1_tag[17:9] == io_rreq_5_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_259 = entries_1_tag == io_rreq_5_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_261 = entries_1_level ? _hitVec_T_259 : _hitVec_T_257; // @[Mux.scala 81:58]
  wire  _hitVec_T_262 = hitVec_asid_hit_1 & _hitVec_T_261; // @[MMUBundle.scala 203:36]
  wire  hitVec_5_1 = _hitVec_T_262 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_268 = entries_2_tag[17:9] == io_rreq_5_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_270 = entries_2_tag == io_rreq_5_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_272 = entries_2_level ? _hitVec_T_270 : _hitVec_T_268; // @[Mux.scala 81:58]
  wire  _hitVec_T_273 = hitVec_asid_hit_2 & _hitVec_T_272; // @[MMUBundle.scala 203:36]
  wire  hitVec_5_2 = _hitVec_T_273 & v_2 & ~refill_mask[2]; // @[TLBStorage.scala 56:139]
  wire  _hitVec_T_279 = entries_3_tag[17:9] == io_rreq_5_bits_vpn[26:18]; // @[MMUBundle.scala 204:41]
  wire  _hitVec_T_281 = entries_3_tag == io_rreq_5_bits_vpn[26:9]; // @[MMUBundle.scala 205:19]
  wire  _hitVec_T_283 = entries_3_level ? _hitVec_T_281 : _hitVec_T_279; // @[Mux.scala 81:58]
  wire  _hitVec_T_284 = hitVec_asid_hit_3 & _hitVec_T_283; // @[MMUBundle.scala 203:36]
  wire  hitVec_5_3 = _hitVec_T_284 & v_3 & ~refill_mask[3]; // @[TLBStorage.scala 56:139]
  reg  hitVecReg_5_0; // @[Reg.scala 16:16]
  reg  hitVecReg_5_1; // @[Reg.scala 16:16]
  reg  hitVecReg_5_2; // @[Reg.scala 16:16]
  reg  hitVecReg_5_3; // @[Reg.scala 16:16]
  reg  io_rresp_5_valid_REG; // @[TLBStorage.scala 62:58]
  wire [3:0] _io_rresp_5_bits_hit_T = {hitVecReg_5_0,hitVecReg_5_1,hitVecReg_5_2,hitVecReg_5_3}; // @[Cat.scala 31:58]
  wire  _io_rresp_5_bits_hit_T_1 = |_io_rresp_5_bits_hit_T; // @[TLBStorage.scala 63:37]
  wire [23:0] _io_rresp_5_bits_ppn_ppn_res_T_2 = {entries_0_ppn[14:9],vpn_reg_5[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_5_bits_ppn_ppn_res_T_4 = {entries_0_ppn,vpn_reg_5[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_5_bits_ppn_ppn_res = entries_0_level ? _io_rresp_5_bits_ppn_ppn_res_T_4 :
    _io_rresp_5_bits_ppn_ppn_res_T_2; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_5_bits_ppn_ppn_res_T_8 = {entries_1_ppn[14:9],vpn_reg_5[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_5_bits_ppn_ppn_res_T_10 = {entries_1_ppn,vpn_reg_5[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_5_bits_ppn_ppn_res_1 = entries_1_level ? _io_rresp_5_bits_ppn_ppn_res_T_10 :
    _io_rresp_5_bits_ppn_ppn_res_T_8; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_5_bits_ppn_ppn_res_T_14 = {entries_2_ppn[14:9],vpn_reg_5[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_5_bits_ppn_ppn_res_T_16 = {entries_2_ppn,vpn_reg_5[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_5_bits_ppn_ppn_res_2 = entries_2_level ? _io_rresp_5_bits_ppn_ppn_res_T_16 :
    _io_rresp_5_bits_ppn_ppn_res_T_14; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_5_bits_ppn_ppn_res_T_20 = {entries_3_ppn[14:9],vpn_reg_5[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_5_bits_ppn_ppn_res_T_22 = {entries_3_ppn,vpn_reg_5[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_5_bits_ppn_ppn_res_3 = entries_3_level ? _io_rresp_5_bits_ppn_ppn_res_T_22 :
    _io_rresp_5_bits_ppn_ppn_res_T_20; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_5_bits_ppn_xs_T_1 = hitVecReg_5_0 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_5_bits_ppn_xs_0 = _io_rresp_5_bits_ppn_xs_T_1 & io_rresp_5_bits_ppn_ppn_res; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_5_bits_ppn_xs_T_4 = hitVecReg_5_1 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_5_bits_ppn_xs_1 = _io_rresp_5_bits_ppn_xs_T_4 & io_rresp_5_bits_ppn_ppn_res_1; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_5_bits_ppn_xs_T_7 = hitVecReg_5_2 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_5_bits_ppn_xs_2 = _io_rresp_5_bits_ppn_xs_T_7 & io_rresp_5_bits_ppn_ppn_res_2; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_5_bits_ppn_xs_T_10 = hitVecReg_5_3 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_5_bits_ppn_xs_3 = _io_rresp_5_bits_ppn_xs_T_10 & io_rresp_5_bits_ppn_ppn_res_3; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_5_bits_ppn_T = io_rresp_5_bits_ppn_xs_0 | io_rresp_5_bits_ppn_xs_1; // @[ParallelMux.scala 37:55]
  wire [23:0] _io_rresp_5_bits_ppn_T_1 = io_rresp_5_bits_ppn_xs_2 | io_rresp_5_bits_ppn_xs_3; // @[ParallelMux.scala 37:55]
  wire [13:0] _io_rresp_5_bits_perm_xs_T_1 = hitVecReg_5_0 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_5_bits_perm_xs_T_3 = _io_rresp_5_bits_perm_xs_T_1 & _io_rresp_0_bits_perm_xs_T_2; // @[ParallelMux.scala 65:65]
  wire  io_rresp_5_bits_perm_xs_0_pm_atomic = _io_rresp_5_bits_perm_xs_T_3[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_pm_c = _io_rresp_5_bits_perm_xs_T_3[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_pm_x = _io_rresp_5_bits_perm_xs_T_3[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_pm_w = _io_rresp_5_bits_perm_xs_T_3[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_pm_r = _io_rresp_5_bits_perm_xs_T_3[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_r = _io_rresp_5_bits_perm_xs_T_3[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_w = _io_rresp_5_bits_perm_xs_T_3[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_x = _io_rresp_5_bits_perm_xs_T_3[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_u = _io_rresp_5_bits_perm_xs_T_3[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_g = _io_rresp_5_bits_perm_xs_T_3[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_a = _io_rresp_5_bits_perm_xs_T_3[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_d = _io_rresp_5_bits_perm_xs_T_3[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_af = _io_rresp_5_bits_perm_xs_T_3[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_0_pf = _io_rresp_5_bits_perm_xs_T_3[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_5_bits_perm_xs_T_19 = hitVecReg_5_1 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_5_bits_perm_xs_T_21 = _io_rresp_5_bits_perm_xs_T_19 & _io_rresp_0_bits_perm_xs_T_20; // @[ParallelMux.scala 65:65]
  wire  io_rresp_5_bits_perm_xs_1_pm_atomic = _io_rresp_5_bits_perm_xs_T_21[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_pm_c = _io_rresp_5_bits_perm_xs_T_21[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_pm_x = _io_rresp_5_bits_perm_xs_T_21[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_pm_w = _io_rresp_5_bits_perm_xs_T_21[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_pm_r = _io_rresp_5_bits_perm_xs_T_21[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_r = _io_rresp_5_bits_perm_xs_T_21[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_w = _io_rresp_5_bits_perm_xs_T_21[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_x = _io_rresp_5_bits_perm_xs_T_21[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_u = _io_rresp_5_bits_perm_xs_T_21[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_g = _io_rresp_5_bits_perm_xs_T_21[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_a = _io_rresp_5_bits_perm_xs_T_21[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_d = _io_rresp_5_bits_perm_xs_T_21[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_af = _io_rresp_5_bits_perm_xs_T_21[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_1_pf = _io_rresp_5_bits_perm_xs_T_21[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_5_bits_perm_xs_T_37 = hitVecReg_5_2 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_5_bits_perm_xs_T_39 = _io_rresp_5_bits_perm_xs_T_37 & _io_rresp_0_bits_perm_xs_T_38; // @[ParallelMux.scala 65:65]
  wire  io_rresp_5_bits_perm_xs_2_pm_atomic = _io_rresp_5_bits_perm_xs_T_39[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_pm_c = _io_rresp_5_bits_perm_xs_T_39[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_pm_x = _io_rresp_5_bits_perm_xs_T_39[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_pm_w = _io_rresp_5_bits_perm_xs_T_39[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_pm_r = _io_rresp_5_bits_perm_xs_T_39[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_r = _io_rresp_5_bits_perm_xs_T_39[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_w = _io_rresp_5_bits_perm_xs_T_39[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_x = _io_rresp_5_bits_perm_xs_T_39[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_u = _io_rresp_5_bits_perm_xs_T_39[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_g = _io_rresp_5_bits_perm_xs_T_39[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_a = _io_rresp_5_bits_perm_xs_T_39[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_d = _io_rresp_5_bits_perm_xs_T_39[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_af = _io_rresp_5_bits_perm_xs_T_39[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_2_pf = _io_rresp_5_bits_perm_xs_T_39[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_5_bits_perm_xs_T_55 = hitVecReg_5_3 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _io_rresp_5_bits_perm_xs_T_57 = _io_rresp_5_bits_perm_xs_T_55 & _io_rresp_0_bits_perm_xs_T_56; // @[ParallelMux.scala 65:65]
  wire  io_rresp_5_bits_perm_xs_3_pm_atomic = _io_rresp_5_bits_perm_xs_T_57[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_pm_c = _io_rresp_5_bits_perm_xs_T_57[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_pm_x = _io_rresp_5_bits_perm_xs_T_57[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_pm_w = _io_rresp_5_bits_perm_xs_T_57[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_pm_r = _io_rresp_5_bits_perm_xs_T_57[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_r = _io_rresp_5_bits_perm_xs_T_57[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_w = _io_rresp_5_bits_perm_xs_T_57[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_x = _io_rresp_5_bits_perm_xs_T_57[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_u = _io_rresp_5_bits_perm_xs_T_57[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_g = _io_rresp_5_bits_perm_xs_T_57[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_a = _io_rresp_5_bits_perm_xs_T_57[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_d = _io_rresp_5_bits_perm_xs_T_57[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_af = _io_rresp_5_bits_perm_xs_T_57[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_5_bits_perm_xs_3_pf = _io_rresp_5_bits_perm_xs_T_57[13]; // @[ParallelMux.scala 65:87]
  wire [6:0] io_rresp_5_bits_perm_lo = {io_rresp_5_bits_perm_xs_0_w,io_rresp_5_bits_perm_xs_0_r,
    io_rresp_5_bits_perm_xs_0_pm_r,io_rresp_5_bits_perm_xs_0_pm_w,io_rresp_5_bits_perm_xs_0_pm_x,
    io_rresp_5_bits_perm_xs_0_pm_c,io_rresp_5_bits_perm_xs_0_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_5_bits_perm_T = {io_rresp_5_bits_perm_xs_0_pf,io_rresp_5_bits_perm_xs_0_af,
    io_rresp_5_bits_perm_xs_0_d,io_rresp_5_bits_perm_xs_0_a,io_rresp_5_bits_perm_xs_0_g,io_rresp_5_bits_perm_xs_0_u,
    io_rresp_5_bits_perm_xs_0_x,io_rresp_5_bits_perm_lo}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_5_bits_perm_lo_1 = {io_rresp_5_bits_perm_xs_1_w,io_rresp_5_bits_perm_xs_1_r,
    io_rresp_5_bits_perm_xs_1_pm_r,io_rresp_5_bits_perm_xs_1_pm_w,io_rresp_5_bits_perm_xs_1_pm_x,
    io_rresp_5_bits_perm_xs_1_pm_c,io_rresp_5_bits_perm_xs_1_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_5_bits_perm_T_1 = {io_rresp_5_bits_perm_xs_1_pf,io_rresp_5_bits_perm_xs_1_af,
    io_rresp_5_bits_perm_xs_1_d,io_rresp_5_bits_perm_xs_1_a,io_rresp_5_bits_perm_xs_1_g,io_rresp_5_bits_perm_xs_1_u,
    io_rresp_5_bits_perm_xs_1_x,io_rresp_5_bits_perm_lo_1}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_5_bits_perm_T_2 = _io_rresp_5_bits_perm_T | _io_rresp_5_bits_perm_T_1; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_5_bits_perm_lo_2 = {io_rresp_5_bits_perm_xs_2_w,io_rresp_5_bits_perm_xs_2_r,
    io_rresp_5_bits_perm_xs_2_pm_r,io_rresp_5_bits_perm_xs_2_pm_w,io_rresp_5_bits_perm_xs_2_pm_x,
    io_rresp_5_bits_perm_xs_2_pm_c,io_rresp_5_bits_perm_xs_2_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_5_bits_perm_T_17 = {io_rresp_5_bits_perm_xs_2_pf,io_rresp_5_bits_perm_xs_2_af,
    io_rresp_5_bits_perm_xs_2_d,io_rresp_5_bits_perm_xs_2_a,io_rresp_5_bits_perm_xs_2_g,io_rresp_5_bits_perm_xs_2_u,
    io_rresp_5_bits_perm_xs_2_x,io_rresp_5_bits_perm_lo_2}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_5_bits_perm_lo_3 = {io_rresp_5_bits_perm_xs_3_w,io_rresp_5_bits_perm_xs_3_r,
    io_rresp_5_bits_perm_xs_3_pm_r,io_rresp_5_bits_perm_xs_3_pm_w,io_rresp_5_bits_perm_xs_3_pm_x,
    io_rresp_5_bits_perm_xs_3_pm_c,io_rresp_5_bits_perm_xs_3_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_5_bits_perm_T_18 = {io_rresp_5_bits_perm_xs_3_pf,io_rresp_5_bits_perm_xs_3_af,
    io_rresp_5_bits_perm_xs_3_d,io_rresp_5_bits_perm_xs_3_a,io_rresp_5_bits_perm_xs_3_g,io_rresp_5_bits_perm_xs_3_u,
    io_rresp_5_bits_perm_xs_3_x,io_rresp_5_bits_perm_lo_3}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_5_bits_perm_T_19 = _io_rresp_5_bits_perm_T_17 | _io_rresp_5_bits_perm_T_18; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_5_bits_perm_lo_4 = {_io_rresp_5_bits_perm_T_2[6],_io_rresp_5_bits_perm_T_2[5],
    _io_rresp_5_bits_perm_T_2[4],_io_rresp_5_bits_perm_T_2[3],_io_rresp_5_bits_perm_T_2[2],_io_rresp_5_bits_perm_T_2
    [1],_io_rresp_5_bits_perm_T_2[0]}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_5_bits_perm_T_34 = {_io_rresp_5_bits_perm_T_2[13],_io_rresp_5_bits_perm_T_2[12],
    _io_rresp_5_bits_perm_T_2[11],_io_rresp_5_bits_perm_T_2[10],_io_rresp_5_bits_perm_T_2[9],
    _io_rresp_5_bits_perm_T_2[8],_io_rresp_5_bits_perm_T_2[7],io_rresp_5_bits_perm_lo_4}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_5_bits_perm_lo_5 = {_io_rresp_5_bits_perm_T_19[6],_io_rresp_5_bits_perm_T_19[5],
    _io_rresp_5_bits_perm_T_19[4],_io_rresp_5_bits_perm_T_19[3],_io_rresp_5_bits_perm_T_19[2],
    _io_rresp_5_bits_perm_T_19[1],_io_rresp_5_bits_perm_T_19[0]}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_5_bits_perm_T_35 = {_io_rresp_5_bits_perm_T_19[13],_io_rresp_5_bits_perm_T_19[12],
    _io_rresp_5_bits_perm_T_19[11],_io_rresp_5_bits_perm_T_19[10],_io_rresp_5_bits_perm_T_19[9],
    _io_rresp_5_bits_perm_T_19[8],_io_rresp_5_bits_perm_T_19[7],io_rresp_5_bits_perm_lo_5}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_5_bits_perm_T_36 = _io_rresp_5_bits_perm_T_34 | _io_rresp_5_bits_perm_T_35; // @[ParallelMux.scala 37:55]
  wire [3:0] _io_rresp_hit_sameCycle_5_T = {hitVec_5_0,hitVec_5_1,hitVec_5_2,hitVec_5_3}; // @[Cat.scala 31:58]
  wire [3:0] _io_access_5_touch_ways_bits_T = {hitVecReg_5_3,hitVecReg_5_2,hitVecReg_5_1,hitVecReg_5_0}; // @[OneHot.scala 22:45]
  wire [1:0] io_access_5_touch_ways_bits_hi_1 = _io_access_5_touch_ways_bits_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_access_5_touch_ways_bits_lo_1 = _io_access_5_touch_ways_bits_T[1:0]; // @[OneHot.scala 31:18]
  wire  _io_access_5_touch_ways_bits_T_1 = |io_access_5_touch_ways_bits_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_access_5_touch_ways_bits_T_2 = io_access_5_touch_ways_bits_hi_1 | io_access_5_touch_ways_bits_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] _io_access_5_touch_ways_bits_T_4 = {_io_access_5_touch_ways_bits_T_1,_io_access_5_touch_ways_bits_T_2[1]}; // @[Cat.scala 31:58]
  wire  _GEN_30 = 2'h0 == io_wwayIdx | v_0; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire  _GEN_31 = 2'h1 == io_wwayIdx | v_1; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire  _GEN_32 = 2'h2 == io_wwayIdx | v_2; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire  _GEN_33 = 2'h3 == io_wwayIdx | v_3; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire [6:0] _ptePerm_T = {io_wdata_entry_perm_d,io_wdata_entry_perm_a,io_wdata_entry_perm_g,
    io_wdata_entry_perm_u,io_wdata_entry_perm_x,io_wdata_entry_perm_w,io_wdata_entry_perm_r}; // @[MMUBundle.scala 223:47]
  wire  ptePerm_r = _ptePerm_T[0]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_w = _ptePerm_T[1]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_x = _ptePerm_T[2]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_u = _ptePerm_T[3]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_g = _ptePerm_T[4]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_a = _ptePerm_T[5]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_d = _ptePerm_T[6]; // @[MMUBundle.scala 223:47]
  reg [1:0] refill_wayIdx_reg; // @[TLBStorage.scala 88:34]
  reg  REG; // @[TLBStorage.scala 89:16]
  wire  sfenceHit_asid_hit = entries_0_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_2 = entries_0_tag[17:9] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 204:41]
  wire  _sfenceHit_T_4 = entries_0_tag == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 205:19]
  wire  _sfenceHit_T_6 = entries_0_level ? _sfenceHit_T_4 : _sfenceHit_T_2; // @[Mux.scala 81:58]
  wire  sfenceHit_0 = sfenceHit_asid_hit & _sfenceHit_T_6; // @[MMUBundle.scala 203:36]
  wire  sfenceHit_asid_hit_1 = entries_1_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_9 = entries_1_tag[17:9] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 204:41]
  wire  _sfenceHit_T_11 = entries_1_tag == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 205:19]
  wire  _sfenceHit_T_13 = entries_1_level ? _sfenceHit_T_11 : _sfenceHit_T_9; // @[Mux.scala 81:58]
  wire  sfenceHit_1 = sfenceHit_asid_hit_1 & _sfenceHit_T_13; // @[MMUBundle.scala 203:36]
  wire  sfenceHit_asid_hit_2 = entries_2_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_16 = entries_2_tag[17:9] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 204:41]
  wire  _sfenceHit_T_18 = entries_2_tag == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 205:19]
  wire  _sfenceHit_T_20 = entries_2_level ? _sfenceHit_T_18 : _sfenceHit_T_16; // @[Mux.scala 81:58]
  wire  sfenceHit_2 = sfenceHit_asid_hit_2 & _sfenceHit_T_20; // @[MMUBundle.scala 203:36]
  wire  sfenceHit_asid_hit_3 = entries_3_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_23 = entries_3_tag[17:9] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 204:41]
  wire  _sfenceHit_T_25 = entries_3_tag == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 205:19]
  wire  _sfenceHit_T_27 = entries_3_level ? _sfenceHit_T_25 : _sfenceHit_T_23; // @[Mux.scala 81:58]
  wire  sfenceHit_3 = sfenceHit_asid_hit_3 & _sfenceHit_T_27; // @[MMUBundle.scala 203:36]
  assign io_rreq_0_ready = 1'h1; // @[TLBStorage.scala 40:24]
  assign io_rreq_1_ready = 1'h1; // @[TLBStorage.scala 40:24]
  assign io_rreq_2_ready = 1'h1; // @[TLBStorage.scala 40:24]
  assign io_rreq_3_ready = 1'h1; // @[TLBStorage.scala 40:24]
  assign io_rreq_4_ready = 1'h1; // @[TLBStorage.scala 40:24]
  assign io_rreq_5_ready = 1'h1; // @[TLBStorage.scala 40:24]
  assign io_rresp_0_valid = io_rresp_0_valid_REG; // @[TLBStorage.scala 62:16]
  assign io_rresp_0_bits_hit = |_io_rresp_0_bits_hit_T; // @[TLBStorage.scala 63:37]
  assign io_rresp_0_bits_ppn = _io_rresp_0_bits_ppn_T | _io_rresp_0_bits_ppn_T_1; // @[ParallelMux.scala 37:55]
  assign io_rresp_0_bits_perm_pf = _io_rresp_0_bits_perm_T_36[13]; // @[ParallelMux.scala 37:77]
  assign io_rresp_0_bits_perm_af = _io_rresp_0_bits_perm_T_36[12]; // @[ParallelMux.scala 37:77]
  assign io_rresp_0_bits_perm_a = _io_rresp_0_bits_perm_T_36[10]; // @[ParallelMux.scala 37:77]
  assign io_rresp_0_bits_perm_u = _io_rresp_0_bits_perm_T_36[8]; // @[ParallelMux.scala 37:77]
  assign io_rresp_0_bits_perm_x = _io_rresp_0_bits_perm_T_36[7]; // @[ParallelMux.scala 37:77]
  assign io_rresp_1_valid = io_rresp_1_valid_REG; // @[TLBStorage.scala 62:16]
  assign io_rresp_1_bits_hit = |_io_rresp_1_bits_hit_T; // @[TLBStorage.scala 63:37]
  assign io_rresp_1_bits_ppn = _io_rresp_1_bits_ppn_T | _io_rresp_1_bits_ppn_T_1; // @[ParallelMux.scala 37:55]
  assign io_rresp_1_bits_perm_pf = _io_rresp_1_bits_perm_T_36[13]; // @[ParallelMux.scala 37:77]
  assign io_rresp_1_bits_perm_af = _io_rresp_1_bits_perm_T_36[12]; // @[ParallelMux.scala 37:77]
  assign io_rresp_1_bits_perm_a = _io_rresp_1_bits_perm_T_36[10]; // @[ParallelMux.scala 37:77]
  assign io_rresp_1_bits_perm_u = _io_rresp_1_bits_perm_T_36[8]; // @[ParallelMux.scala 37:77]
  assign io_rresp_1_bits_perm_x = _io_rresp_1_bits_perm_T_36[7]; // @[ParallelMux.scala 37:77]
  assign io_rresp_2_valid = io_rresp_2_valid_REG; // @[TLBStorage.scala 62:16]
  assign io_rresp_2_bits_hit = |_io_rresp_2_bits_hit_T; // @[TLBStorage.scala 63:37]
  assign io_rresp_2_bits_ppn = _io_rresp_2_bits_ppn_T | _io_rresp_2_bits_ppn_T_1; // @[ParallelMux.scala 37:55]
  assign io_rresp_2_bits_perm_pf = _io_rresp_2_bits_perm_T_36[13]; // @[ParallelMux.scala 37:77]
  assign io_rresp_2_bits_perm_af = _io_rresp_2_bits_perm_T_36[12]; // @[ParallelMux.scala 37:77]
  assign io_rresp_2_bits_perm_a = _io_rresp_2_bits_perm_T_36[10]; // @[ParallelMux.scala 37:77]
  assign io_rresp_2_bits_perm_u = _io_rresp_2_bits_perm_T_36[8]; // @[ParallelMux.scala 37:77]
  assign io_rresp_2_bits_perm_x = _io_rresp_2_bits_perm_T_36[7]; // @[ParallelMux.scala 37:77]
  assign io_rresp_3_valid = io_rresp_3_valid_REG; // @[TLBStorage.scala 62:16]
  assign io_rresp_3_bits_hit = |_io_rresp_3_bits_hit_T; // @[TLBStorage.scala 63:37]
  assign io_rresp_3_bits_ppn = _io_rresp_3_bits_ppn_T | _io_rresp_3_bits_ppn_T_1; // @[ParallelMux.scala 37:55]
  assign io_rresp_3_bits_perm_pf = _io_rresp_3_bits_perm_T_36[13]; // @[ParallelMux.scala 37:77]
  assign io_rresp_3_bits_perm_af = _io_rresp_3_bits_perm_T_36[12]; // @[ParallelMux.scala 37:77]
  assign io_rresp_3_bits_perm_a = _io_rresp_3_bits_perm_T_36[10]; // @[ParallelMux.scala 37:77]
  assign io_rresp_3_bits_perm_u = _io_rresp_3_bits_perm_T_36[8]; // @[ParallelMux.scala 37:77]
  assign io_rresp_3_bits_perm_x = _io_rresp_3_bits_perm_T_36[7]; // @[ParallelMux.scala 37:77]
  assign io_rresp_4_valid = io_rresp_4_valid_REG; // @[TLBStorage.scala 62:16]
  assign io_rresp_4_bits_hit = |_io_rresp_4_bits_hit_T; // @[TLBStorage.scala 63:37]
  assign io_rresp_4_bits_ppn = _io_rresp_4_bits_ppn_T | _io_rresp_4_bits_ppn_T_1; // @[ParallelMux.scala 37:55]
  assign io_rresp_4_bits_perm_pf = _io_rresp_4_bits_perm_T_36[13]; // @[ParallelMux.scala 37:77]
  assign io_rresp_4_bits_perm_af = _io_rresp_4_bits_perm_T_36[12]; // @[ParallelMux.scala 37:77]
  assign io_rresp_4_bits_perm_a = _io_rresp_4_bits_perm_T_36[10]; // @[ParallelMux.scala 37:77]
  assign io_rresp_4_bits_perm_u = _io_rresp_4_bits_perm_T_36[8]; // @[ParallelMux.scala 37:77]
  assign io_rresp_4_bits_perm_x = _io_rresp_4_bits_perm_T_36[7]; // @[ParallelMux.scala 37:77]
  assign io_rresp_5_valid = io_rresp_5_valid_REG; // @[TLBStorage.scala 62:16]
  assign io_rresp_5_bits_hit = |_io_rresp_5_bits_hit_T; // @[TLBStorage.scala 63:37]
  assign io_rresp_5_bits_ppn = _io_rresp_5_bits_ppn_T | _io_rresp_5_bits_ppn_T_1; // @[ParallelMux.scala 37:55]
  assign io_rresp_5_bits_perm_pf = _io_rresp_5_bits_perm_T_36[13]; // @[ParallelMux.scala 37:77]
  assign io_rresp_5_bits_perm_af = _io_rresp_5_bits_perm_T_36[12]; // @[ParallelMux.scala 37:77]
  assign io_rresp_5_bits_perm_a = _io_rresp_5_bits_perm_T_36[10]; // @[ParallelMux.scala 37:77]
  assign io_rresp_5_bits_perm_u = _io_rresp_5_bits_perm_T_36[8]; // @[ParallelMux.scala 37:77]
  assign io_rresp_5_bits_perm_x = _io_rresp_5_bits_perm_T_36[7]; // @[ParallelMux.scala 37:77]
  assign io_rresp_hit_sameCycle_0 = |_io_rresp_hit_sameCycle_0_T; // @[TLBStorage.scala 71:47]
  assign io_rresp_hit_sameCycle_1 = |_io_rresp_hit_sameCycle_1_T; // @[TLBStorage.scala 71:47]
  assign io_rresp_hit_sameCycle_2 = |_io_rresp_hit_sameCycle_2_T; // @[TLBStorage.scala 71:47]
  assign io_rresp_hit_sameCycle_3 = |_io_rresp_hit_sameCycle_3_T; // @[TLBStorage.scala 71:47]
  assign io_rresp_hit_sameCycle_4 = |_io_rresp_hit_sameCycle_4_T; // @[TLBStorage.scala 71:47]
  assign io_rresp_hit_sameCycle_5 = |_io_rresp_hit_sameCycle_5_T; // @[TLBStorage.scala 71:47]
  assign io_access_0_touch_ways_valid = REG | io_rresp_0_valid & _io_rresp_0_bits_hit_T_1; // @[TLBStorage.scala 74:29 89:30 92:31]
  assign io_access_0_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_0_touch_ways_bits_T_4; // @[TLBStorage.scala 75:28 89:30 93:30]
  assign io_access_1_touch_ways_valid = REG | io_rresp_1_valid & _io_rresp_1_bits_hit_T_1; // @[TLBStorage.scala 74:29 89:30 92:31]
  assign io_access_1_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_1_touch_ways_bits_T_4; // @[TLBStorage.scala 75:28 89:30 93:30]
  assign io_access_2_touch_ways_valid = REG | io_rresp_2_valid & _io_rresp_2_bits_hit_T_1; // @[TLBStorage.scala 74:29 89:30 92:31]
  assign io_access_2_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_2_touch_ways_bits_T_4; // @[TLBStorage.scala 75:28 89:30 93:30]
  assign io_access_3_touch_ways_valid = REG | io_rresp_3_valid & _io_rresp_3_bits_hit_T_1; // @[TLBStorage.scala 74:29 89:30 92:31]
  assign io_access_3_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_3_touch_ways_bits_T_4; // @[TLBStorage.scala 75:28 89:30 93:30]
  assign io_access_4_touch_ways_valid = REG | io_rresp_4_valid & _io_rresp_4_bits_hit_T_1; // @[TLBStorage.scala 74:29 89:30 92:31]
  assign io_access_4_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_4_touch_ways_bits_T_4; // @[TLBStorage.scala 75:28 89:30 93:30]
  assign io_access_5_touch_ways_valid = REG | io_rresp_5_valid & _io_rresp_5_bits_hit_T_1; // @[TLBStorage.scala 74:29 89:30 92:31]
  assign io_access_5_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_5_touch_ways_bits_T_4; // @[TLBStorage.scala 75:28 89:30 93:30]
  always @(posedge clock) begin
    if (reset) begin // @[TLBStorage.scala 42:18]
      v_0 <= 1'h0; // @[TLBStorage.scala 42:18]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 101:26]
      if (io_sfence_bits_rs1) begin // @[TLBStorage.scala 102:28]
        if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 103:30]
          v_0 <= 1'h0; // @[TLBStorage.scala 105:17]
        end else begin
          v_0 <= v_0 & (entries_0_perm_g | ~sfenceHit_asid_hit); // @[TLBStorage.scala 108:45]
        end
      end else if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 111:30]
        v_0 <= v_0 & ~_sfenceHit_T_6; // @[TLBStorage.scala 113:45]
      end else begin
        v_0 <= v_0 & ~(sfenceHit_0 & ~entries_0_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_0 <= _GEN_30;
    end
    if (reset) begin // @[TLBStorage.scala 42:18]
      v_1 <= 1'h0; // @[TLBStorage.scala 42:18]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 101:26]
      if (io_sfence_bits_rs1) begin // @[TLBStorage.scala 102:28]
        if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 103:30]
          v_1 <= 1'h0; // @[TLBStorage.scala 105:17]
        end else begin
          v_1 <= v_1 & (entries_1_perm_g | ~sfenceHit_asid_hit_1); // @[TLBStorage.scala 108:45]
        end
      end else if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 111:30]
        v_1 <= v_1 & ~_sfenceHit_T_13; // @[TLBStorage.scala 113:45]
      end else begin
        v_1 <= v_1 & ~(sfenceHit_1 & ~entries_1_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_1 <= _GEN_31;
    end
    if (reset) begin // @[TLBStorage.scala 42:18]
      v_2 <= 1'h0; // @[TLBStorage.scala 42:18]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 101:26]
      if (io_sfence_bits_rs1) begin // @[TLBStorage.scala 102:28]
        if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 103:30]
          v_2 <= 1'h0; // @[TLBStorage.scala 105:17]
        end else begin
          v_2 <= v_2 & (entries_2_perm_g | ~sfenceHit_asid_hit_2); // @[TLBStorage.scala 108:45]
        end
      end else if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 111:30]
        v_2 <= v_2 & ~_sfenceHit_T_20; // @[TLBStorage.scala 113:45]
      end else begin
        v_2 <= v_2 & ~(sfenceHit_2 & ~entries_2_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_2 <= _GEN_32;
    end
    if (reset) begin // @[TLBStorage.scala 42:18]
      v_3 <= 1'h0; // @[TLBStorage.scala 42:18]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 101:26]
      if (io_sfence_bits_rs1) begin // @[TLBStorage.scala 102:28]
        if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 103:30]
          v_3 <= 1'h0; // @[TLBStorage.scala 105:17]
        end else begin
          v_3 <= v_3 & (entries_3_perm_g | ~sfenceHit_asid_hit_3); // @[TLBStorage.scala 108:45]
        end
      end else if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 111:30]
        v_3 <= v_3 & ~_sfenceHit_T_27; // @[TLBStorage.scala 113:45]
      end else begin
        v_3 <= v_3 & ~(sfenceHit_3 & ~entries_3_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_3 <= _GEN_33;
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_0_tag <= io_wdata_entry_tag[26:9]; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_0_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_0_level <= io_wdata_entry_level[0]; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_0_ppn <= io_wdata_entry_ppn[23:9]; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_0_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_0_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_0_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_0_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_0_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_0_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_0_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_0_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h0 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_0_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_1_tag <= io_wdata_entry_tag[26:9]; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_1_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_1_level <= io_wdata_entry_level[0]; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_1_ppn <= io_wdata_entry_ppn[23:9]; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_1_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_1_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_1_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_1_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_1_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_1_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_1_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_1_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h1 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_1_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_2_tag <= io_wdata_entry_tag[26:9]; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_2_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_2_level <= io_wdata_entry_level[0]; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_2_ppn <= io_wdata_entry_ppn[23:9]; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_2_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_2_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_2_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_2_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_2_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_2_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_2_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_2_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h2 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_2_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_3_tag <= io_wdata_entry_tag[26:9]; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_3_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_3_level <= io_wdata_entry_level[0]; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_3_ppn <= io_wdata_entry_ppn[23:9]; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_3_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_3_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_3_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_3_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_3_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_3_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_3_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_3_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (2'h3 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_3_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      vpn_reg <= io_rreq_0_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg__0 <= hitVec__0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg__1 <= hitVec__1; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg__2 <= hitVec__2; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg__3 <= hitVec__3; // @[Reg.scala 17:22]
    end
    io_rresp_0_valid_REG <= io_rreq_0_valid; // @[TLBStorage.scala 62:58]
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      vpn_reg_1 <= io_rreq_1_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      hitVecReg_1_0 <= hitVec_1_0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      hitVecReg_1_1 <= hitVec_1_1; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      hitVecReg_1_2 <= hitVec_1_2; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      hitVecReg_1_3 <= hitVec_1_3; // @[Reg.scala 17:22]
    end
    io_rresp_1_valid_REG <= io_rreq_1_valid; // @[TLBStorage.scala 62:58]
    if (_vpn_reg_T_2) begin // @[Reg.scala 17:18]
      vpn_reg_2 <= io_rreq_2_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_2) begin // @[Reg.scala 17:18]
      hitVecReg_2_0 <= hitVec_2_0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_2) begin // @[Reg.scala 17:18]
      hitVecReg_2_1 <= hitVec_2_1; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_2) begin // @[Reg.scala 17:18]
      hitVecReg_2_2 <= hitVec_2_2; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_2) begin // @[Reg.scala 17:18]
      hitVecReg_2_3 <= hitVec_2_3; // @[Reg.scala 17:22]
    end
    io_rresp_2_valid_REG <= io_rreq_2_valid; // @[TLBStorage.scala 62:58]
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      vpn_reg_3 <= io_rreq_3_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      hitVecReg_3_0 <= hitVec_3_0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      hitVecReg_3_1 <= hitVec_3_1; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      hitVecReg_3_2 <= hitVec_3_2; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      hitVecReg_3_3 <= hitVec_3_3; // @[Reg.scala 17:22]
    end
    io_rresp_3_valid_REG <= io_rreq_3_valid; // @[TLBStorage.scala 62:58]
    if (_vpn_reg_T_4) begin // @[Reg.scala 17:18]
      vpn_reg_4 <= io_rreq_4_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_4) begin // @[Reg.scala 17:18]
      hitVecReg_4_0 <= hitVec_4_0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_4) begin // @[Reg.scala 17:18]
      hitVecReg_4_1 <= hitVec_4_1; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_4) begin // @[Reg.scala 17:18]
      hitVecReg_4_2 <= hitVec_4_2; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_4) begin // @[Reg.scala 17:18]
      hitVecReg_4_3 <= hitVec_4_3; // @[Reg.scala 17:22]
    end
    io_rresp_4_valid_REG <= io_rreq_4_valid; // @[TLBStorage.scala 62:58]
    if (_vpn_reg_T_5) begin // @[Reg.scala 17:18]
      vpn_reg_5 <= io_rreq_5_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_5) begin // @[Reg.scala 17:18]
      hitVecReg_5_0 <= hitVec_5_0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_5) begin // @[Reg.scala 17:18]
      hitVecReg_5_1 <= hitVec_5_1; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_5) begin // @[Reg.scala 17:18]
      hitVecReg_5_2 <= hitVec_5_2; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_5) begin // @[Reg.scala 17:18]
      hitVecReg_5_3 <= hitVec_5_3; // @[Reg.scala 17:22]
    end
    io_rresp_5_valid_REG <= io_rreq_5_valid; // @[TLBStorage.scala 62:58]
    refill_wayIdx_reg <= io_wwayIdx; // @[TLBStorage.scala 88:34]
    REG <= io_wvalid; // @[TLBStorage.scala 89:16]
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
  v_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  v_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  v_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  v_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  entries_0_tag = _RAND_4[17:0];
  _RAND_5 = {1{`RANDOM}};
  entries_0_asid = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  entries_0_level = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  entries_0_ppn = _RAND_7[14:0];
  _RAND_8 = {1{`RANDOM}};
  entries_0_perm_pf = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  entries_0_perm_af = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  entries_0_perm_d = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  entries_0_perm_a = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  entries_0_perm_g = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  entries_0_perm_u = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  entries_0_perm_x = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  entries_0_perm_w = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  entries_0_perm_r = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  entries_1_tag = _RAND_17[17:0];
  _RAND_18 = {1{`RANDOM}};
  entries_1_asid = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  entries_1_level = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  entries_1_ppn = _RAND_20[14:0];
  _RAND_21 = {1{`RANDOM}};
  entries_1_perm_pf = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  entries_1_perm_af = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  entries_1_perm_d = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  entries_1_perm_a = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  entries_1_perm_g = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  entries_1_perm_u = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  entries_1_perm_x = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  entries_1_perm_w = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  entries_1_perm_r = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  entries_2_tag = _RAND_30[17:0];
  _RAND_31 = {1{`RANDOM}};
  entries_2_asid = _RAND_31[15:0];
  _RAND_32 = {1{`RANDOM}};
  entries_2_level = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  entries_2_ppn = _RAND_33[14:0];
  _RAND_34 = {1{`RANDOM}};
  entries_2_perm_pf = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  entries_2_perm_af = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  entries_2_perm_d = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  entries_2_perm_a = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  entries_2_perm_g = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  entries_2_perm_u = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  entries_2_perm_x = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  entries_2_perm_w = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  entries_2_perm_r = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  entries_3_tag = _RAND_43[17:0];
  _RAND_44 = {1{`RANDOM}};
  entries_3_asid = _RAND_44[15:0];
  _RAND_45 = {1{`RANDOM}};
  entries_3_level = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  entries_3_ppn = _RAND_46[14:0];
  _RAND_47 = {1{`RANDOM}};
  entries_3_perm_pf = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  entries_3_perm_af = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  entries_3_perm_d = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  entries_3_perm_a = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  entries_3_perm_g = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  entries_3_perm_u = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  entries_3_perm_x = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  entries_3_perm_w = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  entries_3_perm_r = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  vpn_reg = _RAND_56[26:0];
  _RAND_57 = {1{`RANDOM}};
  hitVecReg__0 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  hitVecReg__1 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  hitVecReg__2 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  hitVecReg__3 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  io_rresp_0_valid_REG = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  vpn_reg_1 = _RAND_62[26:0];
  _RAND_63 = {1{`RANDOM}};
  hitVecReg_1_0 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  hitVecReg_1_1 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  hitVecReg_1_2 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  hitVecReg_1_3 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  io_rresp_1_valid_REG = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  vpn_reg_2 = _RAND_68[26:0];
  _RAND_69 = {1{`RANDOM}};
  hitVecReg_2_0 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  hitVecReg_2_1 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  hitVecReg_2_2 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  hitVecReg_2_3 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  io_rresp_2_valid_REG = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  vpn_reg_3 = _RAND_74[26:0];
  _RAND_75 = {1{`RANDOM}};
  hitVecReg_3_0 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  hitVecReg_3_1 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  hitVecReg_3_2 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  hitVecReg_3_3 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  io_rresp_3_valid_REG = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  vpn_reg_4 = _RAND_80[26:0];
  _RAND_81 = {1{`RANDOM}};
  hitVecReg_4_0 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  hitVecReg_4_1 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  hitVecReg_4_2 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  hitVecReg_4_3 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  io_rresp_4_valid_REG = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  vpn_reg_5 = _RAND_86[26:0];
  _RAND_87 = {1{`RANDOM}};
  hitVecReg_5_0 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  hitVecReg_5_1 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  hitVecReg_5_2 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  hitVecReg_5_3 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  io_rresp_5_valid_REG = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  refill_wayIdx_reg = _RAND_92[1:0];
  _RAND_93 = {1{`RANDOM}};
  REG = _RAND_93[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
