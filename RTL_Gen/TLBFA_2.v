module TLBFA_2(
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
  output        io_rresp_0_valid,
  output        io_rresp_0_bits_hit,
  output [23:0] io_rresp_0_bits_ppn,
  output        io_rresp_0_bits_perm_pf,
  output        io_rresp_0_bits_perm_af,
  output        io_rresp_0_bits_perm_d,
  output        io_rresp_0_bits_perm_a,
  output        io_rresp_0_bits_perm_u,
  output        io_rresp_0_bits_perm_x,
  output        io_rresp_0_bits_perm_w,
  output        io_rresp_0_bits_perm_r,
  input         io_wvalid,
  input  [2:0]  io_wwayIdx,
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
  input         io_wdata_replenish_c,
  input         io_wdata_replenish_atomic,
  input         io_wdata_replenish_x,
  input         io_wdata_replenish_w,
  input         io_wdata_replenish_r,
  output        io_victim_out_valid,
  output [26:0] io_victim_out_bits_entry_tag,
  output [15:0] io_victim_out_bits_entry_asid,
  output [23:0] io_victim_out_bits_entry_ppn,
  output        io_victim_out_bits_entry_perm_pf,
  output        io_victim_out_bits_entry_perm_af,
  output        io_victim_out_bits_entry_perm_d,
  output        io_victim_out_bits_entry_perm_a,
  output        io_victim_out_bits_entry_perm_g,
  output        io_victim_out_bits_entry_perm_u,
  output        io_victim_out_bits_entry_perm_x,
  output        io_victim_out_bits_entry_perm_w,
  output        io_victim_out_bits_entry_perm_r,
  output        io_victim_out_bits_entry_perm_pm_r,
  output        io_victim_out_bits_entry_perm_pm_w,
  output        io_victim_out_bits_entry_perm_pm_x,
  output        io_victim_out_bits_entry_perm_pm_c,
  output        io_victim_out_bits_entry_perm_pm_atomic,
  output        io_access_0_touch_ways_valid,
  output [2:0]  io_access_0_touch_ways_bits
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
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
`endif // RANDOMIZE_REG_INIT
  reg  v_0; // @[TLBStorage.scala 42:18]
  reg  v_1; // @[TLBStorage.scala 42:18]
  reg  v_2; // @[TLBStorage.scala 42:18]
  reg  v_3; // @[TLBStorage.scala 42:18]
  reg  v_4; // @[TLBStorage.scala 42:18]
  reg  v_5; // @[TLBStorage.scala 42:18]
  reg  v_6; // @[TLBStorage.scala 42:18]
  reg  v_7; // @[TLBStorage.scala 42:18]
  reg [26:0] entries_0_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_0_asid; // @[TLBStorage.scala 43:20]
  reg [1:0] entries_0_level; // @[TLBStorage.scala 43:20]
  reg [23:0] entries_0_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_r; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_pm_r; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_pm_w; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_pm_x; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_pm_c; // @[TLBStorage.scala 43:20]
  reg  entries_0_perm_pm_atomic; // @[TLBStorage.scala 43:20]
  reg [26:0] entries_1_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_1_asid; // @[TLBStorage.scala 43:20]
  reg [1:0] entries_1_level; // @[TLBStorage.scala 43:20]
  reg [23:0] entries_1_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_r; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_pm_r; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_pm_w; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_pm_x; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_pm_c; // @[TLBStorage.scala 43:20]
  reg  entries_1_perm_pm_atomic; // @[TLBStorage.scala 43:20]
  reg [26:0] entries_2_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_2_asid; // @[TLBStorage.scala 43:20]
  reg [1:0] entries_2_level; // @[TLBStorage.scala 43:20]
  reg [23:0] entries_2_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_r; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_pm_r; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_pm_w; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_pm_x; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_pm_c; // @[TLBStorage.scala 43:20]
  reg  entries_2_perm_pm_atomic; // @[TLBStorage.scala 43:20]
  reg [26:0] entries_3_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_3_asid; // @[TLBStorage.scala 43:20]
  reg [1:0] entries_3_level; // @[TLBStorage.scala 43:20]
  reg [23:0] entries_3_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_r; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_pm_r; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_pm_w; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_pm_x; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_pm_c; // @[TLBStorage.scala 43:20]
  reg  entries_3_perm_pm_atomic; // @[TLBStorage.scala 43:20]
  reg [26:0] entries_4_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_4_asid; // @[TLBStorage.scala 43:20]
  reg [1:0] entries_4_level; // @[TLBStorage.scala 43:20]
  reg [23:0] entries_4_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_r; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_pm_r; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_pm_w; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_pm_x; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_pm_c; // @[TLBStorage.scala 43:20]
  reg  entries_4_perm_pm_atomic; // @[TLBStorage.scala 43:20]
  reg [26:0] entries_5_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_5_asid; // @[TLBStorage.scala 43:20]
  reg [1:0] entries_5_level; // @[TLBStorage.scala 43:20]
  reg [23:0] entries_5_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_r; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_pm_r; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_pm_w; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_pm_x; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_pm_c; // @[TLBStorage.scala 43:20]
  reg  entries_5_perm_pm_atomic; // @[TLBStorage.scala 43:20]
  reg [26:0] entries_6_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_6_asid; // @[TLBStorage.scala 43:20]
  reg [1:0] entries_6_level; // @[TLBStorage.scala 43:20]
  reg [23:0] entries_6_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_r; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_pm_r; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_pm_w; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_pm_x; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_pm_c; // @[TLBStorage.scala 43:20]
  reg  entries_6_perm_pm_atomic; // @[TLBStorage.scala 43:20]
  reg [26:0] entries_7_tag; // @[TLBStorage.scala 43:20]
  reg [15:0] entries_7_asid; // @[TLBStorage.scala 43:20]
  reg [1:0] entries_7_level; // @[TLBStorage.scala 43:20]
  reg [23:0] entries_7_ppn; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_pf; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_af; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_d; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_a; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_g; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_u; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_x; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_w; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_r; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_pm_r; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_pm_w; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_pm_x; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_pm_c; // @[TLBStorage.scala 43:20]
  reg  entries_7_perm_pm_atomic; // @[TLBStorage.scala 43:20]
  wire  _vpn_reg_T = io_rreq_0_ready & io_rreq_0_valid; // @[Decoupled.scala 50:35]
  wire [7:0] _refill_mask_T = 8'h1 << io_wwayIdx; // @[OneHot.scala 57:35]
  wire [7:0] refill_mask = io_wvalid ? _refill_mask_T : 8'h0; // @[TLBStorage.scala 55:59]
  wire  hitVec_asid_hit = entries_0_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_10 = entries_0_tag[26:18] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 208:40]
  wire  _hitVec_T_13 = entries_0_tag[26:9] == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 209:38]
  wire  _hitVec_T_16 = entries_0_tag == io_rreq_0_bits_vpn; // @[MMUConst.scala 115:33]
  wire  _hitVec_T_20 = 2'h1 == entries_0_level ? _hitVec_T_13 : 2'h0 == entries_0_level & _hitVec_T_10; // @[Mux.scala 81:58]
  wire  _hitVec_T_22 = 2'h2 == entries_0_level ? _hitVec_T_16 : _hitVec_T_20; // @[Mux.scala 81:58]
  wire  _hitVec_T_23 = hitVec_asid_hit & _hitVec_T_22; // @[MMUBundle.scala 207:19]
  wire  hitVec_0 = _hitVec_T_23 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 56:139]
  wire  hitVec_asid_hit_1 = entries_1_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_29 = entries_1_tag[26:18] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 208:40]
  wire  _hitVec_T_32 = entries_1_tag[26:9] == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 209:38]
  wire  _hitVec_T_35 = entries_1_tag == io_rreq_0_bits_vpn; // @[MMUConst.scala 115:33]
  wire  _hitVec_T_39 = 2'h1 == entries_1_level ? _hitVec_T_32 : 2'h0 == entries_1_level & _hitVec_T_29; // @[Mux.scala 81:58]
  wire  _hitVec_T_41 = 2'h2 == entries_1_level ? _hitVec_T_35 : _hitVec_T_39; // @[Mux.scala 81:58]
  wire  _hitVec_T_42 = hitVec_asid_hit_1 & _hitVec_T_41; // @[MMUBundle.scala 207:19]
  wire  hitVec_1 = _hitVec_T_42 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 56:139]
  wire  hitVec_asid_hit_2 = entries_2_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_48 = entries_2_tag[26:18] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 208:40]
  wire  _hitVec_T_51 = entries_2_tag[26:9] == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 209:38]
  wire  _hitVec_T_54 = entries_2_tag == io_rreq_0_bits_vpn; // @[MMUConst.scala 115:33]
  wire  _hitVec_T_58 = 2'h1 == entries_2_level ? _hitVec_T_51 : 2'h0 == entries_2_level & _hitVec_T_48; // @[Mux.scala 81:58]
  wire  _hitVec_T_60 = 2'h2 == entries_2_level ? _hitVec_T_54 : _hitVec_T_58; // @[Mux.scala 81:58]
  wire  _hitVec_T_61 = hitVec_asid_hit_2 & _hitVec_T_60; // @[MMUBundle.scala 207:19]
  wire  hitVec_2 = _hitVec_T_61 & v_2 & ~refill_mask[2]; // @[TLBStorage.scala 56:139]
  wire  hitVec_asid_hit_3 = entries_3_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_67 = entries_3_tag[26:18] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 208:40]
  wire  _hitVec_T_70 = entries_3_tag[26:9] == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 209:38]
  wire  _hitVec_T_73 = entries_3_tag == io_rreq_0_bits_vpn; // @[MMUConst.scala 115:33]
  wire  _hitVec_T_77 = 2'h1 == entries_3_level ? _hitVec_T_70 : 2'h0 == entries_3_level & _hitVec_T_67; // @[Mux.scala 81:58]
  wire  _hitVec_T_79 = 2'h2 == entries_3_level ? _hitVec_T_73 : _hitVec_T_77; // @[Mux.scala 81:58]
  wire  _hitVec_T_80 = hitVec_asid_hit_3 & _hitVec_T_79; // @[MMUBundle.scala 207:19]
  wire  hitVec_3 = _hitVec_T_80 & v_3 & ~refill_mask[3]; // @[TLBStorage.scala 56:139]
  wire  hitVec_asid_hit_4 = entries_4_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_86 = entries_4_tag[26:18] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 208:40]
  wire  _hitVec_T_89 = entries_4_tag[26:9] == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 209:38]
  wire  _hitVec_T_92 = entries_4_tag == io_rreq_0_bits_vpn; // @[MMUConst.scala 115:33]
  wire  _hitVec_T_96 = 2'h1 == entries_4_level ? _hitVec_T_89 : 2'h0 == entries_4_level & _hitVec_T_86; // @[Mux.scala 81:58]
  wire  _hitVec_T_98 = 2'h2 == entries_4_level ? _hitVec_T_92 : _hitVec_T_96; // @[Mux.scala 81:58]
  wire  _hitVec_T_99 = hitVec_asid_hit_4 & _hitVec_T_98; // @[MMUBundle.scala 207:19]
  wire  hitVec_4 = _hitVec_T_99 & v_4 & ~refill_mask[4]; // @[TLBStorage.scala 56:139]
  wire  hitVec_asid_hit_5 = entries_5_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_105 = entries_5_tag[26:18] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 208:40]
  wire  _hitVec_T_108 = entries_5_tag[26:9] == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 209:38]
  wire  _hitVec_T_111 = entries_5_tag == io_rreq_0_bits_vpn; // @[MMUConst.scala 115:33]
  wire  _hitVec_T_115 = 2'h1 == entries_5_level ? _hitVec_T_108 : 2'h0 == entries_5_level & _hitVec_T_105; // @[Mux.scala 81:58]
  wire  _hitVec_T_117 = 2'h2 == entries_5_level ? _hitVec_T_111 : _hitVec_T_115; // @[Mux.scala 81:58]
  wire  _hitVec_T_118 = hitVec_asid_hit_5 & _hitVec_T_117; // @[MMUBundle.scala 207:19]
  wire  hitVec_5 = _hitVec_T_118 & v_5 & ~refill_mask[5]; // @[TLBStorage.scala 56:139]
  wire  hitVec_asid_hit_6 = entries_6_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_124 = entries_6_tag[26:18] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 208:40]
  wire  _hitVec_T_127 = entries_6_tag[26:9] == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 209:38]
  wire  _hitVec_T_130 = entries_6_tag == io_rreq_0_bits_vpn; // @[MMUConst.scala 115:33]
  wire  _hitVec_T_134 = 2'h1 == entries_6_level ? _hitVec_T_127 : 2'h0 == entries_6_level & _hitVec_T_124; // @[Mux.scala 81:58]
  wire  _hitVec_T_136 = 2'h2 == entries_6_level ? _hitVec_T_130 : _hitVec_T_134; // @[Mux.scala 81:58]
  wire  _hitVec_T_137 = hitVec_asid_hit_6 & _hitVec_T_136; // @[MMUBundle.scala 207:19]
  wire  hitVec_6 = _hitVec_T_137 & v_6 & ~refill_mask[6]; // @[TLBStorage.scala 56:139]
  wire  hitVec_asid_hit_7 = entries_7_asid == io_csr_satp_asid; // @[MMUBundle.scala 198:59]
  wire  _hitVec_T_143 = entries_7_tag[26:18] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 208:40]
  wire  _hitVec_T_146 = entries_7_tag[26:9] == io_rreq_0_bits_vpn[26:9]; // @[MMUBundle.scala 209:38]
  wire  _hitVec_T_149 = entries_7_tag == io_rreq_0_bits_vpn; // @[MMUConst.scala 115:33]
  wire  _hitVec_T_153 = 2'h1 == entries_7_level ? _hitVec_T_146 : 2'h0 == entries_7_level & _hitVec_T_143; // @[Mux.scala 81:58]
  wire  _hitVec_T_155 = 2'h2 == entries_7_level ? _hitVec_T_149 : _hitVec_T_153; // @[Mux.scala 81:58]
  wire  _hitVec_T_156 = hitVec_asid_hit_7 & _hitVec_T_155; // @[MMUBundle.scala 207:19]
  wire  hitVec_7 = _hitVec_T_156 & v_7 & ~refill_mask[7]; // @[TLBStorage.scala 56:139]
  reg  hitVecReg_0; // @[Reg.scala 16:16]
  reg  hitVecReg_1; // @[Reg.scala 16:16]
  reg  hitVecReg_2; // @[Reg.scala 16:16]
  reg  hitVecReg_3; // @[Reg.scala 16:16]
  reg  hitVecReg_4; // @[Reg.scala 16:16]
  reg  hitVecReg_5; // @[Reg.scala 16:16]
  reg  hitVecReg_6; // @[Reg.scala 16:16]
  reg  hitVecReg_7; // @[Reg.scala 16:16]
  reg  io_rresp_0_valid_REG; // @[TLBStorage.scala 62:58]
  wire [7:0] _io_rresp_0_bits_hit_T = {hitVecReg_0,hitVecReg_1,hitVecReg_2,hitVecReg_3,hitVecReg_4,hitVecReg_5,
    hitVecReg_6,hitVecReg_7}; // @[Cat.scala 31:58]
  wire  _io_rresp_0_bits_hit_T_1 = |_io_rresp_0_bits_hit_T; // @[TLBStorage.scala 63:37]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_2 = {entries_0_ppn[23:18],io_rreq_0_bits_vpn[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_5 = {entries_0_ppn[23:9],io_rreq_0_bits_vpn[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_7 = 2'h0 == entries_0_level ? _io_rresp_0_bits_ppn_ppn_res_T_2 : 24'h0; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_9 = 2'h1 == entries_0_level ? _io_rresp_0_bits_ppn_ppn_res_T_5 :
    _io_rresp_0_bits_ppn_ppn_res_T_7; // @[Mux.scala 81:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res = 2'h2 == entries_0_level ? entries_0_ppn : _io_rresp_0_bits_ppn_ppn_res_T_9
    ; // @[Mux.scala 81:58]
  reg [17:0] io_rresp_0_bits_ppn_r; // @[Reg.scala 16:16]
  wire [23:0] _io_rresp_0_bits_ppn_T_2 = {entries_0_ppn[23:18],io_rresp_0_bits_ppn_r}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_13 = {entries_1_ppn[23:18],io_rreq_0_bits_vpn[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_16 = {entries_1_ppn[23:9],io_rreq_0_bits_vpn[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_18 = 2'h0 == entries_1_level ? _io_rresp_0_bits_ppn_ppn_res_T_13 : 24'h0; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_20 = 2'h1 == entries_1_level ? _io_rresp_0_bits_ppn_ppn_res_T_16 :
    _io_rresp_0_bits_ppn_ppn_res_T_18; // @[Mux.scala 81:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res_1 = 2'h2 == entries_1_level ? entries_1_ppn :
    _io_rresp_0_bits_ppn_ppn_res_T_20; // @[Mux.scala 81:58]
  reg [17:0] io_rresp_0_bits_ppn_r1; // @[Reg.scala 16:16]
  wire [23:0] _io_rresp_0_bits_ppn_T_5 = {entries_1_ppn[23:18],io_rresp_0_bits_ppn_r1}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_24 = {entries_2_ppn[23:18],io_rreq_0_bits_vpn[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_27 = {entries_2_ppn[23:9],io_rreq_0_bits_vpn[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_29 = 2'h0 == entries_2_level ? _io_rresp_0_bits_ppn_ppn_res_T_24 : 24'h0; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_31 = 2'h1 == entries_2_level ? _io_rresp_0_bits_ppn_ppn_res_T_27 :
    _io_rresp_0_bits_ppn_ppn_res_T_29; // @[Mux.scala 81:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res_2 = 2'h2 == entries_2_level ? entries_2_ppn :
    _io_rresp_0_bits_ppn_ppn_res_T_31; // @[Mux.scala 81:58]
  reg [17:0] io_rresp_0_bits_ppn_r2; // @[Reg.scala 16:16]
  wire [23:0] _io_rresp_0_bits_ppn_T_8 = {entries_2_ppn[23:18],io_rresp_0_bits_ppn_r2}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_35 = {entries_3_ppn[23:18],io_rreq_0_bits_vpn[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_38 = {entries_3_ppn[23:9],io_rreq_0_bits_vpn[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_40 = 2'h0 == entries_3_level ? _io_rresp_0_bits_ppn_ppn_res_T_35 : 24'h0; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_42 = 2'h1 == entries_3_level ? _io_rresp_0_bits_ppn_ppn_res_T_38 :
    _io_rresp_0_bits_ppn_ppn_res_T_40; // @[Mux.scala 81:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res_3 = 2'h2 == entries_3_level ? entries_3_ppn :
    _io_rresp_0_bits_ppn_ppn_res_T_42; // @[Mux.scala 81:58]
  reg [17:0] io_rresp_0_bits_ppn_r3; // @[Reg.scala 16:16]
  wire [23:0] _io_rresp_0_bits_ppn_T_11 = {entries_3_ppn[23:18],io_rresp_0_bits_ppn_r3}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_46 = {entries_4_ppn[23:18],io_rreq_0_bits_vpn[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_49 = {entries_4_ppn[23:9],io_rreq_0_bits_vpn[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_51 = 2'h0 == entries_4_level ? _io_rresp_0_bits_ppn_ppn_res_T_46 : 24'h0; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_53 = 2'h1 == entries_4_level ? _io_rresp_0_bits_ppn_ppn_res_T_49 :
    _io_rresp_0_bits_ppn_ppn_res_T_51; // @[Mux.scala 81:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res_4 = 2'h2 == entries_4_level ? entries_4_ppn :
    _io_rresp_0_bits_ppn_ppn_res_T_53; // @[Mux.scala 81:58]
  reg [17:0] io_rresp_0_bits_ppn_r4; // @[Reg.scala 16:16]
  wire [23:0] _io_rresp_0_bits_ppn_T_14 = {entries_4_ppn[23:18],io_rresp_0_bits_ppn_r4}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_57 = {entries_5_ppn[23:18],io_rreq_0_bits_vpn[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_60 = {entries_5_ppn[23:9],io_rreq_0_bits_vpn[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_62 = 2'h0 == entries_5_level ? _io_rresp_0_bits_ppn_ppn_res_T_57 : 24'h0; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_64 = 2'h1 == entries_5_level ? _io_rresp_0_bits_ppn_ppn_res_T_60 :
    _io_rresp_0_bits_ppn_ppn_res_T_62; // @[Mux.scala 81:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res_5 = 2'h2 == entries_5_level ? entries_5_ppn :
    _io_rresp_0_bits_ppn_ppn_res_T_64; // @[Mux.scala 81:58]
  reg [17:0] io_rresp_0_bits_ppn_r5; // @[Reg.scala 16:16]
  wire [23:0] _io_rresp_0_bits_ppn_T_17 = {entries_5_ppn[23:18],io_rresp_0_bits_ppn_r5}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_68 = {entries_6_ppn[23:18],io_rreq_0_bits_vpn[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_71 = {entries_6_ppn[23:9],io_rreq_0_bits_vpn[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_73 = 2'h0 == entries_6_level ? _io_rresp_0_bits_ppn_ppn_res_T_68 : 24'h0; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_75 = 2'h1 == entries_6_level ? _io_rresp_0_bits_ppn_ppn_res_T_71 :
    _io_rresp_0_bits_ppn_ppn_res_T_73; // @[Mux.scala 81:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res_6 = 2'h2 == entries_6_level ? entries_6_ppn :
    _io_rresp_0_bits_ppn_ppn_res_T_75; // @[Mux.scala 81:58]
  reg [17:0] io_rresp_0_bits_ppn_r6; // @[Reg.scala 16:16]
  wire [23:0] _io_rresp_0_bits_ppn_T_20 = {entries_6_ppn[23:18],io_rresp_0_bits_ppn_r6}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_79 = {entries_7_ppn[23:18],io_rreq_0_bits_vpn[17:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_82 = {entries_7_ppn[23:9],io_rreq_0_bits_vpn[8:0]}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_84 = 2'h0 == entries_7_level ? _io_rresp_0_bits_ppn_ppn_res_T_79 : 24'h0; // @[Mux.scala 81:58]
  wire [23:0] _io_rresp_0_bits_ppn_ppn_res_T_86 = 2'h1 == entries_7_level ? _io_rresp_0_bits_ppn_ppn_res_T_82 :
    _io_rresp_0_bits_ppn_ppn_res_T_84; // @[Mux.scala 81:58]
  wire [23:0] io_rresp_0_bits_ppn_ppn_res_7 = 2'h2 == entries_7_level ? entries_7_ppn :
    _io_rresp_0_bits_ppn_ppn_res_T_86; // @[Mux.scala 81:58]
  reg [17:0] io_rresp_0_bits_ppn_r7; // @[Reg.scala 16:16]
  wire [23:0] _io_rresp_0_bits_ppn_T_23 = {entries_7_ppn[23:18],io_rresp_0_bits_ppn_r7}; // @[Cat.scala 31:58]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_1 = hitVecReg_0 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_0 = _io_rresp_0_bits_ppn_xs_T_1 & _io_rresp_0_bits_ppn_T_2; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_4 = hitVecReg_1 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_1 = _io_rresp_0_bits_ppn_xs_T_4 & _io_rresp_0_bits_ppn_T_5; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_7 = hitVecReg_2 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_2 = _io_rresp_0_bits_ppn_xs_T_7 & _io_rresp_0_bits_ppn_T_8; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_10 = hitVecReg_3 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_3 = _io_rresp_0_bits_ppn_xs_T_10 & _io_rresp_0_bits_ppn_T_11; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_13 = hitVecReg_4 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_4 = _io_rresp_0_bits_ppn_xs_T_13 & _io_rresp_0_bits_ppn_T_14; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_16 = hitVecReg_5 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_5 = _io_rresp_0_bits_ppn_xs_T_16 & _io_rresp_0_bits_ppn_T_17; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_19 = hitVecReg_6 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_6 = _io_rresp_0_bits_ppn_xs_T_19 & _io_rresp_0_bits_ppn_T_20; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_xs_T_22 = hitVecReg_7 ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [23:0] io_rresp_0_bits_ppn_xs_7 = _io_rresp_0_bits_ppn_xs_T_22 & _io_rresp_0_bits_ppn_T_23; // @[ParallelMux.scala 65:65]
  wire [23:0] _io_rresp_0_bits_ppn_T_24 = io_rresp_0_bits_ppn_xs_0 | io_rresp_0_bits_ppn_xs_1; // @[ParallelMux.scala 37:55]
  wire [23:0] _io_rresp_0_bits_ppn_T_25 = io_rresp_0_bits_ppn_xs_2 | io_rresp_0_bits_ppn_xs_3; // @[ParallelMux.scala 37:55]
  wire [23:0] _io_rresp_0_bits_ppn_T_26 = _io_rresp_0_bits_ppn_T_24 | _io_rresp_0_bits_ppn_T_25; // @[ParallelMux.scala 37:55]
  wire [23:0] _io_rresp_0_bits_ppn_T_27 = io_rresp_0_bits_ppn_xs_4 | io_rresp_0_bits_ppn_xs_5; // @[ParallelMux.scala 37:55]
  wire [23:0] _io_rresp_0_bits_ppn_T_28 = io_rresp_0_bits_ppn_xs_6 | io_rresp_0_bits_ppn_xs_7; // @[ParallelMux.scala 37:55]
  wire [23:0] _io_rresp_0_bits_ppn_T_29 = _io_rresp_0_bits_ppn_T_27 | _io_rresp_0_bits_ppn_T_28; // @[ParallelMux.scala 37:55]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_1 = hitVecReg_0 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo = {entries_0_perm_w,entries_0_perm_r,entries_0_perm_pm_r,entries_0_perm_pm_w,
    entries_0_perm_pm_x,entries_0_perm_pm_c,entries_0_perm_pm_atomic}; // @[ParallelMux.scala 65:75]
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
  wire [13:0] _io_rresp_0_bits_perm_xs_T_19 = hitVecReg_1 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo_1 = {entries_1_perm_w,entries_1_perm_r,entries_1_perm_pm_r,entries_1_perm_pm_w,
    entries_1_perm_pm_x,entries_1_perm_pm_c,entries_1_perm_pm_atomic}; // @[ParallelMux.scala 65:75]
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
  wire [13:0] _io_rresp_0_bits_perm_xs_T_37 = hitVecReg_2 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo_2 = {entries_2_perm_w,entries_2_perm_r,entries_2_perm_pm_r,entries_2_perm_pm_w,
    entries_2_perm_pm_x,entries_2_perm_pm_c,entries_2_perm_pm_atomic}; // @[ParallelMux.scala 65:75]
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
  wire [13:0] _io_rresp_0_bits_perm_xs_T_55 = hitVecReg_3 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo_3 = {entries_3_perm_w,entries_3_perm_r,entries_3_perm_pm_r,entries_3_perm_pm_w,
    entries_3_perm_pm_x,entries_3_perm_pm_c,entries_3_perm_pm_atomic}; // @[ParallelMux.scala 65:75]
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
  wire [13:0] _io_rresp_0_bits_perm_xs_T_73 = hitVecReg_4 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo_4 = {entries_4_perm_w,entries_4_perm_r,entries_4_perm_pm_r,entries_4_perm_pm_w,
    entries_4_perm_pm_x,entries_4_perm_pm_c,entries_4_perm_pm_atomic}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_74 = {entries_4_perm_pf,entries_4_perm_af,entries_4_perm_d,entries_4_perm_a,
    entries_4_perm_g,entries_4_perm_u,entries_4_perm_x,io_rresp_0_bits_perm_xs_lo_4}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_75 = _io_rresp_0_bits_perm_xs_T_73 & _io_rresp_0_bits_perm_xs_T_74; // @[ParallelMux.scala 65:65]
  wire  io_rresp_0_bits_perm_xs_4_pm_atomic = _io_rresp_0_bits_perm_xs_T_75[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_pm_c = _io_rresp_0_bits_perm_xs_T_75[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_pm_x = _io_rresp_0_bits_perm_xs_T_75[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_pm_w = _io_rresp_0_bits_perm_xs_T_75[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_pm_r = _io_rresp_0_bits_perm_xs_T_75[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_r = _io_rresp_0_bits_perm_xs_T_75[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_w = _io_rresp_0_bits_perm_xs_T_75[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_x = _io_rresp_0_bits_perm_xs_T_75[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_u = _io_rresp_0_bits_perm_xs_T_75[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_g = _io_rresp_0_bits_perm_xs_T_75[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_a = _io_rresp_0_bits_perm_xs_T_75[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_d = _io_rresp_0_bits_perm_xs_T_75[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_af = _io_rresp_0_bits_perm_xs_T_75[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_4_pf = _io_rresp_0_bits_perm_xs_T_75[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_91 = hitVecReg_5 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo_5 = {entries_5_perm_w,entries_5_perm_r,entries_5_perm_pm_r,entries_5_perm_pm_w,
    entries_5_perm_pm_x,entries_5_perm_pm_c,entries_5_perm_pm_atomic}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_92 = {entries_5_perm_pf,entries_5_perm_af,entries_5_perm_d,entries_5_perm_a,
    entries_5_perm_g,entries_5_perm_u,entries_5_perm_x,io_rresp_0_bits_perm_xs_lo_5}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_93 = _io_rresp_0_bits_perm_xs_T_91 & _io_rresp_0_bits_perm_xs_T_92; // @[ParallelMux.scala 65:65]
  wire  io_rresp_0_bits_perm_xs_5_pm_atomic = _io_rresp_0_bits_perm_xs_T_93[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_pm_c = _io_rresp_0_bits_perm_xs_T_93[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_pm_x = _io_rresp_0_bits_perm_xs_T_93[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_pm_w = _io_rresp_0_bits_perm_xs_T_93[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_pm_r = _io_rresp_0_bits_perm_xs_T_93[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_r = _io_rresp_0_bits_perm_xs_T_93[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_w = _io_rresp_0_bits_perm_xs_T_93[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_x = _io_rresp_0_bits_perm_xs_T_93[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_u = _io_rresp_0_bits_perm_xs_T_93[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_g = _io_rresp_0_bits_perm_xs_T_93[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_a = _io_rresp_0_bits_perm_xs_T_93[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_d = _io_rresp_0_bits_perm_xs_T_93[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_af = _io_rresp_0_bits_perm_xs_T_93[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_5_pf = _io_rresp_0_bits_perm_xs_T_93[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_109 = hitVecReg_6 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo_6 = {entries_6_perm_w,entries_6_perm_r,entries_6_perm_pm_r,entries_6_perm_pm_w,
    entries_6_perm_pm_x,entries_6_perm_pm_c,entries_6_perm_pm_atomic}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_110 = {entries_6_perm_pf,entries_6_perm_af,entries_6_perm_d,entries_6_perm_a,
    entries_6_perm_g,entries_6_perm_u,entries_6_perm_x,io_rresp_0_bits_perm_xs_lo_6}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_111 = _io_rresp_0_bits_perm_xs_T_109 & _io_rresp_0_bits_perm_xs_T_110; // @[ParallelMux.scala 65:65]
  wire  io_rresp_0_bits_perm_xs_6_pm_atomic = _io_rresp_0_bits_perm_xs_T_111[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_pm_c = _io_rresp_0_bits_perm_xs_T_111[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_pm_x = _io_rresp_0_bits_perm_xs_T_111[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_pm_w = _io_rresp_0_bits_perm_xs_T_111[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_pm_r = _io_rresp_0_bits_perm_xs_T_111[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_r = _io_rresp_0_bits_perm_xs_T_111[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_w = _io_rresp_0_bits_perm_xs_T_111[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_x = _io_rresp_0_bits_perm_xs_T_111[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_u = _io_rresp_0_bits_perm_xs_T_111[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_g = _io_rresp_0_bits_perm_xs_T_111[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_a = _io_rresp_0_bits_perm_xs_T_111[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_d = _io_rresp_0_bits_perm_xs_T_111[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_af = _io_rresp_0_bits_perm_xs_T_111[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_6_pf = _io_rresp_0_bits_perm_xs_T_111[13]; // @[ParallelMux.scala 65:87]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_127 = hitVecReg_7 ? 14'h3fff : 14'h0; // @[Bitwise.scala 74:12]
  wire [6:0] io_rresp_0_bits_perm_xs_lo_7 = {entries_7_perm_w,entries_7_perm_r,entries_7_perm_pm_r,entries_7_perm_pm_w,
    entries_7_perm_pm_x,entries_7_perm_pm_c,entries_7_perm_pm_atomic}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_128 = {entries_7_perm_pf,entries_7_perm_af,entries_7_perm_d,entries_7_perm_a,
    entries_7_perm_g,entries_7_perm_u,entries_7_perm_x,io_rresp_0_bits_perm_xs_lo_7}; // @[ParallelMux.scala 65:75]
  wire [13:0] _io_rresp_0_bits_perm_xs_T_129 = _io_rresp_0_bits_perm_xs_T_127 & _io_rresp_0_bits_perm_xs_T_128; // @[ParallelMux.scala 65:65]
  wire  io_rresp_0_bits_perm_xs_7_pm_atomic = _io_rresp_0_bits_perm_xs_T_129[0]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_pm_c = _io_rresp_0_bits_perm_xs_T_129[1]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_pm_x = _io_rresp_0_bits_perm_xs_T_129[2]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_pm_w = _io_rresp_0_bits_perm_xs_T_129[3]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_pm_r = _io_rresp_0_bits_perm_xs_T_129[4]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_r = _io_rresp_0_bits_perm_xs_T_129[5]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_w = _io_rresp_0_bits_perm_xs_T_129[6]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_x = _io_rresp_0_bits_perm_xs_T_129[7]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_u = _io_rresp_0_bits_perm_xs_T_129[8]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_g = _io_rresp_0_bits_perm_xs_T_129[9]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_a = _io_rresp_0_bits_perm_xs_T_129[10]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_d = _io_rresp_0_bits_perm_xs_T_129[11]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_af = _io_rresp_0_bits_perm_xs_T_129[12]; // @[ParallelMux.scala 65:87]
  wire  io_rresp_0_bits_perm_xs_7_pf = _io_rresp_0_bits_perm_xs_T_129[13]; // @[ParallelMux.scala 65:87]
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
  wire [6:0] io_rresp_0_bits_perm_lo_6 = {io_rresp_0_bits_perm_xs_4_w,io_rresp_0_bits_perm_xs_4_r,
    io_rresp_0_bits_perm_xs_4_pm_r,io_rresp_0_bits_perm_xs_4_pm_w,io_rresp_0_bits_perm_xs_4_pm_x,
    io_rresp_0_bits_perm_xs_4_pm_c,io_rresp_0_bits_perm_xs_4_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_0_bits_perm_T_51 = {io_rresp_0_bits_perm_xs_4_pf,io_rresp_0_bits_perm_xs_4_af,
    io_rresp_0_bits_perm_xs_4_d,io_rresp_0_bits_perm_xs_4_a,io_rresp_0_bits_perm_xs_4_g,io_rresp_0_bits_perm_xs_4_u,
    io_rresp_0_bits_perm_xs_4_x,io_rresp_0_bits_perm_lo_6}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_0_bits_perm_lo_7 = {io_rresp_0_bits_perm_xs_5_w,io_rresp_0_bits_perm_xs_5_r,
    io_rresp_0_bits_perm_xs_5_pm_r,io_rresp_0_bits_perm_xs_5_pm_w,io_rresp_0_bits_perm_xs_5_pm_x,
    io_rresp_0_bits_perm_xs_5_pm_c,io_rresp_0_bits_perm_xs_5_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_52 = {io_rresp_0_bits_perm_xs_5_pf,io_rresp_0_bits_perm_xs_5_af,
    io_rresp_0_bits_perm_xs_5_d,io_rresp_0_bits_perm_xs_5_a,io_rresp_0_bits_perm_xs_5_g,io_rresp_0_bits_perm_xs_5_u,
    io_rresp_0_bits_perm_xs_5_x,io_rresp_0_bits_perm_lo_7}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_53 = _io_rresp_0_bits_perm_T_51 | _io_rresp_0_bits_perm_T_52; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_0_bits_perm_lo_8 = {io_rresp_0_bits_perm_xs_6_w,io_rresp_0_bits_perm_xs_6_r,
    io_rresp_0_bits_perm_xs_6_pm_r,io_rresp_0_bits_perm_xs_6_pm_w,io_rresp_0_bits_perm_xs_6_pm_x,
    io_rresp_0_bits_perm_xs_6_pm_c,io_rresp_0_bits_perm_xs_6_pm_atomic}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_0_bits_perm_T_68 = {io_rresp_0_bits_perm_xs_6_pf,io_rresp_0_bits_perm_xs_6_af,
    io_rresp_0_bits_perm_xs_6_d,io_rresp_0_bits_perm_xs_6_a,io_rresp_0_bits_perm_xs_6_g,io_rresp_0_bits_perm_xs_6_u,
    io_rresp_0_bits_perm_xs_6_x,io_rresp_0_bits_perm_lo_8}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_0_bits_perm_lo_9 = {io_rresp_0_bits_perm_xs_7_w,io_rresp_0_bits_perm_xs_7_r,
    io_rresp_0_bits_perm_xs_7_pm_r,io_rresp_0_bits_perm_xs_7_pm_w,io_rresp_0_bits_perm_xs_7_pm_x,
    io_rresp_0_bits_perm_xs_7_pm_c,io_rresp_0_bits_perm_xs_7_pm_atomic}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_69 = {io_rresp_0_bits_perm_xs_7_pf,io_rresp_0_bits_perm_xs_7_af,
    io_rresp_0_bits_perm_xs_7_d,io_rresp_0_bits_perm_xs_7_a,io_rresp_0_bits_perm_xs_7_g,io_rresp_0_bits_perm_xs_7_u,
    io_rresp_0_bits_perm_xs_7_x,io_rresp_0_bits_perm_lo_9}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_70 = _io_rresp_0_bits_perm_T_68 | _io_rresp_0_bits_perm_T_69; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_0_bits_perm_lo_10 = {_io_rresp_0_bits_perm_T_53[6],_io_rresp_0_bits_perm_T_53[5],
    _io_rresp_0_bits_perm_T_53[4],_io_rresp_0_bits_perm_T_53[3],_io_rresp_0_bits_perm_T_53[2],
    _io_rresp_0_bits_perm_T_53[1],_io_rresp_0_bits_perm_T_53[0]}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_0_bits_perm_T_85 = {_io_rresp_0_bits_perm_T_53[13],_io_rresp_0_bits_perm_T_53[12],
    _io_rresp_0_bits_perm_T_53[11],_io_rresp_0_bits_perm_T_53[10],_io_rresp_0_bits_perm_T_53[9],
    _io_rresp_0_bits_perm_T_53[8],_io_rresp_0_bits_perm_T_53[7],io_rresp_0_bits_perm_lo_10}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_0_bits_perm_lo_11 = {_io_rresp_0_bits_perm_T_70[6],_io_rresp_0_bits_perm_T_70[5],
    _io_rresp_0_bits_perm_T_70[4],_io_rresp_0_bits_perm_T_70[3],_io_rresp_0_bits_perm_T_70[2],
    _io_rresp_0_bits_perm_T_70[1],_io_rresp_0_bits_perm_T_70[0]}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_86 = {_io_rresp_0_bits_perm_T_70[13],_io_rresp_0_bits_perm_T_70[12],
    _io_rresp_0_bits_perm_T_70[11],_io_rresp_0_bits_perm_T_70[10],_io_rresp_0_bits_perm_T_70[9],
    _io_rresp_0_bits_perm_T_70[8],_io_rresp_0_bits_perm_T_70[7],io_rresp_0_bits_perm_lo_11}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_87 = _io_rresp_0_bits_perm_T_85 | _io_rresp_0_bits_perm_T_86; // @[ParallelMux.scala 37:55]
  wire [6:0] io_rresp_0_bits_perm_lo_12 = {_io_rresp_0_bits_perm_T_36[6],_io_rresp_0_bits_perm_T_36[5],
    _io_rresp_0_bits_perm_T_36[4],_io_rresp_0_bits_perm_T_36[3],_io_rresp_0_bits_perm_T_36[2],
    _io_rresp_0_bits_perm_T_36[1],_io_rresp_0_bits_perm_T_36[0]}; // @[ParallelMux.scala 37:52]
  wire [13:0] _io_rresp_0_bits_perm_T_102 = {_io_rresp_0_bits_perm_T_36[13],_io_rresp_0_bits_perm_T_36[12],
    _io_rresp_0_bits_perm_T_36[11],_io_rresp_0_bits_perm_T_36[10],_io_rresp_0_bits_perm_T_36[9],
    _io_rresp_0_bits_perm_T_36[8],_io_rresp_0_bits_perm_T_36[7],io_rresp_0_bits_perm_lo_12}; // @[ParallelMux.scala 37:52]
  wire [6:0] io_rresp_0_bits_perm_lo_13 = {_io_rresp_0_bits_perm_T_87[6],_io_rresp_0_bits_perm_T_87[5],
    _io_rresp_0_bits_perm_T_87[4],_io_rresp_0_bits_perm_T_87[3],_io_rresp_0_bits_perm_T_87[2],
    _io_rresp_0_bits_perm_T_87[1],_io_rresp_0_bits_perm_T_87[0]}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_103 = {_io_rresp_0_bits_perm_T_87[13],_io_rresp_0_bits_perm_T_87[12],
    _io_rresp_0_bits_perm_T_87[11],_io_rresp_0_bits_perm_T_87[10],_io_rresp_0_bits_perm_T_87[9],
    _io_rresp_0_bits_perm_T_87[8],_io_rresp_0_bits_perm_T_87[7],io_rresp_0_bits_perm_lo_13}; // @[ParallelMux.scala 37:65]
  wire [13:0] _io_rresp_0_bits_perm_T_104 = _io_rresp_0_bits_perm_T_102 | _io_rresp_0_bits_perm_T_103; // @[ParallelMux.scala 37:55]
  wire [7:0] _io_access_0_touch_ways_bits_T = {hitVecReg_7,hitVecReg_6,hitVecReg_5,hitVecReg_4,hitVecReg_3,hitVecReg_2,
    hitVecReg_1,hitVecReg_0}; // @[OneHot.scala 22:45]
  wire [3:0] io_access_0_touch_ways_bits_hi_1 = _io_access_0_touch_ways_bits_T[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] io_access_0_touch_ways_bits_lo_1 = _io_access_0_touch_ways_bits_T[3:0]; // @[OneHot.scala 31:18]
  wire  _io_access_0_touch_ways_bits_T_1 = |io_access_0_touch_ways_bits_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _io_access_0_touch_ways_bits_T_2 = io_access_0_touch_ways_bits_hi_1 | io_access_0_touch_ways_bits_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] io_access_0_touch_ways_bits_hi_2 = _io_access_0_touch_ways_bits_T_2[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_access_0_touch_ways_bits_lo_2 = _io_access_0_touch_ways_bits_T_2[1:0]; // @[OneHot.scala 31:18]
  wire  _io_access_0_touch_ways_bits_T_3 = |io_access_0_touch_ways_bits_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _io_access_0_touch_ways_bits_T_4 = io_access_0_touch_ways_bits_hi_2 | io_access_0_touch_ways_bits_lo_2; // @[OneHot.scala 32:28]
  wire [2:0] _io_access_0_touch_ways_bits_T_7 = {_io_access_0_touch_ways_bits_T_1,_io_access_0_touch_ways_bits_T_3,
    _io_access_0_touch_ways_bits_T_4[1]}; // @[Cat.scala 31:58]
  wire  _GEN_17 = 3'h0 == io_wwayIdx | v_0; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire  _GEN_18 = 3'h1 == io_wwayIdx | v_1; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire  _GEN_19 = 3'h2 == io_wwayIdx | v_2; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire  _GEN_20 = 3'h3 == io_wwayIdx | v_3; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire  _GEN_21 = 3'h4 == io_wwayIdx | v_4; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire  _GEN_22 = 3'h5 == io_wwayIdx | v_5; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire  _GEN_23 = 3'h6 == io_wwayIdx | v_6; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire  _GEN_24 = 3'h7 == io_wwayIdx | v_7; // @[TLBStorage.scala 42:18 83:{25,25}]
  wire [6:0] _ptePerm_T = {io_wdata_entry_perm_d,io_wdata_entry_perm_a,io_wdata_entry_perm_g,
    io_wdata_entry_perm_u,io_wdata_entry_perm_x,io_wdata_entry_perm_w,io_wdata_entry_perm_r}; // @[MMUBundle.scala 223:47]
  wire  ptePerm_r = _ptePerm_T[0]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_w = _ptePerm_T[1]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_x = _ptePerm_T[2]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_u = _ptePerm_T[3]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_g = _ptePerm_T[4]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_a = _ptePerm_T[5]; // @[MMUBundle.scala 223:47]
  wire  ptePerm_d = _ptePerm_T[6]; // @[MMUBundle.scala 223:47]
  reg [2:0] refill_wayIdx_reg; // @[TLBStorage.scala 88:34]
  reg  REG; // @[TLBStorage.scala 89:16]
  wire  sfenceHit_asid_hit = entries_0_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_2 = entries_0_tag[26:18] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 208:40]
  wire  _sfenceHit_T_5 = entries_0_tag[26:9] == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 209:38]
  wire  _sfenceHit_T_8 = entries_0_tag == io_sfence_bits_addr[38:12]; // @[MMUConst.scala 115:33]
  wire  _sfenceHit_T_12 = 2'h1 == entries_0_level ? _sfenceHit_T_5 : 2'h0 == entries_0_level & _sfenceHit_T_2; // @[Mux.scala 81:58]
  wire  _sfenceHit_T_14 = 2'h2 == entries_0_level ? _sfenceHit_T_8 : _sfenceHit_T_12; // @[Mux.scala 81:58]
  wire  sfenceHit_0 = sfenceHit_asid_hit & _sfenceHit_T_14; // @[MMUBundle.scala 207:19]
  wire  sfenceHit_asid_hit_1 = entries_1_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_17 = entries_1_tag[26:18] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 208:40]
  wire  _sfenceHit_T_20 = entries_1_tag[26:9] == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 209:38]
  wire  _sfenceHit_T_23 = entries_1_tag == io_sfence_bits_addr[38:12]; // @[MMUConst.scala 115:33]
  wire  _sfenceHit_T_27 = 2'h1 == entries_1_level ? _sfenceHit_T_20 : 2'h0 == entries_1_level & _sfenceHit_T_17; // @[Mux.scala 81:58]
  wire  _sfenceHit_T_29 = 2'h2 == entries_1_level ? _sfenceHit_T_23 : _sfenceHit_T_27; // @[Mux.scala 81:58]
  wire  sfenceHit_1 = sfenceHit_asid_hit_1 & _sfenceHit_T_29; // @[MMUBundle.scala 207:19]
  wire  sfenceHit_asid_hit_2 = entries_2_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_32 = entries_2_tag[26:18] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 208:40]
  wire  _sfenceHit_T_35 = entries_2_tag[26:9] == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 209:38]
  wire  _sfenceHit_T_38 = entries_2_tag == io_sfence_bits_addr[38:12]; // @[MMUConst.scala 115:33]
  wire  _sfenceHit_T_42 = 2'h1 == entries_2_level ? _sfenceHit_T_35 : 2'h0 == entries_2_level & _sfenceHit_T_32; // @[Mux.scala 81:58]
  wire  _sfenceHit_T_44 = 2'h2 == entries_2_level ? _sfenceHit_T_38 : _sfenceHit_T_42; // @[Mux.scala 81:58]
  wire  sfenceHit_2 = sfenceHit_asid_hit_2 & _sfenceHit_T_44; // @[MMUBundle.scala 207:19]
  wire  sfenceHit_asid_hit_3 = entries_3_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_47 = entries_3_tag[26:18] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 208:40]
  wire  _sfenceHit_T_50 = entries_3_tag[26:9] == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 209:38]
  wire  _sfenceHit_T_53 = entries_3_tag == io_sfence_bits_addr[38:12]; // @[MMUConst.scala 115:33]
  wire  _sfenceHit_T_57 = 2'h1 == entries_3_level ? _sfenceHit_T_50 : 2'h0 == entries_3_level & _sfenceHit_T_47; // @[Mux.scala 81:58]
  wire  _sfenceHit_T_59 = 2'h2 == entries_3_level ? _sfenceHit_T_53 : _sfenceHit_T_57; // @[Mux.scala 81:58]
  wire  sfenceHit_3 = sfenceHit_asid_hit_3 & _sfenceHit_T_59; // @[MMUBundle.scala 207:19]
  wire  sfenceHit_asid_hit_4 = entries_4_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_62 = entries_4_tag[26:18] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 208:40]
  wire  _sfenceHit_T_65 = entries_4_tag[26:9] == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 209:38]
  wire  _sfenceHit_T_68 = entries_4_tag == io_sfence_bits_addr[38:12]; // @[MMUConst.scala 115:33]
  wire  _sfenceHit_T_72 = 2'h1 == entries_4_level ? _sfenceHit_T_65 : 2'h0 == entries_4_level & _sfenceHit_T_62; // @[Mux.scala 81:58]
  wire  _sfenceHit_T_74 = 2'h2 == entries_4_level ? _sfenceHit_T_68 : _sfenceHit_T_72; // @[Mux.scala 81:58]
  wire  sfenceHit_4 = sfenceHit_asid_hit_4 & _sfenceHit_T_74; // @[MMUBundle.scala 207:19]
  wire  sfenceHit_asid_hit_5 = entries_5_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_77 = entries_5_tag[26:18] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 208:40]
  wire  _sfenceHit_T_80 = entries_5_tag[26:9] == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 209:38]
  wire  _sfenceHit_T_83 = entries_5_tag == io_sfence_bits_addr[38:12]; // @[MMUConst.scala 115:33]
  wire  _sfenceHit_T_87 = 2'h1 == entries_5_level ? _sfenceHit_T_80 : 2'h0 == entries_5_level & _sfenceHit_T_77; // @[Mux.scala 81:58]
  wire  _sfenceHit_T_89 = 2'h2 == entries_5_level ? _sfenceHit_T_83 : _sfenceHit_T_87; // @[Mux.scala 81:58]
  wire  sfenceHit_5 = sfenceHit_asid_hit_5 & _sfenceHit_T_89; // @[MMUBundle.scala 207:19]
  wire  sfenceHit_asid_hit_6 = entries_6_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_92 = entries_6_tag[26:18] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 208:40]
  wire  _sfenceHit_T_95 = entries_6_tag[26:9] == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 209:38]
  wire  _sfenceHit_T_98 = entries_6_tag == io_sfence_bits_addr[38:12]; // @[MMUConst.scala 115:33]
  wire  _sfenceHit_T_102 = 2'h1 == entries_6_level ? _sfenceHit_T_95 : 2'h0 == entries_6_level & _sfenceHit_T_92; // @[Mux.scala 81:58]
  wire  _sfenceHit_T_104 = 2'h2 == entries_6_level ? _sfenceHit_T_98 : _sfenceHit_T_102; // @[Mux.scala 81:58]
  wire  sfenceHit_6 = sfenceHit_asid_hit_6 & _sfenceHit_T_104; // @[MMUBundle.scala 207:19]
  wire  sfenceHit_asid_hit_7 = entries_7_asid == io_sfence_bits_asid; // @[MMUBundle.scala 198:59]
  wire  _sfenceHit_T_107 = entries_7_tag[26:18] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 208:40]
  wire  _sfenceHit_T_110 = entries_7_tag[26:9] == io_sfence_bits_addr[38:21]; // @[MMUBundle.scala 209:38]
  wire  _sfenceHit_T_113 = entries_7_tag == io_sfence_bits_addr[38:12]; // @[MMUConst.scala 115:33]
  wire  _sfenceHit_T_117 = 2'h1 == entries_7_level ? _sfenceHit_T_110 : 2'h0 == entries_7_level & _sfenceHit_T_107; // @[Mux.scala 81:58]
  wire  _sfenceHit_T_119 = 2'h2 == entries_7_level ? _sfenceHit_T_113 : _sfenceHit_T_117; // @[Mux.scala 81:58]
  wire  sfenceHit_7 = sfenceHit_asid_hit_7 & _sfenceHit_T_119; // @[MMUBundle.scala 207:19]
  wire  _GEN_357 = 3'h1 == io_wwayIdx ? v_1 : v_0; // @[TLBStorage.scala 122:{40,40}]
  wire  _GEN_358 = 3'h2 == io_wwayIdx ? v_2 : _GEN_357; // @[TLBStorage.scala 122:{40,40}]
  wire  _GEN_359 = 3'h3 == io_wwayIdx ? v_3 : _GEN_358; // @[TLBStorage.scala 122:{40,40}]
  wire  _GEN_360 = 3'h4 == io_wwayIdx ? v_4 : _GEN_359; // @[TLBStorage.scala 122:{40,40}]
  wire  _GEN_361 = 3'h5 == io_wwayIdx ? v_5 : _GEN_360; // @[TLBStorage.scala 122:{40,40}]
  wire  _GEN_362 = 3'h6 == io_wwayIdx ? v_6 : _GEN_361; // @[TLBStorage.scala 122:{40,40}]
  wire  _GEN_363 = 3'h7 == io_wwayIdx ? v_7 : _GEN_362; // @[TLBStorage.scala 122:{40,40}]
  wire [1:0] _GEN_365 = 3'h1 == io_wwayIdx ? entries_1_level : entries_0_level; // @[TLBStorage.scala 122:{98,98}]
  wire [1:0] _GEN_366 = 3'h2 == io_wwayIdx ? entries_2_level : _GEN_365; // @[TLBStorage.scala 122:{98,98}]
  wire [1:0] _GEN_367 = 3'h3 == io_wwayIdx ? entries_3_level : _GEN_366; // @[TLBStorage.scala 122:{98,98}]
  wire [1:0] _GEN_368 = 3'h4 == io_wwayIdx ? entries_4_level : _GEN_367; // @[TLBStorage.scala 122:{98,98}]
  wire [1:0] _GEN_369 = 3'h5 == io_wwayIdx ? entries_5_level : _GEN_368; // @[TLBStorage.scala 122:{98,98}]
  wire [1:0] _GEN_370 = 3'h6 == io_wwayIdx ? entries_6_level : _GEN_369; // @[TLBStorage.scala 122:{98,98}]
  wire [1:0] _GEN_371 = 3'h7 == io_wwayIdx ? entries_7_level : _GEN_370; // @[TLBStorage.scala 122:{98,98}]
  wire  _GEN_373 = 3'h1 == io_wwayIdx ? entries_1_perm_pm_atomic : entries_0_perm_pm_atomic; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_374 = 3'h2 == io_wwayIdx ? entries_2_perm_pm_atomic : _GEN_373; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_375 = 3'h3 == io_wwayIdx ? entries_3_perm_pm_atomic : _GEN_374; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_376 = 3'h4 == io_wwayIdx ? entries_4_perm_pm_atomic : _GEN_375; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_377 = 3'h5 == io_wwayIdx ? entries_5_perm_pm_atomic : _GEN_376; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_378 = 3'h6 == io_wwayIdx ? entries_6_perm_pm_atomic : _GEN_377; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_381 = 3'h1 == io_wwayIdx ? entries_1_perm_pm_c : entries_0_perm_pm_c; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_382 = 3'h2 == io_wwayIdx ? entries_2_perm_pm_c : _GEN_381; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_383 = 3'h3 == io_wwayIdx ? entries_3_perm_pm_c : _GEN_382; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_384 = 3'h4 == io_wwayIdx ? entries_4_perm_pm_c : _GEN_383; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_385 = 3'h5 == io_wwayIdx ? entries_5_perm_pm_c : _GEN_384; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_386 = 3'h6 == io_wwayIdx ? entries_6_perm_pm_c : _GEN_385; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_389 = 3'h1 == io_wwayIdx ? entries_1_perm_pm_x : entries_0_perm_pm_x; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_390 = 3'h2 == io_wwayIdx ? entries_2_perm_pm_x : _GEN_389; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_391 = 3'h3 == io_wwayIdx ? entries_3_perm_pm_x : _GEN_390; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_392 = 3'h4 == io_wwayIdx ? entries_4_perm_pm_x : _GEN_391; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_393 = 3'h5 == io_wwayIdx ? entries_5_perm_pm_x : _GEN_392; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_394 = 3'h6 == io_wwayIdx ? entries_6_perm_pm_x : _GEN_393; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_397 = 3'h1 == io_wwayIdx ? entries_1_perm_pm_w : entries_0_perm_pm_w; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_398 = 3'h2 == io_wwayIdx ? entries_2_perm_pm_w : _GEN_397; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_399 = 3'h3 == io_wwayIdx ? entries_3_perm_pm_w : _GEN_398; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_400 = 3'h4 == io_wwayIdx ? entries_4_perm_pm_w : _GEN_399; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_401 = 3'h5 == io_wwayIdx ? entries_5_perm_pm_w : _GEN_400; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_402 = 3'h6 == io_wwayIdx ? entries_6_perm_pm_w : _GEN_401; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_405 = 3'h1 == io_wwayIdx ? entries_1_perm_pm_r : entries_0_perm_pm_r; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_406 = 3'h2 == io_wwayIdx ? entries_2_perm_pm_r : _GEN_405; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_407 = 3'h3 == io_wwayIdx ? entries_3_perm_pm_r : _GEN_406; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_408 = 3'h4 == io_wwayIdx ? entries_4_perm_pm_r : _GEN_407; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_409 = 3'h5 == io_wwayIdx ? entries_5_perm_pm_r : _GEN_408; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_410 = 3'h6 == io_wwayIdx ? entries_6_perm_pm_r : _GEN_409; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_413 = 3'h1 == io_wwayIdx ? entries_1_perm_r : entries_0_perm_r; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_414 = 3'h2 == io_wwayIdx ? entries_2_perm_r : _GEN_413; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_415 = 3'h3 == io_wwayIdx ? entries_3_perm_r : _GEN_414; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_416 = 3'h4 == io_wwayIdx ? entries_4_perm_r : _GEN_415; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_417 = 3'h5 == io_wwayIdx ? entries_5_perm_r : _GEN_416; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_418 = 3'h6 == io_wwayIdx ? entries_6_perm_r : _GEN_417; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_421 = 3'h1 == io_wwayIdx ? entries_1_perm_w : entries_0_perm_w; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_422 = 3'h2 == io_wwayIdx ? entries_2_perm_w : _GEN_421; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_423 = 3'h3 == io_wwayIdx ? entries_3_perm_w : _GEN_422; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_424 = 3'h4 == io_wwayIdx ? entries_4_perm_w : _GEN_423; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_425 = 3'h5 == io_wwayIdx ? entries_5_perm_w : _GEN_424; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_426 = 3'h6 == io_wwayIdx ? entries_6_perm_w : _GEN_425; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_429 = 3'h1 == io_wwayIdx ? entries_1_perm_x : entries_0_perm_x; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_430 = 3'h2 == io_wwayIdx ? entries_2_perm_x : _GEN_429; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_431 = 3'h3 == io_wwayIdx ? entries_3_perm_x : _GEN_430; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_432 = 3'h4 == io_wwayIdx ? entries_4_perm_x : _GEN_431; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_433 = 3'h5 == io_wwayIdx ? entries_5_perm_x : _GEN_432; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_434 = 3'h6 == io_wwayIdx ? entries_6_perm_x : _GEN_433; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_437 = 3'h1 == io_wwayIdx ? entries_1_perm_u : entries_0_perm_u; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_438 = 3'h2 == io_wwayIdx ? entries_2_perm_u : _GEN_437; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_439 = 3'h3 == io_wwayIdx ? entries_3_perm_u : _GEN_438; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_440 = 3'h4 == io_wwayIdx ? entries_4_perm_u : _GEN_439; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_441 = 3'h5 == io_wwayIdx ? entries_5_perm_u : _GEN_440; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_442 = 3'h6 == io_wwayIdx ? entries_6_perm_u : _GEN_441; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_445 = 3'h1 == io_wwayIdx ? entries_1_perm_g : entries_0_perm_g; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_446 = 3'h2 == io_wwayIdx ? entries_2_perm_g : _GEN_445; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_447 = 3'h3 == io_wwayIdx ? entries_3_perm_g : _GEN_446; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_448 = 3'h4 == io_wwayIdx ? entries_4_perm_g : _GEN_447; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_449 = 3'h5 == io_wwayIdx ? entries_5_perm_g : _GEN_448; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_450 = 3'h6 == io_wwayIdx ? entries_6_perm_g : _GEN_449; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_453 = 3'h1 == io_wwayIdx ? entries_1_perm_a : entries_0_perm_a; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_454 = 3'h2 == io_wwayIdx ? entries_2_perm_a : _GEN_453; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_455 = 3'h3 == io_wwayIdx ? entries_3_perm_a : _GEN_454; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_456 = 3'h4 == io_wwayIdx ? entries_4_perm_a : _GEN_455; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_457 = 3'h5 == io_wwayIdx ? entries_5_perm_a : _GEN_456; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_458 = 3'h6 == io_wwayIdx ? entries_6_perm_a : _GEN_457; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_461 = 3'h1 == io_wwayIdx ? entries_1_perm_d : entries_0_perm_d; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_462 = 3'h2 == io_wwayIdx ? entries_2_perm_d : _GEN_461; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_463 = 3'h3 == io_wwayIdx ? entries_3_perm_d : _GEN_462; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_464 = 3'h4 == io_wwayIdx ? entries_4_perm_d : _GEN_463; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_465 = 3'h5 == io_wwayIdx ? entries_5_perm_d : _GEN_464; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_466 = 3'h6 == io_wwayIdx ? entries_6_perm_d : _GEN_465; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_469 = 3'h1 == io_wwayIdx ? entries_1_perm_af : entries_0_perm_af; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_470 = 3'h2 == io_wwayIdx ? entries_2_perm_af : _GEN_469; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_471 = 3'h3 == io_wwayIdx ? entries_3_perm_af : _GEN_470; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_472 = 3'h4 == io_wwayIdx ? entries_4_perm_af : _GEN_471; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_473 = 3'h5 == io_wwayIdx ? entries_5_perm_af : _GEN_472; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_474 = 3'h6 == io_wwayIdx ? entries_6_perm_af : _GEN_473; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_477 = 3'h1 == io_wwayIdx ? entries_1_perm_pf : entries_0_perm_pf; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_478 = 3'h2 == io_wwayIdx ? entries_2_perm_pf : _GEN_477; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_479 = 3'h3 == io_wwayIdx ? entries_3_perm_pf : _GEN_478; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_480 = 3'h4 == io_wwayIdx ? entries_4_perm_pf : _GEN_479; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_481 = 3'h5 == io_wwayIdx ? entries_5_perm_pf : _GEN_480; // @[TLBStorage.scala 127:{12,12}]
  wire  _GEN_482 = 3'h6 == io_wwayIdx ? entries_6_perm_pf : _GEN_481; // @[TLBStorage.scala 127:{12,12}]
  wire [23:0] _GEN_485 = 3'h1 == io_wwayIdx ? entries_1_ppn : entries_0_ppn; // @[TLBStorage.scala 128:{11,11}]
  wire [23:0] _GEN_486 = 3'h2 == io_wwayIdx ? entries_2_ppn : _GEN_485; // @[TLBStorage.scala 128:{11,11}]
  wire [23:0] _GEN_487 = 3'h3 == io_wwayIdx ? entries_3_ppn : _GEN_486; // @[TLBStorage.scala 128:{11,11}]
  wire [23:0] _GEN_488 = 3'h4 == io_wwayIdx ? entries_4_ppn : _GEN_487; // @[TLBStorage.scala 128:{11,11}]
  wire [23:0] _GEN_489 = 3'h5 == io_wwayIdx ? entries_5_ppn : _GEN_488; // @[TLBStorage.scala 128:{11,11}]
  wire [23:0] _GEN_490 = 3'h6 == io_wwayIdx ? entries_6_ppn : _GEN_489; // @[TLBStorage.scala 128:{11,11}]
  wire [26:0] _GEN_493 = 3'h1 == io_wwayIdx ? entries_1_tag : entries_0_tag; // @[TLBStorage.scala 129:{11,11}]
  wire [26:0] _GEN_494 = 3'h2 == io_wwayIdx ? entries_2_tag : _GEN_493; // @[TLBStorage.scala 129:{11,11}]
  wire [26:0] _GEN_495 = 3'h3 == io_wwayIdx ? entries_3_tag : _GEN_494; // @[TLBStorage.scala 129:{11,11}]
  wire [26:0] _GEN_496 = 3'h4 == io_wwayIdx ? entries_4_tag : _GEN_495; // @[TLBStorage.scala 129:{11,11}]
  wire [26:0] _GEN_497 = 3'h5 == io_wwayIdx ? entries_5_tag : _GEN_496; // @[TLBStorage.scala 129:{11,11}]
  wire [26:0] _GEN_498 = 3'h6 == io_wwayIdx ? entries_6_tag : _GEN_497; // @[TLBStorage.scala 129:{11,11}]
  wire [15:0] _GEN_501 = 3'h1 == io_wwayIdx ? entries_1_asid : entries_0_asid; // @[TLBStorage.scala 130:{12,12}]
  wire [15:0] _GEN_502 = 3'h2 == io_wwayIdx ? entries_2_asid : _GEN_501; // @[TLBStorage.scala 130:{12,12}]
  wire [15:0] _GEN_503 = 3'h3 == io_wwayIdx ? entries_3_asid : _GEN_502; // @[TLBStorage.scala 130:{12,12}]
  wire [15:0] _GEN_504 = 3'h4 == io_wwayIdx ? entries_4_asid : _GEN_503; // @[TLBStorage.scala 130:{12,12}]
  wire [15:0] _GEN_505 = 3'h5 == io_wwayIdx ? entries_5_asid : _GEN_504; // @[TLBStorage.scala 130:{12,12}]
  wire [15:0] _GEN_506 = 3'h6 == io_wwayIdx ? entries_6_asid : _GEN_505; // @[TLBStorage.scala 130:{12,12}]
  assign io_rreq_0_ready = 1'h1; // @[TLBStorage.scala 40:24]
  assign io_rresp_0_valid = io_rresp_0_valid_REG; // @[TLBStorage.scala 62:16]
  assign io_rresp_0_bits_hit = |_io_rresp_0_bits_hit_T; // @[TLBStorage.scala 63:37]
  assign io_rresp_0_bits_ppn = _io_rresp_0_bits_ppn_T_26 | _io_rresp_0_bits_ppn_T_29; // @[ParallelMux.scala 37:55]
  assign io_rresp_0_bits_perm_pf = _io_rresp_0_bits_perm_T_104[13]; // @[ParallelMux.scala 37:77]
  assign io_rresp_0_bits_perm_af = _io_rresp_0_bits_perm_T_104[12]; // @[ParallelMux.scala 37:77]
  assign io_rresp_0_bits_perm_d = _io_rresp_0_bits_perm_T_104[11]; // @[ParallelMux.scala 37:77]
  assign io_rresp_0_bits_perm_a = _io_rresp_0_bits_perm_T_104[10]; // @[ParallelMux.scala 37:77]
  assign io_rresp_0_bits_perm_u = _io_rresp_0_bits_perm_T_104[8]; // @[ParallelMux.scala 37:77]
  assign io_rresp_0_bits_perm_x = _io_rresp_0_bits_perm_T_104[7]; // @[ParallelMux.scala 37:77]
  assign io_rresp_0_bits_perm_w = _io_rresp_0_bits_perm_T_104[6]; // @[ParallelMux.scala 37:77]
  assign io_rresp_0_bits_perm_r = _io_rresp_0_bits_perm_T_104[5]; // @[ParallelMux.scala 37:77]
  assign io_victim_out_valid = _GEN_363 & io_wvalid & _GEN_371 == 2'h2; // @[TLBStorage.scala 122:54]
  assign io_victim_out_bits_entry_tag = 3'h7 == io_wwayIdx ? entries_7_tag : _GEN_498; // @[TLBStorage.scala 129:{11,11}]
  assign io_victim_out_bits_entry_asid = 3'h7 == io_wwayIdx ? entries_7_asid : _GEN_506; // @[TLBStorage.scala 130:{12,12}]
  assign io_victim_out_bits_entry_ppn = 3'h7 == io_wwayIdx ? entries_7_ppn : _GEN_490; // @[TLBStorage.scala 128:{11,11}]
  assign io_victim_out_bits_entry_perm_pf = 3'h7 == io_wwayIdx ? entries_7_perm_pf : _GEN_482; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_af = 3'h7 == io_wwayIdx ? entries_7_perm_af : _GEN_474; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_d = 3'h7 == io_wwayIdx ? entries_7_perm_d : _GEN_466; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_a = 3'h7 == io_wwayIdx ? entries_7_perm_a : _GEN_458; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_g = 3'h7 == io_wwayIdx ? entries_7_perm_g : _GEN_450; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_u = 3'h7 == io_wwayIdx ? entries_7_perm_u : _GEN_442; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_x = 3'h7 == io_wwayIdx ? entries_7_perm_x : _GEN_434; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_w = 3'h7 == io_wwayIdx ? entries_7_perm_w : _GEN_426; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_r = 3'h7 == io_wwayIdx ? entries_7_perm_r : _GEN_418; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_pm_r = 3'h7 == io_wwayIdx ? entries_7_perm_pm_r : _GEN_410; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_pm_w = 3'h7 == io_wwayIdx ? entries_7_perm_pm_w : _GEN_402; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_pm_x = 3'h7 == io_wwayIdx ? entries_7_perm_pm_x : _GEN_394; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_pm_c = 3'h7 == io_wwayIdx ? entries_7_perm_pm_c : _GEN_386; // @[TLBStorage.scala 127:{12,12}]
  assign io_victim_out_bits_entry_perm_pm_atomic = 3'h7 == io_wwayIdx ? entries_7_perm_pm_atomic : _GEN_378; // @[TLBStorage.scala 127:{12,12}]
  assign io_access_0_touch_ways_valid = REG | io_rresp_0_valid & _io_rresp_0_bits_hit_T_1; // @[TLBStorage.scala 74:29 89:30 92:31]
  assign io_access_0_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_0_touch_ways_bits_T_7; // @[TLBStorage.scala 75:28 89:30 93:30]
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
        v_0 <= v_0 & ~_sfenceHit_T_14; // @[TLBStorage.scala 113:45]
      end else begin
        v_0 <= v_0 & ~(sfenceHit_0 & ~entries_0_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_0 <= _GEN_17;
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
        v_1 <= v_1 & ~_sfenceHit_T_29; // @[TLBStorage.scala 113:45]
      end else begin
        v_1 <= v_1 & ~(sfenceHit_1 & ~entries_1_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_1 <= _GEN_18;
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
        v_2 <= v_2 & ~_sfenceHit_T_44; // @[TLBStorage.scala 113:45]
      end else begin
        v_2 <= v_2 & ~(sfenceHit_2 & ~entries_2_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_2 <= _GEN_19;
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
        v_3 <= v_3 & ~_sfenceHit_T_59; // @[TLBStorage.scala 113:45]
      end else begin
        v_3 <= v_3 & ~(sfenceHit_3 & ~entries_3_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_3 <= _GEN_20;
    end
    if (reset) begin // @[TLBStorage.scala 42:18]
      v_4 <= 1'h0; // @[TLBStorage.scala 42:18]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 101:26]
      if (io_sfence_bits_rs1) begin // @[TLBStorage.scala 102:28]
        if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 103:30]
          v_4 <= 1'h0; // @[TLBStorage.scala 105:17]
        end else begin
          v_4 <= v_4 & (entries_4_perm_g | ~sfenceHit_asid_hit_4); // @[TLBStorage.scala 108:45]
        end
      end else if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 111:30]
        v_4 <= v_4 & ~_sfenceHit_T_74; // @[TLBStorage.scala 113:45]
      end else begin
        v_4 <= v_4 & ~(sfenceHit_4 & ~entries_4_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_4 <= _GEN_21;
    end
    if (reset) begin // @[TLBStorage.scala 42:18]
      v_5 <= 1'h0; // @[TLBStorage.scala 42:18]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 101:26]
      if (io_sfence_bits_rs1) begin // @[TLBStorage.scala 102:28]
        if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 103:30]
          v_5 <= 1'h0; // @[TLBStorage.scala 105:17]
        end else begin
          v_5 <= v_5 & (entries_5_perm_g | ~sfenceHit_asid_hit_5); // @[TLBStorage.scala 108:45]
        end
      end else if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 111:30]
        v_5 <= v_5 & ~_sfenceHit_T_89; // @[TLBStorage.scala 113:45]
      end else begin
        v_5 <= v_5 & ~(sfenceHit_5 & ~entries_5_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_5 <= _GEN_22;
    end
    if (reset) begin // @[TLBStorage.scala 42:18]
      v_6 <= 1'h0; // @[TLBStorage.scala 42:18]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 101:26]
      if (io_sfence_bits_rs1) begin // @[TLBStorage.scala 102:28]
        if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 103:30]
          v_6 <= 1'h0; // @[TLBStorage.scala 105:17]
        end else begin
          v_6 <= v_6 & (entries_6_perm_g | ~sfenceHit_asid_hit_6); // @[TLBStorage.scala 108:45]
        end
      end else if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 111:30]
        v_6 <= v_6 & ~_sfenceHit_T_104; // @[TLBStorage.scala 113:45]
      end else begin
        v_6 <= v_6 & ~(sfenceHit_6 & ~entries_6_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_6 <= _GEN_23;
    end
    if (reset) begin // @[TLBStorage.scala 42:18]
      v_7 <= 1'h0; // @[TLBStorage.scala 42:18]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 101:26]
      if (io_sfence_bits_rs1) begin // @[TLBStorage.scala 102:28]
        if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 103:30]
          v_7 <= 1'h0; // @[TLBStorage.scala 105:17]
        end else begin
          v_7 <= v_7 & (entries_7_perm_g | ~sfenceHit_asid_hit_7); // @[TLBStorage.scala 108:45]
        end
      end else if (io_sfence_bits_rs2) begin // @[TLBStorage.scala 111:30]
        v_7 <= v_7 & ~_sfenceHit_T_119; // @[TLBStorage.scala 113:45]
      end else begin
        v_7 <= v_7 & ~(sfenceHit_7 & ~entries_7_perm_g); // @[TLBStorage.scala 116:45]
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      v_7 <= _GEN_24;
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_0_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_0_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_0_level <= io_wdata_entry_level; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_0_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_0_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_0_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_0_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_0_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_0_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_0_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_0_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_0_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_0_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 63:7]
        entries_0_perm_pm_r <= io_wdata_replenish_r; // @[MMUBundle.scala 63:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 64:7]
        entries_0_perm_pm_w <= io_wdata_replenish_w; // @[MMUBundle.scala 64:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 65:7]
        entries_0_perm_pm_x <= io_wdata_replenish_x; // @[MMUBundle.scala 65:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 66:7]
        entries_0_perm_pm_c <= io_wdata_replenish_c; // @[MMUBundle.scala 66:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h0 == io_wwayIdx) begin // @[MMUBundle.scala 67:12]
        entries_0_perm_pm_atomic <= io_wdata_replenish_atomic; // @[MMUBundle.scala 67:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_1_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_1_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_1_level <= io_wdata_entry_level; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_1_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_1_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_1_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_1_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_1_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_1_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_1_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_1_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_1_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_1_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 63:7]
        entries_1_perm_pm_r <= io_wdata_replenish_r; // @[MMUBundle.scala 63:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 64:7]
        entries_1_perm_pm_w <= io_wdata_replenish_w; // @[MMUBundle.scala 64:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 65:7]
        entries_1_perm_pm_x <= io_wdata_replenish_x; // @[MMUBundle.scala 65:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 66:7]
        entries_1_perm_pm_c <= io_wdata_replenish_c; // @[MMUBundle.scala 66:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h1 == io_wwayIdx) begin // @[MMUBundle.scala 67:12]
        entries_1_perm_pm_atomic <= io_wdata_replenish_atomic; // @[MMUBundle.scala 67:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_2_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_2_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_2_level <= io_wdata_entry_level; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_2_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_2_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_2_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_2_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_2_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_2_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_2_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_2_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_2_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_2_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 63:7]
        entries_2_perm_pm_r <= io_wdata_replenish_r; // @[MMUBundle.scala 63:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 64:7]
        entries_2_perm_pm_w <= io_wdata_replenish_w; // @[MMUBundle.scala 64:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 65:7]
        entries_2_perm_pm_x <= io_wdata_replenish_x; // @[MMUBundle.scala 65:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 66:7]
        entries_2_perm_pm_c <= io_wdata_replenish_c; // @[MMUBundle.scala 66:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h2 == io_wwayIdx) begin // @[MMUBundle.scala 67:12]
        entries_2_perm_pm_atomic <= io_wdata_replenish_atomic; // @[MMUBundle.scala 67:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_3_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_3_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_3_level <= io_wdata_entry_level; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_3_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_3_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_3_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_3_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_3_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_3_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_3_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_3_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_3_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_3_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 63:7]
        entries_3_perm_pm_r <= io_wdata_replenish_r; // @[MMUBundle.scala 63:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 64:7]
        entries_3_perm_pm_w <= io_wdata_replenish_w; // @[MMUBundle.scala 64:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 65:7]
        entries_3_perm_pm_x <= io_wdata_replenish_x; // @[MMUBundle.scala 65:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 66:7]
        entries_3_perm_pm_c <= io_wdata_replenish_c; // @[MMUBundle.scala 66:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h3 == io_wwayIdx) begin // @[MMUBundle.scala 67:12]
        entries_3_perm_pm_atomic <= io_wdata_replenish_atomic; // @[MMUBundle.scala 67:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_4_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_4_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_4_level <= io_wdata_entry_level; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_4_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_4_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_4_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_4_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_4_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_4_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_4_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_4_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_4_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_4_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 63:7]
        entries_4_perm_pm_r <= io_wdata_replenish_r; // @[MMUBundle.scala 63:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 64:7]
        entries_4_perm_pm_w <= io_wdata_replenish_w; // @[MMUBundle.scala 64:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 65:7]
        entries_4_perm_pm_x <= io_wdata_replenish_x; // @[MMUBundle.scala 65:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 66:7]
        entries_4_perm_pm_c <= io_wdata_replenish_c; // @[MMUBundle.scala 66:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h4 == io_wwayIdx) begin // @[MMUBundle.scala 67:12]
        entries_4_perm_pm_atomic <= io_wdata_replenish_atomic; // @[MMUBundle.scala 67:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_5_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_5_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_5_level <= io_wdata_entry_level; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_5_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_5_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_5_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_5_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_5_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_5_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_5_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_5_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_5_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_5_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 63:7]
        entries_5_perm_pm_r <= io_wdata_replenish_r; // @[MMUBundle.scala 63:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 64:7]
        entries_5_perm_pm_w <= io_wdata_replenish_w; // @[MMUBundle.scala 64:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 65:7]
        entries_5_perm_pm_x <= io_wdata_replenish_x; // @[MMUBundle.scala 65:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 66:7]
        entries_5_perm_pm_c <= io_wdata_replenish_c; // @[MMUBundle.scala 66:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h5 == io_wwayIdx) begin // @[MMUBundle.scala 67:12]
        entries_5_perm_pm_atomic <= io_wdata_replenish_atomic; // @[MMUBundle.scala 67:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_6_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_6_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_6_level <= io_wdata_entry_level; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_6_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_6_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_6_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_6_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_6_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_6_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_6_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_6_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_6_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_6_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 63:7]
        entries_6_perm_pm_r <= io_wdata_replenish_r; // @[MMUBundle.scala 63:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 64:7]
        entries_6_perm_pm_w <= io_wdata_replenish_w; // @[MMUBundle.scala 64:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 65:7]
        entries_6_perm_pm_x <= io_wdata_replenish_x; // @[MMUBundle.scala 65:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 66:7]
        entries_6_perm_pm_c <= io_wdata_replenish_c; // @[MMUBundle.scala 66:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h6 == io_wwayIdx) begin // @[MMUBundle.scala 67:12]
        entries_6_perm_pm_atomic <= io_wdata_replenish_atomic; // @[MMUBundle.scala 67:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 215:14]
        entries_7_tag <= io_wdata_entry_tag; // @[MMUBundle.scala 215:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 216:15]
        entries_7_asid <= io_csr_satp_asid; // @[MMUBundle.scala 216:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 218:22]
        entries_7_level <= io_wdata_entry_level; // @[MMUBundle.scala 218:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 221:14]
        entries_7_ppn <= io_wdata_entry_ppn; // @[MMUBundle.scala 221:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 224:18]
        entries_7_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 224:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 225:18]
        entries_7_perm_af <= io_wdata_af; // @[MMUBundle.scala 225:18]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 226:17]
        entries_7_perm_d <= ptePerm_d; // @[MMUBundle.scala 226:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 227:17]
        entries_7_perm_a <= ptePerm_a; // @[MMUBundle.scala 227:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 228:17]
        entries_7_perm_g <= ptePerm_g; // @[MMUBundle.scala 228:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 229:17]
        entries_7_perm_u <= ptePerm_u; // @[MMUBundle.scala 229:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 230:17]
        entries_7_perm_x <= ptePerm_x; // @[MMUBundle.scala 230:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 231:17]
        entries_7_perm_w <= ptePerm_w; // @[MMUBundle.scala 231:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 232:17]
        entries_7_perm_r <= ptePerm_r; // @[MMUBundle.scala 232:17]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 63:7]
        entries_7_perm_pm_r <= io_wdata_replenish_r; // @[MMUBundle.scala 63:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 64:7]
        entries_7_perm_pm_w <= io_wdata_replenish_w; // @[MMUBundle.scala 64:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 65:7]
        entries_7_perm_pm_x <= io_wdata_replenish_x; // @[MMUBundle.scala 65:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 66:7]
        entries_7_perm_pm_c <= io_wdata_replenish_c; // @[MMUBundle.scala 66:7]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 82:21]
      if (3'h7 == io_wwayIdx) begin // @[MMUBundle.scala 67:12]
        entries_7_perm_pm_atomic <= io_wdata_replenish_atomic; // @[MMUBundle.scala 67:12]
      end
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg_0 <= hitVec_0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg_1 <= hitVec_1; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg_2 <= hitVec_2; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg_3 <= hitVec_3; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg_4 <= hitVec_4; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg_5 <= hitVec_5; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg_6 <= hitVec_6; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg_7 <= hitVec_7; // @[Reg.scala 17:22]
    end
    io_rresp_0_valid_REG <= io_rreq_0_valid; // @[TLBStorage.scala 62:58]
    if (io_rreq_0_valid) begin // @[Reg.scala 17:18]
      io_rresp_0_bits_ppn_r <= io_rresp_0_bits_ppn_ppn_res[17:0]; // @[Reg.scala 17:22]
    end
    if (io_rreq_0_valid) begin // @[Reg.scala 17:18]
      io_rresp_0_bits_ppn_r1 <= io_rresp_0_bits_ppn_ppn_res_1[17:0]; // @[Reg.scala 17:22]
    end
    if (io_rreq_0_valid) begin // @[Reg.scala 17:18]
      io_rresp_0_bits_ppn_r2 <= io_rresp_0_bits_ppn_ppn_res_2[17:0]; // @[Reg.scala 17:22]
    end
    if (io_rreq_0_valid) begin // @[Reg.scala 17:18]
      io_rresp_0_bits_ppn_r3 <= io_rresp_0_bits_ppn_ppn_res_3[17:0]; // @[Reg.scala 17:22]
    end
    if (io_rreq_0_valid) begin // @[Reg.scala 17:18]
      io_rresp_0_bits_ppn_r4 <= io_rresp_0_bits_ppn_ppn_res_4[17:0]; // @[Reg.scala 17:22]
    end
    if (io_rreq_0_valid) begin // @[Reg.scala 17:18]
      io_rresp_0_bits_ppn_r5 <= io_rresp_0_bits_ppn_ppn_res_5[17:0]; // @[Reg.scala 17:22]
    end
    if (io_rreq_0_valid) begin // @[Reg.scala 17:18]
      io_rresp_0_bits_ppn_r6 <= io_rresp_0_bits_ppn_ppn_res_6[17:0]; // @[Reg.scala 17:22]
    end
    if (io_rreq_0_valid) begin // @[Reg.scala 17:18]
      io_rresp_0_bits_ppn_r7 <= io_rresp_0_bits_ppn_ppn_res_7[17:0]; // @[Reg.scala 17:22]
    end
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
  v_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  v_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  v_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  v_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  entries_0_tag = _RAND_8[26:0];
  _RAND_9 = {1{`RANDOM}};
  entries_0_asid = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  entries_0_level = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  entries_0_ppn = _RAND_11[23:0];
  _RAND_12 = {1{`RANDOM}};
  entries_0_perm_pf = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  entries_0_perm_af = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  entries_0_perm_d = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  entries_0_perm_a = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  entries_0_perm_g = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  entries_0_perm_u = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  entries_0_perm_x = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  entries_0_perm_w = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  entries_0_perm_r = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  entries_0_perm_pm_r = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  entries_0_perm_pm_w = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  entries_0_perm_pm_x = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  entries_0_perm_pm_c = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  entries_0_perm_pm_atomic = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  entries_1_tag = _RAND_26[26:0];
  _RAND_27 = {1{`RANDOM}};
  entries_1_asid = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  entries_1_level = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  entries_1_ppn = _RAND_29[23:0];
  _RAND_30 = {1{`RANDOM}};
  entries_1_perm_pf = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  entries_1_perm_af = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  entries_1_perm_d = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  entries_1_perm_a = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  entries_1_perm_g = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  entries_1_perm_u = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  entries_1_perm_x = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  entries_1_perm_w = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  entries_1_perm_r = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  entries_1_perm_pm_r = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  entries_1_perm_pm_w = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  entries_1_perm_pm_x = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  entries_1_perm_pm_c = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  entries_1_perm_pm_atomic = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  entries_2_tag = _RAND_44[26:0];
  _RAND_45 = {1{`RANDOM}};
  entries_2_asid = _RAND_45[15:0];
  _RAND_46 = {1{`RANDOM}};
  entries_2_level = _RAND_46[1:0];
  _RAND_47 = {1{`RANDOM}};
  entries_2_ppn = _RAND_47[23:0];
  _RAND_48 = {1{`RANDOM}};
  entries_2_perm_pf = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  entries_2_perm_af = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  entries_2_perm_d = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  entries_2_perm_a = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  entries_2_perm_g = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  entries_2_perm_u = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  entries_2_perm_x = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  entries_2_perm_w = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  entries_2_perm_r = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  entries_2_perm_pm_r = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  entries_2_perm_pm_w = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  entries_2_perm_pm_x = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  entries_2_perm_pm_c = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  entries_2_perm_pm_atomic = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  entries_3_tag = _RAND_62[26:0];
  _RAND_63 = {1{`RANDOM}};
  entries_3_asid = _RAND_63[15:0];
  _RAND_64 = {1{`RANDOM}};
  entries_3_level = _RAND_64[1:0];
  _RAND_65 = {1{`RANDOM}};
  entries_3_ppn = _RAND_65[23:0];
  _RAND_66 = {1{`RANDOM}};
  entries_3_perm_pf = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  entries_3_perm_af = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  entries_3_perm_d = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  entries_3_perm_a = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  entries_3_perm_g = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  entries_3_perm_u = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  entries_3_perm_x = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  entries_3_perm_w = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  entries_3_perm_r = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  entries_3_perm_pm_r = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  entries_3_perm_pm_w = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  entries_3_perm_pm_x = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  entries_3_perm_pm_c = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  entries_3_perm_pm_atomic = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  entries_4_tag = _RAND_80[26:0];
  _RAND_81 = {1{`RANDOM}};
  entries_4_asid = _RAND_81[15:0];
  _RAND_82 = {1{`RANDOM}};
  entries_4_level = _RAND_82[1:0];
  _RAND_83 = {1{`RANDOM}};
  entries_4_ppn = _RAND_83[23:0];
  _RAND_84 = {1{`RANDOM}};
  entries_4_perm_pf = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  entries_4_perm_af = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  entries_4_perm_d = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  entries_4_perm_a = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  entries_4_perm_g = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  entries_4_perm_u = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  entries_4_perm_x = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  entries_4_perm_w = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  entries_4_perm_r = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  entries_4_perm_pm_r = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  entries_4_perm_pm_w = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  entries_4_perm_pm_x = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  entries_4_perm_pm_c = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  entries_4_perm_pm_atomic = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  entries_5_tag = _RAND_98[26:0];
  _RAND_99 = {1{`RANDOM}};
  entries_5_asid = _RAND_99[15:0];
  _RAND_100 = {1{`RANDOM}};
  entries_5_level = _RAND_100[1:0];
  _RAND_101 = {1{`RANDOM}};
  entries_5_ppn = _RAND_101[23:0];
  _RAND_102 = {1{`RANDOM}};
  entries_5_perm_pf = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  entries_5_perm_af = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  entries_5_perm_d = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  entries_5_perm_a = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  entries_5_perm_g = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  entries_5_perm_u = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  entries_5_perm_x = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  entries_5_perm_w = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  entries_5_perm_r = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  entries_5_perm_pm_r = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  entries_5_perm_pm_w = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  entries_5_perm_pm_x = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  entries_5_perm_pm_c = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  entries_5_perm_pm_atomic = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  entries_6_tag = _RAND_116[26:0];
  _RAND_117 = {1{`RANDOM}};
  entries_6_asid = _RAND_117[15:0];
  _RAND_118 = {1{`RANDOM}};
  entries_6_level = _RAND_118[1:0];
  _RAND_119 = {1{`RANDOM}};
  entries_6_ppn = _RAND_119[23:0];
  _RAND_120 = {1{`RANDOM}};
  entries_6_perm_pf = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  entries_6_perm_af = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  entries_6_perm_d = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  entries_6_perm_a = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  entries_6_perm_g = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  entries_6_perm_u = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  entries_6_perm_x = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  entries_6_perm_w = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  entries_6_perm_r = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  entries_6_perm_pm_r = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  entries_6_perm_pm_w = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  entries_6_perm_pm_x = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  entries_6_perm_pm_c = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  entries_6_perm_pm_atomic = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  entries_7_tag = _RAND_134[26:0];
  _RAND_135 = {1{`RANDOM}};
  entries_7_asid = _RAND_135[15:0];
  _RAND_136 = {1{`RANDOM}};
  entries_7_level = _RAND_136[1:0];
  _RAND_137 = {1{`RANDOM}};
  entries_7_ppn = _RAND_137[23:0];
  _RAND_138 = {1{`RANDOM}};
  entries_7_perm_pf = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  entries_7_perm_af = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  entries_7_perm_d = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  entries_7_perm_a = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  entries_7_perm_g = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  entries_7_perm_u = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  entries_7_perm_x = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  entries_7_perm_w = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  entries_7_perm_r = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  entries_7_perm_pm_r = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  entries_7_perm_pm_w = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  entries_7_perm_pm_x = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  entries_7_perm_pm_c = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  entries_7_perm_pm_atomic = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  hitVecReg_0 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  hitVecReg_1 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  hitVecReg_2 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  hitVecReg_3 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  hitVecReg_4 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  hitVecReg_5 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  hitVecReg_6 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  hitVecReg_7 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  io_rresp_0_valid_REG = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  io_rresp_0_bits_ppn_r = _RAND_161[17:0];
  _RAND_162 = {1{`RANDOM}};
  io_rresp_0_bits_ppn_r1 = _RAND_162[17:0];
  _RAND_163 = {1{`RANDOM}};
  io_rresp_0_bits_ppn_r2 = _RAND_163[17:0];
  _RAND_164 = {1{`RANDOM}};
  io_rresp_0_bits_ppn_r3 = _RAND_164[17:0];
  _RAND_165 = {1{`RANDOM}};
  io_rresp_0_bits_ppn_r4 = _RAND_165[17:0];
  _RAND_166 = {1{`RANDOM}};
  io_rresp_0_bits_ppn_r5 = _RAND_166[17:0];
  _RAND_167 = {1{`RANDOM}};
  io_rresp_0_bits_ppn_r6 = _RAND_167[17:0];
  _RAND_168 = {1{`RANDOM}};
  io_rresp_0_bits_ppn_r7 = _RAND_168[17:0];
  _RAND_169 = {1{`RANDOM}};
  refill_wayIdx_reg = _RAND_169[2:0];
  _RAND_170 = {1{`RANDOM}};
  REG = _RAND_170[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
