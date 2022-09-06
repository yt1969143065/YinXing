module TLB_1(
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
  input         io_csr_priv_mxr,
  input         io_csr_priv_sum,
  input  [1:0]  io_csr_priv_dmode,
  input         io_requestor_0_req_valid,
  input  [38:0] io_requestor_0_req_bits_vaddr,
  input  [2:0]  io_requestor_0_req_bits_cmd,
  output        io_requestor_0_resp_valid,
  output [35:0] io_requestor_0_resp_bits_paddr,
  output        io_requestor_0_resp_bits_miss,
  output        io_requestor_0_resp_bits_fast_miss,
  output        io_requestor_0_resp_bits_excp_pf_ld,
  output        io_requestor_0_resp_bits_excp_pf_st,
  output        io_requestor_0_resp_bits_excp_af_ld,
  output        io_requestor_0_resp_bits_excp_af_st,
  output        io_requestor_0_resp_bits_static_pm_valid,
  output        io_requestor_0_resp_bits_static_pm_bits,
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
  input         io_ptw_resp_bits_af,
  input         io_ptw_replenish_c,
  input         io_ptw_replenish_atomic,
  input         io_ptw_replenish_x,
  input         io_ptw_replenish_w,
  input         io_ptw_replenish_r,
  output        io_replace_superPage_access_0_touch_ways_valid,
  output [2:0]  io_replace_superPage_access_0_touch_ways_bits,
  input  [2:0]  io_replace_superPage_refillIdx,
  output        io_pmp_0_valid,
  output [35:0] io_pmp_0_bits_addr,
  output [2:0]  io_pmp_0_bits_cmd
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  wire  normalPage_tlb_normal_sa_clock; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_reset; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_sfence_valid; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_sfence_bits_rs1; // @[TLBStorage.scala 312:28]
  wire [38:0] normalPage_tlb_normal_sa_io_sfence_bits_addr; // @[TLBStorage.scala 312:28]
  wire [15:0] normalPage_tlb_normal_sa_io_csr_satp_asid; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rreq_0_ready; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rreq_0_valid; // @[TLBStorage.scala 312:28]
  wire [26:0] normalPage_tlb_normal_sa_io_rreq_0_bits_vpn; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_hit; // @[TLBStorage.scala 312:28]
  wire [23:0] normalPage_tlb_normal_sa_io_rresp_0_bits_ppn; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pf; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_perm_af; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_perm_d; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_perm_a; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_perm_u; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_perm_x; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_perm_w; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_perm_r; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pm_r; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pm_w; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pm_c; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_valid; // @[TLBStorage.scala 312:28]
  wire [26:0] normalPage_tlb_normal_sa_io_victim_in_bits_entry_tag; // @[TLBStorage.scala 312:28]
  wire [15:0] normalPage_tlb_normal_sa_io_victim_in_bits_entry_asid; // @[TLBStorage.scala 312:28]
  wire [23:0] normalPage_tlb_normal_sa_io_victim_in_bits_entry_ppn; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pf; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_af; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_d; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_a; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_g; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_u; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_x; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_w; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_r; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_r; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_w; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_x; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_c; // @[TLBStorage.scala 312:28]
  wire  normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_atomic; // @[TLBStorage.scala 312:28]
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
  wire  superPage_tlb_super_fa_io_rresp_0_valid; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_hit; // @[TLBStorage.scala 308:28]
  wire [23:0] superPage_tlb_super_fa_io_rresp_0_bits_ppn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_pf; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_af; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_d; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_a; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_u; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_x; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_w; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_rresp_0_bits_perm_r; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wvalid; // @[TLBStorage.scala 308:28]
  wire [2:0] superPage_tlb_super_fa_io_wwayIdx; // @[TLBStorage.scala 308:28]
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
  wire  superPage_tlb_super_fa_io_wdata_replenish_c; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_replenish_atomic; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_replenish_x; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_replenish_w; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_wdata_replenish_r; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_valid; // @[TLBStorage.scala 308:28]
  wire [26:0] superPage_tlb_super_fa_io_victim_out_bits_entry_tag; // @[TLBStorage.scala 308:28]
  wire [15:0] superPage_tlb_super_fa_io_victim_out_bits_entry_asid; // @[TLBStorage.scala 308:28]
  wire [23:0] superPage_tlb_super_fa_io_victim_out_bits_entry_ppn; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pf; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_af; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_d; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_a; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_g; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_u; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_x; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_w; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_r; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_r; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_w; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_x; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_c; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_atomic; // @[TLBStorage.scala 308:28]
  wire  superPage_tlb_super_fa_io_access_0_touch_ways_valid; // @[TLBStorage.scala 308:28]
  wire [2:0] superPage_tlb_super_fa_io_access_0_touch_ways_bits; // @[TLBStorage.scala 308:28]
  wire  vmEnable = io_csr_satp_mode == 4'h8 & io_csr_priv_dmode < 2'h3; // @[TLB.scala 54:27]
  wire  hit_0 = normalPage_tlb_normal_sa_io_rresp_0_bits_hit | superPage_tlb_super_fa_io_rresp_0_bits_hit; // @[TLB.scala 119:26]
  wire [23:0] ppn = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_ppn :
    normalPage_tlb_normal_sa_io_rresp_0_bits_ppn; // @[TLB.scala 121:18]
  wire  perm_pf = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_pf :
    normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pf; // @[TLB.scala 122:19]
  wire  perm_af = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_af :
    normalPage_tlb_normal_sa_io_rresp_0_bits_perm_af; // @[TLB.scala 122:19]
  wire  perm_d = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_d :
    normalPage_tlb_normal_sa_io_rresp_0_bits_perm_d; // @[TLB.scala 122:19]
  wire  perm_a = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_a :
    normalPage_tlb_normal_sa_io_rresp_0_bits_perm_a; // @[TLB.scala 122:19]
  wire  perm_u = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_u :
    normalPage_tlb_normal_sa_io_rresp_0_bits_perm_u; // @[TLB.scala 122:19]
  wire  perm_x = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_x :
    normalPage_tlb_normal_sa_io_rresp_0_bits_perm_x; // @[TLB.scala 122:19]
  wire  perm_w = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_w :
    normalPage_tlb_normal_sa_io_rresp_0_bits_perm_w; // @[TLB.scala 122:19]
  wire  perm_r = superPage_tlb_super_fa_io_rresp_0_bits_hit ? superPage_tlb_super_fa_io_rresp_0_bits_perm_r :
    normalPage_tlb_normal_sa_io_rresp_0_bits_perm_r; // @[TLB.scala 122:19]
  reg [2:0] cmdReg; // @[TLB.scala 126:43]
  reg  validRegVec_0; // @[TLB.scala 127:45]
  reg [11:0] offReg; // @[TLB.scala 128:43]
  wire  miss_0 = ~hit_0 & vmEnable; // @[TLB.scala 132:21]
  wire  fast_miss = ~superPage_tlb_super_fa_io_rresp_0_bits_hit & vmEnable; // @[TLB.scala 133:32]
  wire [35:0] paddr = {ppn,offReg}; // @[Cat.scala 31:58]
  reg  refill_reg; // @[TLB.scala 142:29]
  reg [35:0] io_requestor_0_resp_bits_paddr_REG; // @[TLB.scala 145:73]
  wire  _io_requestor_0_resp_bits_ptwBack_T = io_ptw_resp_ready & io_ptw_resp_valid; // @[Decoupled.scala 50:35]
  wire [35:0] _pmp_paddr_T = {superPage_tlb_super_fa_io_rresp_0_bits_ppn,offReg}; // @[Cat.scala 31:58]
  reg [35:0] pmp_paddr_REG; // @[TLB.scala 153:84]
  wire  _ldUpdate_T = ~perm_a; // @[TLB.scala 159:20]
  wire  _ldUpdate_T_2 = cmdReg[1:0] == 2'h0; // @[MMUBundle.scala 272:31]
  wire  _ldUpdate_T_4 = cmdReg == 3'h5; // @[MMUBundle.scala 277:25]
  wire  _ldUpdate_T_5 = ~_ldUpdate_T_4; // @[TLB.scala 159:56]
  wire  ldUpdate = ~perm_a & _ldUpdate_T_2 & ~_ldUpdate_T_4; // @[TLB.scala 159:53]
  wire  _stUpdate_T_4 = cmdReg[1:0] == 2'h1; // @[MMUBundle.scala 273:32]
  wire  _stUpdate_T_6 = _stUpdate_T_4 | _ldUpdate_T_4; // @[TLB.scala 160:68]
  wire  stUpdate = (_ldUpdate_T | ~perm_d) & (_stUpdate_T_4 | _ldUpdate_T_4); // @[TLB.scala 160:41]
  wire  modeCheck = ~(io_csr_priv_dmode == 2'h0 & ~perm_u | io_csr_priv_dmode == 2'h1 & perm_u & ~io_csr_priv_sum); // @[TLB.scala 162:21]
  wire  ldPermFail = ~(modeCheck & (perm_r | io_csr_priv_mxr & perm_x)); // @[TLB.scala 163:22]
  wire  stPermFail = ~(modeCheck & perm_w); // @[TLB.scala 164:22]
  wire  ldPf = (ldPermFail | perm_pf) & (_ldUpdate_T_2 & _ldUpdate_T_5); // @[TLB.scala 166:35]
  wire  stPf = (stPermFail | perm_pf) & _stUpdate_T_6; // @[TLB.scala 167:35]
  wire  _io_requestor_0_resp_bits_excp_pf_ld_T_2 = ~perm_af; // @[TLB.scala 170:69]
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
  TLBSA normalPage_tlb_normal_sa ( // @[TLBStorage.scala 312:28]
    .clock(normalPage_tlb_normal_sa_clock),
    .reset(normalPage_tlb_normal_sa_reset),
    .io_sfence_valid(normalPage_tlb_normal_sa_io_sfence_valid),
    .io_sfence_bits_rs1(normalPage_tlb_normal_sa_io_sfence_bits_rs1),
    .io_sfence_bits_addr(normalPage_tlb_normal_sa_io_sfence_bits_addr),
    .io_csr_satp_asid(normalPage_tlb_normal_sa_io_csr_satp_asid),
    .io_rreq_0_ready(normalPage_tlb_normal_sa_io_rreq_0_ready),
    .io_rreq_0_valid(normalPage_tlb_normal_sa_io_rreq_0_valid),
    .io_rreq_0_bits_vpn(normalPage_tlb_normal_sa_io_rreq_0_bits_vpn),
    .io_rresp_0_bits_hit(normalPage_tlb_normal_sa_io_rresp_0_bits_hit),
    .io_rresp_0_bits_ppn(normalPage_tlb_normal_sa_io_rresp_0_bits_ppn),
    .io_rresp_0_bits_perm_pf(normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pf),
    .io_rresp_0_bits_perm_af(normalPage_tlb_normal_sa_io_rresp_0_bits_perm_af),
    .io_rresp_0_bits_perm_d(normalPage_tlb_normal_sa_io_rresp_0_bits_perm_d),
    .io_rresp_0_bits_perm_a(normalPage_tlb_normal_sa_io_rresp_0_bits_perm_a),
    .io_rresp_0_bits_perm_u(normalPage_tlb_normal_sa_io_rresp_0_bits_perm_u),
    .io_rresp_0_bits_perm_x(normalPage_tlb_normal_sa_io_rresp_0_bits_perm_x),
    .io_rresp_0_bits_perm_w(normalPage_tlb_normal_sa_io_rresp_0_bits_perm_w),
    .io_rresp_0_bits_perm_r(normalPage_tlb_normal_sa_io_rresp_0_bits_perm_r),
    .io_rresp_0_bits_perm_pm_r(normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pm_r),
    .io_rresp_0_bits_perm_pm_w(normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pm_w),
    .io_rresp_0_bits_perm_pm_c(normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pm_c),
    .io_victim_in_valid(normalPage_tlb_normal_sa_io_victim_in_valid),
    .io_victim_in_bits_entry_tag(normalPage_tlb_normal_sa_io_victim_in_bits_entry_tag),
    .io_victim_in_bits_entry_asid(normalPage_tlb_normal_sa_io_victim_in_bits_entry_asid),
    .io_victim_in_bits_entry_ppn(normalPage_tlb_normal_sa_io_victim_in_bits_entry_ppn),
    .io_victim_in_bits_entry_perm_pf(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pf),
    .io_victim_in_bits_entry_perm_af(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_af),
    .io_victim_in_bits_entry_perm_d(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_d),
    .io_victim_in_bits_entry_perm_a(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_a),
    .io_victim_in_bits_entry_perm_g(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_g),
    .io_victim_in_bits_entry_perm_u(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_u),
    .io_victim_in_bits_entry_perm_x(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_x),
    .io_victim_in_bits_entry_perm_w(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_w),
    .io_victim_in_bits_entry_perm_r(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_r),
    .io_victim_in_bits_entry_perm_pm_r(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_r),
    .io_victim_in_bits_entry_perm_pm_w(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_w),
    .io_victim_in_bits_entry_perm_pm_x(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_x),
    .io_victim_in_bits_entry_perm_pm_c(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_c),
    .io_victim_in_bits_entry_perm_pm_atomic(normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_atomic)
  );
  TLBFA_2 superPage_tlb_super_fa ( // @[TLBStorage.scala 308:28]
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
    .io_rresp_0_valid(superPage_tlb_super_fa_io_rresp_0_valid),
    .io_rresp_0_bits_hit(superPage_tlb_super_fa_io_rresp_0_bits_hit),
    .io_rresp_0_bits_ppn(superPage_tlb_super_fa_io_rresp_0_bits_ppn),
    .io_rresp_0_bits_perm_pf(superPage_tlb_super_fa_io_rresp_0_bits_perm_pf),
    .io_rresp_0_bits_perm_af(superPage_tlb_super_fa_io_rresp_0_bits_perm_af),
    .io_rresp_0_bits_perm_d(superPage_tlb_super_fa_io_rresp_0_bits_perm_d),
    .io_rresp_0_bits_perm_a(superPage_tlb_super_fa_io_rresp_0_bits_perm_a),
    .io_rresp_0_bits_perm_u(superPage_tlb_super_fa_io_rresp_0_bits_perm_u),
    .io_rresp_0_bits_perm_x(superPage_tlb_super_fa_io_rresp_0_bits_perm_x),
    .io_rresp_0_bits_perm_w(superPage_tlb_super_fa_io_rresp_0_bits_perm_w),
    .io_rresp_0_bits_perm_r(superPage_tlb_super_fa_io_rresp_0_bits_perm_r),
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
    .io_wdata_replenish_c(superPage_tlb_super_fa_io_wdata_replenish_c),
    .io_wdata_replenish_atomic(superPage_tlb_super_fa_io_wdata_replenish_atomic),
    .io_wdata_replenish_x(superPage_tlb_super_fa_io_wdata_replenish_x),
    .io_wdata_replenish_w(superPage_tlb_super_fa_io_wdata_replenish_w),
    .io_wdata_replenish_r(superPage_tlb_super_fa_io_wdata_replenish_r),
    .io_victim_out_valid(superPage_tlb_super_fa_io_victim_out_valid),
    .io_victim_out_bits_entry_tag(superPage_tlb_super_fa_io_victim_out_bits_entry_tag),
    .io_victim_out_bits_entry_asid(superPage_tlb_super_fa_io_victim_out_bits_entry_asid),
    .io_victim_out_bits_entry_ppn(superPage_tlb_super_fa_io_victim_out_bits_entry_ppn),
    .io_victim_out_bits_entry_perm_pf(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pf),
    .io_victim_out_bits_entry_perm_af(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_af),
    .io_victim_out_bits_entry_perm_d(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_d),
    .io_victim_out_bits_entry_perm_a(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_a),
    .io_victim_out_bits_entry_perm_g(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_g),
    .io_victim_out_bits_entry_perm_u(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_u),
    .io_victim_out_bits_entry_perm_x(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_x),
    .io_victim_out_bits_entry_perm_w(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_w),
    .io_victim_out_bits_entry_perm_r(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_r),
    .io_victim_out_bits_entry_perm_pm_r(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_r),
    .io_victim_out_bits_entry_perm_pm_w(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_w),
    .io_victim_out_bits_entry_perm_pm_x(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_x),
    .io_victim_out_bits_entry_perm_pm_c(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_c),
    .io_victim_out_bits_entry_perm_pm_atomic(superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_atomic),
    .io_access_0_touch_ways_valid(superPage_tlb_super_fa_io_access_0_touch_ways_valid),
    .io_access_0_touch_ways_bits(superPage_tlb_super_fa_io_access_0_touch_ways_bits)
  );
  assign io_requestor_0_resp_valid = validRegVec_0; // @[TLB.scala 144:19]
  assign io_requestor_0_resp_bits_paddr = vmEnable ? paddr : io_requestor_0_resp_bits_paddr_REG; // @[TLB.scala 145:30]
  assign io_requestor_0_resp_bits_miss = miss_0 | refill_reg; // @[TLB.scala 146:75]
  assign io_requestor_0_resp_bits_fast_miss = fast_miss | refill_reg; // @[TLB.scala 147:41]
  assign io_requestor_0_resp_bits_excp_pf_ld = (ldPf | ldUpdate) & vmEnable & ~perm_af; // @[TLB.scala 170:66]
  assign io_requestor_0_resp_bits_excp_pf_st = (stPf | stUpdate) & vmEnable & _io_requestor_0_resp_bits_excp_pf_ld_T_2; // @[TLB.scala 171:66]
  assign io_requestor_0_resp_bits_excp_af_ld = (perm_af | fast_miss & ~
    normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pm_r) & _ldUpdate_T_2 & vmEnable; // @[TLB.scala 180:86]
  assign io_requestor_0_resp_bits_excp_af_st = (perm_af | fast_miss & ~
    normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pm_w) & _stUpdate_T_4 & vmEnable; // @[TLB.scala 181:87]
  assign io_requestor_0_resp_bits_static_pm_valid = fast_miss & vmEnable; // @[TLB.scala 183:43]
  assign io_requestor_0_resp_bits_static_pm_bits = ~normalPage_tlb_normal_sa_io_rresp_0_bits_perm_pm_c; // @[TLB.scala 184:36]
  assign io_ptw_req_0_valid = _io_ptw_req_0_valid_T_2 & _io_ptw_req_0_valid_T_3; // @[TLB.scala 247:40]
  assign io_ptw_req_0_bits_vpn = io_ptw_req_0_bits_vpn_REG_1; // @[TLB.scala 249:28]
  assign io_ptw_resp_ready = 1'h1; // @[TLB.scala 251:21]
  assign io_replace_superPage_access_0_touch_ways_valid = superPage_tlb_super_fa_io_access_0_touch_ways_valid; // @[TLB.scala 217:33]
  assign io_replace_superPage_access_0_touch_ways_bits = superPage_tlb_super_fa_io_access_0_touch_ways_bits; // @[TLB.scala 217:33]
  assign io_pmp_0_valid = io_requestor_0_resp_valid; // @[TLB.scala 154:18]
  assign io_pmp_0_bits_addr = vmEnable ? _pmp_paddr_T : pmp_paddr_REG; // @[TLB.scala 153:24]
  assign io_pmp_0_bits_cmd = cmdReg; // @[TLB.scala 157:21]
  assign normalPage_tlb_normal_sa_clock = clock;
  assign normalPage_tlb_normal_sa_reset = reset;
  assign normalPage_tlb_normal_sa_io_sfence_valid = io_sfence_valid; // @[TLB.scala 109:21]
  assign normalPage_tlb_normal_sa_io_sfence_bits_rs1 = io_sfence_bits_rs1; // @[TLB.scala 109:21]
  assign normalPage_tlb_normal_sa_io_sfence_bits_addr = io_sfence_bits_addr; // @[TLB.scala 109:21]
  assign normalPage_tlb_normal_sa_io_csr_satp_asid = io_csr_satp_asid; // @[TLB.scala 111:18]
  assign normalPage_tlb_normal_sa_io_rreq_0_valid = io_requestor_0_req_valid; // @[MMUBundle.scala 308:25]
  assign normalPage_tlb_normal_sa_io_rreq_0_bits_vpn = io_requestor_0_req_bits_vaddr[38:12]; // @[TLB.scala 56:46]
  assign normalPage_tlb_normal_sa_io_victim_in_valid = superPage_tlb_super_fa_io_victim_out_valid; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_tag = superPage_tlb_super_fa_io_victim_out_bits_entry_tag; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_asid = superPage_tlb_super_fa_io_victim_out_bits_entry_asid; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_ppn = superPage_tlb_super_fa_io_victim_out_bits_entry_ppn; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pf =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pf; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_af =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_af; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_d =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_d; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_a =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_a; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_g =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_g; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_u =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_u; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_x =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_x; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_w =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_w; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_r =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_r; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_r =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_r; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_w =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_w; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_x =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_x; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_c =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_c; // @[TLB.scala 107:24]
  assign normalPage_tlb_normal_sa_io_victim_in_bits_entry_perm_pm_atomic =
    superPage_tlb_super_fa_io_victim_out_bits_entry_perm_pm_atomic; // @[TLB.scala 107:24]
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
  assign superPage_tlb_super_fa_io_wvalid = _io_requestor_0_resp_bits_ptwBack_T & ~io_sfence_valid & ~
    io_csr_satp_changed; // @[TLB.scala 226:49]
  assign superPage_tlb_super_fa_io_wwayIdx = io_replace_superPage_refillIdx; // @[MMUBundle.scala 318:24]
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
  assign superPage_tlb_super_fa_io_wdata_replenish_c = io_ptw_replenish_c; // @[MMUBundle.scala 320:32]
  assign superPage_tlb_super_fa_io_wdata_replenish_atomic = io_ptw_replenish_atomic; // @[MMUBundle.scala 320:32]
  assign superPage_tlb_super_fa_io_wdata_replenish_x = io_ptw_replenish_x; // @[MMUBundle.scala 320:32]
  assign superPage_tlb_super_fa_io_wdata_replenish_w = io_ptw_replenish_w; // @[MMUBundle.scala 320:32]
  assign superPage_tlb_super_fa_io_wdata_replenish_r = io_ptw_replenish_r; // @[MMUBundle.scala 320:32]
  always @(posedge clock) begin
    cmdReg <= io_requestor_0_req_bits_cmd; // @[TLB.scala 126:43]
    validRegVec_0 <= io_requestor_0_req_valid; // @[TLB.scala 127:45]
    offReg <= io_requestor_0_req_bits_vaddr[11:0]; // @[TLB.scala 56:46]
    refill_reg <= io_ptw_resp_valid; // @[TLB.scala 142:29]
    io_requestor_0_resp_bits_paddr_REG <= io_requestor_0_req_bits_vaddr[35:0]; // @[BitUtils.scala 44:23]
    pmp_paddr_REG <= io_requestor_0_req_bits_vaddr[35:0]; // @[BitUtils.scala 44:23]
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
  cmdReg = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  validRegVec_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  offReg = _RAND_2[11:0];
  _RAND_3 = {1{`RANDOM}};
  refill_reg = _RAND_3[0:0];
  _RAND_4 = {2{`RANDOM}};
  io_requestor_0_resp_bits_paddr_REG = _RAND_4[35:0];
  _RAND_5 = {2{`RANDOM}};
  pmp_paddr_REG = _RAND_5[35:0];
  _RAND_6 = {1{`RANDOM}};
  io_ptw_req_0_valid_REG = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_ptw_req_0_valid_REG_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_ptw_req_0_valid_REG_2 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_ptw_req_0_valid_REG_3 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_ptw_req_0_bits_vpn_REG = _RAND_10[26:0];
  _RAND_11 = {1{`RANDOM}};
  io_ptw_req_0_bits_vpn_REG_1 = _RAND_11[26:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
