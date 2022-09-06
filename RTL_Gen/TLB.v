module TLB(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_sfence_bits_rs1,
  input         io_sfence_bits_rs2,
  input  [38:0] io_sfence_bits_addr,
  input  [15:0] io_sfence_bits_asid,
  input         io_csr_satp_changed,
  input  [3:0]  io_csr_satp_mode,
  input  [15:0] io_csr_satp_asid,
  input  [1:0]  io_csr_priv_imode,
  input         io_requestor_0_req_valid,
  input  [38:0] io_requestor_0_req_bits_vaddr,
  output        io_requestor_0_resp_valid,
  output [35:0] io_requestor_0_resp_bits_paddr,
  output        io_requestor_0_resp_bits_miss,
  output        io_requestor_0_resp_bits_excp_pf_instr,
  output        io_requestor_0_resp_bits_excp_af_instr,
  input         io_requestor_1_req_valid,
  input  [38:0] io_requestor_1_req_bits_vaddr,
  output        io_requestor_1_resp_valid,
  output [35:0] io_requestor_1_resp_bits_paddr,
  output        io_requestor_1_resp_bits_miss,
  output        io_requestor_1_resp_bits_excp_pf_instr,
  output        io_requestor_1_resp_bits_excp_af_instr,
  input         io_requestor_2_req_valid,
  input  [38:0] io_requestor_2_req_bits_vaddr,
  output        io_requestor_2_resp_valid,
  output [35:0] io_requestor_2_resp_bits_paddr,
  output        io_requestor_2_resp_bits_miss,
  output        io_requestor_2_resp_bits_excp_pf_instr,
  output        io_requestor_2_resp_bits_excp_af_instr,
  input         io_requestor_3_req_valid,
  input  [38:0] io_requestor_3_req_bits_vaddr,
  output        io_requestor_3_resp_valid,
  output [35:0] io_requestor_3_resp_bits_paddr,
  output        io_requestor_3_resp_bits_miss,
  output        io_requestor_3_resp_bits_excp_pf_instr,
  output        io_requestor_3_resp_bits_excp_af_instr,
  input         io_requestor_4_req_valid,
  input  [38:0] io_requestor_4_req_bits_vaddr,
  output [35:0] io_requestor_4_resp_bits_paddr,
  output        io_requestor_4_resp_bits_miss,
  output        io_requestor_4_resp_bits_excp_pf_instr,
  output        io_requestor_4_resp_bits_excp_af_instr,
  input         io_requestor_5_req_valid,
  input  [38:0] io_requestor_5_req_bits_vaddr,
  output [35:0] io_requestor_5_resp_bits_paddr,
  output        io_requestor_5_resp_bits_miss,
  output        io_requestor_5_resp_bits_excp_pf_instr,
  output        io_requestor_5_resp_bits_excp_af_instr,
  output        io_ptw_req_0_valid,
  output [26:0] io_ptw_req_0_bits_vpn,
  output        io_ptw_req_1_valid,
  output [26:0] io_ptw_req_1_bits_vpn,
  output        io_ptw_req_2_valid,
  output [26:0] io_ptw_req_2_bits_vpn,
  output        io_ptw_req_3_valid,
  output [26:0] io_ptw_req_3_bits_vpn,
  output        io_ptw_req_4_valid,
  output [26:0] io_ptw_req_4_bits_vpn,
  output        io_ptw_req_5_valid,
  output [26:0] io_ptw_req_5_bits_vpn,
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
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [63:0] _RAND_17;
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
`endif // RANDOMIZE_REG_INIT
  wire  normalPage_tlb_normal_fa_clock; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_reset; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_sfence_valid; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_sfence_bits_rs1; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_sfence_bits_rs2; // @[TLBStorage.scala 308:28]
  wire [38:0] normalPage_tlb_normal_fa_io_sfence_bits_addr; // @[TLBStorage.scala 308:28]
  wire [15:0] normalPage_tlb_normal_fa_io_sfence_bits_asid; // @[TLBStorage.scala 308:28]
  wire [15:0] normalPage_tlb_normal_fa_io_csr_satp_asid; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_0_ready; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_0_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] normalPage_tlb_normal_fa_io_rreq_0_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_1_ready; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_1_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] normalPage_tlb_normal_fa_io_rreq_1_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_2_ready; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_2_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] normalPage_tlb_normal_fa_io_rreq_2_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_3_ready; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_3_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] normalPage_tlb_normal_fa_io_rreq_3_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_4_ready; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_4_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] normalPage_tlb_normal_fa_io_rreq_4_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_5_ready; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rreq_5_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] normalPage_tlb_normal_fa_io_rreq_5_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_0_valid; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_0_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] normalPage_tlb_normal_fa_io_rresp_0_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_0_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_0_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_0_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_0_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_0_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_1_valid; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_1_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] normalPage_tlb_normal_fa_io_rresp_1_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_1_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_1_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_1_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_1_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_1_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_2_valid; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_2_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] normalPage_tlb_normal_fa_io_rresp_2_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_2_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_2_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_2_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_2_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_2_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_3_valid; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_3_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] normalPage_tlb_normal_fa_io_rresp_3_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_3_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_3_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_3_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_3_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_3_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_4_valid; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_4_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] normalPage_tlb_normal_fa_io_rresp_4_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_4_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_4_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_4_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_4_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_4_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_5_valid; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_5_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] normalPage_tlb_normal_fa_io_rresp_5_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_5_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_5_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_5_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_5_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_5_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_0; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_1; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_2; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_3; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_4; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_5; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_wvalid; // @[TLBStorage.scala 308:28]
  wire [4:0] normalPage_tlb_normal_fa_io_wwayIdx; // @[TLBStorage.scala 308:28]
  wire [26:0] normalPage_tlb_normal_fa_io_wdata_entry_tag; // @[TLBStorage.scala 308:28]
  wire [23:0] normalPage_tlb_normal_fa_io_wdata_entry_ppn; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_wdata_entry_perm_d; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_wdata_entry_perm_a; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_wdata_entry_perm_g; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_wdata_entry_perm_u; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_wdata_entry_perm_x; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_wdata_entry_perm_w; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_wdata_entry_perm_r; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_wdata_pf; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_wdata_af; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_access_0_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [4:0] normalPage_tlb_normal_fa_io_access_0_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_access_1_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [4:0] normalPage_tlb_normal_fa_io_access_1_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_access_2_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [4:0] normalPage_tlb_normal_fa_io_access_2_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_access_3_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [4:0] normalPage_tlb_normal_fa_io_access_3_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_access_4_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [4:0] normalPage_tlb_normal_fa_io_access_4_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  normalPage_tlb_normal_fa_io_access_5_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [4:0] normalPage_tlb_normal_fa_io_access_5_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_clock; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_reset; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_sfence_valid; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_sfence_bits_rs1; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_sfence_bits_rs2; // @[TLBStorage.scala 308:28]
  wire [38:0] superPage_tlb_super_fa_io_sfence_bits_addr; // @[TLBStorage.scala 308:28]
  wire [15:0] superPage_tlb_super_fa_io_sfence_bits_asid; // @[TLBStorage.scala 308:28]
  wire [15:0] superPage_tlb_super_fa_io_csr_satp_asid; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_0_ready; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_0_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] superPage_tlb_super_fa_io_rreq_0_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_1_ready; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_1_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] superPage_tlb_super_fa_io_rreq_1_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_2_ready; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_2_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] superPage_tlb_super_fa_io_rreq_2_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_3_ready; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_3_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] superPage_tlb_super_fa_io_rreq_3_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_4_ready; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_4_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] superPage_tlb_super_fa_io_rreq_4_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_5_ready; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rreq_5_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] superPage_tlb_super_fa_io_rreq_5_bits_vpn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_valid; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] superPage_tlb_super_fa_io_rresp_0_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_1_valid; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_1_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] superPage_tlb_super_fa_io_rresp_1_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_1_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_1_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_1_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_1_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_1_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_2_valid; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_2_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] superPage_tlb_super_fa_io_rresp_2_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_2_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_2_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_2_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_2_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_2_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_3_valid; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_3_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] superPage_tlb_super_fa_io_rresp_3_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_3_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_3_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_3_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_3_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_3_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_4_valid; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_4_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] superPage_tlb_super_fa_io_rresp_4_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_4_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_4_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_4_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_4_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_4_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_5_valid; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_5_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] superPage_tlb_super_fa_io_rresp_5_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_5_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_5_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_5_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_5_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_5_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_hit_sameCycle_0; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_hit_sameCycle_1; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_hit_sameCycle_2; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_hit_sameCycle_3; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_hit_sameCycle_4; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_hit_sameCycle_5; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wvalid; // @[TLBStorage.scala 308:28]
  wire [1:0] superPage_tlb_super_fa_io_wwayIdx; // @[TLBStorage.scala 308:28]
  wire [26:0] superPage_tlb_super_fa_io_wdata_entry_tag; // @[TLBStorage.scala 308:28]
  wire [23:0] superPage_tlb_super_fa_io_wdata_entry_ppn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_entry_perm_d; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_entry_perm_a; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_entry_perm_g; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_entry_perm_u; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_entry_perm_x; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_entry_perm_w; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_entry_perm_r; // @[TLBStorage.scala 308:28]
  wire [1:0] superPage_tlb_super_fa_io_wdata_entry_level; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_pf; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_af; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_access_0_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [1:0] superPage_tlb_super_fa_io_access_0_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_access_1_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [1:0] superPage_tlb_super_fa_io_access_1_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_access_2_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [1:0] superPage_tlb_super_fa_io_access_2_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_access_3_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [1:0] superPage_tlb_super_fa_io_access_3_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_access_4_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [1:0] superPage_tlb_super_fa_io_access_4_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_access_5_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [1:0] superPage_tlb_super_fa_io_access_5_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  vmEnable = io_csr_satp_mode == 4'h8 & io_csr_priv_imode < 2'h3; // @[TLB.scala 54:27]
  wire  hit_0 = normalPage_tlb_normal_fa_io_rresp_0_bits_hit | superPage_tlb_super_fa_io_rresp_0_bits_hit; // @[TLB.scala 119:26]
  wire  hit_sameCycle = normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_0 |
    superPage_tlb_super_fa_io_rresp_hit_sameCycle_0; // @[TLB.scala 120:41]
  wire [23:0] ppn = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_ppn :
    normalPage_tlb_normal_fa_io_rresp_0_bits_ppn; // @[TLB.scala 121:18]
  wire  perm_pf = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_pf :
    normalPage_tlb_normal_fa_io_rresp_0_bits_perm_pf; // @[TLB.scala 122:19]
  wire  perm_af = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_af :
    normalPage_tlb_normal_fa_io_rresp_0_bits_perm_af; // @[TLB.scala 122:19]
  wire  perm_a = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_a :
    normalPage_tlb_normal_fa_io_rresp_0_bits_perm_a; // @[TLB.scala 122:19]
  wire  perm_u = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_u :
    normalPage_tlb_normal_fa_io_rresp_0_bits_perm_u; // @[TLB.scala 122:19]
  wire  perm_x = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_x :
    normalPage_tlb_normal_fa_io_rresp_0_bits_perm_x; // @[TLB.scala 122:19]
  reg  validRegVec_0; // @[TLB.scala 127:45]
  reg [11:0] offReg; // @[TLB.scala 128:43]
  wire  miss_0 = ~hit_0 & vmEnable; // @[TLB.scala 132:21]
  wire [35:0] paddr = {ppn,offReg}; // @[Cat.scala 31:58]
  reg [35:0] io_requestor_0_resp_bits_paddr_REG; // @[TLB.scala 145:73]
  wire  _io_requestor_0_resp_bits_ptwBack_T = io_ptw_resp_ready & io_ptw_resp_valid; // @[Decoupled.scala 50:35]
  wire  _ldUpdate_T = ~perm_a; // @[TLB.scala 159:20]
  wire  modeCheck = ~(io_csr_priv_imode == 2'h0 & ~perm_u | io_csr_priv_imode == 2'h1 & perm_u); // @[TLB.scala 162:21]
  wire  instrPermFail = ~(modeCheck & perm_x); // @[TLB.scala 165:25]
  wire  instrPf = instrPermFail | perm_pf; // @[TLB.scala 168:34]
  wire  _io_requestor_0_resp_bits_excp_pf_ld_T_2 = ~perm_af; // @[TLB.scala 170:69]
  wire  hit_1 = normalPage_tlb_normal_fa_io_rresp_1_bits_hit | superPage_tlb_super_fa_io_rresp_1_bits_hit; // @[TLB.scala 119:26]
  wire  hit_sameCycle_1 = normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_1 |
    superPage_tlb_super_fa_io_rresp_hit_sameCycle_1; // @[TLB.scala 120:41]
  wire [23:0] ppn_1 = superPage_tlb_super_fa_io_rresp_1_bits_hit ? superPage_tlb_super_fa_io_rresp_1_bits_ppn :
    normalPage_tlb_normal_fa_io_rresp_1_bits_ppn; // @[TLB.scala 121:18]
  wire  perm_1_pf = superPage_tlb_super_fa_io_rresp_1_bits_hit ? superPage_tlb_super_fa_io_rresp_1_bits_perm_pf :
    normalPage_tlb_normal_fa_io_rresp_1_bits_perm_pf; // @[TLB.scala 122:19]
  wire  perm_1_af = superPage_tlb_super_fa_io_rresp_1_bits_hit ? superPage_tlb_super_fa_io_rresp_1_bits_perm_af :
    normalPage_tlb_normal_fa_io_rresp_1_bits_perm_af; // @[TLB.scala 122:19]
  wire  perm_1_a = superPage_tlb_super_fa_io_rresp_1_bits_hit ? superPage_tlb_super_fa_io_rresp_1_bits_perm_a :
    normalPage_tlb_normal_fa_io_rresp_1_bits_perm_a; // @[TLB.scala 122:19]
  wire  perm_1_u = superPage_tlb_super_fa_io_rresp_1_bits_hit ? superPage_tlb_super_fa_io_rresp_1_bits_perm_u :
    normalPage_tlb_normal_fa_io_rresp_1_bits_perm_u; // @[TLB.scala 122:19]
  wire  perm_1_x = superPage_tlb_super_fa_io_rresp_1_bits_hit ? superPage_tlb_super_fa_io_rresp_1_bits_perm_x :
    normalPage_tlb_normal_fa_io_rresp_1_bits_perm_x; // @[TLB.scala 122:19]
  reg  validRegVec_1; // @[TLB.scala 127:45]
  reg [11:0] offReg_1; // @[TLB.scala 128:43]
  wire  miss_1 = ~hit_1 & vmEnable; // @[TLB.scala 132:21]
  wire [35:0] paddr_1 = {ppn_1,offReg_1}; // @[Cat.scala 31:58]
  reg [35:0] io_requestor_1_resp_bits_paddr_REG; // @[TLB.scala 145:73]
  wire  _ldUpdate_T_6 = ~perm_1_a; // @[TLB.scala 159:20]
  wire  modeCheck_1 = ~(io_csr_priv_imode == 2'h0 & ~perm_1_u | io_csr_priv_imode == 2'h1 & perm_1_u); // @[TLB.scala 162:21]
  wire  instrPermFail_1 = ~(modeCheck_1 & perm_1_x); // @[TLB.scala 165:25]
  wire  instrPf_1 = instrPermFail_1 | perm_1_pf; // @[TLB.scala 168:34]
  wire  _io_requestor_1_resp_bits_excp_pf_ld_T_2 = ~perm_1_af; // @[TLB.scala 170:69]
  wire  hit_2 = normalPage_tlb_normal_fa_io_rresp_2_bits_hit | superPage_tlb_super_fa_io_rresp_2_bits_hit; // @[TLB.scala 119:26]
  wire  hit_sameCycle_2 = normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_2 |
    superPage_tlb_super_fa_io_rresp_hit_sameCycle_2; // @[TLB.scala 120:41]
  wire [23:0] ppn_2 = superPage_tlb_super_fa_io_rresp_2_bits_hit ? superPage_tlb_super_fa_io_rresp_2_bits_ppn :
    normalPage_tlb_normal_fa_io_rresp_2_bits_ppn; // @[TLB.scala 121:18]
  wire  perm_2_pf = superPage_tlb_super_fa_io_rresp_2_bits_hit ? superPage_tlb_super_fa_io_rresp_2_bits_perm_pf :
    normalPage_tlb_normal_fa_io_rresp_2_bits_perm_pf; // @[TLB.scala 122:19]
  wire  perm_2_af = superPage_tlb_super_fa_io_rresp_2_bits_hit ? superPage_tlb_super_fa_io_rresp_2_bits_perm_af :
    normalPage_tlb_normal_fa_io_rresp_2_bits_perm_af; // @[TLB.scala 122:19]
  wire  perm_2_a = superPage_tlb_super_fa_io_rresp_2_bits_hit ? superPage_tlb_super_fa_io_rresp_2_bits_perm_a :
    normalPage_tlb_normal_fa_io_rresp_2_bits_perm_a; // @[TLB.scala 122:19]
  wire  perm_2_u = superPage_tlb_super_fa_io_rresp_2_bits_hit ? superPage_tlb_super_fa_io_rresp_2_bits_perm_u :
    normalPage_tlb_normal_fa_io_rresp_2_bits_perm_u; // @[TLB.scala 122:19]
  wire  perm_2_x = superPage_tlb_super_fa_io_rresp_2_bits_hit ? superPage_tlb_super_fa_io_rresp_2_bits_perm_x :
    normalPage_tlb_normal_fa_io_rresp_2_bits_perm_x; // @[TLB.scala 122:19]
  reg  validRegVec_2; // @[TLB.scala 127:45]
  reg [11:0] offReg_2; // @[TLB.scala 128:43]
  wire  miss_2 = ~hit_2 & vmEnable; // @[TLB.scala 132:21]
  wire [35:0] paddr_2 = {ppn_2,offReg_2}; // @[Cat.scala 31:58]
  reg [35:0] io_requestor_2_resp_bits_paddr_REG; // @[TLB.scala 145:73]
  wire  _ldUpdate_T_12 = ~perm_2_a; // @[TLB.scala 159:20]
  wire  modeCheck_2 = ~(io_csr_priv_imode == 2'h0 & ~perm_2_u | io_csr_priv_imode == 2'h1 & perm_2_u); // @[TLB.scala 162:21]
  wire  instrPermFail_2 = ~(modeCheck_2 & perm_2_x); // @[TLB.scala 165:25]
  wire  instrPf_2 = instrPermFail_2 | perm_2_pf; // @[TLB.scala 168:34]
  wire  _io_requestor_2_resp_bits_excp_pf_ld_T_2 = ~perm_2_af; // @[TLB.scala 170:69]
  wire  hit_3 = normalPage_tlb_normal_fa_io_rresp_3_bits_hit | superPage_tlb_super_fa_io_rresp_3_bits_hit; // @[TLB.scala 119:26]
  wire  hit_sameCycle_3 = normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_3 |
    superPage_tlb_super_fa_io_rresp_hit_sameCycle_3; // @[TLB.scala 120:41]
  wire [23:0] ppn_3 = superPage_tlb_super_fa_io_rresp_3_bits_hit ? superPage_tlb_super_fa_io_rresp_3_bits_ppn :
    normalPage_tlb_normal_fa_io_rresp_3_bits_ppn; // @[TLB.scala 121:18]
  wire  perm_3_pf = superPage_tlb_super_fa_io_rresp_3_bits_hit ? superPage_tlb_super_fa_io_rresp_3_bits_perm_pf :
    normalPage_tlb_normal_fa_io_rresp_3_bits_perm_pf; // @[TLB.scala 122:19]
  wire  perm_3_af = superPage_tlb_super_fa_io_rresp_3_bits_hit ? superPage_tlb_super_fa_io_rresp_3_bits_perm_af :
    normalPage_tlb_normal_fa_io_rresp_3_bits_perm_af; // @[TLB.scala 122:19]
  wire  perm_3_a = superPage_tlb_super_fa_io_rresp_3_bits_hit ? superPage_tlb_super_fa_io_rresp_3_bits_perm_a :
    normalPage_tlb_normal_fa_io_rresp_3_bits_perm_a; // @[TLB.scala 122:19]
  wire  perm_3_u = superPage_tlb_super_fa_io_rresp_3_bits_hit ? superPage_tlb_super_fa_io_rresp_3_bits_perm_u :
    normalPage_tlb_normal_fa_io_rresp_3_bits_perm_u; // @[TLB.scala 122:19]
  wire  perm_3_x = superPage_tlb_super_fa_io_rresp_3_bits_hit ? superPage_tlb_super_fa_io_rresp_3_bits_perm_x :
    normalPage_tlb_normal_fa_io_rresp_3_bits_perm_x; // @[TLB.scala 122:19]
  reg  validRegVec_3; // @[TLB.scala 127:45]
  reg [11:0] offReg_3; // @[TLB.scala 128:43]
  wire  miss_3 = ~hit_3 & vmEnable; // @[TLB.scala 132:21]
  wire [35:0] paddr_3 = {ppn_3,offReg_3}; // @[Cat.scala 31:58]
  reg [35:0] io_requestor_3_resp_bits_paddr_REG; // @[TLB.scala 145:73]
  wire  _ldUpdate_T_18 = ~perm_3_a; // @[TLB.scala 159:20]
  wire  modeCheck_3 = ~(io_csr_priv_imode == 2'h0 & ~perm_3_u | io_csr_priv_imode == 2'h1 & perm_3_u); // @[TLB.scala 162:21]
  wire  instrPermFail_3 = ~(modeCheck_3 & perm_3_x); // @[TLB.scala 165:25]
  wire  instrPf_3 = instrPermFail_3 | perm_3_pf; // @[TLB.scala 168:34]
  wire  _io_requestor_3_resp_bits_excp_pf_ld_T_2 = ~perm_3_af; // @[TLB.scala 170:69]
  wire  hit_4 = normalPage_tlb_normal_fa_io_rresp_4_bits_hit | superPage_tlb_super_fa_io_rresp_4_bits_hit; // @[TLB.scala 119:26]
  wire  hit_sameCycle_4 = normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_4 |
    superPage_tlb_super_fa_io_rresp_hit_sameCycle_4; // @[TLB.scala 120:41]
  wire [23:0] ppn_4 = superPage_tlb_super_fa_io_rresp_4_bits_hit ? superPage_tlb_super_fa_io_rresp_4_bits_ppn :
    normalPage_tlb_normal_fa_io_rresp_4_bits_ppn; // @[TLB.scala 121:18]
  wire  perm_4_pf = superPage_tlb_super_fa_io_rresp_4_bits_hit ? superPage_tlb_super_fa_io_rresp_4_bits_perm_pf :
    normalPage_tlb_normal_fa_io_rresp_4_bits_perm_pf; // @[TLB.scala 122:19]
  wire  perm_4_af = superPage_tlb_super_fa_io_rresp_4_bits_hit ? superPage_tlb_super_fa_io_rresp_4_bits_perm_af :
    normalPage_tlb_normal_fa_io_rresp_4_bits_perm_af; // @[TLB.scala 122:19]
  wire  perm_4_a = superPage_tlb_super_fa_io_rresp_4_bits_hit ? superPage_tlb_super_fa_io_rresp_4_bits_perm_a :
    normalPage_tlb_normal_fa_io_rresp_4_bits_perm_a; // @[TLB.scala 122:19]
  wire  perm_4_u = superPage_tlb_super_fa_io_rresp_4_bits_hit ? superPage_tlb_super_fa_io_rresp_4_bits_perm_u :
    normalPage_tlb_normal_fa_io_rresp_4_bits_perm_u; // @[TLB.scala 122:19]
  wire  perm_4_x = superPage_tlb_super_fa_io_rresp_4_bits_hit ? superPage_tlb_super_fa_io_rresp_4_bits_perm_x :
    normalPage_tlb_normal_fa_io_rresp_4_bits_perm_x; // @[TLB.scala 122:19]
  reg  validRegVec_4; // @[TLB.scala 127:45]
  reg [11:0] offReg_4; // @[TLB.scala 128:43]
  wire  miss_4 = ~hit_4 & vmEnable; // @[TLB.scala 132:21]
  wire [35:0] paddr_4 = {ppn_4,offReg_4}; // @[Cat.scala 31:58]
  reg [35:0] io_requestor_4_resp_bits_paddr_REG; // @[TLB.scala 145:73]
  wire  _ldUpdate_T_24 = ~perm_4_a; // @[TLB.scala 159:20]
  wire  modeCheck_4 = ~(io_csr_priv_imode == 2'h0 & ~perm_4_u | io_csr_priv_imode == 2'h1 & perm_4_u); // @[TLB.scala 162:21]
  wire  instrPermFail_4 = ~(modeCheck_4 & perm_4_x); // @[TLB.scala 165:25]
  wire  instrPf_4 = instrPermFail_4 | perm_4_pf; // @[TLB.scala 168:34]
  wire  _io_requestor_4_resp_bits_excp_pf_ld_T_2 = ~perm_4_af; // @[TLB.scala 170:69]
  wire  hit_5 = normalPage_tlb_normal_fa_io_rresp_5_bits_hit | superPage_tlb_super_fa_io_rresp_5_bits_hit; // @[TLB.scala 119:26]
  wire  hit_sameCycle_5 = normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_5 |
    superPage_tlb_super_fa_io_rresp_hit_sameCycle_5; // @[TLB.scala 120:41]
  wire [23:0] ppn_5 = superPage_tlb_super_fa_io_rresp_5_bits_hit ? superPage_tlb_super_fa_io_rresp_5_bits_ppn :
    normalPage_tlb_normal_fa_io_rresp_5_bits_ppn; // @[TLB.scala 121:18]
  wire  perm_5_pf = superPage_tlb_super_fa_io_rresp_5_bits_hit ? superPage_tlb_super_fa_io_rresp_5_bits_perm_pf :
    normalPage_tlb_normal_fa_io_rresp_5_bits_perm_pf; // @[TLB.scala 122:19]
  wire  perm_5_af = superPage_tlb_super_fa_io_rresp_5_bits_hit ? superPage_tlb_super_fa_io_rresp_5_bits_perm_af :
    normalPage_tlb_normal_fa_io_rresp_5_bits_perm_af; // @[TLB.scala 122:19]
  wire  perm_5_a = superPage_tlb_super_fa_io_rresp_5_bits_hit ? superPage_tlb_super_fa_io_rresp_5_bits_perm_a :
    normalPage_tlb_normal_fa_io_rresp_5_bits_perm_a; // @[TLB.scala 122:19]
  wire  perm_5_u = superPage_tlb_super_fa_io_rresp_5_bits_hit ? superPage_tlb_super_fa_io_rresp_5_bits_perm_u :
    normalPage_tlb_normal_fa_io_rresp_5_bits_perm_u; // @[TLB.scala 122:19]
  wire  perm_5_x = superPage_tlb_super_fa_io_rresp_5_bits_hit ? superPage_tlb_super_fa_io_rresp_5_bits_perm_x :
    normalPage_tlb_normal_fa_io_rresp_5_bits_perm_x; // @[TLB.scala 122:19]
  reg  validRegVec_5; // @[TLB.scala 127:45]
  reg [11:0] offReg_5; // @[TLB.scala 128:43]
  wire  miss_5 = ~hit_5 & vmEnable; // @[TLB.scala 132:21]
  wire [35:0] paddr_5 = {ppn_5,offReg_5}; // @[Cat.scala 31:58]
  reg [35:0] io_requestor_5_resp_bits_paddr_REG; // @[TLB.scala 145:73]
  wire  _ldUpdate_T_30 = ~perm_5_a; // @[TLB.scala 159:20]
  wire  modeCheck_5 = ~(io_csr_priv_imode == 2'h0 & ~perm_5_u | io_csr_priv_imode == 2'h1 & perm_5_u); // @[TLB.scala 162:21]
  wire  instrPermFail_5 = ~(modeCheck_5 & perm_5_x); // @[TLB.scala 165:25]
  wire  instrPf_5 = instrPermFail_5 | perm_5_pf; // @[TLB.scala 168:34]
  wire  _io_requestor_5_resp_bits_excp_pf_ld_T_2 = ~perm_5_af; // @[TLB.scala 170:69]
  reg [30:0] normal_refill_idx_state_reg; // @[Replacement.scala 198:70]
  wire  _normal_refill_idx_T_4 = normalPage_tlb_normal_fa_io_access_0_touch_ways_valid |
    normalPage_tlb_normal_fa_io_access_1_touch_ways_valid | normalPage_tlb_normal_fa_io_access_2_touch_ways_valid |
    normalPage_tlb_normal_fa_io_access_3_touch_ways_valid | normalPage_tlb_normal_fa_io_access_4_touch_ways_valid |
    normalPage_tlb_normal_fa_io_access_5_touch_ways_valid; // @[package.scala 72:59]
  wire [4:0] normal_refill_idx_state_reg_touch_way_sized = normalPage_tlb_normal_fa_io_access_0_touch_ways_bits; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_set_left_older = ~normal_refill_idx_state_reg_touch_way_sized[4]; // @[Replacement.scala 226:33]
  wire [14:0] normal_refill_idx_state_reg_left_subtree_state = normal_refill_idx_state_reg[29:15]; // @[package.scala 154:13]
  wire [14:0] normal_refill_idx_state_reg_right_subtree_state = normal_refill_idx_state_reg[14:0]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_1 = ~normal_refill_idx_state_reg_touch_way_sized[3]; // @[Replacement.scala 226:33]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_1 = normal_refill_idx_state_reg_left_subtree_state[13:7]; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_1 = normal_refill_idx_state_reg_left_subtree_state[6:0]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_2 = ~normal_refill_idx_state_reg_touch_way_sized[2]; // @[Replacement.scala 226:33]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_2 = normal_refill_idx_state_reg_left_subtree_state_1[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_2 = normal_refill_idx_state_reg_left_subtree_state_1[2:0]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_3 = ~normal_refill_idx_state_reg_touch_way_sized[1]; // @[Replacement.scala 226:33]
  wire  normal_refill_idx_state_reg_left_subtree_state_3 = normal_refill_idx_state_reg_left_subtree_state_2[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_3 = normal_refill_idx_state_reg_left_subtree_state_2[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_5 = ~normal_refill_idx_state_reg_touch_way_sized[0]; // @[Replacement.scala 248:7]
  wire  _normal_refill_idx_state_reg_T_6 = normal_refill_idx_state_reg_set_left_older_3 ?
    normal_refill_idx_state_reg_left_subtree_state_3 : _normal_refill_idx_state_reg_T_5; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_10 = normal_refill_idx_state_reg_set_left_older_3 ?
    _normal_refill_idx_state_reg_T_5 : normal_refill_idx_state_reg_right_subtree_state_3; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_11 = {normal_refill_idx_state_reg_set_left_older_3,
    _normal_refill_idx_state_reg_T_6,_normal_refill_idx_state_reg_T_10}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_12 = normal_refill_idx_state_reg_set_left_older_2 ?
    normal_refill_idx_state_reg_left_subtree_state_2 : _normal_refill_idx_state_reg_T_11; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_4 = normal_refill_idx_state_reg_right_subtree_state_2[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_4 = normal_refill_idx_state_reg_right_subtree_state_2[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_17 = normal_refill_idx_state_reg_set_left_older_3 ?
    normal_refill_idx_state_reg_left_subtree_state_4 : _normal_refill_idx_state_reg_T_5; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_21 = normal_refill_idx_state_reg_set_left_older_3 ?
    _normal_refill_idx_state_reg_T_5 : normal_refill_idx_state_reg_right_subtree_state_4; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_22 = {normal_refill_idx_state_reg_set_left_older_3,
    _normal_refill_idx_state_reg_T_17,_normal_refill_idx_state_reg_T_21}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_23 = normal_refill_idx_state_reg_set_left_older_2 ?
    _normal_refill_idx_state_reg_T_22 : normal_refill_idx_state_reg_right_subtree_state_2; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_24 = {normal_refill_idx_state_reg_set_left_older_2,
    _normal_refill_idx_state_reg_T_12,_normal_refill_idx_state_reg_T_23}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_25 = normal_refill_idx_state_reg_set_left_older_1 ?
    normal_refill_idx_state_reg_left_subtree_state_1 : _normal_refill_idx_state_reg_T_24; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_5 = normal_refill_idx_state_reg_right_subtree_state_1[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_5 = normal_refill_idx_state_reg_right_subtree_state_1[2:0]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_6 = normal_refill_idx_state_reg_left_subtree_state_5[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_6 = normal_refill_idx_state_reg_left_subtree_state_5[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_31 = normal_refill_idx_state_reg_set_left_older_3 ?
    normal_refill_idx_state_reg_left_subtree_state_6 : _normal_refill_idx_state_reg_T_5; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_35 = normal_refill_idx_state_reg_set_left_older_3 ?
    _normal_refill_idx_state_reg_T_5 : normal_refill_idx_state_reg_right_subtree_state_6; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_36 = {normal_refill_idx_state_reg_set_left_older_3,
    _normal_refill_idx_state_reg_T_31,_normal_refill_idx_state_reg_T_35}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_37 = normal_refill_idx_state_reg_set_left_older_2 ?
    normal_refill_idx_state_reg_left_subtree_state_5 : _normal_refill_idx_state_reg_T_36; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_7 = normal_refill_idx_state_reg_right_subtree_state_5[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_7 = normal_refill_idx_state_reg_right_subtree_state_5[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_42 = normal_refill_idx_state_reg_set_left_older_3 ?
    normal_refill_idx_state_reg_left_subtree_state_7 : _normal_refill_idx_state_reg_T_5; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_46 = normal_refill_idx_state_reg_set_left_older_3 ?
    _normal_refill_idx_state_reg_T_5 : normal_refill_idx_state_reg_right_subtree_state_7; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_47 = {normal_refill_idx_state_reg_set_left_older_3,
    _normal_refill_idx_state_reg_T_42,_normal_refill_idx_state_reg_T_46}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_48 = normal_refill_idx_state_reg_set_left_older_2 ?
    _normal_refill_idx_state_reg_T_47 : normal_refill_idx_state_reg_right_subtree_state_5; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_49 = {normal_refill_idx_state_reg_set_left_older_2,
    _normal_refill_idx_state_reg_T_37,_normal_refill_idx_state_reg_T_48}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_50 = normal_refill_idx_state_reg_set_left_older_1 ?
    _normal_refill_idx_state_reg_T_49 : normal_refill_idx_state_reg_right_subtree_state_1; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_51 = {normal_refill_idx_state_reg_set_left_older_1,
    _normal_refill_idx_state_reg_T_25,_normal_refill_idx_state_reg_T_50}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_52 = normal_refill_idx_state_reg_set_left_older ?
    normal_refill_idx_state_reg_left_subtree_state : _normal_refill_idx_state_reg_T_51; // @[Replacement.scala 233:16]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_8 = normal_refill_idx_state_reg_right_subtree_state[13:7]; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_8 = normal_refill_idx_state_reg_right_subtree_state[6:0]; // @[Replacement.scala 228:38]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_9 = normal_refill_idx_state_reg_left_subtree_state_8[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_9 = normal_refill_idx_state_reg_left_subtree_state_8[2:0]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_10 = normal_refill_idx_state_reg_left_subtree_state_9[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_10 = normal_refill_idx_state_reg_left_subtree_state_9[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_59 = normal_refill_idx_state_reg_set_left_older_3 ?
    normal_refill_idx_state_reg_left_subtree_state_10 : _normal_refill_idx_state_reg_T_5; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_63 = normal_refill_idx_state_reg_set_left_older_3 ?
    _normal_refill_idx_state_reg_T_5 : normal_refill_idx_state_reg_right_subtree_state_10; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_64 = {normal_refill_idx_state_reg_set_left_older_3,
    _normal_refill_idx_state_reg_T_59,_normal_refill_idx_state_reg_T_63}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_65 = normal_refill_idx_state_reg_set_left_older_2 ?
    normal_refill_idx_state_reg_left_subtree_state_9 : _normal_refill_idx_state_reg_T_64; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_11 = normal_refill_idx_state_reg_right_subtree_state_9[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_11 = normal_refill_idx_state_reg_right_subtree_state_9[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_70 = normal_refill_idx_state_reg_set_left_older_3 ?
    normal_refill_idx_state_reg_left_subtree_state_11 : _normal_refill_idx_state_reg_T_5; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_74 = normal_refill_idx_state_reg_set_left_older_3 ?
    _normal_refill_idx_state_reg_T_5 : normal_refill_idx_state_reg_right_subtree_state_11; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_75 = {normal_refill_idx_state_reg_set_left_older_3,
    _normal_refill_idx_state_reg_T_70,_normal_refill_idx_state_reg_T_74}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_76 = normal_refill_idx_state_reg_set_left_older_2 ?
    _normal_refill_idx_state_reg_T_75 : normal_refill_idx_state_reg_right_subtree_state_9; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_77 = {normal_refill_idx_state_reg_set_left_older_2,
    _normal_refill_idx_state_reg_T_65,_normal_refill_idx_state_reg_T_76}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_78 = normal_refill_idx_state_reg_set_left_older_1 ?
    normal_refill_idx_state_reg_left_subtree_state_8 : _normal_refill_idx_state_reg_T_77; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_12 = normal_refill_idx_state_reg_right_subtree_state_8[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_12 = normal_refill_idx_state_reg_right_subtree_state_8[2:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_13 = normal_refill_idx_state_reg_left_subtree_state_12[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_13 = normal_refill_idx_state_reg_left_subtree_state_12[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_84 = normal_refill_idx_state_reg_set_left_older_3 ?
    normal_refill_idx_state_reg_left_subtree_state_13 : _normal_refill_idx_state_reg_T_5; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_88 = normal_refill_idx_state_reg_set_left_older_3 ?
    _normal_refill_idx_state_reg_T_5 : normal_refill_idx_state_reg_right_subtree_state_13; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_89 = {normal_refill_idx_state_reg_set_left_older_3,
    _normal_refill_idx_state_reg_T_84,_normal_refill_idx_state_reg_T_88}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_90 = normal_refill_idx_state_reg_set_left_older_2 ?
    normal_refill_idx_state_reg_left_subtree_state_12 : _normal_refill_idx_state_reg_T_89; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_14 = normal_refill_idx_state_reg_right_subtree_state_12[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_14 = normal_refill_idx_state_reg_right_subtree_state_12[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_95 = normal_refill_idx_state_reg_set_left_older_3 ?
    normal_refill_idx_state_reg_left_subtree_state_14 : _normal_refill_idx_state_reg_T_5; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_99 = normal_refill_idx_state_reg_set_left_older_3 ?
    _normal_refill_idx_state_reg_T_5 : normal_refill_idx_state_reg_right_subtree_state_14; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_100 = {normal_refill_idx_state_reg_set_left_older_3,
    _normal_refill_idx_state_reg_T_95,_normal_refill_idx_state_reg_T_99}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_101 = normal_refill_idx_state_reg_set_left_older_2 ?
    _normal_refill_idx_state_reg_T_100 : normal_refill_idx_state_reg_right_subtree_state_12; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_102 = {normal_refill_idx_state_reg_set_left_older_2,
    _normal_refill_idx_state_reg_T_90,_normal_refill_idx_state_reg_T_101}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_103 = normal_refill_idx_state_reg_set_left_older_1 ?
    _normal_refill_idx_state_reg_T_102 : normal_refill_idx_state_reg_right_subtree_state_8; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_104 = {normal_refill_idx_state_reg_set_left_older_1,
    _normal_refill_idx_state_reg_T_78,_normal_refill_idx_state_reg_T_103}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_105 = normal_refill_idx_state_reg_set_left_older ?
    _normal_refill_idx_state_reg_T_104 : normal_refill_idx_state_reg_right_subtree_state; // @[Replacement.scala 236:16]
  wire [30:0] _normal_refill_idx_state_reg_T_106 = {normal_refill_idx_state_reg_set_left_older,
    _normal_refill_idx_state_reg_T_52,_normal_refill_idx_state_reg_T_105}; // @[Cat.scala 31:58]
  wire [30:0] _normal_refill_idx_state_reg_T_107 = normalPage_tlb_normal_fa_io_access_0_touch_ways_valid ?
    _normal_refill_idx_state_reg_T_106 : normal_refill_idx_state_reg; // @[Replacement.scala 41:56]
  wire [4:0] normal_refill_idx_state_reg_touch_way_sized_1 = normalPage_tlb_normal_fa_io_access_1_touch_ways_bits; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_set_left_older_15 = ~normal_refill_idx_state_reg_touch_way_sized_1[4]; // @[Replacement.scala 226:33]
  wire [14:0] normal_refill_idx_state_reg_left_subtree_state_15 = _normal_refill_idx_state_reg_T_107[29:15]; // @[package.scala 154:13]
  wire [14:0] normal_refill_idx_state_reg_right_subtree_state_15 = _normal_refill_idx_state_reg_T_107[14:0]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_16 = ~normal_refill_idx_state_reg_touch_way_sized_1[3]; // @[Replacement.scala 226:33]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_16 = normal_refill_idx_state_reg_left_subtree_state_15[13:7]
    ; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_16 = normal_refill_idx_state_reg_left_subtree_state_15[6:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_17 = ~normal_refill_idx_state_reg_touch_way_sized_1[2]; // @[Replacement.scala 226:33]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_17 = normal_refill_idx_state_reg_left_subtree_state_16[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_17 = normal_refill_idx_state_reg_left_subtree_state_16[2:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_18 = ~normal_refill_idx_state_reg_touch_way_sized_1[1]; // @[Replacement.scala 226:33]
  wire  normal_refill_idx_state_reg_left_subtree_state_18 = normal_refill_idx_state_reg_left_subtree_state_17[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_18 = normal_refill_idx_state_reg_left_subtree_state_17[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_113 = ~normal_refill_idx_state_reg_touch_way_sized_1[0]; // @[Replacement.scala 248:7]
  wire  _normal_refill_idx_state_reg_T_114 = normal_refill_idx_state_reg_set_left_older_18 ?
    normal_refill_idx_state_reg_left_subtree_state_18 : _normal_refill_idx_state_reg_T_113; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_118 = normal_refill_idx_state_reg_set_left_older_18 ?
    _normal_refill_idx_state_reg_T_113 : normal_refill_idx_state_reg_right_subtree_state_18; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_119 = {normal_refill_idx_state_reg_set_left_older_18,
    _normal_refill_idx_state_reg_T_114,_normal_refill_idx_state_reg_T_118}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_120 = normal_refill_idx_state_reg_set_left_older_17 ?
    normal_refill_idx_state_reg_left_subtree_state_17 : _normal_refill_idx_state_reg_T_119; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_19 = normal_refill_idx_state_reg_right_subtree_state_17[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_19 = normal_refill_idx_state_reg_right_subtree_state_17[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_125 = normal_refill_idx_state_reg_set_left_older_18 ?
    normal_refill_idx_state_reg_left_subtree_state_19 : _normal_refill_idx_state_reg_T_113; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_129 = normal_refill_idx_state_reg_set_left_older_18 ?
    _normal_refill_idx_state_reg_T_113 : normal_refill_idx_state_reg_right_subtree_state_19; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_130 = {normal_refill_idx_state_reg_set_left_older_18,
    _normal_refill_idx_state_reg_T_125,_normal_refill_idx_state_reg_T_129}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_131 = normal_refill_idx_state_reg_set_left_older_17 ?
    _normal_refill_idx_state_reg_T_130 : normal_refill_idx_state_reg_right_subtree_state_17; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_132 = {normal_refill_idx_state_reg_set_left_older_17,
    _normal_refill_idx_state_reg_T_120,_normal_refill_idx_state_reg_T_131}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_133 = normal_refill_idx_state_reg_set_left_older_16 ?
    normal_refill_idx_state_reg_left_subtree_state_16 : _normal_refill_idx_state_reg_T_132; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_20 = normal_refill_idx_state_reg_right_subtree_state_16[5:3]
    ; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_20 = normal_refill_idx_state_reg_right_subtree_state_16[2:0
    ]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_21 = normal_refill_idx_state_reg_left_subtree_state_20[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_21 = normal_refill_idx_state_reg_left_subtree_state_20[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_139 = normal_refill_idx_state_reg_set_left_older_18 ?
    normal_refill_idx_state_reg_left_subtree_state_21 : _normal_refill_idx_state_reg_T_113; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_143 = normal_refill_idx_state_reg_set_left_older_18 ?
    _normal_refill_idx_state_reg_T_113 : normal_refill_idx_state_reg_right_subtree_state_21; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_144 = {normal_refill_idx_state_reg_set_left_older_18,
    _normal_refill_idx_state_reg_T_139,_normal_refill_idx_state_reg_T_143}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_145 = normal_refill_idx_state_reg_set_left_older_17 ?
    normal_refill_idx_state_reg_left_subtree_state_20 : _normal_refill_idx_state_reg_T_144; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_22 = normal_refill_idx_state_reg_right_subtree_state_20[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_22 = normal_refill_idx_state_reg_right_subtree_state_20[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_150 = normal_refill_idx_state_reg_set_left_older_18 ?
    normal_refill_idx_state_reg_left_subtree_state_22 : _normal_refill_idx_state_reg_T_113; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_154 = normal_refill_idx_state_reg_set_left_older_18 ?
    _normal_refill_idx_state_reg_T_113 : normal_refill_idx_state_reg_right_subtree_state_22; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_155 = {normal_refill_idx_state_reg_set_left_older_18,
    _normal_refill_idx_state_reg_T_150,_normal_refill_idx_state_reg_T_154}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_156 = normal_refill_idx_state_reg_set_left_older_17 ?
    _normal_refill_idx_state_reg_T_155 : normal_refill_idx_state_reg_right_subtree_state_20; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_157 = {normal_refill_idx_state_reg_set_left_older_17,
    _normal_refill_idx_state_reg_T_145,_normal_refill_idx_state_reg_T_156}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_158 = normal_refill_idx_state_reg_set_left_older_16 ?
    _normal_refill_idx_state_reg_T_157 : normal_refill_idx_state_reg_right_subtree_state_16; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_159 = {normal_refill_idx_state_reg_set_left_older_16,
    _normal_refill_idx_state_reg_T_133,_normal_refill_idx_state_reg_T_158}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_160 = normal_refill_idx_state_reg_set_left_older_15 ?
    normal_refill_idx_state_reg_left_subtree_state_15 : _normal_refill_idx_state_reg_T_159; // @[Replacement.scala 233:16]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_23 = normal_refill_idx_state_reg_right_subtree_state_15[13:7
    ]; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_23 = normal_refill_idx_state_reg_right_subtree_state_15[6:0
    ]; // @[Replacement.scala 228:38]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_24 = normal_refill_idx_state_reg_left_subtree_state_23[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_24 = normal_refill_idx_state_reg_left_subtree_state_23[2:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_25 = normal_refill_idx_state_reg_left_subtree_state_24[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_25 = normal_refill_idx_state_reg_left_subtree_state_24[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_167 = normal_refill_idx_state_reg_set_left_older_18 ?
    normal_refill_idx_state_reg_left_subtree_state_25 : _normal_refill_idx_state_reg_T_113; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_171 = normal_refill_idx_state_reg_set_left_older_18 ?
    _normal_refill_idx_state_reg_T_113 : normal_refill_idx_state_reg_right_subtree_state_25; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_172 = {normal_refill_idx_state_reg_set_left_older_18,
    _normal_refill_idx_state_reg_T_167,_normal_refill_idx_state_reg_T_171}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_173 = normal_refill_idx_state_reg_set_left_older_17 ?
    normal_refill_idx_state_reg_left_subtree_state_24 : _normal_refill_idx_state_reg_T_172; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_26 = normal_refill_idx_state_reg_right_subtree_state_24[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_26 = normal_refill_idx_state_reg_right_subtree_state_24[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_178 = normal_refill_idx_state_reg_set_left_older_18 ?
    normal_refill_idx_state_reg_left_subtree_state_26 : _normal_refill_idx_state_reg_T_113; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_182 = normal_refill_idx_state_reg_set_left_older_18 ?
    _normal_refill_idx_state_reg_T_113 : normal_refill_idx_state_reg_right_subtree_state_26; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_183 = {normal_refill_idx_state_reg_set_left_older_18,
    _normal_refill_idx_state_reg_T_178,_normal_refill_idx_state_reg_T_182}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_184 = normal_refill_idx_state_reg_set_left_older_17 ?
    _normal_refill_idx_state_reg_T_183 : normal_refill_idx_state_reg_right_subtree_state_24; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_185 = {normal_refill_idx_state_reg_set_left_older_17,
    _normal_refill_idx_state_reg_T_173,_normal_refill_idx_state_reg_T_184}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_186 = normal_refill_idx_state_reg_set_left_older_16 ?
    normal_refill_idx_state_reg_left_subtree_state_23 : _normal_refill_idx_state_reg_T_185; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_27 = normal_refill_idx_state_reg_right_subtree_state_23[5:3]
    ; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_27 = normal_refill_idx_state_reg_right_subtree_state_23[2:0
    ]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_28 = normal_refill_idx_state_reg_left_subtree_state_27[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_28 = normal_refill_idx_state_reg_left_subtree_state_27[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_192 = normal_refill_idx_state_reg_set_left_older_18 ?
    normal_refill_idx_state_reg_left_subtree_state_28 : _normal_refill_idx_state_reg_T_113; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_196 = normal_refill_idx_state_reg_set_left_older_18 ?
    _normal_refill_idx_state_reg_T_113 : normal_refill_idx_state_reg_right_subtree_state_28; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_197 = {normal_refill_idx_state_reg_set_left_older_18,
    _normal_refill_idx_state_reg_T_192,_normal_refill_idx_state_reg_T_196}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_198 = normal_refill_idx_state_reg_set_left_older_17 ?
    normal_refill_idx_state_reg_left_subtree_state_27 : _normal_refill_idx_state_reg_T_197; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_29 = normal_refill_idx_state_reg_right_subtree_state_27[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_29 = normal_refill_idx_state_reg_right_subtree_state_27[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_203 = normal_refill_idx_state_reg_set_left_older_18 ?
    normal_refill_idx_state_reg_left_subtree_state_29 : _normal_refill_idx_state_reg_T_113; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_207 = normal_refill_idx_state_reg_set_left_older_18 ?
    _normal_refill_idx_state_reg_T_113 : normal_refill_idx_state_reg_right_subtree_state_29; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_208 = {normal_refill_idx_state_reg_set_left_older_18,
    _normal_refill_idx_state_reg_T_203,_normal_refill_idx_state_reg_T_207}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_209 = normal_refill_idx_state_reg_set_left_older_17 ?
    _normal_refill_idx_state_reg_T_208 : normal_refill_idx_state_reg_right_subtree_state_27; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_210 = {normal_refill_idx_state_reg_set_left_older_17,
    _normal_refill_idx_state_reg_T_198,_normal_refill_idx_state_reg_T_209}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_211 = normal_refill_idx_state_reg_set_left_older_16 ?
    _normal_refill_idx_state_reg_T_210 : normal_refill_idx_state_reg_right_subtree_state_23; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_212 = {normal_refill_idx_state_reg_set_left_older_16,
    _normal_refill_idx_state_reg_T_186,_normal_refill_idx_state_reg_T_211}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_213 = normal_refill_idx_state_reg_set_left_older_15 ?
    _normal_refill_idx_state_reg_T_212 : normal_refill_idx_state_reg_right_subtree_state_15; // @[Replacement.scala 236:16]
  wire [30:0] _normal_refill_idx_state_reg_T_214 = {normal_refill_idx_state_reg_set_left_older_15,
    _normal_refill_idx_state_reg_T_160,_normal_refill_idx_state_reg_T_213}; // @[Cat.scala 31:58]
  wire [30:0] _normal_refill_idx_state_reg_T_215 = normalPage_tlb_normal_fa_io_access_1_touch_ways_valid ?
    _normal_refill_idx_state_reg_T_214 : _normal_refill_idx_state_reg_T_107; // @[Replacement.scala 41:56]
  wire [4:0] normal_refill_idx_state_reg_touch_way_sized_2 = normalPage_tlb_normal_fa_io_access_2_touch_ways_bits; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_set_left_older_30 = ~normal_refill_idx_state_reg_touch_way_sized_2[4]; // @[Replacement.scala 226:33]
  wire [14:0] normal_refill_idx_state_reg_left_subtree_state_30 = _normal_refill_idx_state_reg_T_215[29:15]; // @[package.scala 154:13]
  wire [14:0] normal_refill_idx_state_reg_right_subtree_state_30 = _normal_refill_idx_state_reg_T_215[14:0]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_31 = ~normal_refill_idx_state_reg_touch_way_sized_2[3]; // @[Replacement.scala 226:33]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_31 = normal_refill_idx_state_reg_left_subtree_state_30[13:7]
    ; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_31 = normal_refill_idx_state_reg_left_subtree_state_30[6:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_32 = ~normal_refill_idx_state_reg_touch_way_sized_2[2]; // @[Replacement.scala 226:33]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_32 = normal_refill_idx_state_reg_left_subtree_state_31[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_32 = normal_refill_idx_state_reg_left_subtree_state_31[2:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_33 = ~normal_refill_idx_state_reg_touch_way_sized_2[1]; // @[Replacement.scala 226:33]
  wire  normal_refill_idx_state_reg_left_subtree_state_33 = normal_refill_idx_state_reg_left_subtree_state_32[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_33 = normal_refill_idx_state_reg_left_subtree_state_32[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_221 = ~normal_refill_idx_state_reg_touch_way_sized_2[0]; // @[Replacement.scala 248:7]
  wire  _normal_refill_idx_state_reg_T_222 = normal_refill_idx_state_reg_set_left_older_33 ?
    normal_refill_idx_state_reg_left_subtree_state_33 : _normal_refill_idx_state_reg_T_221; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_226 = normal_refill_idx_state_reg_set_left_older_33 ?
    _normal_refill_idx_state_reg_T_221 : normal_refill_idx_state_reg_right_subtree_state_33; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_227 = {normal_refill_idx_state_reg_set_left_older_33,
    _normal_refill_idx_state_reg_T_222,_normal_refill_idx_state_reg_T_226}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_228 = normal_refill_idx_state_reg_set_left_older_32 ?
    normal_refill_idx_state_reg_left_subtree_state_32 : _normal_refill_idx_state_reg_T_227; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_34 = normal_refill_idx_state_reg_right_subtree_state_32[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_34 = normal_refill_idx_state_reg_right_subtree_state_32[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_233 = normal_refill_idx_state_reg_set_left_older_33 ?
    normal_refill_idx_state_reg_left_subtree_state_34 : _normal_refill_idx_state_reg_T_221; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_237 = normal_refill_idx_state_reg_set_left_older_33 ?
    _normal_refill_idx_state_reg_T_221 : normal_refill_idx_state_reg_right_subtree_state_34; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_238 = {normal_refill_idx_state_reg_set_left_older_33,
    _normal_refill_idx_state_reg_T_233,_normal_refill_idx_state_reg_T_237}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_239 = normal_refill_idx_state_reg_set_left_older_32 ?
    _normal_refill_idx_state_reg_T_238 : normal_refill_idx_state_reg_right_subtree_state_32; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_240 = {normal_refill_idx_state_reg_set_left_older_32,
    _normal_refill_idx_state_reg_T_228,_normal_refill_idx_state_reg_T_239}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_241 = normal_refill_idx_state_reg_set_left_older_31 ?
    normal_refill_idx_state_reg_left_subtree_state_31 : _normal_refill_idx_state_reg_T_240; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_35 = normal_refill_idx_state_reg_right_subtree_state_31[5:3]
    ; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_35 = normal_refill_idx_state_reg_right_subtree_state_31[2:0
    ]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_36 = normal_refill_idx_state_reg_left_subtree_state_35[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_36 = normal_refill_idx_state_reg_left_subtree_state_35[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_247 = normal_refill_idx_state_reg_set_left_older_33 ?
    normal_refill_idx_state_reg_left_subtree_state_36 : _normal_refill_idx_state_reg_T_221; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_251 = normal_refill_idx_state_reg_set_left_older_33 ?
    _normal_refill_idx_state_reg_T_221 : normal_refill_idx_state_reg_right_subtree_state_36; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_252 = {normal_refill_idx_state_reg_set_left_older_33,
    _normal_refill_idx_state_reg_T_247,_normal_refill_idx_state_reg_T_251}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_253 = normal_refill_idx_state_reg_set_left_older_32 ?
    normal_refill_idx_state_reg_left_subtree_state_35 : _normal_refill_idx_state_reg_T_252; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_37 = normal_refill_idx_state_reg_right_subtree_state_35[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_37 = normal_refill_idx_state_reg_right_subtree_state_35[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_258 = normal_refill_idx_state_reg_set_left_older_33 ?
    normal_refill_idx_state_reg_left_subtree_state_37 : _normal_refill_idx_state_reg_T_221; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_262 = normal_refill_idx_state_reg_set_left_older_33 ?
    _normal_refill_idx_state_reg_T_221 : normal_refill_idx_state_reg_right_subtree_state_37; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_263 = {normal_refill_idx_state_reg_set_left_older_33,
    _normal_refill_idx_state_reg_T_258,_normal_refill_idx_state_reg_T_262}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_264 = normal_refill_idx_state_reg_set_left_older_32 ?
    _normal_refill_idx_state_reg_T_263 : normal_refill_idx_state_reg_right_subtree_state_35; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_265 = {normal_refill_idx_state_reg_set_left_older_32,
    _normal_refill_idx_state_reg_T_253,_normal_refill_idx_state_reg_T_264}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_266 = normal_refill_idx_state_reg_set_left_older_31 ?
    _normal_refill_idx_state_reg_T_265 : normal_refill_idx_state_reg_right_subtree_state_31; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_267 = {normal_refill_idx_state_reg_set_left_older_31,
    _normal_refill_idx_state_reg_T_241,_normal_refill_idx_state_reg_T_266}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_268 = normal_refill_idx_state_reg_set_left_older_30 ?
    normal_refill_idx_state_reg_left_subtree_state_30 : _normal_refill_idx_state_reg_T_267; // @[Replacement.scala 233:16]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_38 = normal_refill_idx_state_reg_right_subtree_state_30[13:7
    ]; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_38 = normal_refill_idx_state_reg_right_subtree_state_30[6:0
    ]; // @[Replacement.scala 228:38]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_39 = normal_refill_idx_state_reg_left_subtree_state_38[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_39 = normal_refill_idx_state_reg_left_subtree_state_38[2:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_40 = normal_refill_idx_state_reg_left_subtree_state_39[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_40 = normal_refill_idx_state_reg_left_subtree_state_39[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_275 = normal_refill_idx_state_reg_set_left_older_33 ?
    normal_refill_idx_state_reg_left_subtree_state_40 : _normal_refill_idx_state_reg_T_221; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_279 = normal_refill_idx_state_reg_set_left_older_33 ?
    _normal_refill_idx_state_reg_T_221 : normal_refill_idx_state_reg_right_subtree_state_40; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_280 = {normal_refill_idx_state_reg_set_left_older_33,
    _normal_refill_idx_state_reg_T_275,_normal_refill_idx_state_reg_T_279}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_281 = normal_refill_idx_state_reg_set_left_older_32 ?
    normal_refill_idx_state_reg_left_subtree_state_39 : _normal_refill_idx_state_reg_T_280; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_41 = normal_refill_idx_state_reg_right_subtree_state_39[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_41 = normal_refill_idx_state_reg_right_subtree_state_39[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_286 = normal_refill_idx_state_reg_set_left_older_33 ?
    normal_refill_idx_state_reg_left_subtree_state_41 : _normal_refill_idx_state_reg_T_221; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_290 = normal_refill_idx_state_reg_set_left_older_33 ?
    _normal_refill_idx_state_reg_T_221 : normal_refill_idx_state_reg_right_subtree_state_41; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_291 = {normal_refill_idx_state_reg_set_left_older_33,
    _normal_refill_idx_state_reg_T_286,_normal_refill_idx_state_reg_T_290}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_292 = normal_refill_idx_state_reg_set_left_older_32 ?
    _normal_refill_idx_state_reg_T_291 : normal_refill_idx_state_reg_right_subtree_state_39; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_293 = {normal_refill_idx_state_reg_set_left_older_32,
    _normal_refill_idx_state_reg_T_281,_normal_refill_idx_state_reg_T_292}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_294 = normal_refill_idx_state_reg_set_left_older_31 ?
    normal_refill_idx_state_reg_left_subtree_state_38 : _normal_refill_idx_state_reg_T_293; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_42 = normal_refill_idx_state_reg_right_subtree_state_38[5:3]
    ; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_42 = normal_refill_idx_state_reg_right_subtree_state_38[2:0
    ]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_43 = normal_refill_idx_state_reg_left_subtree_state_42[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_43 = normal_refill_idx_state_reg_left_subtree_state_42[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_300 = normal_refill_idx_state_reg_set_left_older_33 ?
    normal_refill_idx_state_reg_left_subtree_state_43 : _normal_refill_idx_state_reg_T_221; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_304 = normal_refill_idx_state_reg_set_left_older_33 ?
    _normal_refill_idx_state_reg_T_221 : normal_refill_idx_state_reg_right_subtree_state_43; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_305 = {normal_refill_idx_state_reg_set_left_older_33,
    _normal_refill_idx_state_reg_T_300,_normal_refill_idx_state_reg_T_304}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_306 = normal_refill_idx_state_reg_set_left_older_32 ?
    normal_refill_idx_state_reg_left_subtree_state_42 : _normal_refill_idx_state_reg_T_305; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_44 = normal_refill_idx_state_reg_right_subtree_state_42[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_44 = normal_refill_idx_state_reg_right_subtree_state_42[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_311 = normal_refill_idx_state_reg_set_left_older_33 ?
    normal_refill_idx_state_reg_left_subtree_state_44 : _normal_refill_idx_state_reg_T_221; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_315 = normal_refill_idx_state_reg_set_left_older_33 ?
    _normal_refill_idx_state_reg_T_221 : normal_refill_idx_state_reg_right_subtree_state_44; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_316 = {normal_refill_idx_state_reg_set_left_older_33,
    _normal_refill_idx_state_reg_T_311,_normal_refill_idx_state_reg_T_315}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_317 = normal_refill_idx_state_reg_set_left_older_32 ?
    _normal_refill_idx_state_reg_T_316 : normal_refill_idx_state_reg_right_subtree_state_42; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_318 = {normal_refill_idx_state_reg_set_left_older_32,
    _normal_refill_idx_state_reg_T_306,_normal_refill_idx_state_reg_T_317}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_319 = normal_refill_idx_state_reg_set_left_older_31 ?
    _normal_refill_idx_state_reg_T_318 : normal_refill_idx_state_reg_right_subtree_state_38; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_320 = {normal_refill_idx_state_reg_set_left_older_31,
    _normal_refill_idx_state_reg_T_294,_normal_refill_idx_state_reg_T_319}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_321 = normal_refill_idx_state_reg_set_left_older_30 ?
    _normal_refill_idx_state_reg_T_320 : normal_refill_idx_state_reg_right_subtree_state_30; // @[Replacement.scala 236:16]
  wire [30:0] _normal_refill_idx_state_reg_T_322 = {normal_refill_idx_state_reg_set_left_older_30,
    _normal_refill_idx_state_reg_T_268,_normal_refill_idx_state_reg_T_321}; // @[Cat.scala 31:58]
  wire [30:0] _normal_refill_idx_state_reg_T_323 = normalPage_tlb_normal_fa_io_access_2_touch_ways_valid ?
    _normal_refill_idx_state_reg_T_322 : _normal_refill_idx_state_reg_T_215; // @[Replacement.scala 41:56]
  wire [4:0] normal_refill_idx_state_reg_touch_way_sized_3 = normalPage_tlb_normal_fa_io_access_3_touch_ways_bits; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_set_left_older_45 = ~normal_refill_idx_state_reg_touch_way_sized_3[4]; // @[Replacement.scala 226:33]
  wire [14:0] normal_refill_idx_state_reg_left_subtree_state_45 = _normal_refill_idx_state_reg_T_323[29:15]; // @[package.scala 154:13]
  wire [14:0] normal_refill_idx_state_reg_right_subtree_state_45 = _normal_refill_idx_state_reg_T_323[14:0]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_46 = ~normal_refill_idx_state_reg_touch_way_sized_3[3]; // @[Replacement.scala 226:33]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_46 = normal_refill_idx_state_reg_left_subtree_state_45[13:7]
    ; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_46 = normal_refill_idx_state_reg_left_subtree_state_45[6:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_47 = ~normal_refill_idx_state_reg_touch_way_sized_3[2]; // @[Replacement.scala 226:33]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_47 = normal_refill_idx_state_reg_left_subtree_state_46[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_47 = normal_refill_idx_state_reg_left_subtree_state_46[2:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_48 = ~normal_refill_idx_state_reg_touch_way_sized_3[1]; // @[Replacement.scala 226:33]
  wire  normal_refill_idx_state_reg_left_subtree_state_48 = normal_refill_idx_state_reg_left_subtree_state_47[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_48 = normal_refill_idx_state_reg_left_subtree_state_47[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_329 = ~normal_refill_idx_state_reg_touch_way_sized_3[0]; // @[Replacement.scala 248:7]
  wire  _normal_refill_idx_state_reg_T_330 = normal_refill_idx_state_reg_set_left_older_48 ?
    normal_refill_idx_state_reg_left_subtree_state_48 : _normal_refill_idx_state_reg_T_329; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_334 = normal_refill_idx_state_reg_set_left_older_48 ?
    _normal_refill_idx_state_reg_T_329 : normal_refill_idx_state_reg_right_subtree_state_48; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_335 = {normal_refill_idx_state_reg_set_left_older_48,
    _normal_refill_idx_state_reg_T_330,_normal_refill_idx_state_reg_T_334}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_336 = normal_refill_idx_state_reg_set_left_older_47 ?
    normal_refill_idx_state_reg_left_subtree_state_47 : _normal_refill_idx_state_reg_T_335; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_49 = normal_refill_idx_state_reg_right_subtree_state_47[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_49 = normal_refill_idx_state_reg_right_subtree_state_47[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_341 = normal_refill_idx_state_reg_set_left_older_48 ?
    normal_refill_idx_state_reg_left_subtree_state_49 : _normal_refill_idx_state_reg_T_329; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_345 = normal_refill_idx_state_reg_set_left_older_48 ?
    _normal_refill_idx_state_reg_T_329 : normal_refill_idx_state_reg_right_subtree_state_49; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_346 = {normal_refill_idx_state_reg_set_left_older_48,
    _normal_refill_idx_state_reg_T_341,_normal_refill_idx_state_reg_T_345}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_347 = normal_refill_idx_state_reg_set_left_older_47 ?
    _normal_refill_idx_state_reg_T_346 : normal_refill_idx_state_reg_right_subtree_state_47; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_348 = {normal_refill_idx_state_reg_set_left_older_47,
    _normal_refill_idx_state_reg_T_336,_normal_refill_idx_state_reg_T_347}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_349 = normal_refill_idx_state_reg_set_left_older_46 ?
    normal_refill_idx_state_reg_left_subtree_state_46 : _normal_refill_idx_state_reg_T_348; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_50 = normal_refill_idx_state_reg_right_subtree_state_46[5:3]
    ; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_50 = normal_refill_idx_state_reg_right_subtree_state_46[2:0
    ]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_51 = normal_refill_idx_state_reg_left_subtree_state_50[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_51 = normal_refill_idx_state_reg_left_subtree_state_50[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_355 = normal_refill_idx_state_reg_set_left_older_48 ?
    normal_refill_idx_state_reg_left_subtree_state_51 : _normal_refill_idx_state_reg_T_329; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_359 = normal_refill_idx_state_reg_set_left_older_48 ?
    _normal_refill_idx_state_reg_T_329 : normal_refill_idx_state_reg_right_subtree_state_51; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_360 = {normal_refill_idx_state_reg_set_left_older_48,
    _normal_refill_idx_state_reg_T_355,_normal_refill_idx_state_reg_T_359}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_361 = normal_refill_idx_state_reg_set_left_older_47 ?
    normal_refill_idx_state_reg_left_subtree_state_50 : _normal_refill_idx_state_reg_T_360; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_52 = normal_refill_idx_state_reg_right_subtree_state_50[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_52 = normal_refill_idx_state_reg_right_subtree_state_50[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_366 = normal_refill_idx_state_reg_set_left_older_48 ?
    normal_refill_idx_state_reg_left_subtree_state_52 : _normal_refill_idx_state_reg_T_329; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_370 = normal_refill_idx_state_reg_set_left_older_48 ?
    _normal_refill_idx_state_reg_T_329 : normal_refill_idx_state_reg_right_subtree_state_52; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_371 = {normal_refill_idx_state_reg_set_left_older_48,
    _normal_refill_idx_state_reg_T_366,_normal_refill_idx_state_reg_T_370}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_372 = normal_refill_idx_state_reg_set_left_older_47 ?
    _normal_refill_idx_state_reg_T_371 : normal_refill_idx_state_reg_right_subtree_state_50; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_373 = {normal_refill_idx_state_reg_set_left_older_47,
    _normal_refill_idx_state_reg_T_361,_normal_refill_idx_state_reg_T_372}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_374 = normal_refill_idx_state_reg_set_left_older_46 ?
    _normal_refill_idx_state_reg_T_373 : normal_refill_idx_state_reg_right_subtree_state_46; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_375 = {normal_refill_idx_state_reg_set_left_older_46,
    _normal_refill_idx_state_reg_T_349,_normal_refill_idx_state_reg_T_374}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_376 = normal_refill_idx_state_reg_set_left_older_45 ?
    normal_refill_idx_state_reg_left_subtree_state_45 : _normal_refill_idx_state_reg_T_375; // @[Replacement.scala 233:16]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_53 = normal_refill_idx_state_reg_right_subtree_state_45[13:7
    ]; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_53 = normal_refill_idx_state_reg_right_subtree_state_45[6:0
    ]; // @[Replacement.scala 228:38]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_54 = normal_refill_idx_state_reg_left_subtree_state_53[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_54 = normal_refill_idx_state_reg_left_subtree_state_53[2:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_55 = normal_refill_idx_state_reg_left_subtree_state_54[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_55 = normal_refill_idx_state_reg_left_subtree_state_54[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_383 = normal_refill_idx_state_reg_set_left_older_48 ?
    normal_refill_idx_state_reg_left_subtree_state_55 : _normal_refill_idx_state_reg_T_329; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_387 = normal_refill_idx_state_reg_set_left_older_48 ?
    _normal_refill_idx_state_reg_T_329 : normal_refill_idx_state_reg_right_subtree_state_55; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_388 = {normal_refill_idx_state_reg_set_left_older_48,
    _normal_refill_idx_state_reg_T_383,_normal_refill_idx_state_reg_T_387}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_389 = normal_refill_idx_state_reg_set_left_older_47 ?
    normal_refill_idx_state_reg_left_subtree_state_54 : _normal_refill_idx_state_reg_T_388; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_56 = normal_refill_idx_state_reg_right_subtree_state_54[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_56 = normal_refill_idx_state_reg_right_subtree_state_54[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_394 = normal_refill_idx_state_reg_set_left_older_48 ?
    normal_refill_idx_state_reg_left_subtree_state_56 : _normal_refill_idx_state_reg_T_329; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_398 = normal_refill_idx_state_reg_set_left_older_48 ?
    _normal_refill_idx_state_reg_T_329 : normal_refill_idx_state_reg_right_subtree_state_56; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_399 = {normal_refill_idx_state_reg_set_left_older_48,
    _normal_refill_idx_state_reg_T_394,_normal_refill_idx_state_reg_T_398}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_400 = normal_refill_idx_state_reg_set_left_older_47 ?
    _normal_refill_idx_state_reg_T_399 : normal_refill_idx_state_reg_right_subtree_state_54; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_401 = {normal_refill_idx_state_reg_set_left_older_47,
    _normal_refill_idx_state_reg_T_389,_normal_refill_idx_state_reg_T_400}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_402 = normal_refill_idx_state_reg_set_left_older_46 ?
    normal_refill_idx_state_reg_left_subtree_state_53 : _normal_refill_idx_state_reg_T_401; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_57 = normal_refill_idx_state_reg_right_subtree_state_53[5:3]
    ; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_57 = normal_refill_idx_state_reg_right_subtree_state_53[2:0
    ]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_58 = normal_refill_idx_state_reg_left_subtree_state_57[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_58 = normal_refill_idx_state_reg_left_subtree_state_57[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_408 = normal_refill_idx_state_reg_set_left_older_48 ?
    normal_refill_idx_state_reg_left_subtree_state_58 : _normal_refill_idx_state_reg_T_329; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_412 = normal_refill_idx_state_reg_set_left_older_48 ?
    _normal_refill_idx_state_reg_T_329 : normal_refill_idx_state_reg_right_subtree_state_58; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_413 = {normal_refill_idx_state_reg_set_left_older_48,
    _normal_refill_idx_state_reg_T_408,_normal_refill_idx_state_reg_T_412}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_414 = normal_refill_idx_state_reg_set_left_older_47 ?
    normal_refill_idx_state_reg_left_subtree_state_57 : _normal_refill_idx_state_reg_T_413; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_59 = normal_refill_idx_state_reg_right_subtree_state_57[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_59 = normal_refill_idx_state_reg_right_subtree_state_57[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_419 = normal_refill_idx_state_reg_set_left_older_48 ?
    normal_refill_idx_state_reg_left_subtree_state_59 : _normal_refill_idx_state_reg_T_329; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_423 = normal_refill_idx_state_reg_set_left_older_48 ?
    _normal_refill_idx_state_reg_T_329 : normal_refill_idx_state_reg_right_subtree_state_59; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_424 = {normal_refill_idx_state_reg_set_left_older_48,
    _normal_refill_idx_state_reg_T_419,_normal_refill_idx_state_reg_T_423}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_425 = normal_refill_idx_state_reg_set_left_older_47 ?
    _normal_refill_idx_state_reg_T_424 : normal_refill_idx_state_reg_right_subtree_state_57; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_426 = {normal_refill_idx_state_reg_set_left_older_47,
    _normal_refill_idx_state_reg_T_414,_normal_refill_idx_state_reg_T_425}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_427 = normal_refill_idx_state_reg_set_left_older_46 ?
    _normal_refill_idx_state_reg_T_426 : normal_refill_idx_state_reg_right_subtree_state_53; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_428 = {normal_refill_idx_state_reg_set_left_older_46,
    _normal_refill_idx_state_reg_T_402,_normal_refill_idx_state_reg_T_427}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_429 = normal_refill_idx_state_reg_set_left_older_45 ?
    _normal_refill_idx_state_reg_T_428 : normal_refill_idx_state_reg_right_subtree_state_45; // @[Replacement.scala 236:16]
  wire [30:0] _normal_refill_idx_state_reg_T_430 = {normal_refill_idx_state_reg_set_left_older_45,
    _normal_refill_idx_state_reg_T_376,_normal_refill_idx_state_reg_T_429}; // @[Cat.scala 31:58]
  wire [30:0] _normal_refill_idx_state_reg_T_431 = normalPage_tlb_normal_fa_io_access_3_touch_ways_valid ?
    _normal_refill_idx_state_reg_T_430 : _normal_refill_idx_state_reg_T_323; // @[Replacement.scala 41:56]
  wire [4:0] normal_refill_idx_state_reg_touch_way_sized_4 = normalPage_tlb_normal_fa_io_access_4_touch_ways_bits; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_set_left_older_60 = ~normal_refill_idx_state_reg_touch_way_sized_4[4]; // @[Replacement.scala 226:33]
  wire [14:0] normal_refill_idx_state_reg_left_subtree_state_60 = _normal_refill_idx_state_reg_T_431[29:15]; // @[package.scala 154:13]
  wire [14:0] normal_refill_idx_state_reg_right_subtree_state_60 = _normal_refill_idx_state_reg_T_431[14:0]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_61 = ~normal_refill_idx_state_reg_touch_way_sized_4[3]; // @[Replacement.scala 226:33]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_61 = normal_refill_idx_state_reg_left_subtree_state_60[13:7]
    ; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_61 = normal_refill_idx_state_reg_left_subtree_state_60[6:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_62 = ~normal_refill_idx_state_reg_touch_way_sized_4[2]; // @[Replacement.scala 226:33]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_62 = normal_refill_idx_state_reg_left_subtree_state_61[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_62 = normal_refill_idx_state_reg_left_subtree_state_61[2:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_63 = ~normal_refill_idx_state_reg_touch_way_sized_4[1]; // @[Replacement.scala 226:33]
  wire  normal_refill_idx_state_reg_left_subtree_state_63 = normal_refill_idx_state_reg_left_subtree_state_62[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_63 = normal_refill_idx_state_reg_left_subtree_state_62[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_437 = ~normal_refill_idx_state_reg_touch_way_sized_4[0]; // @[Replacement.scala 248:7]
  wire  _normal_refill_idx_state_reg_T_438 = normal_refill_idx_state_reg_set_left_older_63 ?
    normal_refill_idx_state_reg_left_subtree_state_63 : _normal_refill_idx_state_reg_T_437; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_442 = normal_refill_idx_state_reg_set_left_older_63 ?
    _normal_refill_idx_state_reg_T_437 : normal_refill_idx_state_reg_right_subtree_state_63; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_443 = {normal_refill_idx_state_reg_set_left_older_63,
    _normal_refill_idx_state_reg_T_438,_normal_refill_idx_state_reg_T_442}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_444 = normal_refill_idx_state_reg_set_left_older_62 ?
    normal_refill_idx_state_reg_left_subtree_state_62 : _normal_refill_idx_state_reg_T_443; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_64 = normal_refill_idx_state_reg_right_subtree_state_62[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_64 = normal_refill_idx_state_reg_right_subtree_state_62[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_449 = normal_refill_idx_state_reg_set_left_older_63 ?
    normal_refill_idx_state_reg_left_subtree_state_64 : _normal_refill_idx_state_reg_T_437; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_453 = normal_refill_idx_state_reg_set_left_older_63 ?
    _normal_refill_idx_state_reg_T_437 : normal_refill_idx_state_reg_right_subtree_state_64; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_454 = {normal_refill_idx_state_reg_set_left_older_63,
    _normal_refill_idx_state_reg_T_449,_normal_refill_idx_state_reg_T_453}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_455 = normal_refill_idx_state_reg_set_left_older_62 ?
    _normal_refill_idx_state_reg_T_454 : normal_refill_idx_state_reg_right_subtree_state_62; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_456 = {normal_refill_idx_state_reg_set_left_older_62,
    _normal_refill_idx_state_reg_T_444,_normal_refill_idx_state_reg_T_455}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_457 = normal_refill_idx_state_reg_set_left_older_61 ?
    normal_refill_idx_state_reg_left_subtree_state_61 : _normal_refill_idx_state_reg_T_456; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_65 = normal_refill_idx_state_reg_right_subtree_state_61[5:3]
    ; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_65 = normal_refill_idx_state_reg_right_subtree_state_61[2:0
    ]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_66 = normal_refill_idx_state_reg_left_subtree_state_65[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_66 = normal_refill_idx_state_reg_left_subtree_state_65[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_463 = normal_refill_idx_state_reg_set_left_older_63 ?
    normal_refill_idx_state_reg_left_subtree_state_66 : _normal_refill_idx_state_reg_T_437; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_467 = normal_refill_idx_state_reg_set_left_older_63 ?
    _normal_refill_idx_state_reg_T_437 : normal_refill_idx_state_reg_right_subtree_state_66; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_468 = {normal_refill_idx_state_reg_set_left_older_63,
    _normal_refill_idx_state_reg_T_463,_normal_refill_idx_state_reg_T_467}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_469 = normal_refill_idx_state_reg_set_left_older_62 ?
    normal_refill_idx_state_reg_left_subtree_state_65 : _normal_refill_idx_state_reg_T_468; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_67 = normal_refill_idx_state_reg_right_subtree_state_65[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_67 = normal_refill_idx_state_reg_right_subtree_state_65[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_474 = normal_refill_idx_state_reg_set_left_older_63 ?
    normal_refill_idx_state_reg_left_subtree_state_67 : _normal_refill_idx_state_reg_T_437; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_478 = normal_refill_idx_state_reg_set_left_older_63 ?
    _normal_refill_idx_state_reg_T_437 : normal_refill_idx_state_reg_right_subtree_state_67; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_479 = {normal_refill_idx_state_reg_set_left_older_63,
    _normal_refill_idx_state_reg_T_474,_normal_refill_idx_state_reg_T_478}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_480 = normal_refill_idx_state_reg_set_left_older_62 ?
    _normal_refill_idx_state_reg_T_479 : normal_refill_idx_state_reg_right_subtree_state_65; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_481 = {normal_refill_idx_state_reg_set_left_older_62,
    _normal_refill_idx_state_reg_T_469,_normal_refill_idx_state_reg_T_480}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_482 = normal_refill_idx_state_reg_set_left_older_61 ?
    _normal_refill_idx_state_reg_T_481 : normal_refill_idx_state_reg_right_subtree_state_61; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_483 = {normal_refill_idx_state_reg_set_left_older_61,
    _normal_refill_idx_state_reg_T_457,_normal_refill_idx_state_reg_T_482}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_484 = normal_refill_idx_state_reg_set_left_older_60 ?
    normal_refill_idx_state_reg_left_subtree_state_60 : _normal_refill_idx_state_reg_T_483; // @[Replacement.scala 233:16]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_68 = normal_refill_idx_state_reg_right_subtree_state_60[13:7
    ]; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_68 = normal_refill_idx_state_reg_right_subtree_state_60[6:0
    ]; // @[Replacement.scala 228:38]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_69 = normal_refill_idx_state_reg_left_subtree_state_68[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_69 = normal_refill_idx_state_reg_left_subtree_state_68[2:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_70 = normal_refill_idx_state_reg_left_subtree_state_69[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_70 = normal_refill_idx_state_reg_left_subtree_state_69[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_491 = normal_refill_idx_state_reg_set_left_older_63 ?
    normal_refill_idx_state_reg_left_subtree_state_70 : _normal_refill_idx_state_reg_T_437; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_495 = normal_refill_idx_state_reg_set_left_older_63 ?
    _normal_refill_idx_state_reg_T_437 : normal_refill_idx_state_reg_right_subtree_state_70; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_496 = {normal_refill_idx_state_reg_set_left_older_63,
    _normal_refill_idx_state_reg_T_491,_normal_refill_idx_state_reg_T_495}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_497 = normal_refill_idx_state_reg_set_left_older_62 ?
    normal_refill_idx_state_reg_left_subtree_state_69 : _normal_refill_idx_state_reg_T_496; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_71 = normal_refill_idx_state_reg_right_subtree_state_69[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_71 = normal_refill_idx_state_reg_right_subtree_state_69[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_502 = normal_refill_idx_state_reg_set_left_older_63 ?
    normal_refill_idx_state_reg_left_subtree_state_71 : _normal_refill_idx_state_reg_T_437; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_506 = normal_refill_idx_state_reg_set_left_older_63 ?
    _normal_refill_idx_state_reg_T_437 : normal_refill_idx_state_reg_right_subtree_state_71; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_507 = {normal_refill_idx_state_reg_set_left_older_63,
    _normal_refill_idx_state_reg_T_502,_normal_refill_idx_state_reg_T_506}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_508 = normal_refill_idx_state_reg_set_left_older_62 ?
    _normal_refill_idx_state_reg_T_507 : normal_refill_idx_state_reg_right_subtree_state_69; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_509 = {normal_refill_idx_state_reg_set_left_older_62,
    _normal_refill_idx_state_reg_T_497,_normal_refill_idx_state_reg_T_508}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_510 = normal_refill_idx_state_reg_set_left_older_61 ?
    normal_refill_idx_state_reg_left_subtree_state_68 : _normal_refill_idx_state_reg_T_509; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_72 = normal_refill_idx_state_reg_right_subtree_state_68[5:3]
    ; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_72 = normal_refill_idx_state_reg_right_subtree_state_68[2:0
    ]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_73 = normal_refill_idx_state_reg_left_subtree_state_72[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_73 = normal_refill_idx_state_reg_left_subtree_state_72[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_516 = normal_refill_idx_state_reg_set_left_older_63 ?
    normal_refill_idx_state_reg_left_subtree_state_73 : _normal_refill_idx_state_reg_T_437; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_520 = normal_refill_idx_state_reg_set_left_older_63 ?
    _normal_refill_idx_state_reg_T_437 : normal_refill_idx_state_reg_right_subtree_state_73; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_521 = {normal_refill_idx_state_reg_set_left_older_63,
    _normal_refill_idx_state_reg_T_516,_normal_refill_idx_state_reg_T_520}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_522 = normal_refill_idx_state_reg_set_left_older_62 ?
    normal_refill_idx_state_reg_left_subtree_state_72 : _normal_refill_idx_state_reg_T_521; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_74 = normal_refill_idx_state_reg_right_subtree_state_72[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_74 = normal_refill_idx_state_reg_right_subtree_state_72[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_527 = normal_refill_idx_state_reg_set_left_older_63 ?
    normal_refill_idx_state_reg_left_subtree_state_74 : _normal_refill_idx_state_reg_T_437; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_531 = normal_refill_idx_state_reg_set_left_older_63 ?
    _normal_refill_idx_state_reg_T_437 : normal_refill_idx_state_reg_right_subtree_state_74; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_532 = {normal_refill_idx_state_reg_set_left_older_63,
    _normal_refill_idx_state_reg_T_527,_normal_refill_idx_state_reg_T_531}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_533 = normal_refill_idx_state_reg_set_left_older_62 ?
    _normal_refill_idx_state_reg_T_532 : normal_refill_idx_state_reg_right_subtree_state_72; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_534 = {normal_refill_idx_state_reg_set_left_older_62,
    _normal_refill_idx_state_reg_T_522,_normal_refill_idx_state_reg_T_533}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_535 = normal_refill_idx_state_reg_set_left_older_61 ?
    _normal_refill_idx_state_reg_T_534 : normal_refill_idx_state_reg_right_subtree_state_68; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_536 = {normal_refill_idx_state_reg_set_left_older_61,
    _normal_refill_idx_state_reg_T_510,_normal_refill_idx_state_reg_T_535}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_537 = normal_refill_idx_state_reg_set_left_older_60 ?
    _normal_refill_idx_state_reg_T_536 : normal_refill_idx_state_reg_right_subtree_state_60; // @[Replacement.scala 236:16]
  wire [30:0] _normal_refill_idx_state_reg_T_538 = {normal_refill_idx_state_reg_set_left_older_60,
    _normal_refill_idx_state_reg_T_484,_normal_refill_idx_state_reg_T_537}; // @[Cat.scala 31:58]
  wire [30:0] _normal_refill_idx_state_reg_T_539 = normalPage_tlb_normal_fa_io_access_4_touch_ways_valid ?
    _normal_refill_idx_state_reg_T_538 : _normal_refill_idx_state_reg_T_431; // @[Replacement.scala 41:56]
  wire [4:0] normal_refill_idx_state_reg_touch_way_sized_5 = normalPage_tlb_normal_fa_io_access_5_touch_ways_bits; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_set_left_older_75 = ~normal_refill_idx_state_reg_touch_way_sized_5[4]; // @[Replacement.scala 226:33]
  wire [14:0] normal_refill_idx_state_reg_left_subtree_state_75 = _normal_refill_idx_state_reg_T_539[29:15]; // @[package.scala 154:13]
  wire [14:0] normal_refill_idx_state_reg_right_subtree_state_75 = _normal_refill_idx_state_reg_T_539[14:0]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_76 = ~normal_refill_idx_state_reg_touch_way_sized_5[3]; // @[Replacement.scala 226:33]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_76 = normal_refill_idx_state_reg_left_subtree_state_75[13:7]
    ; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_76 = normal_refill_idx_state_reg_left_subtree_state_75[6:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_77 = ~normal_refill_idx_state_reg_touch_way_sized_5[2]; // @[Replacement.scala 226:33]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_77 = normal_refill_idx_state_reg_left_subtree_state_76[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_77 = normal_refill_idx_state_reg_left_subtree_state_76[2:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_set_left_older_78 = ~normal_refill_idx_state_reg_touch_way_sized_5[1]; // @[Replacement.scala 226:33]
  wire  normal_refill_idx_state_reg_left_subtree_state_78 = normal_refill_idx_state_reg_left_subtree_state_77[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_78 = normal_refill_idx_state_reg_left_subtree_state_77[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_545 = ~normal_refill_idx_state_reg_touch_way_sized_5[0]; // @[Replacement.scala 248:7]
  wire  _normal_refill_idx_state_reg_T_546 = normal_refill_idx_state_reg_set_left_older_78 ?
    normal_refill_idx_state_reg_left_subtree_state_78 : _normal_refill_idx_state_reg_T_545; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_550 = normal_refill_idx_state_reg_set_left_older_78 ?
    _normal_refill_idx_state_reg_T_545 : normal_refill_idx_state_reg_right_subtree_state_78; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_551 = {normal_refill_idx_state_reg_set_left_older_78,
    _normal_refill_idx_state_reg_T_546,_normal_refill_idx_state_reg_T_550}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_552 = normal_refill_idx_state_reg_set_left_older_77 ?
    normal_refill_idx_state_reg_left_subtree_state_77 : _normal_refill_idx_state_reg_T_551; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_79 = normal_refill_idx_state_reg_right_subtree_state_77[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_79 = normal_refill_idx_state_reg_right_subtree_state_77[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_557 = normal_refill_idx_state_reg_set_left_older_78 ?
    normal_refill_idx_state_reg_left_subtree_state_79 : _normal_refill_idx_state_reg_T_545; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_561 = normal_refill_idx_state_reg_set_left_older_78 ?
    _normal_refill_idx_state_reg_T_545 : normal_refill_idx_state_reg_right_subtree_state_79; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_562 = {normal_refill_idx_state_reg_set_left_older_78,
    _normal_refill_idx_state_reg_T_557,_normal_refill_idx_state_reg_T_561}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_563 = normal_refill_idx_state_reg_set_left_older_77 ?
    _normal_refill_idx_state_reg_T_562 : normal_refill_idx_state_reg_right_subtree_state_77; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_564 = {normal_refill_idx_state_reg_set_left_older_77,
    _normal_refill_idx_state_reg_T_552,_normal_refill_idx_state_reg_T_563}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_565 = normal_refill_idx_state_reg_set_left_older_76 ?
    normal_refill_idx_state_reg_left_subtree_state_76 : _normal_refill_idx_state_reg_T_564; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_80 = normal_refill_idx_state_reg_right_subtree_state_76[5:3]
    ; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_80 = normal_refill_idx_state_reg_right_subtree_state_76[2:0
    ]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_81 = normal_refill_idx_state_reg_left_subtree_state_80[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_81 = normal_refill_idx_state_reg_left_subtree_state_80[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_571 = normal_refill_idx_state_reg_set_left_older_78 ?
    normal_refill_idx_state_reg_left_subtree_state_81 : _normal_refill_idx_state_reg_T_545; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_575 = normal_refill_idx_state_reg_set_left_older_78 ?
    _normal_refill_idx_state_reg_T_545 : normal_refill_idx_state_reg_right_subtree_state_81; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_576 = {normal_refill_idx_state_reg_set_left_older_78,
    _normal_refill_idx_state_reg_T_571,_normal_refill_idx_state_reg_T_575}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_577 = normal_refill_idx_state_reg_set_left_older_77 ?
    normal_refill_idx_state_reg_left_subtree_state_80 : _normal_refill_idx_state_reg_T_576; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_82 = normal_refill_idx_state_reg_right_subtree_state_80[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_82 = normal_refill_idx_state_reg_right_subtree_state_80[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_582 = normal_refill_idx_state_reg_set_left_older_78 ?
    normal_refill_idx_state_reg_left_subtree_state_82 : _normal_refill_idx_state_reg_T_545; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_586 = normal_refill_idx_state_reg_set_left_older_78 ?
    _normal_refill_idx_state_reg_T_545 : normal_refill_idx_state_reg_right_subtree_state_82; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_587 = {normal_refill_idx_state_reg_set_left_older_78,
    _normal_refill_idx_state_reg_T_582,_normal_refill_idx_state_reg_T_586}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_588 = normal_refill_idx_state_reg_set_left_older_77 ?
    _normal_refill_idx_state_reg_T_587 : normal_refill_idx_state_reg_right_subtree_state_80; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_589 = {normal_refill_idx_state_reg_set_left_older_77,
    _normal_refill_idx_state_reg_T_577,_normal_refill_idx_state_reg_T_588}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_590 = normal_refill_idx_state_reg_set_left_older_76 ?
    _normal_refill_idx_state_reg_T_589 : normal_refill_idx_state_reg_right_subtree_state_76; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_591 = {normal_refill_idx_state_reg_set_left_older_76,
    _normal_refill_idx_state_reg_T_565,_normal_refill_idx_state_reg_T_590}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_592 = normal_refill_idx_state_reg_set_left_older_75 ?
    normal_refill_idx_state_reg_left_subtree_state_75 : _normal_refill_idx_state_reg_T_591; // @[Replacement.scala 233:16]
  wire [6:0] normal_refill_idx_state_reg_left_subtree_state_83 = normal_refill_idx_state_reg_right_subtree_state_75[13:7
    ]; // @[package.scala 154:13]
  wire [6:0] normal_refill_idx_state_reg_right_subtree_state_83 = normal_refill_idx_state_reg_right_subtree_state_75[6:0
    ]; // @[Replacement.scala 228:38]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_84 = normal_refill_idx_state_reg_left_subtree_state_83[5:3]; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_84 = normal_refill_idx_state_reg_left_subtree_state_83[2:0]
    ; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_85 = normal_refill_idx_state_reg_left_subtree_state_84[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_85 = normal_refill_idx_state_reg_left_subtree_state_84[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_599 = normal_refill_idx_state_reg_set_left_older_78 ?
    normal_refill_idx_state_reg_left_subtree_state_85 : _normal_refill_idx_state_reg_T_545; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_603 = normal_refill_idx_state_reg_set_left_older_78 ?
    _normal_refill_idx_state_reg_T_545 : normal_refill_idx_state_reg_right_subtree_state_85; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_604 = {normal_refill_idx_state_reg_set_left_older_78,
    _normal_refill_idx_state_reg_T_599,_normal_refill_idx_state_reg_T_603}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_605 = normal_refill_idx_state_reg_set_left_older_77 ?
    normal_refill_idx_state_reg_left_subtree_state_84 : _normal_refill_idx_state_reg_T_604; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_86 = normal_refill_idx_state_reg_right_subtree_state_84[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_86 = normal_refill_idx_state_reg_right_subtree_state_84[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_610 = normal_refill_idx_state_reg_set_left_older_78 ?
    normal_refill_idx_state_reg_left_subtree_state_86 : _normal_refill_idx_state_reg_T_545; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_614 = normal_refill_idx_state_reg_set_left_older_78 ?
    _normal_refill_idx_state_reg_T_545 : normal_refill_idx_state_reg_right_subtree_state_86; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_615 = {normal_refill_idx_state_reg_set_left_older_78,
    _normal_refill_idx_state_reg_T_610,_normal_refill_idx_state_reg_T_614}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_616 = normal_refill_idx_state_reg_set_left_older_77 ?
    _normal_refill_idx_state_reg_T_615 : normal_refill_idx_state_reg_right_subtree_state_84; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_617 = {normal_refill_idx_state_reg_set_left_older_77,
    _normal_refill_idx_state_reg_T_605,_normal_refill_idx_state_reg_T_616}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_618 = normal_refill_idx_state_reg_set_left_older_76 ?
    normal_refill_idx_state_reg_left_subtree_state_83 : _normal_refill_idx_state_reg_T_617; // @[Replacement.scala 233:16]
  wire [2:0] normal_refill_idx_state_reg_left_subtree_state_87 = normal_refill_idx_state_reg_right_subtree_state_83[5:3]
    ; // @[package.scala 154:13]
  wire [2:0] normal_refill_idx_state_reg_right_subtree_state_87 = normal_refill_idx_state_reg_right_subtree_state_83[2:0
    ]; // @[Replacement.scala 228:38]
  wire  normal_refill_idx_state_reg_left_subtree_state_88 = normal_refill_idx_state_reg_left_subtree_state_87[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_88 = normal_refill_idx_state_reg_left_subtree_state_87[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_624 = normal_refill_idx_state_reg_set_left_older_78 ?
    normal_refill_idx_state_reg_left_subtree_state_88 : _normal_refill_idx_state_reg_T_545; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_628 = normal_refill_idx_state_reg_set_left_older_78 ?
    _normal_refill_idx_state_reg_T_545 : normal_refill_idx_state_reg_right_subtree_state_88; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_629 = {normal_refill_idx_state_reg_set_left_older_78,
    _normal_refill_idx_state_reg_T_624,_normal_refill_idx_state_reg_T_628}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_630 = normal_refill_idx_state_reg_set_left_older_77 ?
    normal_refill_idx_state_reg_left_subtree_state_87 : _normal_refill_idx_state_reg_T_629; // @[Replacement.scala 233:16]
  wire  normal_refill_idx_state_reg_left_subtree_state_89 = normal_refill_idx_state_reg_right_subtree_state_87[1]; // @[package.scala 154:13]
  wire  normal_refill_idx_state_reg_right_subtree_state_89 = normal_refill_idx_state_reg_right_subtree_state_87[0]; // @[Replacement.scala 228:38]
  wire  _normal_refill_idx_state_reg_T_635 = normal_refill_idx_state_reg_set_left_older_78 ?
    normal_refill_idx_state_reg_left_subtree_state_89 : _normal_refill_idx_state_reg_T_545; // @[Replacement.scala 233:16]
  wire  _normal_refill_idx_state_reg_T_639 = normal_refill_idx_state_reg_set_left_older_78 ?
    _normal_refill_idx_state_reg_T_545 : normal_refill_idx_state_reg_right_subtree_state_89; // @[Replacement.scala 236:16]
  wire [2:0] _normal_refill_idx_state_reg_T_640 = {normal_refill_idx_state_reg_set_left_older_78,
    _normal_refill_idx_state_reg_T_635,_normal_refill_idx_state_reg_T_639}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_state_reg_T_641 = normal_refill_idx_state_reg_set_left_older_77 ?
    _normal_refill_idx_state_reg_T_640 : normal_refill_idx_state_reg_right_subtree_state_87; // @[Replacement.scala 236:16]
  wire [6:0] _normal_refill_idx_state_reg_T_642 = {normal_refill_idx_state_reg_set_left_older_77,
    _normal_refill_idx_state_reg_T_630,_normal_refill_idx_state_reg_T_641}; // @[Cat.scala 31:58]
  wire [6:0] _normal_refill_idx_state_reg_T_643 = normal_refill_idx_state_reg_set_left_older_76 ?
    _normal_refill_idx_state_reg_T_642 : normal_refill_idx_state_reg_right_subtree_state_83; // @[Replacement.scala 236:16]
  wire [14:0] _normal_refill_idx_state_reg_T_644 = {normal_refill_idx_state_reg_set_left_older_76,
    _normal_refill_idx_state_reg_T_618,_normal_refill_idx_state_reg_T_643}; // @[Cat.scala 31:58]
  wire [14:0] _normal_refill_idx_state_reg_T_645 = normal_refill_idx_state_reg_set_left_older_75 ?
    _normal_refill_idx_state_reg_T_644 : normal_refill_idx_state_reg_right_subtree_state_75; // @[Replacement.scala 236:16]
  wire [30:0] _normal_refill_idx_state_reg_T_646 = {normal_refill_idx_state_reg_set_left_older_75,
    _normal_refill_idx_state_reg_T_592,_normal_refill_idx_state_reg_T_645}; // @[Cat.scala 31:58]
  wire  normal_refill_idx_left_subtree_older = normal_refill_idx_state_reg[30]; // @[Replacement.scala 273:38]
  wire  normal_refill_idx_left_subtree_older_1 = normal_refill_idx_state_reg_left_subtree_state[14]; // @[Replacement.scala 273:38]
  wire  normal_refill_idx_left_subtree_older_2 = normal_refill_idx_state_reg_left_subtree_state_1[6]; // @[Replacement.scala 273:38]
  wire  normal_refill_idx_left_subtree_older_3 = normal_refill_idx_state_reg_left_subtree_state_2[2]; // @[Replacement.scala 273:38]
  wire  _normal_refill_idx_T_62 = normal_refill_idx_left_subtree_older_3 ?
    normal_refill_idx_state_reg_left_subtree_state_3 : normal_refill_idx_state_reg_right_subtree_state_3; // @[Replacement.scala 280:16]
  wire [1:0] _normal_refill_idx_T_63 = {normal_refill_idx_left_subtree_older_3,_normal_refill_idx_T_62}; // @[Cat.scala 31:58]
  wire  normal_refill_idx_left_subtree_older_4 = normal_refill_idx_state_reg_right_subtree_state_2[2]; // @[Replacement.scala 273:38]
  wire  _normal_refill_idx_T_66 = normal_refill_idx_left_subtree_older_4 ?
    normal_refill_idx_state_reg_left_subtree_state_4 : normal_refill_idx_state_reg_right_subtree_state_4; // @[Replacement.scala 280:16]
  wire [1:0] _normal_refill_idx_T_67 = {normal_refill_idx_left_subtree_older_4,_normal_refill_idx_T_66}; // @[Cat.scala 31:58]
  wire [1:0] _normal_refill_idx_T_68 = normal_refill_idx_left_subtree_older_2 ? _normal_refill_idx_T_63 :
    _normal_refill_idx_T_67; // @[Replacement.scala 280:16]
  wire [2:0] _normal_refill_idx_T_69 = {normal_refill_idx_left_subtree_older_2,_normal_refill_idx_T_68}; // @[Cat.scala 31:58]
  wire  normal_refill_idx_left_subtree_older_5 = normal_refill_idx_state_reg_right_subtree_state_1[6]; // @[Replacement.scala 273:38]
  wire  normal_refill_idx_left_subtree_older_6 = normal_refill_idx_state_reg_left_subtree_state_5[2]; // @[Replacement.scala 273:38]
  wire  _normal_refill_idx_T_72 = normal_refill_idx_left_subtree_older_6 ?
    normal_refill_idx_state_reg_left_subtree_state_6 : normal_refill_idx_state_reg_right_subtree_state_6; // @[Replacement.scala 280:16]
  wire [1:0] _normal_refill_idx_T_73 = {normal_refill_idx_left_subtree_older_6,_normal_refill_idx_T_72}; // @[Cat.scala 31:58]
  wire  normal_refill_idx_left_subtree_older_7 = normal_refill_idx_state_reg_right_subtree_state_5[2]; // @[Replacement.scala 273:38]
  wire  _normal_refill_idx_T_76 = normal_refill_idx_left_subtree_older_7 ?
    normal_refill_idx_state_reg_left_subtree_state_7 : normal_refill_idx_state_reg_right_subtree_state_7; // @[Replacement.scala 280:16]
  wire [1:0] _normal_refill_idx_T_77 = {normal_refill_idx_left_subtree_older_7,_normal_refill_idx_T_76}; // @[Cat.scala 31:58]
  wire [1:0] _normal_refill_idx_T_78 = normal_refill_idx_left_subtree_older_5 ? _normal_refill_idx_T_73 :
    _normal_refill_idx_T_77; // @[Replacement.scala 280:16]
  wire [2:0] _normal_refill_idx_T_79 = {normal_refill_idx_left_subtree_older_5,_normal_refill_idx_T_78}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_T_80 = normal_refill_idx_left_subtree_older_1 ? _normal_refill_idx_T_69 :
    _normal_refill_idx_T_79; // @[Replacement.scala 280:16]
  wire [3:0] _normal_refill_idx_T_81 = {normal_refill_idx_left_subtree_older_1,_normal_refill_idx_T_80}; // @[Cat.scala 31:58]
  wire  normal_refill_idx_left_subtree_older_8 = normal_refill_idx_state_reg_right_subtree_state[14]; // @[Replacement.scala 273:38]
  wire  normal_refill_idx_left_subtree_older_9 = normal_refill_idx_state_reg_left_subtree_state_8[6]; // @[Replacement.scala 273:38]
  wire  normal_refill_idx_left_subtree_older_10 = normal_refill_idx_state_reg_left_subtree_state_9[2]; // @[Replacement.scala 273:38]
  wire  _normal_refill_idx_T_84 = normal_refill_idx_left_subtree_older_10 ?
    normal_refill_idx_state_reg_left_subtree_state_10 : normal_refill_idx_state_reg_right_subtree_state_10; // @[Replacement.scala 280:16]
  wire [1:0] _normal_refill_idx_T_85 = {normal_refill_idx_left_subtree_older_10,_normal_refill_idx_T_84}; // @[Cat.scala 31:58]
  wire  normal_refill_idx_left_subtree_older_11 = normal_refill_idx_state_reg_right_subtree_state_9[2]; // @[Replacement.scala 273:38]
  wire  _normal_refill_idx_T_88 = normal_refill_idx_left_subtree_older_11 ?
    normal_refill_idx_state_reg_left_subtree_state_11 : normal_refill_idx_state_reg_right_subtree_state_11; // @[Replacement.scala 280:16]
  wire [1:0] _normal_refill_idx_T_89 = {normal_refill_idx_left_subtree_older_11,_normal_refill_idx_T_88}; // @[Cat.scala 31:58]
  wire [1:0] _normal_refill_idx_T_90 = normal_refill_idx_left_subtree_older_9 ? _normal_refill_idx_T_85 :
    _normal_refill_idx_T_89; // @[Replacement.scala 280:16]
  wire [2:0] _normal_refill_idx_T_91 = {normal_refill_idx_left_subtree_older_9,_normal_refill_idx_T_90}; // @[Cat.scala 31:58]
  wire  normal_refill_idx_left_subtree_older_12 = normal_refill_idx_state_reg_right_subtree_state_8[6]; // @[Replacement.scala 273:38]
  wire  normal_refill_idx_left_subtree_older_13 = normal_refill_idx_state_reg_left_subtree_state_12[2]; // @[Replacement.scala 273:38]
  wire  _normal_refill_idx_T_94 = normal_refill_idx_left_subtree_older_13 ?
    normal_refill_idx_state_reg_left_subtree_state_13 : normal_refill_idx_state_reg_right_subtree_state_13; // @[Replacement.scala 280:16]
  wire [1:0] _normal_refill_idx_T_95 = {normal_refill_idx_left_subtree_older_13,_normal_refill_idx_T_94}; // @[Cat.scala 31:58]
  wire  normal_refill_idx_left_subtree_older_14 = normal_refill_idx_state_reg_right_subtree_state_12[2]; // @[Replacement.scala 273:38]
  wire  _normal_refill_idx_T_98 = normal_refill_idx_left_subtree_older_14 ?
    normal_refill_idx_state_reg_left_subtree_state_14 : normal_refill_idx_state_reg_right_subtree_state_14; // @[Replacement.scala 280:16]
  wire [1:0] _normal_refill_idx_T_99 = {normal_refill_idx_left_subtree_older_14,_normal_refill_idx_T_98}; // @[Cat.scala 31:58]
  wire [1:0] _normal_refill_idx_T_100 = normal_refill_idx_left_subtree_older_12 ? _normal_refill_idx_T_95 :
    _normal_refill_idx_T_99; // @[Replacement.scala 280:16]
  wire [2:0] _normal_refill_idx_T_101 = {normal_refill_idx_left_subtree_older_12,_normal_refill_idx_T_100}; // @[Cat.scala 31:58]
  wire [2:0] _normal_refill_idx_T_102 = normal_refill_idx_left_subtree_older_8 ? _normal_refill_idx_T_91 :
    _normal_refill_idx_T_101; // @[Replacement.scala 280:16]
  wire [3:0] _normal_refill_idx_T_103 = {normal_refill_idx_left_subtree_older_8,_normal_refill_idx_T_102}; // @[Cat.scala 31:58]
  wire [3:0] _normal_refill_idx_T_104 = normal_refill_idx_left_subtree_older ? _normal_refill_idx_T_81 :
    _normal_refill_idx_T_103; // @[Replacement.scala 280:16]
  reg [2:0] super_refill_idx_state_reg; // @[Replacement.scala 198:70]
  wire  _super_refill_idx_T_4 = superPage_tlb_super_fa_io_access_0_touch_ways_valid |
    superPage_tlb_super_fa_io_access_1_touch_ways_valid | superPage_tlb_super_fa_io_access_2_touch_ways_valid |
    superPage_tlb_super_fa_io_access_3_touch_ways_valid | superPage_tlb_super_fa_io_access_4_touch_ways_valid |
    superPage_tlb_super_fa_io_access_5_touch_ways_valid; // @[package.scala 72:59]
  wire [1:0] super_refill_idx_state_reg_touch_way_sized = superPage_tlb_super_fa_io_access_0_touch_ways_bits; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_set_left_older = ~super_refill_idx_state_reg_touch_way_sized[1]; // @[Replacement.scala 226:33]
  wire  super_refill_idx_state_reg_left_subtree_state = super_refill_idx_state_reg[1]; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_right_subtree_state = super_refill_idx_state_reg[0]; // @[Replacement.scala 228:38]
  wire  _super_refill_idx_state_reg_T_2 = ~super_refill_idx_state_reg_touch_way_sized[0]; // @[Replacement.scala 248:7]
  wire  _super_refill_idx_state_reg_T_3 = super_refill_idx_state_reg_set_left_older ?
    super_refill_idx_state_reg_left_subtree_state : _super_refill_idx_state_reg_T_2; // @[Replacement.scala 233:16]
  wire  _super_refill_idx_state_reg_T_7 = super_refill_idx_state_reg_set_left_older ? _super_refill_idx_state_reg_T_2 :
    super_refill_idx_state_reg_right_subtree_state; // @[Replacement.scala 236:16]
  wire [2:0] _super_refill_idx_state_reg_T_8 = {super_refill_idx_state_reg_set_left_older,
    _super_refill_idx_state_reg_T_3,_super_refill_idx_state_reg_T_7}; // @[Cat.scala 31:58]
  wire [2:0] _super_refill_idx_state_reg_T_9 = superPage_tlb_super_fa_io_access_0_touch_ways_valid ?
    _super_refill_idx_state_reg_T_8 : super_refill_idx_state_reg; // @[Replacement.scala 41:56]
  wire [1:0] super_refill_idx_state_reg_touch_way_sized_1 = superPage_tlb_super_fa_io_access_1_touch_ways_bits; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_set_left_older_1 = ~super_refill_idx_state_reg_touch_way_sized_1[1]; // @[Replacement.scala 226:33]
  wire  super_refill_idx_state_reg_left_subtree_state_1 = _super_refill_idx_state_reg_T_9[1]; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_right_subtree_state_1 = _super_refill_idx_state_reg_T_9[0]; // @[Replacement.scala 228:38]
  wire  _super_refill_idx_state_reg_T_12 = ~super_refill_idx_state_reg_touch_way_sized_1[0]; // @[Replacement.scala 248:7]
  wire  _super_refill_idx_state_reg_T_13 = super_refill_idx_state_reg_set_left_older_1 ?
    super_refill_idx_state_reg_left_subtree_state_1 : _super_refill_idx_state_reg_T_12; // @[Replacement.scala 233:16]
  wire  _super_refill_idx_state_reg_T_17 = super_refill_idx_state_reg_set_left_older_1 ?
    _super_refill_idx_state_reg_T_12 : super_refill_idx_state_reg_right_subtree_state_1; // @[Replacement.scala 236:16]
  wire [2:0] _super_refill_idx_state_reg_T_18 = {super_refill_idx_state_reg_set_left_older_1,
    _super_refill_idx_state_reg_T_13,_super_refill_idx_state_reg_T_17}; // @[Cat.scala 31:58]
  wire [2:0] _super_refill_idx_state_reg_T_19 = superPage_tlb_super_fa_io_access_1_touch_ways_valid ?
    _super_refill_idx_state_reg_T_18 : _super_refill_idx_state_reg_T_9; // @[Replacement.scala 41:56]
  wire [1:0] super_refill_idx_state_reg_touch_way_sized_2 = superPage_tlb_super_fa_io_access_2_touch_ways_bits; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_set_left_older_2 = ~super_refill_idx_state_reg_touch_way_sized_2[1]; // @[Replacement.scala 226:33]
  wire  super_refill_idx_state_reg_left_subtree_state_2 = _super_refill_idx_state_reg_T_19[1]; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_right_subtree_state_2 = _super_refill_idx_state_reg_T_19[0]; // @[Replacement.scala 228:38]
  wire  _super_refill_idx_state_reg_T_22 = ~super_refill_idx_state_reg_touch_way_sized_2[0]; // @[Replacement.scala 248:7]
  wire  _super_refill_idx_state_reg_T_23 = super_refill_idx_state_reg_set_left_older_2 ?
    super_refill_idx_state_reg_left_subtree_state_2 : _super_refill_idx_state_reg_T_22; // @[Replacement.scala 233:16]
  wire  _super_refill_idx_state_reg_T_27 = super_refill_idx_state_reg_set_left_older_2 ?
    _super_refill_idx_state_reg_T_22 : super_refill_idx_state_reg_right_subtree_state_2; // @[Replacement.scala 236:16]
  wire [2:0] _super_refill_idx_state_reg_T_28 = {super_refill_idx_state_reg_set_left_older_2,
    _super_refill_idx_state_reg_T_23,_super_refill_idx_state_reg_T_27}; // @[Cat.scala 31:58]
  wire [2:0] _super_refill_idx_state_reg_T_29 = superPage_tlb_super_fa_io_access_2_touch_ways_valid ?
    _super_refill_idx_state_reg_T_28 : _super_refill_idx_state_reg_T_19; // @[Replacement.scala 41:56]
  wire [1:0] super_refill_idx_state_reg_touch_way_sized_3 = superPage_tlb_super_fa_io_access_3_touch_ways_bits; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_set_left_older_3 = ~super_refill_idx_state_reg_touch_way_sized_3[1]; // @[Replacement.scala 226:33]
  wire  super_refill_idx_state_reg_left_subtree_state_3 = _super_refill_idx_state_reg_T_29[1]; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_right_subtree_state_3 = _super_refill_idx_state_reg_T_29[0]; // @[Replacement.scala 228:38]
  wire  _super_refill_idx_state_reg_T_32 = ~super_refill_idx_state_reg_touch_way_sized_3[0]; // @[Replacement.scala 248:7]
  wire  _super_refill_idx_state_reg_T_33 = super_refill_idx_state_reg_set_left_older_3 ?
    super_refill_idx_state_reg_left_subtree_state_3 : _super_refill_idx_state_reg_T_32; // @[Replacement.scala 233:16]
  wire  _super_refill_idx_state_reg_T_37 = super_refill_idx_state_reg_set_left_older_3 ?
    _super_refill_idx_state_reg_T_32 : super_refill_idx_state_reg_right_subtree_state_3; // @[Replacement.scala 236:16]
  wire [2:0] _super_refill_idx_state_reg_T_38 = {super_refill_idx_state_reg_set_left_older_3,
    _super_refill_idx_state_reg_T_33,_super_refill_idx_state_reg_T_37}; // @[Cat.scala 31:58]
  wire [2:0] _super_refill_idx_state_reg_T_39 = superPage_tlb_super_fa_io_access_3_touch_ways_valid ?
    _super_refill_idx_state_reg_T_38 : _super_refill_idx_state_reg_T_29; // @[Replacement.scala 41:56]
  wire [1:0] super_refill_idx_state_reg_touch_way_sized_4 = superPage_tlb_super_fa_io_access_4_touch_ways_bits; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_set_left_older_4 = ~super_refill_idx_state_reg_touch_way_sized_4[1]; // @[Replacement.scala 226:33]
  wire  super_refill_idx_state_reg_left_subtree_state_4 = _super_refill_idx_state_reg_T_39[1]; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_right_subtree_state_4 = _super_refill_idx_state_reg_T_39[0]; // @[Replacement.scala 228:38]
  wire  _super_refill_idx_state_reg_T_42 = ~super_refill_idx_state_reg_touch_way_sized_4[0]; // @[Replacement.scala 248:7]
  wire  _super_refill_idx_state_reg_T_43 = super_refill_idx_state_reg_set_left_older_4 ?
    super_refill_idx_state_reg_left_subtree_state_4 : _super_refill_idx_state_reg_T_42; // @[Replacement.scala 233:16]
  wire  _super_refill_idx_state_reg_T_47 = super_refill_idx_state_reg_set_left_older_4 ?
    _super_refill_idx_state_reg_T_42 : super_refill_idx_state_reg_right_subtree_state_4; // @[Replacement.scala 236:16]
  wire [2:0] _super_refill_idx_state_reg_T_48 = {super_refill_idx_state_reg_set_left_older_4,
    _super_refill_idx_state_reg_T_43,_super_refill_idx_state_reg_T_47}; // @[Cat.scala 31:58]
  wire [2:0] _super_refill_idx_state_reg_T_49 = superPage_tlb_super_fa_io_access_4_touch_ways_valid ?
    _super_refill_idx_state_reg_T_48 : _super_refill_idx_state_reg_T_39; // @[Replacement.scala 41:56]
  wire [1:0] super_refill_idx_state_reg_touch_way_sized_5 = superPage_tlb_super_fa_io_access_5_touch_ways_bits; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_set_left_older_5 = ~super_refill_idx_state_reg_touch_way_sized_5[1]; // @[Replacement.scala 226:33]
  wire  super_refill_idx_state_reg_left_subtree_state_5 = _super_refill_idx_state_reg_T_49[1]; // @[package.scala 154:13]
  wire  super_refill_idx_state_reg_right_subtree_state_5 = _super_refill_idx_state_reg_T_49[0]; // @[Replacement.scala 228:38]
  wire  _super_refill_idx_state_reg_T_52 = ~super_refill_idx_state_reg_touch_way_sized_5[0]; // @[Replacement.scala 248:7]
  wire  _super_refill_idx_state_reg_T_53 = super_refill_idx_state_reg_set_left_older_5 ?
    super_refill_idx_state_reg_left_subtree_state_5 : _super_refill_idx_state_reg_T_52; // @[Replacement.scala 233:16]
  wire  _super_refill_idx_state_reg_T_57 = super_refill_idx_state_reg_set_left_older_5 ?
    _super_refill_idx_state_reg_T_52 : super_refill_idx_state_reg_right_subtree_state_5; // @[Replacement.scala 236:16]
  wire [2:0] _super_refill_idx_state_reg_T_58 = {super_refill_idx_state_reg_set_left_older_5,
    _super_refill_idx_state_reg_T_53,_super_refill_idx_state_reg_T_57}; // @[Cat.scala 31:58]
  wire  super_refill_idx_left_subtree_older = super_refill_idx_state_reg[2]; // @[Replacement.scala 273:38]
  wire  _super_refill_idx_T_62 = super_refill_idx_left_subtree_older ? super_refill_idx_state_reg_left_subtree_state :
    super_refill_idx_state_reg_right_subtree_state; // @[Replacement.scala 280:16]
  wire  refill = _io_requestor_0_resp_bits_ptwBack_T & ~io_sfence_valid & ~io_csr_satp_changed; // @[TLB.scala 226:49]
  wire  _io_ptw_req_0_valid_T = validRegVec_0 & miss_0; // @[TLB.scala 246:75]
  reg  io_ptw_req_0_valid_REG; // @[TLB.scala 258:22]
  reg  io_ptw_req_0_valid_REG_1; // @[TLB.scala 247:15]
  wire  _io_ptw_req_0_valid_T_1 = ~io_ptw_req_0_valid_REG_1; // @[TLB.scala 247:7]
  wire  _io_ptw_req_0_valid_T_2 = io_ptw_req_0_valid_REG & _io_ptw_req_0_valid_T_1; // @[TLB.scala 246:99]
  reg  io_ptw_req_0_valid_REG_2; // @[TLB.scala 248:50]
  reg  io_ptw_req_0_valid_REG_3; // @[TLB.scala 248:42]
  wire  _io_ptw_req_0_valid_T_3 = ~io_ptw_req_0_valid_REG_3; // @[TLB.scala 248:34]
  reg [26:0] io_ptw_req_0_bits_vpn_REG; // @[TLB.scala 254:22]
  reg [26:0] io_ptw_req_0_bits_vpn_REG_1; // @[TLB.scala 254:22]
  wire  _io_ptw_req_1_valid_T = validRegVec_1 & miss_1; // @[TLB.scala 246:75]
  reg  io_ptw_req_1_valid_REG; // @[TLB.scala 258:22]
  reg  io_ptw_req_1_valid_REG_1; // @[TLB.scala 247:15]
  wire  _io_ptw_req_1_valid_T_1 = ~io_ptw_req_1_valid_REG_1; // @[TLB.scala 247:7]
  wire  _io_ptw_req_1_valid_T_2 = io_ptw_req_1_valid_REG & _io_ptw_req_1_valid_T_1; // @[TLB.scala 246:99]
  reg  io_ptw_req_1_valid_REG_2; // @[TLB.scala 248:50]
  reg  io_ptw_req_1_valid_REG_3; // @[TLB.scala 248:42]
  wire  _io_ptw_req_1_valid_T_3 = ~io_ptw_req_1_valid_REG_3; // @[TLB.scala 248:34]
  reg [26:0] io_ptw_req_1_bits_vpn_REG; // @[TLB.scala 254:22]
  reg [26:0] io_ptw_req_1_bits_vpn_REG_1; // @[TLB.scala 254:22]
  wire  _io_ptw_req_2_valid_T = validRegVec_2 & miss_2; // @[TLB.scala 246:75]
  reg  io_ptw_req_2_valid_REG; // @[TLB.scala 258:22]
  reg  io_ptw_req_2_valid_REG_1; // @[TLB.scala 247:15]
  wire  _io_ptw_req_2_valid_T_1 = ~io_ptw_req_2_valid_REG_1; // @[TLB.scala 247:7]
  wire  _io_ptw_req_2_valid_T_2 = io_ptw_req_2_valid_REG & _io_ptw_req_2_valid_T_1; // @[TLB.scala 246:99]
  reg  io_ptw_req_2_valid_REG_2; // @[TLB.scala 248:50]
  reg  io_ptw_req_2_valid_REG_3; // @[TLB.scala 248:42]
  wire  _io_ptw_req_2_valid_T_3 = ~io_ptw_req_2_valid_REG_3; // @[TLB.scala 248:34]
  reg [26:0] io_ptw_req_2_bits_vpn_REG; // @[TLB.scala 254:22]
  reg [26:0] io_ptw_req_2_bits_vpn_REG_1; // @[TLB.scala 254:22]
  wire  _io_ptw_req_3_valid_T = validRegVec_3 & miss_3; // @[TLB.scala 246:75]
  reg  io_ptw_req_3_valid_REG; // @[TLB.scala 258:22]
  reg  io_ptw_req_3_valid_REG_1; // @[TLB.scala 247:15]
  wire  _io_ptw_req_3_valid_T_1 = ~io_ptw_req_3_valid_REG_1; // @[TLB.scala 247:7]
  wire  _io_ptw_req_3_valid_T_2 = io_ptw_req_3_valid_REG & _io_ptw_req_3_valid_T_1; // @[TLB.scala 246:99]
  reg  io_ptw_req_3_valid_REG_2; // @[TLB.scala 248:50]
  reg  io_ptw_req_3_valid_REG_3; // @[TLB.scala 248:42]
  wire  _io_ptw_req_3_valid_T_3 = ~io_ptw_req_3_valid_REG_3; // @[TLB.scala 248:34]
  reg [26:0] io_ptw_req_3_bits_vpn_REG; // @[TLB.scala 254:22]
  reg [26:0] io_ptw_req_3_bits_vpn_REG_1; // @[TLB.scala 254:22]
  wire  _io_ptw_req_4_valid_T = validRegVec_4 & miss_4; // @[TLB.scala 246:75]
  reg  io_ptw_req_4_valid_REG; // @[TLB.scala 258:22]
  reg  io_ptw_req_4_valid_REG_1; // @[TLB.scala 247:15]
  wire  _io_ptw_req_4_valid_T_1 = ~io_ptw_req_4_valid_REG_1; // @[TLB.scala 247:7]
  wire  _io_ptw_req_4_valid_T_2 = io_ptw_req_4_valid_REG & _io_ptw_req_4_valid_T_1; // @[TLB.scala 246:99]
  reg  io_ptw_req_4_valid_REG_2; // @[TLB.scala 248:50]
  reg  io_ptw_req_4_valid_REG_3; // @[TLB.scala 248:42]
  wire  _io_ptw_req_4_valid_T_3 = ~io_ptw_req_4_valid_REG_3; // @[TLB.scala 248:34]
  reg [26:0] io_ptw_req_4_bits_vpn_REG; // @[TLB.scala 254:22]
  reg [26:0] io_ptw_req_4_bits_vpn_REG_1; // @[TLB.scala 254:22]
  wire  _io_ptw_req_5_valid_T = validRegVec_5 & miss_5; // @[TLB.scala 246:75]
  reg  io_ptw_req_5_valid_REG; // @[TLB.scala 258:22]
  reg  io_ptw_req_5_valid_REG_1; // @[TLB.scala 247:15]
  wire  _io_ptw_req_5_valid_T_1 = ~io_ptw_req_5_valid_REG_1; // @[TLB.scala 247:7]
  wire  _io_ptw_req_5_valid_T_2 = io_ptw_req_5_valid_REG & _io_ptw_req_5_valid_T_1; // @[TLB.scala 246:99]
  reg  io_ptw_req_5_valid_REG_2; // @[TLB.scala 248:50]
  reg  io_ptw_req_5_valid_REG_3; // @[TLB.scala 248:42]
  wire  _io_ptw_req_5_valid_T_3 = ~io_ptw_req_5_valid_REG_3; // @[TLB.scala 248:34]
  reg [26:0] io_ptw_req_5_bits_vpn_REG; // @[TLB.scala 254:22]
  reg [26:0] io_ptw_req_5_bits_vpn_REG_1; // @[TLB.scala 254:22]
  TLBFA normalPage_tlb_normal_fa ( // @[TLBStorage.scala 308:28]
    .clock(normalPage_tlb_normal_fa_clock),
    .reset(normalPage_tlb_normal_fa_reset),
    .io_sfence_valid(normalPage_tlb_normal_fa_io_sfence_valid),
    .io_sfence_bits_rs1(normalPage_tlb_normal_fa_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(normalPage_tlb_normal_fa_io_sfence_bits_rs2),
    .io_sfence_bits_addr(normalPage_tlb_normal_fa_io_sfence_bits_addr),
    .io_sfence_bits_asid(normalPage_tlb_normal_fa_io_sfence_bits_asid),
    .io_csr_satp_asid(normalPage_tlb_normal_fa_io_csr_satp_asid),
    .io_rreq_0_ready(normalPage_tlb_normal_fa_io_rreq_0_ready),
    .io_rreq_0_valid(normalPage_tlb_normal_fa_io_rreq_0_valid),
    .io_rreq_0_bits_vpn(normalPage_tlb_normal_fa_io_rreq_0_bits_vpn),
    .io_rreq_1_ready(normalPage_tlb_normal_fa_io_rreq_1_ready),
    .io_rreq_1_valid(normalPage_tlb_normal_fa_io_rreq_1_valid),
    .io_rreq_1_bits_vpn(normalPage_tlb_normal_fa_io_rreq_1_bits_vpn),
    .io_rreq_2_ready(normalPage_tlb_normal_fa_io_rreq_2_ready),
    .io_rreq_2_valid(normalPage_tlb_normal_fa_io_rreq_2_valid),
    .io_rreq_2_bits_vpn(normalPage_tlb_normal_fa_io_rreq_2_bits_vpn),
    .io_rreq_3_ready(normalPage_tlb_normal_fa_io_rreq_3_ready),
    .io_rreq_3_valid(normalPage_tlb_normal_fa_io_rreq_3_valid),
    .io_rreq_3_bits_vpn(normalPage_tlb_normal_fa_io_rreq_3_bits_vpn),
    .io_rreq_4_ready(normalPage_tlb_normal_fa_io_rreq_4_ready),
    .io_rreq_4_valid(normalPage_tlb_normal_fa_io_rreq_4_valid),
    .io_rreq_4_bits_vpn(normalPage_tlb_normal_fa_io_rreq_4_bits_vpn),
    .io_rreq_5_ready(normalPage_tlb_normal_fa_io_rreq_5_ready),
    .io_rreq_5_valid(normalPage_tlb_normal_fa_io_rreq_5_valid),
    .io_rreq_5_bits_vpn(normalPage_tlb_normal_fa_io_rreq_5_bits_vpn),
    .io_rresp_0_valid(normalPage_tlb_normal_fa_io_rresp_0_valid),
    .io_rresp_0_bits_hit(normalPage_tlb_normal_fa_io_rresp_0_bits_hit),
    .io_rresp_0_bits_ppn(normalPage_tlb_normal_fa_io_rresp_0_bits_ppn),
    .io_rresp_0_bits_perm_pf(normalPage_tlb_normal_fa_io_rresp_0_bits_perm_pf),
    .io_rresp_0_bits_perm_af(normalPage_tlb_normal_fa_io_rresp_0_bits_perm_af),
    .io_rresp_0_bits_perm_a(normalPage_tlb_normal_fa_io_rresp_0_bits_perm_a),
    .io_rresp_0_bits_perm_u(normalPage_tlb_normal_fa_io_rresp_0_bits_perm_u),
    .io_rresp_0_bits_perm_x(normalPage_tlb_normal_fa_io_rresp_0_bits_perm_x),
    .io_rresp_1_valid(normalPage_tlb_normal_fa_io_rresp_1_valid),
    .io_rresp_1_bits_hit(normalPage_tlb_normal_fa_io_rresp_1_bits_hit),
    .io_rresp_1_bits_ppn(normalPage_tlb_normal_fa_io_rresp_1_bits_ppn),
    .io_rresp_1_bits_perm_pf(normalPage_tlb_normal_fa_io_rresp_1_bits_perm_pf),
    .io_rresp_1_bits_perm_af(normalPage_tlb_normal_fa_io_rresp_1_bits_perm_af),
    .io_rresp_1_bits_perm_a(normalPage_tlb_normal_fa_io_rresp_1_bits_perm_a),
    .io_rresp_1_bits_perm_u(normalPage_tlb_normal_fa_io_rresp_1_bits_perm_u),
    .io_rresp_1_bits_perm_x(normalPage_tlb_normal_fa_io_rresp_1_bits_perm_x),
    .io_rresp_2_valid(normalPage_tlb_normal_fa_io_rresp_2_valid),
    .io_rresp_2_bits_hit(normalPage_tlb_normal_fa_io_rresp_2_bits_hit),
    .io_rresp_2_bits_ppn(normalPage_tlb_normal_fa_io_rresp_2_bits_ppn),
    .io_rresp_2_bits_perm_pf(normalPage_tlb_normal_fa_io_rresp_2_bits_perm_pf),
    .io_rresp_2_bits_perm_af(normalPage_tlb_normal_fa_io_rresp_2_bits_perm_af),
    .io_rresp_2_bits_perm_a(normalPage_tlb_normal_fa_io_rresp_2_bits_perm_a),
    .io_rresp_2_bits_perm_u(normalPage_tlb_normal_fa_io_rresp_2_bits_perm_u),
    .io_rresp_2_bits_perm_x(normalPage_tlb_normal_fa_io_rresp_2_bits_perm_x),
    .io_rresp_3_valid(normalPage_tlb_normal_fa_io_rresp_3_valid),
    .io_rresp_3_bits_hit(normalPage_tlb_normal_fa_io_rresp_3_bits_hit),
    .io_rresp_3_bits_ppn(normalPage_tlb_normal_fa_io_rresp_3_bits_ppn),
    .io_rresp_3_bits_perm_pf(normalPage_tlb_normal_fa_io_rresp_3_bits_perm_pf),
    .io_rresp_3_bits_perm_af(normalPage_tlb_normal_fa_io_rresp_3_bits_perm_af),
    .io_rresp_3_bits_perm_a(normalPage_tlb_normal_fa_io_rresp_3_bits_perm_a),
    .io_rresp_3_bits_perm_u(normalPage_tlb_normal_fa_io_rresp_3_bits_perm_u),
    .io_rresp_3_bits_perm_x(normalPage_tlb_normal_fa_io_rresp_3_bits_perm_x),
    .io_rresp_4_valid(normalPage_tlb_normal_fa_io_rresp_4_valid),
    .io_rresp_4_bits_hit(normalPage_tlb_normal_fa_io_rresp_4_bits_hit),
    .io_rresp_4_bits_ppn(normalPage_tlb_normal_fa_io_rresp_4_bits_ppn),
    .io_rresp_4_bits_perm_pf(normalPage_tlb_normal_fa_io_rresp_4_bits_perm_pf),
    .io_rresp_4_bits_perm_af(normalPage_tlb_normal_fa_io_rresp_4_bits_perm_af),
    .io_rresp_4_bits_perm_a(normalPage_tlb_normal_fa_io_rresp_4_bits_perm_a),
    .io_rresp_4_bits_perm_u(normalPage_tlb_normal_fa_io_rresp_4_bits_perm_u),
    .io_rresp_4_bits_perm_x(normalPage_tlb_normal_fa_io_rresp_4_bits_perm_x),
    .io_rresp_5_valid(normalPage_tlb_normal_fa_io_rresp_5_valid),
    .io_rresp_5_bits_hit(normalPage_tlb_normal_fa_io_rresp_5_bits_hit),
    .io_rresp_5_bits_ppn(normalPage_tlb_normal_fa_io_rresp_5_bits_ppn),
    .io_rresp_5_bits_perm_pf(normalPage_tlb_normal_fa_io_rresp_5_bits_perm_pf),
    .io_rresp_5_bits_perm_af(normalPage_tlb_normal_fa_io_rresp_5_bits_perm_af),
    .io_rresp_5_bits_perm_a(normalPage_tlb_normal_fa_io_rresp_5_bits_perm_a),
    .io_rresp_5_bits_perm_u(normalPage_tlb_normal_fa_io_rresp_5_bits_perm_u),
    .io_rresp_5_bits_perm_x(normalPage_tlb_normal_fa_io_rresp_5_bits_perm_x),
    .io_rresp_hit_sameCycle_0(normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_0),
    .io_rresp_hit_sameCycle_1(normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_1),
    .io_rresp_hit_sameCycle_2(normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_2),
    .io_rresp_hit_sameCycle_3(normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_3),
    .io_rresp_hit_sameCycle_4(normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_4),
    .io_rresp_hit_sameCycle_5(normalPage_tlb_normal_fa_io_rresp_hit_sameCycle_5),
    .io_wvalid(normalPage_tlb_normal_fa_io_wvalid),
    .io_wwayIdx(normalPage_tlb_normal_fa_io_wwayIdx),
    .io_wdata_entry_tag(normalPage_tlb_normal_fa_io_wdata_entry_tag),
    .io_wdata_entry_ppn(normalPage_tlb_normal_fa_io_wdata_entry_ppn),
    .io_wdata_entry_perm_d(normalPage_tlb_normal_fa_io_wdata_entry_perm_d),
    .io_wdata_entry_perm_a(normalPage_tlb_normal_fa_io_wdata_entry_perm_a),
    .io_wdata_entry_perm_g(normalPage_tlb_normal_fa_io_wdata_entry_perm_g),
    .io_wdata_entry_perm_u(normalPage_tlb_normal_fa_io_wdata_entry_perm_u),
    .io_wdata_entry_perm_x(normalPage_tlb_normal_fa_io_wdata_entry_perm_x),
    .io_wdata_entry_perm_w(normalPage_tlb_normal_fa_io_wdata_entry_perm_w),
    .io_wdata_entry_perm_r(normalPage_tlb_normal_fa_io_wdata_entry_perm_r),
    .io_wdata_pf(normalPage_tlb_normal_fa_io_wdata_pf),
    .io_wdata_af(normalPage_tlb_normal_fa_io_wdata_af),
    .io_access_0_touch_ways_valid(normalPage_tlb_normal_fa_io_access_0_touch_ways_valid),
    .io_access_0_touch_ways_bits(normalPage_tlb_normal_fa_io_access_0_touch_ways_bits),
    .io_access_1_touch_ways_valid(normalPage_tlb_normal_fa_io_access_1_touch_ways_valid),
    .io_access_1_touch_ways_bits(normalPage_tlb_normal_fa_io_access_1_touch_ways_bits),
    .io_access_2_touch_ways_valid(normalPage_tlb_normal_fa_io_access_2_touch_ways_valid),
    .io_access_2_touch_ways_bits(normalPage_tlb_normal_fa_io_access_2_touch_ways_bits),
    .io_access_3_touch_ways_valid(normalPage_tlb_normal_fa_io_access_3_touch_ways_valid),
    .io_access_3_touch_ways_bits(normalPage_tlb_normal_fa_io_access_3_touch_ways_bits),
    .io_access_4_touch_ways_valid(normalPage_tlb_normal_fa_io_access_4_touch_ways_valid),
    .io_access_4_touch_ways_bits(normalPage_tlb_normal_fa_io_access_4_touch_ways_bits),
    .io_access_5_touch_ways_valid(normalPage_tlb_normal_fa_io_access_5_touch_ways_valid),
    .io_access_5_touch_ways_bits(normalPage_tlb_normal_fa_io_access_5_touch_ways_bits)
  );
  TLBFA_1 superPage_tlb_super_fa ( // @[TLBStorage.scala 308:28]
    .clock(superPage_tlb_super_fa_clock),
    .reset(superPage_tlb_super_fa_reset),
    .io_sfence_valid(superPage_tlb_super_fa_io_sfence_valid),
    .io_sfence_bits_rs1(superPage_tlb_super_fa_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(superPage_tlb_super_fa_io_sfence_bits_rs2),
    .io_sfence_bits_addr(superPage_tlb_super_fa_io_sfence_bits_addr),
    .io_sfence_bits_asid(superPage_tlb_super_fa_io_sfence_bits_asid),
    .io_csr_satp_asid(superPage_tlb_super_fa_io_csr_satp_asid),
    .io_rreq_0_ready(superPage_tlb_super_fa_io_rreq_0_ready),
    .io_rreq_0_valid(superPage_tlb_super_fa_io_rreq_0_valid),
    .io_rreq_0_bits_vpn(superPage_tlb_super_fa_io_rreq_0_bits_vpn),
    .io_rreq_1_ready(superPage_tlb_super_fa_io_rreq_1_ready),
    .io_rreq_1_valid(superPage_tlb_super_fa_io_rreq_1_valid),
    .io_rreq_1_bits_vpn(superPage_tlb_super_fa_io_rreq_1_bits_vpn),
    .io_rreq_2_ready(superPage_tlb_super_fa_io_rreq_2_ready),
    .io_rreq_2_valid(superPage_tlb_super_fa_io_rreq_2_valid),
    .io_rreq_2_bits_vpn(superPage_tlb_super_fa_io_rreq_2_bits_vpn),
    .io_rreq_3_ready(superPage_tlb_super_fa_io_rreq_3_ready),
    .io_rreq_3_valid(superPage_tlb_super_fa_io_rreq_3_valid),
    .io_rreq_3_bits_vpn(superPage_tlb_super_fa_io_rreq_3_bits_vpn),
    .io_rreq_4_ready(superPage_tlb_super_fa_io_rreq_4_ready),
    .io_rreq_4_valid(superPage_tlb_super_fa_io_rreq_4_valid),
    .io_rreq_4_bits_vpn(superPage_tlb_super_fa_io_rreq_4_bits_vpn),
    .io_rreq_5_ready(superPage_tlb_super_fa_io_rreq_5_ready),
    .io_rreq_5_valid(superPage_tlb_super_fa_io_rreq_5_valid),
    .io_rreq_5_bits_vpn(superPage_tlb_super_fa_io_rreq_5_bits_vpn),
    .io_rresp_0_valid(superPage_tlb_super_fa_io_rresp_0_valid),
    .io_rresp_0_bits_hit(superPage_tlb_super_fa_io_rresp_0_bits_hit),
    .io_rresp_0_bits_ppn(superPage_tlb_super_fa_io_rresp_0_bits_ppn),
    .io_rresp_0_bits_perm_pf(superPage_tlb_super_fa_io_rresp_0_bits_perm_pf),
    .io_rresp_0_bits_perm_af(superPage_tlb_super_fa_io_rresp_0_bits_perm_af),
    .io_rresp_0_bits_perm_a(superPage_tlb_super_fa_io_rresp_0_bits_perm_a),
    .io_rresp_0_bits_perm_u(superPage_tlb_super_fa_io_rresp_0_bits_perm_u),
    .io_rresp_0_bits_perm_x(superPage_tlb_super_fa_io_rresp_0_bits_perm_x),
    .io_rresp_1_valid(superPage_tlb_super_fa_io_rresp_1_valid),
    .io_rresp_1_bits_hit(superPage_tlb_super_fa_io_rresp_1_bits_hit),
    .io_rresp_1_bits_ppn(superPage_tlb_super_fa_io_rresp_1_bits_ppn),
    .io_rresp_1_bits_perm_pf(superPage_tlb_super_fa_io_rresp_1_bits_perm_pf),
    .io_rresp_1_bits_perm_af(superPage_tlb_super_fa_io_rresp_1_bits_perm_af),
    .io_rresp_1_bits_perm_a(superPage_tlb_super_fa_io_rresp_1_bits_perm_a),
    .io_rresp_1_bits_perm_u(superPage_tlb_super_fa_io_rresp_1_bits_perm_u),
    .io_rresp_1_bits_perm_x(superPage_tlb_super_fa_io_rresp_1_bits_perm_x),
    .io_rresp_2_valid(superPage_tlb_super_fa_io_rresp_2_valid),
    .io_rresp_2_bits_hit(superPage_tlb_super_fa_io_rresp_2_bits_hit),
    .io_rresp_2_bits_ppn(superPage_tlb_super_fa_io_rresp_2_bits_ppn),
    .io_rresp_2_bits_perm_pf(superPage_tlb_super_fa_io_rresp_2_bits_perm_pf),
    .io_rresp_2_bits_perm_af(superPage_tlb_super_fa_io_rresp_2_bits_perm_af),
    .io_rresp_2_bits_perm_a(superPage_tlb_super_fa_io_rresp_2_bits_perm_a),
    .io_rresp_2_bits_perm_u(superPage_tlb_super_fa_io_rresp_2_bits_perm_u),
    .io_rresp_2_bits_perm_x(superPage_tlb_super_fa_io_rresp_2_bits_perm_x),
    .io_rresp_3_valid(superPage_tlb_super_fa_io_rresp_3_valid),
    .io_rresp_3_bits_hit(superPage_tlb_super_fa_io_rresp_3_bits_hit),
    .io_rresp_3_bits_ppn(superPage_tlb_super_fa_io_rresp_3_bits_ppn),
    .io_rresp_3_bits_perm_pf(superPage_tlb_super_fa_io_rresp_3_bits_perm_pf),
    .io_rresp_3_bits_perm_af(superPage_tlb_super_fa_io_rresp_3_bits_perm_af),
    .io_rresp_3_bits_perm_a(superPage_tlb_super_fa_io_rresp_3_bits_perm_a),
    .io_rresp_3_bits_perm_u(superPage_tlb_super_fa_io_rresp_3_bits_perm_u),
    .io_rresp_3_bits_perm_x(superPage_tlb_super_fa_io_rresp_3_bits_perm_x),
    .io_rresp_4_valid(superPage_tlb_super_fa_io_rresp_4_valid),
    .io_rresp_4_bits_hit(superPage_tlb_super_fa_io_rresp_4_bits_hit),
    .io_rresp_4_bits_ppn(superPage_tlb_super_fa_io_rresp_4_bits_ppn),
    .io_rresp_4_bits_perm_pf(superPage_tlb_super_fa_io_rresp_4_bits_perm_pf),
    .io_rresp_4_bits_perm_af(superPage_tlb_super_fa_io_rresp_4_bits_perm_af),
    .io_rresp_4_bits_perm_a(superPage_tlb_super_fa_io_rresp_4_bits_perm_a),
    .io_rresp_4_bits_perm_u(superPage_tlb_super_fa_io_rresp_4_bits_perm_u),
    .io_rresp_4_bits_perm_x(superPage_tlb_super_fa_io_rresp_4_bits_perm_x),
    .io_rresp_5_valid(superPage_tlb_super_fa_io_rresp_5_valid),
    .io_rresp_5_bits_hit(superPage_tlb_super_fa_io_rresp_5_bits_hit),
    .io_rresp_5_bits_ppn(superPage_tlb_super_fa_io_rresp_5_bits_ppn),
    .io_rresp_5_bits_perm_pf(superPage_tlb_super_fa_io_rresp_5_bits_perm_pf),
    .io_rresp_5_bits_perm_af(superPage_tlb_super_fa_io_rresp_5_bits_perm_af),
    .io_rresp_5_bits_perm_a(superPage_tlb_super_fa_io_rresp_5_bits_perm_a),
    .io_rresp_5_bits_perm_u(superPage_tlb_super_fa_io_rresp_5_bits_perm_u),
    .io_rresp_5_bits_perm_x(superPage_tlb_super_fa_io_rresp_5_bits_perm_x),
    .io_rresp_hit_sameCycle_0(superPage_tlb_super_fa_io_rresp_hit_sameCycle_0),
    .io_rresp_hit_sameCycle_1(superPage_tlb_super_fa_io_rresp_hit_sameCycle_1),
    .io_rresp_hit_sameCycle_2(superPage_tlb_super_fa_io_rresp_hit_sameCycle_2),
    .io_rresp_hit_sameCycle_3(superPage_tlb_super_fa_io_rresp_hit_sameCycle_3),
    .io_rresp_hit_sameCycle_4(superPage_tlb_super_fa_io_rresp_hit_sameCycle_4),
    .io_rresp_hit_sameCycle_5(superPage_tlb_super_fa_io_rresp_hit_sameCycle_5),
    .io_wvalid(superPage_tlb_super_fa_io_wvalid),
    .io_wwayIdx(superPage_tlb_super_fa_io_wwayIdx),
    .io_wdata_entry_tag(superPage_tlb_super_fa_io_wdata_entry_tag),
    .io_wdata_entry_ppn(superPage_tlb_super_fa_io_wdata_entry_ppn),
    .io_wdata_entry_perm_d(superPage_tlb_super_fa_io_wdata_entry_perm_d),
    .io_wdata_entry_perm_a(superPage_tlb_super_fa_io_wdata_entry_perm_a),
    .io_wdata_entry_perm_g(superPage_tlb_super_fa_io_wdata_entry_perm_g),
    .io_wdata_entry_perm_u(superPage_tlb_super_fa_io_wdata_entry_perm_u),
    .io_wdata_entry_perm_x(superPage_tlb_super_fa_io_wdata_entry_perm_x),
    .io_wdata_entry_perm_w(superPage_tlb_super_fa_io_wdata_entry_perm_w),
    .io_wdata_entry_perm_r(superPage_tlb_super_fa_io_wdata_entry_perm_r),
    .io_wdata_entry_level(superPage_tlb_super_fa_io_wdata_entry_level),
    .io_wdata_pf(superPage_tlb_super_fa_io_wdata_pf),
    .io_wdata_af(superPage_tlb_super_fa_io_wdata_af),
    .io_access_0_touch_ways_valid(superPage_tlb_super_fa_io_access_0_touch_ways_valid),
    .io_access_0_touch_ways_bits(superPage_tlb_super_fa_io_access_0_touch_ways_bits),
    .io_access_1_touch_ways_valid(superPage_tlb_super_fa_io_access_1_touch_ways_valid),
    .io_access_1_touch_ways_bits(superPage_tlb_super_fa_io_access_1_touch_ways_bits),
    .io_access_2_touch_ways_valid(superPage_tlb_super_fa_io_access_2_touch_ways_valid),
    .io_access_2_touch_ways_bits(superPage_tlb_super_fa_io_access_2_touch_ways_bits),
    .io_access_3_touch_ways_valid(superPage_tlb_super_fa_io_access_3_touch_ways_valid),
    .io_access_3_touch_ways_bits(superPage_tlb_super_fa_io_access_3_touch_ways_bits),
    .io_access_4_touch_ways_valid(superPage_tlb_super_fa_io_access_4_touch_ways_valid),
    .io_access_4_touch_ways_bits(superPage_tlb_super_fa_io_access_4_touch_ways_bits),
    .io_access_5_touch_ways_valid(superPage_tlb_super_fa_io_access_5_touch_ways_valid),
    .io_access_5_touch_ways_bits(superPage_tlb_super_fa_io_access_5_touch_ways_bits)
  );
  assign io_requestor_0_resp_valid = validRegVec_0; // @[TLB.scala 144:19]
  assign io_requestor_0_resp_bits_paddr = vmEnable ? paddr : io_requestor_0_resp_bits_paddr_REG; // @[TLB.scala 145:30]
  assign io_requestor_0_resp_bits_miss = ~hit_sameCycle & vmEnable; // @[TLB.scala 134:41]
  assign io_requestor_0_resp_bits_excp_pf_instr = (instrPf | _ldUpdate_T) & vmEnable &
    _io_requestor_0_resp_bits_excp_pf_ld_T_2; // @[TLB.scala 172:75]
  assign io_requestor_0_resp_bits_excp_af_instr = perm_af & vmEnable; // @[TLB.scala 182:86]
  assign io_requestor_1_resp_valid = validRegVec_1; // @[TLB.scala 144:19]
  assign io_requestor_1_resp_bits_paddr = vmEnable ? paddr_1 : io_requestor_1_resp_bits_paddr_REG; // @[TLB.scala 145:30]
  assign io_requestor_1_resp_bits_miss = ~hit_sameCycle_1 & vmEnable; // @[TLB.scala 134:41]
  assign io_requestor_1_resp_bits_excp_pf_instr = (instrPf_1 | _ldUpdate_T_6) & vmEnable &
    _io_requestor_1_resp_bits_excp_pf_ld_T_2; // @[TLB.scala 172:75]
  assign io_requestor_1_resp_bits_excp_af_instr = perm_1_af & vmEnable; // @[TLB.scala 182:86]
  assign io_requestor_2_resp_valid = validRegVec_2; // @[TLB.scala 144:19]
  assign io_requestor_2_resp_bits_paddr = vmEnable ? paddr_2 : io_requestor_2_resp_bits_paddr_REG; // @[TLB.scala 145:30]
  assign io_requestor_2_resp_bits_miss = ~hit_sameCycle_2 & vmEnable; // @[TLB.scala 134:41]
  assign io_requestor_2_resp_bits_excp_pf_instr = (instrPf_2 | _ldUpdate_T_12) & vmEnable &
    _io_requestor_2_resp_bits_excp_pf_ld_T_2; // @[TLB.scala 172:75]
  assign io_requestor_2_resp_bits_excp_af_instr = perm_2_af & vmEnable; // @[TLB.scala 182:86]
  assign io_requestor_3_resp_valid = validRegVec_3; // @[TLB.scala 144:19]
  assign io_requestor_3_resp_bits_paddr = vmEnable ? paddr_3 : io_requestor_3_resp_bits_paddr_REG; // @[TLB.scala 145:30]
  assign io_requestor_3_resp_bits_miss = ~hit_sameCycle_3 & vmEnable; // @[TLB.scala 134:41]
  assign io_requestor_3_resp_bits_excp_pf_instr = (instrPf_3 | _ldUpdate_T_18) & vmEnable &
    _io_requestor_3_resp_bits_excp_pf_ld_T_2; // @[TLB.scala 172:75]
  assign io_requestor_3_resp_bits_excp_af_instr = perm_3_af & vmEnable; // @[TLB.scala 182:86]
  assign io_requestor_4_resp_bits_paddr = vmEnable ? paddr_4 : io_requestor_4_resp_bits_paddr_REG; // @[TLB.scala 145:30]
  assign io_requestor_4_resp_bits_miss = ~hit_sameCycle_4 & vmEnable; // @[TLB.scala 134:41]
  assign io_requestor_4_resp_bits_excp_pf_instr = (instrPf_4 | _ldUpdate_T_24) & vmEnable &
    _io_requestor_4_resp_bits_excp_pf_ld_T_2; // @[TLB.scala 172:75]
  assign io_requestor_4_resp_bits_excp_af_instr = perm_4_af & vmEnable; // @[TLB.scala 182:86]
  assign io_requestor_5_resp_bits_paddr = vmEnable ? paddr_5 : io_requestor_5_resp_bits_paddr_REG; // @[TLB.scala 145:30]
  assign io_requestor_5_resp_bits_miss = ~hit_sameCycle_5 & vmEnable; // @[TLB.scala 134:41]
  assign io_requestor_5_resp_bits_excp_pf_instr = (instrPf_5 | _ldUpdate_T_30) & vmEnable &
    _io_requestor_5_resp_bits_excp_pf_ld_T_2; // @[TLB.scala 172:75]
  assign io_requestor_5_resp_bits_excp_af_instr = perm_5_af & vmEnable; // @[TLB.scala 182:86]
  assign io_ptw_req_0_valid = _io_ptw_req_0_valid_T_2 & _io_ptw_req_0_valid_T_3; // @[TLB.scala 247:40]
  assign io_ptw_req_0_bits_vpn = io_ptw_req_0_bits_vpn_REG_1; // @[TLB.scala 249:28]
  assign io_ptw_req_1_valid = _io_ptw_req_1_valid_T_2 & _io_ptw_req_1_valid_T_3; // @[TLB.scala 247:40]
  assign io_ptw_req_1_bits_vpn = io_ptw_req_1_bits_vpn_REG_1; // @[TLB.scala 249:28]
  assign io_ptw_req_2_valid = _io_ptw_req_2_valid_T_2 & _io_ptw_req_2_valid_T_3; // @[TLB.scala 247:40]
  assign io_ptw_req_2_bits_vpn = io_ptw_req_2_bits_vpn_REG_1; // @[TLB.scala 249:28]
  assign io_ptw_req_3_valid = _io_ptw_req_3_valid_T_2 & _io_ptw_req_3_valid_T_3; // @[TLB.scala 247:40]
  assign io_ptw_req_3_bits_vpn = io_ptw_req_3_bits_vpn_REG_1; // @[TLB.scala 249:28]
  assign io_ptw_req_4_valid = _io_ptw_req_4_valid_T_2 & _io_ptw_req_4_valid_T_3; // @[TLB.scala 247:40]
  assign io_ptw_req_4_bits_vpn = io_ptw_req_4_bits_vpn_REG_1; // @[TLB.scala 249:28]
  assign io_ptw_req_5_valid = _io_ptw_req_5_valid_T_2 & _io_ptw_req_5_valid_T_3; // @[TLB.scala 247:40]
  assign io_ptw_req_5_bits_vpn = io_ptw_req_5_bits_vpn_REG_1; // @[TLB.scala 249:28]
  assign io_ptw_resp_ready = 1'h1; // @[TLB.scala 251:21]
  assign normalPage_tlb_normal_fa_clock = clock;
  assign normalPage_tlb_normal_fa_reset = reset;
  assign normalPage_tlb_normal_fa_io_sfence_valid = io_sfence_valid; // @[TLB.scala 109:21]
  assign normalPage_tlb_normal_fa_io_sfence_bits_rs1 = io_sfence_bits_rs1; // @[TLB.scala 109:21]
  assign normalPage_tlb_normal_fa_io_sfence_bits_rs2 = io_sfence_bits_rs2; // @[TLB.scala 109:21]
  assign normalPage_tlb_normal_fa_io_sfence_bits_addr = io_sfence_bits_addr; // @[TLB.scala 109:21]
  assign normalPage_tlb_normal_fa_io_sfence_bits_asid = io_sfence_bits_asid; // @[TLB.scala 109:21]
  assign normalPage_tlb_normal_fa_io_csr_satp_asid = io_csr_satp_asid; // @[TLB.scala 111:18]
  assign normalPage_tlb_normal_fa_io_rreq_0_valid = io_requestor_0_req_valid; // @[MMUBundle.scala 308:25]
  assign normalPage_tlb_normal_fa_io_rreq_0_bits_vpn = io_requestor_0_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign normalPage_tlb_normal_fa_io_rreq_1_valid = io_requestor_1_req_valid; // @[MMUBundle.scala 308:25]
  assign normalPage_tlb_normal_fa_io_rreq_1_bits_vpn = io_requestor_1_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign normalPage_tlb_normal_fa_io_rreq_2_valid = io_requestor_2_req_valid; // @[MMUBundle.scala 308:25]
  assign normalPage_tlb_normal_fa_io_rreq_2_bits_vpn = io_requestor_2_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign normalPage_tlb_normal_fa_io_rreq_3_valid = io_requestor_3_req_valid; // @[MMUBundle.scala 308:25]
  assign normalPage_tlb_normal_fa_io_rreq_3_bits_vpn = io_requestor_3_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign normalPage_tlb_normal_fa_io_rreq_4_valid = io_requestor_4_req_valid; // @[MMUBundle.scala 308:25]
  assign normalPage_tlb_normal_fa_io_rreq_4_bits_vpn = io_requestor_4_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign normalPage_tlb_normal_fa_io_rreq_5_valid = io_requestor_5_req_valid; // @[MMUBundle.scala 308:25]
  assign normalPage_tlb_normal_fa_io_rreq_5_bits_vpn = io_requestor_5_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign normalPage_tlb_normal_fa_io_wvalid = refill & io_ptw_resp_bits_entry_level == 2'h2; // @[TLB.scala 229:17]
  assign normalPage_tlb_normal_fa_io_wwayIdx = {normal_refill_idx_left_subtree_older,_normal_refill_idx_T_104}; // @[Cat.scala 31:58]
  assign normalPage_tlb_normal_fa_io_wdata_entry_tag = io_ptw_resp_bits_entry_tag; // @[MMUBundle.scala 319:22]
  assign normalPage_tlb_normal_fa_io_wdata_entry_ppn = io_ptw_resp_bits_entry_ppn; // @[MMUBundle.scala 319:22]
  assign normalPage_tlb_normal_fa_io_wdata_entry_perm_d = io_ptw_resp_bits_entry_perm_d; // @[MMUBundle.scala 319:22]
  assign normalPage_tlb_normal_fa_io_wdata_entry_perm_a = io_ptw_resp_bits_entry_perm_a; // @[MMUBundle.scala 319:22]
  assign normalPage_tlb_normal_fa_io_wdata_entry_perm_g = io_ptw_resp_bits_entry_perm_g; // @[MMUBundle.scala 319:22]
  assign normalPage_tlb_normal_fa_io_wdata_entry_perm_u = io_ptw_resp_bits_entry_perm_u; // @[MMUBundle.scala 319:22]
  assign normalPage_tlb_normal_fa_io_wdata_entry_perm_x = io_ptw_resp_bits_entry_perm_x; // @[MMUBundle.scala 319:22]
  assign normalPage_tlb_normal_fa_io_wdata_entry_perm_w = io_ptw_resp_bits_entry_perm_w; // @[MMUBundle.scala 319:22]
  assign normalPage_tlb_normal_fa_io_wdata_entry_perm_r = io_ptw_resp_bits_entry_perm_r; // @[MMUBundle.scala 319:22]
  assign normalPage_tlb_normal_fa_io_wdata_pf = io_ptw_resp_bits_pf; // @[MMUBundle.scala 319:22]
  assign normalPage_tlb_normal_fa_io_wdata_af = io_ptw_resp_bits_af; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_clock = clock;
  assign superPage_tlb_super_fa_reset = reset;
  assign superPage_tlb_super_fa_io_sfence_valid = io_sfence_valid; // @[TLB.scala 110:20]
  assign superPage_tlb_super_fa_io_sfence_bits_rs1 = io_sfence_bits_rs1; // @[TLB.scala 110:20]
  assign superPage_tlb_super_fa_io_sfence_bits_rs2 = io_sfence_bits_rs2; // @[TLB.scala 110:20]
  assign superPage_tlb_super_fa_io_sfence_bits_addr = io_sfence_bits_addr; // @[TLB.scala 110:20]
  assign superPage_tlb_super_fa_io_sfence_bits_asid = io_sfence_bits_asid; // @[TLB.scala 110:20]
  assign superPage_tlb_super_fa_io_csr_satp_asid = io_csr_satp_asid; // @[TLB.scala 112:17]
  assign superPage_tlb_super_fa_io_rreq_0_valid = io_requestor_0_req_valid; // @[MMUBundle.scala 308:25]
  assign superPage_tlb_super_fa_io_rreq_0_bits_vpn = io_requestor_0_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign superPage_tlb_super_fa_io_rreq_1_valid = io_requestor_1_req_valid; // @[MMUBundle.scala 308:25]
  assign superPage_tlb_super_fa_io_rreq_1_bits_vpn = io_requestor_1_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign superPage_tlb_super_fa_io_rreq_2_valid = io_requestor_2_req_valid; // @[MMUBundle.scala 308:25]
  assign superPage_tlb_super_fa_io_rreq_2_bits_vpn = io_requestor_2_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign superPage_tlb_super_fa_io_rreq_3_valid = io_requestor_3_req_valid; // @[MMUBundle.scala 308:25]
  assign superPage_tlb_super_fa_io_rreq_3_bits_vpn = io_requestor_3_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign superPage_tlb_super_fa_io_rreq_4_valid = io_requestor_4_req_valid; // @[MMUBundle.scala 308:25]
  assign superPage_tlb_super_fa_io_rreq_4_bits_vpn = io_requestor_4_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign superPage_tlb_super_fa_io_rreq_5_valid = io_requestor_5_req_valid; // @[MMUBundle.scala 308:25]
  assign superPage_tlb_super_fa_io_rreq_5_bits_vpn = io_requestor_5_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign superPage_tlb_super_fa_io_wvalid = refill & io_ptw_resp_bits_entry_level != 2'h2; // @[TLB.scala 236:17]
  assign superPage_tlb_super_fa_io_wwayIdx = {super_refill_idx_left_subtree_older,_super_refill_idx_T_62}; // @[Cat.scala 31:58]
  assign superPage_tlb_super_fa_io_wdata_entry_tag = io_ptw_resp_bits_entry_tag; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_io_wdata_entry_ppn = io_ptw_resp_bits_entry_ppn; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_io_wdata_entry_perm_d = io_ptw_resp_bits_entry_perm_d; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_io_wdata_entry_perm_a = io_ptw_resp_bits_entry_perm_a; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_io_wdata_entry_perm_g = io_ptw_resp_bits_entry_perm_g; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_io_wdata_entry_perm_u = io_ptw_resp_bits_entry_perm_u; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_io_wdata_entry_perm_x = io_ptw_resp_bits_entry_perm_x; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_io_wdata_entry_perm_w = io_ptw_resp_bits_entry_perm_w; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_io_wdata_entry_perm_r = io_ptw_resp_bits_entry_perm_r; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_io_wdata_entry_level = io_ptw_resp_bits_entry_level; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_io_wdata_pf = io_ptw_resp_bits_pf; // @[MMUBundle.scala 319:22]
  assign superPage_tlb_super_fa_io_wdata_af = io_ptw_resp_bits_af; // @[MMUBundle.scala 319:22]
  always @(posedge clock) begin
    validRegVec_0 <= io_requestor_0_req_valid; // @[TLB.scala 127:45]
    offReg <= io_requestor_0_req_bits_vaddr[11:0]; // @[TLB.scala 56:46]
    io_requestor_0_resp_bits_paddr_REG <= io_requestor_0_req_bits_vaddr[35:0]; // @[BitUtils.scala 44:23]
    validRegVec_1 <= io_requestor_1_req_valid; // @[TLB.scala 127:45]
    offReg_1 <= io_requestor_1_req_bits_vaddr[11:0]; // @[TLB.scala 56:46]
    io_requestor_1_resp_bits_paddr_REG <= io_requestor_1_req_bits_vaddr[35:0]; // @[BitUtils.scala 44:23]
    validRegVec_2 <= io_requestor_2_req_valid; // @[TLB.scala 127:45]
    offReg_2 <= io_requestor_2_req_bits_vaddr[11:0]; // @[TLB.scala 56:46]
    io_requestor_2_resp_bits_paddr_REG <= io_requestor_2_req_bits_vaddr[35:0]; // @[BitUtils.scala 44:23]
    validRegVec_3 <= io_requestor_3_req_valid; // @[TLB.scala 127:45]
    offReg_3 <= io_requestor_3_req_bits_vaddr[11:0]; // @[TLB.scala 56:46]
    io_requestor_3_resp_bits_paddr_REG <= io_requestor_3_req_bits_vaddr[35:0]; // @[BitUtils.scala 44:23]
    validRegVec_4 <= io_requestor_4_req_valid; // @[TLB.scala 127:45]
    offReg_4 <= io_requestor_4_req_bits_vaddr[11:0]; // @[TLB.scala 56:46]
    io_requestor_4_resp_bits_paddr_REG <= io_requestor_4_req_bits_vaddr[35:0]; // @[BitUtils.scala 44:23]
    validRegVec_5 <= io_requestor_5_req_valid; // @[TLB.scala 127:45]
    offReg_5 <= io_requestor_5_req_bits_vaddr[11:0]; // @[TLB.scala 56:46]
    io_requestor_5_resp_bits_paddr_REG <= io_requestor_5_req_bits_vaddr[35:0]; // @[BitUtils.scala 44:23]
    if (reset) begin // @[Replacement.scala 198:70]
      normal_refill_idx_state_reg <= 31'h0; // @[Replacement.scala 198:70]
    end else if (_normal_refill_idx_T_4) begin // @[Replacement.scala 205:40]
      if (normalPage_tlb_normal_fa_io_access_5_touch_ways_valid) begin // @[Replacement.scala 41:56]
        normal_refill_idx_state_reg <= _normal_refill_idx_state_reg_T_646;
      end else if (normalPage_tlb_normal_fa_io_access_4_touch_ways_valid) begin // @[Replacement.scala 41:56]
        normal_refill_idx_state_reg <= _normal_refill_idx_state_reg_T_538;
      end else begin
        normal_refill_idx_state_reg <= _normal_refill_idx_state_reg_T_431;
      end
    end
    if (reset) begin // @[Replacement.scala 198:70]
      super_refill_idx_state_reg <= 3'h0; // @[Replacement.scala 198:70]
    end else if (_super_refill_idx_T_4) begin // @[Replacement.scala 205:40]
      if (superPage_tlb_super_fa_io_access_5_touch_ways_valid) begin // @[Replacement.scala 41:56]
        super_refill_idx_state_reg <= _super_refill_idx_state_reg_T_58;
      end else if (superPage_tlb_super_fa_io_access_4_touch_ways_valid) begin // @[Replacement.scala 41:56]
        super_refill_idx_state_reg <= _super_refill_idx_state_reg_T_48;
      end else begin
        super_refill_idx_state_reg <= _super_refill_idx_state_reg_T_39;
      end
    end
    if (reset) begin // @[TLB.scala 258:22]
      io_ptw_req_0_valid_REG <= 1'h0; // @[TLB.scala 258:22]
    end else begin
      io_ptw_req_0_valid_REG <= _io_ptw_req_0_valid_T; // @[TLB.scala 258:22]
    end
    if (reset) begin // @[TLB.scala 247:15]
      io_ptw_req_0_valid_REG_1 <= 1'h0; // @[TLB.scala 247:15]
    end else begin
      io_ptw_req_0_valid_REG_1 <= refill; // @[TLB.scala 247:15]
    end
    if (reset) begin // @[TLB.scala 248:50]
      io_ptw_req_0_valid_REG_2 <= 1'h0; // @[TLB.scala 248:50]
    end else begin
      io_ptw_req_0_valid_REG_2 <= refill; // @[TLB.scala 248:50]
    end
    if (reset) begin // @[TLB.scala 248:42]
      io_ptw_req_0_valid_REG_3 <= 1'h0; // @[TLB.scala 248:42]
    end else begin
      io_ptw_req_0_valid_REG_3 <= io_ptw_req_0_valid_REG_2; // @[TLB.scala 248:42]
    end
    io_ptw_req_0_bits_vpn_REG <= io_requestor_0_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
    io_ptw_req_0_bits_vpn_REG_1 <= io_ptw_req_0_bits_vpn_REG; // @[TLB.scala 254:22]
    if (reset) begin // @[TLB.scala 258:22]
      io_ptw_req_1_valid_REG <= 1'h0; // @[TLB.scala 258:22]
    end else begin
      io_ptw_req_1_valid_REG <= _io_ptw_req_1_valid_T; // @[TLB.scala 258:22]
    end
    if (reset) begin // @[TLB.scala 247:15]
      io_ptw_req_1_valid_REG_1 <= 1'h0; // @[TLB.scala 247:15]
    end else begin
      io_ptw_req_1_valid_REG_1 <= refill; // @[TLB.scala 247:15]
    end
    if (reset) begin // @[TLB.scala 248:50]
      io_ptw_req_1_valid_REG_2 <= 1'h0; // @[TLB.scala 248:50]
    end else begin
      io_ptw_req_1_valid_REG_2 <= refill; // @[TLB.scala 248:50]
    end
    if (reset) begin // @[TLB.scala 248:42]
      io_ptw_req_1_valid_REG_3 <= 1'h0; // @[TLB.scala 248:42]
    end else begin
      io_ptw_req_1_valid_REG_3 <= io_ptw_req_1_valid_REG_2; // @[TLB.scala 248:42]
    end
    io_ptw_req_1_bits_vpn_REG <= io_requestor_1_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
    io_ptw_req_1_bits_vpn_REG_1 <= io_ptw_req_1_bits_vpn_REG; // @[TLB.scala 254:22]
    if (reset) begin // @[TLB.scala 258:22]
      io_ptw_req_2_valid_REG <= 1'h0; // @[TLB.scala 258:22]
    end else begin
      io_ptw_req_2_valid_REG <= _io_ptw_req_2_valid_T; // @[TLB.scala 258:22]
    end
    if (reset) begin // @[TLB.scala 247:15]
      io_ptw_req_2_valid_REG_1 <= 1'h0; // @[TLB.scala 247:15]
    end else begin
      io_ptw_req_2_valid_REG_1 <= refill; // @[TLB.scala 247:15]
    end
    if (reset) begin // @[TLB.scala 248:50]
      io_ptw_req_2_valid_REG_2 <= 1'h0; // @[TLB.scala 248:50]
    end else begin
      io_ptw_req_2_valid_REG_2 <= refill; // @[TLB.scala 248:50]
    end
    if (reset) begin // @[TLB.scala 248:42]
      io_ptw_req_2_valid_REG_3 <= 1'h0; // @[TLB.scala 248:42]
    end else begin
      io_ptw_req_2_valid_REG_3 <= io_ptw_req_2_valid_REG_2; // @[TLB.scala 248:42]
    end
    io_ptw_req_2_bits_vpn_REG <= io_requestor_2_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
    io_ptw_req_2_bits_vpn_REG_1 <= io_ptw_req_2_bits_vpn_REG; // @[TLB.scala 254:22]
    if (reset) begin // @[TLB.scala 258:22]
      io_ptw_req_3_valid_REG <= 1'h0; // @[TLB.scala 258:22]
    end else begin
      io_ptw_req_3_valid_REG <= _io_ptw_req_3_valid_T; // @[TLB.scala 258:22]
    end
    if (reset) begin // @[TLB.scala 247:15]
      io_ptw_req_3_valid_REG_1 <= 1'h0; // @[TLB.scala 247:15]
    end else begin
      io_ptw_req_3_valid_REG_1 <= refill; // @[TLB.scala 247:15]
    end
    if (reset) begin // @[TLB.scala 248:50]
      io_ptw_req_3_valid_REG_2 <= 1'h0; // @[TLB.scala 248:50]
    end else begin
      io_ptw_req_3_valid_REG_2 <= refill; // @[TLB.scala 248:50]
    end
    if (reset) begin // @[TLB.scala 248:42]
      io_ptw_req_3_valid_REG_3 <= 1'h0; // @[TLB.scala 248:42]
    end else begin
      io_ptw_req_3_valid_REG_3 <= io_ptw_req_3_valid_REG_2; // @[TLB.scala 248:42]
    end
    io_ptw_req_3_bits_vpn_REG <= io_requestor_3_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
    io_ptw_req_3_bits_vpn_REG_1 <= io_ptw_req_3_bits_vpn_REG; // @[TLB.scala 254:22]
    if (reset) begin // @[TLB.scala 258:22]
      io_ptw_req_4_valid_REG <= 1'h0; // @[TLB.scala 258:22]
    end else begin
      io_ptw_req_4_valid_REG <= _io_ptw_req_4_valid_T; // @[TLB.scala 258:22]
    end
    if (reset) begin // @[TLB.scala 247:15]
      io_ptw_req_4_valid_REG_1 <= 1'h0; // @[TLB.scala 247:15]
    end else begin
      io_ptw_req_4_valid_REG_1 <= refill; // @[TLB.scala 247:15]
    end
    if (reset) begin // @[TLB.scala 248:50]
      io_ptw_req_4_valid_REG_2 <= 1'h0; // @[TLB.scala 248:50]
    end else begin
      io_ptw_req_4_valid_REG_2 <= refill; // @[TLB.scala 248:50]
    end
    if (reset) begin // @[TLB.scala 248:42]
      io_ptw_req_4_valid_REG_3 <= 1'h0; // @[TLB.scala 248:42]
    end else begin
      io_ptw_req_4_valid_REG_3 <= io_ptw_req_4_valid_REG_2; // @[TLB.scala 248:42]
    end
    io_ptw_req_4_bits_vpn_REG <= io_requestor_4_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
    io_ptw_req_4_bits_vpn_REG_1 <= io_ptw_req_4_bits_vpn_REG; // @[TLB.scala 254:22]
    if (reset) begin // @[TLB.scala 258:22]
      io_ptw_req_5_valid_REG <= 1'h0; // @[TLB.scala 258:22]
    end else begin
      io_ptw_req_5_valid_REG <= _io_ptw_req_5_valid_T; // @[TLB.scala 258:22]
    end
    if (reset) begin // @[TLB.scala 247:15]
      io_ptw_req_5_valid_REG_1 <= 1'h0; // @[TLB.scala 247:15]
    end else begin
      io_ptw_req_5_valid_REG_1 <= refill; // @[TLB.scala 247:15]
    end
    if (reset) begin // @[TLB.scala 248:50]
      io_ptw_req_5_valid_REG_2 <= 1'h0; // @[TLB.scala 248:50]
    end else begin
      io_ptw_req_5_valid_REG_2 <= refill; // @[TLB.scala 248:50]
    end
    if (reset) begin // @[TLB.scala 248:42]
      io_ptw_req_5_valid_REG_3 <= 1'h0; // @[TLB.scala 248:42]
    end else begin
      io_ptw_req_5_valid_REG_3 <= io_ptw_req_5_valid_REG_2; // @[TLB.scala 248:42]
    end
    io_ptw_req_5_bits_vpn_REG <= io_requestor_5_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
    io_ptw_req_5_bits_vpn_REG_1 <= io_ptw_req_5_bits_vpn_REG; // @[TLB.scala 254:22]
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
  validRegVec_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  offReg = _RAND_1[11:0];
  _RAND_2 = {2{`RANDOM}};
  io_requestor_0_resp_bits_paddr_REG = _RAND_2[35:0];
  _RAND_3 = {1{`RANDOM}};
  validRegVec_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  offReg_1 = _RAND_4[11:0];
  _RAND_5 = {2{`RANDOM}};
  io_requestor_1_resp_bits_paddr_REG = _RAND_5[35:0];
  _RAND_6 = {1{`RANDOM}};
  validRegVec_2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  offReg_2 = _RAND_7[11:0];
  _RAND_8 = {2{`RANDOM}};
  io_requestor_2_resp_bits_paddr_REG = _RAND_8[35:0];
  _RAND_9 = {1{`RANDOM}};
  validRegVec_3 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  offReg_3 = _RAND_10[11:0];
  _RAND_11 = {2{`RANDOM}};
  io_requestor_3_resp_bits_paddr_REG = _RAND_11[35:0];
  _RAND_12 = {1{`RANDOM}};
  validRegVec_4 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  offReg_4 = _RAND_13[11:0];
  _RAND_14 = {2{`RANDOM}};
  io_requestor_4_resp_bits_paddr_REG = _RAND_14[35:0];
  _RAND_15 = {1{`RANDOM}};
  validRegVec_5 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  offReg_5 = _RAND_16[11:0];
  _RAND_17 = {2{`RANDOM}};
  io_requestor_5_resp_bits_paddr_REG = _RAND_17[35:0];
  _RAND_18 = {1{`RANDOM}};
  normal_refill_idx_state_reg = _RAND_18[30:0];
  _RAND_19 = {1{`RANDOM}};
  super_refill_idx_state_reg = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  io_ptw_req_0_valid_REG = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_ptw_req_0_valid_REG_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_ptw_req_0_valid_REG_2 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_ptw_req_0_valid_REG_3 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_ptw_req_0_bits_vpn_REG = _RAND_24[26:0];
  _RAND_25 = {1{`RANDOM}};
  io_ptw_req_0_bits_vpn_REG_1 = _RAND_25[26:0];
  _RAND_26 = {1{`RANDOM}};
  io_ptw_req_1_valid_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_ptw_req_1_valid_REG_1 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_ptw_req_1_valid_REG_2 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_ptw_req_1_valid_REG_3 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_ptw_req_1_bits_vpn_REG = _RAND_30[26:0];
  _RAND_31 = {1{`RANDOM}};
  io_ptw_req_1_bits_vpn_REG_1 = _RAND_31[26:0];
  _RAND_32 = {1{`RANDOM}};
  io_ptw_req_2_valid_REG = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_ptw_req_2_valid_REG_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  io_ptw_req_2_valid_REG_2 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  io_ptw_req_2_valid_REG_3 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_ptw_req_2_bits_vpn_REG = _RAND_36[26:0];
  _RAND_37 = {1{`RANDOM}};
  io_ptw_req_2_bits_vpn_REG_1 = _RAND_37[26:0];
  _RAND_38 = {1{`RANDOM}};
  io_ptw_req_3_valid_REG = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_ptw_req_3_valid_REG_1 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  io_ptw_req_3_valid_REG_2 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  io_ptw_req_3_valid_REG_3 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  io_ptw_req_3_bits_vpn_REG = _RAND_42[26:0];
  _RAND_43 = {1{`RANDOM}};
  io_ptw_req_3_bits_vpn_REG_1 = _RAND_43[26:0];
  _RAND_44 = {1{`RANDOM}};
  io_ptw_req_4_valid_REG = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  io_ptw_req_4_valid_REG_1 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  io_ptw_req_4_valid_REG_2 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  io_ptw_req_4_valid_REG_3 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  io_ptw_req_4_bits_vpn_REG = _RAND_48[26:0];
  _RAND_49 = {1{`RANDOM}};
  io_ptw_req_4_bits_vpn_REG_1 = _RAND_49[26:0];
  _RAND_50 = {1{`RANDOM}};
  io_ptw_req_5_valid_REG = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  io_ptw_req_5_valid_REG_1 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  io_ptw_req_5_valid_REG_2 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  io_ptw_req_5_valid_REG_3 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  io_ptw_req_5_bits_vpn_REG = _RAND_54[26:0];
  _RAND_55 = {1{`RANDOM}};
  io_ptw_req_5_bits_vpn_REG_1 = _RAND_55[26:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
