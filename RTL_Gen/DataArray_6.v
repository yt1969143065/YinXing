module DataArray_6(
  input         clock,
  input  [23:0] io_read_0_addr,
  output [63:0] io_read_0_data_0,
  input  [23:0] io_read_1_addr,
  output [63:0] io_read_1_data_0,
  input         io_write_0_enable,
  input         io_write_0_mask_0,
  input  [23:0] io_write_0_addr,
  input  [63:0] io_write_0_data_0,
  input         io_write_1_enable,
  input         io_write_1_mask_0,
  input  [23:0] io_write_1_addr,
  input  [63:0] io_write_1_data_0,
  input         io_multiWrite_0_enable,
  input  [23:0] io_multiWrite_0_addr_0,
  input  [63:0] io_multiWrite_0_data,
  input         io_multiWrite_1_enable,
  input  [23:0] io_multiWrite_1_addr_0,
  input  [63:0] io_multiWrite_1_data,
  input         io_multiWrite_2_enable,
  input  [23:0] io_multiWrite_2_addr_0,
  input  [63:0] io_multiWrite_2_data,
  input         io_multiWrite_3_enable,
  input  [23:0] io_multiWrite_3_addr_0,
  input  [63:0] io_multiWrite_3_data,
  input         io_multiWrite_4_enable,
  input  [23:0] io_multiWrite_4_addr_0,
  input  [63:0] io_multiWrite_4_data,
  input         io_multiWrite_5_enable,
  input  [23:0] io_multiWrite_5_addr_0,
  input  [63:0] io_multiWrite_5_data,
  input         io_multiWrite_6_enable,
  input  [23:0] io_multiWrite_6_addr_0,
  input  [63:0] io_multiWrite_6_data,
  input         io_multiWrite_7_enable,
  input  [23:0] io_multiWrite_7_addr_0,
  input  [63:0] io_multiWrite_7_data,
  input         io_multiWrite_8_enable,
  input  [23:0] io_multiWrite_8_addr_0,
  input  [63:0] io_multiWrite_8_data,
  input         io_multiWrite_9_enable,
  input  [23:0] io_multiWrite_9_addr_0,
  input  [63:0] io_multiWrite_9_data,
  input         io_multiWrite_10_enable,
  input  [23:0] io_multiWrite_10_addr_0,
  input  [63:0] io_multiWrite_10_data,
  input         io_multiWrite_11_enable,
  input  [23:0] io_multiWrite_11_addr_0,
  input  [63:0] io_multiWrite_11_data,
  input         io_delayedWrite_0_valid,
  input  [63:0] io_delayedWrite_0_bits,
  input         io_delayedWrite_1_valid,
  input  [63:0] io_delayedWrite_1_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  dataModule_clock; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_rvec_0; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_rvec_1; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_rdata_0; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_rdata_1; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_0; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_1; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_2; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_3; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_4; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_5; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_6; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_7; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_8; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_9; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_10; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_11; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_12; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_13; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_14; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_15; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_0; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_1; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_2; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_3; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_4; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_5; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_6; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_7; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_8; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_9; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_10; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_11; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_12; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_13; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_14; // @[DataArray.scala 75:28]
  wire [23:0] dataModule_io_wvec_15; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_0; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_1; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_2; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_3; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_4; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_5; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_6; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_7; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_8; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_9; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_10; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_11; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_12; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_13; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_14; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_15; // @[DataArray.scala 75:28]
  reg  delayedWen_0; // @[DataArray.scala 63:51]
  reg  delayedWen_1; // @[DataArray.scala 63:51]
  reg [23:0] delayedWaddr_REG_0; // @[DataArray.scala 64:61]
  reg [23:0] delayedWaddr_REG_1; // @[DataArray.scala 64:61]
  reg [23:0] delayedWaddr_0; // @[DataArray.scala 64:53]
  reg [23:0] delayedWaddr_1; // @[DataArray.scala 64:53]
  SyncRawDataModuleTemplate_10 dataModule ( // @[DataArray.scala 75:28]
    .clock(dataModule_clock),
    .io_rvec_0(dataModule_io_rvec_0),
    .io_rvec_1(dataModule_io_rvec_1),
    .io_rdata_0(dataModule_io_rdata_0),
    .io_rdata_1(dataModule_io_rdata_1),
    .io_wen_0(dataModule_io_wen_0),
    .io_wen_1(dataModule_io_wen_1),
    .io_wen_2(dataModule_io_wen_2),
    .io_wen_3(dataModule_io_wen_3),
    .io_wen_4(dataModule_io_wen_4),
    .io_wen_5(dataModule_io_wen_5),
    .io_wen_6(dataModule_io_wen_6),
    .io_wen_7(dataModule_io_wen_7),
    .io_wen_8(dataModule_io_wen_8),
    .io_wen_9(dataModule_io_wen_9),
    .io_wen_10(dataModule_io_wen_10),
    .io_wen_11(dataModule_io_wen_11),
    .io_wen_12(dataModule_io_wen_12),
    .io_wen_13(dataModule_io_wen_13),
    .io_wen_14(dataModule_io_wen_14),
    .io_wen_15(dataModule_io_wen_15),
    .io_wvec_0(dataModule_io_wvec_0),
    .io_wvec_1(dataModule_io_wvec_1),
    .io_wvec_2(dataModule_io_wvec_2),
    .io_wvec_3(dataModule_io_wvec_3),
    .io_wvec_4(dataModule_io_wvec_4),
    .io_wvec_5(dataModule_io_wvec_5),
    .io_wvec_6(dataModule_io_wvec_6),
    .io_wvec_7(dataModule_io_wvec_7),
    .io_wvec_8(dataModule_io_wvec_8),
    .io_wvec_9(dataModule_io_wvec_9),
    .io_wvec_10(dataModule_io_wvec_10),
    .io_wvec_11(dataModule_io_wvec_11),
    .io_wvec_12(dataModule_io_wvec_12),
    .io_wvec_13(dataModule_io_wvec_13),
    .io_wvec_14(dataModule_io_wvec_14),
    .io_wvec_15(dataModule_io_wvec_15),
    .io_wdata_0(dataModule_io_wdata_0),
    .io_wdata_1(dataModule_io_wdata_1),
    .io_wdata_2(dataModule_io_wdata_2),
    .io_wdata_3(dataModule_io_wdata_3),
    .io_wdata_4(dataModule_io_wdata_4),
    .io_wdata_5(dataModule_io_wdata_5),
    .io_wdata_6(dataModule_io_wdata_6),
    .io_wdata_7(dataModule_io_wdata_7),
    .io_wdata_8(dataModule_io_wdata_8),
    .io_wdata_9(dataModule_io_wdata_9),
    .io_wdata_10(dataModule_io_wdata_10),
    .io_wdata_11(dataModule_io_wdata_11),
    .io_wdata_12(dataModule_io_wdata_12),
    .io_wdata_13(dataModule_io_wdata_13),
    .io_wdata_14(dataModule_io_wdata_14),
    .io_wdata_15(dataModule_io_wdata_15)
  );
  assign io_read_0_data_0 = dataModule_io_rdata_0; // @[DataArray.scala 77:79]
  assign io_read_1_data_0 = dataModule_io_rdata_1; // @[DataArray.scala 77:79]
  assign dataModule_clock = clock;
  assign dataModule_io_rvec_0 = io_read_0_addr; // @[DataArray.scala 76:{34,34}]
  assign dataModule_io_rvec_1 = io_read_1_addr; // @[DataArray.scala 76:{34,34}]
  assign dataModule_io_wen_0 = io_write_0_enable & io_write_0_mask_0; // @[DataArray.scala 71:42]
  assign dataModule_io_wen_1 = io_write_1_enable & io_write_1_mask_0; // @[DataArray.scala 71:42]
  assign dataModule_io_wen_2 = io_multiWrite_0_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_3 = io_multiWrite_1_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_4 = io_multiWrite_2_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_5 = io_multiWrite_3_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_6 = io_multiWrite_4_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_7 = io_multiWrite_5_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_8 = io_multiWrite_6_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_9 = io_multiWrite_7_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_10 = io_multiWrite_8_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_11 = io_multiWrite_9_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_12 = io_multiWrite_10_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_13 = io_multiWrite_11_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_14 = delayedWen_0; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_15 = delayedWen_1; // @[DataArray.scala 78:23]
  assign dataModule_io_wvec_0 = io_write_0_addr; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_1 = io_write_1_addr; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_2 = io_multiWrite_0_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_3 = io_multiWrite_1_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_4 = io_multiWrite_2_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_5 = io_multiWrite_3_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_6 = io_multiWrite_4_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_7 = io_multiWrite_5_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_8 = io_multiWrite_6_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_9 = io_multiWrite_7_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_10 = io_multiWrite_8_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_11 = io_multiWrite_9_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_12 = io_multiWrite_10_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_13 = io_multiWrite_11_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_14 = delayedWaddr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_15 = delayedWaddr_1; // @[DataArray.scala 79:24]
  assign dataModule_io_wdata_0 = io_write_0_data_0; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_1 = io_write_1_data_0; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_2 = io_multiWrite_0_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_3 = io_multiWrite_1_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_4 = io_multiWrite_2_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_5 = io_multiWrite_3_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_6 = io_multiWrite_4_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_7 = io_multiWrite_5_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_8 = io_multiWrite_6_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_9 = io_multiWrite_7_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_10 = io_multiWrite_8_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_11 = io_multiWrite_9_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_12 = io_multiWrite_10_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_13 = io_multiWrite_11_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_14 = io_delayedWrite_0_bits; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_15 = io_delayedWrite_1_bits; // @[DataArray.scala 80:25]
  always @(posedge clock) begin
    delayedWen_0 <= io_delayedWrite_0_valid; // @[DataArray.scala 63:{59,59}]
    delayedWen_1 <= io_delayedWrite_1_valid; // @[DataArray.scala 63:{59,59}]
    delayedWaddr_REG_0 <= io_write_0_addr; // @[DataArray.scala 64:{69,69}]
    delayedWaddr_REG_1 <= io_write_1_addr; // @[DataArray.scala 64:{69,69}]
    delayedWaddr_0 <= delayedWaddr_REG_0; // @[DataArray.scala 64:53]
    delayedWaddr_1 <= delayedWaddr_REG_1; // @[DataArray.scala 64:53]
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
  delayedWen_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  delayedWen_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  delayedWaddr_REG_0 = _RAND_2[23:0];
  _RAND_3 = {1{`RANDOM}};
  delayedWaddr_REG_1 = _RAND_3[23:0];
  _RAND_4 = {1{`RANDOM}};
  delayedWaddr_0 = _RAND_4[23:0];
  _RAND_5 = {1{`RANDOM}};
  delayedWaddr_1 = _RAND_5[23:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
