module MulDivExeUnit(
  input         clock,
  input         reset,
  output        io_fromInt_ready,
  input         io_fromInt_valid,
  input         io_fromInt_bits_uop_cf_trigger_backendHit_0,
  input         io_fromInt_bits_uop_cf_trigger_backendHit_1,
  input         io_fromInt_bits_uop_cf_trigger_backendHit_2,
  input         io_fromInt_bits_uop_cf_trigger_backendHit_3,
  input         io_fromInt_bits_uop_cf_trigger_backendHit_4,
  input         io_fromInt_bits_uop_cf_trigger_backendHit_5,
  input  [3:0]  io_fromInt_bits_uop_ctrl_fuType,
  input  [6:0]  io_fromInt_bits_uop_ctrl_fuOpType,
  input         io_fromInt_bits_uop_ctrl_rfWen,
  input         io_fromInt_bits_uop_ctrl_fpWen,
  input  [6:0]  io_fromInt_bits_uop_pdest,
  input         io_fromInt_bits_uop_robIdx_flag,
  input  [6:0]  io_fromInt_bits_uop_robIdx_value,
  input  [63:0] io_fromInt_bits_src_0,
  input  [63:0] io_fromInt_bits_src_1,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_out_valid,
  output        io_out_bits_uop_cf_trigger_backendHit_0,
  output        io_out_bits_uop_cf_trigger_backendHit_1,
  output        io_out_bits_uop_cf_trigger_backendHit_2,
  output        io_out_bits_uop_cf_trigger_backendHit_3,
  output        io_out_bits_uop_cf_trigger_backendHit_4,
  output        io_out_bits_uop_cf_trigger_backendHit_5,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  output [63:0] io_out_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  mul_clock; // @[Exu.scala 125:21]
  wire  mul_reset; // @[Exu.scala 125:21]
  wire  mul_io_in_ready; // @[Exu.scala 125:21]
  wire  mul_io_in_valid; // @[Exu.scala 125:21]
  wire [64:0] mul_io_in_bits_src_0; // @[Exu.scala 125:21]
  wire [64:0] mul_io_in_bits_src_1; // @[Exu.scala 125:21]
  wire  mul_io_in_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 125:21]
  wire  mul_io_in_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 125:21]
  wire  mul_io_in_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 125:21]
  wire  mul_io_in_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 125:21]
  wire  mul_io_in_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 125:21]
  wire  mul_io_in_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 125:21]
  wire  mul_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 125:21]
  wire  mul_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 125:21]
  wire [6:0] mul_io_in_bits_uop_pdest; // @[Exu.scala 125:21]
  wire  mul_io_in_bits_uop_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] mul_io_in_bits_uop_robIdx_value; // @[Exu.scala 125:21]
  wire  mul_io_out_ready; // @[Exu.scala 125:21]
  wire  mul_io_out_valid; // @[Exu.scala 125:21]
  wire [64:0] mul_io_out_bits_data; // @[Exu.scala 125:21]
  wire  mul_io_out_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 125:21]
  wire  mul_io_out_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 125:21]
  wire  mul_io_out_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 125:21]
  wire  mul_io_out_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 125:21]
  wire  mul_io_out_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 125:21]
  wire  mul_io_out_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 125:21]
  wire  mul_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 125:21]
  wire  mul_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 125:21]
  wire [6:0] mul_io_out_bits_uop_pdest; // @[Exu.scala 125:21]
  wire  mul_io_out_bits_uop_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] mul_io_out_bits_uop_robIdx_value; // @[Exu.scala 125:21]
  wire  mul_io_redirectIn_valid; // @[Exu.scala 125:21]
  wire  mul_io_redirectIn_bits_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] mul_io_redirectIn_bits_robIdx_value; // @[Exu.scala 125:21]
  wire  mul_io_redirectIn_bits_level; // @[Exu.scala 125:21]
  wire  mul_ctrl_isW; // @[Exu.scala 125:21]
  wire  mul_ctrl_isHi; // @[Exu.scala 125:21]
  wire  div_clock; // @[Exu.scala 125:21]
  wire  div_reset; // @[Exu.scala 125:21]
  wire  div_io_in_ready; // @[Exu.scala 125:21]
  wire  div_io_in_valid; // @[Exu.scala 125:21]
  wire [63:0] div_io_in_bits_src_0; // @[Exu.scala 125:21]
  wire [63:0] div_io_in_bits_src_1; // @[Exu.scala 125:21]
  wire  div_io_in_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 125:21]
  wire  div_io_in_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 125:21]
  wire  div_io_in_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 125:21]
  wire  div_io_in_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 125:21]
  wire  div_io_in_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 125:21]
  wire  div_io_in_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 125:21]
  wire  div_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 125:21]
  wire  div_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 125:21]
  wire [6:0] div_io_in_bits_uop_pdest; // @[Exu.scala 125:21]
  wire  div_io_in_bits_uop_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] div_io_in_bits_uop_robIdx_value; // @[Exu.scala 125:21]
  wire  div_io_out_ready; // @[Exu.scala 125:21]
  wire  div_io_out_valid; // @[Exu.scala 125:21]
  wire [63:0] div_io_out_bits_data; // @[Exu.scala 125:21]
  wire  div_io_out_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 125:21]
  wire  div_io_out_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 125:21]
  wire  div_io_out_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 125:21]
  wire  div_io_out_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 125:21]
  wire  div_io_out_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 125:21]
  wire  div_io_out_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 125:21]
  wire  div_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 125:21]
  wire  div_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 125:21]
  wire [6:0] div_io_out_bits_uop_pdest; // @[Exu.scala 125:21]
  wire  div_io_out_bits_uop_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] div_io_out_bits_uop_robIdx_value; // @[Exu.scala 125:21]
  wire  div_io_redirectIn_valid; // @[Exu.scala 125:21]
  wire  div_io_redirectIn_bits_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] div_io_redirectIn_bits_robIdx_value; // @[Exu.scala 125:21]
  wire  div_io_redirectIn_bits_level; // @[Exu.scala 125:21]
  wire  div_ctrl_sign; // @[Exu.scala 125:21]
  wire  div_ctrl_isW; // @[Exu.scala 125:21]
  wire  div_ctrl_isHi; // @[Exu.scala 125:21]
  wire  bku_clock; // @[Exu.scala 125:21]
  wire  bku_reset; // @[Exu.scala 125:21]
  wire  bku_io_in_ready; // @[Exu.scala 125:21]
  wire  bku_io_in_valid; // @[Exu.scala 125:21]
  wire [63:0] bku_io_in_bits_src_0; // @[Exu.scala 125:21]
  wire [63:0] bku_io_in_bits_src_1; // @[Exu.scala 125:21]
  wire  bku_io_in_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 125:21]
  wire  bku_io_in_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 125:21]
  wire  bku_io_in_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 125:21]
  wire  bku_io_in_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 125:21]
  wire  bku_io_in_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 125:21]
  wire  bku_io_in_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 125:21]
  wire [6:0] bku_io_in_bits_uop_ctrl_fuOpType; // @[Exu.scala 125:21]
  wire  bku_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 125:21]
  wire  bku_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 125:21]
  wire [6:0] bku_io_in_bits_uop_pdest; // @[Exu.scala 125:21]
  wire  bku_io_in_bits_uop_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] bku_io_in_bits_uop_robIdx_value; // @[Exu.scala 125:21]
  wire  bku_io_out_ready; // @[Exu.scala 125:21]
  wire  bku_io_out_valid; // @[Exu.scala 125:21]
  wire [63:0] bku_io_out_bits_data; // @[Exu.scala 125:21]
  wire  bku_io_out_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 125:21]
  wire  bku_io_out_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 125:21]
  wire  bku_io_out_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 125:21]
  wire  bku_io_out_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 125:21]
  wire  bku_io_out_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 125:21]
  wire  bku_io_out_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 125:21]
  wire  bku_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 125:21]
  wire  bku_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 125:21]
  wire [6:0] bku_io_out_bits_uop_pdest; // @[Exu.scala 125:21]
  wire  bku_io_out_bits_uop_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] bku_io_out_bits_uop_robIdx_value; // @[Exu.scala 125:21]
  wire  bku_io_redirectIn_valid; // @[Exu.scala 125:21]
  wire  bku_io_redirectIn_bits_robIdx_flag; // @[Exu.scala 125:21]
  wire [6:0] bku_io_redirectIn_bits_robIdx_value; // @[Exu.scala 125:21]
  wire  bku_io_redirectIn_bits_level; // @[Exu.scala 125:21]
  wire  arbSel_arb_io_in_0_ready; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_0_valid; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_0_bits_uop_ctrl_rfWen; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_0_bits_uop_ctrl_fpWen; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_in_0_bits_uop_pdest; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_0_bits_uop_robIdx_flag; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_in_0_bits_uop_robIdx_value; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_ready; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_valid; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_bits_uop_ctrl_rfWen; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_bits_uop_ctrl_fpWen; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_in_1_bits_uop_pdest; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_1_bits_uop_robIdx_flag; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_in_1_bits_uop_robIdx_value; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_2_ready; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_2_valid; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_2_bits_uop_ctrl_rfWen; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_2_bits_uop_ctrl_fpWen; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_in_2_bits_uop_pdest; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_in_2_bits_uop_robIdx_flag; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_in_2_bits_uop_robIdx_value; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_ready; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_valid; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_out_bits_uop_pdest; // @[Exu.scala 170:25]
  wire  arbSel_arb_io_out_bits_uop_robIdx_flag; // @[Exu.scala 170:25]
  wire [6:0] arbSel_arb_io_out_bits_uop_robIdx_value; // @[Exu.scala 170:25]
  wire  fuSel_0 = io_fromInt_bits_uop_ctrl_fuType == 4'h4; // @[package.scala 669:47]
  wire  fuSel_1 = io_fromInt_bits_uop_ctrl_fuType == 4'h5; // @[package.scala 655:47]
  wire  fuSel_2 = io_fromInt_bits_uop_ctrl_fuType == 4'h7; // @[package.scala 683:47]
  reg  arbSelReg_0; // @[Exu.scala 192:37]
  reg  arbSelReg_1; // @[Exu.scala 192:37]
  reg  arbSelReg_2; // @[Exu.scala 192:37]
  wire [64:0] _dataReg_T = arbSelReg_0 ? mul_io_out_bits_data : 65'h0; // @[Mux.scala 27:73]
  wire [63:0] _dataReg_T_1 = arbSelReg_1 ? div_io_out_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _dataReg_T_2 = arbSelReg_2 ? bku_io_out_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [64:0] _GEN_1 = {{1'd0}, _dataReg_T_1}; // @[Mux.scala 27:73]
  wire [64:0] _dataReg_T_3 = _dataReg_T | _GEN_1; // @[Mux.scala 27:73]
  wire [64:0] _GEN_2 = {{1'd0}, _dataReg_T_2}; // @[Mux.scala 27:73]
  wire [64:0] dataReg = _dataReg_T_3 | _GEN_2; // @[Mux.scala 27:73]
  wire  _io_fromInt_ready_T_1 = mul_io_in_ready & fuSel_0; // @[Exu.scala 220:29]
  wire  _io_fromInt_ready_T_2 = div_io_in_ready & fuSel_1; // @[Exu.scala 220:29]
  wire  _io_fromInt_ready_T_3 = bku_io_in_ready & fuSel_2; // @[Exu.scala 220:29]
  wire [2:0] _io_fromInt_ready_T_4 = {_io_fromInt_ready_T_1,_io_fromInt_ready_T_2,_io_fromInt_ready_T_3}; // @[Cat.scala 31:58]
  wire  _io_fromInt_ready_T_5 = |_io_fromInt_ready_T_4; // @[Exu.scala 220:42]
  wire [1:0] op = io_fromInt_bits_uop_ctrl_fuOpType[1:0]; // @[package.scala 360:32]
  wire [64:0] _mul_io_in_bits_src_0_T = {1'h0,io_fromInt_bits_src_0}; // @[Cat.scala 31:58]
  wire  mul_io_in_bits_src_0_signBit = io_fromInt_bits_src_0[63]; // @[BitUtils.scala 43:20]
  wire [64:0] _mul_io_in_bits_src_0_T_1 = {mul_io_in_bits_src_0_signBit,io_fromInt_bits_src_0}; // @[Cat.scala 31:58]
  wire  _mul_io_in_bits_src_0_T_4 = 2'h0 == op; // @[LookupTree.scala 25:34]
  wire  _mul_io_in_bits_src_0_T_5 = 2'h1 == op; // @[LookupTree.scala 25:34]
  wire  _mul_io_in_bits_src_0_T_6 = 2'h2 == op; // @[LookupTree.scala 25:34]
  wire  _mul_io_in_bits_src_0_T_7 = 2'h3 == op; // @[LookupTree.scala 25:34]
  wire [64:0] _mul_io_in_bits_src_0_T_8 = _mul_io_in_bits_src_0_T_4 ? _mul_io_in_bits_src_0_T : 65'h0; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_0_T_9 = _mul_io_in_bits_src_0_T_5 ? _mul_io_in_bits_src_0_T_1 : 65'h0; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_0_T_10 = _mul_io_in_bits_src_0_T_6 ? _mul_io_in_bits_src_0_T_1 : 65'h0; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_0_T_11 = _mul_io_in_bits_src_0_T_7 ? _mul_io_in_bits_src_0_T : 65'h0; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_0_T_12 = _mul_io_in_bits_src_0_T_8 | _mul_io_in_bits_src_0_T_9; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_0_T_13 = _mul_io_in_bits_src_0_T_12 | _mul_io_in_bits_src_0_T_10; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_0_T_14 = _mul_io_in_bits_src_0_T_13 | _mul_io_in_bits_src_0_T_11; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_1_T = {1'h0,io_fromInt_bits_src_1}; // @[Cat.scala 31:58]
  wire  mul_io_in_bits_src_1_signBit = io_fromInt_bits_src_1[63]; // @[BitUtils.scala 43:20]
  wire [64:0] _mul_io_in_bits_src_1_T_1 = {mul_io_in_bits_src_1_signBit,io_fromInt_bits_src_1}; // @[Cat.scala 31:58]
  wire [64:0] _mul_io_in_bits_src_1_T_8 = _mul_io_in_bits_src_0_T_4 ? _mul_io_in_bits_src_1_T : 65'h0; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_1_T_9 = _mul_io_in_bits_src_0_T_5 ? _mul_io_in_bits_src_1_T_1 : 65'h0; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_1_T_10 = _mul_io_in_bits_src_0_T_6 ? _mul_io_in_bits_src_1_T : 65'h0; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_1_T_11 = _mul_io_in_bits_src_0_T_7 ? _mul_io_in_bits_src_1_T : 65'h0; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_1_T_12 = _mul_io_in_bits_src_1_T_8 | _mul_io_in_bits_src_1_T_9; // @[Mux.scala 27:73]
  wire [64:0] _mul_io_in_bits_src_1_T_13 = _mul_io_in_bits_src_1_T_12 | _mul_io_in_bits_src_1_T_10; // @[Mux.scala 27:73]
  wire  isW = io_fromInt_bits_uop_ctrl_fuOpType[2]; // @[package.scala 358:27]
  wire  _isH_T_4 = ~io_fromInt_bits_uop_ctrl_fuOpType[4]; // @[package.scala 354:27]
  wire  isDivSign = io_fromInt_bits_uop_ctrl_fuOpType[4] & ~io_fromInt_bits_uop_ctrl_fuOpType[1]; // @[package.scala 357:41]
  wire  div_io_in_bits_src_0_signBit = io_fromInt_bits_src_0[31]; // @[BitUtils.scala 43:20]
  wire [31:0] _div_io_in_bits_src_0_T_2 = div_io_in_bits_src_0_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _div_io_in_bits_src_0_T_3 = {_div_io_in_bits_src_0_T_2,io_fromInt_bits_src_0[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _div_io_in_bits_src_0_T_5 = {32'h0,io_fromInt_bits_src_0[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _div_io_in_bits_src_0_T_6 = isDivSign ? _div_io_in_bits_src_0_T_3 : _div_io_in_bits_src_0_T_5; // @[MulDivExeUnit.scala 75:8]
  wire  div_io_in_bits_src_1_signBit = io_fromInt_bits_src_1[31]; // @[BitUtils.scala 43:20]
  wire [31:0] _div_io_in_bits_src_1_T_2 = div_io_in_bits_src_1_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _div_io_in_bits_src_1_T_3 = {_div_io_in_bits_src_1_T_2,io_fromInt_bits_src_1[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _div_io_in_bits_src_1_T_5 = {32'h0,io_fromInt_bits_src_1[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _div_io_in_bits_src_1_T_6 = isDivSign ? _div_io_in_bits_src_1_T_3 : _div_io_in_bits_src_1_T_5; // @[MulDivExeUnit.scala 75:8]
  ArrayMultiplier mul ( // @[Exu.scala 125:21]
    .clock(mul_clock),
    .reset(mul_reset),
    .io_in_ready(mul_io_in_ready),
    .io_in_valid(mul_io_in_valid),
    .io_in_bits_src_0(mul_io_in_bits_src_0),
    .io_in_bits_src_1(mul_io_in_bits_src_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(mul_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(mul_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(mul_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(mul_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(mul_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(mul_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_ctrl_rfWen(mul_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(mul_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_pdest(mul_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(mul_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(mul_io_in_bits_uop_robIdx_value),
    .io_out_ready(mul_io_out_ready),
    .io_out_valid(mul_io_out_valid),
    .io_out_bits_data(mul_io_out_bits_data),
    .io_out_bits_uop_cf_trigger_backendHit_0(mul_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(mul_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(mul_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(mul_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(mul_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(mul_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_ctrl_rfWen(mul_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(mul_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(mul_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(mul_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(mul_io_out_bits_uop_robIdx_value),
    .io_redirectIn_valid(mul_io_redirectIn_valid),
    .io_redirectIn_bits_robIdx_flag(mul_io_redirectIn_bits_robIdx_flag),
    .io_redirectIn_bits_robIdx_value(mul_io_redirectIn_bits_robIdx_value),
    .io_redirectIn_bits_level(mul_io_redirectIn_bits_level),
    .ctrl_isW(mul_ctrl_isW),
    .ctrl_isHi(mul_ctrl_isHi)
  );
  SRT16Divider div ( // @[Exu.scala 125:21]
    .clock(div_clock),
    .reset(div_reset),
    .io_in_ready(div_io_in_ready),
    .io_in_valid(div_io_in_valid),
    .io_in_bits_src_0(div_io_in_bits_src_0),
    .io_in_bits_src_1(div_io_in_bits_src_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(div_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(div_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(div_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(div_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(div_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(div_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_ctrl_rfWen(div_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(div_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_pdest(div_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(div_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(div_io_in_bits_uop_robIdx_value),
    .io_out_ready(div_io_out_ready),
    .io_out_valid(div_io_out_valid),
    .io_out_bits_data(div_io_out_bits_data),
    .io_out_bits_uop_cf_trigger_backendHit_0(div_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(div_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(div_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(div_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(div_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(div_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_ctrl_rfWen(div_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(div_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(div_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(div_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(div_io_out_bits_uop_robIdx_value),
    .io_redirectIn_valid(div_io_redirectIn_valid),
    .io_redirectIn_bits_robIdx_flag(div_io_redirectIn_bits_robIdx_flag),
    .io_redirectIn_bits_robIdx_value(div_io_redirectIn_bits_robIdx_value),
    .io_redirectIn_bits_level(div_io_redirectIn_bits_level),
    .ctrl_sign(div_ctrl_sign),
    .ctrl_isW(div_ctrl_isW),
    .ctrl_isHi(div_ctrl_isHi)
  );
  Bku bku ( // @[Exu.scala 125:21]
    .clock(bku_clock),
    .reset(bku_reset),
    .io_in_ready(bku_io_in_ready),
    .io_in_valid(bku_io_in_valid),
    .io_in_bits_src_0(bku_io_in_bits_src_0),
    .io_in_bits_src_1(bku_io_in_bits_src_1),
    .io_in_bits_uop_cf_trigger_backendHit_0(bku_io_in_bits_uop_cf_trigger_backendHit_0),
    .io_in_bits_uop_cf_trigger_backendHit_1(bku_io_in_bits_uop_cf_trigger_backendHit_1),
    .io_in_bits_uop_cf_trigger_backendHit_2(bku_io_in_bits_uop_cf_trigger_backendHit_2),
    .io_in_bits_uop_cf_trigger_backendHit_3(bku_io_in_bits_uop_cf_trigger_backendHit_3),
    .io_in_bits_uop_cf_trigger_backendHit_4(bku_io_in_bits_uop_cf_trigger_backendHit_4),
    .io_in_bits_uop_cf_trigger_backendHit_5(bku_io_in_bits_uop_cf_trigger_backendHit_5),
    .io_in_bits_uop_ctrl_fuOpType(bku_io_in_bits_uop_ctrl_fuOpType),
    .io_in_bits_uop_ctrl_rfWen(bku_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(bku_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_pdest(bku_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(bku_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(bku_io_in_bits_uop_robIdx_value),
    .io_out_ready(bku_io_out_ready),
    .io_out_valid(bku_io_out_valid),
    .io_out_bits_data(bku_io_out_bits_data),
    .io_out_bits_uop_cf_trigger_backendHit_0(bku_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(bku_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(bku_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(bku_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(bku_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(bku_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_ctrl_rfWen(bku_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(bku_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(bku_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(bku_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(bku_io_out_bits_uop_robIdx_value),
    .io_redirectIn_valid(bku_io_redirectIn_valid),
    .io_redirectIn_bits_robIdx_flag(bku_io_redirectIn_bits_robIdx_flag),
    .io_redirectIn_bits_robIdx_value(bku_io_redirectIn_bits_robIdx_value),
    .io_redirectIn_bits_level(bku_io_redirectIn_bits_level)
  );
  Arbiter_18 arbSel_arb ( // @[Exu.scala 170:25]
    .io_in_0_ready(arbSel_arb_io_in_0_ready),
    .io_in_0_valid(arbSel_arb_io_in_0_valid),
    .io_in_0_bits_uop_cf_trigger_backendHit_0(arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_0),
    .io_in_0_bits_uop_cf_trigger_backendHit_1(arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_1),
    .io_in_0_bits_uop_cf_trigger_backendHit_2(arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_2),
    .io_in_0_bits_uop_cf_trigger_backendHit_3(arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_3),
    .io_in_0_bits_uop_cf_trigger_backendHit_4(arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_4),
    .io_in_0_bits_uop_cf_trigger_backendHit_5(arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_5),
    .io_in_0_bits_uop_ctrl_rfWen(arbSel_arb_io_in_0_bits_uop_ctrl_rfWen),
    .io_in_0_bits_uop_ctrl_fpWen(arbSel_arb_io_in_0_bits_uop_ctrl_fpWen),
    .io_in_0_bits_uop_pdest(arbSel_arb_io_in_0_bits_uop_pdest),
    .io_in_0_bits_uop_robIdx_flag(arbSel_arb_io_in_0_bits_uop_robIdx_flag),
    .io_in_0_bits_uop_robIdx_value(arbSel_arb_io_in_0_bits_uop_robIdx_value),
    .io_in_1_ready(arbSel_arb_io_in_1_ready),
    .io_in_1_valid(arbSel_arb_io_in_1_valid),
    .io_in_1_bits_uop_cf_trigger_backendHit_0(arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_0),
    .io_in_1_bits_uop_cf_trigger_backendHit_1(arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_1),
    .io_in_1_bits_uop_cf_trigger_backendHit_2(arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_2),
    .io_in_1_bits_uop_cf_trigger_backendHit_3(arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_3),
    .io_in_1_bits_uop_cf_trigger_backendHit_4(arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_4),
    .io_in_1_bits_uop_cf_trigger_backendHit_5(arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_5),
    .io_in_1_bits_uop_ctrl_rfWen(arbSel_arb_io_in_1_bits_uop_ctrl_rfWen),
    .io_in_1_bits_uop_ctrl_fpWen(arbSel_arb_io_in_1_bits_uop_ctrl_fpWen),
    .io_in_1_bits_uop_pdest(arbSel_arb_io_in_1_bits_uop_pdest),
    .io_in_1_bits_uop_robIdx_flag(arbSel_arb_io_in_1_bits_uop_robIdx_flag),
    .io_in_1_bits_uop_robIdx_value(arbSel_arb_io_in_1_bits_uop_robIdx_value),
    .io_in_2_ready(arbSel_arb_io_in_2_ready),
    .io_in_2_valid(arbSel_arb_io_in_2_valid),
    .io_in_2_bits_uop_cf_trigger_backendHit_0(arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_0),
    .io_in_2_bits_uop_cf_trigger_backendHit_1(arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_1),
    .io_in_2_bits_uop_cf_trigger_backendHit_2(arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_2),
    .io_in_2_bits_uop_cf_trigger_backendHit_3(arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_3),
    .io_in_2_bits_uop_cf_trigger_backendHit_4(arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_4),
    .io_in_2_bits_uop_cf_trigger_backendHit_5(arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_5),
    .io_in_2_bits_uop_ctrl_rfWen(arbSel_arb_io_in_2_bits_uop_ctrl_rfWen),
    .io_in_2_bits_uop_ctrl_fpWen(arbSel_arb_io_in_2_bits_uop_ctrl_fpWen),
    .io_in_2_bits_uop_pdest(arbSel_arb_io_in_2_bits_uop_pdest),
    .io_in_2_bits_uop_robIdx_flag(arbSel_arb_io_in_2_bits_uop_robIdx_flag),
    .io_in_2_bits_uop_robIdx_value(arbSel_arb_io_in_2_bits_uop_robIdx_value),
    .io_out_ready(arbSel_arb_io_out_ready),
    .io_out_valid(arbSel_arb_io_out_valid),
    .io_out_bits_uop_cf_trigger_backendHit_0(arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_ctrl_rfWen(arbSel_arb_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(arbSel_arb_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(arbSel_arb_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(arbSel_arb_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(arbSel_arb_io_out_bits_uop_robIdx_value)
  );
  assign io_fromInt_ready = ~io_fromInt_valid | _io_fromInt_ready_T_5; // @[Exu.scala 230:43]
  assign io_out_valid = arbSel_arb_io_out_valid; // @[Exu.scala 178:20]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 178:20]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 178:20]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 178:20]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 178:20]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 178:20]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = arbSel_arb_io_out_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 178:20]
  assign io_out_bits_uop_ctrl_rfWen = arbSel_arb_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 178:20]
  assign io_out_bits_uop_ctrl_fpWen = arbSel_arb_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 178:20]
  assign io_out_bits_uop_pdest = arbSel_arb_io_out_bits_uop_pdest; // @[Exu.scala 178:20]
  assign io_out_bits_uop_robIdx_flag = arbSel_arb_io_out_bits_uop_robIdx_flag; // @[Exu.scala 178:20]
  assign io_out_bits_uop_robIdx_value = arbSel_arb_io_out_bits_uop_robIdx_value; // @[Exu.scala 178:20]
  assign io_out_bits_data = dataReg[63:0]; // @[Exu.scala 202:22]
  assign mul_clock = clock;
  assign mul_reset = reset;
  assign mul_io_in_valid = io_fromInt_valid & fuSel_0; // @[Exu.scala 154:34]
  assign mul_io_in_bits_src_0 = io_fromInt_bits_uop_ctrl_fuOpType[3] ? {{58'd0}, io_fromInt_bits_src_0[6:0]} :
    _mul_io_in_bits_src_0_T_14; // @[MulDivExeUnit.scala 58:18 54:25 59:27]
  assign mul_io_in_bits_src_1 = _mul_io_in_bits_src_1_T_13 | _mul_io_in_bits_src_1_T_11; // @[Mux.scala 27:73]
  assign mul_io_in_bits_uop_cf_trigger_backendHit_0 = io_fromInt_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 155:25]
  assign mul_io_in_bits_uop_cf_trigger_backendHit_1 = io_fromInt_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 155:25]
  assign mul_io_in_bits_uop_cf_trigger_backendHit_2 = io_fromInt_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 155:25]
  assign mul_io_in_bits_uop_cf_trigger_backendHit_3 = io_fromInt_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 155:25]
  assign mul_io_in_bits_uop_cf_trigger_backendHit_4 = io_fromInt_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 155:25]
  assign mul_io_in_bits_uop_cf_trigger_backendHit_5 = io_fromInt_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 155:25]
  assign mul_io_in_bits_uop_ctrl_rfWen = io_fromInt_bits_uop_ctrl_rfWen; // @[Exu.scala 155:25]
  assign mul_io_in_bits_uop_ctrl_fpWen = io_fromInt_bits_uop_ctrl_fpWen; // @[Exu.scala 155:25]
  assign mul_io_in_bits_uop_pdest = io_fromInt_bits_uop_pdest; // @[Exu.scala 155:25]
  assign mul_io_in_bits_uop_robIdx_flag = io_fromInt_bits_uop_robIdx_flag; // @[Exu.scala 155:25]
  assign mul_io_in_bits_uop_robIdx_value = io_fromInt_bits_uop_robIdx_value; // @[Exu.scala 155:25]
  assign mul_io_out_ready = arbSel_arb_io_in_0_ready; // @[Exu.scala 172:19]
  assign mul_io_redirectIn_valid = io_redirect_valid; // @[Exu.scala 142:22]
  assign mul_io_redirectIn_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Exu.scala 142:22]
  assign mul_io_redirectIn_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Exu.scala 142:22]
  assign mul_io_redirectIn_bits_level = io_redirect_bits_level; // @[Exu.scala 142:22]
  assign mul_ctrl_isW = io_fromInt_bits_uop_ctrl_fuOpType[2]; // @[package.scala 358:27]
  assign mul_ctrl_isHi = io_fromInt_bits_uop_ctrl_fuOpType[4] & io_fromInt_bits_uop_ctrl_fuOpType[0] | _isH_T_4 & op != 2'h0
    ; // @[package.scala 359:46]
  assign div_clock = clock;
  assign div_reset = reset;
  assign div_io_in_valid = io_fromInt_valid & fuSel_1; // @[Exu.scala 154:34]
  assign div_io_in_bits_src_0 = isW ? _div_io_in_bits_src_0_T_6 : io_fromInt_bits_src_0; // @[MulDivExeUnit.scala 73:38]
  assign div_io_in_bits_src_1 = isW ? _div_io_in_bits_src_1_T_6 : io_fromInt_bits_src_1; // @[MulDivExeUnit.scala 73:38]
  assign div_io_in_bits_uop_cf_trigger_backendHit_0 = io_fromInt_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 155:25]
  assign div_io_in_bits_uop_cf_trigger_backendHit_1 = io_fromInt_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 155:25]
  assign div_io_in_bits_uop_cf_trigger_backendHit_2 = io_fromInt_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 155:25]
  assign div_io_in_bits_uop_cf_trigger_backendHit_3 = io_fromInt_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 155:25]
  assign div_io_in_bits_uop_cf_trigger_backendHit_4 = io_fromInt_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 155:25]
  assign div_io_in_bits_uop_cf_trigger_backendHit_5 = io_fromInt_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 155:25]
  assign div_io_in_bits_uop_ctrl_rfWen = io_fromInt_bits_uop_ctrl_rfWen; // @[Exu.scala 155:25]
  assign div_io_in_bits_uop_ctrl_fpWen = io_fromInt_bits_uop_ctrl_fpWen; // @[Exu.scala 155:25]
  assign div_io_in_bits_uop_pdest = io_fromInt_bits_uop_pdest; // @[Exu.scala 155:25]
  assign div_io_in_bits_uop_robIdx_flag = io_fromInt_bits_uop_robIdx_flag; // @[Exu.scala 155:25]
  assign div_io_in_bits_uop_robIdx_value = io_fromInt_bits_uop_robIdx_value; // @[Exu.scala 155:25]
  assign div_io_out_ready = arbSel_arb_io_in_1_ready; // @[Exu.scala 172:19]
  assign div_io_redirectIn_valid = io_redirect_valid; // @[Exu.scala 142:22]
  assign div_io_redirectIn_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Exu.scala 142:22]
  assign div_io_redirectIn_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Exu.scala 142:22]
  assign div_io_redirectIn_bits_level = io_redirect_bits_level; // @[Exu.scala 142:22]
  assign div_ctrl_sign = io_fromInt_bits_uop_ctrl_fuOpType[4] & ~io_fromInt_bits_uop_ctrl_fuOpType[1]; // @[package.scala 357:41]
  assign div_ctrl_isW = io_fromInt_bits_uop_ctrl_fuOpType[2]; // @[package.scala 358:27]
  assign div_ctrl_isHi = io_fromInt_bits_uop_ctrl_fuOpType[4] & io_fromInt_bits_uop_ctrl_fuOpType[0] | _isH_T_4 & op != 2'h0
    ; // @[package.scala 359:46]
  assign bku_clock = clock;
  assign bku_reset = reset;
  assign bku_io_in_valid = io_fromInt_valid & fuSel_2; // @[Exu.scala 154:34]
  assign bku_io_in_bits_src_0 = io_fromInt_bits_src_0; // @[Exu.scala 156:25]
  assign bku_io_in_bits_src_1 = io_fromInt_bits_src_1; // @[Exu.scala 156:25]
  assign bku_io_in_bits_uop_cf_trigger_backendHit_0 = io_fromInt_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 155:25]
  assign bku_io_in_bits_uop_cf_trigger_backendHit_1 = io_fromInt_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 155:25]
  assign bku_io_in_bits_uop_cf_trigger_backendHit_2 = io_fromInt_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 155:25]
  assign bku_io_in_bits_uop_cf_trigger_backendHit_3 = io_fromInt_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 155:25]
  assign bku_io_in_bits_uop_cf_trigger_backendHit_4 = io_fromInt_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 155:25]
  assign bku_io_in_bits_uop_cf_trigger_backendHit_5 = io_fromInt_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 155:25]
  assign bku_io_in_bits_uop_ctrl_fuOpType = io_fromInt_bits_uop_ctrl_fuOpType; // @[Exu.scala 155:25]
  assign bku_io_in_bits_uop_ctrl_rfWen = io_fromInt_bits_uop_ctrl_rfWen; // @[Exu.scala 155:25]
  assign bku_io_in_bits_uop_ctrl_fpWen = io_fromInt_bits_uop_ctrl_fpWen; // @[Exu.scala 155:25]
  assign bku_io_in_bits_uop_pdest = io_fromInt_bits_uop_pdest; // @[Exu.scala 155:25]
  assign bku_io_in_bits_uop_robIdx_flag = io_fromInt_bits_uop_robIdx_flag; // @[Exu.scala 155:25]
  assign bku_io_in_bits_uop_robIdx_value = io_fromInt_bits_uop_robIdx_value; // @[Exu.scala 155:25]
  assign bku_io_out_ready = arbSel_arb_io_in_2_ready; // @[Exu.scala 172:19]
  assign bku_io_redirectIn_valid = io_redirect_valid; // @[Exu.scala 142:22]
  assign bku_io_redirectIn_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Exu.scala 142:22]
  assign bku_io_redirectIn_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Exu.scala 142:22]
  assign bku_io_redirectIn_bits_level = io_redirect_bits_level; // @[Exu.scala 142:22]
  assign arbSel_arb_io_in_0_valid = mul_io_out_valid; // @[Exu.scala 173:19]
  assign arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_0 = mul_io_out_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_1 = mul_io_out_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_2 = mul_io_out_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_3 = mul_io_out_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_4 = mul_io_out_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_cf_trigger_backendHit_5 = mul_io_out_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_ctrl_rfWen = mul_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_ctrl_fpWen = mul_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_pdest = mul_io_out_bits_uop_pdest; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_robIdx_flag = mul_io_out_bits_uop_robIdx_flag; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_0_bits_uop_robIdx_value = mul_io_out_bits_uop_robIdx_value; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_valid = div_io_out_valid; // @[Exu.scala 173:19]
  assign arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_0 = div_io_out_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_1 = div_io_out_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_2 = div_io_out_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_3 = div_io_out_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_4 = div_io_out_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_cf_trigger_backendHit_5 = div_io_out_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_ctrl_rfWen = div_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_ctrl_fpWen = div_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_pdest = div_io_out_bits_uop_pdest; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_robIdx_flag = div_io_out_bits_uop_robIdx_flag; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_1_bits_uop_robIdx_value = div_io_out_bits_uop_robIdx_value; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_2_valid = bku_io_out_valid; // @[Exu.scala 173:19]
  assign arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_0 = bku_io_out_bits_uop_cf_trigger_backendHit_0; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_1 = bku_io_out_bits_uop_cf_trigger_backendHit_1; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_2 = bku_io_out_bits_uop_cf_trigger_backendHit_2; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_3 = bku_io_out_bits_uop_cf_trigger_backendHit_3; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_4 = bku_io_out_bits_uop_cf_trigger_backendHit_4; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_2_bits_uop_cf_trigger_backendHit_5 = bku_io_out_bits_uop_cf_trigger_backendHit_5; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_2_bits_uop_ctrl_rfWen = bku_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_2_bits_uop_ctrl_fpWen = bku_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_2_bits_uop_pdest = bku_io_out_bits_uop_pdest; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_2_bits_uop_robIdx_flag = bku_io_out_bits_uop_robIdx_flag; // @[Exu.scala 175:22]
  assign arbSel_arb_io_in_2_bits_uop_robIdx_value = bku_io_out_bits_uop_robIdx_value; // @[Exu.scala 175:22]
  assign arbSel_arb_io_out_ready = 1'h1; // @[Exu.scala 178:20]
  always @(posedge clock) begin
    arbSelReg_0 <= mul_io_out_ready & mul_io_out_valid; // @[Decoupled.scala 50:35]
    arbSelReg_1 <= div_io_out_ready & div_io_out_valid; // @[Decoupled.scala 50:35]
    arbSelReg_2 <= bku_io_out_ready & bku_io_out_valid; // @[Decoupled.scala 50:35]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  arbSelReg_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  arbSelReg_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  arbSelReg_2 = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
