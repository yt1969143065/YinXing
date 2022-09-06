module TagArray(
  input         clock,
  input         reset,
  output        io_read_ready,
  input         io_read_valid,
  input  [7:0]  io_read_bits_idx,
  output [23:0] io_resp_0,
  output [23:0] io_resp_1,
  output [23:0] io_resp_2,
  output [23:0] io_resp_3,
  input         io_write_valid,
  input  [7:0]  io_write_bits_idx,
  input  [3:0]  io_write_bits_way_en,
  input  [23:0] io_write_bits_tag,
  output        io_ecc_read_ready,
  input         io_ecc_read_valid,
  input  [7:0]  io_ecc_read_bits_idx,
  output [5:0]  io_ecc_resp_0,
  output [5:0]  io_ecc_resp_1,
  output [5:0]  io_ecc_resp_2,
  output [5:0]  io_ecc_resp_3,
  input         io_ecc_write_valid,
  input  [7:0]  io_ecc_write_bits_idx,
  input  [3:0]  io_ecc_write_bits_way_en,
  input  [5:0]  io_ecc_write_bits_ecc
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  tag_array_clock; // @[TagArray.scala 61:25]
  wire  tag_array_io_rreq_valid; // @[TagArray.scala 61:25]
  wire [7:0] tag_array_io_rreq_bits_setIdx; // @[TagArray.scala 61:25]
  wire [23:0] tag_array_io_rresp_data_0; // @[TagArray.scala 61:25]
  wire [23:0] tag_array_io_rresp_data_1; // @[TagArray.scala 61:25]
  wire [23:0] tag_array_io_rresp_data_2; // @[TagArray.scala 61:25]
  wire [23:0] tag_array_io_rresp_data_3; // @[TagArray.scala 61:25]
  wire  tag_array_io_wreq_valid; // @[TagArray.scala 61:25]
  wire [7:0] tag_array_io_wreq_bits_setIdx; // @[TagArray.scala 61:25]
  wire [23:0] tag_array_io_wreq_bits_data_0; // @[TagArray.scala 61:25]
  wire [23:0] tag_array_io_wreq_bits_data_1; // @[TagArray.scala 61:25]
  wire [23:0] tag_array_io_wreq_bits_data_2; // @[TagArray.scala 61:25]
  wire [23:0] tag_array_io_wreq_bits_data_3; // @[TagArray.scala 61:25]
  wire [3:0] tag_array_io_wreq_bits_waymask; // @[TagArray.scala 61:25]
  wire  ecc_array_clock; // @[TagArray.scala 64:25]
  wire  ecc_array_io_rreq_valid; // @[TagArray.scala 64:25]
  wire [7:0] ecc_array_io_rreq_bits_setIdx; // @[TagArray.scala 64:25]
  wire [5:0] ecc_array_io_rresp_data_0; // @[TagArray.scala 64:25]
  wire [5:0] ecc_array_io_rresp_data_1; // @[TagArray.scala 64:25]
  wire [5:0] ecc_array_io_rresp_data_2; // @[TagArray.scala 64:25]
  wire [5:0] ecc_array_io_rresp_data_3; // @[TagArray.scala 64:25]
  wire  ecc_array_io_wreq_valid; // @[TagArray.scala 64:25]
  wire [7:0] ecc_array_io_wreq_bits_setIdx; // @[TagArray.scala 64:25]
  wire [5:0] ecc_array_io_wreq_bits_data_0; // @[TagArray.scala 64:25]
  wire [5:0] ecc_array_io_wreq_bits_data_1; // @[TagArray.scala 64:25]
  wire [5:0] ecc_array_io_wreq_bits_data_2; // @[TagArray.scala 64:25]
  wire [5:0] ecc_array_io_wreq_bits_data_3; // @[TagArray.scala 64:25]
  wire [3:0] ecc_array_io_wreq_bits_waymask; // @[TagArray.scala 64:25]
  reg [8:0] rst_cnt; // @[TagArray.scala 50:24]
  wire  rst = rst_cnt < 9'h100; // @[TagArray.scala 51:21]
  wire [8:0] waddr = rst ? rst_cnt : {{1'd0}, io_write_bits_idx}; // @[TagArray.scala 53:18]
  wire [3:0] _wmask_T_2 = rst ? $signed(-4'sh1) : $signed(io_write_bits_way_en); // @[TagArray.scala 55:18]
  wire  wmask_0 = _wmask_T_2[0]; // @[TagArray.scala 55:84]
  wire  wmask_1 = _wmask_T_2[1]; // @[TagArray.scala 55:84]
  wire  wmask_2 = _wmask_T_2[2]; // @[TagArray.scala 55:84]
  wire  wmask_3 = _wmask_T_2[3]; // @[TagArray.scala 55:84]
  wire [8:0] _rst_cnt_T_1 = rst_cnt + 9'h1; // @[TagArray.scala 58:24]
  wire  wen = rst | io_write_valid; // @[TagArray.scala 67:17]
  wire [1:0] x3_lo = {wmask_1,wmask_0}; // @[TagArray.scala 72:36]
  wire [1:0] x3_hi = {wmask_3,wmask_2}; // @[TagArray.scala 72:36]
  wire  ecc_wen = rst | io_ecc_write_valid; // @[TagArray.scala 75:21]
  wire [8:0] ecc_waddr = rst ? rst_cnt : {{1'd0}, io_ecc_write_bits_idx}; // @[TagArray.scala 76:22]
  wire [3:0] _ecc_wmask_T_2 = rst ? $signed(-4'sh1) : $signed(io_ecc_write_bits_way_en); // @[TagArray.scala 78:22]
  wire  ecc_wmask_0 = _ecc_wmask_T_2[0]; // @[TagArray.scala 78:92]
  wire  ecc_wmask_1 = _ecc_wmask_T_2[1]; // @[TagArray.scala 78:92]
  wire  ecc_wmask_2 = _ecc_wmask_T_2[2]; // @[TagArray.scala 78:92]
  wire  ecc_wmask_3 = _ecc_wmask_T_2[3]; // @[TagArray.scala 78:92]
  wire [1:0] x6_lo = {ecc_wmask_1,ecc_wmask_0}; // @[TagArray.scala 83:40]
  wire [1:0] x6_hi = {ecc_wmask_3,ecc_wmask_2}; // @[TagArray.scala 83:40]
  SRAMTemplate_160 tag_array ( // @[TagArray.scala 61:25]
    .clock(tag_array_clock),
    .io_rreq_valid(tag_array_io_rreq_valid),
    .io_rreq_bits_setIdx(tag_array_io_rreq_bits_setIdx),
    .io_rresp_data_0(tag_array_io_rresp_data_0),
    .io_rresp_data_1(tag_array_io_rresp_data_1),
    .io_rresp_data_2(tag_array_io_rresp_data_2),
    .io_rresp_data_3(tag_array_io_rresp_data_3),
    .io_wreq_valid(tag_array_io_wreq_valid),
    .io_wreq_bits_setIdx(tag_array_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tag_array_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tag_array_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tag_array_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tag_array_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(tag_array_io_wreq_bits_waymask)
  );
  SRAMTemplate_161 ecc_array ( // @[TagArray.scala 64:25]
    .clock(ecc_array_clock),
    .io_rreq_valid(ecc_array_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_array_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_array_io_rresp_data_0),
    .io_rresp_data_1(ecc_array_io_rresp_data_1),
    .io_rresp_data_2(ecc_array_io_rresp_data_2),
    .io_rresp_data_3(ecc_array_io_rresp_data_3),
    .io_wreq_valid(ecc_array_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_array_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_array_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_array_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_array_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_array_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(ecc_array_io_wreq_bits_waymask)
  );
  assign io_read_ready = ~wen; // @[TagArray.scala 99:20]
  assign io_resp_0 = tag_array_io_rresp_data_0; // @[TagArray.scala 91:11]
  assign io_resp_1 = tag_array_io_rresp_data_1; // @[TagArray.scala 91:11]
  assign io_resp_2 = tag_array_io_rresp_data_2; // @[TagArray.scala 91:11]
  assign io_resp_3 = tag_array_io_rresp_data_3; // @[TagArray.scala 91:11]
  assign io_ecc_read_ready = ~ecc_wen; // @[TagArray.scala 101:24]
  assign io_ecc_resp_0 = ecc_array_io_rresp_data_0; // @[TagArray.scala 96:15]
  assign io_ecc_resp_1 = ecc_array_io_rresp_data_1; // @[TagArray.scala 96:15]
  assign io_ecc_resp_2 = ecc_array_io_rresp_data_2; // @[TagArray.scala 96:15]
  assign io_ecc_resp_3 = ecc_array_io_rresp_data_3; // @[TagArray.scala 96:15]
  assign tag_array_clock = clock;
  assign tag_array_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign tag_array_io_rreq_bits_setIdx = io_read_bits_idx; // @[SRAMTemplate.scala 43:17]
  assign tag_array_io_wreq_valid = rst | io_write_valid; // @[TagArray.scala 67:17]
  assign tag_array_io_wreq_bits_setIdx = waddr[7:0]; // @[SRAMTemplate.scala 43:17]
  assign tag_array_io_wreq_bits_data_0 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 54:18]
  assign tag_array_io_wreq_bits_data_1 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 54:18]
  assign tag_array_io_wreq_bits_data_2 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 54:18]
  assign tag_array_io_wreq_bits_data_3 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 54:18]
  assign tag_array_io_wreq_bits_waymask = {x3_hi,x3_lo}; // @[TagArray.scala 72:36]
  assign ecc_array_clock = clock;
  assign ecc_array_io_rreq_valid = io_ecc_read_ready & io_ecc_read_valid; // @[Decoupled.scala 50:35]
  assign ecc_array_io_rreq_bits_setIdx = io_ecc_read_bits_idx; // @[SRAMTemplate.scala 43:17]
  assign ecc_array_io_wreq_valid = rst | io_ecc_write_valid; // @[TagArray.scala 75:21]
  assign ecc_array_io_wreq_bits_setIdx = ecc_waddr[7:0]; // @[SRAMTemplate.scala 43:17]
  assign ecc_array_io_wreq_bits_data_0 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 77:22]
  assign ecc_array_io_wreq_bits_data_1 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 77:22]
  assign ecc_array_io_wreq_bits_data_2 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 77:22]
  assign ecc_array_io_wreq_bits_data_3 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 77:22]
  assign ecc_array_io_wreq_bits_waymask = {x6_hi,x6_lo}; // @[TagArray.scala 83:40]
  always @(posedge clock) begin
    if (reset) begin // @[TagArray.scala 50:24]
      rst_cnt <= 9'h0; // @[TagArray.scala 50:24]
    end else if (rst) begin // @[TagArray.scala 57:14]
      rst_cnt <= _rst_cnt_T_1; // @[TagArray.scala 58:13]
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
  rst_cnt = _RAND_0[8:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
