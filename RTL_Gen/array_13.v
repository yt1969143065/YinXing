module array_13(
  input  [4:0] RW0_addr,
  input        RW0_en,
  input        RW0_clk,
  input        RW0_wmode,
  input        RW0_wdata_0,
  input        RW0_wdata_1,
  output       RW0_rdata_0,
  output       RW0_rdata_1,
  input        RW0_wmask_0,
  input        RW0_wmask_1
);
  wire [4:0] array_13_ext_RW0_addr;
  wire  array_13_ext_RW0_en;
  wire  array_13_ext_RW0_clk;
  wire  array_13_ext_RW0_wmode;
  wire [1:0] array_13_ext_RW0_wdata;
  wire [1:0] array_13_ext_RW0_rdata;
  wire [1:0] array_13_ext_RW0_wmask;
  array_13_ext array_13_ext (
    .RW0_addr(array_13_ext_RW0_addr),
    .RW0_en(array_13_ext_RW0_en),
    .RW0_clk(array_13_ext_RW0_clk),
    .RW0_wmode(array_13_ext_RW0_wmode),
    .RW0_wdata(array_13_ext_RW0_wdata),
    .RW0_rdata(array_13_ext_RW0_rdata),
    .RW0_wmask(array_13_ext_RW0_wmask)
  );
  assign array_13_ext_RW0_clk = RW0_clk;
  assign array_13_ext_RW0_en = RW0_en;
  assign array_13_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_13_ext_RW0_rdata[0];
  assign RW0_rdata_1 = array_13_ext_RW0_rdata[1];
  assign array_13_ext_RW0_wmode = RW0_wmode;
  assign array_13_ext_RW0_wdata = {RW0_wdata_1,RW0_wdata_0};
  assign array_13_ext_RW0_wmask = {RW0_wmask_1,RW0_wmask_0};
endmodule
