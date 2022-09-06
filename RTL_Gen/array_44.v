module array_44(
  input  [11:0] RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [5:0]  RW0_wdata_0,
  input  [5:0]  RW0_wdata_1,
  input  [5:0]  RW0_wdata_2,
  input  [5:0]  RW0_wdata_3,
  output [5:0]  RW0_rdata_0,
  output [5:0]  RW0_rdata_1,
  output [5:0]  RW0_rdata_2,
  output [5:0]  RW0_rdata_3,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3
);
  wire [11:0] array_44_ext_RW0_addr;
  wire  array_44_ext_RW0_en;
  wire  array_44_ext_RW0_clk;
  wire  array_44_ext_RW0_wmode;
  wire [23:0] array_44_ext_RW0_wdata;
  wire [23:0] array_44_ext_RW0_rdata;
  wire [3:0] array_44_ext_RW0_wmask;
  wire [11:0] _GEN_0 = {RW0_wdata_3,RW0_wdata_2};
  wire [11:0] _GEN_1 = {RW0_wdata_1,RW0_wdata_0};
  wire [1:0] _GEN_2 = {RW0_wmask_3,RW0_wmask_2};
  wire [1:0] _GEN_3 = {RW0_wmask_1,RW0_wmask_0};
  array_44_ext array_44_ext (
    .RW0_addr(array_44_ext_RW0_addr),
    .RW0_en(array_44_ext_RW0_en),
    .RW0_clk(array_44_ext_RW0_clk),
    .RW0_wmode(array_44_ext_RW0_wmode),
    .RW0_wdata(array_44_ext_RW0_wdata),
    .RW0_rdata(array_44_ext_RW0_rdata),
    .RW0_wmask(array_44_ext_RW0_wmask)
  );
  assign array_44_ext_RW0_clk = RW0_clk;
  assign array_44_ext_RW0_en = RW0_en;
  assign array_44_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_44_ext_RW0_rdata[5:0];
  assign RW0_rdata_1 = array_44_ext_RW0_rdata[11:6];
  assign RW0_rdata_2 = array_44_ext_RW0_rdata[17:12];
  assign RW0_rdata_3 = array_44_ext_RW0_rdata[23:18];
  assign array_44_ext_RW0_wmode = RW0_wmode;
  assign array_44_ext_RW0_wdata = {_GEN_0,_GEN_1};
  assign array_44_ext_RW0_wmask = {_GEN_2,_GEN_3};
endmodule
