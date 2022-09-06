module TLXbar(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [2:0]  auto_in_a_bits_size,
  input         auto_in_a_bits_source,
  input  [35:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [2:0]  auto_in_d_bits_size,
  output        auto_in_d_bits_source,
  output [63:0] auto_in_d_bits_data,
  input         auto_out_7_a_ready,
  output        auto_out_7_a_valid,
  output [2:0]  auto_out_7_a_bits_opcode,
  output [1:0]  auto_out_7_a_bits_size,
  output        auto_out_7_a_bits_source,
  output [29:0] auto_out_7_a_bits_address,
  output [7:0]  auto_out_7_a_bits_mask,
  output [63:0] auto_out_7_a_bits_data,
  output        auto_out_7_d_ready,
  input         auto_out_7_d_valid,
  input  [2:0]  auto_out_7_d_bits_opcode,
  input  [1:0]  auto_out_7_d_bits_size,
  input         auto_out_7_d_bits_source,
  input  [63:0] auto_out_7_d_bits_data,
  input         auto_out_6_a_ready,
  output        auto_out_6_a_valid,
  output [2:0]  auto_out_6_a_bits_opcode,
  output [1:0]  auto_out_6_a_bits_size,
  output        auto_out_6_a_bits_source,
  output [29:0] auto_out_6_a_bits_address,
  output [7:0]  auto_out_6_a_bits_mask,
  output [63:0] auto_out_6_a_bits_data,
  output        auto_out_6_d_ready,
  input         auto_out_6_d_valid,
  input  [2:0]  auto_out_6_d_bits_opcode,
  input  [1:0]  auto_out_6_d_bits_size,
  input         auto_out_6_d_bits_source,
  input  [63:0] auto_out_6_d_bits_data,
  input         auto_out_5_a_ready,
  output        auto_out_5_a_valid,
  output [2:0]  auto_out_5_a_bits_opcode,
  output [1:0]  auto_out_5_a_bits_size,
  output        auto_out_5_a_bits_source,
  output [29:0] auto_out_5_a_bits_address,
  output [7:0]  auto_out_5_a_bits_mask,
  output [63:0] auto_out_5_a_bits_data,
  output        auto_out_5_d_ready,
  input         auto_out_5_d_valid,
  input  [2:0]  auto_out_5_d_bits_opcode,
  input  [1:0]  auto_out_5_d_bits_size,
  input         auto_out_5_d_bits_source,
  input  [63:0] auto_out_5_d_bits_data,
  input         auto_out_4_a_ready,
  output        auto_out_4_a_valid,
  output [2:0]  auto_out_4_a_bits_opcode,
  output [1:0]  auto_out_4_a_bits_size,
  output        auto_out_4_a_bits_source,
  output [29:0] auto_out_4_a_bits_address,
  output [7:0]  auto_out_4_a_bits_mask,
  output [63:0] auto_out_4_a_bits_data,
  output        auto_out_4_d_ready,
  input         auto_out_4_d_valid,
  input  [2:0]  auto_out_4_d_bits_opcode,
  input  [1:0]  auto_out_4_d_bits_size,
  input         auto_out_4_d_bits_source,
  input  [63:0] auto_out_4_d_bits_data,
  input         auto_out_3_a_ready,
  output        auto_out_3_a_valid,
  output [2:0]  auto_out_3_a_bits_opcode,
  output [1:0]  auto_out_3_a_bits_size,
  output        auto_out_3_a_bits_source,
  output [29:0] auto_out_3_a_bits_address,
  output [7:0]  auto_out_3_a_bits_mask,
  output [63:0] auto_out_3_a_bits_data,
  output        auto_out_3_d_ready,
  input         auto_out_3_d_valid,
  input  [2:0]  auto_out_3_d_bits_opcode,
  input  [1:0]  auto_out_3_d_bits_size,
  input         auto_out_3_d_bits_source,
  input  [63:0] auto_out_3_d_bits_data,
  input         auto_out_2_a_ready,
  output        auto_out_2_a_valid,
  output [2:0]  auto_out_2_a_bits_opcode,
  output [1:0]  auto_out_2_a_bits_size,
  output        auto_out_2_a_bits_source,
  output [29:0] auto_out_2_a_bits_address,
  output [7:0]  auto_out_2_a_bits_mask,
  output [63:0] auto_out_2_a_bits_data,
  output        auto_out_2_d_ready,
  input         auto_out_2_d_valid,
  input  [2:0]  auto_out_2_d_bits_opcode,
  input  [1:0]  auto_out_2_d_bits_size,
  input         auto_out_2_d_bits_source,
  input  [63:0] auto_out_2_d_bits_data,
  input         auto_out_1_a_ready,
  output        auto_out_1_a_valid,
  output [2:0]  auto_out_1_a_bits_opcode,
  output [1:0]  auto_out_1_a_bits_size,
  output        auto_out_1_a_bits_source,
  output [30:0] auto_out_1_a_bits_address,
  output [7:0]  auto_out_1_a_bits_mask,
  output [63:0] auto_out_1_a_bits_data,
  output        auto_out_1_d_ready,
  input         auto_out_1_d_valid,
  input  [2:0]  auto_out_1_d_bits_opcode,
  input  [1:0]  auto_out_1_d_bits_size,
  input         auto_out_1_d_bits_source,
  input  [63:0] auto_out_1_d_bits_data,
  input         auto_out_0_a_ready,
  output        auto_out_0_a_valid,
  output [2:0]  auto_out_0_a_bits_opcode,
  output [2:0]  auto_out_0_a_bits_size,
  output        auto_out_0_a_bits_source,
  output [35:0] auto_out_0_a_bits_address,
  output [7:0]  auto_out_0_a_bits_mask,
  output [63:0] auto_out_0_a_bits_data,
  output        auto_out_0_d_ready,
  input         auto_out_0_d_valid,
  input  [2:0]  auto_out_0_d_bits_opcode,
  input  [2:0]  auto_out_0_d_bits_size,
  input         auto_out_0_d_bits_source,
  input  [63:0] auto_out_0_d_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = beatsLeft == 3'h0; // @[Arbiter.scala 88:28]
  wire [7:0] readys_valid = {auto_out_7_d_valid,auto_out_6_d_valid,auto_out_5_d_valid,auto_out_4_d_valid,
    auto_out_3_d_valid,auto_out_2_d_valid,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 31:58]
  reg [7:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [7:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [7:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [15:0] readys_filter = {_readys_filter_T_1,auto_out_7_d_valid,auto_out_6_d_valid,auto_out_5_d_valid,
    auto_out_4_d_valid,auto_out_3_d_valid,auto_out_2_d_valid,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 31:58]
  wire [15:0] _GEN_1 = {{1'd0}, readys_filter[15:1]}; // @[package.scala 253:43]
  wire [15:0] _readys_unready_T_1 = readys_filter | _GEN_1; // @[package.scala 253:43]
  wire [15:0] _GEN_2 = {{2'd0}, _readys_unready_T_1[15:2]}; // @[package.scala 253:43]
  wire [15:0] _readys_unready_T_3 = _readys_unready_T_1 | _GEN_2; // @[package.scala 253:43]
  wire [15:0] _GEN_3 = {{4'd0}, _readys_unready_T_3[15:4]}; // @[package.scala 253:43]
  wire [15:0] _readys_unready_T_5 = _readys_unready_T_3 | _GEN_3; // @[package.scala 253:43]
  wire [15:0] _readys_unready_T_8 = {readys_mask, 8'h0}; // @[Arbiter.scala 25:66]
  wire [15:0] _GEN_4 = {{1'd0}, _readys_unready_T_5[15:1]}; // @[Arbiter.scala 25:58]
  wire [15:0] readys_unready = _GEN_4 | _readys_unready_T_8; // @[Arbiter.scala 25:58]
  wire [7:0] _readys_readys_T_2 = readys_unready[15:8] & readys_unready[7:0]; // @[Arbiter.scala 26:39]
  wire [7:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire  readys_0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_0 = readys_0 & auto_out_0_d_valid; // @[Arbiter.scala 97:79]
  reg  state_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  wire  readys_1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_1 = readys_1 & auto_out_1_d_valid; // @[Arbiter.scala 97:79]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  wire  readys_2 = readys_readys[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_2 = readys_2 & auto_out_2_d_valid; // @[Arbiter.scala 97:79]
  reg  state_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2 = idle ? earlyWinner_2 : state_2; // @[Arbiter.scala 117:30]
  wire  readys_3 = readys_readys[3]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_3 = readys_3 & auto_out_3_d_valid; // @[Arbiter.scala 97:79]
  reg  state_3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_3 = idle ? earlyWinner_3 : state_3; // @[Arbiter.scala 117:30]
  wire  readys_4 = readys_readys[4]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_4 = readys_4 & auto_out_4_d_valid; // @[Arbiter.scala 97:79]
  reg  state_4; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_4 = idle ? earlyWinner_4 : state_4; // @[Arbiter.scala 117:30]
  wire  readys_5 = readys_readys[5]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5 = readys_5 & auto_out_5_d_valid; // @[Arbiter.scala 97:79]
  reg  state_5; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5 = idle ? earlyWinner_5 : state_5; // @[Arbiter.scala 117:30]
  wire  readys_6 = readys_readys[6]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_6 = readys_6 & auto_out_6_d_valid; // @[Arbiter.scala 97:79]
  reg  state_6; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_6 = idle ? earlyWinner_6 : state_6; // @[Arbiter.scala 117:30]
  wire  readys_7 = readys_readys[7]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_7 = readys_7 & auto_out_7_d_valid; // @[Arbiter.scala 97:79]
  reg  state_7; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_7 = idle ? earlyWinner_7 : state_7; // @[Arbiter.scala 117:30]
  wire [35:0] _requestAIO_T = auto_in_a_bits_address ^ 36'h80000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_1 = {1'b0,$signed(_requestAIO_T)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_3 = $signed(_requestAIO_T_1) & 37'shf80000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_4 = $signed(_requestAIO_T_3) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_5 = auto_in_a_bits_address ^ 36'h100000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_6 = {1'b0,$signed(_requestAIO_T_5)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_8 = $signed(_requestAIO_T_6) & 37'shf00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_9 = $signed(_requestAIO_T_8) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_10 = auto_in_a_bits_address ^ 36'h200000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_11 = {1'b0,$signed(_requestAIO_T_10)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_13 = $signed(_requestAIO_T_11) & 37'she00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_14 = $signed(_requestAIO_T_13) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_15 = auto_in_a_bits_address ^ 36'h400000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_16 = {1'b0,$signed(_requestAIO_T_15)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_18 = $signed(_requestAIO_T_16) & 37'shc00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_19 = $signed(_requestAIO_T_18) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_20 = auto_in_a_bits_address ^ 36'h800000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_21 = {1'b0,$signed(_requestAIO_T_20)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_23 = $signed(_requestAIO_T_21) & 37'sh800000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_24 = $signed(_requestAIO_T_23) == 37'sh0; // @[Parameters.scala 137:67]
  wire  requestAIO_0_0 = _requestAIO_T_4 | _requestAIO_T_9 | _requestAIO_T_14 | _requestAIO_T_19 | _requestAIO_T_24; // @[Xbar.scala 363:92]
  wire [36:0] _requestAIO_T_30 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_32 = $signed(_requestAIO_T_30) & 37'shfe0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_33 = $signed(_requestAIO_T_32) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_34 = auto_in_a_bits_address ^ 36'h20000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_35 = {1'b0,$signed(_requestAIO_T_34)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_37 = $signed(_requestAIO_T_35) & 37'shff0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_38 = $signed(_requestAIO_T_37) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_39 = auto_in_a_bits_address ^ 36'h30000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_40 = {1'b0,$signed(_requestAIO_T_39)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_42 = $signed(_requestAIO_T_40) & 37'shff8000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_43 = $signed(_requestAIO_T_42) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_44 = auto_in_a_bits_address ^ 36'h40000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_45 = {1'b0,$signed(_requestAIO_T_44)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_47 = $signed(_requestAIO_T_45) & 37'shfc0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_48 = $signed(_requestAIO_T_47) == 37'sh0; // @[Parameters.scala 137:67]
  wire  requestAIO_0_1 = _requestAIO_T_33 | _requestAIO_T_38 | _requestAIO_T_43 | _requestAIO_T_48; // @[Xbar.scala 363:92]
  wire [35:0] _requestAIO_T_52 = auto_in_a_bits_address ^ 36'h38000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_53 = {1'b0,$signed(_requestAIO_T_52)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_55 = $signed(_requestAIO_T_53) & 37'shfffff0000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_2 = $signed(_requestAIO_T_55) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_57 = auto_in_a_bits_address ^ 36'h3c000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_58 = {1'b0,$signed(_requestAIO_T_57)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_60 = $signed(_requestAIO_T_58) & 37'shffc000000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_3 = $signed(_requestAIO_T_60) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_62 = auto_in_a_bits_address ^ 36'h3a000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_63 = {1'b0,$signed(_requestAIO_T_62)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_65 = $signed(_requestAIO_T_63) & 37'shffffff000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_4 = $signed(_requestAIO_T_65) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_67 = auto_in_a_bits_address ^ 36'h38020000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_68 = {1'b0,$signed(_requestAIO_T_67)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_70 = $signed(_requestAIO_T_68) & 37'shffffff000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_5 = $signed(_requestAIO_T_70) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_72 = auto_in_a_bits_address ^ 36'h38021000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_73 = {1'b0,$signed(_requestAIO_T_72)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_75 = $signed(_requestAIO_T_73) & 37'shffffff000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_6 = $signed(_requestAIO_T_75) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_77 = auto_in_a_bits_address ^ 36'h39000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_78 = {1'b0,$signed(_requestAIO_T_77)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_80 = $signed(_requestAIO_T_78) & 37'shfffff0000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_7 = $signed(_requestAIO_T_80) == 37'sh0; // @[Parameters.scala 137:67]
  wire [12:0] _beatsDO_decode_T_1 = 13'h3f << auto_out_0_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsDO_decode_T_3 = ~_beatsDO_decode_T_1[5:0]; // @[package.scala 234:46]
  wire [2:0] beatsDO_decode = _beatsDO_decode_T_3[5:3]; // @[Edges.scala 219:59]
  wire  beatsDO_opdata = auto_out_0_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire [2:0] out_1_1_d_bits_size = {{1'd0}, auto_out_1_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [2:0] out_1_2_d_bits_size = {{1'd0}, auto_out_2_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [2:0] out_1_3_d_bits_size = {{1'd0}, auto_out_3_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [2:0] out_1_4_d_bits_size = {{1'd0}, auto_out_4_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [2:0] out_1_5_d_bits_size = {{1'd0}, auto_out_5_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [2:0] out_1_6_d_bits_size = {{1'd0}, auto_out_6_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [2:0] out_1_7_d_bits_size = {{1'd0}, auto_out_7_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire  latch = idle & auto_in_d_ready; // @[Arbiter.scala 89:24]
  wire [7:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [8:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[7:0]; // @[package.scala 244:43]
  wire [9:0] _readys_mask_T_4 = {_readys_mask_T_3, 2'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_mask_T_6 = _readys_mask_T_3 | _readys_mask_T_4[7:0]; // @[package.scala 244:43]
  wire [11:0] _readys_mask_T_7 = {_readys_mask_T_6, 4'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_mask_T_9 = _readys_mask_T_6 | _readys_mask_T_7[7:0]; // @[package.scala 244:43]
  wire  _T_40 = auto_out_0_d_valid | auto_out_1_d_valid | auto_out_2_d_valid | auto_out_3_d_valid | auto_out_4_d_valid
     | auto_out_5_d_valid | auto_out_6_d_valid | auto_out_7_d_valid; // @[Arbiter.scala 107:36]
  wire  _sink_ACancel_earlyValid_T_21 = state_0 & auto_out_0_d_valid | state_1 & auto_out_1_d_valid | state_2 &
    auto_out_2_d_valid | state_3 & auto_out_3_d_valid | state_4 & auto_out_4_d_valid | state_5 & auto_out_5_d_valid |
    state_6 & auto_out_6_d_valid | state_7 & auto_out_7_d_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_17_earlyValid = idle ? _T_40 : _sink_ACancel_earlyValid_T_21; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_in_d_ready & sink_ACancel_17_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [2:0] _GEN_5 = {{2'd0}, _beatsLeft_T_2}; // @[Arbiter.scala 113:52]
  wire [2:0] _beatsLeft_T_4 = beatsLeft - _GEN_5; // @[Arbiter.scala 113:52]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire  allowed_2 = idle ? readys_2 : state_2; // @[Arbiter.scala 121:24]
  wire  allowed_3 = idle ? readys_3 : state_3; // @[Arbiter.scala 121:24]
  wire  allowed_4 = idle ? readys_4 : state_4; // @[Arbiter.scala 121:24]
  wire  allowed_5 = idle ? readys_5 : state_5; // @[Arbiter.scala 121:24]
  wire  allowed_6 = idle ? readys_6 : state_6; // @[Arbiter.scala 121:24]
  wire  allowed_7 = idle ? readys_7 : state_7; // @[Arbiter.scala 121:24]
  wire [63:0] _T_87 = muxStateEarly_0 ? auto_out_0_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_88 = muxStateEarly_1 ? auto_out_1_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_89 = muxStateEarly_2 ? auto_out_2_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_90 = muxStateEarly_3 ? auto_out_3_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_91 = muxStateEarly_4 ? auto_out_4_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_92 = muxStateEarly_5 ? auto_out_5_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_93 = muxStateEarly_6 ? auto_out_6_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_94 = muxStateEarly_7 ? auto_out_7_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_95 = _T_87 | _T_88; // @[Mux.scala 27:73]
  wire [63:0] _T_96 = _T_95 | _T_89; // @[Mux.scala 27:73]
  wire [63:0] _T_97 = _T_96 | _T_90; // @[Mux.scala 27:73]
  wire [63:0] _T_98 = _T_97 | _T_91; // @[Mux.scala 27:73]
  wire [63:0] _T_99 = _T_98 | _T_92; // @[Mux.scala 27:73]
  wire [63:0] _T_100 = _T_99 | _T_93; // @[Mux.scala 27:73]
  wire [2:0] _T_147 = muxStateEarly_0 ? auto_out_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_148 = muxStateEarly_1 ? out_1_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_149 = muxStateEarly_2 ? out_1_2_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_150 = muxStateEarly_3 ? out_1_3_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_151 = muxStateEarly_4 ? out_1_4_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_152 = muxStateEarly_5 ? out_1_5_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_153 = muxStateEarly_6 ? out_1_6_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_154 = muxStateEarly_7 ? out_1_7_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_155 = _T_147 | _T_148; // @[Mux.scala 27:73]
  wire [2:0] _T_156 = _T_155 | _T_149; // @[Mux.scala 27:73]
  wire [2:0] _T_157 = _T_156 | _T_150; // @[Mux.scala 27:73]
  wire [2:0] _T_158 = _T_157 | _T_151; // @[Mux.scala 27:73]
  wire [2:0] _T_159 = _T_158 | _T_152; // @[Mux.scala 27:73]
  wire [2:0] _T_160 = _T_159 | _T_153; // @[Mux.scala 27:73]
  wire [2:0] _T_177 = muxStateEarly_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_178 = muxStateEarly_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_179 = muxStateEarly_2 ? auto_out_2_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_180 = muxStateEarly_3 ? auto_out_3_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_181 = muxStateEarly_4 ? auto_out_4_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_182 = muxStateEarly_5 ? auto_out_5_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_183 = muxStateEarly_6 ? auto_out_6_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_184 = muxStateEarly_7 ? auto_out_7_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_185 = _T_177 | _T_178; // @[Mux.scala 27:73]
  wire [2:0] _T_186 = _T_185 | _T_179; // @[Mux.scala 27:73]
  wire [2:0] _T_187 = _T_186 | _T_180; // @[Mux.scala 27:73]
  wire [2:0] _T_188 = _T_187 | _T_181; // @[Mux.scala 27:73]
  wire [2:0] _T_189 = _T_188 | _T_182; // @[Mux.scala 27:73]
  wire [2:0] _T_190 = _T_189 | _T_183; // @[Mux.scala 27:73]
  assign auto_in_a_ready = requestAIO_0_0 & auto_out_0_a_ready | requestAIO_0_1 & auto_out_1_a_ready | requestAIO_0_2 &
    auto_out_2_a_ready | requestAIO_0_3 & auto_out_3_a_ready | requestAIO_0_4 & auto_out_4_a_ready | requestAIO_0_5 &
    auto_out_5_a_ready | requestAIO_0_6 & auto_out_6_a_ready | requestAIO_0_7 & auto_out_7_a_ready; // @[Mux.scala 27:73]
  assign auto_in_d_valid = idle ? _T_40 : _sink_ACancel_earlyValid_T_21; // @[Arbiter.scala 125:29]
  assign auto_in_d_bits_opcode = _T_190 | _T_184; // @[Mux.scala 27:73]
  assign auto_in_d_bits_size = _T_160 | _T_154; // @[Mux.scala 27:73]
  assign auto_in_d_bits_source = muxStateEarly_0 & auto_out_0_d_bits_source | muxStateEarly_1 & auto_out_1_d_bits_source
     | muxStateEarly_2 & auto_out_2_d_bits_source | muxStateEarly_3 & auto_out_3_d_bits_source | muxStateEarly_4 &
    auto_out_4_d_bits_source | muxStateEarly_5 & auto_out_5_d_bits_source | muxStateEarly_6 & auto_out_6_d_bits_source
     | muxStateEarly_7 & auto_out_7_d_bits_source; // @[Mux.scala 27:73]
  assign auto_in_d_bits_data = _T_100 | _T_94; // @[Mux.scala 27:73]
  assign auto_out_7_a_valid = auto_in_a_valid & requestAIO_0_7; // @[Xbar.scala 428:50]
  assign auto_out_7_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_7_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_7_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_7_a_bits_address = auto_in_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_7_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_7_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_7_d_ready = auto_in_d_ready & allowed_7; // @[Arbiter.scala 123:31]
  assign auto_out_6_a_valid = auto_in_a_valid & requestAIO_0_6; // @[Xbar.scala 428:50]
  assign auto_out_6_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_6_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_6_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_6_a_bits_address = auto_in_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_6_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_6_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_6_d_ready = auto_in_d_ready & allowed_6; // @[Arbiter.scala 123:31]
  assign auto_out_5_a_valid = auto_in_a_valid & requestAIO_0_5; // @[Xbar.scala 428:50]
  assign auto_out_5_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_5_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_5_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_5_a_bits_address = auto_in_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_5_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_5_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_5_d_ready = auto_in_d_ready & allowed_5; // @[Arbiter.scala 123:31]
  assign auto_out_4_a_valid = auto_in_a_valid & requestAIO_0_4; // @[Xbar.scala 428:50]
  assign auto_out_4_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_4_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_4_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_4_a_bits_address = auto_in_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_4_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_4_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_4_d_ready = auto_in_d_ready & allowed_4; // @[Arbiter.scala 123:31]
  assign auto_out_3_a_valid = auto_in_a_valid & requestAIO_0_3; // @[Xbar.scala 428:50]
  assign auto_out_3_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_3_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_3_a_bits_address = auto_in_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_3_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_d_ready = auto_in_d_ready & allowed_3; // @[Arbiter.scala 123:31]
  assign auto_out_2_a_valid = auto_in_a_valid & requestAIO_0_2; // @[Xbar.scala 428:50]
  assign auto_out_2_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_2_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_2_a_bits_address = auto_in_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_2_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_d_ready = auto_in_d_ready & allowed_2; // @[Arbiter.scala 123:31]
  assign auto_out_1_a_valid = auto_in_a_valid & requestAIO_0_1; // @[Xbar.scala 428:50]
  assign auto_out_1_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_1_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_1_a_bits_address = auto_in_a_bits_address[30:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_1_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_d_ready = auto_in_d_ready & allowed_1; // @[Arbiter.scala 123:31]
  assign auto_out_0_a_valid = auto_in_a_valid & requestAIO_0_0; // @[Xbar.scala 428:50]
  assign auto_out_0_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_0_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_d_ready = auto_in_d_ready & allowed_0; // @[Arbiter.scala 123:31]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft <= 3'h0; // @[Arbiter.scala 87:30]
    end else if (latch) begin // @[Arbiter.scala 113:23]
      if (earlyWinner_0) begin // @[Arbiter.scala 111:73]
        if (beatsDO_opdata) begin // @[Edges.scala 220:14]
          beatsLeft <= beatsDO_decode;
        end else begin
          beatsLeft <= 3'h0;
        end
      end else begin
        beatsLeft <= 3'h0;
      end
    end else begin
      beatsLeft <= _beatsLeft_T_4;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask <= 8'hff; // @[Arbiter.scala 23:23]
    end else if (latch & |readys_valid) begin // @[Arbiter.scala 27:32]
      readys_mask <= _readys_mask_T_9; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_0 <= earlyWinner_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_1 <= earlyWinner_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_2 <= earlyWinner_2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_3 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_3 <= earlyWinner_3;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_4 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_4 <= earlyWinner_4;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_5 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_5 <= earlyWinner_5;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_6 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_6 <= earlyWinner_6;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_7 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state_7 <= earlyWinner_7;
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
  _RAND_0 = {1{`RANDOM}};
  beatsLeft = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  readys_mask = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  state_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  state_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_5 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  state_6 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  state_7 = _RAND_9[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
