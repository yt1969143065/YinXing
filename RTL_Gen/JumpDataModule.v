module JumpDataModule(
  input  [63:0] io_src,
  input  [63:0] io_pc,
  input  [19:0] io_immMin,
  input  [6:0]  io_func,
  input         io_isRVC,
  output [63:0] io_result,
  output [63:0] io_target,
  output        io_isAuipc
);
  wire  isJalr = io_func[0]; // @[package.scala 209:36]
  wire  isAuipc = io_func[1]; // @[package.scala 210:37]
  wire  offset_signBit = io_immMin[11]; // @[BitUtils.scala 43:20]
  wire [19:0] _offset_T_3 = offset_signBit ? 20'hfffff : 20'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _offset_T_4 = {_offset_T_3,io_immMin[11:0]}; // @[Cat.scala 31:58]
  wire [31:0] _offset_T_7 = {io_immMin,12'h0}; // @[Cat.scala 31:58]
  wire  _offset_T_9 = ~(isJalr | isAuipc); // @[Jump.scala 51:5]
  wire [20:0] _offset_T_11 = {io_immMin,1'h0}; // @[Cat.scala 31:58]
  wire  offset_signBit_1 = _offset_T_11[20]; // @[BitUtils.scala 43:20]
  wire [10:0] _offset_T_13 = offset_signBit_1 ? 11'h7ff : 11'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _offset_T_14 = {_offset_T_13,io_immMin,1'h0}; // @[Cat.scala 31:58]
  wire [31:0] _offset_xs_T_1 = isJalr ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [31:0] offset_xs_0 = _offset_xs_T_1 & _offset_T_4; // @[ParallelMux.scala 65:65]
  wire [31:0] _offset_xs_T_4 = isAuipc ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [31:0] offset_xs_1 = _offset_xs_T_4 & _offset_T_7; // @[ParallelMux.scala 65:65]
  wire [31:0] _offset_xs_T_7 = _offset_T_9 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [31:0] offset_xs_2 = _offset_xs_T_7 & _offset_T_14; // @[ParallelMux.scala 65:65]
  wire [31:0] _offset_T_15 = offset_xs_1 | offset_xs_2; // @[ParallelMux.scala 37:55]
  wire [31:0] _offset_T_16 = offset_xs_0 | _offset_T_15; // @[ParallelMux.scala 37:55]
  wire  offset_signBit_2 = _offset_T_16[31]; // @[BitUtils.scala 43:20]
  wire [31:0] _offset_T_18 = offset_signBit_2 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] offset = {_offset_T_18,_offset_T_16}; // @[Cat.scala 31:58]
  wire [63:0] _snpc_T_1 = io_pc + 64'h2; // @[Jump.scala 54:28]
  wire [63:0] _snpc_T_3 = io_pc + 64'h4; // @[Jump.scala 54:38]
  wire [63:0] snpc = io_isRVC ? _snpc_T_1 : _snpc_T_3; // @[Jump.scala 54:17]
  wire [63:0] target = io_src + offset; // @[Jump.scala 55:21]
  assign io_result = isAuipc ? target : snpc; // @[Jump.scala 61:19]
  assign io_target = {target[63:1],1'h0}; // @[Cat.scala 31:58]
  assign io_isAuipc = io_func[1]; // @[package.scala 210:37]
endmodule
