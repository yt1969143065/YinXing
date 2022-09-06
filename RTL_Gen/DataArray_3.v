module DataArray_3(
  input         clock,
  input  [7:0]  io_read_0_addr,
  output [63:0] io_read_0_data_0,
  output [63:0] io_read_0_data_1,
  input         io_write_0_enable,
  input         io_write_0_mask_0,
  input         io_write_0_mask_1,
  input  [7:0]  io_write_0_addr,
  input  [63:0] io_write_0_data_0,
  input  [63:0] io_write_0_data_1,
  input         io_multiWrite_0_enable,
  input  [7:0]  io_multiWrite_0_addr_0,
  input  [7:0]  io_multiWrite_0_addr_1,
  input  [63:0] io_multiWrite_0_data,
  input         io_multiWrite_1_enable,
  input  [7:0]  io_multiWrite_1_addr_0,
  input  [7:0]  io_multiWrite_1_addr_1,
  input  [63:0] io_multiWrite_1_data,
  input         io_multiWrite_2_enable,
  input  [7:0]  io_multiWrite_2_addr_0,
  input  [7:0]  io_multiWrite_2_addr_1,
  input  [63:0] io_multiWrite_2_data,
  input         io_multiWrite_3_enable,
  input  [7:0]  io_multiWrite_3_addr_0,
  input  [7:0]  io_multiWrite_3_addr_1,
  input  [63:0] io_multiWrite_3_data,
  input         io_multiWrite_4_enable,
  input  [7:0]  io_multiWrite_4_addr_0,
  input  [7:0]  io_multiWrite_4_addr_1,
  input  [63:0] io_multiWrite_4_data,
  input         io_multiWrite_5_enable,
  input  [7:0]  io_multiWrite_5_addr_0,
  input  [7:0]  io_multiWrite_5_addr_1,
  input  [63:0] io_multiWrite_5_data,
  input         io_multiWrite_6_enable,
  input  [7:0]  io_multiWrite_6_addr_0,
  input  [7:0]  io_multiWrite_6_addr_1,
  input  [63:0] io_multiWrite_6_data
);
  wire  dataModule_clock; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_io_rvec_0; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_rdata_0; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_0; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_1; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_2; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_3; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_4; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_5; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_6; // @[DataArray.scala 75:28]
  wire  dataModule_io_wen_7; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_io_wvec_0; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_io_wvec_1; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_io_wvec_2; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_io_wvec_3; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_io_wvec_4; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_io_wvec_5; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_io_wvec_6; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_io_wvec_7; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_0; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_1; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_2; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_3; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_4; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_5; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_6; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_io_wdata_7; // @[DataArray.scala 75:28]
  wire  dataModule_1_clock; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_1_io_rvec_0; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_1_io_rdata_0; // @[DataArray.scala 75:28]
  wire  dataModule_1_io_wen_0; // @[DataArray.scala 75:28]
  wire  dataModule_1_io_wen_1; // @[DataArray.scala 75:28]
  wire  dataModule_1_io_wen_2; // @[DataArray.scala 75:28]
  wire  dataModule_1_io_wen_3; // @[DataArray.scala 75:28]
  wire  dataModule_1_io_wen_4; // @[DataArray.scala 75:28]
  wire  dataModule_1_io_wen_5; // @[DataArray.scala 75:28]
  wire  dataModule_1_io_wen_6; // @[DataArray.scala 75:28]
  wire  dataModule_1_io_wen_7; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_1_io_wvec_0; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_1_io_wvec_1; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_1_io_wvec_2; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_1_io_wvec_3; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_1_io_wvec_4; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_1_io_wvec_5; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_1_io_wvec_6; // @[DataArray.scala 75:28]
  wire [7:0] dataModule_1_io_wvec_7; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_1_io_wdata_0; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_1_io_wdata_1; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_1_io_wdata_2; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_1_io_wdata_3; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_1_io_wdata_4; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_1_io_wdata_5; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_1_io_wdata_6; // @[DataArray.scala 75:28]
  wire [63:0] dataModule_1_io_wdata_7; // @[DataArray.scala 75:28]
  SyncRawDataModuleTemplate_6 dataModule ( // @[DataArray.scala 75:28]
    .clock(dataModule_clock),
    .io_rvec_0(dataModule_io_rvec_0),
    .io_rdata_0(dataModule_io_rdata_0),
    .io_wen_0(dataModule_io_wen_0),
    .io_wen_1(dataModule_io_wen_1),
    .io_wen_2(dataModule_io_wen_2),
    .io_wen_3(dataModule_io_wen_3),
    .io_wen_4(dataModule_io_wen_4),
    .io_wen_5(dataModule_io_wen_5),
    .io_wen_6(dataModule_io_wen_6),
    .io_wen_7(dataModule_io_wen_7),
    .io_wvec_0(dataModule_io_wvec_0),
    .io_wvec_1(dataModule_io_wvec_1),
    .io_wvec_2(dataModule_io_wvec_2),
    .io_wvec_3(dataModule_io_wvec_3),
    .io_wvec_4(dataModule_io_wvec_4),
    .io_wvec_5(dataModule_io_wvec_5),
    .io_wvec_6(dataModule_io_wvec_6),
    .io_wvec_7(dataModule_io_wvec_7),
    .io_wdata_0(dataModule_io_wdata_0),
    .io_wdata_1(dataModule_io_wdata_1),
    .io_wdata_2(dataModule_io_wdata_2),
    .io_wdata_3(dataModule_io_wdata_3),
    .io_wdata_4(dataModule_io_wdata_4),
    .io_wdata_5(dataModule_io_wdata_5),
    .io_wdata_6(dataModule_io_wdata_6),
    .io_wdata_7(dataModule_io_wdata_7)
  );
  SyncRawDataModuleTemplate_6 dataModule_1 ( // @[DataArray.scala 75:28]
    .clock(dataModule_1_clock),
    .io_rvec_0(dataModule_1_io_rvec_0),
    .io_rdata_0(dataModule_1_io_rdata_0),
    .io_wen_0(dataModule_1_io_wen_0),
    .io_wen_1(dataModule_1_io_wen_1),
    .io_wen_2(dataModule_1_io_wen_2),
    .io_wen_3(dataModule_1_io_wen_3),
    .io_wen_4(dataModule_1_io_wen_4),
    .io_wen_5(dataModule_1_io_wen_5),
    .io_wen_6(dataModule_1_io_wen_6),
    .io_wen_7(dataModule_1_io_wen_7),
    .io_wvec_0(dataModule_1_io_wvec_0),
    .io_wvec_1(dataModule_1_io_wvec_1),
    .io_wvec_2(dataModule_1_io_wvec_2),
    .io_wvec_3(dataModule_1_io_wvec_3),
    .io_wvec_4(dataModule_1_io_wvec_4),
    .io_wvec_5(dataModule_1_io_wvec_5),
    .io_wvec_6(dataModule_1_io_wvec_6),
    .io_wvec_7(dataModule_1_io_wvec_7),
    .io_wdata_0(dataModule_1_io_wdata_0),
    .io_wdata_1(dataModule_1_io_wdata_1),
    .io_wdata_2(dataModule_1_io_wdata_2),
    .io_wdata_3(dataModule_1_io_wdata_3),
    .io_wdata_4(dataModule_1_io_wdata_4),
    .io_wdata_5(dataModule_1_io_wdata_5),
    .io_wdata_6(dataModule_1_io_wdata_6),
    .io_wdata_7(dataModule_1_io_wdata_7)
  );
  assign io_read_0_data_0 = dataModule_io_rdata_0; // @[DataArray.scala 77:79]
  assign io_read_0_data_1 = dataModule_1_io_rdata_0; // @[DataArray.scala 77:79]
  assign dataModule_clock = clock;
  assign dataModule_io_rvec_0 = io_read_0_addr; // @[DataArray.scala 76:{34,34}]
  assign dataModule_io_wen_0 = io_write_0_enable & io_write_0_mask_0; // @[DataArray.scala 71:42]
  assign dataModule_io_wen_1 = io_multiWrite_0_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_2 = io_multiWrite_1_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_3 = io_multiWrite_2_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_4 = io_multiWrite_3_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_5 = io_multiWrite_4_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_6 = io_multiWrite_5_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wen_7 = io_multiWrite_6_enable; // @[DataArray.scala 78:23]
  assign dataModule_io_wvec_0 = io_write_0_addr; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_1 = io_multiWrite_0_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_2 = io_multiWrite_1_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_3 = io_multiWrite_2_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_4 = io_multiWrite_3_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_5 = io_multiWrite_4_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_6 = io_multiWrite_5_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wvec_7 = io_multiWrite_6_addr_0; // @[DataArray.scala 79:24]
  assign dataModule_io_wdata_0 = io_write_0_data_0; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_1 = io_multiWrite_0_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_2 = io_multiWrite_1_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_3 = io_multiWrite_2_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_4 = io_multiWrite_3_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_5 = io_multiWrite_4_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_6 = io_multiWrite_5_data; // @[DataArray.scala 80:25]
  assign dataModule_io_wdata_7 = io_multiWrite_6_data; // @[DataArray.scala 80:25]
  assign dataModule_1_clock = clock;
  assign dataModule_1_io_rvec_0 = io_read_0_addr; // @[DataArray.scala 76:{34,34}]
  assign dataModule_1_io_wen_0 = io_write_0_enable & io_write_0_mask_1; // @[DataArray.scala 71:42]
  assign dataModule_1_io_wen_1 = io_multiWrite_0_enable; // @[DataArray.scala 78:23]
  assign dataModule_1_io_wen_2 = io_multiWrite_1_enable; // @[DataArray.scala 78:23]
  assign dataModule_1_io_wen_3 = io_multiWrite_2_enable; // @[DataArray.scala 78:23]
  assign dataModule_1_io_wen_4 = io_multiWrite_3_enable; // @[DataArray.scala 78:23]
  assign dataModule_1_io_wen_5 = io_multiWrite_4_enable; // @[DataArray.scala 78:23]
  assign dataModule_1_io_wen_6 = io_multiWrite_5_enable; // @[DataArray.scala 78:23]
  assign dataModule_1_io_wen_7 = io_multiWrite_6_enable; // @[DataArray.scala 78:23]
  assign dataModule_1_io_wvec_0 = io_write_0_addr; // @[DataArray.scala 79:24]
  assign dataModule_1_io_wvec_1 = io_multiWrite_0_addr_1; // @[DataArray.scala 79:24]
  assign dataModule_1_io_wvec_2 = io_multiWrite_1_addr_1; // @[DataArray.scala 79:24]
  assign dataModule_1_io_wvec_3 = io_multiWrite_2_addr_1; // @[DataArray.scala 79:24]
  assign dataModule_1_io_wvec_4 = io_multiWrite_3_addr_1; // @[DataArray.scala 79:24]
  assign dataModule_1_io_wvec_5 = io_multiWrite_4_addr_1; // @[DataArray.scala 79:24]
  assign dataModule_1_io_wvec_6 = io_multiWrite_5_addr_1; // @[DataArray.scala 79:24]
  assign dataModule_1_io_wvec_7 = io_multiWrite_6_addr_1; // @[DataArray.scala 79:24]
  assign dataModule_1_io_wdata_0 = io_write_0_data_1; // @[DataArray.scala 80:25]
  assign dataModule_1_io_wdata_1 = io_multiWrite_0_data; // @[DataArray.scala 80:25]
  assign dataModule_1_io_wdata_2 = io_multiWrite_1_data; // @[DataArray.scala 80:25]
  assign dataModule_1_io_wdata_3 = io_multiWrite_2_data; // @[DataArray.scala 80:25]
  assign dataModule_1_io_wdata_4 = io_multiWrite_3_data; // @[DataArray.scala 80:25]
  assign dataModule_1_io_wdata_5 = io_multiWrite_4_data; // @[DataArray.scala 80:25]
  assign dataModule_1_io_wdata_6 = io_multiWrite_5_data; // @[DataArray.scala 80:25]
  assign dataModule_1_io_wdata_7 = io_multiWrite_6_data; // @[DataArray.scala 80:25]
endmodule
