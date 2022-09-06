module array_20(
  input  [4:0]   RW0_addr,
  input          RW0_en,
  input          RW0_clk,
  input          RW0_wmode,
  input  [257:0] RW0_wdata_0,
  input  [257:0] RW0_wdata_1,
  output [257:0] RW0_rdata_0,
  output [257:0] RW0_rdata_1,
  input          RW0_wmask_0,
  input          RW0_wmask_1
);
  wire [4:0] array_20_ext_RW0_addr;
  wire  array_20_ext_RW0_en;
  wire  array_20_ext_RW0_clk;
  wire  array_20_ext_RW0_wmode;
  wire [515:0] array_20_ext_RW0_wdata;
  wire [515:0] array_20_ext_RW0_rdata;
  wire [1:0] array_20_ext_RW0_wmask;
  array_20_ext array_20_ext (
    .RW0_addr(array_20_ext_RW0_addr),
    .RW0_en(array_20_ext_RW0_en),
    .RW0_clk(array_20_ext_RW0_clk),
    .RW0_wmode(array_20_ext_RW0_wmode),
    .RW0_wdata(array_20_ext_RW0_wdata),
    .RW0_rdata(array_20_ext_RW0_rdata),
    .RW0_wmask(array_20_ext_RW0_wmask)
  );
  assign array_20_ext_RW0_clk = RW0_clk;
  assign array_20_ext_RW0_en = RW0_en;
  assign array_20_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_20_ext_RW0_rdata[257:0];
  assign RW0_rdata_1 = array_20_ext_RW0_rdata[515:258];
  assign array_20_ext_RW0_wmode = RW0_wmode;
  assign array_20_ext_RW0_wdata = {RW0_wdata_1,RW0_wdata_0};
  assign array_20_ext_RW0_wmask = {RW0_wmask_1,RW0_wmask_0};
endmodule
