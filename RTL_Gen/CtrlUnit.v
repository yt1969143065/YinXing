module CtrlUnit(
  input         clock,
  input         reset,
  output        auto_core_reset_nodes_out,
  output        auto_int_out_0,
  output        auto_ctl_in_a_ready,
  input         auto_ctl_in_a_valid,
  input  [2:0]  auto_ctl_in_a_bits_opcode,
  input  [1:0]  auto_ctl_in_a_bits_size,
  input         auto_ctl_in_a_bits_source,
  input  [29:0] auto_ctl_in_a_bits_address,
  input  [7:0]  auto_ctl_in_a_bits_mask,
  input  [63:0] auto_ctl_in_a_bits_data,
  input         auto_ctl_in_d_ready,
  output        auto_ctl_in_d_valid,
  output [2:0]  auto_ctl_in_d_bits_opcode,
  output [1:0]  auto_ctl_in_d_bits_size,
  output        auto_ctl_in_d_bits_source,
  output [63:0] auto_ctl_in_d_bits_data,
  input         io_req_ready,
  output        io_req_valid,
  output [7:0]  io_req_bits_cmd,
  output [63:0] io_req_bits_data_0,
  output [63:0] io_req_bits_data_1,
  output [63:0] io_req_bits_data_2,
  output [63:0] io_req_bits_data_3,
  output [63:0] io_req_bits_data_4,
  output [63:0] io_req_bits_data_5,
  output [63:0] io_req_bits_data_6,
  output [63:0] io_req_bits_data_7,
  output [63:0] io_req_bits_set,
  output [63:0] io_req_bits_tag,
  output [63:0] io_req_bits_way,
  output [63:0] io_req_bits_dir,
  output        io_resp_ready,
  input         io_resp_valid,
  input  [7:0]  io_resp_bits_cmd,
  input  [63:0] io_resp_bits_data_0,
  input  [63:0] io_resp_bits_data_1,
  input  [63:0] io_resp_bits_data_2,
  input  [63:0] io_resp_bits_data_3,
  input  [63:0] io_resp_bits_data_4,
  input  [63:0] io_resp_bits_data_5,
  input  [63:0] io_resp_bits_data_6,
  input  [63:0] io_resp_bits_data_7,
  output        io_ecc_ready,
  input         io_ecc_valid,
  input  [7:0]  io_ecc_bits_errCode,
  input  [63:0] io_ecc_bits_addr
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  wire  out_back_clock; // @[Decoupled.scala 361:21]
  wire  out_back_reset; // @[Decoupled.scala 361:21]
  wire  out_back_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  out_back_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  out_back_io_enq_bits_read; // @[Decoupled.scala 361:21]
  wire [12:0] out_back_io_enq_bits_index; // @[Decoupled.scala 361:21]
  wire [63:0] out_back_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire [7:0] out_back_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire  out_back_io_enq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 361:21]
  wire [1:0] out_back_io_enq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 361:21]
  wire  out_back_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  out_back_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  out_back_io_deq_bits_read; // @[Decoupled.scala 361:21]
  wire [12:0] out_back_io_deq_bits_index; // @[Decoupled.scala 361:21]
  wire [63:0] out_back_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire [7:0] out_back_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire  out_back_io_deq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 361:21]
  wire [1:0] out_back_io_deq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 361:21]
  reg [63:0] ctl_tag; // @[CtrlUnit.scala 75:24]
  reg [63:0] ctl_set; // @[CtrlUnit.scala 76:24]
  reg [63:0] ctl_way; // @[CtrlUnit.scala 77:24]
  reg [63:0] ctl_dir; // @[CtrlUnit.scala 78:24]
  reg [63:0] ctl_data_0; // @[CtrlUnit.scala 79:63]
  reg [63:0] ctl_data_1; // @[CtrlUnit.scala 79:63]
  reg [63:0] ctl_data_2; // @[CtrlUnit.scala 79:63]
  reg [63:0] ctl_data_3; // @[CtrlUnit.scala 79:63]
  reg [63:0] ctl_data_4; // @[CtrlUnit.scala 79:63]
  reg [63:0] ctl_data_5; // @[CtrlUnit.scala 79:63]
  reg [63:0] ctl_data_6; // @[CtrlUnit.scala 79:63]
  reg [63:0] ctl_data_7; // @[CtrlUnit.scala 79:63]
  reg [63:0] ctl_cmd; // @[CtrlUnit.scala 80:24]
  reg [63:0] ecc_code; // @[CtrlUnit.scala 82:25]
  reg [63:0] ecc_addr; // @[CtrlUnit.scala 85:25]
  reg [63:0] core_reset_0; // @[CtrlUnit.scala 87:27]
  reg  cmd_in_valid; // @[CtrlUnit.scala 100:29]
  reg  cmd_out_valid; // @[CtrlUnit.scala 102:30]
  wire [6:0] out_oindex = {out_back_io_deq_bits_index[9],out_back_io_deq_bits_index[6],out_back_io_deq_bits_index[5],
    out_back_io_deq_bits_index[3],out_back_io_deq_bits_index[2],out_back_io_deq_bits_index[1],out_back_io_deq_bits_index
    [0]}; // @[Cat.scala 31:58]
  wire [127:0] _out_backSel_T = 128'h1 << out_oindex; // @[OneHot.scala 57:35]
  wire  out_backSel_32 = _out_backSel_T[32]; // @[RegisterRouter.scala 82:24]
  wire [12:0] out_bindex = out_back_io_deq_bits_index & 13'h1d90; // @[RegisterRouter.scala 82:24]
  wire  _out_T_21 = out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_woready_14 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_32 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire [7:0] _out_backMask_T_23 = out_back_io_deq_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_21 = out_back_io_deq_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_19 = out_back_io_deq_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_17 = out_back_io_deq_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_15 = out_back_io_deq_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_13 = out_back_io_deq_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_11 = out_back_io_deq_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_9 = out_back_io_deq_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] out_backMask = {_out_backMask_T_23,_out_backMask_T_21,_out_backMask_T_19,_out_backMask_T_17,
    _out_backMask_T_15,_out_backMask_T_13,_out_backMask_T_11,_out_backMask_T_9}; // @[Cat.scala 31:58]
  wire  out_womask_14 = &out_backMask; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_14 = out_woready_14 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire  _GEN_0 = out_f_woready_14 ? 1'h0 : cmd_out_valid; // @[CtrlUnit.scala 105:22 102:30 105:38]
  wire  _GEN_1 = io_req_ready ? 1'h0 : cmd_in_valid; // @[CtrlUnit.scala 106:21 100:29 106:36]
  wire  in_bits_read = auto_ctl_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 71:36]
  wire [12:0] in_bits_index = auto_ctl_in_a_bits_address[15:3]; // @[RegisterRouter.scala 70:18 72:19]
  wire [12:0] out_findex = in_bits_index & 13'h1d90; // @[RegisterRouter.scala 82:24]
  wire [7:0] _out_frontMask_T_9 = auto_ctl_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_frontMask_T_11 = auto_ctl_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_frontMask_T_13 = auto_ctl_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_frontMask_T_15 = auto_ctl_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_frontMask_T_17 = auto_ctl_in_a_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_frontMask_T_19 = auto_ctl_in_a_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_frontMask_T_21 = auto_ctl_in_a_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_frontMask_T_23 = auto_ctl_in_a_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] out_frontMask = {_out_frontMask_T_23,_out_frontMask_T_21,_out_frontMask_T_19,_out_frontMask_T_17,
    _out_frontMask_T_15,_out_frontMask_T_13,_out_frontMask_T_11,_out_frontMask_T_9}; // @[Cat.scala 31:58]
  wire  out_front_ready = out_back_io_enq_ready; // @[Decoupled.scala 365:17 RegisterRouter.scala 82:24]
  wire [6:0] out_iindex = {in_bits_index[9],in_bits_index[6],in_bits_index[5],in_bits_index[3],in_bits_index[2],
    in_bits_index[1],in_bits_index[0]}; // @[Cat.scala 31:58]
  wire [127:0] _out_frontSel_T = 128'h1 << out_iindex; // @[OneHot.scala 57:35]
  wire  out_wimask_5 = &out_frontMask; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_26 = _out_backSel_T[26]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_5 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_26 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_5 = out_woready_5 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire [63:0] _out_T_79 = out_back_io_deq_bits_data; // @[RegisterRouter.scala 82:24]
  wire [63:0] _GEN_2 = out_f_woready_5 ? _out_T_79 : ctl_data_7; // @[RegField.scala 74:{88,92} CtrlUnit.scala 79:63]
  wire  out_backSel_21 = _out_backSel_T[21]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_6 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_21 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_6 = out_woready_6 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire [63:0] _GEN_3 = out_f_woready_6 ? _out_T_79 : ctl_data_2; // @[RegField.scala 74:{88,92} CtrlUnit.scala 79:63]
  wire  out_backSel_64 = _out_backSel_T[64]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_7 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_64 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_7 = out_woready_7 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_22 = _out_backSel_T[22]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_8 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_22 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_8 = out_woready_8 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire [63:0] _GEN_5 = out_f_woready_8 ? _out_T_79 : ctl_data_3; // @[RegField.scala 74:{88,92} CtrlUnit.scala 79:63]
  wire  out_backSel_17 = _out_backSel_T[17]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_9 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_17 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_9 = out_woready_9 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_25 = _out_backSel_T[25]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_10 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_25 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_10 = out_woready_10 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire [63:0] _GEN_7 = out_f_woready_10 ? _out_T_79 : ctl_data_6; // @[RegField.scala 74:{88,92} CtrlUnit.scala 79:63]
  wire  out_backSel_16 = _out_backSel_T[16]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_11 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_16 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_11 = out_woready_11 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire [63:0] _GEN_8 = out_f_woready_11 ? _out_T_79 : ctl_tag; // @[RegField.scala 74:{88,92} CtrlUnit.scala 75:24]
  wire  out_backSel_18 = _out_backSel_T[18]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_12 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_18 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_12 = out_woready_12 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_29 = _out_backSel_T[29]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_13 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_29 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_13 = out_woready_13 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire  out_frontSel_32 = _out_frontSel_T[32]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_14 = auto_ctl_in_a_valid & out_front_ready & ~in_bits_read & out_frontSel_32 & out_findex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_14 = out_wivalid_14 & out_wimask_5; // @[RegisterRouter.scala 82:24]
  wire  _GEN_12 = out_f_wivalid_14 | _GEN_1; // @[CtrlUnit.scala 126:{19,34}]
  wire  _out_T_147 = ~cmd_in_valid; // @[CtrlUnit.scala 127:22]
  wire  out_wifireMux_out_32 = _out_T_147 | ~out_wimask_5; // @[RegisterRouter.scala 82:24]
  wire  out_wofireMux_out_32 = cmd_out_valid | ~out_womask_14; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_28 = _out_backSel_T[28]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_15 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_28 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_15 = out_woready_15 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_23 = _out_backSel_T[23]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_16 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_23 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_16 = out_woready_16 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire [63:0] _GEN_15 = out_f_woready_16 ? _out_T_79 : ctl_data_4; // @[RegField.scala 74:{88,92} CtrlUnit.scala 79:63]
  wire  out_backSel_19 = _out_backSel_T[19]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_17 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_19 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_17 = out_woready_17 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire [63:0] _GEN_16 = out_f_woready_17 ? _out_T_79 : ctl_data_0; // @[RegField.scala 74:{88,92} CtrlUnit.scala 79:63]
  wire  out_backSel_27 = _out_backSel_T[27]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_18 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_27 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_18 = out_woready_18 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire [63:0] _GEN_17 = out_f_woready_18 ? _out_T_79 : ctl_dir; // @[RegField.scala 74:{88,92} CtrlUnit.scala 78:24]
  wire  out_backSel_24 = _out_backSel_T[24]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_19 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_24 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_19 = out_woready_19 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire [63:0] _GEN_18 = out_f_woready_19 ? _out_T_79 : ctl_data_5; // @[RegField.scala 74:{88,92} CtrlUnit.scala 79:63]
  wire  out_backSel_20 = _out_backSel_T[20]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_20 = out_back_io_deq_valid & auto_ctl_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_20 &
    out_bindex == 13'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_20 = out_woready_20 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire [63:0] _GEN_19 = out_f_woready_20 ? _out_T_79 : ctl_data_1; // @[RegField.scala 74:{88,92} CtrlUnit.scala 79:63]
  wire  _out_wifireMux_T_134 = out_wifireMux_out_32 | ~(out_findex == 13'h0); // @[RegisterRouter.scala 82:24]
  wire  _GEN_180 = 7'h20 == out_iindex ? _out_wifireMux_T_134 : 1'h1; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_195 = 7'h2f == out_iindex | (7'h2e == out_iindex | (7'h2d == out_iindex | (7'h2c == out_iindex | (7'h2b ==
    out_iindex | (7'h2a == out_iindex | (7'h29 == out_iindex | (7'h28 == out_iindex | (7'h27 == out_iindex | (7'h26 ==
    out_iindex | (7'h25 == out_iindex | (7'h24 == out_iindex | (7'h23 == out_iindex | (7'h22 == out_iindex | (7'h21 ==
    out_iindex | _GEN_180)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_210 = 7'h3e == out_iindex | (7'h3d == out_iindex | (7'h3c == out_iindex | (7'h3b == out_iindex | (7'h3a ==
    out_iindex | (7'h39 == out_iindex | (7'h38 == out_iindex | (7'h37 == out_iindex | (7'h36 == out_iindex | (7'h35 ==
    out_iindex | (7'h34 == out_iindex | (7'h33 == out_iindex | (7'h32 == out_iindex | (7'h31 == out_iindex | (7'h30 ==
    out_iindex | _GEN_195)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_225 = 7'h4d == out_iindex | (7'h4c == out_iindex | (7'h4b == out_iindex | (7'h4a == out_iindex | (7'h49 ==
    out_iindex | (7'h48 == out_iindex | (7'h47 == out_iindex | (7'h46 == out_iindex | (7'h45 == out_iindex | (7'h44 ==
    out_iindex | (7'h43 == out_iindex | (7'h42 == out_iindex | (7'h41 == out_iindex | (7'h40 == out_iindex | (7'h3f ==
    out_iindex | _GEN_210)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_240 = 7'h5c == out_iindex | (7'h5b == out_iindex | (7'h5a == out_iindex | (7'h59 == out_iindex | (7'h58 ==
    out_iindex | (7'h57 == out_iindex | (7'h56 == out_iindex | (7'h55 == out_iindex | (7'h54 == out_iindex | (7'h53 ==
    out_iindex | (7'h52 == out_iindex | (7'h51 == out_iindex | (7'h50 == out_iindex | (7'h4f == out_iindex | (7'h4e ==
    out_iindex | _GEN_225)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_255 = 7'h6b == out_iindex | (7'h6a == out_iindex | (7'h69 == out_iindex | (7'h68 == out_iindex | (7'h67 ==
    out_iindex | (7'h66 == out_iindex | (7'h65 == out_iindex | (7'h64 == out_iindex | (7'h63 == out_iindex | (7'h62 ==
    out_iindex | (7'h61 == out_iindex | (7'h60 == out_iindex | (7'h5f == out_iindex | (7'h5e == out_iindex | (7'h5d ==
    out_iindex | _GEN_240)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_270 = 7'h7a == out_iindex | (7'h79 == out_iindex | (7'h78 == out_iindex | (7'h77 == out_iindex | (7'h76 ==
    out_iindex | (7'h75 == out_iindex | (7'h74 == out_iindex | (7'h73 == out_iindex | (7'h72 == out_iindex | (7'h71 ==
    out_iindex | (7'h70 == out_iindex | (7'h6f == out_iindex | (7'h6e == out_iindex | (7'h6d == out_iindex | (7'h6c ==
    out_iindex | _GEN_255)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  out_wifireMux = 7'h7f == out_iindex | (7'h7e == out_iindex | (7'h7d == out_iindex | (7'h7c == out_iindex | (7'h7b
     == out_iindex | _GEN_270)))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _out_wofireMux_T_134 = out_wofireMux_out_32 | ~(out_bindex == 13'h0); // @[RegisterRouter.scala 82:24]
  wire  _GEN_436 = 7'h20 == out_oindex ? _out_wofireMux_T_134 : 1'h1; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_451 = 7'h2f == out_oindex | (7'h2e == out_oindex | (7'h2d == out_oindex | (7'h2c == out_oindex | (7'h2b ==
    out_oindex | (7'h2a == out_oindex | (7'h29 == out_oindex | (7'h28 == out_oindex | (7'h27 == out_oindex | (7'h26 ==
    out_oindex | (7'h25 == out_oindex | (7'h24 == out_oindex | (7'h23 == out_oindex | (7'h22 == out_oindex | (7'h21 ==
    out_oindex | _GEN_436)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_466 = 7'h3e == out_oindex | (7'h3d == out_oindex | (7'h3c == out_oindex | (7'h3b == out_oindex | (7'h3a ==
    out_oindex | (7'h39 == out_oindex | (7'h38 == out_oindex | (7'h37 == out_oindex | (7'h36 == out_oindex | (7'h35 ==
    out_oindex | (7'h34 == out_oindex | (7'h33 == out_oindex | (7'h32 == out_oindex | (7'h31 == out_oindex | (7'h30 ==
    out_oindex | _GEN_451)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_736 = 7'h40 == out_oindex; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_481 = 7'h4d == out_oindex | (7'h4c == out_oindex | (7'h4b == out_oindex | (7'h4a == out_oindex | (7'h49 ==
    out_oindex | (7'h48 == out_oindex | (7'h47 == out_oindex | (7'h46 == out_oindex | (7'h45 == out_oindex | (7'h44 ==
    out_oindex | (7'h43 == out_oindex | (7'h42 == out_oindex | (7'h41 == out_oindex | (7'h40 == out_oindex | (7'h3f ==
    out_oindex | _GEN_466)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_496 = 7'h5c == out_oindex | (7'h5b == out_oindex | (7'h5a == out_oindex | (7'h59 == out_oindex | (7'h58 ==
    out_oindex | (7'h57 == out_oindex | (7'h56 == out_oindex | (7'h55 == out_oindex | (7'h54 == out_oindex | (7'h53 ==
    out_oindex | (7'h52 == out_oindex | (7'h51 == out_oindex | (7'h50 == out_oindex | (7'h4f == out_oindex | (7'h4e ==
    out_oindex | _GEN_481)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_511 = 7'h6b == out_oindex | (7'h6a == out_oindex | (7'h69 == out_oindex | (7'h68 == out_oindex | (7'h67 ==
    out_oindex | (7'h66 == out_oindex | (7'h65 == out_oindex | (7'h64 == out_oindex | (7'h63 == out_oindex | (7'h62 ==
    out_oindex | (7'h61 == out_oindex | (7'h60 == out_oindex | (7'h5f == out_oindex | (7'h5e == out_oindex | (7'h5d ==
    out_oindex | _GEN_496)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_526 = 7'h7a == out_oindex | (7'h79 == out_oindex | (7'h78 == out_oindex | (7'h77 == out_oindex | (7'h76 ==
    out_oindex | (7'h75 == out_oindex | (7'h74 == out_oindex | (7'h73 == out_oindex | (7'h72 == out_oindex | (7'h71 ==
    out_oindex | (7'h70 == out_oindex | (7'h6f == out_oindex | (7'h6e == out_oindex | (7'h6d == out_oindex | (7'h6c ==
    out_oindex | _GEN_511)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  out_wofireMux = 7'h7f == out_oindex | (7'h7e == out_oindex | (7'h7d == out_oindex | (7'h7c == out_oindex | (7'h7b
     == out_oindex | _GEN_526)))); // @[MuxLiteral.scala 48:{10,10}]
  wire  out_iready = in_bits_read | out_wifireMux; // @[RegisterRouter.scala 82:24]
  wire  out_oready = out_back_io_deq_bits_read | out_wofireMux; // @[RegisterRouter.scala 82:24]
  wire  _GEN_532 = _GEN_736 ? _out_T_21 : 1'h1; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_533 = 7'h20 == out_oindex ? _out_T_21 : _GEN_532; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_534 = 7'h1d == out_oindex ? _out_T_21 : _GEN_533; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_535 = 7'h1c == out_oindex ? _out_T_21 : _GEN_534; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_536 = 7'h1b == out_oindex ? _out_T_21 : _GEN_535; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_537 = 7'h1a == out_oindex ? _out_T_21 : _GEN_536; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_538 = 7'h19 == out_oindex ? _out_T_21 : _GEN_537; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_539 = 7'h18 == out_oindex ? _out_T_21 : _GEN_538; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_540 = 7'h17 == out_oindex ? _out_T_21 : _GEN_539; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_541 = 7'h16 == out_oindex ? _out_T_21 : _GEN_540; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_542 = 7'h15 == out_oindex ? _out_T_21 : _GEN_541; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_543 = 7'h14 == out_oindex ? _out_T_21 : _GEN_542; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_544 = 7'h13 == out_oindex ? _out_T_21 : _GEN_543; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_545 = 7'h12 == out_oindex ? _out_T_21 : _GEN_544; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_546 = 7'h11 == out_oindex ? _out_T_21 : _GEN_545; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_547 = 7'h10 == out_oindex ? _out_T_21 : _GEN_546; // @[MuxLiteral.scala 53:{26,32}]
  wire  out_out_bits_data_out = 7'h0 == out_oindex ? _out_T_21 : _GEN_547; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_549 = _GEN_736 ? core_reset_0 : 64'h0; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_550 = 7'h20 == out_oindex ? 64'h0 : _GEN_549; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_551 = 7'h1d == out_oindex ? ecc_addr : _GEN_550; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_552 = 7'h1c == out_oindex ? ecc_code : _GEN_551; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_553 = 7'h1b == out_oindex ? ctl_dir : _GEN_552; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_554 = 7'h1a == out_oindex ? ctl_data_7 : _GEN_553; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_555 = 7'h19 == out_oindex ? ctl_data_6 : _GEN_554; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_556 = 7'h18 == out_oindex ? ctl_data_5 : _GEN_555; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_557 = 7'h17 == out_oindex ? ctl_data_4 : _GEN_556; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_558 = 7'h16 == out_oindex ? ctl_data_3 : _GEN_557; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_559 = 7'h15 == out_oindex ? ctl_data_2 : _GEN_558; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_560 = 7'h14 == out_oindex ? ctl_data_1 : _GEN_559; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_561 = 7'h13 == out_oindex ? ctl_data_0 : _GEN_560; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_562 = 7'h12 == out_oindex ? ctl_way : _GEN_561; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_563 = 7'h11 == out_oindex ? ctl_set : _GEN_562; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_564 = 7'h10 == out_oindex ? ctl_tag : _GEN_563; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] out_out_bits_data_out_1 = 7'h0 == out_oindex ? 64'h80c0404 : _GEN_564; // @[MuxLiteral.scala 53:{26,32}]
  wire  out_bits_read = out_back_io_deq_bits_read; // @[RegisterRouter.scala 82:{24,24}]
  wire  _T = io_resp_ready & io_resp_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_566 = _T | _GEN_0; // @[CtrlUnit.scala 138:20 139:19]
  wire [63:0] _GEN_567 = 8'h4 == io_resp_bits_cmd ? io_resp_bits_data_0 : _GEN_17; // @[CtrlUnit.scala 152:26 166:17]
  wire [63:0] _GEN_568 = 8'h3 == io_resp_bits_cmd ? io_resp_bits_data_0 : _GEN_567; // @[CtrlUnit.scala 152:26 163:17]
  wire [63:0] _GEN_569 = 8'h2 == io_resp_bits_cmd ? io_resp_bits_data_0 : _GEN_16; // @[CtrlUnit.scala 152:26 160:56]
  wire [63:0] _GEN_570 = 8'h2 == io_resp_bits_cmd ? io_resp_bits_data_1 : _GEN_19; // @[CtrlUnit.scala 152:26 160:56]
  wire [63:0] _GEN_571 = 8'h2 == io_resp_bits_cmd ? io_resp_bits_data_2 : _GEN_3; // @[CtrlUnit.scala 152:26 160:56]
  wire [63:0] _GEN_572 = 8'h2 == io_resp_bits_cmd ? io_resp_bits_data_3 : _GEN_5; // @[CtrlUnit.scala 152:26 160:56]
  wire [63:0] _GEN_573 = 8'h2 == io_resp_bits_cmd ? io_resp_bits_data_4 : _GEN_15; // @[CtrlUnit.scala 152:26 160:56]
  wire [63:0] _GEN_574 = 8'h2 == io_resp_bits_cmd ? io_resp_bits_data_5 : _GEN_18; // @[CtrlUnit.scala 152:26 160:56]
  wire [63:0] _GEN_575 = 8'h2 == io_resp_bits_cmd ? io_resp_bits_data_6 : _GEN_7; // @[CtrlUnit.scala 152:26 160:56]
  wire [63:0] _GEN_576 = 8'h2 == io_resp_bits_cmd ? io_resp_bits_data_7 : _GEN_2; // @[CtrlUnit.scala 152:26 160:56]
  wire [63:0] _GEN_577 = 8'h2 == io_resp_bits_cmd ? _GEN_17 : _GEN_568; // @[CtrlUnit.scala 152:26]
  wire  _T_7 = io_ecc_ready & io_ecc_valid; // @[Decoupled.scala 50:35]
  Queue_262 out_back ( // @[Decoupled.scala 361:21]
    .clock(out_back_clock),
    .reset(out_back_reset),
    .io_enq_ready(out_back_io_enq_ready),
    .io_enq_valid(out_back_io_enq_valid),
    .io_enq_bits_read(out_back_io_enq_bits_read),
    .io_enq_bits_index(out_back_io_enq_bits_index),
    .io_enq_bits_data(out_back_io_enq_bits_data),
    .io_enq_bits_mask(out_back_io_enq_bits_mask),
    .io_enq_bits_extra_tlrr_extra_source(out_back_io_enq_bits_extra_tlrr_extra_source),
    .io_enq_bits_extra_tlrr_extra_size(out_back_io_enq_bits_extra_tlrr_extra_size),
    .io_deq_ready(out_back_io_deq_ready),
    .io_deq_valid(out_back_io_deq_valid),
    .io_deq_bits_read(out_back_io_deq_bits_read),
    .io_deq_bits_index(out_back_io_deq_bits_index),
    .io_deq_bits_data(out_back_io_deq_bits_data),
    .io_deq_bits_mask(out_back_io_deq_bits_mask),
    .io_deq_bits_extra_tlrr_extra_source(out_back_io_deq_bits_extra_tlrr_extra_source),
    .io_deq_bits_extra_tlrr_extra_size(out_back_io_deq_bits_extra_tlrr_extra_size)
  );
  assign auto_core_reset_nodes_out = core_reset_0[0]; // @[CtrlUnit.scala 97:48]
  assign auto_int_out_0 = ecc_code != 64'h0; // @[CtrlUnit.scala 175:48]
  assign auto_ctl_in_a_ready = out_front_ready & out_iready; // @[RegisterRouter.scala 82:24]
  assign auto_ctl_in_d_valid = out_back_io_deq_valid & out_oready; // @[RegisterRouter.scala 82:24]
  assign auto_ctl_in_d_bits_opcode = {{2'd0}, out_bits_read}; // @[Nodes.scala 1210:84 RegisterRouter.scala 97:19]
  assign auto_ctl_in_d_bits_size = out_back_io_deq_bits_extra_tlrr_extra_size; // @[RegisterRouter.scala 82:{24,24}]
  assign auto_ctl_in_d_bits_source = out_back_io_deq_bits_extra_tlrr_extra_source; // @[RegisterRouter.scala 82:{24,24}]
  assign auto_ctl_in_d_bits_data = out_out_bits_data_out ? out_out_bits_data_out_1 : 64'h0; // @[RegisterRouter.scala 82:24]
  assign io_req_valid = cmd_in_valid; // @[CtrlUnit.scala 143:13]
  assign io_req_bits_cmd = ctl_cmd[7:0]; // @[CtrlUnit.scala 144:16]
  assign io_req_bits_data_0 = ctl_data_0; // @[CtrlUnit.scala 145:49]
  assign io_req_bits_data_1 = ctl_data_1; // @[CtrlUnit.scala 145:49]
  assign io_req_bits_data_2 = ctl_data_2; // @[CtrlUnit.scala 145:49]
  assign io_req_bits_data_3 = ctl_data_3; // @[CtrlUnit.scala 145:49]
  assign io_req_bits_data_4 = ctl_data_4; // @[CtrlUnit.scala 145:49]
  assign io_req_bits_data_5 = ctl_data_5; // @[CtrlUnit.scala 145:49]
  assign io_req_bits_data_6 = ctl_data_6; // @[CtrlUnit.scala 145:49]
  assign io_req_bits_data_7 = ctl_data_7; // @[CtrlUnit.scala 145:49]
  assign io_req_bits_set = ctl_set; // @[CtrlUnit.scala 147:16]
  assign io_req_bits_tag = ctl_tag; // @[CtrlUnit.scala 146:16]
  assign io_req_bits_way = ctl_way; // @[CtrlUnit.scala 148:16]
  assign io_req_bits_dir = ctl_dir; // @[CtrlUnit.scala 149:16]
  assign io_resp_ready = ~cmd_out_valid; // @[CtrlUnit.scala 141:17]
  assign io_ecc_ready = ecc_code == 64'h0; // @[CtrlUnit.scala 142:25]
  assign out_back_clock = clock;
  assign out_back_reset = reset;
  assign out_back_io_enq_valid = auto_ctl_in_a_valid & out_iready; // @[RegisterRouter.scala 82:24]
  assign out_back_io_enq_bits_read = auto_ctl_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 71:36]
  assign out_back_io_enq_bits_index = auto_ctl_in_a_bits_address[15:3]; // @[RegisterRouter.scala 70:18 72:19]
  assign out_back_io_enq_bits_data = auto_ctl_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign out_back_io_enq_bits_mask = auto_ctl_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign out_back_io_enq_bits_extra_tlrr_extra_source = auto_ctl_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign out_back_io_enq_bits_extra_tlrr_extra_size = auto_ctl_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign out_back_io_deq_ready = auto_ctl_in_d_ready & out_oready; // @[RegisterRouter.scala 82:24]
  always @(posedge clock) begin
    if (reset) begin // @[CtrlUnit.scala 75:24]
      ctl_tag <= 64'h0; // @[CtrlUnit.scala 75:24]
    end else if (_T) begin // @[CtrlUnit.scala 151:21]
      if (8'h0 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_tag <= io_resp_bits_data_0; // @[CtrlUnit.scala 154:17]
      end else if (8'h1 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_tag <= io_resp_bits_data_0; // @[CtrlUnit.scala 157:17]
      end else begin
        ctl_tag <= _GEN_8;
      end
    end else begin
      ctl_tag <= _GEN_8;
    end
    if (reset) begin // @[CtrlUnit.scala 76:24]
      ctl_set <= 64'h0; // @[CtrlUnit.scala 76:24]
    end else if (out_f_woready_9) begin // @[RegField.scala 74:88]
      ctl_set <= _out_T_79; // @[RegField.scala 74:92]
    end
    if (reset) begin // @[CtrlUnit.scala 77:24]
      ctl_way <= 64'h0; // @[CtrlUnit.scala 77:24]
    end else if (out_f_woready_12) begin // @[RegField.scala 74:88]
      ctl_way <= _out_T_79; // @[RegField.scala 74:92]
    end
    if (reset) begin // @[CtrlUnit.scala 78:24]
      ctl_dir <= 64'h0; // @[CtrlUnit.scala 78:24]
    end else if (_T) begin // @[CtrlUnit.scala 151:21]
      if (8'h0 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_dir <= _GEN_17;
      end else if (8'h1 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_dir <= _GEN_17;
      end else begin
        ctl_dir <= _GEN_577;
      end
    end else begin
      ctl_dir <= _GEN_17;
    end
    if (reset) begin // @[CtrlUnit.scala 79:63]
      ctl_data_0 <= 64'h0; // @[CtrlUnit.scala 79:63]
    end else if (_T) begin // @[CtrlUnit.scala 151:21]
      if (8'h0 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_0 <= _GEN_16;
      end else if (8'h1 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_0 <= _GEN_16;
      end else begin
        ctl_data_0 <= _GEN_569;
      end
    end else begin
      ctl_data_0 <= _GEN_16;
    end
    if (reset) begin // @[CtrlUnit.scala 79:63]
      ctl_data_1 <= 64'h0; // @[CtrlUnit.scala 79:63]
    end else if (_T) begin // @[CtrlUnit.scala 151:21]
      if (8'h0 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_1 <= _GEN_19;
      end else if (8'h1 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_1 <= _GEN_19;
      end else begin
        ctl_data_1 <= _GEN_570;
      end
    end else begin
      ctl_data_1 <= _GEN_19;
    end
    if (reset) begin // @[CtrlUnit.scala 79:63]
      ctl_data_2 <= 64'h0; // @[CtrlUnit.scala 79:63]
    end else if (_T) begin // @[CtrlUnit.scala 151:21]
      if (8'h0 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_2 <= _GEN_3;
      end else if (8'h1 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_2 <= _GEN_3;
      end else begin
        ctl_data_2 <= _GEN_571;
      end
    end else begin
      ctl_data_2 <= _GEN_3;
    end
    if (reset) begin // @[CtrlUnit.scala 79:63]
      ctl_data_3 <= 64'h0; // @[CtrlUnit.scala 79:63]
    end else if (_T) begin // @[CtrlUnit.scala 151:21]
      if (8'h0 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_3 <= _GEN_5;
      end else if (8'h1 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_3 <= _GEN_5;
      end else begin
        ctl_data_3 <= _GEN_572;
      end
    end else begin
      ctl_data_3 <= _GEN_5;
    end
    if (reset) begin // @[CtrlUnit.scala 79:63]
      ctl_data_4 <= 64'h0; // @[CtrlUnit.scala 79:63]
    end else if (_T) begin // @[CtrlUnit.scala 151:21]
      if (8'h0 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_4 <= _GEN_15;
      end else if (8'h1 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_4 <= _GEN_15;
      end else begin
        ctl_data_4 <= _GEN_573;
      end
    end else begin
      ctl_data_4 <= _GEN_15;
    end
    if (reset) begin // @[CtrlUnit.scala 79:63]
      ctl_data_5 <= 64'h0; // @[CtrlUnit.scala 79:63]
    end else if (_T) begin // @[CtrlUnit.scala 151:21]
      if (8'h0 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_5 <= _GEN_18;
      end else if (8'h1 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_5 <= _GEN_18;
      end else begin
        ctl_data_5 <= _GEN_574;
      end
    end else begin
      ctl_data_5 <= _GEN_18;
    end
    if (reset) begin // @[CtrlUnit.scala 79:63]
      ctl_data_6 <= 64'h0; // @[CtrlUnit.scala 79:63]
    end else if (_T) begin // @[CtrlUnit.scala 151:21]
      if (8'h0 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_6 <= _GEN_7;
      end else if (8'h1 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_6 <= _GEN_7;
      end else begin
        ctl_data_6 <= _GEN_575;
      end
    end else begin
      ctl_data_6 <= _GEN_7;
    end
    if (reset) begin // @[CtrlUnit.scala 79:63]
      ctl_data_7 <= 64'h0; // @[CtrlUnit.scala 79:63]
    end else if (_T) begin // @[CtrlUnit.scala 151:21]
      if (8'h0 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_7 <= _GEN_2;
      end else if (8'h1 == io_resp_bits_cmd) begin // @[CtrlUnit.scala 152:26]
        ctl_data_7 <= _GEN_2;
      end else begin
        ctl_data_7 <= _GEN_576;
      end
    end else begin
      ctl_data_7 <= _GEN_2;
    end
    if (reset) begin // @[CtrlUnit.scala 80:24]
      ctl_cmd <= 64'h0; // @[CtrlUnit.scala 80:24]
    end else if (out_f_wivalid_14 & ~cmd_in_valid) begin // @[CtrlUnit.scala 127:36]
      ctl_cmd <= auto_ctl_in_a_bits_data; // @[CtrlUnit.scala 128:17]
    end
    if (reset) begin // @[CtrlUnit.scala 82:25]
      ecc_code <= 64'h0; // @[CtrlUnit.scala 82:25]
    end else if (_T_7) begin // @[CtrlUnit.scala 171:20]
      ecc_code <= {{56'd0}, io_ecc_bits_errCode}; // @[CtrlUnit.scala 172:14]
    end else if (out_f_woready_15) begin // @[RegField.scala 74:88]
      ecc_code <= _out_T_79; // @[RegField.scala 74:92]
    end
    if (reset) begin // @[CtrlUnit.scala 85:25]
      ecc_addr <= 64'h0; // @[CtrlUnit.scala 85:25]
    end else if (_T_7) begin // @[CtrlUnit.scala 171:20]
      ecc_addr <= io_ecc_bits_addr; // @[CtrlUnit.scala 173:14]
    end else if (out_f_woready_13) begin // @[RegField.scala 74:88]
      ecc_addr <= _out_T_79; // @[RegField.scala 74:92]
    end
    if (reset) begin // @[CtrlUnit.scala 87:27]
      core_reset_0 <= 64'h0; // @[CtrlUnit.scala 87:27]
    end else if (out_f_woready_7) begin // @[CtrlUnit.scala 91:18]
      core_reset_0 <= {{63'd0}, _out_T_79[0]}; // @[CtrlUnit.scala 91:22]
    end
    if (reset) begin // @[CtrlUnit.scala 100:29]
      cmd_in_valid <= 1'h0; // @[CtrlUnit.scala 100:29]
    end else begin
      cmd_in_valid <= _GEN_12;
    end
    if (reset) begin // @[CtrlUnit.scala 102:30]
      cmd_out_valid <= 1'h0; // @[CtrlUnit.scala 102:30]
    end else begin
      cmd_out_valid <= _GEN_566;
    end
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
  _RAND_0 = {2{`RANDOM}};
  ctl_tag = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  ctl_set = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  ctl_way = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  ctl_dir = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  ctl_data_0 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  ctl_data_1 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  ctl_data_2 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  ctl_data_3 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  ctl_data_4 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  ctl_data_5 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  ctl_data_6 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  ctl_data_7 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  ctl_cmd = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  ecc_code = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  ecc_addr = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  core_reset_0 = _RAND_15[63:0];
  _RAND_16 = {1{`RANDOM}};
  cmd_in_valid = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  cmd_out_valid = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
