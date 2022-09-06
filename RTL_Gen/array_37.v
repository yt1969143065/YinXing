module array_37(
  input  [11:0] RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [63:0] RW0_wdata_0,
  output [63:0] RW0_rdata_0
);
  wire [11:0] array_37_ext_RW0_addr;
  wire  array_37_ext_RW0_en;
  wire  array_37_ext_RW0_clk;
  wire  array_37_ext_RW0_wmode;
  wire [63:0] array_37_ext_RW0_wdata;
  wire [63:0] array_37_ext_RW0_rdata;
  array_37_ext array_37_ext (
    .RW0_addr(array_37_ext_RW0_addr),
    .RW0_en(array_37_ext_RW0_en),
    .RW0_clk(array_37_ext_RW0_clk),
    .RW0_wmode(array_37_ext_RW0_wmode),
    .RW0_wdata(array_37_ext_RW0_wdata),
    .RW0_rdata(array_37_ext_RW0_rdata)
  );
  assign array_37_ext_RW0_clk = RW0_clk;
  assign array_37_ext_RW0_en = RW0_en;
  assign array_37_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_37_ext_RW0_rdata;
  assign array_37_ext_RW0_wmode = RW0_wmode;
  assign array_37_ext_RW0_wdata = RW0_wdata_0;
endmodule
