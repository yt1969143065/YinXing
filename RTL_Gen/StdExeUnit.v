module StdExeUnit(
  output        io_fromInt_ready,
  input         io_fromInt_valid,
  input  [3:0]  io_fromInt_bits_uop_ctrl_fuType,
  input  [6:0]  io_fromInt_bits_uop_ctrl_fuOpType,
  input         io_fromInt_bits_uop_robIdx_flag,
  input  [6:0]  io_fromInt_bits_uop_robIdx_value,
  input  [4:0]  io_fromInt_bits_uop_sqIdx_value,
  input  [63:0] io_fromInt_bits_src_0,
  output        io_out_valid,
  output [3:0]  io_out_bits_uop_ctrl_fuType,
  output [6:0]  io_out_bits_uop_ctrl_fuOpType,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  output [4:0]  io_out_bits_uop_sqIdx_value,
  output [63:0] io_out_bits_data
);
  wire  std_io_in_valid; // @[Exu.scala 125:21]
  wire [63:0] std_io_in_bits_src_0; // @[Exu.scala 125:21]
  wire [3:0] std_io_in_bits_uop_ctrl_fuType; // @[Exu.scala 125:21]
  wire [6:0] std_io_in_bits_uop_ctrl_fuOpType; // @[Exu.scala 125:21]
  wire  std_io_in_bits_uop_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] std_io_in_bits_uop_robIdx_value; // @[Exu.scala 125:21]
  wire [4:0] std_io_in_bits_uop_sqIdx_value; // @[Exu.scala 125:21]
  wire  std_io_out_valid; // @[Exu.scala 125:21]
  wire [63:0] std_io_out_bits_data; // @[Exu.scala 125:21]
  wire [3:0] std_io_out_bits_uop_ctrl_fuType; // @[Exu.scala 125:21]
  wire [6:0] std_io_out_bits_uop_ctrl_fuOpType; // @[Exu.scala 125:21]
  wire  std_io_out_bits_uop_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] std_io_out_bits_uop_robIdx_value; // @[Exu.scala 125:21]
  wire [4:0] std_io_out_bits_uop_sqIdx_value; // @[Exu.scala 125:21]
  wire  mou_io_in_valid; // @[Exu.scala 125:21]
  wire [63:0] mou_io_in_bits_src_0; // @[Exu.scala 125:21]
  wire [3:0] mou_io_in_bits_uop_ctrl_fuType; // @[Exu.scala 125:21]
  wire [6:0] mou_io_in_bits_uop_ctrl_fuOpType; // @[Exu.scala 125:21]
  wire  mou_io_in_bits_uop_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] mou_io_in_bits_uop_robIdx_value; // @[Exu.scala 125:21]
  wire [4:0] mou_io_in_bits_uop_sqIdx_value; // @[Exu.scala 125:21]
  wire  mou_io_out_valid; // @[Exu.scala 125:21]
  wire [63:0] mou_io_out_bits_data; // @[Exu.scala 125:21]
  wire [3:0] mou_io_out_bits_uop_ctrl_fuType; // @[Exu.scala 125:21]
  wire [6:0] mou_io_out_bits_uop_ctrl_fuOpType; // @[Exu.scala 125:21]
  wire  mou_io_out_bits_uop_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] mou_io_out_bits_uop_robIdx_value; // @[Exu.scala 125:21]
  wire [4:0] mou_io_out_bits_uop_sqIdx_value; // @[Exu.scala 125:21]
  wire  arbSel_arb_io_in_0_valid; // @[Exu.scala 170:25]
  wire [3:0] arbSel_arb_io_in_0_bits_uop_ctrl_fuType; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_in_0_bits_uop_ctrl_fuOpType; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_0_bits_uop_robIdx_flag; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_in_0_bits_uop_robIdx_value; // @[Exu.scala 170:25]
  wire [4:0] arbSel_arb_io_in_0_bits_uop_sqIdx_value; // @[Exu.scala 170:25]
  wire [63:0] arbSel_arb_io_in_0_bits_data; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_valid; // @[Exu.scala 170:25]
  wire [3:0] arbSel_arb_io_in_1_bits_uop_ctrl_fuType; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_in_1_bits_uop_ctrl_fuOpType; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_bits_uop_robIdx_flag; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_in_1_bits_uop_robIdx_value; // @[Exu.scala 170:25]
  wire [4:0] arbSel_arb_io_in_1_bits_uop_sqIdx_value; // @[Exu.scala 170:25]
  wire [63:0] arbSel_arb_io_in_1_bits_data; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_valid; // @[Exu.scala 170:25]
  wire [3:0] arbSel_arb_io_out_bits_uop_ctrl_fuType; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_out_bits_uop_ctrl_fuOpType; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_bits_uop_robIdx_flag; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_out_bits_uop_robIdx_value; // @[Exu.scala 170:25]
  wire [4:0] arbSel_arb_io_out_bits_uop_sqIdx_value; // @[Exu.scala 170:25]
  wire [63:0] arbSel_arb_io_out_bits_data; // @[Exu.scala 170:25]
  wire  fuSel_0 = io_fromInt_bits_uop_ctrl_fuType[0]; // @[package.scala 98:46]
  wire [1:0] _io_fromInt_ready_T_3 = {fuSel_0,fuSel_0}; // @[Cat.scala 31:58]
  wire  _io_fromInt_ready_T_4 = |_io_fromInt_ready_T_3; // @[Exu.scala 220:42]
  Std std ( // @[Exu.scala 125:21]
    .io_in_valid(std_io_in_valid),
    .io_in_bits_src_0(std_io_in_bits_src_0),
    .io_in_bits_uop_ctrl_fuType(std_io_in_bits_uop_ctrl_fuType),
    .io_in_bits_uop_ctrl_fuOpType(std_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_robIdx_flag(std_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(std_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_sqIdx_value(std_io_in_bits_uop_sqIdx_value),
    .io_out_valid(std_io_out_valid),
    .io_out_bits_data(std_io_out_bits_data),
    .io_out_bits_uop_ctrl_fuType(std_io_out_bits_uop_ctrl_fuType),
    .io_out_bits_uop_ctrl_fuOpType(std_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_robIdx_flag(std_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(std_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_sqIdx_value(std_io_out_bits_uop_sqIdx_value)
  );
  Std mou ( // @[Exu.scala 125:21]
    .io_in_valid(mou_io_in_valid),
    .io_in_bits_src_0(mou_io_in_bits_src_0),
    .io_in_bits_uop_ctrl_fuType(mou_io_in_bits_uop_ctrl_fuType),
    .io_in_bits_uop_ctrl_fuOpType(mou_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_robIdx_flag(mou_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(mou_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_sqIdx_value(mou_io_in_bits_uop_sqIdx_value),
    .io_out_valid(mou_io_out_valid),
    .io_out_bits_data(mou_io_out_bits_data),
    .io_out_bits_uop_ctrl_fuType(mou_io_out_bits_uop_ctrl_fuType),
    .io_out_bits_uop_ctrl_fuOpType(mou_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_robIdx_flag(mou_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(mou_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_sqIdx_value(mou_io_out_bits_uop_sqIdx_value)
  );
  Arbiter_31 arbSel_arb ( // @[Exu.scala 170:25]
    .io_in_0_valid(arbSel_arb_io_in_0_valid),
    .io_in_0_bits_uop_ctrl_fuType(arbSel_arb_io_in_0_bits_uop_ctrl_fuType),
    .io_in_0_bits_uop_ctrl_fuOpType(arbSel_arb_io_in_0_bits_uop_ctrl_fuOpType),
    .io_in_0_bits_uop_robIdx_flag(arbSel_arb_io_in_0_bits_uop_robIdx_flag),
    .io_in_0_bits_uop_robIdx_value(arbSel_arb_io_in_0_bits_uop_robIdx_value),
    .io_in_0_bits_uop_sqIdx_value(arbSel_arb_io_in_0_bits_uop_sqIdx_value),
    .io_in_0_bits_data(arbSel_arb_io_in_0_bits_data),
    .io_in_1_valid(arbSel_arb_io_in_1_valid),
    .io_in_1_bits_uop_ctrl_fuType(arbSel_arb_io_in_1_bits_uop_ctrl_fuType),
    .io_in_1_bits_uop_ctrl_fuOpType(arbSel_arb_io_in_1_bits_uop_ctrl_fuOpType),
    .io_in_1_bits_uop_robIdx_flag(arbSel_arb_io_in_1_bits_uop_robIdx_flag),
    .io_in_1_bits_uop_robIdx_value(arbSel_arb_io_in_1_bits_uop_robIdx_value),
    .io_in_1_bits_uop_sqIdx_value(arbSel_arb_io_in_1_bits_uop_sqIdx_value),
    .io_in_1_bits_data(arbSel_arb_io_in_1_bits_data),
    .io_out_valid(arbSel_arb_io_out_valid),
    .io_out_bits_uop_ctrl_fuType(arbSel_arb_io_out_bits_uop_ctrl_fuType),
    .io_out_bits_uop_ctrl_fuOpType(arbSel_arb_io_out_bits_uop_ctrl_fuOpType),
    .io_out_bits_uop_robIdx_flag(arbSel_arb_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(arbSel_arb_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_sqIdx_value(arbSel_arb_io_out_bits_uop_sqIdx_value),
    .io_out_bits_data(arbSel_arb_io_out_bits_data)
  );
  assign io_fromInt_ready = ~io_fromInt_valid | _io_fromInt_ready_T_4; // @[Exu.scala 230:43]
  assign io_out_valid = arbSel_arb_io_out_valid; // @[Exu.scala 178:20]
  assign io_out_bits_uop_ctrl_fuType = arbSel_arb_io_out_bits_uop_ctrl_fuType; // @[Exu.scala 178:20]
  assign io_out_bits_uop_ctrl_fuOpType = arbSel_arb_io_out_bits_uop_ctrl_fuOpType; // @[Exu.scala 178:20]
  assign io_out_bits_uop_robIdx_flag = arbSel_arb_io_out_bits_uop_robIdx_flag; // @[Exu.scala 178:20]
  assign io_out_bits_uop_robIdx_value = arbSel_arb_io_out_bits_uop_robIdx_value; // @[Exu.scala 178:20]
  assign io_out_bits_uop_sqIdx_value = arbSel_arb_io_out_bits_uop_sqIdx_value; // @[Exu.scala 178:20]
  assign io_out_bits_data = arbSel_arb_io_out_bits_data; // @[Exu.scala 178:20]
  assign std_io_in_valid = io_fromInt_valid & fuSel_0; // @[Exu.scala 154:34]
  assign std_io_in_bits_src_0 = io_fromInt_bits_src_0; // @[Exu.scala 156:25]
  assign std_io_in_bits_uop_ctrl_fuType = io_fromInt_bits_uop_ctrl_fuType; // @[Exu.scala 155:25]
  assign std_io_in_bits_uop_ctrl_fuOpType = io_fromInt_bits_uop_ctrl_fuOpType; // @[Exu.scala 155:25]
  assign std_io_in_bits_uop_robIdx_flag = io_fromInt_bits_uop_robIdx_flag; // @[Exu.scala 155:25]
  assign std_io_in_bits_uop_robIdx_value = io_fromInt_bits_uop_robIdx_value; // @[Exu.scala 155:25]
  assign std_io_in_bits_uop_sqIdx_value = io_fromInt_bits_uop_sqIdx_value; // @[Exu.scala 155:25]
  assign mou_io_in_valid = io_fromInt_valid & fuSel_0; // @[Exu.scala 154:34]
  assign mou_io_in_bits_src_0 = io_fromInt_bits_src_0; // @[Exu.scala 156:25]
  assign mou_io_in_bits_uop_ctrl_fuType = io_fromInt_bits_uop_ctrl_fuType; // @[Exu.scala 155:25]
  assign mou_io_in_bits_uop_ctrl_fuOpType = io_fromInt_bits_uop_ctrl_fuOpType; // @[Exu.scala 155:25]
  assign mou_io_in_bits_uop_robIdx_flag = io_fromInt_bits_uop_robIdx_flag; // @[Exu.scala 155:25]
  assign mou_io_in_bits_uop_robIdx_value = io_fromInt_bits_uop_robIdx_value; // @[Exu.scala 155:25]
  assign mou_io_in_bits_uop_sqIdx_value = io_fromInt_bits_uop_sqIdx_value; // @[Exu.scala 155:25]
  assign arbSel_arb_io_in_0_valid = std_io_out_valid; // @[Exu.scala 173:19]
  assign arbSel_arb_io_in_0_bits_uop_ctrl_fuType = std_io_out_bits_uop_ctrl_fuType; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_ctrl_fuOpType = std_io_out_bits_uop_ctrl_fuOpType; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_robIdx_flag = std_io_out_bits_uop_robIdx_flag; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_robIdx_value = std_io_out_bits_uop_robIdx_value; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_sqIdx_value = std_io_out_bits_uop_sqIdx_value; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_data = std_io_out_bits_data; // @[Exu.scala 176:23]
  assign arbSel_arb_io_in_1_valid = mou_io_out_valid; // @[Exu.scala 173:19]
  assign arbSel_arb_io_in_1_bits_uop_ctrl_fuType = mou_io_out_bits_uop_ctrl_fuType; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_ctrl_fuOpType = mou_io_out_bits_uop_ctrl_fuOpType; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_robIdx_flag = mou_io_out_bits_uop_robIdx_flag; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_robIdx_value = mou_io_out_bits_uop_robIdx_value; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_sqIdx_value = mou_io_out_bits_uop_sqIdx_value; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_data = mou_io_out_bits_data; // @[Exu.scala 176:23]
endmodule
