module array_40(
  input  [8:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [18:0] RW0_wdata_0,
  input  [18:0] RW0_wdata_1,
  input  [18:0] RW0_wdata_2,
  input  [18:0] RW0_wdata_3,
  input  [18:0] RW0_wdata_4,
  input  [18:0] RW0_wdata_5,
  input  [18:0] RW0_wdata_6,
  input  [18:0] RW0_wdata_7,
  output [18:0] RW0_rdata_0,
  output [18:0] RW0_rdata_1,
  output [18:0] RW0_rdata_2,
  output [18:0] RW0_rdata_3,
  output [18:0] RW0_rdata_4,
  output [18:0] RW0_rdata_5,
  output [18:0] RW0_rdata_6,
  output [18:0] RW0_rdata_7,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3,
  input         RW0_wmask_4,
  input         RW0_wmask_5,
  input         RW0_wmask_6,
  input         RW0_wmask_7
);
  wire [8:0] array_40_ext_RW0_addr;
  wire  array_40_ext_RW0_en;
  wire  array_40_ext_RW0_clk;
  wire  array_40_ext_RW0_wmode;
  wire [151:0] array_40_ext_RW0_wdata;
  wire [151:0] array_40_ext_RW0_rdata;
  wire [7:0] array_40_ext_RW0_wmask;
  wire [75:0] _GEN_4 = {RW0_wdata_7,RW0_wdata_6,RW0_wdata_5,RW0_wdata_4};
  wire [75:0] _GEN_5 = {RW0_wdata_3,RW0_wdata_2,RW0_wdata_1,RW0_wdata_0};
  wire [3:0] _GEN_10 = {RW0_wmask_7,RW0_wmask_6,RW0_wmask_5,RW0_wmask_4};
  wire [3:0] _GEN_11 = {RW0_wmask_3,RW0_wmask_2,RW0_wmask_1,RW0_wmask_0};
  array_40_ext array_40_ext (
    .RW0_addr(array_40_ext_RW0_addr),
    .RW0_en(array_40_ext_RW0_en),
    .RW0_clk(array_40_ext_RW0_clk),
    .RW0_wmode(array_40_ext_RW0_wmode),
    .RW0_wdata(array_40_ext_RW0_wdata),
    .RW0_rdata(array_40_ext_RW0_rdata),
    .RW0_wmask(array_40_ext_RW0_wmask)
  );
  assign array_40_ext_RW0_clk = RW0_clk;
  assign array_40_ext_RW0_en = RW0_en;
  assign array_40_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_40_ext_RW0_rdata[18:0];
  assign RW0_rdata_1 = array_40_ext_RW0_rdata[37:19];
  assign RW0_rdata_2 = array_40_ext_RW0_rdata[56:38];
  assign RW0_rdata_3 = array_40_ext_RW0_rdata[75:57];
  assign RW0_rdata_4 = array_40_ext_RW0_rdata[94:76];
  assign RW0_rdata_5 = array_40_ext_RW0_rdata[113:95];
  assign RW0_rdata_6 = array_40_ext_RW0_rdata[132:114];
  assign RW0_rdata_7 = array_40_ext_RW0_rdata[151:133];
  assign array_40_ext_RW0_wmode = RW0_wmode;
  assign array_40_ext_RW0_wdata = {_GEN_4,_GEN_5};
  assign array_40_ext_RW0_wmask = {_GEN_10,_GEN_11};
endmodule
