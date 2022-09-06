module FallThruPred(
  input         clock,
  input         reset,
  input         io_ren,
  input  [10:0] io_ridx,
  output        io_rdata,
  input         io_wen,
  input  [10:0] io_widx,
  input         io_wdata
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  ram_clock; // @[uBTB.scala 91:21]
  wire  ram_reset; // @[uBTB.scala 91:21]
  wire  ram_io_rreq_valid; // @[uBTB.scala 91:21]
  wire [7:0] ram_io_rreq_bits_setIdx; // @[uBTB.scala 91:21]
  wire  ram_io_rresp_data_0; // @[uBTB.scala 91:21]
  wire  ram_io_rresp_data_1; // @[uBTB.scala 91:21]
  wire  ram_io_rresp_data_2; // @[uBTB.scala 91:21]
  wire  ram_io_rresp_data_3; // @[uBTB.scala 91:21]
  wire  ram_io_rresp_data_4; // @[uBTB.scala 91:21]
  wire  ram_io_rresp_data_5; // @[uBTB.scala 91:21]
  wire  ram_io_rresp_data_6; // @[uBTB.scala 91:21]
  wire  ram_io_rresp_data_7; // @[uBTB.scala 91:21]
  wire  ram_io_wreq_valid; // @[uBTB.scala 91:21]
  wire [7:0] ram_io_wreq_bits_setIdx; // @[uBTB.scala 91:21]
  wire  ram_io_wreq_bits_data_0; // @[uBTB.scala 91:21]
  wire  ram_io_wreq_bits_data_1; // @[uBTB.scala 91:21]
  wire  ram_io_wreq_bits_data_2; // @[uBTB.scala 91:21]
  wire  ram_io_wreq_bits_data_3; // @[uBTB.scala 91:21]
  wire  ram_io_wreq_bits_data_4; // @[uBTB.scala 91:21]
  wire  ram_io_wreq_bits_data_5; // @[uBTB.scala 91:21]
  wire  ram_io_wreq_bits_data_6; // @[uBTB.scala 91:21]
  wire  ram_io_wreq_bits_data_7; // @[uBTB.scala 91:21]
  wire [7:0] ram_io_wreq_bits_waymask; // @[uBTB.scala 91:21]
  reg  doing_reset; // @[uBTB.scala 78:30]
  reg [7:0] reset_idx; // @[uBTB.scala 79:28]
  wire [7:0] _GEN_10 = {{7'd0}, doing_reset}; // @[uBTB.scala 81:28]
  wire [7:0] _reset_idx_T_1 = reset_idx + _GEN_10; // @[uBTB.scala 81:28]
  wire  _GEN_0 = reset_idx == 8'hff ? 1'h0 : doing_reset; // @[uBTB.scala 78:30 82:{38,52}]
  reg [10:0] decay_timer; // @[uBTB.scala 84:30]
  wire [10:0] _decay_timer_T_1 = decay_timer + 11'h1; // @[uBTB.scala 85:32]
  reg  doing_decay; // @[uBTB.scala 86:30]
  reg [7:0] decay_idx; // @[uBTB.scala 88:28]
  wire [7:0] _GEN_11 = {{7'd0}, doing_decay}; // @[uBTB.scala 89:28]
  wire [7:0] _decay_idx_T_1 = decay_idx + _GEN_11; // @[uBTB.scala 89:28]
  reg [10:0] ridx_reg; // @[Reg.scala 16:16]
  wire [2:0] r_way = ridx_reg[2:0]; // @[uBTB.scala 97:25]
  wire  _GEN_3 = 3'h1 == r_way ? ram_io_rresp_data_1 : ram_io_rresp_data_0; // @[uBTB.scala 98:{14,14}]
  wire  _GEN_4 = 3'h2 == r_way ? ram_io_rresp_data_2 : _GEN_3; // @[uBTB.scala 98:{14,14}]
  wire  _GEN_5 = 3'h3 == r_way ? ram_io_rresp_data_3 : _GEN_4; // @[uBTB.scala 98:{14,14}]
  wire  _GEN_6 = 3'h4 == r_way ? ram_io_rresp_data_4 : _GEN_5; // @[uBTB.scala 98:{14,14}]
  wire  _GEN_7 = 3'h5 == r_way ? ram_io_rresp_data_5 : _GEN_6; // @[uBTB.scala 98:{14,14}]
  wire  _GEN_8 = 3'h6 == r_way ? ram_io_rresp_data_6 : _GEN_7; // @[uBTB.scala 98:{14,14}]
  wire  _wdata_T_1 = ~doing_reset & doing_decay; // @[uBTB.scala 102:21]
  wire  _wdata_T_2 = doing_reset | doing_decay; // @[uBTB.scala 103:22]
  wire  _wdata_T_4 = ~(doing_reset | doing_decay) & io_wen; // @[uBTB.scala 103:38]
  wire [7:0] _widx_T_6 = doing_reset ? reset_idx : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _widx_T_7 = _wdata_T_1 ? decay_idx : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _widx_T_8 = _wdata_T_4 ? io_widx[10:3] : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _widx_T_9 = _widx_T_6 | _widx_T_7; // @[Mux.scala 27:73]
  wire [7:0] _waymask_T_1 = 8'h1 << io_widx[2:0]; // @[OneHot.scala 57:35]
  wire [7:0] _waymask_T_4 = _wdata_T_2 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  SRAMTemplate_8 ram ( // @[uBTB.scala 91:21]
    .clock(ram_clock),
    .reset(ram_reset),
    .io_rreq_valid(ram_io_rreq_valid),
    .io_rreq_bits_setIdx(ram_io_rreq_bits_setIdx),
    .io_rresp_data_0(ram_io_rresp_data_0),
    .io_rresp_data_1(ram_io_rresp_data_1),
    .io_rresp_data_2(ram_io_rresp_data_2),
    .io_rresp_data_3(ram_io_rresp_data_3),
    .io_rresp_data_4(ram_io_rresp_data_4),
    .io_rresp_data_5(ram_io_rresp_data_5),
    .io_rresp_data_6(ram_io_rresp_data_6),
    .io_rresp_data_7(ram_io_rresp_data_7),
    .io_wreq_valid(ram_io_wreq_valid),
    .io_wreq_bits_setIdx(ram_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ram_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ram_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ram_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ram_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(ram_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(ram_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(ram_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(ram_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(ram_io_wreq_bits_waymask)
  );
  assign io_rdata = 3'h7 == r_way ? ram_io_rresp_data_7 : _GEN_8; // @[uBTB.scala 98:{14,14}]
  assign ram_clock = clock;
  assign ram_reset = reset;
  assign ram_io_rreq_valid = io_ren; // @[uBTB.scala 92:24]
  assign ram_io_rreq_bits_setIdx = io_ridx[10:3]; // @[uBTB.scala 93:41]
  assign ram_io_wreq_valid = io_wen | doing_decay | doing_reset; // @[uBTB.scala 111:41]
  assign ram_io_wreq_bits_setIdx = _widx_T_9 | _widx_T_8; // @[Mux.scala 27:73]
  assign ram_io_wreq_bits_data_0 = _wdata_T_4 & io_wdata; // @[Mux.scala 27:73]
  assign ram_io_wreq_bits_data_1 = _wdata_T_4 & io_wdata; // @[Mux.scala 27:73]
  assign ram_io_wreq_bits_data_2 = _wdata_T_4 & io_wdata; // @[Mux.scala 27:73]
  assign ram_io_wreq_bits_data_3 = _wdata_T_4 & io_wdata; // @[Mux.scala 27:73]
  assign ram_io_wreq_bits_data_4 = _wdata_T_4 & io_wdata; // @[Mux.scala 27:73]
  assign ram_io_wreq_bits_data_5 = _wdata_T_4 & io_wdata; // @[Mux.scala 27:73]
  assign ram_io_wreq_bits_data_6 = _wdata_T_4 & io_wdata; // @[Mux.scala 27:73]
  assign ram_io_wreq_bits_data_7 = _wdata_T_4 & io_wdata; // @[Mux.scala 27:73]
  assign ram_io_wreq_bits_waymask = _waymask_T_1 | _waymask_T_4; // @[uBTB.scala 110:69]
  always @(posedge clock) begin
    doing_reset <= reset | _GEN_0; // @[uBTB.scala 78:{30,30}]
    if (reset) begin // @[uBTB.scala 79:28]
      reset_idx <= 8'h0; // @[uBTB.scala 79:28]
    end else begin
      reset_idx <= _reset_idx_T_1; // @[uBTB.scala 81:15]
    end
    if (reset) begin // @[uBTB.scala 84:30]
      decay_timer <= 11'h0; // @[uBTB.scala 84:30]
    end else begin
      decay_timer <= _decay_timer_T_1; // @[uBTB.scala 85:17]
    end
    doing_decay <= &decay_timer; // @[uBTB.scala 86:47]
    if (reset) begin // @[uBTB.scala 88:28]
      decay_idx <= 8'h0; // @[uBTB.scala 88:28]
    end else begin
      decay_idx <= _decay_idx_T_1; // @[uBTB.scala 89:15]
    end
    if (io_ren) begin // @[Reg.scala 17:18]
      ridx_reg <= io_ridx; // @[Reg.scala 17:22]
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
  doing_reset = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  reset_idx = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  decay_timer = _RAND_2[10:0];
  _RAND_3 = {1{`RANDOM}};
  doing_decay = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  decay_idx = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  ridx_reg = _RAND_5[10:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
