module array_42(
  input  [11:0] RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [4:0]  RW0_wdata_0,
  input  [4:0]  RW0_wdata_1,
  input  [4:0]  RW0_wdata_2,
  input  [4:0]  RW0_wdata_3,
  output [4:0]  RW0_rdata_0,
  output [4:0]  RW0_rdata_1,
  output [4:0]  RW0_rdata_2,
  output [4:0]  RW0_rdata_3,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3
);
  wire [11:0] array_42_ext_RW0_addr;
  wire  array_42_ext_RW0_en;
  wire  array_42_ext_RW0_clk;
  wire  array_42_ext_RW0_wmode;
  wire [19:0] array_42_ext_RW0_wdata;
  wire [19:0] array_42_ext_RW0_rdata;
  wire [3:0] array_42_ext_RW0_wmask;
  wire [9:0] _GEN_0 = {RW0_wdata_3,RW0_wdata_2};
  wire [9:0] _GEN_1 = {RW0_wdata_1,RW0_wdata_0};
  wire [1:0] _GEN_2 = {RW0_wmask_3,RW0_wmask_2};
  wire [1:0] _GEN_3 = {RW0_wmask_1,RW0_wmask_0};
  array_42_ext array_42_ext (
    .RW0_addr(array_42_ext_RW0_addr),
    .RW0_en(array_42_ext_RW0_en),
    .RW0_clk(array_42_ext_RW0_clk),
    .RW0_wmode(array_42_ext_RW0_wmode),
    .RW0_wdata(array_42_ext_RW0_wdata),
    .RW0_rdata(array_42_ext_RW0_rdata),
    .RW0_wmask(array_42_ext_RW0_wmask)
  );
  assign array_42_ext_RW0_clk = RW0_clk;
  assign array_42_ext_RW0_en = RW0_en;
  assign array_42_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_42_ext_RW0_rdata[4:0];
  assign RW0_rdata_1 = array_42_ext_RW0_rdata[9:5];
  assign RW0_rdata_2 = array_42_ext_RW0_rdata[14:10];
  assign RW0_rdata_3 = array_42_ext_RW0_rdata[19:15];
  assign array_42_ext_RW0_wmode = RW0_wmode;
  assign array_42_ext_RW0_wdata = {_GEN_0,_GEN_1};
  assign array_42_ext_RW0_wmask = {_GEN_2,_GEN_3};
endmodule