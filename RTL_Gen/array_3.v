module array_3(
  input  [7:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [46:0] RW0_wdata_0,
  output [46:0] RW0_rdata_0
);
  wire [7:0] array_3_ext_RW0_addr;
  wire  array_3_ext_RW0_en;
  wire  array_3_ext_RW0_clk;
  wire  array_3_ext_RW0_wmode;
  wire [46:0] array_3_ext_RW0_wdata;
  wire [46:0] array_3_ext_RW0_rdata;
  array_3_ext array_3_ext (
    .RW0_addr(array_3_ext_RW0_addr),
    .RW0_en(array_3_ext_RW0_en),
    .RW0_clk(array_3_ext_RW0_clk),
    .RW0_wmode(array_3_ext_RW0_wmode),
    .RW0_wdata(array_3_ext_RW0_wdata),
    .RW0_rdata(array_3_ext_RW0_rdata)
  );
  assign array_3_ext_RW0_clk = RW0_clk;
  assign array_3_ext_RW0_en = RW0_en;
  assign array_3_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_3_ext_RW0_rdata;
  assign array_3_ext_RW0_wmode = RW0_wmode;
  assign array_3_ext_RW0_wdata = RW0_wdata_0;
endmodule
