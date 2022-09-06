module TLXbar_8(
  input         clock,
  input         reset,
  output        auto_in_1_a_ready,
  input         auto_in_1_a_valid,
  input  [2:0]  auto_in_1_a_bits_opcode,
  input  [2:0]  auto_in_1_a_bits_size,
  input         auto_in_1_a_bits_source,
  input  [35:0] auto_in_1_a_bits_address,
  input  [7:0]  auto_in_1_a_bits_mask,
  input  [63:0] auto_in_1_a_bits_data,
  input         auto_in_1_d_ready,
  output        auto_in_1_d_valid,
  output [2:0]  auto_in_1_d_bits_opcode,
  output [2:0]  auto_in_1_d_bits_size,
  output [63:0] auto_in_1_d_bits_data,
  output        auto_in_0_a_ready,
  input         auto_in_0_a_valid,
  input  [2:0]  auto_in_0_a_bits_opcode,
  input  [2:0]  auto_in_0_a_bits_size,
  input  [35:0] auto_in_0_a_bits_address,
  input  [7:0]  auto_in_0_a_bits_mask,
  input  [63:0] auto_in_0_a_bits_data,
  input         auto_in_0_d_ready,
  output        auto_in_0_d_valid,
  output [2:0]  auto_in_0_d_bits_opcode,
  output [2:0]  auto_in_0_d_bits_size,
  output [63:0] auto_in_0_d_bits_data,
  input         auto_out_1_a_ready,
  output        auto_out_1_a_valid,
  output [2:0]  auto_out_1_a_bits_opcode,
  output [2:0]  auto_out_1_a_bits_size,
  output        auto_out_1_a_bits_source,
  output [35:0] auto_out_1_a_bits_address,
  output [7:0]  auto_out_1_a_bits_mask,
  output [63:0] auto_out_1_a_bits_data,
  output        auto_out_1_d_ready,
  input         auto_out_1_d_valid,
  input  [2:0]  auto_out_1_d_bits_opcode,
  input  [2:0]  auto_out_1_d_bits_size,
  input         auto_out_1_d_bits_source,
  input  [63:0] auto_out_1_d_bits_data,
  input         auto_out_0_a_ready,
  output        auto_out_0_a_valid,
  output [2:0]  auto_out_0_a_bits_opcode,
  output [1:0]  auto_out_0_a_bits_size,
  output        auto_out_0_a_bits_source,
  output [29:0] auto_out_0_a_bits_address,
  output [7:0]  auto_out_0_a_bits_mask,
  output [63:0] auto_out_0_a_bits_data,
  output        auto_out_0_d_ready,
  input         auto_out_0_d_valid,
  input  [2:0]  auto_out_0_d_bits_opcode,
  input  [1:0]  auto_out_0_d_bits_size,
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
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  wire [35:0] _requestAIO_T = auto_in_0_a_bits_address ^ 36'h38010000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_1 = {1'b0,$signed(_requestAIO_T)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_3 = $signed(_requestAIO_T_1) & 37'shffc010000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_0 = $signed(_requestAIO_T_3) == 37'sh0; // @[Parameters.scala 137:67]
  wire [36:0] _requestAIO_T_6 = {1'b0,$signed(auto_in_0_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_8 = $signed(_requestAIO_T_6) & 37'shfe0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_9 = $signed(_requestAIO_T_8) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_10 = auto_in_0_a_bits_address ^ 36'h20000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_11 = {1'b0,$signed(_requestAIO_T_10)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_13 = $signed(_requestAIO_T_11) & 37'shff0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_14 = $signed(_requestAIO_T_13) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_15 = auto_in_0_a_bits_address ^ 36'h30000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_16 = {1'b0,$signed(_requestAIO_T_15)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_18 = $signed(_requestAIO_T_16) & 37'shff8000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_19 = $signed(_requestAIO_T_18) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_20 = auto_in_0_a_bits_address ^ 36'h38000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_21 = {1'b0,$signed(_requestAIO_T_20)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_23 = $signed(_requestAIO_T_21) & 37'shffc010000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_24 = $signed(_requestAIO_T_23) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_25 = auto_in_0_a_bits_address ^ 36'h3c000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_26 = {1'b0,$signed(_requestAIO_T_25)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_28 = $signed(_requestAIO_T_26) & 37'shffc000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_29 = $signed(_requestAIO_T_28) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_30 = auto_in_0_a_bits_address ^ 36'h40000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_31 = {1'b0,$signed(_requestAIO_T_30)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_33 = $signed(_requestAIO_T_31) & 37'shfc0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_34 = $signed(_requestAIO_T_33) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_35 = auto_in_0_a_bits_address ^ 36'h80000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_36 = {1'b0,$signed(_requestAIO_T_35)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_38 = $signed(_requestAIO_T_36) & 37'shf80000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_39 = $signed(_requestAIO_T_38) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_40 = auto_in_0_a_bits_address ^ 36'h100000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_41 = {1'b0,$signed(_requestAIO_T_40)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_43 = $signed(_requestAIO_T_41) & 37'shf00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_44 = $signed(_requestAIO_T_43) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_45 = auto_in_0_a_bits_address ^ 36'h200000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_46 = {1'b0,$signed(_requestAIO_T_45)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_48 = $signed(_requestAIO_T_46) & 37'she00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_49 = $signed(_requestAIO_T_48) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_50 = auto_in_0_a_bits_address ^ 36'h400000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_51 = {1'b0,$signed(_requestAIO_T_50)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_53 = $signed(_requestAIO_T_51) & 37'shc00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_54 = $signed(_requestAIO_T_53) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_55 = auto_in_0_a_bits_address ^ 36'h800000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_56 = {1'b0,$signed(_requestAIO_T_55)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_58 = $signed(_requestAIO_T_56) & 37'sh800000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_59 = $signed(_requestAIO_T_58) == 37'sh0; // @[Parameters.scala 137:67]
  wire  requestAIO_0_1 = _requestAIO_T_9 | _requestAIO_T_14 | _requestAIO_T_19 | _requestAIO_T_24 | _requestAIO_T_29 |
    _requestAIO_T_34 | _requestAIO_T_39 | _requestAIO_T_44 | _requestAIO_T_49 | _requestAIO_T_54 | _requestAIO_T_59; // @[Xbar.scala 363:92]
  wire [35:0] _requestAIO_T_70 = auto_in_1_a_bits_address ^ 36'h38010000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_71 = {1'b0,$signed(_requestAIO_T_70)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_73 = $signed(_requestAIO_T_71) & 37'shffc010000; // @[Parameters.scala 137:52]
  wire  requestAIO_1_0 = $signed(_requestAIO_T_73) == 37'sh0; // @[Parameters.scala 137:67]
  wire [36:0] _requestAIO_T_76 = {1'b0,$signed(auto_in_1_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_78 = $signed(_requestAIO_T_76) & 37'shfe0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_79 = $signed(_requestAIO_T_78) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_80 = auto_in_1_a_bits_address ^ 36'h20000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_81 = {1'b0,$signed(_requestAIO_T_80)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_83 = $signed(_requestAIO_T_81) & 37'shff0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_84 = $signed(_requestAIO_T_83) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_85 = auto_in_1_a_bits_address ^ 36'h30000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_86 = {1'b0,$signed(_requestAIO_T_85)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_88 = $signed(_requestAIO_T_86) & 37'shff8000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_89 = $signed(_requestAIO_T_88) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_90 = auto_in_1_a_bits_address ^ 36'h38000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_91 = {1'b0,$signed(_requestAIO_T_90)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_93 = $signed(_requestAIO_T_91) & 37'shffc010000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_94 = $signed(_requestAIO_T_93) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_95 = auto_in_1_a_bits_address ^ 36'h3c000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_96 = {1'b0,$signed(_requestAIO_T_95)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_98 = $signed(_requestAIO_T_96) & 37'shffc000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_99 = $signed(_requestAIO_T_98) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_100 = auto_in_1_a_bits_address ^ 36'h40000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_101 = {1'b0,$signed(_requestAIO_T_100)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_103 = $signed(_requestAIO_T_101) & 37'shfc0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_104 = $signed(_requestAIO_T_103) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_105 = auto_in_1_a_bits_address ^ 36'h80000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_106 = {1'b0,$signed(_requestAIO_T_105)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_108 = $signed(_requestAIO_T_106) & 37'shf80000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_109 = $signed(_requestAIO_T_108) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_110 = auto_in_1_a_bits_address ^ 36'h100000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_111 = {1'b0,$signed(_requestAIO_T_110)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_113 = $signed(_requestAIO_T_111) & 37'shf00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_114 = $signed(_requestAIO_T_113) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_115 = auto_in_1_a_bits_address ^ 36'h200000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_116 = {1'b0,$signed(_requestAIO_T_115)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_118 = $signed(_requestAIO_T_116) & 37'she00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_119 = $signed(_requestAIO_T_118) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_120 = auto_in_1_a_bits_address ^ 36'h400000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_121 = {1'b0,$signed(_requestAIO_T_120)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_123 = $signed(_requestAIO_T_121) & 37'shc00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_124 = $signed(_requestAIO_T_123) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_125 = auto_in_1_a_bits_address ^ 36'h800000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_126 = {1'b0,$signed(_requestAIO_T_125)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_128 = $signed(_requestAIO_T_126) & 37'sh800000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_129 = $signed(_requestAIO_T_128) == 37'sh0; // @[Parameters.scala 137:67]
  wire  requestAIO_1_1 = _requestAIO_T_79 | _requestAIO_T_84 | _requestAIO_T_89 | _requestAIO_T_94 | _requestAIO_T_99 |
    _requestAIO_T_104 | _requestAIO_T_109 | _requestAIO_T_114 | _requestAIO_T_119 | _requestAIO_T_124 |
    _requestAIO_T_129; // @[Xbar.scala 363:92]
  wire  requestDOI_0_1 = ~auto_out_0_d_bits_source; // @[Parameters.scala 46:9]
  wire  requestDOI_1_1 = ~auto_out_1_d_bits_source; // @[Parameters.scala 46:9]
  wire [12:0] _beatsAI_decode_T_1 = 13'h3f << auto_in_0_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsAI_decode_T_3 = ~_beatsAI_decode_T_1[5:0]; // @[package.scala 234:46]
  wire [2:0] beatsAI_decode = _beatsAI_decode_T_3[5:3]; // @[Edges.scala 219:59]
  wire  beatsAI_opdata = ~auto_in_0_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire [2:0] beatsAI_0 = beatsAI_opdata ? beatsAI_decode : 3'h0; // @[Edges.scala 220:14]
  wire [12:0] _beatsAI_decode_T_5 = 13'h3f << auto_in_1_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsAI_decode_T_7 = ~_beatsAI_decode_T_5[5:0]; // @[package.scala 234:46]
  wire [2:0] beatsAI_decode_1 = _beatsAI_decode_T_7[5:3]; // @[Edges.scala 219:59]
  wire  beatsAI_opdata_1 = ~auto_in_1_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire [2:0] beatsAI_1 = beatsAI_opdata_1 ? beatsAI_decode_1 : 3'h0; // @[Edges.scala 220:14]
  wire [2:0] out_2_0_d_bits_size = {{1'd0}, auto_out_0_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [12:0] _beatsDO_decode_T_5 = 13'h3f << auto_out_1_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsDO_decode_T_7 = ~_beatsDO_decode_T_5[5:0]; // @[package.scala 234:46]
  wire [2:0] beatsDO_decode_1 = _beatsDO_decode_T_7[5:3]; // @[Edges.scala 219:59]
  wire  beatsDO_opdata_1 = auto_out_1_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  portsAOI_filtered__0_earlyValid = auto_in_0_a_valid & requestAIO_0_0; // @[Xbar.scala 428:50]
  wire  portsAOI_filtered__1_earlyValid = auto_in_0_a_valid & requestAIO_0_1; // @[Xbar.scala 428:50]
  reg [2:0] beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = beatsLeft == 3'h0; // @[Arbiter.scala 88:28]
  wire  portsAOI_filtered_1_0_earlyValid = auto_in_1_a_valid & requestAIO_1_0; // @[Xbar.scala 428:50]
  wire [1:0] readys_valid = {portsAOI_filtered_1_0_earlyValid,portsAOI_filtered__0_earlyValid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter = {_readys_filter_T_1,portsAOI_filtered_1_0_earlyValid,portsAOI_filtered__0_earlyValid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_4 = {{1'd0}, readys_filter[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_1 = readys_filter | _GEN_4; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_4 = {readys_mask, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_5 = {{1'd0}, _readys_unready_T_1[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready = _GEN_5 | _readys_unready_T_4; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_2 = readys_unready[3:2] & readys_unready[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire  readys__0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  reg  state__0; // @[Arbiter.scala 116:26]
  wire  allowed__0 = idle ? readys__0 : state__0; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered__0_ready = auto_out_0_a_ready & allowed__0; // @[Arbiter.scala 123:31]
  reg [2:0] beatsLeft_1; // @[Arbiter.scala 87:30]
  wire  idle_1 = beatsLeft_1 == 3'h0; // @[Arbiter.scala 88:28]
  wire  portsAOI_filtered_1_1_earlyValid = auto_in_1_a_valid & requestAIO_1_1; // @[Xbar.scala 428:50]
  wire [1:0] readys_valid_1 = {portsAOI_filtered_1_1_earlyValid,portsAOI_filtered__1_earlyValid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_1; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_2 = ~readys_mask_1; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_3 = readys_valid_1 & _readys_filter_T_2; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_1 = {_readys_filter_T_3,portsAOI_filtered_1_1_earlyValid,portsAOI_filtered__1_earlyValid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_6 = {{1'd0}, readys_filter_1[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_6 = readys_filter_1 | _GEN_6; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_9 = {readys_mask_1, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_7 = {{1'd0}, _readys_unready_T_6[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_1 = _GEN_7 | _readys_unready_T_9; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_5 = readys_unready_1[3:2] & readys_unready_1[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_1 = ~_readys_readys_T_5; // @[Arbiter.scala 26:18]
  wire  readys_1_0 = readys_readys_1[0]; // @[Arbiter.scala 95:86]
  reg  state_1_0; // @[Arbiter.scala 116:26]
  wire  allowed_1_0 = idle_1 ? readys_1_0 : state_1_0; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered__1_ready = auto_out_1_a_ready & allowed_1_0; // @[Arbiter.scala 123:31]
  wire  readys__1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  reg  state__1; // @[Arbiter.scala 116:26]
  wire  allowed__1 = idle ? readys__1 : state__1; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_1_0_ready = auto_out_0_a_ready & allowed__1; // @[Arbiter.scala 123:31]
  wire  readys_1_1 = readys_readys_1[1]; // @[Arbiter.scala 95:86]
  reg  state_1_1; // @[Arbiter.scala 116:26]
  wire  allowed_1_1 = idle_1 ? readys_1_1 : state_1_1; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_1_1_ready = auto_out_1_a_ready & allowed_1_1; // @[Arbiter.scala 123:31]
  wire  portsDIO_filtered__0_valid = auto_out_0_d_valid & auto_out_0_d_bits_source; // @[Xbar.scala 179:40]
  wire  portsDIO_filtered__1_valid = auto_out_0_d_valid & requestDOI_0_1; // @[Xbar.scala 179:40]
  reg [2:0] beatsLeft_2; // @[Arbiter.scala 87:30]
  wire  idle_2 = beatsLeft_2 == 3'h0; // @[Arbiter.scala 88:28]
  wire  portsDIO_filtered_1_0_valid = auto_out_1_d_valid & auto_out_1_d_bits_source; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_2 = {portsDIO_filtered_1_0_valid,portsDIO_filtered__0_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_2; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_4 = ~readys_mask_2; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_5 = readys_valid_2 & _readys_filter_T_4; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_2 = {_readys_filter_T_5,portsDIO_filtered_1_0_valid,portsDIO_filtered__0_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_8 = {{1'd0}, readys_filter_2[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_11 = readys_filter_2 | _GEN_8; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_14 = {readys_mask_2, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_9 = {{1'd0}, _readys_unready_T_11[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_2 = _GEN_9 | _readys_unready_T_14; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_8 = readys_unready_2[3:2] & readys_unready_2[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_2 = ~_readys_readys_T_8; // @[Arbiter.scala 26:18]
  wire  readys_2_0 = readys_readys_2[0]; // @[Arbiter.scala 95:86]
  reg  state_2_0; // @[Arbiter.scala 116:26]
  wire  allowed_2_0 = idle_2 ? readys_2_0 : state_2_0; // @[Arbiter.scala 121:24]
  wire  out_8_ready = auto_in_0_d_ready & allowed_2_0; // @[Arbiter.scala 123:31]
  reg [2:0] beatsLeft_3; // @[Arbiter.scala 87:30]
  wire  idle_3 = beatsLeft_3 == 3'h0; // @[Arbiter.scala 88:28]
  wire  portsDIO_filtered_1_1_valid = auto_out_1_d_valid & requestDOI_1_1; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_3 = {portsDIO_filtered_1_1_valid,portsDIO_filtered__1_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_3; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_6 = ~readys_mask_3; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_7 = readys_valid_3 & _readys_filter_T_6; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_3 = {_readys_filter_T_7,portsDIO_filtered_1_1_valid,portsDIO_filtered__1_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_10 = {{1'd0}, readys_filter_3[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_16 = readys_filter_3 | _GEN_10; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_19 = {readys_mask_3, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_11 = {{1'd0}, _readys_unready_T_16[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_3 = _GEN_11 | _readys_unready_T_19; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_11 = readys_unready_3[3:2] & readys_unready_3[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_3 = ~_readys_readys_T_11; // @[Arbiter.scala 26:18]
  wire  readys_3_0 = readys_readys_3[0]; // @[Arbiter.scala 95:86]
  reg  state_3_0; // @[Arbiter.scala 116:26]
  wire  allowed_3_0 = idle_3 ? readys_3_0 : state_3_0; // @[Arbiter.scala 121:24]
  wire  out_12_ready = auto_in_1_d_ready & allowed_3_0; // @[Arbiter.scala 123:31]
  wire  readys_2_1 = readys_readys_2[1]; // @[Arbiter.scala 95:86]
  reg  state_2_1; // @[Arbiter.scala 116:26]
  wire  allowed_2_1 = idle_2 ? readys_2_1 : state_2_1; // @[Arbiter.scala 121:24]
  wire  out_9_ready = auto_in_0_d_ready & allowed_2_1; // @[Arbiter.scala 123:31]
  wire  readys_3_1 = readys_readys_3[1]; // @[Arbiter.scala 95:86]
  reg  state_3_1; // @[Arbiter.scala 116:26]
  wire  allowed_3_1 = idle_3 ? readys_3_1 : state_3_1; // @[Arbiter.scala 121:24]
  wire  out_13_ready = auto_in_1_d_ready & allowed_3_1; // @[Arbiter.scala 123:31]
  wire  latch = idle & auto_out_0_a_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[1:0]; // @[package.scala 244:43]
  wire  earlyWinner__0 = readys__0 & portsAOI_filtered__0_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__1 = readys__1 & portsAOI_filtered_1_0_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_10 = portsAOI_filtered__0_earlyValid | portsAOI_filtered_1_0_earlyValid; // @[Arbiter.scala 107:36]
  wire [2:0] maskedBeats_0 = earlyWinner__0 ? beatsAI_0 : 3'h0; // @[Arbiter.scala 111:73]
  wire [2:0] maskedBeats_1 = earlyWinner__1 ? beatsAI_1 : 3'h0; // @[Arbiter.scala 111:73]
  wire [2:0] initBeats = maskedBeats_0 | maskedBeats_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly__0 = idle ? earlyWinner__0 : state__0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly__1 = idle ? earlyWinner__1 : state__1; // @[Arbiter.scala 117:30]
  wire  _out_0_a_earlyValid_T_3 = state__0 & portsAOI_filtered__0_earlyValid | state__1 &
    portsAOI_filtered_1_0_earlyValid; // @[Mux.scala 27:73]
  wire  out_2_0_a_earlyValid = idle ? _T_10 : _out_0_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_out_0_a_ready & out_2_0_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [2:0] _GEN_12 = {{2'd0}, _beatsLeft_T_2}; // @[Arbiter.scala 113:52]
  wire [2:0] _beatsLeft_T_4 = beatsLeft - _GEN_12; // @[Arbiter.scala 113:52]
  wire [63:0] _T_27 = muxStateEarly__0 ? auto_in_0_a_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_28 = muxStateEarly__1 ? auto_in_1_a_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [7:0] _T_30 = muxStateEarly__0 ? auto_in_0_a_bits_mask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _T_31 = muxStateEarly__1 ? auto_in_1_a_bits_mask : 8'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_33 = muxStateEarly__0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_34 = muxStateEarly__1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_2_0_a_bits_address = _T_33 | _T_34; // @[Mux.scala 27:73]
  wire [2:0] _T_39 = muxStateEarly__0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_40 = muxStateEarly__1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_2_0_a_bits_size = _T_39 | _T_40; // @[Mux.scala 27:73]
  wire [2:0] _T_45 = muxStateEarly__0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_46 = muxStateEarly__1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_1 = idle_1 & auto_out_1_a_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_5 = readys_readys_1 & readys_valid_1; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_6 = {_readys_mask_T_5, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_8 = _readys_mask_T_5 | _readys_mask_T_6[1:0]; // @[package.scala 244:43]
  wire  earlyWinner_1_0 = readys_1_0 & portsAOI_filtered__1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_1 = readys_1_1 & portsAOI_filtered_1_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_58 = portsAOI_filtered__1_earlyValid | portsAOI_filtered_1_1_earlyValid; // @[Arbiter.scala 107:36]
  wire [2:0] maskedBeats_0_1 = earlyWinner_1_0 ? beatsAI_0 : 3'h0; // @[Arbiter.scala 111:73]
  wire [2:0] maskedBeats_1_1 = earlyWinner_1_1 ? beatsAI_1 : 3'h0; // @[Arbiter.scala 111:73]
  wire [2:0] initBeats_1 = maskedBeats_0_1 | maskedBeats_1_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_1_0 = idle_1 ? earlyWinner_1_0 : state_1_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_1_1 = idle_1 ? earlyWinner_1_1 : state_1_1; // @[Arbiter.scala 117:30]
  wire  _out_1_a_earlyValid_T_3 = state_1_0 & portsAOI_filtered__1_earlyValid | state_1_1 &
    portsAOI_filtered_1_1_earlyValid; // @[Mux.scala 27:73]
  wire  out_2_1_a_earlyValid = idle_1 ? _T_58 : _out_1_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_8 = auto_out_1_a_ready & out_2_1_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [2:0] _GEN_13 = {{2'd0}, _beatsLeft_T_8}; // @[Arbiter.scala 113:52]
  wire [2:0] _beatsLeft_T_10 = beatsLeft_1 - _GEN_13; // @[Arbiter.scala 113:52]
  wire [63:0] _T_75 = muxStateEarly_1_0 ? auto_in_0_a_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_76 = muxStateEarly_1_1 ? auto_in_1_a_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [7:0] _T_78 = muxStateEarly_1_0 ? auto_in_0_a_bits_mask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _T_79 = muxStateEarly_1_1 ? auto_in_1_a_bits_mask : 8'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_81 = muxStateEarly_1_0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_82 = muxStateEarly_1_1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_87 = muxStateEarly_1_0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_88 = muxStateEarly_1_1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_93 = muxStateEarly_1_0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_94 = muxStateEarly_1_1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_2 = idle_2 & auto_in_0_d_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_10 = readys_readys_2 & readys_valid_2; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_11 = {_readys_mask_T_10, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_13 = _readys_mask_T_10 | _readys_mask_T_11[1:0]; // @[package.scala 244:43]
  wire  earlyWinner_2_0 = readys_2_0 & portsDIO_filtered__0_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_2_1 = readys_2_1 & portsDIO_filtered_1_0_valid; // @[Arbiter.scala 97:79]
  wire  _T_106 = portsDIO_filtered__0_valid | portsDIO_filtered_1_0_valid; // @[Arbiter.scala 107:36]
  wire  muxStateEarly_2_0 = idle_2 ? earlyWinner_2_0 : state_2_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_2_1 = idle_2 ? earlyWinner_2_1 : state_2_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_3 = state_2_0 & portsDIO_filtered__0_valid | state_2_1 & portsDIO_filtered_1_0_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_5_earlyValid = idle_2 ? _T_106 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_14 = auto_in_0_d_ready & sink_ACancel_5_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [2:0] _GEN_14 = {{2'd0}, _beatsLeft_T_14}; // @[Arbiter.scala 113:52]
  wire [2:0] _beatsLeft_T_16 = beatsLeft_2 - _GEN_14; // @[Arbiter.scala 113:52]
  wire [63:0] _T_123 = muxStateEarly_2_0 ? auto_out_0_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_124 = muxStateEarly_2_1 ? auto_out_1_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_135 = muxStateEarly_2_0 ? out_2_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_136 = muxStateEarly_2_1 ? auto_out_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_141 = muxStateEarly_2_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_142 = muxStateEarly_2_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_3 = idle_3 & auto_in_1_d_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_15 = readys_readys_3 & readys_valid_3; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_16 = {_readys_mask_T_15, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_18 = _readys_mask_T_15 | _readys_mask_T_16[1:0]; // @[package.scala 244:43]
  wire  earlyWinner_3_0 = readys_3_0 & portsDIO_filtered__1_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_3_1 = readys_3_1 & portsDIO_filtered_1_1_valid; // @[Arbiter.scala 97:79]
  wire  _T_154 = portsDIO_filtered__1_valid | portsDIO_filtered_1_1_valid; // @[Arbiter.scala 107:36]
  wire  muxStateEarly_3_0 = idle_3 ? earlyWinner_3_0 : state_3_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_3_1 = idle_3 ? earlyWinner_3_1 : state_3_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_8 = state_3_0 & portsDIO_filtered__1_valid | state_3_1 & portsDIO_filtered_1_1_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_7_earlyValid = idle_3 ? _T_154 : _sink_ACancel_earlyValid_T_8; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_20 = auto_in_1_d_ready & sink_ACancel_7_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [2:0] _GEN_15 = {{2'd0}, _beatsLeft_T_20}; // @[Arbiter.scala 113:52]
  wire [2:0] _beatsLeft_T_22 = beatsLeft_3 - _GEN_15; // @[Arbiter.scala 113:52]
  wire [63:0] _T_171 = muxStateEarly_3_0 ? auto_out_0_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_172 = muxStateEarly_3_1 ? auto_out_1_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_183 = muxStateEarly_3_0 ? out_2_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_184 = muxStateEarly_3_1 ? auto_out_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_189 = muxStateEarly_3_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_190 = muxStateEarly_3_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  assign auto_in_1_a_ready = requestAIO_1_0 & portsAOI_filtered_1_0_ready | requestAIO_1_1 & portsAOI_filtered_1_1_ready
    ; // @[Mux.scala 27:73]
  assign auto_in_1_d_valid = idle_3 ? _T_154 : _sink_ACancel_earlyValid_T_8; // @[Arbiter.scala 125:29]
  assign auto_in_1_d_bits_opcode = _T_189 | _T_190; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_size = _T_183 | _T_184; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_data = _T_171 | _T_172; // @[Mux.scala 27:73]
  assign auto_in_0_a_ready = requestAIO_0_0 & portsAOI_filtered__0_ready | requestAIO_0_1 & portsAOI_filtered__1_ready; // @[Mux.scala 27:73]
  assign auto_in_0_d_valid = idle_2 ? _T_106 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_in_0_d_bits_opcode = _T_141 | _T_142; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_size = _T_135 | _T_136; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_data = _T_123 | _T_124; // @[Mux.scala 27:73]
  assign auto_out_1_a_valid = idle_1 ? _T_58 : _out_1_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_1_a_bits_opcode = _T_93 | _T_94; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_size = _T_87 | _T_88; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_source = muxStateEarly_1_0 | muxStateEarly_1_1 & auto_in_1_a_bits_source; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_address = _T_81 | _T_82; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_mask = _T_78 | _T_79; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_data = _T_75 | _T_76; // @[Mux.scala 27:73]
  assign auto_out_1_d_ready = auto_out_1_d_bits_source & out_9_ready | requestDOI_1_1 & out_13_ready; // @[Mux.scala 27:73]
  assign auto_out_0_a_valid = idle ? _T_10 : _out_0_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_0_a_bits_opcode = _T_45 | _T_46; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_size = out_2_0_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_0_a_bits_source = muxStateEarly__0 | muxStateEarly__1 & auto_in_1_a_bits_source; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_address = out_2_0_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_0_a_bits_mask = _T_30 | _T_31; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_data = _T_27 | _T_28; // @[Mux.scala 27:73]
  assign auto_out_0_d_ready = auto_out_0_d_bits_source & out_8_ready | requestDOI_0_1 & out_12_ready; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft <= 3'h0; // @[Arbiter.scala 87:30]
    end else if (latch) begin // @[Arbiter.scala 113:23]
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= _beatsLeft_T_4;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (latch & |readys_valid) begin // @[Arbiter.scala 27:32]
      readys_mask <= _readys_mask_T_3; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__0 <= earlyWinner__0;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_1 <= 3'h0; // @[Arbiter.scala 87:30]
    end else if (latch_1) begin // @[Arbiter.scala 113:23]
      beatsLeft_1 <= initBeats_1;
    end else begin
      beatsLeft_1 <= _beatsLeft_T_10;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_1 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (latch_1 & |readys_valid_1) begin // @[Arbiter.scala 27:32]
      readys_mask_1 <= _readys_mask_T_8; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_0 <= earlyWinner_1_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__1 <= earlyWinner__1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_1 <= earlyWinner_1_1;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_2 <= 3'h0; // @[Arbiter.scala 87:30]
    end else if (latch_2) begin // @[Arbiter.scala 113:23]
      if (earlyWinner_2_1) begin // @[Arbiter.scala 111:73]
        if (beatsDO_opdata_1) begin // @[Edges.scala 220:14]
          beatsLeft_2 <= beatsDO_decode_1;
        end else begin
          beatsLeft_2 <= 3'h0;
        end
      end else begin
        beatsLeft_2 <= 3'h0;
      end
    end else begin
      beatsLeft_2 <= _beatsLeft_T_16;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_2 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (latch_2 & |readys_valid_2) begin // @[Arbiter.scala 27:32]
      readys_mask_2 <= _readys_mask_T_13; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_2_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_2) begin // @[Arbiter.scala 117:30]
      state_2_0 <= earlyWinner_2_0;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_3 <= 3'h0; // @[Arbiter.scala 87:30]
    end else if (latch_3) begin // @[Arbiter.scala 113:23]
      if (earlyWinner_3_1) begin // @[Arbiter.scala 111:73]
        if (beatsDO_opdata_1) begin // @[Edges.scala 220:14]
          beatsLeft_3 <= beatsDO_decode_1;
        end else begin
          beatsLeft_3 <= 3'h0;
        end
      end else begin
        beatsLeft_3 <= 3'h0;
      end
    end else begin
      beatsLeft_3 <= _beatsLeft_T_22;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_3 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (latch_3 & |readys_valid_3) begin // @[Arbiter.scala 27:32]
      readys_mask_3 <= _readys_mask_T_18; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_3_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_3) begin // @[Arbiter.scala 117:30]
      state_3_0 <= earlyWinner_3_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_2_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_2) begin // @[Arbiter.scala 117:30]
      state_2_1 <= earlyWinner_2_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_3_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_3) begin // @[Arbiter.scala 117:30]
      state_3_1 <= earlyWinner_3_1;
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
  readys_mask = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  state__0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  beatsLeft_1 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  readys_mask_1 = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  state_1_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  state__1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_1_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  beatsLeft_2 = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  readys_mask_2 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  state_2_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  beatsLeft_3 = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  readys_mask_3 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  state_3_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  state_2_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  state_3_1 = _RAND_15[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
