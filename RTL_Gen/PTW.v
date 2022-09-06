module PTW(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input  [43:0] io_csr_satp_ppn,
  output        io_req_ready,
  input         io_req_valid,
  input  [26:0] io_req_bits_req_info_vpn,
  input  [1:0]  io_req_bits_req_info_source,
  input         io_req_bits_l1Hit,
  input  [23:0] io_req_bits_ppn,
  input         io_resp_ready,
  output        io_resp_valid,
  output [1:0]  io_resp_bits_source,
  output [26:0] io_resp_bits_resp_entry_tag,
  output [23:0] io_resp_bits_resp_entry_ppn,
  output        io_resp_bits_resp_entry_perm_d,
  output        io_resp_bits_resp_entry_perm_a,
  output        io_resp_bits_resp_entry_perm_g,
  output        io_resp_bits_resp_entry_perm_u,
  output        io_resp_bits_resp_entry_perm_x,
  output        io_resp_bits_resp_entry_perm_w,
  output        io_resp_bits_resp_entry_perm_r,
  output [1:0]  io_resp_bits_resp_entry_level,
  output        io_resp_bits_resp_pf,
  output        io_resp_bits_resp_af,
  input         io_llptw_ready,
  output        io_llptw_valid,
  output [26:0] io_llptw_bits_req_info_vpn,
  output [1:0]  io_llptw_bits_req_info_source,
  output [35:0] io_llptw_bits_ppn,
  input         io_mem_req_ready,
  output        io_mem_req_valid,
  output [35:0] io_mem_req_bits_addr,
  input         io_mem_resp_valid,
  input  [63:0] io_mem_resp_bits,
  input         io_mem_mask,
  output [35:0] io_pmp_req_bits_addr,
  input         io_pmp_resp_ld,
  input         io_pmp_resp_mmio,
  output [26:0] io_refill_req_info_vpn,
  output [1:0]  io_refill_req_info_source,
  output [1:0]  io_refill_level,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_4_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value
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
`endif // RANDOMIZE_REG_INIT
  reg [2:0] state; // @[PageTableWalker.scala 81:22]
  reg [1:0] level; // @[PageTableWalker.scala 82:22]
  reg [1:0] af_level; // @[PageTableWalker.scala 83:25]
  reg [23:0] ppn; // @[PageTableWalker.scala 84:16]
  reg [26:0] vpn; // @[PageTableWalker.scala 85:16]
  wire [1:0] levelNext = level + 2'h1; // @[PageTableWalker.scala 86:25]
  reg  l1Hit; // @[PageTableWalker.scala 87:18]
  wire  memPte_perm_v = io_mem_resp_bits[0]; // @[PageTableWalker.scala 88:38]
  wire  memPte_perm_r = io_mem_resp_bits[1]; // @[PageTableWalker.scala 88:38]
  wire  memPte_perm_w = io_mem_resp_bits[2]; // @[PageTableWalker.scala 88:38]
  wire  memPte_perm_x = io_mem_resp_bits[3]; // @[PageTableWalker.scala 88:38]
  wire [23:0] memPte_ppn = io_mem_resp_bits[33:10]; // @[PageTableWalker.scala 88:38]
  wire  _sent_to_pmp_T_1 = state == 3'h4; // @[PageTableWalker.scala 92:54]
  wire  _GEN_20 = io_resp_valid | io_llptw_valid; // @[PageTableWalker.scala 130:28 134:16]
  wire  _GEN_27 = 3'h3 == state ? 1'h0 : 3'h4 == state & _GEN_20; // @[PageTableWalker.scala 95:18]
  wire  _GEN_31 = 3'h2 == state ? 1'h0 : _GEN_27; // @[PageTableWalker.scala 95:18]
  wire  _GEN_35 = 3'h1 == state ? 1'h0 : _GEN_31; // @[PageTableWalker.scala 95:18]
  wire  finish = 3'h0 == state ? 1'h0 : _GEN_35; // @[PageTableWalker.scala 95:18]
  wire  sent_to_pmp = state == 3'h1 | state == 3'h4 & ~finish; // @[PageTableWalker.scala 92:44]
  wire  _accessFault_T = io_pmp_resp_ld | io_pmp_resp_mmio; // @[PageTableWalker.scala 93:46]
  reg  accessFault; // @[Reg.scala 16:16]
  wire  _GEN_0 = sent_to_pmp ? _accessFault_T : accessFault; // @[Reg.scala 16:16 17:{18,22}]
  wire  _pageFault_T_5 = memPte_perm_r | memPte_perm_x | memPte_perm_w; // @[MMUBundle.scala 478:22]
  wire  _pageFault_T_7 = level == 2'h1; // @[MMUBundle.scala 469:25]
  wire  _pageFault_T_10 = level == 2'h1 & memPte_ppn[8:0] == 9'h0; // @[MMUBundle.scala 469:33]
  wire  _pageFault_T_11 = level == 2'h2 | _pageFault_T_10; // @[MMUBundle.scala 468:33]
  wire  _pageFault_T_15 = level == 2'h0 & memPte_ppn[17:0] == 18'h0; // @[MMUBundle.scala 470:33]
  wire  _pageFault_T_16 = _pageFault_T_11 | _pageFault_T_15; // @[MMUBundle.scala 469:64]
  wire  _pageFault_T_18 = _pageFault_T_5 & ~_pageFault_T_16; // @[MMUBundle.scala 468:14]
  wire  pageFault = ~memPte_perm_v | ~memPte_perm_r & memPte_perm_w | _pageFault_T_18; // @[MMUBundle.scala 474:36]
  wire  _T_1 = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  wire [43:0] _ppn_T = io_req_bits_l1Hit ? {{20'd0}, io_req_bits_ppn} : io_csr_satp_ppn; // @[PageTableWalker.scala 102:19]
  wire [43:0] _GEN_4 = _T_1 ? _ppn_T : {{20'd0}, ppn}; // @[PageTableWalker.scala 102:13 84:16 97:28]
  wire  _T_4 = io_mem_req_ready & io_mem_req_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _GEN_8 = _T_4 ? 3'h3 : state; // @[PageTableWalker.scala 114:29 115:15 81:22]
  wire [2:0] _GEN_9 = accessFault ? 3'h4 : _GEN_8; // @[PageTableWalker.scala 117:26 118:15]
  wire [1:0] _af_level_T_2 = af_level + 2'h1; // @[PageTableWalker.scala 125:30]
  wire [2:0] _GEN_10 = io_mem_resp_valid ? 3'h4 : state; // @[PageTableWalker.scala 123:29 124:15 81:22]
  wire [1:0] _GEN_11 = io_mem_resp_valid ? _af_level_T_2 : af_level; // @[PageTableWalker.scala 123:29 125:18 83:25]
  wire  _T_7 = io_resp_ready & io_resp_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _GEN_12 = _T_7 ? 3'h0 : state; // @[PageTableWalker.scala 131:31 132:17 81:22]
  wire  _T_8 = io_llptw_ready & io_llptw_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _GEN_13 = _T_8 ? 3'h0 : state; // @[PageTableWalker.scala 136:32 137:17 81:22]
  wire [1:0] _GEN_14 = io_pmp_resp_ld ? level : levelNext; // @[PageTableWalker.scala 141:31 145:17 82:22]
  wire [2:0] _GEN_15 = io_pmp_resp_ld ? state : 3'h2; // @[PageTableWalker.scala 141:31 146:17 81:22]
  wire [2:0] _GEN_16 = io_llptw_valid ? _GEN_13 : _GEN_15; // @[PageTableWalker.scala 135:34]
  wire [1:0] _GEN_18 = io_llptw_valid ? level : _GEN_14; // @[PageTableWalker.scala 135:34 82:22]
  wire [2:0] _GEN_19 = io_resp_valid ? _GEN_12 : _GEN_16; // @[PageTableWalker.scala 130:28]
  wire [1:0] _GEN_21 = io_resp_valid ? level : _GEN_18; // @[PageTableWalker.scala 130:28 82:22]
  wire [2:0] _GEN_22 = 3'h4 == state ? _GEN_19 : state; // @[PageTableWalker.scala 95:18 81:22]
  wire [1:0] _GEN_24 = 3'h4 == state ? _GEN_21 : level; // @[PageTableWalker.scala 95:18 82:22]
  wire [2:0] _GEN_25 = 3'h3 == state ? _GEN_10 : _GEN_22; // @[PageTableWalker.scala 95:18]
  wire [1:0] _GEN_26 = 3'h3 == state ? _GEN_11 : af_level; // @[PageTableWalker.scala 95:18 83:25]
  wire [1:0] _GEN_28 = 3'h3 == state ? level : _GEN_24; // @[PageTableWalker.scala 95:18 82:22]
  wire [2:0] _GEN_29 = 3'h2 == state ? _GEN_9 : _GEN_25; // @[PageTableWalker.scala 95:18]
  wire [43:0] _GEN_40 = 3'h0 == state ? _GEN_4 : {{20'd0}, ppn}; // @[PageTableWalker.scala 84:16 95:18]
  wire  find_pte = _pageFault_T_5 | pageFault; // @[PageTableWalker.scala 158:32]
  wire  to_find_pte = _pageFault_T_7 & ~find_pte; // @[PageTableWalker.scala 160:35]
  reg [1:0] source; // @[Reg.scala 16:16]
  wire  _T_13 = ~accessFault; // @[PageTableWalker.scala 164:40]
  wire [55:0] _l1addr_T_1 = {io_csr_satp_ppn,vpn[26:18],3'h0}; // @[Cat.scala 31:58]
  wire [35:0] l1addr = _l1addr_T_1[35:0]; // @[MMUConst.scala 207:41]
  wire [23:0] _l2addr_T = l1Hit ? ppn : memPte_ppn; // @[PageTableWalker.scala 174:28]
  wire [35:0] l2addr = {_l2addr_T,vpn[17:9],3'h0}; // @[Cat.scala 31:58]
  wire  _T_31 = ~io_resp_ready; // @[PageTableWalker.scala 198:57]
  wire  _T_35 = ~io_mem_req_ready; // @[PageTableWalker.scala 201:56]
  reg  r_1; // @[StopWatch.scala 24:20]
  wire  _GEN_51 = io_mem_resp_valid ? 1'h0 : r_1; // @[StopWatch.scala 26:19 24:20 26:23]
  wire  _GEN_52 = _T_4 | _GEN_51; // @[StopWatch.scala 27:{20,24}]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  assign io_req_ready = state == 3'h0; // @[PageTableWalker.scala 89:25]
  assign io_resp_valid = _sent_to_pmp_T_1 & (find_pte | accessFault); // @[PageTableWalker.scala 162:42]
  assign io_resp_bits_source = source; // @[PageTableWalker.scala 163:23]
  assign io_resp_bits_resp_entry_tag = vpn; // @[MMUBundle.scala 676:20]
  assign io_resp_bits_resp_entry_ppn = io_mem_resp_bits[33:10]; // @[PageTableWalker.scala 88:38]
  assign io_resp_bits_resp_entry_perm_d = io_mem_resp_bits[7]; // @[PageTableWalker.scala 88:38]
  assign io_resp_bits_resp_entry_perm_a = io_mem_resp_bits[6]; // @[PageTableWalker.scala 88:38]
  assign io_resp_bits_resp_entry_perm_g = io_mem_resp_bits[5]; // @[PageTableWalker.scala 88:38]
  assign io_resp_bits_resp_entry_perm_u = io_mem_resp_bits[4]; // @[PageTableWalker.scala 88:38]
  assign io_resp_bits_resp_entry_perm_x = io_mem_resp_bits[3]; // @[PageTableWalker.scala 88:38]
  assign io_resp_bits_resp_entry_perm_w = io_mem_resp_bits[2]; // @[PageTableWalker.scala 88:38]
  assign io_resp_bits_resp_entry_perm_r = io_mem_resp_bits[1]; // @[PageTableWalker.scala 88:38]
  assign io_resp_bits_resp_entry_level = accessFault ? af_level : level; // @[PageTableWalker.scala 164:70]
  assign io_resp_bits_resp_pf = pageFault & ~accessFault; // @[PageTableWalker.scala 164:37]
  assign io_resp_bits_resp_af = accessFault; // @[MMUBundle.scala 683:13]
  assign io_llptw_valid = _sent_to_pmp_T_1 & to_find_pte & _T_13; // @[PageTableWalker.scala 166:58]
  assign io_llptw_bits_req_info_vpn = vpn; // @[PageTableWalker.scala 168:30]
  assign io_llptw_bits_req_info_source = source; // @[PageTableWalker.scala 167:33]
  assign io_llptw_bits_ppn = {{12'd0}, memPte_ppn}; // @[PageTableWalker.scala 169:21]
  assign io_mem_req_valid = state == 3'h2 & ~io_mem_mask & _T_13; // @[PageTableWalker.scala 181:56]
  assign io_mem_req_bits_addr = af_level == 2'h0 ? l1addr : l2addr; // @[PageTableWalker.scala 175:21]
  assign io_pmp_req_bits_addr = af_level == 2'h0 ? l1addr : l2addr; // @[PageTableWalker.scala 175:21]
  assign io_refill_req_info_vpn = vpn; // @[PageTableWalker.scala 185:26]
  assign io_refill_req_info_source = source; // @[PageTableWalker.scala 187:29]
  assign io_refill_level = level; // @[PageTableWalker.scala 186:19]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  always @(posedge clock) begin
    if (reset) begin // @[PageTableWalker.scala 81:22]
      state <= 3'h0; // @[PageTableWalker.scala 81:22]
    end else if (io_sfence_valid) begin // @[PageTableWalker.scala 152:23]
      state <= 3'h0; // @[PageTableWalker.scala 153:11]
    end else if (3'h0 == state) begin // @[PageTableWalker.scala 95:18]
      if (_T_1) begin // @[PageTableWalker.scala 97:28]
        state <= 3'h1; // @[PageTableWalker.scala 99:15]
      end
    end else if (3'h1 == state) begin // @[PageTableWalker.scala 95:18]
      state <= 3'h2; // @[PageTableWalker.scala 110:13]
    end else begin
      state <= _GEN_29;
    end
    if (reset) begin // @[PageTableWalker.scala 82:22]
      level <= 2'h0; // @[PageTableWalker.scala 82:22]
    end else if (3'h0 == state) begin // @[PageTableWalker.scala 95:18]
      if (_T_1) begin // @[PageTableWalker.scala 97:28]
        level <= {{1'd0}, io_req_bits_l1Hit}; // @[PageTableWalker.scala 100:15]
      end
    end else if (!(3'h1 == state)) begin // @[PageTableWalker.scala 95:18]
      if (!(3'h2 == state)) begin // @[PageTableWalker.scala 95:18]
        level <= _GEN_28;
      end
    end
    if (reset) begin // @[PageTableWalker.scala 83:25]
      af_level <= 2'h0; // @[PageTableWalker.scala 83:25]
    end else if (3'h0 == state) begin // @[PageTableWalker.scala 95:18]
      if (_T_1) begin // @[PageTableWalker.scala 97:28]
        af_level <= {{1'd0}, io_req_bits_l1Hit}; // @[PageTableWalker.scala 101:18]
      end
    end else if (!(3'h1 == state)) begin // @[PageTableWalker.scala 95:18]
      if (!(3'h2 == state)) begin // @[PageTableWalker.scala 95:18]
        af_level <= _GEN_26;
      end
    end
    ppn <= _GEN_40[23:0];
    if (3'h0 == state) begin // @[PageTableWalker.scala 95:18]
      if (_T_1) begin // @[PageTableWalker.scala 97:28]
        vpn <= io_req_bits_req_info_vpn; // @[PageTableWalker.scala 103:13]
      end
    end
    if (3'h0 == state) begin // @[PageTableWalker.scala 95:18]
      if (_T_1) begin // @[PageTableWalker.scala 97:28]
        l1Hit <= io_req_bits_l1Hit; // @[PageTableWalker.scala 104:15]
      end
    end
    if (io_sfence_valid) begin // @[PageTableWalker.scala 152:23]
      accessFault <= 1'h0; // @[PageTableWalker.scala 154:17]
    end else if (3'h0 == state) begin // @[PageTableWalker.scala 95:18]
      if (_T_1) begin // @[PageTableWalker.scala 97:28]
        accessFault <= 1'h0; // @[PageTableWalker.scala 105:21]
      end else begin
        accessFault <= _GEN_0;
      end
    end else begin
      accessFault <= _GEN_0;
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      source <= io_req_bits_req_info_source; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[StopWatch.scala 24:20]
      r_1 <= 1'h0; // @[StopWatch.scala 24:20]
    end else begin
      r_1 <= _GEN_52;
    end
    io_perf_0_value_REG <= io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= state != 3'h0; // @[PageTableWalker.scala 207:34]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= state == 3'h0; // @[PageTableWalker.scala 208:34]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= io_resp_valid & _T_31; // @[PageTableWalker.scala 209:42]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= io_mem_req_ready & io_mem_req_valid; // @[Decoupled.scala 50:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= r_1; // @[PerfCounterUtils.scala 189:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= io_mem_req_valid & _T_35; // @[PageTableWalker.scala 212:42]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  state = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  level = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  af_level = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  ppn = _RAND_3[23:0];
  _RAND_4 = {1{`RANDOM}};
  vpn = _RAND_4[26:0];
  _RAND_5 = {1{`RANDOM}};
  l1Hit = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  accessFault = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  source = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  r_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_22[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
