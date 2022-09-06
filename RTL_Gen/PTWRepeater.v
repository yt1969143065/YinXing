module PTWRepeater(
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
  input         io_tlb_req_4_valid,
  input  [26:0] io_tlb_req_4_bits_vpn,
  input         io_tlb_req_5_valid,
  input  [26:0] io_tlb_req_5_bits_vpn,
  output        io_tlb_resp_valid,
  output [26:0] io_tlb_resp_bits_entry_tag,
  output [23:0] io_tlb_resp_bits_entry_ppn,
  output        io_tlb_resp_bits_entry_perm_d,
  output        io_tlb_resp_bits_entry_perm_a,
  output        io_tlb_resp_bits_entry_perm_g,
  output        io_tlb_resp_bits_entry_perm_u,
  output        io_tlb_resp_bits_entry_perm_x,
  output        io_tlb_resp_bits_entry_perm_w,
  output        io_tlb_resp_bits_entry_perm_r,
  output [1:0]  io_tlb_resp_bits_entry_level,
  output        io_tlb_resp_bits_pf,
  output        io_tlb_resp_bits_af,
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
`endif // RANDOMIZE_REG_INIT
  wire  req_in_arb_clock; // @[Repeater.scala 54:21]
  wire  req_in_arb_io_in_0_valid; // @[Repeater.scala 54:21]
  wire [26:0] req_in_arb_io_in_0_bits_vpn; // @[Repeater.scala 54:21]
  wire  req_in_arb_io_in_1_valid; // @[Repeater.scala 54:21]
  wire [26:0] req_in_arb_io_in_1_bits_vpn; // @[Repeater.scala 54:21]
  wire  req_in_arb_io_in_2_valid; // @[Repeater.scala 54:21]
  wire [26:0] req_in_arb_io_in_2_bits_vpn; // @[Repeater.scala 54:21]
  wire  req_in_arb_io_in_3_valid; // @[Repeater.scala 54:21]
  wire [26:0] req_in_arb_io_in_3_bits_vpn; // @[Repeater.scala 54:21]
  wire  req_in_arb_io_in_4_valid; // @[Repeater.scala 54:21]
  wire [26:0] req_in_arb_io_in_4_bits_vpn; // @[Repeater.scala 54:21]
  wire  req_in_arb_io_in_5_valid; // @[Repeater.scala 54:21]
  wire [26:0] req_in_arb_io_in_5_bits_vpn; // @[Repeater.scala 54:21]
  wire  req_in_arb_io_out_ready; // @[Repeater.scala 54:21]
  wire  req_in_arb_io_out_valid; // @[Repeater.scala 54:21]
  wire [26:0] req_in_arb_io_out_bits_vpn; // @[Repeater.scala 54:21]
  wire [2:0] req_in_arb_io_chosen; // @[Repeater.scala 54:21]
  wire  delay_clock; // @[Hold.scala 94:23]
  wire  delay_io_in; // @[Hold.scala 94:23]
  wire  delay_io_out; // @[Hold.scala 94:23]
  wire  _req_T = req_in_arb_io_out_ready & req_in_arb_io_out_valid; // @[Decoupled.scala 50:35]
  reg [26:0] req_vpn; // @[Reg.scala 16:16]
  wire  _resp_T = io_ptw_resp_ready & io_ptw_resp_valid; // @[Decoupled.scala 50:35]
  reg [26:0] resp_entry_tag; // @[Reg.scala 16:16]
  reg [23:0] resp_entry_ppn; // @[Reg.scala 16:16]
  reg  resp_entry_perm_d; // @[Reg.scala 16:16]
  reg  resp_entry_perm_a; // @[Reg.scala 16:16]
  reg  resp_entry_perm_g; // @[Reg.scala 16:16]
  reg  resp_entry_perm_u; // @[Reg.scala 16:16]
  reg  resp_entry_perm_x; // @[Reg.scala 16:16]
  reg  resp_entry_perm_w; // @[Reg.scala 16:16]
  reg  resp_entry_perm_r; // @[Reg.scala 16:16]
  reg [1:0] resp_entry_level; // @[Reg.scala 16:16]
  reg  resp_pf; // @[Reg.scala 16:16]
  reg  resp_af; // @[Reg.scala 16:16]
  wire  _haveOne_T_2 = io_tlb_resp_valid | delay_io_out; // @[Repeater.scala 61:62]
  reg  haveOne; // @[StopWatch.scala 24:20]
  wire  _GEN_16 = _req_T | haveOne; // @[StopWatch.scala 24:20 30:{20,24}]
  wire  _sent_T = io_ptw_req_0_ready & io_ptw_req_0_valid; // @[Decoupled.scala 50:35]
  wire  _sent_T_2 = _req_T | delay_io_out; // @[Repeater.scala 62:61]
  reg  sent; // @[StopWatch.scala 24:20]
  wire  _GEN_18 = _sent_T | sent; // @[StopWatch.scala 24:20 30:{20,24}]
  reg  recv; // @[StopWatch.scala 24:20]
  wire  _GEN_20 = _resp_T | recv; // @[StopWatch.scala 24:20 30:{20,24}]
  RRArbiter_2 req_in_arb ( // @[Repeater.scala 54:21]
    .clock(req_in_arb_clock),
    .io_in_0_valid(req_in_arb_io_in_0_valid),
    .io_in_0_bits_vpn(req_in_arb_io_in_0_bits_vpn),
    .io_in_1_valid(req_in_arb_io_in_1_valid),
    .io_in_1_bits_vpn(req_in_arb_io_in_1_bits_vpn),
    .io_in_2_valid(req_in_arb_io_in_2_valid),
    .io_in_2_bits_vpn(req_in_arb_io_in_2_bits_vpn),
    .io_in_3_valid(req_in_arb_io_in_3_valid),
    .io_in_3_bits_vpn(req_in_arb_io_in_3_bits_vpn),
    .io_in_4_valid(req_in_arb_io_in_4_valid),
    .io_in_4_bits_vpn(req_in_arb_io_in_4_bits_vpn),
    .io_in_5_valid(req_in_arb_io_in_5_valid),
    .io_in_5_bits_vpn(req_in_arb_io_in_5_bits_vpn),
    .io_out_ready(req_in_arb_io_out_ready),
    .io_out_valid(req_in_arb_io_out_valid),
    .io_out_bits_vpn(req_in_arb_io_out_bits_vpn),
    .io_chosen(req_in_arb_io_chosen)
  );
  DelayN_31 delay ( // @[Hold.scala 94:23]
    .clock(delay_clock),
    .io_in(delay_io_in),
    .io_out(delay_io_out)
  );
  assign io_tlb_resp_valid = haveOne & recv; // @[Repeater.scala 70:29]
  assign io_tlb_resp_bits_entry_tag = resp_entry_tag; // @[Repeater.scala 69:17]
  assign io_tlb_resp_bits_entry_ppn = resp_entry_ppn; // @[Repeater.scala 69:17]
  assign io_tlb_resp_bits_entry_perm_d = resp_entry_perm_d; // @[Repeater.scala 69:17]
  assign io_tlb_resp_bits_entry_perm_a = resp_entry_perm_a; // @[Repeater.scala 69:17]
  assign io_tlb_resp_bits_entry_perm_g = resp_entry_perm_g; // @[Repeater.scala 69:17]
  assign io_tlb_resp_bits_entry_perm_u = resp_entry_perm_u; // @[Repeater.scala 69:17]
  assign io_tlb_resp_bits_entry_perm_x = resp_entry_perm_x; // @[Repeater.scala 69:17]
  assign io_tlb_resp_bits_entry_perm_w = resp_entry_perm_w; // @[Repeater.scala 69:17]
  assign io_tlb_resp_bits_entry_perm_r = resp_entry_perm_r; // @[Repeater.scala 69:17]
  assign io_tlb_resp_bits_entry_level = resp_entry_level; // @[Repeater.scala 69:17]
  assign io_tlb_resp_bits_pf = resp_pf; // @[Repeater.scala 69:17]
  assign io_tlb_resp_bits_af = resp_af; // @[Repeater.scala 69:17]
  assign io_ptw_req_0_valid = haveOne & ~sent; // @[Repeater.scala 66:31]
  assign io_ptw_req_0_bits_vpn = req_vpn; // @[Repeater.scala 67:19]
  assign io_ptw_resp_ready = ~recv; // @[Repeater.scala 71:21]
  assign req_in_arb_clock = clock;
  assign req_in_arb_io_in_0_valid = io_tlb_req_0_valid; // @[Repeater.scala 55:15]
  assign req_in_arb_io_in_0_bits_vpn = io_tlb_req_0_bits_vpn; // @[Repeater.scala 55:15]
  assign req_in_arb_io_in_1_valid = io_tlb_req_1_valid; // @[Repeater.scala 55:15]
  assign req_in_arb_io_in_1_bits_vpn = io_tlb_req_1_bits_vpn; // @[Repeater.scala 55:15]
  assign req_in_arb_io_in_2_valid = io_tlb_req_2_valid; // @[Repeater.scala 55:15]
  assign req_in_arb_io_in_2_bits_vpn = io_tlb_req_2_bits_vpn; // @[Repeater.scala 55:15]
  assign req_in_arb_io_in_3_valid = io_tlb_req_3_valid; // @[Repeater.scala 55:15]
  assign req_in_arb_io_in_3_bits_vpn = io_tlb_req_3_bits_vpn; // @[Repeater.scala 55:15]
  assign req_in_arb_io_in_4_valid = io_tlb_req_4_valid; // @[Repeater.scala 55:15]
  assign req_in_arb_io_in_4_bits_vpn = io_tlb_req_4_bits_vpn; // @[Repeater.scala 55:15]
  assign req_in_arb_io_in_5_valid = io_tlb_req_5_valid; // @[Repeater.scala 55:15]
  assign req_in_arb_io_in_5_bits_vpn = io_tlb_req_5_bits_vpn; // @[Repeater.scala 55:15]
  assign req_in_arb_io_out_ready = ~haveOne; // @[Repeater.scala 65:19]
  assign delay_clock = clock;
  assign delay_io_in = io_sfence_valid | io_csr_satp_changed; // @[Repeater.scala 58:67]
  always @(posedge clock) begin
    if (_req_T) begin // @[Reg.scala 17:18]
      req_vpn <= req_in_arb_io_out_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_tag <= io_ptw_resp_bits_entry_tag; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_ppn <= io_ptw_resp_bits_entry_ppn; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_d <= io_ptw_resp_bits_entry_perm_d; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_a <= io_ptw_resp_bits_entry_perm_a; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_g <= io_ptw_resp_bits_entry_perm_g; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_u <= io_ptw_resp_bits_entry_perm_u; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_x <= io_ptw_resp_bits_entry_perm_x; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_w <= io_ptw_resp_bits_entry_perm_w; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_r <= io_ptw_resp_bits_entry_perm_r; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_level <= io_ptw_resp_bits_entry_level; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_pf <= io_ptw_resp_bits_pf; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_af <= io_ptw_resp_bits_af; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[StopWatch.scala 24:20]
      haveOne <= 1'h0; // @[StopWatch.scala 24:20]
    end else if (_haveOne_T_2) begin // @[StopWatch.scala 31:19]
      haveOne <= 1'h0; // @[StopWatch.scala 31:23]
    end else begin
      haveOne <= _GEN_16;
    end
    if (reset) begin // @[StopWatch.scala 24:20]
      sent <= 1'h0; // @[StopWatch.scala 24:20]
    end else if (_sent_T_2) begin // @[StopWatch.scala 31:19]
      sent <= 1'h0; // @[StopWatch.scala 31:23]
    end else begin
      sent <= _GEN_18;
    end
    if (reset) begin // @[StopWatch.scala 24:20]
      recv <= 1'h0; // @[StopWatch.scala 24:20]
    end else if (_sent_T_2) begin // @[StopWatch.scala 31:19]
      recv <= 1'h0; // @[StopWatch.scala 31:23]
    end else begin
      recv <= _GEN_20;
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
  req_vpn = _RAND_0[26:0];
  _RAND_1 = {1{`RANDOM}};
  resp_entry_tag = _RAND_1[26:0];
  _RAND_2 = {1{`RANDOM}};
  resp_entry_ppn = _RAND_2[23:0];
  _RAND_3 = {1{`RANDOM}};
  resp_entry_perm_d = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  resp_entry_perm_a = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  resp_entry_perm_g = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  resp_entry_perm_u = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  resp_entry_perm_x = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  resp_entry_perm_w = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  resp_entry_perm_r = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  resp_entry_level = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  resp_pf = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  resp_af = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  haveOne = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  sent = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  recv = _RAND_15[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
