module SRAMTemplate_166(
  input         clock,
  input         io_rreq_valid,
  input  [6:0]  io_rreq_bits_setIdx,
  output [26:0] io_rresp_data_0_tag,
  output [15:0] io_rresp_data_0_asid,
  output [23:0] io_rresp_data_0_ppn,
  output        io_rresp_data_0_perm_pf,
  output        io_rresp_data_0_perm_af,
  output        io_rresp_data_0_perm_d,
  output        io_rresp_data_0_perm_a,
  output        io_rresp_data_0_perm_u,
  output        io_rresp_data_0_perm_x,
  output        io_rresp_data_0_perm_w,
  output        io_rresp_data_0_perm_r,
  output        io_rresp_data_0_perm_pm_r,
  output        io_rresp_data_0_perm_pm_w,
  output        io_rresp_data_0_perm_pm_c,
  input         io_wreq_valid,
  input  [6:0]  io_wreq_bits_setIdx,
  input  [26:0] io_wreq_bits_data_0_tag,
  input  [15:0] io_wreq_bits_data_0_asid,
  input  [23:0] io_wreq_bits_data_0_ppn,
  input         io_wreq_bits_data_0_perm_pf,
  input         io_wreq_bits_data_0_perm_af,
  input         io_wreq_bits_data_0_perm_d,
  input         io_wreq_bits_data_0_perm_a,
  input         io_wreq_bits_data_0_perm_g,
  input         io_wreq_bits_data_0_perm_u,
  input         io_wreq_bits_data_0_perm_x,
  input         io_wreq_bits_data_0_perm_w,
  input         io_wreq_bits_data_0_perm_r,
  input         io_wreq_bits_data_0_perm_pm_r,
  input         io_wreq_bits_data_0_perm_pm_w,
  input         io_wreq_bits_data_0_perm_pm_x,
  input         io_wreq_bits_data_0_perm_pm_c,
  input         io_wreq_bits_data_0_perm_pm_atomic
);
  wire [6:0] array_RW0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 102:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 102:26]
  wire [80:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 102:26]
  wire [80:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 102:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 115:38]
  wire [7:0] wdata_lo = {io_wreq_bits_data_0_perm_x,io_wreq_bits_data_0_perm_w,io_wreq_bits_data_0_perm_r,
    io_wreq_bits_data_0_perm_pm_r,io_wreq_bits_data_0_perm_pm_w,io_wreq_bits_data_0_perm_pm_x,
    io_wreq_bits_data_0_perm_pm_c,io_wreq_bits_data_0_perm_pm_atomic}; // @[SRAMTemplate.scala 118:102]
  wire [72:0] wdata_hi = {io_wreq_bits_data_0_tag,io_wreq_bits_data_0_asid,io_wreq_bits_data_0_ppn,
    io_wreq_bits_data_0_perm_pf,io_wreq_bits_data_0_perm_af,io_wreq_bits_data_0_perm_d,io_wreq_bits_data_0_perm_a,
    io_wreq_bits_data_0_perm_g,io_wreq_bits_data_0_perm_u}; // @[SRAMTemplate.scala 118:102]
  wire [80:0] _rdata_WIRE = array_RW0_rdata_0;
  array_26 array ( // @[SRAMTemplate.scala 102:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_rdata_0(array_RW0_rdata_0)
  );
  assign io_rresp_data_0_tag = _rdata_WIRE[80:54]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_asid = _rdata_WIRE[53:38]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_ppn = _rdata_WIRE[37:14]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_perm_pf = _rdata_WIRE[13]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_perm_af = _rdata_WIRE[12]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_perm_d = _rdata_WIRE[11]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_perm_a = _rdata_WIRE[10]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_perm_u = _rdata_WIRE[8]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_perm_x = _rdata_WIRE[7]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_perm_w = _rdata_WIRE[6]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_perm_r = _rdata_WIRE[5]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_perm_pm_r = _rdata_WIRE[4]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_perm_pm_w = _rdata_WIRE[3]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_perm_pm_c = _rdata_WIRE[1]; // @[SRAMTemplate.scala 146:45]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 120:14]
  assign array_RW0_wdata_0 = {wdata_hi,wdata_lo}; // @[SRAMTemplate.scala 118:102]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 114:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
endmodule
