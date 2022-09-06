module DataSRAMBank(
  input         clock,
  input         io_wen,
  input  [63:0] io_waddr,
  input  [3:0]  io_wway_en,
  input  [63:0] io_wdata,
  input         io_ren,
  input  [63:0] io_raddr,
  input  [3:0]  io_rway_en,
  output [63:0] io_rdata
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SRAMTemplate_clock; // @[BankedDataArray.scala 163:13]
  wire  SRAMTemplate_io_rreq_valid; // @[BankedDataArray.scala 163:13]
  wire [7:0] SRAMTemplate_io_rreq_bits_setIdx; // @[BankedDataArray.scala 163:13]
  wire [63:0] SRAMTemplate_io_rresp_data_0; // @[BankedDataArray.scala 163:13]
  wire  SRAMTemplate_io_wreq_valid; // @[BankedDataArray.scala 163:13]
  wire [7:0] SRAMTemplate_io_wreq_bits_setIdx; // @[BankedDataArray.scala 163:13]
  wire [63:0] SRAMTemplate_io_wreq_bits_data_0; // @[BankedDataArray.scala 163:13]
  wire  SRAMTemplate_1_clock; // @[BankedDataArray.scala 163:13]
  wire  SRAMTemplate_1_io_rreq_valid; // @[BankedDataArray.scala 163:13]
  wire [7:0] SRAMTemplate_1_io_rreq_bits_setIdx; // @[BankedDataArray.scala 163:13]
  wire [63:0] SRAMTemplate_1_io_rresp_data_0; // @[BankedDataArray.scala 163:13]
  wire  SRAMTemplate_1_io_wreq_valid; // @[BankedDataArray.scala 163:13]
  wire [7:0] SRAMTemplate_1_io_wreq_bits_setIdx; // @[BankedDataArray.scala 163:13]
  wire [63:0] SRAMTemplate_1_io_wreq_bits_data_0; // @[BankedDataArray.scala 163:13]
  wire  SRAMTemplate_2_clock; // @[BankedDataArray.scala 163:13]
  wire  SRAMTemplate_2_io_rreq_valid; // @[BankedDataArray.scala 163:13]
  wire [7:0] SRAMTemplate_2_io_rreq_bits_setIdx; // @[BankedDataArray.scala 163:13]
  wire [63:0] SRAMTemplate_2_io_rresp_data_0; // @[BankedDataArray.scala 163:13]
  wire  SRAMTemplate_2_io_wreq_valid; // @[BankedDataArray.scala 163:13]
  wire [7:0] SRAMTemplate_2_io_wreq_bits_setIdx; // @[BankedDataArray.scala 163:13]
  wire [63:0] SRAMTemplate_2_io_wreq_bits_data_0; // @[BankedDataArray.scala 163:13]
  wire  SRAMTemplate_3_clock; // @[BankedDataArray.scala 163:13]
  wire  SRAMTemplate_3_io_rreq_valid; // @[BankedDataArray.scala 163:13]
  wire [7:0] SRAMTemplate_3_io_rreq_bits_setIdx; // @[BankedDataArray.scala 163:13]
  wire [63:0] SRAMTemplate_3_io_rresp_data_0; // @[BankedDataArray.scala 163:13]
  wire  SRAMTemplate_3_io_wreq_valid; // @[BankedDataArray.scala 163:13]
  wire [7:0] SRAMTemplate_3_io_wreq_bits_setIdx; // @[BankedDataArray.scala 163:13]
  wire [63:0] SRAMTemplate_3_io_wreq_bits_data_0; // @[BankedDataArray.scala 163:13]
  reg [3:0] r_way_en_reg; // @[BankedDataArray.scala 159:31]
  wire [63:0] _data_left_T_3 = r_way_en_reg[0] ? SRAMTemplate_io_rresp_data_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_left_T_4 = r_way_en_reg[1] ? SRAMTemplate_1_io_rresp_data_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] data_left = _data_left_T_3 | _data_left_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_right_T_3 = r_way_en_reg[2] ? SRAMTemplate_2_io_rresp_data_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_right_T_4 = r_way_en_reg[3] ? SRAMTemplate_3_io_rresp_data_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] data_right = _data_right_T_3 | _data_right_T_4; // @[Mux.scala 27:73]
  wire  sel_low = |r_way_en_reg[1:0]; // @[BankedDataArray.scala 190:46]
  SRAMTemplate_120 SRAMTemplate ( // @[BankedDataArray.scala 163:13]
    .clock(SRAMTemplate_clock),
    .io_rreq_valid(SRAMTemplate_io_rreq_valid),
    .io_rreq_bits_setIdx(SRAMTemplate_io_rreq_bits_setIdx),
    .io_rresp_data_0(SRAMTemplate_io_rresp_data_0),
    .io_wreq_valid(SRAMTemplate_io_wreq_valid),
    .io_wreq_bits_setIdx(SRAMTemplate_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(SRAMTemplate_io_wreq_bits_data_0)
  );
  SRAMTemplate_120 SRAMTemplate_1 ( // @[BankedDataArray.scala 163:13]
    .clock(SRAMTemplate_1_clock),
    .io_rreq_valid(SRAMTemplate_1_io_rreq_valid),
    .io_rreq_bits_setIdx(SRAMTemplate_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(SRAMTemplate_1_io_rresp_data_0),
    .io_wreq_valid(SRAMTemplate_1_io_wreq_valid),
    .io_wreq_bits_setIdx(SRAMTemplate_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(SRAMTemplate_1_io_wreq_bits_data_0)
  );
  SRAMTemplate_120 SRAMTemplate_2 ( // @[BankedDataArray.scala 163:13]
    .clock(SRAMTemplate_2_clock),
    .io_rreq_valid(SRAMTemplate_2_io_rreq_valid),
    .io_rreq_bits_setIdx(SRAMTemplate_2_io_rreq_bits_setIdx),
    .io_rresp_data_0(SRAMTemplate_2_io_rresp_data_0),
    .io_wreq_valid(SRAMTemplate_2_io_wreq_valid),
    .io_wreq_bits_setIdx(SRAMTemplate_2_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(SRAMTemplate_2_io_wreq_bits_data_0)
  );
  SRAMTemplate_120 SRAMTemplate_3 ( // @[BankedDataArray.scala 163:13]
    .clock(SRAMTemplate_3_clock),
    .io_rreq_valid(SRAMTemplate_3_io_rreq_valid),
    .io_rreq_bits_setIdx(SRAMTemplate_3_io_rreq_bits_setIdx),
    .io_rresp_data_0(SRAMTemplate_3_io_rresp_data_0),
    .io_wreq_valid(SRAMTemplate_3_io_wreq_valid),
    .io_wreq_bits_setIdx(SRAMTemplate_3_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(SRAMTemplate_3_io_wreq_bits_data_0)
  );
  assign io_rdata = sel_low ? data_left : data_right; // @[BankedDataArray.scala 191:23]
  assign SRAMTemplate_clock = clock;
  assign SRAMTemplate_io_rreq_valid = io_ren; // @[BankedDataArray.scala 181:35]
  assign SRAMTemplate_io_rreq_bits_setIdx = io_raddr[7:0]; // @[SRAMTemplate.scala 43:17]
  assign SRAMTemplate_io_wreq_valid = io_wen & io_wway_en[0]; // @[BankedDataArray.scala 174:25]
  assign SRAMTemplate_io_wreq_bits_setIdx = io_waddr[7:0]; // @[SRAMTemplate.scala 43:17]
  assign SRAMTemplate_io_wreq_bits_data_0 = io_wdata; // @[SRAMTemplate.scala 60:{18,18}]
  assign SRAMTemplate_1_clock = clock;
  assign SRAMTemplate_1_io_rreq_valid = io_ren; // @[BankedDataArray.scala 181:35]
  assign SRAMTemplate_1_io_rreq_bits_setIdx = io_raddr[7:0]; // @[SRAMTemplate.scala 43:17]
  assign SRAMTemplate_1_io_wreq_valid = io_wen & io_wway_en[1]; // @[BankedDataArray.scala 174:25]
  assign SRAMTemplate_1_io_wreq_bits_setIdx = io_waddr[7:0]; // @[SRAMTemplate.scala 43:17]
  assign SRAMTemplate_1_io_wreq_bits_data_0 = io_wdata; // @[SRAMTemplate.scala 60:{18,18}]
  assign SRAMTemplate_2_clock = clock;
  assign SRAMTemplate_2_io_rreq_valid = io_ren; // @[BankedDataArray.scala 181:35]
  assign SRAMTemplate_2_io_rreq_bits_setIdx = io_raddr[7:0]; // @[SRAMTemplate.scala 43:17]
  assign SRAMTemplate_2_io_wreq_valid = io_wen & io_wway_en[2]; // @[BankedDataArray.scala 174:25]
  assign SRAMTemplate_2_io_wreq_bits_setIdx = io_waddr[7:0]; // @[SRAMTemplate.scala 43:17]
  assign SRAMTemplate_2_io_wreq_bits_data_0 = io_wdata; // @[SRAMTemplate.scala 60:{18,18}]
  assign SRAMTemplate_3_clock = clock;
  assign SRAMTemplate_3_io_rreq_valid = io_ren; // @[BankedDataArray.scala 181:35]
  assign SRAMTemplate_3_io_rreq_bits_setIdx = io_raddr[7:0]; // @[SRAMTemplate.scala 43:17]
  assign SRAMTemplate_3_io_wreq_valid = io_wen & io_wway_en[3]; // @[BankedDataArray.scala 174:25]
  assign SRAMTemplate_3_io_wreq_bits_setIdx = io_waddr[7:0]; // @[SRAMTemplate.scala 43:17]
  assign SRAMTemplate_3_io_wreq_bits_data_0 = io_wdata; // @[SRAMTemplate.scala 60:{18,18}]
  always @(posedge clock) begin
    r_way_en_reg <= io_rway_en; // @[BankedDataArray.scala 159:31]
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
  r_way_en_reg = _RAND_0[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
