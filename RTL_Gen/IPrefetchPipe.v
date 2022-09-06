module IPrefetchPipe(
  input         clock,
  input         reset,
  input         io_fromFtq_req_valid,
  input  [38:0] io_fromFtq_req_bits_target,
  input         io_iTLBInter_req_ready,
  output        io_iTLBInter_req_valid,
  output [38:0] io_iTLBInter_req_bits_vaddr,
  input  [35:0] io_iTLBInter_resp_bits_paddr,
  input         io_iTLBInter_resp_bits_miss,
  input         io_iTLBInter_resp_bits_excp_pf_instr,
  input         io_iTLBInter_resp_bits_excp_af_instr,
  output [35:0] io_pmp_req_bits_addr,
  input         io_pmp_resp_instr,
  input         io_pmp_resp_mmio,
  input         io_toIMeta_ready,
  output        io_toIMeta_valid,
  output [7:0]  io_toIMeta_bits_vSetIdx_0,
  input  [1:0]  io_fromIMeta_metaData_0_0_coh_state,
  input  [23:0] io_fromIMeta_metaData_0_0_tag,
  input  [1:0]  io_fromIMeta_metaData_0_1_coh_state,
  input  [23:0] io_fromIMeta_metaData_0_1_tag,
  input  [1:0]  io_fromIMeta_metaData_0_2_coh_state,
  input  [23:0] io_fromIMeta_metaData_0_2_tag,
  input  [1:0]  io_fromIMeta_metaData_0_3_coh_state,
  input  [23:0] io_fromIMeta_metaData_0_3_tag,
  input         io_toMissUnit_enqReq_ready,
  output        io_toMissUnit_enqReq_valid,
  output [35:0] io_toMissUnit_enqReq_bits_paddr,
  input         io_fromMSHR_0_valid,
  input  [35:0] io_fromMSHR_0_bits,
  input         io_fromMSHR_1_valid,
  input  [35:0] io_fromMSHR_1_bits,
  input         io_prefetchEnable,
  input         io_prefetchDisable
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [63:0] _RAND_11;
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
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
`endif // RANDOMIZE_REG_INIT
  reg  enableBit; // @[IPrefetch.scala 60:26]
  reg [1:0] maxPrefetchCoutner; // @[IPrefetch.scala 61:35]
  wire  reachMaxSize = maxPrefetchCoutner == 2'h2; // @[IPrefetch.scala 63:41]
  wire  _GEN_0 = enableBit & io_prefetchDisable | enableBit & reachMaxSize ? 1'h0 : enableBit; // @[IPrefetch.scala 67:79 68:15 60:26]
  wire  _GEN_1 = io_prefetchEnable | _GEN_0; // @[IPrefetch.scala 65:26 66:15]
  reg  prefetch_dir_0_valid; // @[IPrefetch.scala 77:29]
  reg [35:0] prefetch_dir_0_paddr; // @[IPrefetch.scala 77:29]
  reg  prefetch_dir_1_valid; // @[IPrefetch.scala 77:29]
  reg [35:0] prefetch_dir_1_paddr; // @[IPrefetch.scala 77:29]
  wire [38:0] p0_vaddr = {io_fromFtq_req_bits_target[38:6],6'h0}; // @[Cat.scala 31:58]
  reg  p1_valid; // @[ICache.scala 92:25]
  reg  tlb_resp_valid; // @[IPrefetch.scala 122:31]
  reg  p1_meta_ptags_REG; // @[IPrefetch.scala 135:107]
  reg [23:0] p1_meta_ptags_r0; // @[Reg.scala 16:16]
  wire [23:0] p1_meta_ptags_0 = p1_meta_ptags_REG ? io_fromIMeta_metaData_0_0_tag : p1_meta_ptags_r0; // @[ICache.scala 100:8]
  reg  tlb_resp_paddr_x2; // @[IPrefetch.scala 126:56]
  reg [35:0] tlb_resp_paddr_r; // @[Reg.scala 16:16]
  wire [35:0] tlb_resp_paddr = tlb_resp_paddr_x2 ? io_iTLBInter_resp_bits_paddr : tlb_resp_paddr_r; // @[ICache.scala 100:8]
  wire [23:0] p1_ptag = tlb_resp_paddr[35:12]; // @[L1Cache.scala 80:41]
  wire  p1_tag_eq_vec_0 = p1_meta_ptags_0 == p1_ptag; // @[IPrefetch.scala 138:59]
  reg  p1_meta_cohs_REG; // @[IPrefetch.scala 136:107]
  reg [1:0] p1_meta_cohs_r0_state; // @[Reg.scala 16:16]
  wire [1:0] p1_meta_cohs_0_state = p1_meta_cohs_REG ? io_fromIMeta_metaData_0_0_coh_state : p1_meta_cohs_r0_state; // @[ICache.scala 100:8]
  wire  _p1_tag_match_vec_T = p1_meta_cohs_0_state > 2'h0; // @[Metadata.scala 49:45]
  wire  p1_tag_match_vec_0 = p1_tag_eq_vec_0 & _p1_tag_match_vec_T; // @[IPrefetch.scala 139:104]
  reg [23:0] p1_meta_ptags_r1; // @[Reg.scala 16:16]
  wire [23:0] p1_meta_ptags_1 = p1_meta_ptags_REG ? io_fromIMeta_metaData_0_1_tag : p1_meta_ptags_r1; // @[ICache.scala 100:8]
  wire  p1_tag_eq_vec_1 = p1_meta_ptags_1 == p1_ptag; // @[IPrefetch.scala 138:59]
  reg [1:0] p1_meta_cohs_r1_state; // @[Reg.scala 16:16]
  wire [1:0] p1_meta_cohs_1_state = p1_meta_cohs_REG ? io_fromIMeta_metaData_0_1_coh_state : p1_meta_cohs_r1_state; // @[ICache.scala 100:8]
  wire  _p1_tag_match_vec_T_2 = p1_meta_cohs_1_state > 2'h0; // @[Metadata.scala 49:45]
  wire  p1_tag_match_vec_1 = p1_tag_eq_vec_1 & _p1_tag_match_vec_T_2; // @[IPrefetch.scala 139:104]
  reg [23:0] p1_meta_ptags_r2; // @[Reg.scala 16:16]
  wire [23:0] p1_meta_ptags_2 = p1_meta_ptags_REG ? io_fromIMeta_metaData_0_2_tag : p1_meta_ptags_r2; // @[ICache.scala 100:8]
  wire  p1_tag_eq_vec_2 = p1_meta_ptags_2 == p1_ptag; // @[IPrefetch.scala 138:59]
  reg [1:0] p1_meta_cohs_r2_state; // @[Reg.scala 16:16]
  wire [1:0] p1_meta_cohs_2_state = p1_meta_cohs_REG ? io_fromIMeta_metaData_0_2_coh_state : p1_meta_cohs_r2_state; // @[ICache.scala 100:8]
  wire  _p1_tag_match_vec_T_4 = p1_meta_cohs_2_state > 2'h0; // @[Metadata.scala 49:45]
  wire  p1_tag_match_vec_2 = p1_tag_eq_vec_2 & _p1_tag_match_vec_T_4; // @[IPrefetch.scala 139:104]
  reg [23:0] p1_meta_ptags_r3; // @[Reg.scala 16:16]
  wire [23:0] p1_meta_ptags_3 = p1_meta_ptags_REG ? io_fromIMeta_metaData_0_3_tag : p1_meta_ptags_r3; // @[ICache.scala 100:8]
  wire  p1_tag_eq_vec_3 = p1_meta_ptags_3 == p1_ptag; // @[IPrefetch.scala 138:59]
  reg [1:0] p1_meta_cohs_r3_state; // @[Reg.scala 16:16]
  wire [1:0] p1_meta_cohs_3_state = p1_meta_cohs_REG ? io_fromIMeta_metaData_0_3_coh_state : p1_meta_cohs_r3_state; // @[ICache.scala 100:8]
  wire  _p1_tag_match_vec_T_6 = p1_meta_cohs_3_state > 2'h0; // @[Metadata.scala 49:45]
  wire  p1_tag_match_vec_3 = p1_tag_eq_vec_3 & _p1_tag_match_vec_T_6; // @[IPrefetch.scala 139:104]
  wire  p1_tag_match = p1_tag_match_vec_0 | p1_tag_match_vec_1 | (p1_tag_match_vec_2 | p1_tag_match_vec_3); // @[ParallelMux.scala 37:55]
  reg  tlb_resp_pf_x4; // @[IPrefetch.scala 127:56]
  wire  tlb_resp_pf_x5 = io_iTLBInter_resp_bits_excp_pf_instr & tlb_resp_valid; // @[IPrefetch.scala 127:102]
  reg  tlb_resp_pf_r; // @[Reg.scala 16:16]
  wire  tlb_resp_pf = tlb_resp_pf_x4 ? tlb_resp_pf_x5 : tlb_resp_pf_r; // @[ICache.scala 100:8]
  reg  tlb_resp_af_x6; // @[IPrefetch.scala 128:56]
  wire  tlb_resp_af_x7 = io_iTLBInter_resp_bits_excp_af_instr & tlb_resp_valid; // @[IPrefetch.scala 128:102]
  reg  tlb_resp_af_r; // @[Reg.scala 16:16]
  wire  tlb_resp_af = tlb_resp_af_x6 ? tlb_resp_af_x7 : tlb_resp_af_r; // @[ICache.scala 100:8]
  wire  p1_has_except = tlb_resp_pf | tlb_resp_af; // @[IPrefetch.scala 131:46]
  wire  p1_miss = p1_valid & ~p1_tag_match & ~p1_has_except; // @[IPrefetch.scala 141:101]
  wire  p1_req_accept = p1_valid & tlb_resp_valid & p1_miss; // @[IPrefetch.scala 145:52]
  reg  p2_pmp_fire; // @[ICache.scala 92:25]
  reg  p2_except_af_r; // @[Reg.scala 16:16]
  wire  _p2_except_af_T = p2_pmp_fire ? io_pmp_resp_instr : p2_except_af_r; // @[Hold.scala 64:8]
  reg  p2_except_af_r1; // @[Reg.scala 16:16]
  wire  p2_except_af = _p2_except_af_T | p2_except_af_r1; // @[IPrefetch.scala 158:61]
  reg  p2_except_pf; // @[Reg.scala 16:16]
  wire  _p2_mmio_T_3 = io_pmp_resp_mmio & ~p2_except_af & ~p2_except_pf; // @[IPrefetch.scala 159:71]
  reg  p2_mmio_r; // @[Reg.scala 16:16]
  wire  p2_mmio = p2_pmp_fire ? _p2_mmio_T_3 : p2_mmio_r; // @[Hold.scala 64:8]
  wire  p2_exception = io_pmp_resp_instr | p2_mmio; // @[IPrefetch.scala 165:64]
  wire  p3_ready = io_toMissUnit_enqReq_ready | ~enableBit; // @[IPrefetch.scala 200:39]
  wire  p2_fire = p2_pmp_fire & ~p2_exception & p3_ready & p2_pmp_fire; // @[IPrefetch.scala 173:55]
  wire  p2_discard = p2_pmp_fire & (p2_exception & p2_pmp_fire); // @[IPrefetch.scala 174:26]
  wire  _p2_ready_T = p2_fire | p2_discard; // @[IPrefetch.scala 172:25]
  wire  p2_ready = p2_fire | p2_discard | ~p2_pmp_fire; // @[IPrefetch.scala 172:39]
  wire  p1_fire = p1_valid & p1_req_accept & p2_ready & enableBit; // @[IPrefetch.scala 148:58]
  wire  p1_hit = p1_valid & p1_tag_match & ~p1_has_except; // @[IPrefetch.scala 141:56]
  wire  p1_req_cancle = (p1_hit | tlb_resp_valid & p1_has_except) & p1_valid; // @[IPrefetch.scala 144:83]
  wire  p1_ready = p1_fire | p1_req_cancle | ~p1_valid; // @[IPrefetch.scala 147:45]
  wire  _p0_fire_T_1 = io_iTLBInter_req_ready & io_iTLBInter_req_valid; // @[Decoupled.scala 50:35]
  wire  p0_fire = io_fromFtq_req_valid & p1_ready & _p0_fire_T_1 & ~io_iTLBInter_resp_bits_miss & io_toIMeta_ready &
    enableBit; // @[IPrefetch.scala 92:96]
  wire  p1_discard = p1_valid & p1_req_cancle; // @[IPrefetch.scala 149:29]
  wire  _p1_valid_T = p1_fire | p1_discard; // @[IPrefetch.scala 117:78]
  wire  _GEN_2 = _p1_valid_T ? 1'h0 : p1_valid; // @[ICache.scala 92:25 95:{43,51}]
  wire  _GEN_3 = p0_fire | _GEN_2; // @[ICache.scala 94:{42,50}]
  wire  _GEN_6 = tlb_resp_valid & _p1_valid_T ? 1'h0 : tlb_resp_valid; // @[IPrefetch.scala 122:31 124:{56,72}]
  wire  _GEN_7 = p0_fire | _GEN_6; // @[IPrefetch.scala 123:{17,33}]
  wire  _GEN_19 = _p2_ready_T ? 1'h0 : p2_pmp_fire; // @[ICache.scala 92:25 95:{43,51}]
  wire  _GEN_20 = p1_fire | _GEN_19; // @[ICache.scala 94:{42,50}]
  reg [35:0] p2_paddr; // @[Reg.scala 16:16]
  wire [35:0] _p2_check_in_mshr_T_1 = {p2_paddr[35:6],6'h0}; // @[Cat.scala 31:58]
  wire  p2_check_in_mshr = io_fromMSHR_0_valid & io_fromMSHR_0_bits == _p2_check_in_mshr_T_1 | io_fromMSHR_1_valid &
    io_fromMSHR_1_bits == _p2_check_in_mshr_T_1; // @[IPrefetch.scala 162:139]
  wire  p3_fire = io_toMissUnit_enqReq_ready & io_toMissUnit_enqReq_valid; // @[Decoupled.scala 50:35]
  reg [35:0] p3_paddr; // @[Reg.scala 16:16]
  wire  p3_hit_dir = prefetch_dir_0_valid & prefetch_dir_0_paddr == p3_paddr | prefetch_dir_1_valid &
    prefetch_dir_1_paddr == p3_paddr; // @[IPrefetch.scala 182:135]
  reg  p3_check_in_mshr; // @[Reg.scala 16:16]
  reg  p3_valid; // @[ICache.scala 92:25]
  wire  _p3_discard_T_1 = p3_valid & enableBit; // @[IPrefetch.scala 184:61]
  wire  p3_discard = p3_hit_dir | p3_check_in_mshr | p3_valid & enableBit & ~io_toMissUnit_enqReq_ready; // @[IPrefetch.scala 184:48]
  wire  _p3_valid_T = p3_fire | p3_discard; // @[IPrefetch.scala 177:78]
  wire  _GEN_27 = _p3_valid_T ? 1'h0 : p3_valid; // @[ICache.scala 92:25 95:{43,51}]
  wire  _GEN_28 = p2_fire | _GEN_27; // @[ICache.scala 94:{42,50}]
  wire [1:0] _maxPrefetchCoutner_T_1 = maxPrefetchCoutner + 2'h1; // @[IPrefetch.scala 194:46]
  wire  _GEN_32 = ~maxPrefetchCoutner[0] | prefetch_dir_0_valid; // @[IPrefetch.scala 196:{44,44} 77:29]
  wire  _GEN_33 = maxPrefetchCoutner[0] | prefetch_dir_1_valid; // @[IPrefetch.scala 196:{44,44} 77:29]
  assign io_iTLBInter_req_valid = io_fromFtq_req_valid; // @[IPrefetch.scala 102:24]
  assign io_iTLBInter_req_bits_vaddr = {io_fromFtq_req_bits_target[38:6],6'h0}; // @[Cat.scala 31:58]
  assign io_pmp_req_bits_addr = p2_paddr; // @[IPrefetch.scala 168:25]
  assign io_toIMeta_valid = io_fromFtq_req_valid; // @[IPrefetch.scala 96:21]
  assign io_toIMeta_bits_vSetIdx_0 = p0_vaddr[13:6]; // @[L1Cache.scala 82:33]
  assign io_toMissUnit_enqReq_valid = _p3_discard_T_1 & ~p3_discard; // @[IPrefetch.scala 186:64]
  assign io_toMissUnit_enqReq_bits_paddr = p3_paddr; // @[IPrefetch.scala 187:39]
  always @(posedge clock) begin
    if (reset) begin // @[IPrefetch.scala 60:26]
      enableBit <= 1'h0; // @[IPrefetch.scala 60:26]
    end else begin
      enableBit <= _GEN_1;
    end
    if (reset) begin // @[IPrefetch.scala 61:35]
      maxPrefetchCoutner <= 2'h0; // @[IPrefetch.scala 61:35]
    end else if (reachMaxSize) begin // @[IPrefetch.scala 189:21]
      maxPrefetchCoutner <= 2'h0; // @[IPrefetch.scala 190:24]
    end else if (p3_fire) begin // @[IPrefetch.scala 193:39]
      maxPrefetchCoutner <= _maxPrefetchCoutner_T_1; // @[IPrefetch.scala 194:24]
    end
    if (reset) begin // @[IPrefetch.scala 77:29]
      prefetch_dir_0_valid <= 1'h0; // @[IPrefetch.scala 77:29]
    end else if (reachMaxSize) begin // @[IPrefetch.scala 189:21]
      prefetch_dir_0_valid <= 1'h0; // @[IPrefetch.scala 192:34]
    end else if (p3_fire) begin // @[IPrefetch.scala 193:39]
      prefetch_dir_0_valid <= _GEN_32;
    end
    if (reset) begin // @[IPrefetch.scala 77:29]
      prefetch_dir_0_paddr <= 36'h0; // @[IPrefetch.scala 77:29]
    end else if (!(reachMaxSize)) begin // @[IPrefetch.scala 189:21]
      if (p3_fire) begin // @[IPrefetch.scala 193:39]
        if (~maxPrefetchCoutner[0]) begin // @[IPrefetch.scala 197:44]
          prefetch_dir_0_paddr <= p3_paddr; // @[IPrefetch.scala 197:44]
        end
      end
    end
    if (reset) begin // @[IPrefetch.scala 77:29]
      prefetch_dir_1_valid <= 1'h0; // @[IPrefetch.scala 77:29]
    end else if (reachMaxSize) begin // @[IPrefetch.scala 189:21]
      prefetch_dir_1_valid <= 1'h0; // @[IPrefetch.scala 192:34]
    end else if (p3_fire) begin // @[IPrefetch.scala 193:39]
      prefetch_dir_1_valid <= _GEN_33;
    end
    if (reset) begin // @[IPrefetch.scala 77:29]
      prefetch_dir_1_paddr <= 36'h0; // @[IPrefetch.scala 77:29]
    end else if (!(reachMaxSize)) begin // @[IPrefetch.scala 189:21]
      if (p3_fire) begin // @[IPrefetch.scala 193:39]
        if (maxPrefetchCoutner[0]) begin // @[IPrefetch.scala 197:44]
          prefetch_dir_1_paddr <= p3_paddr; // @[IPrefetch.scala 197:44]
        end
      end
    end
    if (reset) begin // @[ICache.scala 92:25]
      p1_valid <= 1'h0; // @[ICache.scala 92:25]
    end else begin
      p1_valid <= _GEN_3;
    end
    if (reset) begin // @[IPrefetch.scala 122:31]
      tlb_resp_valid <= 1'h0; // @[IPrefetch.scala 122:31]
    end else begin
      tlb_resp_valid <= _GEN_7;
    end
    p1_meta_ptags_REG <= io_fromFtq_req_valid & p1_ready & _p0_fire_T_1 & ~io_iTLBInter_resp_bits_miss &
      io_toIMeta_ready & enableBit; // @[IPrefetch.scala 92:96]
    if (p1_meta_ptags_REG) begin // @[Reg.scala 17:18]
      p1_meta_ptags_r0 <= io_fromIMeta_metaData_0_0_tag; // @[Reg.scala 17:22]
    end
    tlb_resp_paddr_x2 <= io_fromFtq_req_valid & p1_ready & _p0_fire_T_1 & ~io_iTLBInter_resp_bits_miss &
      io_toIMeta_ready & enableBit; // @[IPrefetch.scala 92:96]
    if (tlb_resp_paddr_x2) begin // @[Reg.scala 17:18]
      tlb_resp_paddr_r <= io_iTLBInter_resp_bits_paddr; // @[Reg.scala 17:22]
    end
    p1_meta_cohs_REG <= io_fromFtq_req_valid & p1_ready & _p0_fire_T_1 & ~io_iTLBInter_resp_bits_miss & io_toIMeta_ready
       & enableBit; // @[IPrefetch.scala 92:96]
    if (p1_meta_cohs_REG) begin // @[Reg.scala 17:18]
      p1_meta_cohs_r0_state <= io_fromIMeta_metaData_0_0_coh_state; // @[Reg.scala 17:22]
    end
    if (p1_meta_ptags_REG) begin // @[Reg.scala 17:18]
      p1_meta_ptags_r1 <= io_fromIMeta_metaData_0_1_tag; // @[Reg.scala 17:22]
    end
    if (p1_meta_cohs_REG) begin // @[Reg.scala 17:18]
      p1_meta_cohs_r1_state <= io_fromIMeta_metaData_0_1_coh_state; // @[Reg.scala 17:22]
    end
    if (p1_meta_ptags_REG) begin // @[Reg.scala 17:18]
      p1_meta_ptags_r2 <= io_fromIMeta_metaData_0_2_tag; // @[Reg.scala 17:22]
    end
    if (p1_meta_cohs_REG) begin // @[Reg.scala 17:18]
      p1_meta_cohs_r2_state <= io_fromIMeta_metaData_0_2_coh_state; // @[Reg.scala 17:22]
    end
    if (p1_meta_ptags_REG) begin // @[Reg.scala 17:18]
      p1_meta_ptags_r3 <= io_fromIMeta_metaData_0_3_tag; // @[Reg.scala 17:22]
    end
    if (p1_meta_cohs_REG) begin // @[Reg.scala 17:18]
      p1_meta_cohs_r3_state <= io_fromIMeta_metaData_0_3_coh_state; // @[Reg.scala 17:22]
    end
    tlb_resp_pf_x4 <= io_fromFtq_req_valid & p1_ready & _p0_fire_T_1 & ~io_iTLBInter_resp_bits_miss & io_toIMeta_ready
       & enableBit; // @[IPrefetch.scala 92:96]
    if (tlb_resp_pf_x4) begin // @[Reg.scala 17:18]
      tlb_resp_pf_r <= tlb_resp_pf_x5; // @[Reg.scala 17:22]
    end
    tlb_resp_af_x6 <= io_fromFtq_req_valid & p1_ready & _p0_fire_T_1 & ~io_iTLBInter_resp_bits_miss & io_toIMeta_ready
       & enableBit; // @[IPrefetch.scala 92:96]
    if (tlb_resp_af_x6) begin // @[Reg.scala 17:18]
      tlb_resp_af_r <= tlb_resp_af_x7; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[ICache.scala 92:25]
      p2_pmp_fire <= 1'h0; // @[ICache.scala 92:25]
    end else begin
      p2_pmp_fire <= _GEN_20;
    end
    if (p2_pmp_fire) begin // @[Reg.scala 17:18]
      p2_except_af_r <= io_pmp_resp_instr; // @[Reg.scala 17:22]
    end
    if (p1_fire) begin // @[Reg.scala 17:18]
      if (tlb_resp_af_x6) begin // @[ICache.scala 100:8]
        p2_except_af_r1 <= tlb_resp_af_x7;
      end else begin
        p2_except_af_r1 <= tlb_resp_af_r;
      end
    end
    if (p1_fire) begin // @[Reg.scala 17:18]
      if (tlb_resp_pf_x4) begin // @[ICache.scala 100:8]
        p2_except_pf <= tlb_resp_pf_x5;
      end else begin
        p2_except_pf <= tlb_resp_pf_r;
      end
    end
    if (p2_pmp_fire) begin // @[Reg.scala 17:18]
      p2_mmio_r <= _p2_mmio_T_3; // @[Reg.scala 17:22]
    end
    if (p1_fire) begin // @[Reg.scala 17:18]
      if (tlb_resp_paddr_x2) begin // @[ICache.scala 100:8]
        p2_paddr <= io_iTLBInter_resp_bits_paddr;
      end else begin
        p2_paddr <= tlb_resp_paddr_r;
      end
    end
    if (p2_fire) begin // @[Reg.scala 17:18]
      p3_paddr <= p2_paddr; // @[Reg.scala 17:22]
    end
    if (p2_fire) begin // @[Reg.scala 17:18]
      p3_check_in_mshr <= p2_check_in_mshr; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[ICache.scala 92:25]
      p3_valid <= 1'h0; // @[ICache.scala 92:25]
    end else begin
      p3_valid <= _GEN_28;
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
  enableBit = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  maxPrefetchCoutner = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  prefetch_dir_0_valid = _RAND_2[0:0];
  _RAND_3 = {2{`RANDOM}};
  prefetch_dir_0_paddr = _RAND_3[35:0];
  _RAND_4 = {1{`RANDOM}};
  prefetch_dir_1_valid = _RAND_4[0:0];
  _RAND_5 = {2{`RANDOM}};
  prefetch_dir_1_paddr = _RAND_5[35:0];
  _RAND_6 = {1{`RANDOM}};
  p1_valid = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  tlb_resp_valid = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  p1_meta_ptags_REG = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  p1_meta_ptags_r0 = _RAND_9[23:0];
  _RAND_10 = {1{`RANDOM}};
  tlb_resp_paddr_x2 = _RAND_10[0:0];
  _RAND_11 = {2{`RANDOM}};
  tlb_resp_paddr_r = _RAND_11[35:0];
  _RAND_12 = {1{`RANDOM}};
  p1_meta_cohs_REG = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  p1_meta_cohs_r0_state = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  p1_meta_ptags_r1 = _RAND_14[23:0];
  _RAND_15 = {1{`RANDOM}};
  p1_meta_cohs_r1_state = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  p1_meta_ptags_r2 = _RAND_16[23:0];
  _RAND_17 = {1{`RANDOM}};
  p1_meta_cohs_r2_state = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  p1_meta_ptags_r3 = _RAND_18[23:0];
  _RAND_19 = {1{`RANDOM}};
  p1_meta_cohs_r3_state = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  tlb_resp_pf_x4 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  tlb_resp_pf_r = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  tlb_resp_af_x6 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  tlb_resp_af_r = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  p2_pmp_fire = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  p2_except_af_r = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  p2_except_af_r1 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  p2_except_pf = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  p2_mmio_r = _RAND_28[0:0];
  _RAND_29 = {2{`RANDOM}};
  p2_paddr = _RAND_29[35:0];
  _RAND_30 = {2{`RANDOM}};
  p3_paddr = _RAND_30[35:0];
  _RAND_31 = {1{`RANDOM}};
  p3_check_in_mshr = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  p3_valid = _RAND_32[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
