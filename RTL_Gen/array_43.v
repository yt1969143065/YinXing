module array_43(
  input  [11:0] RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [15:0] RW0_wdata_0,
  input  [15:0] RW0_wdata_1,
  input  [15:0] RW0_wdata_2,
  input  [15:0] RW0_wdata_3,
  output [15:0] RW0_rdata_0,
  output [15:0] RW0_rdata_1,
  output [15:0] RW0_rdata_2,
  output [15:0] RW0_rdata_3,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3
);
  wire [11:0] array_43_ext_RW0_addr;
  wire  array_43_ext_RW0_en;
  wire  array_43_ext_RW0_clk;
  wire  array_43_ext_RW0_wmode;
  wire [63:0] array_43_ext_RW0_wdata;
  wire [63:0] array_43_ext_RW0_rdata;
  wire [3:0] array_43_ext_RW0_wmask;
  wire [31:0] _GEN_0 = {RW0_wdata_3,RW0_wdata_2};
  wire [31:0] _GEN_1 = {RW0_wdata_1,RW0_wdata_0};
  wire [1:0] _GEN_2 = {RW0_wmask_3,RW0_wmask_2};
  wire [1:0] _GEN_3 = {RW0_wmask_1,RW0_wmask_0};
  array_43_ext array_43_ext (
    .RW0_addr(array_43_ext_RW0_addr),
    .RW0_en(array_43_ext_RW0_en),
    .RW0_clk(array_43_ext_RW0_clk),
    .RW0_wmode(array_43_ext_RW0_wmode),
    .RW0_wdata(array_43_ext_RW0_wdata),
    .RW0_rdata(array_43_ext_RW0_rdata),
    .RW0_wmask(array_43_ext_RW0_wmask)
  );
  assign array_43_ext_RW0_clk = RW0_clk;
  assign array_43_ext_RW0_en = RW0_en;
  assign array_43_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_43_ext_RW0_rdata[15:0];
  assign RW0_rdata_1 = array_43_ext_RW0_rdata[31:16];
  assign RW0_rdata_2 = array_43_ext_RW0_rdata[47:32];
  assign RW0_rdata_3 = array_43_ext_RW0_rdata[63:48];
  assign array_43_ext_RW0_wmode = RW0_wmode;
  assign array_43_ext_RW0_wdata = {_GEN_0,_GEN_1};
  assign array_43_ext_RW0_wmask = {_GEN_2,_GEN_3};
endmodule
