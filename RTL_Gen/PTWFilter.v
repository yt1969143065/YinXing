module PTWFilter(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_csr_satp_changed,
  input         io_tlb_req_0_valid,
  input  [26:0] io_tlb_req_0_bits_vpn,
  input         io_tlb_req_1_valid,
  input  [26:0] io_tlb_req_1_bits_vpn,
  input         io_tlb_req_2_valid,
  input  [26:0] io_tlb_req_2_bits_vpn,
  input         io_tlb_req_3_valid,
  input  [26:0] io_tlb_req_3_bits_vpn,
  output        io_tlb_resp_valid,
  output [26:0] io_tlb_resp_bits_data_entry_tag,
  output [23:0] io_tlb_resp_bits_data_entry_ppn,
  output        io_tlb_resp_bits_data_entry_perm_d,
  output        io_tlb_resp_bits_data_entry_perm_a,
  output        io_tlb_resp_bits_data_entry_perm_g,
  output        io_tlb_resp_bits_data_entry_perm_u,
  output        io_tlb_resp_bits_data_entry_perm_x,
  output        io_tlb_resp_bits_data_entry_perm_w,
  output        io_tlb_resp_bits_data_entry_perm_r,
  output [1:0]  io_tlb_resp_bits_data_entry_level,
  output        io_tlb_resp_bits_data_pf,
  output        io_tlb_resp_bits_data_af,
  output        io_tlb_resp_bits_vector_0,
  output        io_tlb_resp_bits_vector_1,
  output        io_tlb_resp_bits_vector_2,
  output        io_tlb_resp_bits_vector_3,
  input         io_ptw_req_0_ready,
  output        io_ptw_req_0_valid,
  output [26:0] io_ptw_req_0_bits_vpn,
  output        io_ptw_resp_ready,
  input         io_ptw_resp_valid,
  input  [26:0] io_ptw_resp_bits_entry_tag,
  input  [23:0] io_ptw_resp_bits_entry_ppn,
  input         io_ptw_resp_bits_entry_perm_d,
  input         io_ptw_resp_bits_entry_perm_a,
  input         io_ptw_resp_bits_entry_perm_g,
  input         io_ptw_resp_bits_entry_perm_u,
  input         io_ptw_resp_bits_entry_perm_x,
  input         io_ptw_resp_bits_entry_perm_w,
  input         io_ptw_resp_bits_entry_perm_r,
  input  [1:0]  io_ptw_resp_bits_entry_level,
  input         io_ptw_resp_bits_pf,
  input         io_ptw_resp_bits_af
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
`endif // RANDOMIZE_REG_INIT
  wire  flush_delay_clock; // @[Hold.scala 94:23]
  wire  flush_delay_io_in; // @[Hold.scala 94:23]
  wire  flush_delay_io_out; // @[Hold.scala 94:23]
  reg  v_0; // @[Repeater.scala 154:18]
  reg  v_1; // @[Repeater.scala 154:18]
  reg  v_2; // @[Repeater.scala 154:18]
  reg  v_3; // @[Repeater.scala 154:18]
  reg  v_4; // @[Repeater.scala 154:18]
  reg  v_5; // @[Repeater.scala 154:18]
  reg  v_6; // @[Repeater.scala 154:18]
  reg  v_7; // @[Repeater.scala 154:18]
  reg  ports_0_0; // @[Repeater.scala 155:18]
  reg  ports_0_1; // @[Repeater.scala 155:18]
  reg  ports_0_2; // @[Repeater.scala 155:18]
  reg  ports_0_3; // @[Repeater.scala 155:18]
  reg  ports_1_0; // @[Repeater.scala 155:18]
  reg  ports_1_1; // @[Repeater.scala 155:18]
  reg  ports_1_2; // @[Repeater.scala 155:18]
  reg  ports_1_3; // @[Repeater.scala 155:18]
  reg  ports_2_0; // @[Repeater.scala 155:18]
  reg  ports_2_1; // @[Repeater.scala 155:18]
  reg  ports_2_2; // @[Repeater.scala 155:18]
  reg  ports_2_3; // @[Repeater.scala 155:18]
  reg  ports_3_0; // @[Repeater.scala 155:18]
  reg  ports_3_1; // @[Repeater.scala 155:18]
  reg  ports_3_2; // @[Repeater.scala 155:18]
  reg  ports_3_3; // @[Repeater.scala 155:18]
  reg  ports_4_0; // @[Repeater.scala 155:18]
  reg  ports_4_1; // @[Repeater.scala 155:18]
  reg  ports_4_2; // @[Repeater.scala 155:18]
  reg  ports_4_3; // @[Repeater.scala 155:18]
  reg  ports_5_0; // @[Repeater.scala 155:18]
  reg  ports_5_1; // @[Repeater.scala 155:18]
  reg  ports_5_2; // @[Repeater.scala 155:18]
  reg  ports_5_3; // @[Repeater.scala 155:18]
  reg  ports_6_0; // @[Repeater.scala 155:18]
  reg  ports_6_1; // @[Repeater.scala 155:18]
  reg  ports_6_2; // @[Repeater.scala 155:18]
  reg  ports_6_3; // @[Repeater.scala 155:18]
  reg  ports_7_0; // @[Repeater.scala 155:18]
  reg  ports_7_1; // @[Repeater.scala 155:18]
  reg  ports_7_2; // @[Repeater.scala 155:18]
  reg  ports_7_3; // @[Repeater.scala 155:18]
  reg [26:0] vpn_0; // @[Repeater.scala 156:16]
  reg [26:0] vpn_1; // @[Repeater.scala 156:16]
  reg [26:0] vpn_2; // @[Repeater.scala 156:16]
  reg [26:0] vpn_3; // @[Repeater.scala 156:16]
  reg [26:0] vpn_4; // @[Repeater.scala 156:16]
  reg [26:0] vpn_5; // @[Repeater.scala 156:16]
  reg [26:0] vpn_6; // @[Repeater.scala 156:16]
  reg [26:0] vpn_7; // @[Repeater.scala 156:16]
  reg [2:0] enqPtr; // @[Repeater.scala 157:23]
  reg [2:0] issPtr; // @[Repeater.scala 158:23]
  reg [2:0] deqPtr; // @[Repeater.scala 159:23]
  reg  mayFullDeq; // @[Repeater.scala 160:27]
  reg  mayFullIss; // @[Repeater.scala 161:27]
  reg [3:0] counter; // @[Repeater.scala 162:24]
  wire  _ptwResp_T = io_ptw_resp_ready & io_ptw_resp_valid; // @[Decoupled.scala 50:35]
  reg [26:0] ptwResp_entry_tag; // @[Reg.scala 16:16]
  reg [23:0] ptwResp_entry_ppn; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_d; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_a; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_g; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_u; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_x; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_w; // @[Reg.scala 16:16]
  reg  ptwResp_entry_perm_r; // @[Reg.scala 16:16]
  reg [1:0] ptwResp_entry_level; // @[Reg.scala 16:16]
  reg  ptwResp_pf; // @[Reg.scala 16:16]
  reg  ptwResp_af; // @[Reg.scala 16:16]
  wire  ptwResp_OldMatchVec_hit0 = io_ptw_resp_bits_entry_tag[26:18] == vpn_0[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_OldMatchVec_hit1 = io_ptw_resp_bits_entry_tag[17:9] == vpn_0[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_OldMatchVec_hit2 = io_ptw_resp_bits_entry_tag[8:0] == vpn_0[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_OldMatchVec_T_5 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1 &
    ptwResp_OldMatchVec_hit0 : ptwResp_OldMatchVec_hit0; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_OldMatchVec_T_6 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2 &
    ptwResp_OldMatchVec_hit1 & ptwResp_OldMatchVec_hit0 : _ptwResp_OldMatchVec_T_5; // @[MMUBundle.scala 517:22]
  wire  ptwResp_OldMatchVec_0 = v_0 & _ptwResp_OldMatchVec_T_6; // @[Repeater.scala 170:8]
  wire  ptwResp_OldMatchVec_hit0_1 = io_ptw_resp_bits_entry_tag[26:18] == vpn_1[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_OldMatchVec_hit1_1 = io_ptw_resp_bits_entry_tag[17:9] == vpn_1[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_OldMatchVec_hit2_1 = io_ptw_resp_bits_entry_tag[8:0] == vpn_1[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_OldMatchVec_T_13 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_1 &
    ptwResp_OldMatchVec_hit0_1 : ptwResp_OldMatchVec_hit0_1; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_OldMatchVec_T_14 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_1 &
    ptwResp_OldMatchVec_hit1_1 & ptwResp_OldMatchVec_hit0_1 : _ptwResp_OldMatchVec_T_13; // @[MMUBundle.scala 517:22]
  wire  ptwResp_OldMatchVec_1 = v_1 & _ptwResp_OldMatchVec_T_14; // @[Repeater.scala 170:8]
  wire  ptwResp_OldMatchVec_hit0_2 = io_ptw_resp_bits_entry_tag[26:18] == vpn_2[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_OldMatchVec_hit1_2 = io_ptw_resp_bits_entry_tag[17:9] == vpn_2[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_OldMatchVec_hit2_2 = io_ptw_resp_bits_entry_tag[8:0] == vpn_2[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_OldMatchVec_T_21 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_2 &
    ptwResp_OldMatchVec_hit0_2 : ptwResp_OldMatchVec_hit0_2; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_OldMatchVec_T_22 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_2 &
    ptwResp_OldMatchVec_hit1_2 & ptwResp_OldMatchVec_hit0_2 : _ptwResp_OldMatchVec_T_21; // @[MMUBundle.scala 517:22]
  wire  ptwResp_OldMatchVec_2 = v_2 & _ptwResp_OldMatchVec_T_22; // @[Repeater.scala 170:8]
  wire  ptwResp_OldMatchVec_hit0_3 = io_ptw_resp_bits_entry_tag[26:18] == vpn_3[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_OldMatchVec_hit1_3 = io_ptw_resp_bits_entry_tag[17:9] == vpn_3[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_OldMatchVec_hit2_3 = io_ptw_resp_bits_entry_tag[8:0] == vpn_3[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_OldMatchVec_T_29 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_3 &
    ptwResp_OldMatchVec_hit0_3 : ptwResp_OldMatchVec_hit0_3; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_OldMatchVec_T_30 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_3 &
    ptwResp_OldMatchVec_hit1_3 & ptwResp_OldMatchVec_hit0_3 : _ptwResp_OldMatchVec_T_29; // @[MMUBundle.scala 517:22]
  wire  ptwResp_OldMatchVec_3 = v_3 & _ptwResp_OldMatchVec_T_30; // @[Repeater.scala 170:8]
  wire  ptwResp_OldMatchVec_hit0_4 = io_ptw_resp_bits_entry_tag[26:18] == vpn_4[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_OldMatchVec_hit1_4 = io_ptw_resp_bits_entry_tag[17:9] == vpn_4[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_OldMatchVec_hit2_4 = io_ptw_resp_bits_entry_tag[8:0] == vpn_4[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_OldMatchVec_T_37 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_4 &
    ptwResp_OldMatchVec_hit0_4 : ptwResp_OldMatchVec_hit0_4; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_OldMatchVec_T_38 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_4 &
    ptwResp_OldMatchVec_hit1_4 & ptwResp_OldMatchVec_hit0_4 : _ptwResp_OldMatchVec_T_37; // @[MMUBundle.scala 517:22]
  wire  ptwResp_OldMatchVec_4 = v_4 & _ptwResp_OldMatchVec_T_38; // @[Repeater.scala 170:8]
  wire  ptwResp_OldMatchVec_hit0_5 = io_ptw_resp_bits_entry_tag[26:18] == vpn_5[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_OldMatchVec_hit1_5 = io_ptw_resp_bits_entry_tag[17:9] == vpn_5[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_OldMatchVec_hit2_5 = io_ptw_resp_bits_entry_tag[8:0] == vpn_5[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_OldMatchVec_T_45 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_5 &
    ptwResp_OldMatchVec_hit0_5 : ptwResp_OldMatchVec_hit0_5; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_OldMatchVec_T_46 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_5 &
    ptwResp_OldMatchVec_hit1_5 & ptwResp_OldMatchVec_hit0_5 : _ptwResp_OldMatchVec_T_45; // @[MMUBundle.scala 517:22]
  wire  ptwResp_OldMatchVec_5 = v_5 & _ptwResp_OldMatchVec_T_46; // @[Repeater.scala 170:8]
  wire  ptwResp_OldMatchVec_hit0_6 = io_ptw_resp_bits_entry_tag[26:18] == vpn_6[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_OldMatchVec_hit1_6 = io_ptw_resp_bits_entry_tag[17:9] == vpn_6[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_OldMatchVec_hit2_6 = io_ptw_resp_bits_entry_tag[8:0] == vpn_6[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_OldMatchVec_T_53 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_6 &
    ptwResp_OldMatchVec_hit0_6 : ptwResp_OldMatchVec_hit0_6; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_OldMatchVec_T_54 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_6 &
    ptwResp_OldMatchVec_hit1_6 & ptwResp_OldMatchVec_hit0_6 : _ptwResp_OldMatchVec_T_53; // @[MMUBundle.scala 517:22]
  wire  ptwResp_OldMatchVec_6 = v_6 & _ptwResp_OldMatchVec_T_54; // @[Repeater.scala 170:8]
  wire  ptwResp_OldMatchVec_hit0_7 = io_ptw_resp_bits_entry_tag[26:18] == vpn_7[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_OldMatchVec_hit1_7 = io_ptw_resp_bits_entry_tag[17:9] == vpn_7[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_OldMatchVec_hit2_7 = io_ptw_resp_bits_entry_tag[8:0] == vpn_7[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_OldMatchVec_T_61 = io_ptw_resp_bits_entry_level == 2'h1 ? ptwResp_OldMatchVec_hit1_7 &
    ptwResp_OldMatchVec_hit0_7 : ptwResp_OldMatchVec_hit0_7; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_OldMatchVec_T_62 = io_ptw_resp_bits_entry_level == 2'h2 ? ptwResp_OldMatchVec_hit2_7 &
    ptwResp_OldMatchVec_hit1_7 & ptwResp_OldMatchVec_hit0_7 : _ptwResp_OldMatchVec_T_61; // @[MMUBundle.scala 517:22]
  wire  ptwResp_OldMatchVec_7 = v_7 & _ptwResp_OldMatchVec_T_62; // @[Repeater.scala 170:8]
  wire [7:0] _ptwResp_valid_T_1 = {ptwResp_OldMatchVec_0,ptwResp_OldMatchVec_1,ptwResp_OldMatchVec_2,
    ptwResp_OldMatchVec_3,ptwResp_OldMatchVec_4,ptwResp_OldMatchVec_5,ptwResp_OldMatchVec_6,ptwResp_OldMatchVec_7}; // @[Cat.scala 31:58]
  reg  ptwResp_valid; // @[Repeater.scala 171:30]
  wire  oldMatchVec_early_0_0 = v_0 & vpn_0 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_0_1 = v_1 & vpn_1 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_0_2 = v_2 & vpn_2 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_0_3 = v_3 & vpn_3 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_0_4 = v_4 & vpn_4 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_0_5 = v_5 & vpn_5 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_0_6 = v_6 & vpn_6 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_0_7 = v_7 & vpn_7 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_1_0 = v_0 & vpn_0 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_1_1 = v_1 & vpn_1 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_1_2 = v_2 & vpn_2 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_1_3 = v_3 & vpn_3 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_1_4 = v_4 & vpn_4 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_1_5 = v_5 & vpn_5 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_1_6 = v_6 & vpn_6 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_1_7 = v_7 & vpn_7 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_2_0 = v_0 & vpn_0 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_2_1 = v_1 & vpn_1 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_2_2 = v_2 & vpn_2 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_2_3 = v_3 & vpn_3 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_2_4 = v_4 & vpn_4 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_2_5 = v_5 & vpn_5 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_2_6 = v_6 & vpn_6 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_2_7 = v_7 & vpn_7 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_3_0 = v_0 & vpn_0 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_3_1 = v_1 & vpn_1 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_3_2 = v_2 & vpn_2 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_3_3 = v_3 & vpn_3 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_3_4 = v_4 & vpn_4 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_3_5 = v_5 & vpn_5 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_3_6 = v_6 & vpn_6 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
  wire  oldMatchVec_early_3_7 = v_7 & vpn_7 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
  reg [26:0] tlb_req_0_bits_rvpn; // @[Reg.scala 16:16]
  reg  tlb_req_0_valid_REG; // @[Repeater.scala 177:32]
  wire  lastReqMatchVec_early_0_0 = tlb_req_0_valid_REG & tlb_req_0_bits_rvpn == io_tlb_req_0_bits_vpn; // @[Repeater.scala 173:77]
  reg [26:0] tlb_req_1_bits_rvpn; // @[Reg.scala 16:16]
  reg  tlb_req_1_valid_REG; // @[Repeater.scala 177:32]
  wire  lastReqMatchVec_early_0_1 = tlb_req_1_valid_REG & tlb_req_1_bits_rvpn == io_tlb_req_0_bits_vpn; // @[Repeater.scala 173:77]
  reg [26:0] tlb_req_2_bits_rvpn; // @[Reg.scala 16:16]
  reg  tlb_req_2_valid_REG; // @[Repeater.scala 177:32]
  wire  lastReqMatchVec_early_0_2 = tlb_req_2_valid_REG & tlb_req_2_bits_rvpn == io_tlb_req_0_bits_vpn; // @[Repeater.scala 173:77]
  reg [26:0] tlb_req_3_bits_rvpn; // @[Reg.scala 16:16]
  reg  tlb_req_3_valid_REG; // @[Repeater.scala 177:32]
  wire  lastReqMatchVec_early_0_3 = tlb_req_3_valid_REG & tlb_req_3_bits_rvpn == io_tlb_req_0_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_1_0 = tlb_req_0_valid_REG & tlb_req_0_bits_rvpn == io_tlb_req_1_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_1_1 = tlb_req_1_valid_REG & tlb_req_1_bits_rvpn == io_tlb_req_1_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_1_2 = tlb_req_2_valid_REG & tlb_req_2_bits_rvpn == io_tlb_req_1_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_1_3 = tlb_req_3_valid_REG & tlb_req_3_bits_rvpn == io_tlb_req_1_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_2_0 = tlb_req_0_valid_REG & tlb_req_0_bits_rvpn == io_tlb_req_2_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_2_1 = tlb_req_1_valid_REG & tlb_req_1_bits_rvpn == io_tlb_req_2_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_2_2 = tlb_req_2_valid_REG & tlb_req_2_bits_rvpn == io_tlb_req_2_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_2_3 = tlb_req_3_valid_REG & tlb_req_3_bits_rvpn == io_tlb_req_2_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_3_0 = tlb_req_0_valid_REG & tlb_req_0_bits_rvpn == io_tlb_req_3_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_3_1 = tlb_req_1_valid_REG & tlb_req_1_bits_rvpn == io_tlb_req_3_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_3_2 = tlb_req_2_valid_REG & tlb_req_2_bits_rvpn == io_tlb_req_3_bits_vpn; // @[Repeater.scala 173:77]
  wire  lastReqMatchVec_early_3_3 = tlb_req_3_valid_REG & tlb_req_3_bits_rvpn == io_tlb_req_3_bits_vpn; // @[Repeater.scala 173:77]
  wire  tlb_req_0_valid_hit0 = ptwResp_entry_tag[26:18] == io_tlb_req_0_bits_vpn[26:18]; // @[MMUBundle.scala 513:48]
  wire  tlb_req_0_valid_hit1 = ptwResp_entry_tag[17:9] == io_tlb_req_0_bits_vpn[17:9]; // @[MMUBundle.scala 514:48]
  wire  tlb_req_0_valid_hit2 = ptwResp_entry_tag[8:0] == io_tlb_req_0_bits_vpn[8:0]; // @[MMUBundle.scala 515:50]
  wire  _tlb_req_0_valid_T_5 = ptwResp_entry_level == 2'h1 ? tlb_req_0_valid_hit1 & tlb_req_0_valid_hit0 :
    tlb_req_0_valid_hit0; // @[MMUBundle.scala 517:78]
  wire  _tlb_req_0_valid_T_6 = ptwResp_entry_level == 2'h2 ? tlb_req_0_valid_hit2 & tlb_req_0_valid_hit1 &
    tlb_req_0_valid_hit0 : _tlb_req_0_valid_T_5; // @[MMUBundle.scala 517:22]
  wire  _tlb_req_0_valid_T_9 = ~(ptwResp_valid & _tlb_req_0_valid_T_6); // @[Repeater.scala 178:7]
  wire  _tlb_req_0_valid_T_10 = io_tlb_req_0_valid & _tlb_req_0_valid_T_9; // @[Repeater.scala 177:53]
  wire [3:0] _tlb_req_0_valid_T_11 = {lastReqMatchVec_early_0_0,lastReqMatchVec_early_0_1,lastReqMatchVec_early_0_2,
    lastReqMatchVec_early_0_3}; // @[Cat.scala 31:58]
  wire  _tlb_req_0_valid_T_13 = ~(|_tlb_req_0_valid_T_11); // @[Repeater.scala 179:7]
  wire  _tlb_req_0_valid_T_14 = _tlb_req_0_valid_T_10 & _tlb_req_0_valid_T_13; // @[Repeater.scala 178:86]
  wire  tlb_req_1_valid_hit0 = ptwResp_entry_tag[26:18] == io_tlb_req_1_bits_vpn[26:18]; // @[MMUBundle.scala 513:48]
  wire  tlb_req_1_valid_hit1 = ptwResp_entry_tag[17:9] == io_tlb_req_1_bits_vpn[17:9]; // @[MMUBundle.scala 514:48]
  wire  tlb_req_1_valid_hit2 = ptwResp_entry_tag[8:0] == io_tlb_req_1_bits_vpn[8:0]; // @[MMUBundle.scala 515:50]
  wire  _tlb_req_1_valid_T_5 = ptwResp_entry_level == 2'h1 ? tlb_req_1_valid_hit1 & tlb_req_1_valid_hit0 :
    tlb_req_1_valid_hit0; // @[MMUBundle.scala 517:78]
  wire  _tlb_req_1_valid_T_6 = ptwResp_entry_level == 2'h2 ? tlb_req_1_valid_hit2 & tlb_req_1_valid_hit1 &
    tlb_req_1_valid_hit0 : _tlb_req_1_valid_T_5; // @[MMUBundle.scala 517:22]
  wire  _tlb_req_1_valid_T_9 = ~(ptwResp_valid & _tlb_req_1_valid_T_6); // @[Repeater.scala 178:7]
  wire  _tlb_req_1_valid_T_10 = io_tlb_req_1_valid & _tlb_req_1_valid_T_9; // @[Repeater.scala 177:53]
  wire [3:0] _tlb_req_1_valid_T_11 = {lastReqMatchVec_early_1_0,lastReqMatchVec_early_1_1,lastReqMatchVec_early_1_2,
    lastReqMatchVec_early_1_3}; // @[Cat.scala 31:58]
  wire  _tlb_req_1_valid_T_13 = ~(|_tlb_req_1_valid_T_11); // @[Repeater.scala 179:7]
  wire  _tlb_req_1_valid_T_14 = _tlb_req_1_valid_T_10 & _tlb_req_1_valid_T_13; // @[Repeater.scala 178:86]
  wire  tlb_req_2_valid_hit0 = ptwResp_entry_tag[26:18] == io_tlb_req_2_bits_vpn[26:18]; // @[MMUBundle.scala 513:48]
  wire  tlb_req_2_valid_hit1 = ptwResp_entry_tag[17:9] == io_tlb_req_2_bits_vpn[17:9]; // @[MMUBundle.scala 514:48]
  wire  tlb_req_2_valid_hit2 = ptwResp_entry_tag[8:0] == io_tlb_req_2_bits_vpn[8:0]; // @[MMUBundle.scala 515:50]
  wire  _tlb_req_2_valid_T_5 = ptwResp_entry_level == 2'h1 ? tlb_req_2_valid_hit1 & tlb_req_2_valid_hit0 :
    tlb_req_2_valid_hit0; // @[MMUBundle.scala 517:78]
  wire  _tlb_req_2_valid_T_6 = ptwResp_entry_level == 2'h2 ? tlb_req_2_valid_hit2 & tlb_req_2_valid_hit1 &
    tlb_req_2_valid_hit0 : _tlb_req_2_valid_T_5; // @[MMUBundle.scala 517:22]
  wire  _tlb_req_2_valid_T_9 = ~(ptwResp_valid & _tlb_req_2_valid_T_6); // @[Repeater.scala 178:7]
  wire  _tlb_req_2_valid_T_10 = io_tlb_req_2_valid & _tlb_req_2_valid_T_9; // @[Repeater.scala 177:53]
  wire [3:0] _tlb_req_2_valid_T_11 = {lastReqMatchVec_early_2_0,lastReqMatchVec_early_2_1,lastReqMatchVec_early_2_2,
    lastReqMatchVec_early_2_3}; // @[Cat.scala 31:58]
  wire  _tlb_req_2_valid_T_13 = ~(|_tlb_req_2_valid_T_11); // @[Repeater.scala 179:7]
  wire  _tlb_req_2_valid_T_14 = _tlb_req_2_valid_T_10 & _tlb_req_2_valid_T_13; // @[Repeater.scala 178:86]
  wire  tlb_req_3_valid_hit0 = ptwResp_entry_tag[26:18] == io_tlb_req_3_bits_vpn[26:18]; // @[MMUBundle.scala 513:48]
  wire  tlb_req_3_valid_hit1 = ptwResp_entry_tag[17:9] == io_tlb_req_3_bits_vpn[17:9]; // @[MMUBundle.scala 514:48]
  wire  tlb_req_3_valid_hit2 = ptwResp_entry_tag[8:0] == io_tlb_req_3_bits_vpn[8:0]; // @[MMUBundle.scala 515:50]
  wire  _tlb_req_3_valid_T_5 = ptwResp_entry_level == 2'h1 ? tlb_req_3_valid_hit1 & tlb_req_3_valid_hit0 :
    tlb_req_3_valid_hit0; // @[MMUBundle.scala 517:78]
  wire  _tlb_req_3_valid_T_6 = ptwResp_entry_level == 2'h2 ? tlb_req_3_valid_hit2 & tlb_req_3_valid_hit1 &
    tlb_req_3_valid_hit0 : _tlb_req_3_valid_T_5; // @[MMUBundle.scala 517:22]
  wire  _tlb_req_3_valid_T_9 = ~(ptwResp_valid & _tlb_req_3_valid_T_6); // @[Repeater.scala 178:7]
  wire  _tlb_req_3_valid_T_10 = io_tlb_req_3_valid & _tlb_req_3_valid_T_9; // @[Repeater.scala 177:53]
  wire [3:0] _tlb_req_3_valid_T_11 = {lastReqMatchVec_early_3_0,lastReqMatchVec_early_3_1,lastReqMatchVec_early_3_2,
    lastReqMatchVec_early_3_3}; // @[Cat.scala 31:58]
  wire  _tlb_req_3_valid_T_13 = ~(|_tlb_req_3_valid_T_11); // @[Repeater.scala 179:7]
  wire  _tlb_req_3_valid_T_14 = _tlb_req_3_valid_T_10 & _tlb_req_3_valid_T_13; // @[Repeater.scala 178:86]
  wire [7:0] _oldMatchVec_T = {oldMatchVec_early_0_0,oldMatchVec_early_0_1,oldMatchVec_early_0_2,oldMatchVec_early_0_3,
    oldMatchVec_early_0_4,oldMatchVec_early_0_5,oldMatchVec_early_0_6,oldMatchVec_early_0_7}; // @[Cat.scala 31:58]
  reg  oldMatchVec_0; // @[Repeater.scala 184:55]
  wire [7:0] _oldMatchVec_T_2 = {oldMatchVec_early_1_0,oldMatchVec_early_1_1,oldMatchVec_early_1_2,oldMatchVec_early_1_3
    ,oldMatchVec_early_1_4,oldMatchVec_early_1_5,oldMatchVec_early_1_6,oldMatchVec_early_1_7}; // @[Cat.scala 31:58]
  reg  oldMatchVec_1; // @[Repeater.scala 184:55]
  wire [7:0] _oldMatchVec_T_4 = {oldMatchVec_early_2_0,oldMatchVec_early_2_1,oldMatchVec_early_2_2,oldMatchVec_early_2_3
    ,oldMatchVec_early_2_4,oldMatchVec_early_2_5,oldMatchVec_early_2_6,oldMatchVec_early_2_7}; // @[Cat.scala 31:58]
  reg  oldMatchVec_2; // @[Repeater.scala 184:55]
  wire [7:0] _oldMatchVec_T_6 = {oldMatchVec_early_3_0,oldMatchVec_early_3_1,oldMatchVec_early_3_2,oldMatchVec_early_3_3
    ,oldMatchVec_early_3_4,oldMatchVec_early_3_5,oldMatchVec_early_3_6,oldMatchVec_early_3_7}; // @[Cat.scala 31:58]
  reg  oldMatchVec_3; // @[Repeater.scala 184:55]
  reg  newMatchVec_REG_1; // @[Repeater.scala 186:12]
  wire  newMatchVec_0_1 = newMatchVec_REG_1 & tlb_req_1_valid_REG; // @[Repeater.scala 186:38]
  reg  newMatchVec_REG_2; // @[Repeater.scala 186:12]
  wire  newMatchVec_0_2 = newMatchVec_REG_2 & tlb_req_2_valid_REG; // @[Repeater.scala 186:38]
  reg  newMatchVec_REG_3; // @[Repeater.scala 186:12]
  wire  newMatchVec_0_3 = newMatchVec_REG_3 & tlb_req_3_valid_REG; // @[Repeater.scala 186:38]
  reg  newMatchVec_REG_4; // @[Repeater.scala 186:12]
  wire  newMatchVec_1_0 = newMatchVec_REG_4 & tlb_req_0_valid_REG; // @[Repeater.scala 186:38]
  reg  newMatchVec_REG_6; // @[Repeater.scala 186:12]
  wire  newMatchVec_1_2 = newMatchVec_REG_6 & tlb_req_2_valid_REG; // @[Repeater.scala 186:38]
  reg  newMatchVec_REG_7; // @[Repeater.scala 186:12]
  wire  newMatchVec_1_3 = newMatchVec_REG_7 & tlb_req_3_valid_REG; // @[Repeater.scala 186:38]
  reg  newMatchVec_REG_8; // @[Repeater.scala 186:12]
  wire  newMatchVec_2_0 = newMatchVec_REG_8 & tlb_req_0_valid_REG; // @[Repeater.scala 186:38]
  reg  newMatchVec_REG_9; // @[Repeater.scala 186:12]
  wire  newMatchVec_2_1 = newMatchVec_REG_9 & tlb_req_1_valid_REG; // @[Repeater.scala 186:38]
  reg  newMatchVec_REG_11; // @[Repeater.scala 186:12]
  wire  newMatchVec_2_3 = newMatchVec_REG_11 & tlb_req_3_valid_REG; // @[Repeater.scala 186:38]
  reg  newMatchVec_REG_12; // @[Repeater.scala 186:12]
  wire  newMatchVec_3_0 = newMatchVec_REG_12 & tlb_req_0_valid_REG; // @[Repeater.scala 186:38]
  reg  newMatchVec_REG_13; // @[Repeater.scala 186:12]
  wire  newMatchVec_3_1 = newMatchVec_REG_13 & tlb_req_1_valid_REG; // @[Repeater.scala 186:38]
  reg  newMatchVec_REG_14; // @[Repeater.scala 186:12]
  wire  newMatchVec_3_2 = newMatchVec_REG_14 & tlb_req_2_valid_REG; // @[Repeater.scala 186:38]
  wire  ptwResp_newMatchVec_hit0 = ptwResp_entry_tag[26:18] == tlb_req_0_bits_rvpn[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_newMatchVec_hit1 = ptwResp_entry_tag[17:9] == tlb_req_0_bits_rvpn[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_newMatchVec_hit2 = ptwResp_entry_tag[8:0] == tlb_req_0_bits_rvpn[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_newMatchVec_T_5 = ptwResp_entry_level == 2'h1 ? ptwResp_newMatchVec_hit1 & ptwResp_newMatchVec_hit0 :
    ptwResp_newMatchVec_hit0; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_newMatchVec_T_6 = ptwResp_entry_level == 2'h2 ? ptwResp_newMatchVec_hit2 & ptwResp_newMatchVec_hit1 &
    ptwResp_newMatchVec_hit0 : _ptwResp_newMatchVec_T_5; // @[MMUBundle.scala 517:22]
  wire  ptwResp_newMatchVec_0 = ptwResp_valid & _ptwResp_newMatchVec_T_6; // @[Repeater.scala 189:19]
  wire  ptwResp_newMatchVec_hit0_1 = ptwResp_entry_tag[26:18] == tlb_req_1_bits_rvpn[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_newMatchVec_hit1_1 = ptwResp_entry_tag[17:9] == tlb_req_1_bits_rvpn[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_newMatchVec_hit2_1 = ptwResp_entry_tag[8:0] == tlb_req_1_bits_rvpn[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_newMatchVec_T_13 = ptwResp_entry_level == 2'h1 ? ptwResp_newMatchVec_hit1_1 &
    ptwResp_newMatchVec_hit0_1 : ptwResp_newMatchVec_hit0_1; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_newMatchVec_T_14 = ptwResp_entry_level == 2'h2 ? ptwResp_newMatchVec_hit2_1 &
    ptwResp_newMatchVec_hit1_1 & ptwResp_newMatchVec_hit0_1 : _ptwResp_newMatchVec_T_13; // @[MMUBundle.scala 517:22]
  wire  ptwResp_newMatchVec_1 = ptwResp_valid & _ptwResp_newMatchVec_T_14; // @[Repeater.scala 189:19]
  wire  ptwResp_newMatchVec_hit0_2 = ptwResp_entry_tag[26:18] == tlb_req_2_bits_rvpn[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_newMatchVec_hit1_2 = ptwResp_entry_tag[17:9] == tlb_req_2_bits_rvpn[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_newMatchVec_hit2_2 = ptwResp_entry_tag[8:0] == tlb_req_2_bits_rvpn[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_newMatchVec_T_21 = ptwResp_entry_level == 2'h1 ? ptwResp_newMatchVec_hit1_2 &
    ptwResp_newMatchVec_hit0_2 : ptwResp_newMatchVec_hit0_2; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_newMatchVec_T_22 = ptwResp_entry_level == 2'h2 ? ptwResp_newMatchVec_hit2_2 &
    ptwResp_newMatchVec_hit1_2 & ptwResp_newMatchVec_hit0_2 : _ptwResp_newMatchVec_T_21; // @[MMUBundle.scala 517:22]
  wire  ptwResp_newMatchVec_2 = ptwResp_valid & _ptwResp_newMatchVec_T_22; // @[Repeater.scala 189:19]
  wire  ptwResp_newMatchVec_hit0_3 = ptwResp_entry_tag[26:18] == tlb_req_3_bits_rvpn[26:18]; // @[MMUBundle.scala 513:48]
  wire  ptwResp_newMatchVec_hit1_3 = ptwResp_entry_tag[17:9] == tlb_req_3_bits_rvpn[17:9]; // @[MMUBundle.scala 514:48]
  wire  ptwResp_newMatchVec_hit2_3 = ptwResp_entry_tag[8:0] == tlb_req_3_bits_rvpn[8:0]; // @[MMUBundle.scala 515:50]
  wire  _ptwResp_newMatchVec_T_29 = ptwResp_entry_level == 2'h1 ? ptwResp_newMatchVec_hit1_3 &
    ptwResp_newMatchVec_hit0_3 : ptwResp_newMatchVec_hit0_3; // @[MMUBundle.scala 517:78]
  wire  _ptwResp_newMatchVec_T_30 = ptwResp_entry_level == 2'h2 ? ptwResp_newMatchVec_hit2_3 &
    ptwResp_newMatchVec_hit1_3 & ptwResp_newMatchVec_hit0_3 : _ptwResp_newMatchVec_T_29; // @[MMUBundle.scala 517:22]
  wire  ptwResp_newMatchVec_3 = ptwResp_valid & _ptwResp_newMatchVec_T_30; // @[Repeater.scala 189:19]
  reg  oldMatchVec2_REG; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_1; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_2; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_3; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_4; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_5; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_6; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_7; // @[Repeater.scala 191:79]
  wire  oldMatchVec2_0_0 = oldMatchVec2_REG & tlb_req_0_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_0_1 = oldMatchVec2_REG_1 & tlb_req_0_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_0_2 = oldMatchVec2_REG_2 & tlb_req_0_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_0_3 = oldMatchVec2_REG_3 & tlb_req_0_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_0_4 = oldMatchVec2_REG_4 & tlb_req_0_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_0_5 = oldMatchVec2_REG_5 & tlb_req_0_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_0_6 = oldMatchVec2_REG_6 & tlb_req_0_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_0_7 = oldMatchVec2_REG_7 & tlb_req_0_valid_REG; // @[Repeater.scala 191:90]
  reg  oldMatchVec2_REG_8; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_9; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_10; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_11; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_12; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_13; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_14; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_15; // @[Repeater.scala 191:79]
  wire  oldMatchVec2_1_0 = oldMatchVec2_REG_8 & tlb_req_1_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_1_1 = oldMatchVec2_REG_9 & tlb_req_1_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_1_2 = oldMatchVec2_REG_10 & tlb_req_1_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_1_3 = oldMatchVec2_REG_11 & tlb_req_1_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_1_4 = oldMatchVec2_REG_12 & tlb_req_1_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_1_5 = oldMatchVec2_REG_13 & tlb_req_1_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_1_6 = oldMatchVec2_REG_14 & tlb_req_1_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_1_7 = oldMatchVec2_REG_15 & tlb_req_1_valid_REG; // @[Repeater.scala 191:90]
  reg  oldMatchVec2_REG_16; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_17; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_18; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_19; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_20; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_21; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_22; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_23; // @[Repeater.scala 191:79]
  wire  oldMatchVec2_2_0 = oldMatchVec2_REG_16 & tlb_req_2_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_2_1 = oldMatchVec2_REG_17 & tlb_req_2_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_2_2 = oldMatchVec2_REG_18 & tlb_req_2_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_2_3 = oldMatchVec2_REG_19 & tlb_req_2_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_2_4 = oldMatchVec2_REG_20 & tlb_req_2_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_2_5 = oldMatchVec2_REG_21 & tlb_req_2_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_2_6 = oldMatchVec2_REG_22 & tlb_req_2_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_2_7 = oldMatchVec2_REG_23 & tlb_req_2_valid_REG; // @[Repeater.scala 191:90]
  reg  oldMatchVec2_REG_24; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_25; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_26; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_27; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_28; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_29; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_30; // @[Repeater.scala 191:79]
  reg  oldMatchVec2_REG_31; // @[Repeater.scala 191:79]
  wire  oldMatchVec2_3_0 = oldMatchVec2_REG_24 & tlb_req_3_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_3_1 = oldMatchVec2_REG_25 & tlb_req_3_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_3_2 = oldMatchVec2_REG_26 & tlb_req_3_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_3_3 = oldMatchVec2_REG_27 & tlb_req_3_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_3_4 = oldMatchVec2_REG_28 & tlb_req_3_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_3_5 = oldMatchVec2_REG_29 & tlb_req_3_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_3_6 = oldMatchVec2_REG_30 & tlb_req_3_valid_REG; // @[Repeater.scala 191:90]
  wire  oldMatchVec2_3_7 = oldMatchVec2_REG_31 & tlb_req_3_valid_REG; // @[Repeater.scala 191:90]
  wire [3:0] _filter_ports_xs_T_1 = tlb_req_0_valid_REG ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] filter_ports_xs_0 = _filter_ports_xs_T_1 & 4'h1; // @[ParallelMux.scala 65:65]
  wire [3:0] _filter_ports_xs_T_4 = newMatchVec_0_1 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] filter_ports_xs_1 = _filter_ports_xs_T_4 & 4'h2; // @[ParallelMux.scala 65:65]
  wire [3:0] _filter_ports_xs_T_7 = newMatchVec_0_2 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] filter_ports_xs_2 = _filter_ports_xs_T_7 & 4'h4; // @[ParallelMux.scala 65:65]
  wire [3:0] _filter_ports_xs_T_10 = newMatchVec_0_3 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] filter_ports_xs_3 = _filter_ports_xs_T_10 & 4'h8; // @[ParallelMux.scala 65:65]
  wire [3:0] _filter_ports_T = filter_ports_xs_0 | filter_ports_xs_1; // @[ParallelMux.scala 37:55]
  wire [3:0] _filter_ports_T_1 = filter_ports_xs_2 | filter_ports_xs_3; // @[ParallelMux.scala 37:55]
  wire [3:0] filter_ports_0 = _filter_ports_T | _filter_ports_T_1; // @[ParallelMux.scala 37:55]
  wire [3:0] _filter_ports_xs_T_13 = tlb_req_1_valid_REG ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] filter_ports_xs_0_1 = _filter_ports_xs_T_13 & 4'h2; // @[ParallelMux.scala 65:65]
  wire [3:0] _filter_ports_xs_T_16 = newMatchVec_1_2 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] filter_ports_xs_1_1 = _filter_ports_xs_T_16 & 4'h4; // @[ParallelMux.scala 65:65]
  wire [3:0] _filter_ports_xs_T_19 = newMatchVec_1_3 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] filter_ports_xs_2_1 = _filter_ports_xs_T_19 & 4'h8; // @[ParallelMux.scala 65:65]
  wire [3:0] _filter_ports_T_3 = filter_ports_xs_1_1 | filter_ports_xs_2_1; // @[ParallelMux.scala 37:55]
  wire [3:0] filter_ports_1 = filter_ports_xs_0_1 | _filter_ports_T_3; // @[ParallelMux.scala 37:55]
  wire [3:0] _filter_ports_xs_T_22 = tlb_req_2_valid_REG ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] filter_ports_xs_0_2 = _filter_ports_xs_T_22 & 4'h4; // @[ParallelMux.scala 65:65]
  wire [3:0] _filter_ports_xs_T_25 = newMatchVec_2_3 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] filter_ports_xs_1_2 = _filter_ports_xs_T_25 & 4'h8; // @[ParallelMux.scala 65:65]
  wire [3:0] filter_ports_2 = filter_ports_xs_0_2 | filter_ports_xs_1_2; // @[ParallelMux.scala 37:55]
  wire [3:0] _filter_ports_xs_T_28 = tlb_req_3_valid_REG ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] filter_ports_3 = _filter_ports_xs_T_28 & 4'h8; // @[ParallelMux.scala 65:65]
  wire [3:0] _resp_vector_xs_T_1 = ptwResp_OldMatchVec_0 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _resp_vector_xs_T_2 = {ports_0_3,ports_0_2,ports_0_1,ports_0_0}; // @[ParallelMux.scala 65:75]
  wire [3:0] _resp_vector_xs_T_3 = _resp_vector_xs_T_1 & _resp_vector_xs_T_2; // @[ParallelMux.scala 65:65]
  wire  resp_vector_xs_0_0 = _resp_vector_xs_T_3[0]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_0_1 = _resp_vector_xs_T_3[1]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_0_2 = _resp_vector_xs_T_3[2]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_0_3 = _resp_vector_xs_T_3[3]; // @[ParallelMux.scala 65:87]
  wire [3:0] _resp_vector_xs_T_9 = ptwResp_OldMatchVec_1 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _resp_vector_xs_T_10 = {ports_1_3,ports_1_2,ports_1_1,ports_1_0}; // @[ParallelMux.scala 65:75]
  wire [3:0] _resp_vector_xs_T_11 = _resp_vector_xs_T_9 & _resp_vector_xs_T_10; // @[ParallelMux.scala 65:65]
  wire  resp_vector_xs_1_0 = _resp_vector_xs_T_11[0]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_1_1 = _resp_vector_xs_T_11[1]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_1_2 = _resp_vector_xs_T_11[2]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_1_3 = _resp_vector_xs_T_11[3]; // @[ParallelMux.scala 65:87]
  wire [3:0] _resp_vector_xs_T_17 = ptwResp_OldMatchVec_2 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _resp_vector_xs_T_18 = {ports_2_3,ports_2_2,ports_2_1,ports_2_0}; // @[ParallelMux.scala 65:75]
  wire [3:0] _resp_vector_xs_T_19 = _resp_vector_xs_T_17 & _resp_vector_xs_T_18; // @[ParallelMux.scala 65:65]
  wire  resp_vector_xs_2_0 = _resp_vector_xs_T_19[0]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_2_1 = _resp_vector_xs_T_19[1]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_2_2 = _resp_vector_xs_T_19[2]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_2_3 = _resp_vector_xs_T_19[3]; // @[ParallelMux.scala 65:87]
  wire [3:0] _resp_vector_xs_T_25 = ptwResp_OldMatchVec_3 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _resp_vector_xs_T_26 = {ports_3_3,ports_3_2,ports_3_1,ports_3_0}; // @[ParallelMux.scala 65:75]
  wire [3:0] _resp_vector_xs_T_27 = _resp_vector_xs_T_25 & _resp_vector_xs_T_26; // @[ParallelMux.scala 65:65]
  wire  resp_vector_xs_3_0 = _resp_vector_xs_T_27[0]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_3_1 = _resp_vector_xs_T_27[1]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_3_2 = _resp_vector_xs_T_27[2]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_3_3 = _resp_vector_xs_T_27[3]; // @[ParallelMux.scala 65:87]
  wire [3:0] _resp_vector_xs_T_33 = ptwResp_OldMatchVec_4 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _resp_vector_xs_T_34 = {ports_4_3,ports_4_2,ports_4_1,ports_4_0}; // @[ParallelMux.scala 65:75]
  wire [3:0] _resp_vector_xs_T_35 = _resp_vector_xs_T_33 & _resp_vector_xs_T_34; // @[ParallelMux.scala 65:65]
  wire  resp_vector_xs_4_0 = _resp_vector_xs_T_35[0]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_4_1 = _resp_vector_xs_T_35[1]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_4_2 = _resp_vector_xs_T_35[2]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_4_3 = _resp_vector_xs_T_35[3]; // @[ParallelMux.scala 65:87]
  wire [3:0] _resp_vector_xs_T_41 = ptwResp_OldMatchVec_5 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _resp_vector_xs_T_42 = {ports_5_3,ports_5_2,ports_5_1,ports_5_0}; // @[ParallelMux.scala 65:75]
  wire [3:0] _resp_vector_xs_T_43 = _resp_vector_xs_T_41 & _resp_vector_xs_T_42; // @[ParallelMux.scala 65:65]
  wire  resp_vector_xs_5_0 = _resp_vector_xs_T_43[0]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_5_1 = _resp_vector_xs_T_43[1]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_5_2 = _resp_vector_xs_T_43[2]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_5_3 = _resp_vector_xs_T_43[3]; // @[ParallelMux.scala 65:87]
  wire [3:0] _resp_vector_xs_T_49 = ptwResp_OldMatchVec_6 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _resp_vector_xs_T_50 = {ports_6_3,ports_6_2,ports_6_1,ports_6_0}; // @[ParallelMux.scala 65:75]
  wire [3:0] _resp_vector_xs_T_51 = _resp_vector_xs_T_49 & _resp_vector_xs_T_50; // @[ParallelMux.scala 65:65]
  wire  resp_vector_xs_6_0 = _resp_vector_xs_T_51[0]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_6_1 = _resp_vector_xs_T_51[1]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_6_2 = _resp_vector_xs_T_51[2]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_6_3 = _resp_vector_xs_T_51[3]; // @[ParallelMux.scala 65:87]
  wire [3:0] _resp_vector_xs_T_57 = ptwResp_OldMatchVec_7 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [3:0] _resp_vector_xs_T_58 = {ports_7_3,ports_7_2,ports_7_1,ports_7_0}; // @[ParallelMux.scala 65:75]
  wire [3:0] _resp_vector_xs_T_59 = _resp_vector_xs_T_57 & _resp_vector_xs_T_58; // @[ParallelMux.scala 65:65]
  wire  resp_vector_xs_7_0 = _resp_vector_xs_T_59[0]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_7_1 = _resp_vector_xs_T_59[1]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_7_2 = _resp_vector_xs_T_59[2]; // @[ParallelMux.scala 65:87]
  wire  resp_vector_xs_7_3 = _resp_vector_xs_T_59[3]; // @[ParallelMux.scala 65:87]
  wire [3:0] _resp_vector_T = {resp_vector_xs_0_3,resp_vector_xs_0_2,resp_vector_xs_0_1,resp_vector_xs_0_0}; // @[ParallelMux.scala 37:52]
  wire [3:0] _resp_vector_T_1 = {resp_vector_xs_1_3,resp_vector_xs_1_2,resp_vector_xs_1_1,resp_vector_xs_1_0}; // @[ParallelMux.scala 37:65]
  wire [3:0] _resp_vector_T_2 = _resp_vector_T | _resp_vector_T_1; // @[ParallelMux.scala 37:55]
  wire [3:0] _resp_vector_T_7 = {resp_vector_xs_2_3,resp_vector_xs_2_2,resp_vector_xs_2_1,resp_vector_xs_2_0}; // @[ParallelMux.scala 37:52]
  wire [3:0] _resp_vector_T_8 = {resp_vector_xs_3_3,resp_vector_xs_3_2,resp_vector_xs_3_1,resp_vector_xs_3_0}; // @[ParallelMux.scala 37:65]
  wire [3:0] _resp_vector_T_9 = _resp_vector_T_7 | _resp_vector_T_8; // @[ParallelMux.scala 37:55]
  wire [3:0] _resp_vector_T_14 = {_resp_vector_T_2[3],_resp_vector_T_2[2],_resp_vector_T_2[1],_resp_vector_T_2[0]}; // @[ParallelMux.scala 37:52]
  wire [3:0] _resp_vector_T_15 = {_resp_vector_T_9[3],_resp_vector_T_9[2],_resp_vector_T_9[1],_resp_vector_T_9[0]}; // @[ParallelMux.scala 37:65]
  wire [3:0] _resp_vector_T_16 = _resp_vector_T_14 | _resp_vector_T_15; // @[ParallelMux.scala 37:55]
  wire [3:0] _resp_vector_T_21 = {resp_vector_xs_4_3,resp_vector_xs_4_2,resp_vector_xs_4_1,resp_vector_xs_4_0}; // @[ParallelMux.scala 37:52]
  wire [3:0] _resp_vector_T_22 = {resp_vector_xs_5_3,resp_vector_xs_5_2,resp_vector_xs_5_1,resp_vector_xs_5_0}; // @[ParallelMux.scala 37:65]
  wire [3:0] _resp_vector_T_23 = _resp_vector_T_21 | _resp_vector_T_22; // @[ParallelMux.scala 37:55]
  wire [3:0] _resp_vector_T_28 = {resp_vector_xs_6_3,resp_vector_xs_6_2,resp_vector_xs_6_1,resp_vector_xs_6_0}; // @[ParallelMux.scala 37:52]
  wire [3:0] _resp_vector_T_29 = {resp_vector_xs_7_3,resp_vector_xs_7_2,resp_vector_xs_7_1,resp_vector_xs_7_0}; // @[ParallelMux.scala 37:65]
  wire [3:0] _resp_vector_T_30 = _resp_vector_T_28 | _resp_vector_T_29; // @[ParallelMux.scala 37:55]
  wire [3:0] _resp_vector_T_35 = {_resp_vector_T_23[3],_resp_vector_T_23[2],_resp_vector_T_23[1],_resp_vector_T_23[0]}; // @[ParallelMux.scala 37:52]
  wire [3:0] _resp_vector_T_36 = {_resp_vector_T_30[3],_resp_vector_T_30[2],_resp_vector_T_30[1],_resp_vector_T_30[0]}; // @[ParallelMux.scala 37:65]
  wire [3:0] _resp_vector_T_37 = _resp_vector_T_35 | _resp_vector_T_36; // @[ParallelMux.scala 37:55]
  wire [3:0] _resp_vector_T_42 = {_resp_vector_T_16[3],_resp_vector_T_16[2],_resp_vector_T_16[1],_resp_vector_T_16[0]}; // @[ParallelMux.scala 37:52]
  wire [3:0] _resp_vector_T_43 = {_resp_vector_T_37[3],_resp_vector_T_37[2],_resp_vector_T_37[1],_resp_vector_T_37[0]}; // @[ParallelMux.scala 37:65]
  wire [3:0] _resp_vector_T_44 = _resp_vector_T_42 | _resp_vector_T_43; // @[ParallelMux.scala 37:55]
  reg  resp_vector_0; // @[Reg.scala 16:16]
  reg  resp_vector_1; // @[Reg.scala 16:16]
  reg  resp_vector_2; // @[Reg.scala 16:16]
  reg  resp_vector_3; // @[Reg.scala 16:16]
  wire  reqs_reqs_merge = ptwResp_newMatchVec_0 | oldMatchVec_0; // @[Repeater.scala 198:32]
  wire  reqs_0_valid = ~reqs_reqs_merge & tlb_req_0_valid_REG; // @[Repeater.scala 207:27]
  wire  _reqs_reqs_merge_T_3 = |newMatchVec_1_0; // @[Repeater.scala 199:41]
  wire  reqs_reqs_merge_1 = ptwResp_newMatchVec_1 | oldMatchVec_1 | _reqs_reqs_merge_T_3; // @[Repeater.scala 198:54]
  wire  reqs_1_valid = ~reqs_reqs_merge_1 & tlb_req_1_valid_REG; // @[Repeater.scala 207:27]
  wire [1:0] _reqs_reqs_merge_T_5 = {newMatchVec_2_0,newMatchVec_2_1}; // @[Cat.scala 31:58]
  wire  _reqs_reqs_merge_T_6 = |_reqs_reqs_merge_T_5; // @[Repeater.scala 199:41]
  wire  reqs_reqs_merge_2 = ptwResp_newMatchVec_2 | oldMatchVec_2 | _reqs_reqs_merge_T_6; // @[Repeater.scala 198:54]
  wire  reqs_2_valid = ~reqs_reqs_merge_2 & tlb_req_2_valid_REG; // @[Repeater.scala 207:27]
  wire [2:0] _reqs_reqs_merge_T_8 = {newMatchVec_3_0,newMatchVec_3_1,newMatchVec_3_2}; // @[Cat.scala 31:58]
  wire  _reqs_reqs_merge_T_9 = |_reqs_reqs_merge_T_8; // @[Repeater.scala 199:41]
  wire  reqs_reqs_merge_3 = ptwResp_newMatchVec_3 | oldMatchVec_3 | _reqs_reqs_merge_T_9; // @[Repeater.scala 198:54]
  wire  reqs_3_valid = ~reqs_reqs_merge_3 & tlb_req_3_valid_REG; // @[Repeater.scala 207:27]
  wire  _isFull_T = enqPtr == deqPtr; // @[Repeater.scala 215:23]
  wire  isEmptyDeq = _isFull_T & ~mayFullDeq; // @[Repeater.scala 216:38]
  wire  isEmptyIss = enqPtr == issPtr & ~mayFullIss; // @[Repeater.scala 217:38]
  wire [1:0] accumEnqNum_2 = reqs_0_valid + reqs_1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _accumEnqNum_T_1 = reqs_1_valid + reqs_2_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_537 = {{1'd0}, reqs_0_valid}; // @[Bitwise.scala 48:55]
  wire [2:0] _accumEnqNum_T_3 = _GEN_537 + _accumEnqNum_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] accumEnqNum_3 = _accumEnqNum_T_3[1:0]; // @[Bitwise.scala 48:55]
  wire [3:0] _enqPtrVecInit_T = {{1'd0}, enqPtr}; // @[Repeater.scala 219:63]
  wire [2:0] enqPtrVecInit_0 = _enqPtrVecInit_T[2:0]; // @[Repeater.scala 219:63]
  wire [2:0] enqPtrVecInit_1 = enqPtr + 3'h1; // @[Repeater.scala 219:63]
  wire [2:0] enqPtrVecInit_2 = enqPtr + 3'h2; // @[Repeater.scala 219:63]
  wire [2:0] enqPtrVecInit_3 = enqPtr + 3'h3; // @[Repeater.scala 219:63]
  wire [2:0] _GEN_24 = reqs_0_valid ? enqPtrVecInit_1 : enqPtrVecInit_0; // @[Repeater.scala 220:{26,26}]
  wire [2:0] _GEN_25 = 2'h2 == _GEN_537 ? enqPtrVecInit_2 : _GEN_24; // @[Repeater.scala 220:{26,26}]
  wire [2:0] enqPtrVec_1 = 2'h3 == _GEN_537 ? enqPtrVecInit_3 : _GEN_25; // @[Repeater.scala 220:{26,26}]
  wire [2:0] _GEN_28 = 2'h1 == accumEnqNum_2 ? enqPtrVecInit_1 : enqPtrVecInit_0; // @[Repeater.scala 220:{26,26}]
  wire [2:0] _GEN_29 = 2'h2 == accumEnqNum_2 ? enqPtrVecInit_2 : _GEN_28; // @[Repeater.scala 220:{26,26}]
  wire [2:0] enqPtrVec_2 = 2'h3 == accumEnqNum_2 ? enqPtrVecInit_3 : _GEN_29; // @[Repeater.scala 220:{26,26}]
  wire [2:0] _GEN_32 = 2'h1 == accumEnqNum_3 ? enqPtrVecInit_1 : enqPtrVecInit_0; // @[Repeater.scala 220:{26,26}]
  wire [2:0] _GEN_33 = 2'h2 == accumEnqNum_3 ? enqPtrVecInit_2 : _GEN_32; // @[Repeater.scala 220:{26,26}]
  wire [2:0] enqPtrVec_3 = 2'h3 == accumEnqNum_3 ? enqPtrVecInit_3 : _GEN_33; // @[Repeater.scala 220:{26,26}]
  wire [1:0] _enqNum_T_2 = reqs_2_valid + reqs_3_valid; // @[Bitwise.scala 48:55]
  wire [2:0] enqNum = accumEnqNum_2 + _enqNum_T_2; // @[Bitwise.scala 48:55]
  wire [3:0] _GEN_540 = {{1'd0}, enqNum}; // @[Repeater.scala 222:28]
  wire [4:0] _canEnqueue_T = counter + _GEN_540; // @[Repeater.scala 222:28]
  wire  canEnqueue = _canEnqueue_T <= 5'h8; // @[Repeater.scala 222:38]
  wire  _issue_valid_T = ~isEmptyIss; // @[Repeater.scala 229:34]
  wire  _GEN_36 = 3'h1 == issPtr ? v_1 : v_0; // @[Repeater.scala 229:{31,31}]
  wire  _GEN_37 = 3'h2 == issPtr ? v_2 : _GEN_36; // @[Repeater.scala 229:{31,31}]
  wire  _GEN_38 = 3'h3 == issPtr ? v_3 : _GEN_37; // @[Repeater.scala 229:{31,31}]
  wire  _GEN_39 = 3'h4 == issPtr ? v_4 : _GEN_38; // @[Repeater.scala 229:{31,31}]
  wire  _GEN_40 = 3'h5 == issPtr ? v_5 : _GEN_39; // @[Repeater.scala 229:{31,31}]
  wire  _GEN_41 = 3'h6 == issPtr ? v_6 : _GEN_40; // @[Repeater.scala 229:{31,31}]
  wire  _GEN_42 = 3'h7 == issPtr ? v_7 : _GEN_41; // @[Repeater.scala 229:{31,31}]
  wire  issue_valid = _GEN_42 & ~isEmptyIss; // @[Repeater.scala 229:31]
  wire  issue_filtered_hit0 = ptwResp_entry_tag[26:18] == io_ptw_req_0_bits_vpn[26:18]; // @[MMUBundle.scala 513:48]
  wire  issue_filtered_hit1 = ptwResp_entry_tag[17:9] == io_ptw_req_0_bits_vpn[17:9]; // @[MMUBundle.scala 514:48]
  wire  issue_filtered_hit2 = ptwResp_entry_tag[8:0] == io_ptw_req_0_bits_vpn[8:0]; // @[MMUBundle.scala 515:50]
  wire  _issue_filtered_T_5 = ptwResp_entry_level == 2'h1 ? issue_filtered_hit1 & issue_filtered_hit0 :
    issue_filtered_hit0; // @[MMUBundle.scala 517:78]
  wire  _issue_filtered_T_6 = ptwResp_entry_level == 2'h2 ? issue_filtered_hit2 & issue_filtered_hit1 &
    issue_filtered_hit0 : _issue_filtered_T_5; // @[MMUBundle.scala 517:22]
  wire  issue_filtered = ptwResp_valid & _issue_filtered_T_6; // @[Repeater.scala 230:38]
  wire  issue_fire_fake = issue_valid & io_ptw_req_0_ready; // @[Repeater.scala 231:37]
  wire [26:0] _GEN_44 = 3'h1 == issPtr ? vpn_1 : vpn_0; // @[Repeater.scala 233:{26,26}]
  wire [26:0] _GEN_45 = 3'h2 == issPtr ? vpn_2 : _GEN_44; // @[Repeater.scala 233:{26,26}]
  wire [26:0] _GEN_46 = 3'h3 == issPtr ? vpn_3 : _GEN_45; // @[Repeater.scala 233:{26,26}]
  wire [26:0] _GEN_47 = 3'h4 == issPtr ? vpn_4 : _GEN_46; // @[Repeater.scala 233:{26,26}]
  wire [26:0] _GEN_48 = 3'h5 == issPtr ? vpn_5 : _GEN_47; // @[Repeater.scala 233:{26,26}]
  wire [26:0] _GEN_49 = 3'h6 == issPtr ? vpn_6 : _GEN_48; // @[Repeater.scala 233:{26,26}]
  wire  _GEN_51 = 3'h0 == enqPtrVecInit_0 | v_0; // @[Repeater.scala 154:18 239:{25,25}]
  wire  _GEN_52 = 3'h1 == enqPtrVecInit_0 | v_1; // @[Repeater.scala 154:18 239:{25,25}]
  wire  _GEN_53 = 3'h2 == enqPtrVecInit_0 | v_2; // @[Repeater.scala 154:18 239:{25,25}]
  wire  _GEN_54 = 3'h3 == enqPtrVecInit_0 | v_3; // @[Repeater.scala 154:18 239:{25,25}]
  wire  _GEN_55 = 3'h4 == enqPtrVecInit_0 | v_4; // @[Repeater.scala 154:18 239:{25,25}]
  wire  _GEN_56 = 3'h5 == enqPtrVecInit_0 | v_5; // @[Repeater.scala 154:18 239:{25,25}]
  wire  _GEN_57 = 3'h6 == enqPtrVecInit_0 | v_6; // @[Repeater.scala 154:18 239:{25,25}]
  wire  _GEN_58 = 3'h7 == enqPtrVecInit_0 | v_7; // @[Repeater.scala 154:18 239:{25,25}]
  wire [26:0] _GEN_59 = 3'h0 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_0; // @[Repeater.scala 156:16 240:{27,27}]
  wire [26:0] _GEN_60 = 3'h1 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_1; // @[Repeater.scala 156:16 240:{27,27}]
  wire [26:0] _GEN_61 = 3'h2 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_2; // @[Repeater.scala 156:16 240:{27,27}]
  wire [26:0] _GEN_62 = 3'h3 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_3; // @[Repeater.scala 156:16 240:{27,27}]
  wire [26:0] _GEN_63 = 3'h4 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_4; // @[Repeater.scala 156:16 240:{27,27}]
  wire [26:0] _GEN_64 = 3'h5 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_5; // @[Repeater.scala 156:16 240:{27,27}]
  wire [26:0] _GEN_65 = 3'h6 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_6; // @[Repeater.scala 156:16 240:{27,27}]
  wire [26:0] _GEN_66 = 3'h7 == enqPtrVecInit_0 ? tlb_req_0_bits_rvpn : vpn_7; // @[Repeater.scala 156:16 240:{27,27}]
  wire  _GEN_67 = 3'h0 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_0_0; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_68 = 3'h1 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_1_0; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_69 = 3'h2 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_2_0; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_70 = 3'h3 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_3_0; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_71 = 3'h4 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_4_0; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_72 = 3'h5 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_5_0; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_73 = 3'h6 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_6_0; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_74 = 3'h7 == enqPtrVecInit_0 ? filter_ports_0[0] : ports_7_0; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_75 = 3'h0 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_0_1; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_76 = 3'h1 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_1_1; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_77 = 3'h2 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_2_1; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_78 = 3'h3 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_3_1; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_79 = 3'h4 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_4_1; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_80 = 3'h5 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_5_1; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_81 = 3'h6 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_6_1; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_82 = 3'h7 == enqPtrVecInit_0 ? filter_ports_0[1] : ports_7_1; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_83 = 3'h0 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_0_2; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_84 = 3'h1 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_1_2; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_85 = 3'h2 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_2_2; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_86 = 3'h3 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_3_2; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_87 = 3'h4 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_4_2; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_88 = 3'h5 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_5_2; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_89 = 3'h6 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_6_2; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_90 = 3'h7 == enqPtrVecInit_0 ? filter_ports_0[2] : ports_7_2; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_91 = 3'h0 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_0_3; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_92 = 3'h1 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_1_3; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_93 = 3'h2 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_2_3; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_94 = 3'h3 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_3_3; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_95 = 3'h4 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_4_3; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_96 = 3'h5 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_5_3; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_97 = 3'h6 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_6_3; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_98 = 3'h7 == enqPtrVecInit_0 ? filter_ports_0[3] : ports_7_3; // @[Repeater.scala 155:18 241:{29,29}]
  wire  _GEN_99 = reqs_0_valid & canEnqueue ? _GEN_51 : v_0; // @[Repeater.scala 154:18 238:38]
  wire  _GEN_100 = reqs_0_valid & canEnqueue ? _GEN_52 : v_1; // @[Repeater.scala 154:18 238:38]
  wire  _GEN_101 = reqs_0_valid & canEnqueue ? _GEN_53 : v_2; // @[Repeater.scala 154:18 238:38]
  wire  _GEN_102 = reqs_0_valid & canEnqueue ? _GEN_54 : v_3; // @[Repeater.scala 154:18 238:38]
  wire  _GEN_103 = reqs_0_valid & canEnqueue ? _GEN_55 : v_4; // @[Repeater.scala 154:18 238:38]
  wire  _GEN_104 = reqs_0_valid & canEnqueue ? _GEN_56 : v_5; // @[Repeater.scala 154:18 238:38]
  wire  _GEN_105 = reqs_0_valid & canEnqueue ? _GEN_57 : v_6; // @[Repeater.scala 154:18 238:38]
  wire  _GEN_106 = reqs_0_valid & canEnqueue ? _GEN_58 : v_7; // @[Repeater.scala 154:18 238:38]
  wire [26:0] _GEN_107 = reqs_0_valid & canEnqueue ? _GEN_59 : vpn_0; // @[Repeater.scala 156:16 238:38]
  wire [26:0] _GEN_108 = reqs_0_valid & canEnqueue ? _GEN_60 : vpn_1; // @[Repeater.scala 156:16 238:38]
  wire [26:0] _GEN_109 = reqs_0_valid & canEnqueue ? _GEN_61 : vpn_2; // @[Repeater.scala 156:16 238:38]
  wire [26:0] _GEN_110 = reqs_0_valid & canEnqueue ? _GEN_62 : vpn_3; // @[Repeater.scala 156:16 238:38]
  wire [26:0] _GEN_111 = reqs_0_valid & canEnqueue ? _GEN_63 : vpn_4; // @[Repeater.scala 156:16 238:38]
  wire [26:0] _GEN_112 = reqs_0_valid & canEnqueue ? _GEN_64 : vpn_5; // @[Repeater.scala 156:16 238:38]
  wire [26:0] _GEN_113 = reqs_0_valid & canEnqueue ? _GEN_65 : vpn_6; // @[Repeater.scala 156:16 238:38]
  wire [26:0] _GEN_114 = reqs_0_valid & canEnqueue ? _GEN_66 : vpn_7; // @[Repeater.scala 156:16 238:38]
  wire  _GEN_115 = reqs_0_valid & canEnqueue ? _GEN_67 : ports_0_0; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_116 = reqs_0_valid & canEnqueue ? _GEN_68 : ports_1_0; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_117 = reqs_0_valid & canEnqueue ? _GEN_69 : ports_2_0; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_118 = reqs_0_valid & canEnqueue ? _GEN_70 : ports_3_0; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_119 = reqs_0_valid & canEnqueue ? _GEN_71 : ports_4_0; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_120 = reqs_0_valid & canEnqueue ? _GEN_72 : ports_5_0; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_121 = reqs_0_valid & canEnqueue ? _GEN_73 : ports_6_0; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_122 = reqs_0_valid & canEnqueue ? _GEN_74 : ports_7_0; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_123 = reqs_0_valid & canEnqueue ? _GEN_75 : ports_0_1; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_124 = reqs_0_valid & canEnqueue ? _GEN_76 : ports_1_1; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_125 = reqs_0_valid & canEnqueue ? _GEN_77 : ports_2_1; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_126 = reqs_0_valid & canEnqueue ? _GEN_78 : ports_3_1; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_127 = reqs_0_valid & canEnqueue ? _GEN_79 : ports_4_1; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_128 = reqs_0_valid & canEnqueue ? _GEN_80 : ports_5_1; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_129 = reqs_0_valid & canEnqueue ? _GEN_81 : ports_6_1; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_130 = reqs_0_valid & canEnqueue ? _GEN_82 : ports_7_1; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_131 = reqs_0_valid & canEnqueue ? _GEN_83 : ports_0_2; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_132 = reqs_0_valid & canEnqueue ? _GEN_84 : ports_1_2; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_133 = reqs_0_valid & canEnqueue ? _GEN_85 : ports_2_2; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_134 = reqs_0_valid & canEnqueue ? _GEN_86 : ports_3_2; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_135 = reqs_0_valid & canEnqueue ? _GEN_87 : ports_4_2; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_136 = reqs_0_valid & canEnqueue ? _GEN_88 : ports_5_2; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_137 = reqs_0_valid & canEnqueue ? _GEN_89 : ports_6_2; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_138 = reqs_0_valid & canEnqueue ? _GEN_90 : ports_7_2; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_139 = reqs_0_valid & canEnqueue ? _GEN_91 : ports_0_3; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_140 = reqs_0_valid & canEnqueue ? _GEN_92 : ports_1_3; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_141 = reqs_0_valid & canEnqueue ? _GEN_93 : ports_2_3; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_142 = reqs_0_valid & canEnqueue ? _GEN_94 : ports_3_3; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_143 = reqs_0_valid & canEnqueue ? _GEN_95 : ports_4_3; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_144 = reqs_0_valid & canEnqueue ? _GEN_96 : ports_5_3; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_145 = reqs_0_valid & canEnqueue ? _GEN_97 : ports_6_3; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_146 = reqs_0_valid & canEnqueue ? _GEN_98 : ports_7_3; // @[Repeater.scala 155:18 238:38]
  wire  _GEN_147 = 3'h0 == enqPtrVec_1 | _GEN_99; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_148 = 3'h1 == enqPtrVec_1 | _GEN_100; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_149 = 3'h2 == enqPtrVec_1 | _GEN_101; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_150 = 3'h3 == enqPtrVec_1 | _GEN_102; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_151 = 3'h4 == enqPtrVec_1 | _GEN_103; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_152 = 3'h5 == enqPtrVec_1 | _GEN_104; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_153 = 3'h6 == enqPtrVec_1 | _GEN_105; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_154 = 3'h7 == enqPtrVec_1 | _GEN_106; // @[Repeater.scala 239:{25,25}]
  wire [26:0] _GEN_155 = 3'h0 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_107; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_156 = 3'h1 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_108; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_157 = 3'h2 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_109; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_158 = 3'h3 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_110; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_159 = 3'h4 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_111; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_160 = 3'h5 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_112; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_161 = 3'h6 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_113; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_162 = 3'h7 == enqPtrVec_1 ? tlb_req_1_bits_rvpn : _GEN_114; // @[Repeater.scala 240:{27,27}]
  wire  _GEN_163 = 3'h0 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_115; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_164 = 3'h1 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_116; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_165 = 3'h2 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_117; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_166 = 3'h3 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_118; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_167 = 3'h4 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_119; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_168 = 3'h5 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_120; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_169 = 3'h6 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_121; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_170 = 3'h7 == enqPtrVec_1 ? filter_ports_1[0] : _GEN_122; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_171 = 3'h0 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_123; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_172 = 3'h1 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_124; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_173 = 3'h2 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_125; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_174 = 3'h3 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_126; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_175 = 3'h4 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_127; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_176 = 3'h5 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_128; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_177 = 3'h6 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_129; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_178 = 3'h7 == enqPtrVec_1 ? filter_ports_1[1] : _GEN_130; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_179 = 3'h0 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_131; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_180 = 3'h1 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_132; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_181 = 3'h2 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_133; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_182 = 3'h3 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_134; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_183 = 3'h4 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_135; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_184 = 3'h5 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_136; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_185 = 3'h6 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_137; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_186 = 3'h7 == enqPtrVec_1 ? filter_ports_1[2] : _GEN_138; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_187 = 3'h0 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_139; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_188 = 3'h1 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_140; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_189 = 3'h2 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_141; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_190 = 3'h3 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_142; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_191 = 3'h4 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_143; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_192 = 3'h5 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_144; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_193 = 3'h6 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_145; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_194 = 3'h7 == enqPtrVec_1 ? filter_ports_1[3] : _GEN_146; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_195 = reqs_1_valid & canEnqueue ? _GEN_147 : _GEN_99; // @[Repeater.scala 238:38]
  wire  _GEN_196 = reqs_1_valid & canEnqueue ? _GEN_148 : _GEN_100; // @[Repeater.scala 238:38]
  wire  _GEN_197 = reqs_1_valid & canEnqueue ? _GEN_149 : _GEN_101; // @[Repeater.scala 238:38]
  wire  _GEN_198 = reqs_1_valid & canEnqueue ? _GEN_150 : _GEN_102; // @[Repeater.scala 238:38]
  wire  _GEN_199 = reqs_1_valid & canEnqueue ? _GEN_151 : _GEN_103; // @[Repeater.scala 238:38]
  wire  _GEN_200 = reqs_1_valid & canEnqueue ? _GEN_152 : _GEN_104; // @[Repeater.scala 238:38]
  wire  _GEN_201 = reqs_1_valid & canEnqueue ? _GEN_153 : _GEN_105; // @[Repeater.scala 238:38]
  wire  _GEN_202 = reqs_1_valid & canEnqueue ? _GEN_154 : _GEN_106; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_203 = reqs_1_valid & canEnqueue ? _GEN_155 : _GEN_107; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_204 = reqs_1_valid & canEnqueue ? _GEN_156 : _GEN_108; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_205 = reqs_1_valid & canEnqueue ? _GEN_157 : _GEN_109; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_206 = reqs_1_valid & canEnqueue ? _GEN_158 : _GEN_110; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_207 = reqs_1_valid & canEnqueue ? _GEN_159 : _GEN_111; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_208 = reqs_1_valid & canEnqueue ? _GEN_160 : _GEN_112; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_209 = reqs_1_valid & canEnqueue ? _GEN_161 : _GEN_113; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_210 = reqs_1_valid & canEnqueue ? _GEN_162 : _GEN_114; // @[Repeater.scala 238:38]
  wire  _GEN_211 = reqs_1_valid & canEnqueue ? _GEN_163 : _GEN_115; // @[Repeater.scala 238:38]
  wire  _GEN_212 = reqs_1_valid & canEnqueue ? _GEN_164 : _GEN_116; // @[Repeater.scala 238:38]
  wire  _GEN_213 = reqs_1_valid & canEnqueue ? _GEN_165 : _GEN_117; // @[Repeater.scala 238:38]
  wire  _GEN_214 = reqs_1_valid & canEnqueue ? _GEN_166 : _GEN_118; // @[Repeater.scala 238:38]
  wire  _GEN_215 = reqs_1_valid & canEnqueue ? _GEN_167 : _GEN_119; // @[Repeater.scala 238:38]
  wire  _GEN_216 = reqs_1_valid & canEnqueue ? _GEN_168 : _GEN_120; // @[Repeater.scala 238:38]
  wire  _GEN_217 = reqs_1_valid & canEnqueue ? _GEN_169 : _GEN_121; // @[Repeater.scala 238:38]
  wire  _GEN_218 = reqs_1_valid & canEnqueue ? _GEN_170 : _GEN_122; // @[Repeater.scala 238:38]
  wire  _GEN_219 = reqs_1_valid & canEnqueue ? _GEN_171 : _GEN_123; // @[Repeater.scala 238:38]
  wire  _GEN_220 = reqs_1_valid & canEnqueue ? _GEN_172 : _GEN_124; // @[Repeater.scala 238:38]
  wire  _GEN_221 = reqs_1_valid & canEnqueue ? _GEN_173 : _GEN_125; // @[Repeater.scala 238:38]
  wire  _GEN_222 = reqs_1_valid & canEnqueue ? _GEN_174 : _GEN_126; // @[Repeater.scala 238:38]
  wire  _GEN_223 = reqs_1_valid & canEnqueue ? _GEN_175 : _GEN_127; // @[Repeater.scala 238:38]
  wire  _GEN_224 = reqs_1_valid & canEnqueue ? _GEN_176 : _GEN_128; // @[Repeater.scala 238:38]
  wire  _GEN_225 = reqs_1_valid & canEnqueue ? _GEN_177 : _GEN_129; // @[Repeater.scala 238:38]
  wire  _GEN_226 = reqs_1_valid & canEnqueue ? _GEN_178 : _GEN_130; // @[Repeater.scala 238:38]
  wire  _GEN_227 = reqs_1_valid & canEnqueue ? _GEN_179 : _GEN_131; // @[Repeater.scala 238:38]
  wire  _GEN_228 = reqs_1_valid & canEnqueue ? _GEN_180 : _GEN_132; // @[Repeater.scala 238:38]
  wire  _GEN_229 = reqs_1_valid & canEnqueue ? _GEN_181 : _GEN_133; // @[Repeater.scala 238:38]
  wire  _GEN_230 = reqs_1_valid & canEnqueue ? _GEN_182 : _GEN_134; // @[Repeater.scala 238:38]
  wire  _GEN_231 = reqs_1_valid & canEnqueue ? _GEN_183 : _GEN_135; // @[Repeater.scala 238:38]
  wire  _GEN_232 = reqs_1_valid & canEnqueue ? _GEN_184 : _GEN_136; // @[Repeater.scala 238:38]
  wire  _GEN_233 = reqs_1_valid & canEnqueue ? _GEN_185 : _GEN_137; // @[Repeater.scala 238:38]
  wire  _GEN_234 = reqs_1_valid & canEnqueue ? _GEN_186 : _GEN_138; // @[Repeater.scala 238:38]
  wire  _GEN_235 = reqs_1_valid & canEnqueue ? _GEN_187 : _GEN_139; // @[Repeater.scala 238:38]
  wire  _GEN_236 = reqs_1_valid & canEnqueue ? _GEN_188 : _GEN_140; // @[Repeater.scala 238:38]
  wire  _GEN_237 = reqs_1_valid & canEnqueue ? _GEN_189 : _GEN_141; // @[Repeater.scala 238:38]
  wire  _GEN_238 = reqs_1_valid & canEnqueue ? _GEN_190 : _GEN_142; // @[Repeater.scala 238:38]
  wire  _GEN_239 = reqs_1_valid & canEnqueue ? _GEN_191 : _GEN_143; // @[Repeater.scala 238:38]
  wire  _GEN_240 = reqs_1_valid & canEnqueue ? _GEN_192 : _GEN_144; // @[Repeater.scala 238:38]
  wire  _GEN_241 = reqs_1_valid & canEnqueue ? _GEN_193 : _GEN_145; // @[Repeater.scala 238:38]
  wire  _GEN_242 = reqs_1_valid & canEnqueue ? _GEN_194 : _GEN_146; // @[Repeater.scala 238:38]
  wire  _GEN_243 = 3'h0 == enqPtrVec_2 | _GEN_195; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_244 = 3'h1 == enqPtrVec_2 | _GEN_196; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_245 = 3'h2 == enqPtrVec_2 | _GEN_197; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_246 = 3'h3 == enqPtrVec_2 | _GEN_198; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_247 = 3'h4 == enqPtrVec_2 | _GEN_199; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_248 = 3'h5 == enqPtrVec_2 | _GEN_200; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_249 = 3'h6 == enqPtrVec_2 | _GEN_201; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_250 = 3'h7 == enqPtrVec_2 | _GEN_202; // @[Repeater.scala 239:{25,25}]
  wire [26:0] _GEN_251 = 3'h0 == enqPtrVec_2 ? tlb_req_2_bits_rvpn : _GEN_203; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_252 = 3'h1 == enqPtrVec_2 ? tlb_req_2_bits_rvpn : _GEN_204; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_253 = 3'h2 == enqPtrVec_2 ? tlb_req_2_bits_rvpn : _GEN_205; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_254 = 3'h3 == enqPtrVec_2 ? tlb_req_2_bits_rvpn : _GEN_206; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_255 = 3'h4 == enqPtrVec_2 ? tlb_req_2_bits_rvpn : _GEN_207; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_256 = 3'h5 == enqPtrVec_2 ? tlb_req_2_bits_rvpn : _GEN_208; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_257 = 3'h6 == enqPtrVec_2 ? tlb_req_2_bits_rvpn : _GEN_209; // @[Repeater.scala 240:{27,27}]
  wire [26:0] _GEN_258 = 3'h7 == enqPtrVec_2 ? tlb_req_2_bits_rvpn : _GEN_210; // @[Repeater.scala 240:{27,27}]
  wire  _GEN_259 = 3'h0 == enqPtrVec_2 ? filter_ports_2[0] : _GEN_211; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_260 = 3'h1 == enqPtrVec_2 ? filter_ports_2[0] : _GEN_212; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_261 = 3'h2 == enqPtrVec_2 ? filter_ports_2[0] : _GEN_213; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_262 = 3'h3 == enqPtrVec_2 ? filter_ports_2[0] : _GEN_214; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_263 = 3'h4 == enqPtrVec_2 ? filter_ports_2[0] : _GEN_215; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_264 = 3'h5 == enqPtrVec_2 ? filter_ports_2[0] : _GEN_216; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_265 = 3'h6 == enqPtrVec_2 ? filter_ports_2[0] : _GEN_217; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_266 = 3'h7 == enqPtrVec_2 ? filter_ports_2[0] : _GEN_218; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_267 = 3'h0 == enqPtrVec_2 ? filter_ports_2[1] : _GEN_219; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_268 = 3'h1 == enqPtrVec_2 ? filter_ports_2[1] : _GEN_220; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_269 = 3'h2 == enqPtrVec_2 ? filter_ports_2[1] : _GEN_221; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_270 = 3'h3 == enqPtrVec_2 ? filter_ports_2[1] : _GEN_222; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_271 = 3'h4 == enqPtrVec_2 ? filter_ports_2[1] : _GEN_223; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_272 = 3'h5 == enqPtrVec_2 ? filter_ports_2[1] : _GEN_224; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_273 = 3'h6 == enqPtrVec_2 ? filter_ports_2[1] : _GEN_225; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_274 = 3'h7 == enqPtrVec_2 ? filter_ports_2[1] : _GEN_226; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_275 = 3'h0 == enqPtrVec_2 ? filter_ports_2[2] : _GEN_227; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_276 = 3'h1 == enqPtrVec_2 ? filter_ports_2[2] : _GEN_228; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_277 = 3'h2 == enqPtrVec_2 ? filter_ports_2[2] : _GEN_229; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_278 = 3'h3 == enqPtrVec_2 ? filter_ports_2[2] : _GEN_230; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_279 = 3'h4 == enqPtrVec_2 ? filter_ports_2[2] : _GEN_231; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_280 = 3'h5 == enqPtrVec_2 ? filter_ports_2[2] : _GEN_232; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_281 = 3'h6 == enqPtrVec_2 ? filter_ports_2[2] : _GEN_233; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_282 = 3'h7 == enqPtrVec_2 ? filter_ports_2[2] : _GEN_234; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_283 = 3'h0 == enqPtrVec_2 ? filter_ports_2[3] : _GEN_235; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_284 = 3'h1 == enqPtrVec_2 ? filter_ports_2[3] : _GEN_236; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_285 = 3'h2 == enqPtrVec_2 ? filter_ports_2[3] : _GEN_237; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_286 = 3'h3 == enqPtrVec_2 ? filter_ports_2[3] : _GEN_238; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_287 = 3'h4 == enqPtrVec_2 ? filter_ports_2[3] : _GEN_239; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_288 = 3'h5 == enqPtrVec_2 ? filter_ports_2[3] : _GEN_240; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_289 = 3'h6 == enqPtrVec_2 ? filter_ports_2[3] : _GEN_241; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_290 = 3'h7 == enqPtrVec_2 ? filter_ports_2[3] : _GEN_242; // @[Repeater.scala 241:{29,29}]
  wire  _GEN_291 = reqs_2_valid & canEnqueue ? _GEN_243 : _GEN_195; // @[Repeater.scala 238:38]
  wire  _GEN_292 = reqs_2_valid & canEnqueue ? _GEN_244 : _GEN_196; // @[Repeater.scala 238:38]
  wire  _GEN_293 = reqs_2_valid & canEnqueue ? _GEN_245 : _GEN_197; // @[Repeater.scala 238:38]
  wire  _GEN_294 = reqs_2_valid & canEnqueue ? _GEN_246 : _GEN_198; // @[Repeater.scala 238:38]
  wire  _GEN_295 = reqs_2_valid & canEnqueue ? _GEN_247 : _GEN_199; // @[Repeater.scala 238:38]
  wire  _GEN_296 = reqs_2_valid & canEnqueue ? _GEN_248 : _GEN_200; // @[Repeater.scala 238:38]
  wire  _GEN_297 = reqs_2_valid & canEnqueue ? _GEN_249 : _GEN_201; // @[Repeater.scala 238:38]
  wire  _GEN_298 = reqs_2_valid & canEnqueue ? _GEN_250 : _GEN_202; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_299 = reqs_2_valid & canEnqueue ? _GEN_251 : _GEN_203; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_300 = reqs_2_valid & canEnqueue ? _GEN_252 : _GEN_204; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_301 = reqs_2_valid & canEnqueue ? _GEN_253 : _GEN_205; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_302 = reqs_2_valid & canEnqueue ? _GEN_254 : _GEN_206; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_303 = reqs_2_valid & canEnqueue ? _GEN_255 : _GEN_207; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_304 = reqs_2_valid & canEnqueue ? _GEN_256 : _GEN_208; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_305 = reqs_2_valid & canEnqueue ? _GEN_257 : _GEN_209; // @[Repeater.scala 238:38]
  wire [26:0] _GEN_306 = reqs_2_valid & canEnqueue ? _GEN_258 : _GEN_210; // @[Repeater.scala 238:38]
  wire  _GEN_307 = reqs_2_valid & canEnqueue ? _GEN_259 : _GEN_211; // @[Repeater.scala 238:38]
  wire  _GEN_308 = reqs_2_valid & canEnqueue ? _GEN_260 : _GEN_212; // @[Repeater.scala 238:38]
  wire  _GEN_309 = reqs_2_valid & canEnqueue ? _GEN_261 : _GEN_213; // @[Repeater.scala 238:38]
  wire  _GEN_310 = reqs_2_valid & canEnqueue ? _GEN_262 : _GEN_214; // @[Repeater.scala 238:38]
  wire  _GEN_311 = reqs_2_valid & canEnqueue ? _GEN_263 : _GEN_215; // @[Repeater.scala 238:38]
  wire  _GEN_312 = reqs_2_valid & canEnqueue ? _GEN_264 : _GEN_216; // @[Repeater.scala 238:38]
  wire  _GEN_313 = reqs_2_valid & canEnqueue ? _GEN_265 : _GEN_217; // @[Repeater.scala 238:38]
  wire  _GEN_314 = reqs_2_valid & canEnqueue ? _GEN_266 : _GEN_218; // @[Repeater.scala 238:38]
  wire  _GEN_315 = reqs_2_valid & canEnqueue ? _GEN_267 : _GEN_219; // @[Repeater.scala 238:38]
  wire  _GEN_316 = reqs_2_valid & canEnqueue ? _GEN_268 : _GEN_220; // @[Repeater.scala 238:38]
  wire  _GEN_317 = reqs_2_valid & canEnqueue ? _GEN_269 : _GEN_221; // @[Repeater.scala 238:38]
  wire  _GEN_318 = reqs_2_valid & canEnqueue ? _GEN_270 : _GEN_222; // @[Repeater.scala 238:38]
  wire  _GEN_319 = reqs_2_valid & canEnqueue ? _GEN_271 : _GEN_223; // @[Repeater.scala 238:38]
  wire  _GEN_320 = reqs_2_valid & canEnqueue ? _GEN_272 : _GEN_224; // @[Repeater.scala 238:38]
  wire  _GEN_321 = reqs_2_valid & canEnqueue ? _GEN_273 : _GEN_225; // @[Repeater.scala 238:38]
  wire  _GEN_322 = reqs_2_valid & canEnqueue ? _GEN_274 : _GEN_226; // @[Repeater.scala 238:38]
  wire  _GEN_323 = reqs_2_valid & canEnqueue ? _GEN_275 : _GEN_227; // @[Repeater.scala 238:38]
  wire  _GEN_324 = reqs_2_valid & canEnqueue ? _GEN_276 : _GEN_228; // @[Repeater.scala 238:38]
  wire  _GEN_325 = reqs_2_valid & canEnqueue ? _GEN_277 : _GEN_229; // @[Repeater.scala 238:38]
  wire  _GEN_326 = reqs_2_valid & canEnqueue ? _GEN_278 : _GEN_230; // @[Repeater.scala 238:38]
  wire  _GEN_327 = reqs_2_valid & canEnqueue ? _GEN_279 : _GEN_231; // @[Repeater.scala 238:38]
  wire  _GEN_328 = reqs_2_valid & canEnqueue ? _GEN_280 : _GEN_232; // @[Repeater.scala 238:38]
  wire  _GEN_329 = reqs_2_valid & canEnqueue ? _GEN_281 : _GEN_233; // @[Repeater.scala 238:38]
  wire  _GEN_330 = reqs_2_valid & canEnqueue ? _GEN_282 : _GEN_234; // @[Repeater.scala 238:38]
  wire  _GEN_331 = reqs_2_valid & canEnqueue ? _GEN_283 : _GEN_235; // @[Repeater.scala 238:38]
  wire  _GEN_332 = reqs_2_valid & canEnqueue ? _GEN_284 : _GEN_236; // @[Repeater.scala 238:38]
  wire  _GEN_333 = reqs_2_valid & canEnqueue ? _GEN_285 : _GEN_237; // @[Repeater.scala 238:38]
  wire  _GEN_334 = reqs_2_valid & canEnqueue ? _GEN_286 : _GEN_238; // @[Repeater.scala 238:38]
  wire  _GEN_335 = reqs_2_valid & canEnqueue ? _GEN_287 : _GEN_239; // @[Repeater.scala 238:38]
  wire  _GEN_336 = reqs_2_valid & canEnqueue ? _GEN_288 : _GEN_240; // @[Repeater.scala 238:38]
  wire  _GEN_337 = reqs_2_valid & canEnqueue ? _GEN_289 : _GEN_241; // @[Repeater.scala 238:38]
  wire  _GEN_338 = reqs_2_valid & canEnqueue ? _GEN_290 : _GEN_242; // @[Repeater.scala 238:38]
  wire  _GEN_339 = 3'h0 == enqPtrVec_3 | _GEN_291; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_340 = 3'h1 == enqPtrVec_3 | _GEN_292; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_341 = 3'h2 == enqPtrVec_3 | _GEN_293; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_342 = 3'h3 == enqPtrVec_3 | _GEN_294; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_343 = 3'h4 == enqPtrVec_3 | _GEN_295; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_344 = 3'h5 == enqPtrVec_3 | _GEN_296; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_345 = 3'h6 == enqPtrVec_3 | _GEN_297; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_346 = 3'h7 == enqPtrVec_3 | _GEN_298; // @[Repeater.scala 239:{25,25}]
  wire  _GEN_387 = reqs_3_valid & canEnqueue ? _GEN_339 : _GEN_291; // @[Repeater.scala 238:38]
  wire  _GEN_388 = reqs_3_valid & canEnqueue ? _GEN_340 : _GEN_292; // @[Repeater.scala 238:38]
  wire  _GEN_389 = reqs_3_valid & canEnqueue ? _GEN_341 : _GEN_293; // @[Repeater.scala 238:38]
  wire  _GEN_390 = reqs_3_valid & canEnqueue ? _GEN_342 : _GEN_294; // @[Repeater.scala 238:38]
  wire  _GEN_391 = reqs_3_valid & canEnqueue ? _GEN_343 : _GEN_295; // @[Repeater.scala 238:38]
  wire  _GEN_392 = reqs_3_valid & canEnqueue ? _GEN_344 : _GEN_296; // @[Repeater.scala 238:38]
  wire  _GEN_393 = reqs_3_valid & canEnqueue ? _GEN_345 : _GEN_297; // @[Repeater.scala 238:38]
  wire  _GEN_394 = reqs_3_valid & canEnqueue ? _GEN_346 : _GEN_298; // @[Repeater.scala 238:38]
  wire [3:0] _do_enq_T = {reqs_0_valid,reqs_1_valid,reqs_2_valid,reqs_3_valid}; // @[Cat.scala 31:58]
  wire  do_enq = canEnqueue & |_do_enq_T; // @[Repeater.scala 250:27]
  wire  _GEN_468 = 3'h1 == deqPtr ? v_1 : v_0; // @[Repeater.scala 251:{17,17}]
  wire  _GEN_469 = 3'h2 == deqPtr ? v_2 : _GEN_468; // @[Repeater.scala 251:{17,17}]
  wire  _GEN_470 = 3'h3 == deqPtr ? v_3 : _GEN_469; // @[Repeater.scala 251:{17,17}]
  wire  _GEN_471 = 3'h4 == deqPtr ? v_4 : _GEN_470; // @[Repeater.scala 251:{17,17}]
  wire  _GEN_472 = 3'h5 == deqPtr ? v_5 : _GEN_471; // @[Repeater.scala 251:{17,17}]
  wire  _GEN_473 = 3'h6 == deqPtr ? v_6 : _GEN_472; // @[Repeater.scala 251:{17,17}]
  wire  _GEN_474 = 3'h7 == deqPtr ? v_7 : _GEN_473; // @[Repeater.scala 251:{17,17}]
  wire  do_deq = ~_GEN_474 & ~isEmptyDeq; // @[Repeater.scala 251:28]
  wire  do_iss = issue_fire_fake | ~_GEN_42 & _issue_valid_T; // @[Repeater.scala 252:32]
  wire [2:0] _enqPtr_T_1 = enqPtr + enqNum; // @[Repeater.scala 254:22]
  wire [2:0] _deqPtr_T_1 = deqPtr + 3'h1; // @[Repeater.scala 257:22]
  wire [2:0] _issPtr_T_1 = issPtr + 3'h1; // @[Repeater.scala 260:22]
  wire  _GEN_478 = 3'h0 == issPtr ? 1'h0 : _GEN_387; // @[Repeater.scala 263:{15,15}]
  wire  _GEN_479 = 3'h1 == issPtr ? 1'h0 : _GEN_388; // @[Repeater.scala 263:{15,15}]
  wire  _GEN_480 = 3'h2 == issPtr ? 1'h0 : _GEN_389; // @[Repeater.scala 263:{15,15}]
  wire  _GEN_481 = 3'h3 == issPtr ? 1'h0 : _GEN_390; // @[Repeater.scala 263:{15,15}]
  wire  _GEN_482 = 3'h4 == issPtr ? 1'h0 : _GEN_391; // @[Repeater.scala 263:{15,15}]
  wire  _GEN_483 = 3'h5 == issPtr ? 1'h0 : _GEN_392; // @[Repeater.scala 263:{15,15}]
  wire  _GEN_484 = 3'h6 == issPtr ? 1'h0 : _GEN_393; // @[Repeater.scala 263:{15,15}]
  wire  _GEN_485 = 3'h7 == issPtr ? 1'h0 : _GEN_394; // @[Repeater.scala 263:{15,15}]
  wire  _GEN_486 = issue_fire_fake & issue_filtered ? _GEN_478 : _GEN_387; // @[Repeater.scala 262:44]
  wire  _GEN_487 = issue_fire_fake & issue_filtered ? _GEN_479 : _GEN_388; // @[Repeater.scala 262:44]
  wire  _GEN_488 = issue_fire_fake & issue_filtered ? _GEN_480 : _GEN_389; // @[Repeater.scala 262:44]
  wire  _GEN_489 = issue_fire_fake & issue_filtered ? _GEN_481 : _GEN_390; // @[Repeater.scala 262:44]
  wire  _GEN_490 = issue_fire_fake & issue_filtered ? _GEN_482 : _GEN_391; // @[Repeater.scala 262:44]
  wire  _GEN_491 = issue_fire_fake & issue_filtered ? _GEN_483 : _GEN_392; // @[Repeater.scala 262:44]
  wire  _GEN_492 = issue_fire_fake & issue_filtered ? _GEN_484 : _GEN_393; // @[Repeater.scala 262:44]
  wire  _GEN_493 = issue_fire_fake & issue_filtered ? _GEN_485 : _GEN_394; // @[Repeater.scala 262:44]
  wire [3:0] _GEN_573 = {{3'd0}, do_deq}; // @[Repeater.scala 276:22]
  wire [3:0] _counter_T_1 = counter - _GEN_573; // @[Repeater.scala 276:22]
  wire [2:0] _counter_T_2 = do_enq ? enqNum : 3'h0; // @[Repeater.scala 276:36]
  wire [3:0] _GEN_574 = {{1'd0}, _counter_T_2}; // @[Repeater.scala 276:31]
  wire [3:0] _counter_T_4 = _counter_T_1 + _GEN_574; // @[Repeater.scala 276:31]
  DelayN_31 flush_delay ( // @[Hold.scala 94:23]
    .clock(flush_delay_clock),
    .io_in(flush_delay_io_in),
    .io_out(flush_delay_io_out)
  );
  assign io_tlb_resp_valid = ptwResp_valid; // @[Repeater.scala 225:21]
  assign io_tlb_resp_bits_data_entry_tag = ptwResp_entry_tag; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_data_entry_ppn = ptwResp_entry_ppn; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_data_entry_perm_d = ptwResp_entry_perm_d; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_data_entry_perm_a = ptwResp_entry_perm_a; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_data_entry_perm_g = ptwResp_entry_perm_g; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_data_entry_perm_u = ptwResp_entry_perm_u; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_data_entry_perm_x = ptwResp_entry_perm_x; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_data_entry_perm_w = ptwResp_entry_perm_w; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_data_entry_perm_r = ptwResp_entry_perm_r; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_data_entry_level = ptwResp_entry_level; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_data_pf = ptwResp_pf; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_data_af = ptwResp_af; // @[Repeater.scala 226:25]
  assign io_tlb_resp_bits_vector_0 = resp_vector_0; // @[Repeater.scala 227:27]
  assign io_tlb_resp_bits_vector_1 = resp_vector_1; // @[Repeater.scala 227:27]
  assign io_tlb_resp_bits_vector_2 = resp_vector_2; // @[Repeater.scala 227:27]
  assign io_tlb_resp_bits_vector_3 = resp_vector_3; // @[Repeater.scala 227:27]
  assign io_ptw_req_0_valid = issue_valid & ~issue_filtered; // @[Repeater.scala 232:38]
  assign io_ptw_req_0_bits_vpn = 3'h7 == issPtr ? vpn_7 : _GEN_49; // @[Repeater.scala 233:{26,26}]
  assign io_ptw_resp_ready = 1'h1; // @[Repeater.scala 234:21]
  assign flush_delay_clock = clock;
  assign flush_delay_io_in = io_sfence_valid | io_csr_satp_changed; // @[Repeater.scala 164:38]
  always @(posedge clock) begin
    if (reset) begin // @[Repeater.scala 154:18]
      v_0 <= 1'h0; // @[Repeater.scala 154:18]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      v_0 <= 1'h0; // @[Repeater.scala 287:13]
    end else if (_ptwResp_T) begin // @[Repeater.scala 272:29]
      if (ptwResp_OldMatchVec_0) begin // @[Repeater.scala 273:64]
        v_0 <= 1'h0; // @[Repeater.scala 273:69]
      end else begin
        v_0 <= _GEN_486;
      end
    end else begin
      v_0 <= _GEN_486;
    end
    if (reset) begin // @[Repeater.scala 154:18]
      v_1 <= 1'h0; // @[Repeater.scala 154:18]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      v_1 <= 1'h0; // @[Repeater.scala 287:13]
    end else if (_ptwResp_T) begin // @[Repeater.scala 272:29]
      if (ptwResp_OldMatchVec_1) begin // @[Repeater.scala 273:64]
        v_1 <= 1'h0; // @[Repeater.scala 273:69]
      end else begin
        v_1 <= _GEN_487;
      end
    end else begin
      v_1 <= _GEN_487;
    end
    if (reset) begin // @[Repeater.scala 154:18]
      v_2 <= 1'h0; // @[Repeater.scala 154:18]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      v_2 <= 1'h0; // @[Repeater.scala 287:13]
    end else if (_ptwResp_T) begin // @[Repeater.scala 272:29]
      if (ptwResp_OldMatchVec_2) begin // @[Repeater.scala 273:64]
        v_2 <= 1'h0; // @[Repeater.scala 273:69]
      end else begin
        v_2 <= _GEN_488;
      end
    end else begin
      v_2 <= _GEN_488;
    end
    if (reset) begin // @[Repeater.scala 154:18]
      v_3 <= 1'h0; // @[Repeater.scala 154:18]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      v_3 <= 1'h0; // @[Repeater.scala 287:13]
    end else if (_ptwResp_T) begin // @[Repeater.scala 272:29]
      if (ptwResp_OldMatchVec_3) begin // @[Repeater.scala 273:64]
        v_3 <= 1'h0; // @[Repeater.scala 273:69]
      end else begin
        v_3 <= _GEN_489;
      end
    end else begin
      v_3 <= _GEN_489;
    end
    if (reset) begin // @[Repeater.scala 154:18]
      v_4 <= 1'h0; // @[Repeater.scala 154:18]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      v_4 <= 1'h0; // @[Repeater.scala 287:13]
    end else if (_ptwResp_T) begin // @[Repeater.scala 272:29]
      if (ptwResp_OldMatchVec_4) begin // @[Repeater.scala 273:64]
        v_4 <= 1'h0; // @[Repeater.scala 273:69]
      end else begin
        v_4 <= _GEN_490;
      end
    end else begin
      v_4 <= _GEN_490;
    end
    if (reset) begin // @[Repeater.scala 154:18]
      v_5 <= 1'h0; // @[Repeater.scala 154:18]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      v_5 <= 1'h0; // @[Repeater.scala 287:13]
    end else if (_ptwResp_T) begin // @[Repeater.scala 272:29]
      if (ptwResp_OldMatchVec_5) begin // @[Repeater.scala 273:64]
        v_5 <= 1'h0; // @[Repeater.scala 273:69]
      end else begin
        v_5 <= _GEN_491;
      end
    end else begin
      v_5 <= _GEN_491;
    end
    if (reset) begin // @[Repeater.scala 154:18]
      v_6 <= 1'h0; // @[Repeater.scala 154:18]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      v_6 <= 1'h0; // @[Repeater.scala 287:13]
    end else if (_ptwResp_T) begin // @[Repeater.scala 272:29]
      if (ptwResp_OldMatchVec_6) begin // @[Repeater.scala 273:64]
        v_6 <= 1'h0; // @[Repeater.scala 273:69]
      end else begin
        v_6 <= _GEN_492;
      end
    end else begin
      v_6 <= _GEN_492;
    end
    if (reset) begin // @[Repeater.scala 154:18]
      v_7 <= 1'h0; // @[Repeater.scala 154:18]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      v_7 <= 1'h0; // @[Repeater.scala 287:13]
    end else if (_ptwResp_T) begin // @[Repeater.scala 272:29]
      if (ptwResp_OldMatchVec_7) begin // @[Repeater.scala 273:64]
        v_7 <= 1'h0; // @[Repeater.scala 273:69]
      end else begin
        v_7 <= _GEN_493;
      end
    end else begin
      v_7 <= _GEN_493;
    end
    if (v_0) begin // @[Repeater.scala 245:17]
      ports_0_0 <= ports_0_0 | oldMatchVec2_0_0; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h0 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_0_0 <= filter_ports_3[0]; // @[Repeater.scala 241:29]
      end else begin
        ports_0_0 <= _GEN_307;
      end
    end else begin
      ports_0_0 <= _GEN_307;
    end
    if (v_0) begin // @[Repeater.scala 245:17]
      ports_0_1 <= ports_0_1 | oldMatchVec2_1_0; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h0 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_0_1 <= filter_ports_3[1]; // @[Repeater.scala 241:29]
      end else begin
        ports_0_1 <= _GEN_315;
      end
    end else begin
      ports_0_1 <= _GEN_315;
    end
    if (v_0) begin // @[Repeater.scala 245:17]
      ports_0_2 <= ports_0_2 | oldMatchVec2_2_0; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h0 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_0_2 <= filter_ports_3[2]; // @[Repeater.scala 241:29]
      end else begin
        ports_0_2 <= _GEN_323;
      end
    end else begin
      ports_0_2 <= _GEN_323;
    end
    if (v_0) begin // @[Repeater.scala 245:17]
      ports_0_3 <= ports_0_3 | oldMatchVec2_3_0; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h0 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_0_3 <= filter_ports_3[3]; // @[Repeater.scala 241:29]
      end else begin
        ports_0_3 <= _GEN_331;
      end
    end else begin
      ports_0_3 <= _GEN_331;
    end
    if (v_1) begin // @[Repeater.scala 245:17]
      ports_1_0 <= ports_1_0 | oldMatchVec2_0_1; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h1 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_1_0 <= filter_ports_3[0]; // @[Repeater.scala 241:29]
      end else begin
        ports_1_0 <= _GEN_308;
      end
    end else begin
      ports_1_0 <= _GEN_308;
    end
    if (v_1) begin // @[Repeater.scala 245:17]
      ports_1_1 <= ports_1_1 | oldMatchVec2_1_1; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h1 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_1_1 <= filter_ports_3[1]; // @[Repeater.scala 241:29]
      end else begin
        ports_1_1 <= _GEN_316;
      end
    end else begin
      ports_1_1 <= _GEN_316;
    end
    if (v_1) begin // @[Repeater.scala 245:17]
      ports_1_2 <= ports_1_2 | oldMatchVec2_2_1; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h1 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_1_2 <= filter_ports_3[2]; // @[Repeater.scala 241:29]
      end else begin
        ports_1_2 <= _GEN_324;
      end
    end else begin
      ports_1_2 <= _GEN_324;
    end
    if (v_1) begin // @[Repeater.scala 245:17]
      ports_1_3 <= ports_1_3 | oldMatchVec2_3_1; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h1 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_1_3 <= filter_ports_3[3]; // @[Repeater.scala 241:29]
      end else begin
        ports_1_3 <= _GEN_332;
      end
    end else begin
      ports_1_3 <= _GEN_332;
    end
    if (v_2) begin // @[Repeater.scala 245:17]
      ports_2_0 <= ports_2_0 | oldMatchVec2_0_2; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h2 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_2_0 <= filter_ports_3[0]; // @[Repeater.scala 241:29]
      end else begin
        ports_2_0 <= _GEN_309;
      end
    end else begin
      ports_2_0 <= _GEN_309;
    end
    if (v_2) begin // @[Repeater.scala 245:17]
      ports_2_1 <= ports_2_1 | oldMatchVec2_1_2; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h2 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_2_1 <= filter_ports_3[1]; // @[Repeater.scala 241:29]
      end else begin
        ports_2_1 <= _GEN_317;
      end
    end else begin
      ports_2_1 <= _GEN_317;
    end
    if (v_2) begin // @[Repeater.scala 245:17]
      ports_2_2 <= ports_2_2 | oldMatchVec2_2_2; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h2 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_2_2 <= filter_ports_3[2]; // @[Repeater.scala 241:29]
      end else begin
        ports_2_2 <= _GEN_325;
      end
    end else begin
      ports_2_2 <= _GEN_325;
    end
    if (v_2) begin // @[Repeater.scala 245:17]
      ports_2_3 <= ports_2_3 | oldMatchVec2_3_2; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h2 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_2_3 <= filter_ports_3[3]; // @[Repeater.scala 241:29]
      end else begin
        ports_2_3 <= _GEN_333;
      end
    end else begin
      ports_2_3 <= _GEN_333;
    end
    if (v_3) begin // @[Repeater.scala 245:17]
      ports_3_0 <= ports_3_0 | oldMatchVec2_0_3; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h3 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_3_0 <= filter_ports_3[0]; // @[Repeater.scala 241:29]
      end else begin
        ports_3_0 <= _GEN_310;
      end
    end else begin
      ports_3_0 <= _GEN_310;
    end
    if (v_3) begin // @[Repeater.scala 245:17]
      ports_3_1 <= ports_3_1 | oldMatchVec2_1_3; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h3 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_3_1 <= filter_ports_3[1]; // @[Repeater.scala 241:29]
      end else begin
        ports_3_1 <= _GEN_318;
      end
    end else begin
      ports_3_1 <= _GEN_318;
    end
    if (v_3) begin // @[Repeater.scala 245:17]
      ports_3_2 <= ports_3_2 | oldMatchVec2_2_3; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h3 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_3_2 <= filter_ports_3[2]; // @[Repeater.scala 241:29]
      end else begin
        ports_3_2 <= _GEN_326;
      end
    end else begin
      ports_3_2 <= _GEN_326;
    end
    if (v_3) begin // @[Repeater.scala 245:17]
      ports_3_3 <= ports_3_3 | oldMatchVec2_3_3; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h3 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_3_3 <= filter_ports_3[3]; // @[Repeater.scala 241:29]
      end else begin
        ports_3_3 <= _GEN_334;
      end
    end else begin
      ports_3_3 <= _GEN_334;
    end
    if (v_4) begin // @[Repeater.scala 245:17]
      ports_4_0 <= ports_4_0 | oldMatchVec2_0_4; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h4 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_4_0 <= filter_ports_3[0]; // @[Repeater.scala 241:29]
      end else begin
        ports_4_0 <= _GEN_311;
      end
    end else begin
      ports_4_0 <= _GEN_311;
    end
    if (v_4) begin // @[Repeater.scala 245:17]
      ports_4_1 <= ports_4_1 | oldMatchVec2_1_4; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h4 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_4_1 <= filter_ports_3[1]; // @[Repeater.scala 241:29]
      end else begin
        ports_4_1 <= _GEN_319;
      end
    end else begin
      ports_4_1 <= _GEN_319;
    end
    if (v_4) begin // @[Repeater.scala 245:17]
      ports_4_2 <= ports_4_2 | oldMatchVec2_2_4; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h4 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_4_2 <= filter_ports_3[2]; // @[Repeater.scala 241:29]
      end else begin
        ports_4_2 <= _GEN_327;
      end
    end else begin
      ports_4_2 <= _GEN_327;
    end
    if (v_4) begin // @[Repeater.scala 245:17]
      ports_4_3 <= ports_4_3 | oldMatchVec2_3_4; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h4 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_4_3 <= filter_ports_3[3]; // @[Repeater.scala 241:29]
      end else begin
        ports_4_3 <= _GEN_335;
      end
    end else begin
      ports_4_3 <= _GEN_335;
    end
    if (v_5) begin // @[Repeater.scala 245:17]
      ports_5_0 <= ports_5_0 | oldMatchVec2_0_5; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h5 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_5_0 <= filter_ports_3[0]; // @[Repeater.scala 241:29]
      end else begin
        ports_5_0 <= _GEN_312;
      end
    end else begin
      ports_5_0 <= _GEN_312;
    end
    if (v_5) begin // @[Repeater.scala 245:17]
      ports_5_1 <= ports_5_1 | oldMatchVec2_1_5; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h5 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_5_1 <= filter_ports_3[1]; // @[Repeater.scala 241:29]
      end else begin
        ports_5_1 <= _GEN_320;
      end
    end else begin
      ports_5_1 <= _GEN_320;
    end
    if (v_5) begin // @[Repeater.scala 245:17]
      ports_5_2 <= ports_5_2 | oldMatchVec2_2_5; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h5 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_5_2 <= filter_ports_3[2]; // @[Repeater.scala 241:29]
      end else begin
        ports_5_2 <= _GEN_328;
      end
    end else begin
      ports_5_2 <= _GEN_328;
    end
    if (v_5) begin // @[Repeater.scala 245:17]
      ports_5_3 <= ports_5_3 | oldMatchVec2_3_5; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h5 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_5_3 <= filter_ports_3[3]; // @[Repeater.scala 241:29]
      end else begin
        ports_5_3 <= _GEN_336;
      end
    end else begin
      ports_5_3 <= _GEN_336;
    end
    if (v_6) begin // @[Repeater.scala 245:17]
      ports_6_0 <= ports_6_0 | oldMatchVec2_0_6; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h6 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_6_0 <= filter_ports_3[0]; // @[Repeater.scala 241:29]
      end else begin
        ports_6_0 <= _GEN_313;
      end
    end else begin
      ports_6_0 <= _GEN_313;
    end
    if (v_6) begin // @[Repeater.scala 245:17]
      ports_6_1 <= ports_6_1 | oldMatchVec2_1_6; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h6 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_6_1 <= filter_ports_3[1]; // @[Repeater.scala 241:29]
      end else begin
        ports_6_1 <= _GEN_321;
      end
    end else begin
      ports_6_1 <= _GEN_321;
    end
    if (v_6) begin // @[Repeater.scala 245:17]
      ports_6_2 <= ports_6_2 | oldMatchVec2_2_6; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h6 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_6_2 <= filter_ports_3[2]; // @[Repeater.scala 241:29]
      end else begin
        ports_6_2 <= _GEN_329;
      end
    end else begin
      ports_6_2 <= _GEN_329;
    end
    if (v_6) begin // @[Repeater.scala 245:17]
      ports_6_3 <= ports_6_3 | oldMatchVec2_3_6; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h6 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_6_3 <= filter_ports_3[3]; // @[Repeater.scala 241:29]
      end else begin
        ports_6_3 <= _GEN_337;
      end
    end else begin
      ports_6_3 <= _GEN_337;
    end
    if (v_7) begin // @[Repeater.scala 245:17]
      ports_7_0 <= ports_7_0 | oldMatchVec2_0_7; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h7 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_7_0 <= filter_ports_3[0]; // @[Repeater.scala 241:29]
      end else begin
        ports_7_0 <= _GEN_314;
      end
    end else begin
      ports_7_0 <= _GEN_314;
    end
    if (v_7) begin // @[Repeater.scala 245:17]
      ports_7_1 <= ports_7_1 | oldMatchVec2_1_7; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h7 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_7_1 <= filter_ports_3[1]; // @[Repeater.scala 241:29]
      end else begin
        ports_7_1 <= _GEN_322;
      end
    end else begin
      ports_7_1 <= _GEN_322;
    end
    if (v_7) begin // @[Repeater.scala 245:17]
      ports_7_2 <= ports_7_2 | oldMatchVec2_2_7; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h7 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_7_2 <= filter_ports_3[2]; // @[Repeater.scala 241:29]
      end else begin
        ports_7_2 <= _GEN_330;
      end
    end else begin
      ports_7_2 <= _GEN_330;
    end
    if (v_7) begin // @[Repeater.scala 245:17]
      ports_7_3 <= ports_7_3 | oldMatchVec2_3_7; // @[Repeater.scala 246:16]
    end else if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h7 == enqPtrVec_3) begin // @[Repeater.scala 241:29]
        ports_7_3 <= filter_ports_3[3]; // @[Repeater.scala 241:29]
      end else begin
        ports_7_3 <= _GEN_338;
      end
    end else begin
      ports_7_3 <= _GEN_338;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h0 == enqPtrVec_3) begin // @[Repeater.scala 240:27]
        vpn_0 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 240:27]
      end else begin
        vpn_0 <= _GEN_299;
      end
    end else begin
      vpn_0 <= _GEN_299;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h1 == enqPtrVec_3) begin // @[Repeater.scala 240:27]
        vpn_1 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 240:27]
      end else begin
        vpn_1 <= _GEN_300;
      end
    end else begin
      vpn_1 <= _GEN_300;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h2 == enqPtrVec_3) begin // @[Repeater.scala 240:27]
        vpn_2 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 240:27]
      end else begin
        vpn_2 <= _GEN_301;
      end
    end else begin
      vpn_2 <= _GEN_301;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h3 == enqPtrVec_3) begin // @[Repeater.scala 240:27]
        vpn_3 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 240:27]
      end else begin
        vpn_3 <= _GEN_302;
      end
    end else begin
      vpn_3 <= _GEN_302;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h4 == enqPtrVec_3) begin // @[Repeater.scala 240:27]
        vpn_4 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 240:27]
      end else begin
        vpn_4 <= _GEN_303;
      end
    end else begin
      vpn_4 <= _GEN_303;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h5 == enqPtrVec_3) begin // @[Repeater.scala 240:27]
        vpn_5 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 240:27]
      end else begin
        vpn_5 <= _GEN_304;
      end
    end else begin
      vpn_5 <= _GEN_304;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h6 == enqPtrVec_3) begin // @[Repeater.scala 240:27]
        vpn_6 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 240:27]
      end else begin
        vpn_6 <= _GEN_305;
      end
    end else begin
      vpn_6 <= _GEN_305;
    end
    if (reqs_3_valid & canEnqueue) begin // @[Repeater.scala 238:38]
      if (3'h7 == enqPtrVec_3) begin // @[Repeater.scala 240:27]
        vpn_7 <= tlb_req_3_bits_rvpn; // @[Repeater.scala 240:27]
      end else begin
        vpn_7 <= _GEN_306;
      end
    end else begin
      vpn_7 <= _GEN_306;
    end
    if (reset) begin // @[Repeater.scala 157:23]
      enqPtr <= 3'h0; // @[Repeater.scala 157:23]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      enqPtr <= 3'h0; // @[Repeater.scala 289:12]
    end else if (do_enq) begin // @[Repeater.scala 253:17]
      enqPtr <= _enqPtr_T_1; // @[Repeater.scala 254:12]
    end
    if (reset) begin // @[Repeater.scala 158:23]
      issPtr <= 3'h0; // @[Repeater.scala 158:23]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      issPtr <= 3'h0; // @[Repeater.scala 290:12]
    end else if (do_iss) begin // @[Repeater.scala 259:17]
      issPtr <= _issPtr_T_1; // @[Repeater.scala 260:12]
    end
    if (reset) begin // @[Repeater.scala 159:23]
      deqPtr <= 3'h0; // @[Repeater.scala 159:23]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      deqPtr <= 3'h0; // @[Repeater.scala 288:12]
    end else if (do_deq) begin // @[Repeater.scala 256:17]
      deqPtr <= _deqPtr_T_1; // @[Repeater.scala 257:12]
    end
    if (reset) begin // @[Repeater.scala 160:27]
      mayFullDeq <= 1'h0; // @[Repeater.scala 160:27]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      mayFullDeq <= 1'h0; // @[Repeater.scala 292:16]
    end else if (do_enq != do_deq) begin // @[Repeater.scala 265:28]
      mayFullDeq <= do_enq; // @[Repeater.scala 266:16]
    end
    if (reset) begin // @[Repeater.scala 161:27]
      mayFullIss <= 1'h0; // @[Repeater.scala 161:27]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      mayFullIss <= 1'h0; // @[Repeater.scala 293:16]
    end else if (do_enq != do_iss) begin // @[Repeater.scala 268:28]
      mayFullIss <= do_enq; // @[Repeater.scala 269:16]
    end
    if (reset) begin // @[Repeater.scala 162:24]
      counter <= 4'h0; // @[Repeater.scala 162:24]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      counter <= 4'h0; // @[Repeater.scala 294:13]
    end else begin
      counter <= _counter_T_4; // @[Repeater.scala 276:11]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_entry_tag <= io_ptw_resp_bits_entry_tag; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_entry_ppn <= io_ptw_resp_bits_entry_ppn; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_d <= io_ptw_resp_bits_entry_perm_d; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_a <= io_ptw_resp_bits_entry_perm_a; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_g <= io_ptw_resp_bits_entry_perm_g; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_u <= io_ptw_resp_bits_entry_perm_u; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_x <= io_ptw_resp_bits_entry_perm_x; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_w <= io_ptw_resp_bits_entry_perm_w; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_entry_perm_r <= io_ptw_resp_bits_entry_perm_r; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_entry_level <= io_ptw_resp_bits_entry_level; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_pf <= io_ptw_resp_bits_pf; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      ptwResp_af <= io_ptw_resp_bits_af; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Repeater.scala 171:30]
      ptwResp_valid <= 1'h0; // @[Repeater.scala 171:30]
    end else if (flush_delay_io_out) begin // @[Repeater.scala 286:16]
      ptwResp_valid <= 1'h0; // @[Repeater.scala 291:19]
    end else begin
      ptwResp_valid <= _ptwResp_T & |_ptwResp_valid_T_1; // @[Repeater.scala 171:30]
    end
    if (io_tlb_req_0_valid) begin // @[Reg.scala 17:18]
      tlb_req_0_bits_rvpn <= io_tlb_req_0_bits_vpn; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Repeater.scala 177:32]
      tlb_req_0_valid_REG <= 1'h0; // @[Repeater.scala 177:32]
    end else begin
      tlb_req_0_valid_REG <= _tlb_req_0_valid_T_14; // @[Repeater.scala 177:32]
    end
    if (io_tlb_req_1_valid) begin // @[Reg.scala 17:18]
      tlb_req_1_bits_rvpn <= io_tlb_req_1_bits_vpn; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Repeater.scala 177:32]
      tlb_req_1_valid_REG <= 1'h0; // @[Repeater.scala 177:32]
    end else begin
      tlb_req_1_valid_REG <= _tlb_req_1_valid_T_14; // @[Repeater.scala 177:32]
    end
    if (io_tlb_req_2_valid) begin // @[Reg.scala 17:18]
      tlb_req_2_bits_rvpn <= io_tlb_req_2_bits_vpn; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Repeater.scala 177:32]
      tlb_req_2_valid_REG <= 1'h0; // @[Repeater.scala 177:32]
    end else begin
      tlb_req_2_valid_REG <= _tlb_req_2_valid_T_14; // @[Repeater.scala 177:32]
    end
    if (io_tlb_req_3_valid) begin // @[Reg.scala 17:18]
      tlb_req_3_bits_rvpn <= io_tlb_req_3_bits_vpn; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Repeater.scala 177:32]
      tlb_req_3_valid_REG <= 1'h0; // @[Repeater.scala 177:32]
    end else begin
      tlb_req_3_valid_REG <= _tlb_req_3_valid_T_14; // @[Repeater.scala 177:32]
    end
    oldMatchVec_0 <= |_oldMatchVec_T; // @[Repeater.scala 184:63]
    oldMatchVec_1 <= |_oldMatchVec_T_2; // @[Repeater.scala 184:63]
    oldMatchVec_2 <= |_oldMatchVec_T_4; // @[Repeater.scala 184:63]
    oldMatchVec_3 <= |_oldMatchVec_T_6; // @[Repeater.scala 184:63]
    newMatchVec_REG_1 <= io_tlb_req_0_bits_vpn == io_tlb_req_1_bits_vpn; // @[Repeater.scala 174:78]
    newMatchVec_REG_2 <= io_tlb_req_0_bits_vpn == io_tlb_req_2_bits_vpn; // @[Repeater.scala 174:78]
    newMatchVec_REG_3 <= io_tlb_req_0_bits_vpn == io_tlb_req_3_bits_vpn; // @[Repeater.scala 174:78]
    newMatchVec_REG_4 <= io_tlb_req_1_bits_vpn == io_tlb_req_0_bits_vpn; // @[Repeater.scala 174:78]
    newMatchVec_REG_6 <= io_tlb_req_1_bits_vpn == io_tlb_req_2_bits_vpn; // @[Repeater.scala 174:78]
    newMatchVec_REG_7 <= io_tlb_req_1_bits_vpn == io_tlb_req_3_bits_vpn; // @[Repeater.scala 174:78]
    newMatchVec_REG_8 <= io_tlb_req_2_bits_vpn == io_tlb_req_0_bits_vpn; // @[Repeater.scala 174:78]
    newMatchVec_REG_9 <= io_tlb_req_2_bits_vpn == io_tlb_req_1_bits_vpn; // @[Repeater.scala 174:78]
    newMatchVec_REG_11 <= io_tlb_req_2_bits_vpn == io_tlb_req_3_bits_vpn; // @[Repeater.scala 174:78]
    newMatchVec_REG_12 <= io_tlb_req_3_bits_vpn == io_tlb_req_0_bits_vpn; // @[Repeater.scala 174:78]
    newMatchVec_REG_13 <= io_tlb_req_3_bits_vpn == io_tlb_req_1_bits_vpn; // @[Repeater.scala 174:78]
    newMatchVec_REG_14 <= io_tlb_req_3_bits_vpn == io_tlb_req_2_bits_vpn; // @[Repeater.scala 174:78]
    oldMatchVec2_REG <= v_0 & vpn_0 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_1 <= v_1 & vpn_1 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_2 <= v_2 & vpn_2 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_3 <= v_3 & vpn_3 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_4 <= v_4 & vpn_4 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_5 <= v_5 & vpn_5 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_6 <= v_6 & vpn_6 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_7 <= v_7 & vpn_7 == io_tlb_req_0_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_8 <= v_0 & vpn_0 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_9 <= v_1 & vpn_1 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_10 <= v_2 & vpn_2 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_11 <= v_3 & vpn_3 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_12 <= v_4 & vpn_4 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_13 <= v_5 & vpn_5 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_14 <= v_6 & vpn_6 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_15 <= v_7 & vpn_7 == io_tlb_req_1_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_16 <= v_0 & vpn_0 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_17 <= v_1 & vpn_1 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_18 <= v_2 & vpn_2 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_19 <= v_3 & vpn_3 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_20 <= v_4 & vpn_4 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_21 <= v_5 & vpn_5 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_22 <= v_6 & vpn_6 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_23 <= v_7 & vpn_7 == io_tlb_req_2_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_24 <= v_0 & vpn_0 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_25 <= v_1 & vpn_1 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_26 <= v_2 & vpn_2 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_27 <= v_3 & vpn_3 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_28 <= v_4 & vpn_4 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_29 <= v_5 & vpn_5 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_30 <= v_6 & vpn_6 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
    oldMatchVec2_REG_31 <= v_7 & vpn_7 == io_tlb_req_3_bits_vpn; // @[Repeater.scala 172:83]
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      resp_vector_0 <= _resp_vector_T_44[0]; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      resp_vector_1 <= _resp_vector_T_44[1]; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      resp_vector_2 <= _resp_vector_T_44[2]; // @[Reg.scala 17:22]
    end
    if (_ptwResp_T) begin // @[Reg.scala 17:18]
      resp_vector_3 <= _resp_vector_T_44[3]; // @[Reg.scala 17:22]
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
  ports_0_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  ports_0_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  ports_0_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  ports_0_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  ports_1_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  ports_1_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  ports_1_2 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  ports_1_3 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  ports_2_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  ports_2_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  ports_2_2 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  ports_2_3 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  ports_3_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  ports_3_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  ports_3_2 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  ports_3_3 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  ports_4_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  ports_4_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  ports_4_2 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  ports_4_3 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  ports_5_0 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  ports_5_1 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  ports_5_2 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  ports_5_3 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  ports_6_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  ports_6_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  ports_6_2 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  ports_6_3 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  ports_7_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  ports_7_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  ports_7_2 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  ports_7_3 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  vpn_0 = _RAND_40[26:0];
  _RAND_41 = {1{`RANDOM}};
  vpn_1 = _RAND_41[26:0];
  _RAND_42 = {1{`RANDOM}};
  vpn_2 = _RAND_42[26:0];
  _RAND_43 = {1{`RANDOM}};
  vpn_3 = _RAND_43[26:0];
  _RAND_44 = {1{`RANDOM}};
  vpn_4 = _RAND_44[26:0];
  _RAND_45 = {1{`RANDOM}};
  vpn_5 = _RAND_45[26:0];
  _RAND_46 = {1{`RANDOM}};
  vpn_6 = _RAND_46[26:0];
  _RAND_47 = {1{`RANDOM}};
  vpn_7 = _RAND_47[26:0];
  _RAND_48 = {1{`RANDOM}};
  enqPtr = _RAND_48[2:0];
  _RAND_49 = {1{`RANDOM}};
  issPtr = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  deqPtr = _RAND_50[2:0];
  _RAND_51 = {1{`RANDOM}};
  mayFullDeq = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  mayFullIss = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  counter = _RAND_53[3:0];
  _RAND_54 = {1{`RANDOM}};
  ptwResp_entry_tag = _RAND_54[26:0];
  _RAND_55 = {1{`RANDOM}};
  ptwResp_entry_ppn = _RAND_55[23:0];
  _RAND_56 = {1{`RANDOM}};
  ptwResp_entry_perm_d = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  ptwResp_entry_perm_a = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  ptwResp_entry_perm_g = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  ptwResp_entry_perm_u = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  ptwResp_entry_perm_x = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  ptwResp_entry_perm_w = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  ptwResp_entry_perm_r = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  ptwResp_entry_level = _RAND_63[1:0];
  _RAND_64 = {1{`RANDOM}};
  ptwResp_pf = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  ptwResp_af = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  ptwResp_valid = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  tlb_req_0_bits_rvpn = _RAND_67[26:0];
  _RAND_68 = {1{`RANDOM}};
  tlb_req_0_valid_REG = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  tlb_req_1_bits_rvpn = _RAND_69[26:0];
  _RAND_70 = {1{`RANDOM}};
  tlb_req_1_valid_REG = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  tlb_req_2_bits_rvpn = _RAND_71[26:0];
  _RAND_72 = {1{`RANDOM}};
  tlb_req_2_valid_REG = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  tlb_req_3_bits_rvpn = _RAND_73[26:0];
  _RAND_74 = {1{`RANDOM}};
  tlb_req_3_valid_REG = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  oldMatchVec_0 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  oldMatchVec_1 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  oldMatchVec_2 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  oldMatchVec_3 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  newMatchVec_REG_1 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  newMatchVec_REG_2 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  newMatchVec_REG_3 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  newMatchVec_REG_4 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  newMatchVec_REG_6 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  newMatchVec_REG_7 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  newMatchVec_REG_8 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  newMatchVec_REG_9 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  newMatchVec_REG_11 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  newMatchVec_REG_12 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  newMatchVec_REG_13 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  newMatchVec_REG_14 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  oldMatchVec2_REG = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  oldMatchVec2_REG_1 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  oldMatchVec2_REG_2 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  oldMatchVec2_REG_3 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  oldMatchVec2_REG_4 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  oldMatchVec2_REG_5 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  oldMatchVec2_REG_6 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  oldMatchVec2_REG_7 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  oldMatchVec2_REG_8 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  oldMatchVec2_REG_9 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  oldMatchVec2_REG_10 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  oldMatchVec2_REG_11 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  oldMatchVec2_REG_12 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  oldMatchVec2_REG_13 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  oldMatchVec2_REG_14 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  oldMatchVec2_REG_15 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  oldMatchVec2_REG_16 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  oldMatchVec2_REG_17 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  oldMatchVec2_REG_18 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  oldMatchVec2_REG_19 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  oldMatchVec2_REG_20 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  oldMatchVec2_REG_21 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  oldMatchVec2_REG_22 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  oldMatchVec2_REG_23 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  oldMatchVec2_REG_24 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  oldMatchVec2_REG_25 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  oldMatchVec2_REG_26 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  oldMatchVec2_REG_27 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  oldMatchVec2_REG_28 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  oldMatchVec2_REG_29 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  oldMatchVec2_REG_30 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  oldMatchVec2_REG_31 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  resp_vector_0 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  resp_vector_1 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  resp_vector_2 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  resp_vector_3 = _RAND_126[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
