module array_31(
  input  [7:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [20:0] RW0_wdata_0,
  input  [20:0] RW0_wdata_1,
  input  [20:0] RW0_wdata_2,
  input  [20:0] RW0_wdata_3,
  input  [20:0] RW0_wdata_4,
  input  [20:0] RW0_wdata_5,
  output [20:0] RW0_rdata_0,
  output [20:0] RW0_rdata_1,
  output [20:0] RW0_rdata_2,
  output [20:0] RW0_rdata_3,
  output [20:0] RW0_rdata_4,
  output [20:0] RW0_rdata_5,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3,
  input         RW0_wmask_4,
  input         RW0_wmask_5
);
  wire [7:0] array_31_ext_RW0_addr;
  wire  array_31_ext_RW0_en;
  wire  array_31_ext_RW0_clk;
  wire  array_31_ext_RW0_wmode;
  wire [125:0] array_31_ext_RW0_wdata;
  wire [125:0] array_31_ext_RW0_rdata;
  wire [5:0] array_31_ext_RW0_wmask;
  wire [62:0] _GEN_2 = {RW0_wdata_5,RW0_wdata_4,RW0_wdata_3};
  wire [62:0] _GEN_3 = {RW0_wdata_2,RW0_wdata_1,RW0_wdata_0};
  wire [2:0] _GEN_6 = {RW0_wmask_5,RW0_wmask_4,RW0_wmask_3};
  wire [2:0] _GEN_7 = {RW0_wmask_2,RW0_wmask_1,RW0_wmask_0};
  array_31_ext array_31_ext (
    .RW0_addr(array_31_ext_RW0_addr),
    .RW0_en(array_31_ext_RW0_en),
    .RW0_clk(array_31_ext_RW0_clk),
    .RW0_wmode(array_31_ext_RW0_wmode),
    .RW0_wdata(array_31_ext_RW0_wdata),
    .RW0_rdata(array_31_ext_RW0_rdata),
    .RW0_wmask(array_31_ext_RW0_wmask)
  );
  assign array_31_ext_RW0_clk = RW0_clk;
  assign array_31_ext_RW0_en = RW0_en;
  assign array_31_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_31_ext_RW0_rdata[20:0];
  assign RW0_rdata_1 = array_31_ext_RW0_rdata[41:21];
  assign RW0_rdata_2 = array_31_ext_RW0_rdata[62:42];
  assign RW0_rdata_3 = array_31_ext_RW0_rdata[83:63];
  assign RW0_rdata_4 = array_31_ext_RW0_rdata[104:84];
  assign RW0_rdata_5 = array_31_ext_RW0_rdata[125:105];
  assign array_31_ext_RW0_wmode = RW0_wmode;
  assign array_31_ext_RW0_wdata = {_GEN_2,_GEN_3};
  assign array_31_ext_RW0_wmask = {_GEN_6,_GEN_7};
endmodule
