module LLPTW(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_csr_satp_changed,
  output        io_in_ready,
  input         io_in_valid,
  input  [26:0] io_in_bits_req_info_vpn,
  input  [1:0]  io_in_bits_req_info_source,
  input  [35:0] io_in_bits_ppn,
  input         io_out_ready,
  output        io_out_valid,
  output [26:0] io_out_bits_req_info_vpn,
  output [1:0]  io_out_bits_req_info_source,
  output [2:0]  io_out_bits_id,
  output        io_out_bits_af,
  input         io_mem_req_ready,
  output        io_mem_req_valid,
  output [35:0] io_mem_req_bits_addr,
  output [2:0]  io_mem_req_bits_id,
  input         io_mem_resp_valid,
  input  [2:0]  io_mem_resp_bits_id,
  output [2:0]  io_mem_enq_ptr,
  output        io_mem_buffer_it_0,
  output        io_mem_buffer_it_1,
  output        io_mem_buffer_it_2,
  output        io_mem_buffer_it_3,
  output        io_mem_buffer_it_4,
  output        io_mem_buffer_it_5,
  output [26:0] io_mem_refill_vpn,
  output [1:0]  io_mem_refill_source,
  input         io_mem_req_mask_0,
  input         io_mem_req_mask_1,
  input         io_mem_req_mask_2,
  input         io_mem_req_mask_3,
  input         io_mem_req_mask_4,
  input         io_mem_req_mask_5,
  output        io_pmp_req_valid,
  output [35:0] io_pmp_req_bits_addr,
  input         io_pmp_resp_ld,
  input         io_pmp_resp_mmio,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value
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
`endif // RANDOMIZE_REG_INIT
  wire  mem_arb_clock; // @[PageTableWalker.scala 275:23]
  wire  mem_arb_io_in_0_valid; // @[PageTableWalker.scala 275:23]
  wire [26:0] mem_arb_io_in_0_bits_req_info_vpn; // @[PageTableWalker.scala 275:23]
  wire [23:0] mem_arb_io_in_0_bits_ppn; // @[PageTableWalker.scala 275:23]
  wire  mem_arb_io_in_1_valid; // @[PageTableWalker.scala 275:23]
  wire [26:0] mem_arb_io_in_1_bits_req_info_vpn; // @[PageTableWalker.scala 275:23]
  wire [23:0] mem_arb_io_in_1_bits_ppn; // @[PageTableWalker.scala 275:23]
  wire  mem_arb_io_in_2_valid; // @[PageTableWalker.scala 275:23]
  wire [26:0] mem_arb_io_in_2_bits_req_info_vpn; // @[PageTableWalker.scala 275:23]
  wire [23:0] mem_arb_io_in_2_bits_ppn; // @[PageTableWalker.scala 275:23]
  wire  mem_arb_io_in_3_valid; // @[PageTableWalker.scala 275:23]
  wire [26:0] mem_arb_io_in_3_bits_req_info_vpn; // @[PageTableWalker.scala 275:23]
  wire [23:0] mem_arb_io_in_3_bits_ppn; // @[PageTableWalker.scala 275:23]
  wire  mem_arb_io_in_4_valid; // @[PageTableWalker.scala 275:23]
  wire [26:0] mem_arb_io_in_4_bits_req_info_vpn; // @[PageTableWalker.scala 275:23]
  wire [23:0] mem_arb_io_in_4_bits_ppn; // @[PageTableWalker.scala 275:23]
  wire  mem_arb_io_in_5_valid; // @[PageTableWalker.scala 275:23]
  wire [26:0] mem_arb_io_in_5_bits_req_info_vpn; // @[PageTableWalker.scala 275:23]
  wire [23:0] mem_arb_io_in_5_bits_ppn; // @[PageTableWalker.scala 275:23]
  wire  mem_arb_io_out_ready; // @[PageTableWalker.scala 275:23]
  wire  mem_arb_io_out_valid; // @[PageTableWalker.scala 275:23]
  wire [26:0] mem_arb_io_out_bits_req_info_vpn; // @[PageTableWalker.scala 275:23]
  wire [23:0] mem_arb_io_out_bits_ppn; // @[PageTableWalker.scala 275:23]
  wire [2:0] mem_arb_io_chosen; // @[PageTableWalker.scala 275:23]
  reg [26:0] entries_0_req_info_vpn; // @[PageTableWalker.scala 263:20]
  reg [1:0] entries_0_req_info_source; // @[PageTableWalker.scala 263:20]
  reg [23:0] entries_0_ppn; // @[PageTableWalker.scala 263:20]
  reg [2:0] entries_0_wait_id; // @[PageTableWalker.scala 263:20]
  reg  entries_0_af; // @[PageTableWalker.scala 263:20]
  reg [26:0] entries_1_req_info_vpn; // @[PageTableWalker.scala 263:20]
  reg [1:0] entries_1_req_info_source; // @[PageTableWalker.scala 263:20]
  reg [23:0] entries_1_ppn; // @[PageTableWalker.scala 263:20]
  reg [2:0] entries_1_wait_id; // @[PageTableWalker.scala 263:20]
  reg  entries_1_af; // @[PageTableWalker.scala 263:20]
  reg [26:0] entries_2_req_info_vpn; // @[PageTableWalker.scala 263:20]
  reg [1:0] entries_2_req_info_source; // @[PageTableWalker.scala 263:20]
  reg [23:0] entries_2_ppn; // @[PageTableWalker.scala 263:20]
  reg [2:0] entries_2_wait_id; // @[PageTableWalker.scala 263:20]
  reg  entries_2_af; // @[PageTableWalker.scala 263:20]
  reg [26:0] entries_3_req_info_vpn; // @[PageTableWalker.scala 263:20]
  reg [1:0] entries_3_req_info_source; // @[PageTableWalker.scala 263:20]
  reg [23:0] entries_3_ppn; // @[PageTableWalker.scala 263:20]
  reg [2:0] entries_3_wait_id; // @[PageTableWalker.scala 263:20]
  reg  entries_3_af; // @[PageTableWalker.scala 263:20]
  reg [26:0] entries_4_req_info_vpn; // @[PageTableWalker.scala 263:20]
  reg [1:0] entries_4_req_info_source; // @[PageTableWalker.scala 263:20]
  reg [23:0] entries_4_ppn; // @[PageTableWalker.scala 263:20]
  reg [2:0] entries_4_wait_id; // @[PageTableWalker.scala 263:20]
  reg  entries_4_af; // @[PageTableWalker.scala 263:20]
  reg [26:0] entries_5_req_info_vpn; // @[PageTableWalker.scala 263:20]
  reg [1:0] entries_5_req_info_source; // @[PageTableWalker.scala 263:20]
  reg [23:0] entries_5_ppn; // @[PageTableWalker.scala 263:20]
  reg [2:0] entries_5_wait_id; // @[PageTableWalker.scala 263:20]
  reg  entries_5_af; // @[PageTableWalker.scala 263:20]
  reg [2:0] state_0; // @[PageTableWalker.scala 265:22]
  reg [2:0] state_1; // @[PageTableWalker.scala 265:22]
  reg [2:0] state_2; // @[PageTableWalker.scala 265:22]
  reg [2:0] state_3; // @[PageTableWalker.scala 265:22]
  reg [2:0] state_4; // @[PageTableWalker.scala 265:22]
  reg [2:0] state_5; // @[PageTableWalker.scala 265:22]
  wire  is_emptys_0 = state_0 == 3'h0; // @[PageTableWalker.scala 266:31]
  wire  is_emptys_1 = state_1 == 3'h0; // @[PageTableWalker.scala 266:31]
  wire  is_emptys_2 = state_2 == 3'h0; // @[PageTableWalker.scala 266:31]
  wire  is_emptys_3 = state_3 == 3'h0; // @[PageTableWalker.scala 266:31]
  wire  is_emptys_4 = state_4 == 3'h0; // @[PageTableWalker.scala 266:31]
  wire  is_emptys_5 = state_5 == 3'h0; // @[PageTableWalker.scala 266:31]
  wire  is_mems_0 = state_0 == 3'h2; // @[PageTableWalker.scala 267:29]
  wire  is_mems_1 = state_1 == 3'h2; // @[PageTableWalker.scala 267:29]
  wire  is_mems_2 = state_2 == 3'h2; // @[PageTableWalker.scala 267:29]
  wire  is_mems_3 = state_3 == 3'h2; // @[PageTableWalker.scala 267:29]
  wire  is_mems_4 = state_4 == 3'h2; // @[PageTableWalker.scala 267:29]
  wire  is_mems_5 = state_5 == 3'h2; // @[PageTableWalker.scala 267:29]
  wire  is_waiting_0 = state_0 == 3'h3; // @[PageTableWalker.scala 268:32]
  wire  is_waiting_1 = state_1 == 3'h3; // @[PageTableWalker.scala 268:32]
  wire  is_waiting_2 = state_2 == 3'h3; // @[PageTableWalker.scala 268:32]
  wire  is_waiting_3 = state_3 == 3'h3; // @[PageTableWalker.scala 268:32]
  wire  is_waiting_4 = state_4 == 3'h3; // @[PageTableWalker.scala 268:32]
  wire  is_waiting_5 = state_5 == 3'h3; // @[PageTableWalker.scala 268:32]
  wire  is_having_0 = state_0 == 3'h4; // @[PageTableWalker.scala 269:31]
  wire  is_having_1 = state_1 == 3'h4; // @[PageTableWalker.scala 269:31]
  wire  is_having_2 = state_2 == 3'h4; // @[PageTableWalker.scala 269:31]
  wire  is_having_3 = state_3 == 3'h4; // @[PageTableWalker.scala 269:31]
  wire  is_having_4 = state_4 == 3'h4; // @[PageTableWalker.scala 269:31]
  wire  is_having_5 = state_5 == 3'h4; // @[PageTableWalker.scala 269:31]
  wire  _full_T_1 = is_emptys_0 | (is_emptys_1 | is_emptys_2); // @[ParallelMux.scala 37:55]
  wire  _full_T_4 = is_emptys_0 | (is_emptys_1 | is_emptys_2) | (is_emptys_3 | (is_emptys_4 | is_emptys_5)); // @[ParallelMux.scala 37:55]
  wire  full = ~_full_T_4; // @[PageTableWalker.scala 271:14]
  wire [1:0] _enq_ptr_T_1 = is_emptys_1 ? 2'h1 : 2'h2; // @[ParallelMux.scala 90:77]
  wire [1:0] _enq_ptr_T_3 = is_emptys_0 ? 2'h0 : _enq_ptr_T_1; // @[ParallelMux.scala 90:77]
  wire [2:0] _enq_ptr_T_5 = is_emptys_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _enq_ptr_T_7 = is_emptys_3 ? 3'h3 : _enq_ptr_T_5; // @[ParallelMux.scala 90:77]
  wire [2:0] enq_ptr = _full_T_1 ? {{1'd0}, _enq_ptr_T_3} : _enq_ptr_T_7; // @[ParallelMux.scala 90:77]
  wire [1:0] _mem_ptr_T_1 = is_having_1 ? 2'h1 : 2'h2; // @[ParallelMux.scala 90:77]
  wire  _mem_ptr_T_2 = is_having_0 | (is_having_1 | is_having_2); // @[ParallelMux.scala 90:65]
  wire [1:0] _mem_ptr_T_3 = is_having_0 ? 2'h0 : _mem_ptr_T_1; // @[ParallelMux.scala 90:77]
  wire [2:0] _mem_ptr_T_5 = is_having_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire  _mem_ptr_T_6 = is_having_3 | (is_having_4 | is_having_5); // @[ParallelMux.scala 90:65]
  wire [2:0] _mem_ptr_T_7 = is_having_3 ? 3'h3 : _mem_ptr_T_5; // @[ParallelMux.scala 90:77]
  wire [2:0] mem_ptr = is_having_0 | (is_having_1 | is_having_2) ? {{1'd0}, _mem_ptr_T_3} : _mem_ptr_T_7; // @[ParallelMux.scala 90:77]
  wire  dup_vec_0 = io_in_bits_req_info_vpn[26:3] == entries_0_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire  dup_vec_1 = io_in_bits_req_info_vpn[26:3] == entries_1_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire  dup_vec_2 = io_in_bits_req_info_vpn[26:3] == entries_2_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire  dup_vec_3 = io_in_bits_req_info_vpn[26:3] == entries_3_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire  dup_vec_4 = io_in_bits_req_info_vpn[26:3] == entries_4_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire  dup_vec_5 = io_in_bits_req_info_vpn[26:3] == entries_5_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire  _dup_req_fire_T = mem_arb_io_out_ready & mem_arb_io_out_valid; // @[Decoupled.scala 50:35]
  wire  _dup_req_fire_T_3 = io_in_bits_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire  dup_req_fire = _dup_req_fire_T & _dup_req_fire_T_3; // @[PageTableWalker.scala 290:44]
  wire  dup_vec_wait_0 = dup_vec_0 & is_waiting_0; // @[PageTableWalker.scala 291:67]
  wire  dup_vec_wait_1 = dup_vec_1 & is_waiting_1; // @[PageTableWalker.scala 291:67]
  wire  dup_vec_wait_2 = dup_vec_2 & is_waiting_2; // @[PageTableWalker.scala 291:67]
  wire  dup_vec_wait_3 = dup_vec_3 & is_waiting_3; // @[PageTableWalker.scala 291:67]
  wire  dup_vec_wait_4 = dup_vec_4 & is_waiting_4; // @[PageTableWalker.scala 291:67]
  wire  dup_vec_wait_5 = dup_vec_5 & is_waiting_5; // @[PageTableWalker.scala 291:67]
  wire [2:0] _wait_id_xs_T_1 = dup_vec_wait_0 ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [2:0] wait_id_xs_0 = _wait_id_xs_T_1 & entries_0_wait_id; // @[ParallelMux.scala 65:65]
  wire [2:0] _wait_id_xs_T_4 = dup_vec_wait_1 ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [2:0] wait_id_xs_1 = _wait_id_xs_T_4 & entries_1_wait_id; // @[ParallelMux.scala 65:65]
  wire [2:0] _wait_id_xs_T_7 = dup_vec_wait_2 ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [2:0] wait_id_xs_2 = _wait_id_xs_T_7 & entries_2_wait_id; // @[ParallelMux.scala 65:65]
  wire [2:0] _wait_id_xs_T_10 = dup_vec_wait_3 ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [2:0] wait_id_xs_3 = _wait_id_xs_T_10 & entries_3_wait_id; // @[ParallelMux.scala 65:65]
  wire [2:0] _wait_id_xs_T_13 = dup_vec_wait_4 ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [2:0] wait_id_xs_4 = _wait_id_xs_T_13 & entries_4_wait_id; // @[ParallelMux.scala 65:65]
  wire [2:0] _wait_id_xs_T_16 = dup_vec_wait_5 ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [2:0] wait_id_xs_5 = _wait_id_xs_T_16 & entries_5_wait_id; // @[ParallelMux.scala 65:65]
  wire [2:0] _wait_id_T = wait_id_xs_1 | wait_id_xs_2; // @[ParallelMux.scala 37:55]
  wire [2:0] _wait_id_T_1 = wait_id_xs_0 | _wait_id_T; // @[ParallelMux.scala 37:55]
  wire [2:0] _wait_id_T_2 = wait_id_xs_4 | wait_id_xs_5; // @[ParallelMux.scala 37:55]
  wire [2:0] _wait_id_T_3 = wait_id_xs_3 | _wait_id_T_2; // @[ParallelMux.scala 37:55]
  wire [2:0] _wait_id_T_4 = _wait_id_T_1 | _wait_id_T_3; // @[ParallelMux.scala 37:55]
  wire [2:0] wait_id = dup_req_fire ? mem_arb_io_chosen : _wait_id_T_4; // @[PageTableWalker.scala 293:20]
  wire  _GEN_1 = 3'h1 == io_mem_resp_bits_id ? dup_vec_wait_1 : dup_vec_wait_0; // @[PageTableWalker.scala 294:{42,42}]
  wire  _GEN_2 = 3'h2 == io_mem_resp_bits_id ? dup_vec_wait_2 : _GEN_1; // @[PageTableWalker.scala 294:{42,42}]
  wire  _GEN_3 = 3'h3 == io_mem_resp_bits_id ? dup_vec_wait_3 : _GEN_2; // @[PageTableWalker.scala 294:{42,42}]
  wire  _GEN_4 = 3'h4 == io_mem_resp_bits_id ? dup_vec_wait_4 : _GEN_3; // @[PageTableWalker.scala 294:{42,42}]
  wire  _GEN_5 = 3'h5 == io_mem_resp_bits_id ? dup_vec_wait_5 : _GEN_4; // @[PageTableWalker.scala 294:{42,42}]
  wire  dup_wait_resp = io_mem_resp_valid & _GEN_5; // @[PageTableWalker.scala 294:42]
  wire [5:0] _to_wait_T = {dup_vec_wait_0,dup_vec_wait_1,dup_vec_wait_2,dup_vec_wait_3,dup_vec_wait_4,dup_vec_wait_5}; // @[Cat.scala 31:58]
  wire  to_wait = |_to_wait_T | dup_req_fire; // @[PageTableWalker.scala 295:39]
  reg  mem_resp_hit_0; // @[PageTableWalker.scala 300:29]
  reg  mem_resp_hit_1; // @[PageTableWalker.scala 300:29]
  reg  mem_resp_hit_2; // @[PageTableWalker.scala 300:29]
  reg  mem_resp_hit_3; // @[PageTableWalker.scala 300:29]
  reg  mem_resp_hit_4; // @[PageTableWalker.scala 300:29]
  reg  mem_resp_hit_5; // @[PageTableWalker.scala 300:29]
  wire [2:0] _enq_state_T = to_wait ? 3'h3 : 3'h1; // @[PageTableWalker.scala 302:8]
  wire [2:0] enq_state = dup_wait_resp ? 3'h4 : _enq_state_T; // @[PageTableWalker.scala 301:22]
  wire  _T_7 = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  wire  _state_T = io_in_bits_req_info_source == 2'h2; // @[MMUConst.scala 230:13]
  wire [2:0] _state_T_3 = _state_T & enq_state != 3'h1 ? 3'h0 : enq_state; // @[PageTableWalker.scala 307:26]
  wire [2:0] _GEN_6 = 3'h0 == enq_ptr ? _state_T_3 : state_0; // @[PageTableWalker.scala 307:{20,20} 265:22]
  wire [2:0] _GEN_7 = 3'h1 == enq_ptr ? _state_T_3 : state_1; // @[PageTableWalker.scala 307:{20,20} 265:22]
  wire [2:0] _GEN_8 = 3'h2 == enq_ptr ? _state_T_3 : state_2; // @[PageTableWalker.scala 307:{20,20} 265:22]
  wire [2:0] _GEN_9 = 3'h3 == enq_ptr ? _state_T_3 : state_3; // @[PageTableWalker.scala 307:{20,20} 265:22]
  wire [2:0] _GEN_10 = 3'h4 == enq_ptr ? _state_T_3 : state_4; // @[PageTableWalker.scala 307:{20,20} 265:22]
  wire [2:0] _GEN_11 = 3'h5 == enq_ptr ? _state_T_3 : state_5; // @[PageTableWalker.scala 307:{20,20} 265:22]
  wire [2:0] _entries_wait_id_T = to_wait ? wait_id : enq_ptr; // @[PageTableWalker.scala 310:36]
  wire [2:0] _GEN_30 = 3'h0 == enq_ptr ? _entries_wait_id_T : entries_0_wait_id; // @[PageTableWalker.scala 263:20 310:{30,30}]
  wire [2:0] _GEN_31 = 3'h1 == enq_ptr ? _entries_wait_id_T : entries_1_wait_id; // @[PageTableWalker.scala 263:20 310:{30,30}]
  wire [2:0] _GEN_32 = 3'h2 == enq_ptr ? _entries_wait_id_T : entries_2_wait_id; // @[PageTableWalker.scala 263:20 310:{30,30}]
  wire [2:0] _GEN_33 = 3'h3 == enq_ptr ? _entries_wait_id_T : entries_3_wait_id; // @[PageTableWalker.scala 263:20 310:{30,30}]
  wire [2:0] _GEN_34 = 3'h4 == enq_ptr ? _entries_wait_id_T : entries_4_wait_id; // @[PageTableWalker.scala 263:20 310:{30,30}]
  wire [2:0] _GEN_35 = 3'h5 == enq_ptr ? _entries_wait_id_T : entries_5_wait_id; // @[PageTableWalker.scala 263:20 310:{30,30}]
  wire  _GEN_36 = 3'h0 == enq_ptr ? 1'h0 : entries_0_af; // @[PageTableWalker.scala 263:20 311:{25,25}]
  wire  _GEN_37 = 3'h1 == enq_ptr ? 1'h0 : entries_1_af; // @[PageTableWalker.scala 263:20 311:{25,25}]
  wire  _GEN_38 = 3'h2 == enq_ptr ? 1'h0 : entries_2_af; // @[PageTableWalker.scala 263:20 311:{25,25}]
  wire  _GEN_39 = 3'h3 == enq_ptr ? 1'h0 : entries_3_af; // @[PageTableWalker.scala 263:20 311:{25,25}]
  wire  _GEN_40 = 3'h4 == enq_ptr ? 1'h0 : entries_4_af; // @[PageTableWalker.scala 263:20 311:{25,25}]
  wire  _GEN_41 = 3'h5 == enq_ptr ? 1'h0 : entries_5_af; // @[PageTableWalker.scala 263:20 311:{25,25}]
  wire  _GEN_42 = 3'h0 == enq_ptr ? dup_wait_resp : mem_resp_hit_0; // @[PageTableWalker.scala 312:{27,27} 300:29]
  wire  _GEN_43 = 3'h1 == enq_ptr ? dup_wait_resp : mem_resp_hit_1; // @[PageTableWalker.scala 312:{27,27} 300:29]
  wire  _GEN_44 = 3'h2 == enq_ptr ? dup_wait_resp : mem_resp_hit_2; // @[PageTableWalker.scala 312:{27,27} 300:29]
  wire  _GEN_45 = 3'h3 == enq_ptr ? dup_wait_resp : mem_resp_hit_3; // @[PageTableWalker.scala 312:{27,27} 300:29]
  wire  _GEN_46 = 3'h4 == enq_ptr ? dup_wait_resp : mem_resp_hit_4; // @[PageTableWalker.scala 312:{27,27} 300:29]
  wire  _GEN_47 = 3'h5 == enq_ptr ? dup_wait_resp : mem_resp_hit_5; // @[PageTableWalker.scala 312:{27,27} 300:29]
  wire [2:0] _GEN_48 = _T_7 ? _GEN_6 : state_0; // @[PageTableWalker.scala 265:22 303:23]
  wire [2:0] _GEN_49 = _T_7 ? _GEN_7 : state_1; // @[PageTableWalker.scala 265:22 303:23]
  wire [2:0] _GEN_50 = _T_7 ? _GEN_8 : state_2; // @[PageTableWalker.scala 265:22 303:23]
  wire [2:0] _GEN_51 = _T_7 ? _GEN_9 : state_3; // @[PageTableWalker.scala 265:22 303:23]
  wire [2:0] _GEN_52 = _T_7 ? _GEN_10 : state_4; // @[PageTableWalker.scala 265:22 303:23]
  wire [2:0] _GEN_53 = _T_7 ? _GEN_11 : state_5; // @[PageTableWalker.scala 265:22 303:23]
  wire [2:0] _GEN_72 = _T_7 ? _GEN_30 : entries_0_wait_id; // @[PageTableWalker.scala 263:20 303:23]
  wire [2:0] _GEN_73 = _T_7 ? _GEN_31 : entries_1_wait_id; // @[PageTableWalker.scala 263:20 303:23]
  wire [2:0] _GEN_74 = _T_7 ? _GEN_32 : entries_2_wait_id; // @[PageTableWalker.scala 263:20 303:23]
  wire [2:0] _GEN_75 = _T_7 ? _GEN_33 : entries_3_wait_id; // @[PageTableWalker.scala 263:20 303:23]
  wire [2:0] _GEN_76 = _T_7 ? _GEN_34 : entries_4_wait_id; // @[PageTableWalker.scala 263:20 303:23]
  wire [2:0] _GEN_77 = _T_7 ? _GEN_35 : entries_5_wait_id; // @[PageTableWalker.scala 263:20 303:23]
  wire  _GEN_78 = _T_7 ? _GEN_36 : entries_0_af; // @[PageTableWalker.scala 263:20 303:23]
  wire  _GEN_79 = _T_7 ? _GEN_37 : entries_1_af; // @[PageTableWalker.scala 263:20 303:23]
  wire  _GEN_80 = _T_7 ? _GEN_38 : entries_2_af; // @[PageTableWalker.scala 263:20 303:23]
  wire  _GEN_81 = _T_7 ? _GEN_39 : entries_3_af; // @[PageTableWalker.scala 263:20 303:23]
  wire  _GEN_82 = _T_7 ? _GEN_40 : entries_4_af; // @[PageTableWalker.scala 263:20 303:23]
  wire  _GEN_83 = _T_7 ? _GEN_41 : entries_5_af; // @[PageTableWalker.scala 263:20 303:23]
  wire  _GEN_84 = _T_7 ? _GEN_42 : mem_resp_hit_0; // @[PageTableWalker.scala 303:23 300:29]
  wire  _GEN_85 = _T_7 ? _GEN_43 : mem_resp_hit_1; // @[PageTableWalker.scala 303:23 300:29]
  wire  _GEN_86 = _T_7 ? _GEN_44 : mem_resp_hit_2; // @[PageTableWalker.scala 303:23 300:29]
  wire  _GEN_87 = _T_7 ? _GEN_45 : mem_resp_hit_3; // @[PageTableWalker.scala 303:23 300:29]
  wire  _GEN_88 = _T_7 ? _GEN_46 : mem_resp_hit_4; // @[PageTableWalker.scala 303:23 300:29]
  wire  _GEN_89 = _T_7 ? _GEN_47 : mem_resp_hit_5; // @[PageTableWalker.scala 303:23 300:29]
  wire  _T_12 = entries_0_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire [2:0] _GEN_90 = state_0 != 3'h0 & _T_12 ? 3'h3 : _GEN_48; // @[PageTableWalker.scala 316:104 318:18]
  wire  _T_17 = entries_1_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire [2:0] _GEN_92 = state_1 != 3'h0 & _T_17 ? 3'h3 : _GEN_49; // @[PageTableWalker.scala 316:104 318:18]
  wire  _T_22 = entries_2_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire [2:0] _GEN_94 = state_2 != 3'h0 & _T_22 ? 3'h3 : _GEN_50; // @[PageTableWalker.scala 316:104 318:18]
  wire  _T_27 = entries_3_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire [2:0] _GEN_96 = state_3 != 3'h0 & _T_27 ? 3'h3 : _GEN_51; // @[PageTableWalker.scala 316:104 318:18]
  wire  _T_32 = entries_4_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire [2:0] _GEN_98 = state_4 != 3'h0 & _T_32 ? 3'h3 : _GEN_52; // @[PageTableWalker.scala 316:104 318:18]
  wire  _T_37 = entries_5_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire [2:0] _GEN_100 = state_5 != 3'h0 & _T_37 ? 3'h3 : _GEN_53; // @[PageTableWalker.scala 316:104 318:18]
  wire [2:0] _GEN_102 = _dup_req_fire_T ? _GEN_90 : _GEN_48; // @[PageTableWalker.scala 314:32]
  wire [2:0] _GEN_104 = _dup_req_fire_T ? _GEN_92 : _GEN_49; // @[PageTableWalker.scala 314:32]
  wire [2:0] _GEN_106 = _dup_req_fire_T ? _GEN_94 : _GEN_50; // @[PageTableWalker.scala 314:32]
  wire [2:0] _GEN_108 = _dup_req_fire_T ? _GEN_96 : _GEN_51; // @[PageTableWalker.scala 314:32]
  wire [2:0] _GEN_110 = _dup_req_fire_T ? _GEN_98 : _GEN_52; // @[PageTableWalker.scala 314:32]
  wire [2:0] _GEN_112 = _dup_req_fire_T ? _GEN_100 : _GEN_53; // @[PageTableWalker.scala 314:32]
  wire [2:0] _GEN_114 = is_waiting_0 & io_mem_resp_bits_id == entries_0_wait_id ? 3'h4 : _GEN_102; // @[PageTableWalker.scala 325:91 326:18]
  wire  _GEN_115 = is_waiting_0 & io_mem_resp_bits_id == entries_0_wait_id | _GEN_84; // @[PageTableWalker.scala 325:91 327:25]
  wire [2:0] _GEN_116 = is_waiting_1 & io_mem_resp_bits_id == entries_1_wait_id ? 3'h4 : _GEN_104; // @[PageTableWalker.scala 325:91 326:18]
  wire  _GEN_117 = is_waiting_1 & io_mem_resp_bits_id == entries_1_wait_id | _GEN_85; // @[PageTableWalker.scala 325:91 327:25]
  wire [2:0] _GEN_118 = is_waiting_2 & io_mem_resp_bits_id == entries_2_wait_id ? 3'h4 : _GEN_106; // @[PageTableWalker.scala 325:91 326:18]
  wire  _GEN_119 = is_waiting_2 & io_mem_resp_bits_id == entries_2_wait_id | _GEN_86; // @[PageTableWalker.scala 325:91 327:25]
  wire [2:0] _GEN_120 = is_waiting_3 & io_mem_resp_bits_id == entries_3_wait_id ? 3'h4 : _GEN_108; // @[PageTableWalker.scala 325:91 326:18]
  wire  _GEN_121 = is_waiting_3 & io_mem_resp_bits_id == entries_3_wait_id | _GEN_87; // @[PageTableWalker.scala 325:91 327:25]
  wire [2:0] _GEN_122 = is_waiting_4 & io_mem_resp_bits_id == entries_4_wait_id ? 3'h4 : _GEN_110; // @[PageTableWalker.scala 325:91 326:18]
  wire  _GEN_123 = is_waiting_4 & io_mem_resp_bits_id == entries_4_wait_id | _GEN_88; // @[PageTableWalker.scala 325:91 327:25]
  wire [2:0] _GEN_124 = is_waiting_5 & io_mem_resp_bits_id == entries_5_wait_id ? 3'h4 : _GEN_112; // @[PageTableWalker.scala 325:91 326:18]
  wire  _GEN_125 = is_waiting_5 & io_mem_resp_bits_id == entries_5_wait_id | _GEN_89; // @[PageTableWalker.scala 325:91 327:25]
  wire [2:0] _GEN_126 = io_mem_resp_valid ? _GEN_114 : _GEN_102; // @[PageTableWalker.scala 323:29]
  wire [2:0] _GEN_128 = io_mem_resp_valid ? _GEN_116 : _GEN_104; // @[PageTableWalker.scala 323:29]
  wire [2:0] _GEN_130 = io_mem_resp_valid ? _GEN_118 : _GEN_106; // @[PageTableWalker.scala 323:29]
  wire [2:0] _GEN_132 = io_mem_resp_valid ? _GEN_120 : _GEN_108; // @[PageTableWalker.scala 323:29]
  wire [2:0] _GEN_134 = io_mem_resp_valid ? _GEN_122 : _GEN_110; // @[PageTableWalker.scala 323:29]
  wire [2:0] _GEN_136 = io_mem_resp_valid ? _GEN_124 : _GEN_112; // @[PageTableWalker.scala 323:29]
  wire  _T_57 = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _GEN_144 = 3'h0 == mem_ptr ? 3'h0 : _GEN_126; // @[PageTableWalker.scala 333:{20,20}]
  wire [2:0] _GEN_145 = 3'h1 == mem_ptr ? 3'h0 : _GEN_128; // @[PageTableWalker.scala 333:{20,20}]
  wire [2:0] _GEN_146 = 3'h2 == mem_ptr ? 3'h0 : _GEN_130; // @[PageTableWalker.scala 333:{20,20}]
  wire [2:0] _GEN_147 = 3'h3 == mem_ptr ? 3'h0 : _GEN_132; // @[PageTableWalker.scala 333:{20,20}]
  wire [2:0] _GEN_148 = 3'h4 == mem_ptr ? 3'h0 : _GEN_134; // @[PageTableWalker.scala 333:{20,20}]
  wire [2:0] _GEN_149 = 3'h5 == mem_ptr ? 3'h0 : _GEN_136; // @[PageTableWalker.scala 333:{20,20}]
  wire [2:0] _GEN_150 = _T_57 ? _GEN_144 : _GEN_126; // @[PageTableWalker.scala 331:24]
  wire [2:0] _GEN_151 = _T_57 ? _GEN_145 : _GEN_128; // @[PageTableWalker.scala 331:24]
  wire [2:0] _GEN_152 = _T_57 ? _GEN_146 : _GEN_130; // @[PageTableWalker.scala 331:24]
  wire [2:0] _GEN_153 = _T_57 ? _GEN_147 : _GEN_132; // @[PageTableWalker.scala 331:24]
  wire [2:0] _GEN_154 = _T_57 ? _GEN_148 : _GEN_134; // @[PageTableWalker.scala 331:24]
  wire [2:0] _GEN_155 = _T_57 ? _GEN_149 : _GEN_136; // @[PageTableWalker.scala 331:24]
  reg [2:0] enq_ptr_reg; // @[PageTableWalker.scala 337:28]
  reg  io_pmp_req_valid_REG; // @[PageTableWalker.scala 339:30]
  wire [26:0] _GEN_163 = 3'h1 == enq_ptr_reg ? entries_1_req_info_vpn : entries_0_req_info_vpn; // @[MMUConst.scala 211:{8,8}]
  wire [26:0] _GEN_164 = 3'h2 == enq_ptr_reg ? entries_2_req_info_vpn : _GEN_163; // @[MMUConst.scala 211:{8,8}]
  wire [26:0] _GEN_165 = 3'h3 == enq_ptr_reg ? entries_3_req_info_vpn : _GEN_164; // @[MMUConst.scala 211:{8,8}]
  wire [26:0] _GEN_166 = 3'h4 == enq_ptr_reg ? entries_4_req_info_vpn : _GEN_165; // @[MMUConst.scala 211:{8,8}]
  wire [26:0] _GEN_167 = 3'h5 == enq_ptr_reg ? entries_5_req_info_vpn : _GEN_166; // @[MMUConst.scala 211:{8,8}]
  wire [23:0] _GEN_169 = 3'h1 == enq_ptr_reg ? entries_1_ppn : entries_0_ppn; // @[Cat.scala 31:{58,58}]
  wire [23:0] _GEN_170 = 3'h2 == enq_ptr_reg ? entries_2_ppn : _GEN_169; // @[Cat.scala 31:{58,58}]
  wire [23:0] _GEN_171 = 3'h3 == enq_ptr_reg ? entries_3_ppn : _GEN_170; // @[Cat.scala 31:{58,58}]
  wire [23:0] _GEN_172 = 3'h4 == enq_ptr_reg ? entries_4_ppn : _GEN_171; // @[Cat.scala 31:{58,58}]
  wire [23:0] _GEN_173 = 3'h5 == enq_ptr_reg ? entries_5_ppn : _GEN_172; // @[Cat.scala 31:{58,58}]
  wire [32:0] io_pmp_req_bits_addr_hi = {_GEN_173,_GEN_167[8:0]}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_175 = 3'h1 == enq_ptr_reg ? state_1 : state_0; // @[PageTableWalker.scala 344:{47,47}]
  wire [2:0] _GEN_176 = 3'h2 == enq_ptr_reg ? state_2 : _GEN_175; // @[PageTableWalker.scala 344:{47,47}]
  wire [2:0] _GEN_177 = 3'h3 == enq_ptr_reg ? state_3 : _GEN_176; // @[PageTableWalker.scala 344:{47,47}]
  wire [2:0] _GEN_178 = 3'h4 == enq_ptr_reg ? state_4 : _GEN_177; // @[PageTableWalker.scala 344:{47,47}]
  wire [2:0] _GEN_179 = 3'h5 == enq_ptr_reg ? state_5 : _GEN_178; // @[PageTableWalker.scala 344:{47,47}]
  wire  _T_71 = _GEN_167[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[PageTableWalker.scala 285:28]
  wire  _T_73 = ~(_dup_req_fire_T & _T_71); // @[PageTableWalker.scala 345:5]
  wire  _T_74 = io_pmp_req_valid & _GEN_179 == 3'h1 & _T_73; // @[PageTableWalker.scala 344:69]
  wire  accessFault = io_pmp_resp_ld | io_pmp_resp_mmio; // @[PageTableWalker.scala 348:38]
  wire [2:0] _state_T_4 = accessFault ? 3'h4 : 3'h2; // @[PageTableWalker.scala 350:30]
  wire  flush = io_sfence_valid | io_csr_satp_changed; // @[PageTableWalker.scala 353:31]
  wire [1:0] _GEN_217 = 3'h1 == mem_ptr ? entries_1_req_info_source : entries_0_req_info_source; // @[PageTableWalker.scala 361:{24,24}]
  wire [1:0] _GEN_218 = 3'h2 == mem_ptr ? entries_2_req_info_source : _GEN_217; // @[PageTableWalker.scala 361:{24,24}]
  wire [1:0] _GEN_219 = 3'h3 == mem_ptr ? entries_3_req_info_source : _GEN_218; // @[PageTableWalker.scala 361:{24,24}]
  wire [1:0] _GEN_220 = 3'h4 == mem_ptr ? entries_4_req_info_source : _GEN_219; // @[PageTableWalker.scala 361:{24,24}]
  wire [26:0] _GEN_223 = 3'h1 == mem_ptr ? entries_1_req_info_vpn : entries_0_req_info_vpn; // @[PageTableWalker.scala 361:{24,24}]
  wire [26:0] _GEN_224 = 3'h2 == mem_ptr ? entries_2_req_info_vpn : _GEN_223; // @[PageTableWalker.scala 361:{24,24}]
  wire [26:0] _GEN_225 = 3'h3 == mem_ptr ? entries_3_req_info_vpn : _GEN_224; // @[PageTableWalker.scala 361:{24,24}]
  wire [26:0] _GEN_226 = 3'h4 == mem_ptr ? entries_4_req_info_vpn : _GEN_225; // @[PageTableWalker.scala 361:{24,24}]
  wire  _GEN_229 = 3'h1 == mem_ptr ? entries_1_af : entries_0_af; // @[PageTableWalker.scala 363:{18,18}]
  wire  _GEN_230 = 3'h2 == mem_ptr ? entries_2_af : _GEN_229; // @[PageTableWalker.scala 363:{18,18}]
  wire  _GEN_231 = 3'h3 == mem_ptr ? entries_3_af : _GEN_230; // @[PageTableWalker.scala 363:{18,18}]
  wire  _GEN_232 = 3'h4 == mem_ptr ? entries_4_af : _GEN_231; // @[PageTableWalker.scala 363:{18,18}]
  wire [32:0] io_mem_req_bits_addr_hi = {mem_arb_io_out_bits_ppn,mem_arb_io_out_bits_req_info_vpn[8:0]}; // @[Cat.scala 31:58]
  reg [2:0] io_mem_refill_REG; // @[PageTableWalker.scala 369:35]
  wire [1:0] _GEN_235 = 3'h1 == io_mem_refill_REG ? entries_1_req_info_source : entries_0_req_info_source; // @[PageTableWalker.scala 369:{17,17}]
  wire [1:0] _GEN_236 = 3'h2 == io_mem_refill_REG ? entries_2_req_info_source : _GEN_235; // @[PageTableWalker.scala 369:{17,17}]
  wire [1:0] _GEN_237 = 3'h3 == io_mem_refill_REG ? entries_3_req_info_source : _GEN_236; // @[PageTableWalker.scala 369:{17,17}]
  wire [1:0] _GEN_238 = 3'h4 == io_mem_refill_REG ? entries_4_req_info_source : _GEN_237; // @[PageTableWalker.scala 369:{17,17}]
  wire [26:0] _GEN_241 = 3'h1 == io_mem_refill_REG ? entries_1_req_info_vpn : entries_0_req_info_vpn; // @[PageTableWalker.scala 369:{17,17}]
  wire [26:0] _GEN_242 = 3'h2 == io_mem_refill_REG ? entries_2_req_info_vpn : _GEN_241; // @[PageTableWalker.scala 369:{17,17}]
  wire [26:0] _GEN_243 = 3'h3 == io_mem_refill_REG ? entries_3_req_info_vpn : _GEN_242; // @[PageTableWalker.scala 369:{17,17}]
  wire [26:0] _GEN_244 = 3'h4 == io_mem_refill_REG ? entries_4_req_info_vpn : _GEN_243; // @[PageTableWalker.scala 369:{17,17}]
  wire  _T_80 = ~io_in_ready; // @[PageTableWalker.scala 374:57]
  wire [1:0] _T_131 = is_waiting_1 + is_waiting_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_256 = {{1'd0}, is_waiting_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_133 = _GEN_256 + _T_131; // @[Bitwise.scala 48:55]
  wire [1:0] _T_135 = is_waiting_4 + is_waiting_5; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_257 = {{1'd0}, is_waiting_3}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_137 = _GEN_257 + _T_135; // @[Bitwise.scala 48:55]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [2:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  RRArbiter_1 mem_arb ( // @[PageTableWalker.scala 275:23]
    .clock(mem_arb_clock),
    .io_in_0_valid(mem_arb_io_in_0_valid),
    .io_in_0_bits_req_info_vpn(mem_arb_io_in_0_bits_req_info_vpn),
    .io_in_0_bits_ppn(mem_arb_io_in_0_bits_ppn),
    .io_in_1_valid(mem_arb_io_in_1_valid),
    .io_in_1_bits_req_info_vpn(mem_arb_io_in_1_bits_req_info_vpn),
    .io_in_1_bits_ppn(mem_arb_io_in_1_bits_ppn),
    .io_in_2_valid(mem_arb_io_in_2_valid),
    .io_in_2_bits_req_info_vpn(mem_arb_io_in_2_bits_req_info_vpn),
    .io_in_2_bits_ppn(mem_arb_io_in_2_bits_ppn),
    .io_in_3_valid(mem_arb_io_in_3_valid),
    .io_in_3_bits_req_info_vpn(mem_arb_io_in_3_bits_req_info_vpn),
    .io_in_3_bits_ppn(mem_arb_io_in_3_bits_ppn),
    .io_in_4_valid(mem_arb_io_in_4_valid),
    .io_in_4_bits_req_info_vpn(mem_arb_io_in_4_bits_req_info_vpn),
    .io_in_4_bits_ppn(mem_arb_io_in_4_bits_ppn),
    .io_in_5_valid(mem_arb_io_in_5_valid),
    .io_in_5_bits_req_info_vpn(mem_arb_io_in_5_bits_req_info_vpn),
    .io_in_5_bits_ppn(mem_arb_io_in_5_bits_ppn),
    .io_out_ready(mem_arb_io_out_ready),
    .io_out_valid(mem_arb_io_out_valid),
    .io_out_bits_req_info_vpn(mem_arb_io_out_bits_req_info_vpn),
    .io_out_bits_ppn(mem_arb_io_out_bits_ppn),
    .io_chosen(mem_arb_io_chosen)
  );
  assign io_in_ready = ~full; // @[PageTableWalker.scala 358:18]
  assign io_out_valid = _mem_ptr_T_2 | _mem_ptr_T_6; // @[ParallelMux.scala 37:55]
  assign io_out_bits_req_info_vpn = 3'h5 == mem_ptr ? entries_5_req_info_vpn : _GEN_226; // @[PageTableWalker.scala 361:{24,24}]
  assign io_out_bits_req_info_source = 3'h5 == mem_ptr ? entries_5_req_info_source : _GEN_220; // @[PageTableWalker.scala 361:{24,24}]
  assign io_out_bits_id = is_having_0 | (is_having_1 | is_having_2) ? {{1'd0}, _mem_ptr_T_3} : _mem_ptr_T_7; // @[ParallelMux.scala 90:77]
  assign io_out_bits_af = 3'h5 == mem_ptr ? entries_5_af : _GEN_232; // @[PageTableWalker.scala 363:{18,18}]
  assign io_mem_req_valid = mem_arb_io_out_valid & ~flush; // @[PageTableWalker.scala 365:44]
  assign io_mem_req_bits_addr = {io_mem_req_bits_addr_hi,3'h0}; // @[Cat.scala 31:58]
  assign io_mem_req_bits_id = mem_arb_io_chosen; // @[PageTableWalker.scala 367:22]
  assign io_mem_enq_ptr = _full_T_1 ? {{1'd0}, _enq_ptr_T_3} : _enq_ptr_T_7; // @[ParallelMux.scala 90:77]
  assign io_mem_buffer_it_0 = mem_resp_hit_0; // @[PageTableWalker.scala 370:20]
  assign io_mem_buffer_it_1 = mem_resp_hit_1; // @[PageTableWalker.scala 370:20]
  assign io_mem_buffer_it_2 = mem_resp_hit_2; // @[PageTableWalker.scala 370:20]
  assign io_mem_buffer_it_3 = mem_resp_hit_3; // @[PageTableWalker.scala 370:20]
  assign io_mem_buffer_it_4 = mem_resp_hit_4; // @[PageTableWalker.scala 370:20]
  assign io_mem_buffer_it_5 = mem_resp_hit_5; // @[PageTableWalker.scala 370:20]
  assign io_mem_refill_vpn = 3'h5 == io_mem_refill_REG ? entries_5_req_info_vpn : _GEN_244; // @[PageTableWalker.scala 369:{17,17}]
  assign io_mem_refill_source = 3'h5 == io_mem_refill_REG ? entries_5_req_info_source : _GEN_238; // @[PageTableWalker.scala 369:{17,17}]
  assign io_pmp_req_valid = io_pmp_req_valid_REG; // @[PageTableWalker.scala 339:20]
  assign io_pmp_req_bits_addr = {io_pmp_req_bits_addr_hi,3'h0}; // @[Cat.scala 31:58]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{3'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign mem_arb_clock = clock;
  assign mem_arb_io_in_0_valid = is_mems_0 & ~io_mem_req_mask_0; // @[PageTableWalker.scala 278:42]
  assign mem_arb_io_in_0_bits_req_info_vpn = entries_0_req_info_vpn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_in_0_bits_ppn = entries_0_ppn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_in_1_valid = is_mems_1 & ~io_mem_req_mask_1; // @[PageTableWalker.scala 278:42]
  assign mem_arb_io_in_1_bits_req_info_vpn = entries_1_req_info_vpn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_in_1_bits_ppn = entries_1_ppn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_in_2_valid = is_mems_2 & ~io_mem_req_mask_2; // @[PageTableWalker.scala 278:42]
  assign mem_arb_io_in_2_bits_req_info_vpn = entries_2_req_info_vpn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_in_2_bits_ppn = entries_2_ppn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_in_3_valid = is_mems_3 & ~io_mem_req_mask_3; // @[PageTableWalker.scala 278:42]
  assign mem_arb_io_in_3_bits_req_info_vpn = entries_3_req_info_vpn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_in_3_bits_ppn = entries_3_ppn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_in_4_valid = is_mems_4 & ~io_mem_req_mask_4; // @[PageTableWalker.scala 278:42]
  assign mem_arb_io_in_4_bits_req_info_vpn = entries_4_req_info_vpn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_in_4_bits_ppn = entries_4_ppn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_in_5_valid = is_mems_5 & ~io_mem_req_mask_5; // @[PageTableWalker.scala 278:42]
  assign mem_arb_io_in_5_bits_req_info_vpn = entries_5_req_info_vpn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_in_5_bits_ppn = entries_5_ppn; // @[PageTableWalker.scala 277:27]
  assign mem_arb_io_out_ready = io_mem_req_ready; // @[PageTableWalker.scala 368:24]
  always @(posedge clock) begin
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h0 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_0_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h0 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_0_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h0 == enq_ptr) begin // @[PageTableWalker.scala 309:26]
        entries_0_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 309:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 314:32]
      if (state_0 != 3'h0 & _T_12) begin // @[PageTableWalker.scala 316:104]
        entries_0_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 319:28]
      end else begin
        entries_0_wait_id <= _GEN_72;
      end
    end else begin
      entries_0_wait_id <= _GEN_72;
    end
    if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h0 == enq_ptr_reg) begin // @[PageTableWalker.scala 349:29]
        entries_0_af <= accessFault; // @[PageTableWalker.scala 349:29]
      end else begin
        entries_0_af <= _GEN_78;
      end
    end else begin
      entries_0_af <= _GEN_78;
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h1 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_1_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h1 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_1_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h1 == enq_ptr) begin // @[PageTableWalker.scala 309:26]
        entries_1_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 309:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 314:32]
      if (state_1 != 3'h0 & _T_17) begin // @[PageTableWalker.scala 316:104]
        entries_1_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 319:28]
      end else begin
        entries_1_wait_id <= _GEN_73;
      end
    end else begin
      entries_1_wait_id <= _GEN_73;
    end
    if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h1 == enq_ptr_reg) begin // @[PageTableWalker.scala 349:29]
        entries_1_af <= accessFault; // @[PageTableWalker.scala 349:29]
      end else begin
        entries_1_af <= _GEN_79;
      end
    end else begin
      entries_1_af <= _GEN_79;
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h2 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_2_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h2 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_2_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h2 == enq_ptr) begin // @[PageTableWalker.scala 309:26]
        entries_2_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 309:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 314:32]
      if (state_2 != 3'h0 & _T_22) begin // @[PageTableWalker.scala 316:104]
        entries_2_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 319:28]
      end else begin
        entries_2_wait_id <= _GEN_74;
      end
    end else begin
      entries_2_wait_id <= _GEN_74;
    end
    if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h2 == enq_ptr_reg) begin // @[PageTableWalker.scala 349:29]
        entries_2_af <= accessFault; // @[PageTableWalker.scala 349:29]
      end else begin
        entries_2_af <= _GEN_80;
      end
    end else begin
      entries_2_af <= _GEN_80;
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h3 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_3_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h3 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_3_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h3 == enq_ptr) begin // @[PageTableWalker.scala 309:26]
        entries_3_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 309:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 314:32]
      if (state_3 != 3'h0 & _T_27) begin // @[PageTableWalker.scala 316:104]
        entries_3_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 319:28]
      end else begin
        entries_3_wait_id <= _GEN_75;
      end
    end else begin
      entries_3_wait_id <= _GEN_75;
    end
    if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h3 == enq_ptr_reg) begin // @[PageTableWalker.scala 349:29]
        entries_3_af <= accessFault; // @[PageTableWalker.scala 349:29]
      end else begin
        entries_3_af <= _GEN_81;
      end
    end else begin
      entries_3_af <= _GEN_81;
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h4 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_4_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h4 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_4_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h4 == enq_ptr) begin // @[PageTableWalker.scala 309:26]
        entries_4_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 309:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 314:32]
      if (state_4 != 3'h0 & _T_32) begin // @[PageTableWalker.scala 316:104]
        entries_4_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 319:28]
      end else begin
        entries_4_wait_id <= _GEN_76;
      end
    end else begin
      entries_4_wait_id <= _GEN_76;
    end
    if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h4 == enq_ptr_reg) begin // @[PageTableWalker.scala 349:29]
        entries_4_af <= accessFault; // @[PageTableWalker.scala 349:29]
      end else begin
        entries_4_af <= _GEN_82;
      end
    end else begin
      entries_4_af <= _GEN_82;
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h5 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_5_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h5 == enq_ptr) begin // @[PageTableWalker.scala 308:31]
        entries_5_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 308:31]
      end
    end
    if (_T_7) begin // @[PageTableWalker.scala 303:23]
      if (3'h5 == enq_ptr) begin // @[PageTableWalker.scala 309:26]
        entries_5_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 309:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 314:32]
      if (state_5 != 3'h0 & _T_37) begin // @[PageTableWalker.scala 316:104]
        entries_5_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 319:28]
      end else begin
        entries_5_wait_id <= _GEN_77;
      end
    end else begin
      entries_5_wait_id <= _GEN_77;
    end
    if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h5 == enq_ptr_reg) begin // @[PageTableWalker.scala 349:29]
        entries_5_af <= accessFault; // @[PageTableWalker.scala 349:29]
      end else begin
        entries_5_af <= _GEN_83;
      end
    end else begin
      entries_5_af <= _GEN_83;
    end
    if (reset) begin // @[PageTableWalker.scala 265:22]
      state_0 <= 3'h0; // @[PageTableWalker.scala 265:22]
    end else if (flush) begin // @[PageTableWalker.scala 354:16]
      state_0 <= 3'h0; // @[PageTableWalker.scala 355:17]
    end else if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h0 == enq_ptr_reg) begin // @[PageTableWalker.scala 350:24]
        state_0 <= _state_T_4; // @[PageTableWalker.scala 350:24]
      end else begin
        state_0 <= _GEN_150;
      end
    end else begin
      state_0 <= _GEN_150;
    end
    if (reset) begin // @[PageTableWalker.scala 265:22]
      state_1 <= 3'h0; // @[PageTableWalker.scala 265:22]
    end else if (flush) begin // @[PageTableWalker.scala 354:16]
      state_1 <= 3'h0; // @[PageTableWalker.scala 355:17]
    end else if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h1 == enq_ptr_reg) begin // @[PageTableWalker.scala 350:24]
        state_1 <= _state_T_4; // @[PageTableWalker.scala 350:24]
      end else begin
        state_1 <= _GEN_151;
      end
    end else begin
      state_1 <= _GEN_151;
    end
    if (reset) begin // @[PageTableWalker.scala 265:22]
      state_2 <= 3'h0; // @[PageTableWalker.scala 265:22]
    end else if (flush) begin // @[PageTableWalker.scala 354:16]
      state_2 <= 3'h0; // @[PageTableWalker.scala 355:17]
    end else if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h2 == enq_ptr_reg) begin // @[PageTableWalker.scala 350:24]
        state_2 <= _state_T_4; // @[PageTableWalker.scala 350:24]
      end else begin
        state_2 <= _GEN_152;
      end
    end else begin
      state_2 <= _GEN_152;
    end
    if (reset) begin // @[PageTableWalker.scala 265:22]
      state_3 <= 3'h0; // @[PageTableWalker.scala 265:22]
    end else if (flush) begin // @[PageTableWalker.scala 354:16]
      state_3 <= 3'h0; // @[PageTableWalker.scala 355:17]
    end else if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h3 == enq_ptr_reg) begin // @[PageTableWalker.scala 350:24]
        state_3 <= _state_T_4; // @[PageTableWalker.scala 350:24]
      end else begin
        state_3 <= _GEN_153;
      end
    end else begin
      state_3 <= _GEN_153;
    end
    if (reset) begin // @[PageTableWalker.scala 265:22]
      state_4 <= 3'h0; // @[PageTableWalker.scala 265:22]
    end else if (flush) begin // @[PageTableWalker.scala 354:16]
      state_4 <= 3'h0; // @[PageTableWalker.scala 355:17]
    end else if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h4 == enq_ptr_reg) begin // @[PageTableWalker.scala 350:24]
        state_4 <= _state_T_4; // @[PageTableWalker.scala 350:24]
      end else begin
        state_4 <= _GEN_154;
      end
    end else begin
      state_4 <= _GEN_154;
    end
    if (reset) begin // @[PageTableWalker.scala 265:22]
      state_5 <= 3'h0; // @[PageTableWalker.scala 265:22]
    end else if (flush) begin // @[PageTableWalker.scala 354:16]
      state_5 <= 3'h0; // @[PageTableWalker.scala 355:17]
    end else if (_T_74) begin // @[PageTableWalker.scala 345:105]
      if (3'h5 == enq_ptr_reg) begin // @[PageTableWalker.scala 350:24]
        state_5 <= _state_T_4; // @[PageTableWalker.scala 350:24]
      end else begin
        state_5 <= _GEN_155;
      end
    end else begin
      state_5 <= _GEN_155;
    end
    if (reset) begin // @[PageTableWalker.scala 300:29]
      mem_resp_hit_0 <= 1'h0; // @[PageTableWalker.scala 300:29]
    end else if (mem_resp_hit_0) begin // @[PageTableWalker.scala 335:34]
      mem_resp_hit_0 <= 1'h0; // @[PageTableWalker.scala 335:38]
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 323:29]
      mem_resp_hit_0 <= _GEN_115;
    end else if (_T_7) begin // @[PageTableWalker.scala 303:23]
      mem_resp_hit_0 <= _GEN_42;
    end
    if (reset) begin // @[PageTableWalker.scala 300:29]
      mem_resp_hit_1 <= 1'h0; // @[PageTableWalker.scala 300:29]
    end else if (mem_resp_hit_1) begin // @[PageTableWalker.scala 335:34]
      mem_resp_hit_1 <= 1'h0; // @[PageTableWalker.scala 335:38]
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 323:29]
      mem_resp_hit_1 <= _GEN_117;
    end else if (_T_7) begin // @[PageTableWalker.scala 303:23]
      mem_resp_hit_1 <= _GEN_43;
    end
    if (reset) begin // @[PageTableWalker.scala 300:29]
      mem_resp_hit_2 <= 1'h0; // @[PageTableWalker.scala 300:29]
    end else if (mem_resp_hit_2) begin // @[PageTableWalker.scala 335:34]
      mem_resp_hit_2 <= 1'h0; // @[PageTableWalker.scala 335:38]
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 323:29]
      mem_resp_hit_2 <= _GEN_119;
    end else if (_T_7) begin // @[PageTableWalker.scala 303:23]
      mem_resp_hit_2 <= _GEN_44;
    end
    if (reset) begin // @[PageTableWalker.scala 300:29]
      mem_resp_hit_3 <= 1'h0; // @[PageTableWalker.scala 300:29]
    end else if (mem_resp_hit_3) begin // @[PageTableWalker.scala 335:34]
      mem_resp_hit_3 <= 1'h0; // @[PageTableWalker.scala 335:38]
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 323:29]
      mem_resp_hit_3 <= _GEN_121;
    end else if (_T_7) begin // @[PageTableWalker.scala 303:23]
      mem_resp_hit_3 <= _GEN_45;
    end
    if (reset) begin // @[PageTableWalker.scala 300:29]
      mem_resp_hit_4 <= 1'h0; // @[PageTableWalker.scala 300:29]
    end else if (mem_resp_hit_4) begin // @[PageTableWalker.scala 335:34]
      mem_resp_hit_4 <= 1'h0; // @[PageTableWalker.scala 335:38]
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 323:29]
      mem_resp_hit_4 <= _GEN_123;
    end else if (_T_7) begin // @[PageTableWalker.scala 303:23]
      mem_resp_hit_4 <= _GEN_46;
    end
    if (reset) begin // @[PageTableWalker.scala 300:29]
      mem_resp_hit_5 <= 1'h0; // @[PageTableWalker.scala 300:29]
    end else if (mem_resp_hit_5) begin // @[PageTableWalker.scala 335:34]
      mem_resp_hit_5 <= 1'h0; // @[PageTableWalker.scala 335:38]
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 323:29]
      mem_resp_hit_5 <= _GEN_125;
    end else if (_T_7) begin // @[PageTableWalker.scala 303:23]
      mem_resp_hit_5 <= _GEN_47;
    end
    if (_full_T_1) begin // @[ParallelMux.scala 90:77]
      enq_ptr_reg <= {{1'd0}, _enq_ptr_T_3};
    end else if (is_emptys_3) begin // @[ParallelMux.scala 90:77]
      enq_ptr_reg <= 3'h3;
    end else if (is_emptys_4) begin // @[ParallelMux.scala 90:77]
      enq_ptr_reg <= 3'h4;
    end else begin
      enq_ptr_reg <= 3'h5;
    end
    io_pmp_req_valid_REG <= enq_state == 3'h1; // @[PageTableWalker.scala 339:41]
    io_mem_refill_REG <= io_mem_resp_bits_id; // @[PageTableWalker.scala 369:55]
    io_perf_0_value_REG <= io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= io_in_valid & _T_80; // @[PageTableWalker.scala 393:49]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= io_mem_req_ready & io_mem_req_valid; // @[Decoupled.scala 50:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= _T_133[1:0] + _T_137[1:0]; // @[Bitwise.scala 48:55]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  entries_0_req_info_vpn = _RAND_0[26:0];
  _RAND_1 = {1{`RANDOM}};
  entries_0_req_info_source = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  entries_0_ppn = _RAND_2[23:0];
  _RAND_3 = {1{`RANDOM}};
  entries_0_wait_id = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  entries_0_af = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  entries_1_req_info_vpn = _RAND_5[26:0];
  _RAND_6 = {1{`RANDOM}};
  entries_1_req_info_source = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  entries_1_ppn = _RAND_7[23:0];
  _RAND_8 = {1{`RANDOM}};
  entries_1_wait_id = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  entries_1_af = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  entries_2_req_info_vpn = _RAND_10[26:0];
  _RAND_11 = {1{`RANDOM}};
  entries_2_req_info_source = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  entries_2_ppn = _RAND_12[23:0];
  _RAND_13 = {1{`RANDOM}};
  entries_2_wait_id = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  entries_2_af = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  entries_3_req_info_vpn = _RAND_15[26:0];
  _RAND_16 = {1{`RANDOM}};
  entries_3_req_info_source = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  entries_3_ppn = _RAND_17[23:0];
  _RAND_18 = {1{`RANDOM}};
  entries_3_wait_id = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  entries_3_af = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  entries_4_req_info_vpn = _RAND_20[26:0];
  _RAND_21 = {1{`RANDOM}};
  entries_4_req_info_source = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  entries_4_ppn = _RAND_22[23:0];
  _RAND_23 = {1{`RANDOM}};
  entries_4_wait_id = _RAND_23[2:0];
  _RAND_24 = {1{`RANDOM}};
  entries_4_af = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  entries_5_req_info_vpn = _RAND_25[26:0];
  _RAND_26 = {1{`RANDOM}};
  entries_5_req_info_source = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  entries_5_ppn = _RAND_27[23:0];
  _RAND_28 = {1{`RANDOM}};
  entries_5_wait_id = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  entries_5_af = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  state_0 = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  state_1 = _RAND_31[2:0];
  _RAND_32 = {1{`RANDOM}};
  state_2 = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  state_3 = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  state_4 = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  state_5 = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  mem_resp_hit_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  mem_resp_hit_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  mem_resp_hit_2 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  mem_resp_hit_3 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  mem_resp_hit_4 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  mem_resp_hit_5 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  enq_ptr_reg = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  io_pmp_req_valid_REG = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  io_mem_refill_REG = _RAND_44[2:0];
  _RAND_45 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_51[2:0];
  _RAND_52 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_52[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
