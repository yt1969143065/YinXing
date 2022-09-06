module TLXbar_4(
  input          clock,
  input          reset,
  output         auto_in_3_a_ready,
  input          auto_in_3_a_valid,
  input  [2:0]   auto_in_3_a_bits_opcode,
  input  [2:0]   auto_in_3_a_bits_size,
  input  [4:0]   auto_in_3_a_bits_source,
  input  [35:0]  auto_in_3_a_bits_address,
  input  [31:0]  auto_in_3_a_bits_mask,
  input  [255:0] auto_in_3_a_bits_data,
  input          auto_in_3_d_ready,
  output         auto_in_3_d_valid,
  output [2:0]   auto_in_3_d_bits_opcode,
  output [1:0]   auto_in_3_d_bits_param,
  output [2:0]   auto_in_3_d_bits_size,
  output [4:0]   auto_in_3_d_bits_source,
  output         auto_in_3_d_bits_denied,
  output [255:0] auto_in_3_d_bits_data,
  output         auto_in_2_a_ready,
  input          auto_in_2_a_valid,
  input  [2:0]   auto_in_2_a_bits_opcode,
  input  [2:0]   auto_in_2_a_bits_size,
  input  [4:0]   auto_in_2_a_bits_source,
  input  [35:0]  auto_in_2_a_bits_address,
  input  [31:0]  auto_in_2_a_bits_mask,
  input  [255:0] auto_in_2_a_bits_data,
  input          auto_in_2_d_ready,
  output         auto_in_2_d_valid,
  output [2:0]   auto_in_2_d_bits_opcode,
  output [1:0]   auto_in_2_d_bits_param,
  output [2:0]   auto_in_2_d_bits_size,
  output [4:0]   auto_in_2_d_bits_source,
  output         auto_in_2_d_bits_denied,
  output [255:0] auto_in_2_d_bits_data,
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_size,
  input  [4:0]   auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input  [31:0]  auto_in_1_a_bits_mask,
  input  [255:0] auto_in_1_a_bits_data,
  input          auto_in_1_d_ready,
  output         auto_in_1_d_valid,
  output [2:0]   auto_in_1_d_bits_opcode,
  output [1:0]   auto_in_1_d_bits_param,
  output [2:0]   auto_in_1_d_bits_size,
  output [4:0]   auto_in_1_d_bits_source,
  output         auto_in_1_d_bits_denied,
  output [255:0] auto_in_1_d_bits_data,
  output         auto_in_0_a_ready,
  input          auto_in_0_a_valid,
  input  [2:0]   auto_in_0_a_bits_opcode,
  input  [2:0]   auto_in_0_a_bits_size,
  input  [4:0]   auto_in_0_a_bits_source,
  input  [35:0]  auto_in_0_a_bits_address,
  input  [31:0]  auto_in_0_a_bits_mask,
  input  [255:0] auto_in_0_a_bits_data,
  input          auto_in_0_d_ready,
  output         auto_in_0_d_valid,
  output [2:0]   auto_in_0_d_bits_opcode,
  output [1:0]   auto_in_0_d_bits_param,
  output [2:0]   auto_in_0_d_bits_size,
  output [4:0]   auto_in_0_d_bits_source,
  output         auto_in_0_d_bits_denied,
  output [255:0] auto_in_0_d_bits_data,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [2:0]   auto_out_a_bits_size,
  output [6:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [1:0]   auto_out_d_bits_param,
  input  [2:0]   auto_out_d_bits_size,
  input  [6:0]   auto_out_d_bits_source,
  input          auto_out_d_bits_denied,
  input  [255:0] auto_out_d_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire [6:0] _GEN_1 = {{2'd0}, auto_in_0_a_bits_source}; // @[Xbar.scala 237:55]
  wire [6:0] in_0_a_bits_source = _GEN_1 | 7'h60; // @[Xbar.scala 237:55]
  wire [6:0] _GEN_2 = {{2'd0}, auto_in_1_a_bits_source}; // @[Xbar.scala 237:55]
  wire [6:0] in_1_a_bits_source = _GEN_2 | 7'h40; // @[Xbar.scala 237:55]
  wire [5:0] _GEN_3 = {{1'd0}, auto_in_2_a_bits_source}; // @[Xbar.scala 237:55]
  wire [5:0] _in_2_a_bits_source_T = _GEN_3 | 6'h20; // @[Xbar.scala 237:55]
  wire  requestDOI_0_0 = auto_out_d_bits_source[6:5] == 2'h3; // @[Parameters.scala 54:32]
  wire  requestDOI_0_1 = auto_out_d_bits_source[6:5] == 2'h2; // @[Parameters.scala 54:32]
  wire  requestDOI_0_2 = auto_out_d_bits_source[6:5] == 2'h1; // @[Parameters.scala 54:32]
  wire  requestDOI_0_3 = auto_out_d_bits_source[6:5] == 2'h0; // @[Parameters.scala 54:32]
  wire [12:0] _beatsAI_decode_T_1 = 13'h3f << auto_in_0_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsAI_decode_T_3 = ~_beatsAI_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beatsAI_decode = _beatsAI_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beatsAI_opdata = ~auto_in_0_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  beatsAI_0 = beatsAI_opdata & beatsAI_decode; // @[Edges.scala 220:14]
  wire [12:0] _beatsAI_decode_T_5 = 13'h3f << auto_in_1_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsAI_decode_T_7 = ~_beatsAI_decode_T_5[5:0]; // @[package.scala 234:46]
  wire  beatsAI_decode_1 = _beatsAI_decode_T_7[5]; // @[Edges.scala 219:59]
  wire  beatsAI_opdata_1 = ~auto_in_1_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  beatsAI_1 = beatsAI_opdata_1 & beatsAI_decode_1; // @[Edges.scala 220:14]
  wire [12:0] _beatsAI_decode_T_9 = 13'h3f << auto_in_2_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsAI_decode_T_11 = ~_beatsAI_decode_T_9[5:0]; // @[package.scala 234:46]
  wire  beatsAI_decode_2 = _beatsAI_decode_T_11[5]; // @[Edges.scala 219:59]
  wire  beatsAI_opdata_2 = ~auto_in_2_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  beatsAI_2 = beatsAI_opdata_2 & beatsAI_decode_2; // @[Edges.scala 220:14]
  wire [12:0] _beatsAI_decode_T_13 = 13'h3f << auto_in_3_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsAI_decode_T_15 = ~_beatsAI_decode_T_13[5:0]; // @[package.scala 234:46]
  wire  beatsAI_decode_3 = _beatsAI_decode_T_15[5]; // @[Edges.scala 219:59]
  wire  beatsAI_opdata_3 = ~auto_in_3_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  beatsAI_3 = beatsAI_opdata_3 & beatsAI_decode_3; // @[Edges.scala 220:14]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  latch = idle & auto_out_a_ready; // @[Arbiter.scala 89:24]
  wire [3:0] readys_valid = {auto_in_3_a_valid,auto_in_2_a_valid,auto_in_1_a_valid,auto_in_0_a_valid}; // @[Cat.scala 31:58]
  reg [3:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [3:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [3:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [7:0] readys_filter = {_readys_filter_T_1,auto_in_3_a_valid,auto_in_2_a_valid,auto_in_1_a_valid,auto_in_0_a_valid
    }; // @[Cat.scala 31:58]
  wire [7:0] _GEN_4 = {{1'd0}, readys_filter[7:1]}; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_1 = readys_filter | _GEN_4; // @[package.scala 253:43]
  wire [7:0] _GEN_5 = {{2'd0}, _readys_unready_T_1[7:2]}; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_3 = _readys_unready_T_1 | _GEN_5; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_6 = {readys_mask, 4'h0}; // @[Arbiter.scala 25:66]
  wire [7:0] _GEN_6 = {{1'd0}, _readys_unready_T_3[7:1]}; // @[Arbiter.scala 25:58]
  wire [7:0] readys_unready = _GEN_6 | _readys_unready_T_6; // @[Arbiter.scala 25:58]
  wire [3:0] _readys_readys_T_2 = readys_unready[7:4] & readys_unready[3:0]; // @[Arbiter.scala 26:39]
  wire [3:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire [3:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [4:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[3:0]; // @[package.scala 244:43]
  wire [5:0] _readys_mask_T_4 = {_readys_mask_T_3, 2'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_mask_T_6 = _readys_mask_T_3 | _readys_mask_T_4[3:0]; // @[package.scala 244:43]
  wire  readys_0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  wire  readys_1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  wire  readys_2 = readys_readys[2]; // @[Arbiter.scala 95:86]
  wire  readys_3 = readys_readys[3]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_0 = readys_0 & auto_in_0_a_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1 = readys_1 & auto_in_1_a_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_2 = readys_2 & auto_in_2_a_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_3 = readys_3 & auto_in_3_a_valid; // @[Arbiter.scala 97:79]
  wire  _T_20 = auto_in_0_a_valid | auto_in_1_a_valid | auto_in_2_a_valid | auto_in_3_a_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner_0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner_1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  maskedBeats_2 = earlyWinner_2 & beatsAI_2; // @[Arbiter.scala 111:73]
  wire  maskedBeats_3 = earlyWinner_3 & beatsAI_3; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1 | maskedBeats_2 | maskedBeats_3; // @[Arbiter.scala 112:44]
  reg  state_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  reg  state_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2 = idle ? earlyWinner_2 : state_2; // @[Arbiter.scala 117:30]
  reg  state_3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_3 = idle ? earlyWinner_3 : state_3; // @[Arbiter.scala 117:30]
  wire  _out_0_a_earlyValid_T_9 = state_0 & auto_in_0_a_valid | state_1 & auto_in_1_a_valid | state_2 &
    auto_in_2_a_valid | state_3 & auto_in_3_a_valid; // @[Mux.scala 27:73]
  wire  out_4_0_a_earlyValid = idle ? _T_20 : _out_0_a_earlyValid_T_9; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_out_a_ready & out_4_0_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire  allowed_2 = idle ? readys_2 : state_2; // @[Arbiter.scala 121:24]
  wire  allowed_3 = idle ? readys_3 : state_3; // @[Arbiter.scala 121:24]
  wire [255:0] _T_47 = muxStateEarly_0 ? auto_in_0_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_48 = muxStateEarly_1 ? auto_in_1_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_49 = muxStateEarly_2 ? auto_in_2_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_50 = muxStateEarly_3 ? auto_in_3_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_51 = _T_47 | _T_48; // @[Mux.scala 27:73]
  wire [255:0] _T_52 = _T_51 | _T_49; // @[Mux.scala 27:73]
  wire [31:0] _T_54 = muxStateEarly_0 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_55 = muxStateEarly_1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_56 = muxStateEarly_2 ? auto_in_2_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_57 = muxStateEarly_3 ? auto_in_3_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_58 = _T_54 | _T_55; // @[Mux.scala 27:73]
  wire [31:0] _T_59 = _T_58 | _T_56; // @[Mux.scala 27:73]
  wire [35:0] _T_61 = muxStateEarly_0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_62 = muxStateEarly_1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_63 = muxStateEarly_2 ? auto_in_2_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_64 = muxStateEarly_3 ? auto_in_3_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_65 = _T_61 | _T_62; // @[Mux.scala 27:73]
  wire [35:0] _T_66 = _T_65 | _T_63; // @[Mux.scala 27:73]
  wire [6:0] _T_68 = muxStateEarly_0 ? in_0_a_bits_source : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _T_69 = muxStateEarly_1 ? in_1_a_bits_source : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] in_2_a_bits_source = {{1'd0}, _in_2_a_bits_source_T}; // @[Xbar.scala 231:18 237:29]
  wire [6:0] _T_70 = muxStateEarly_2 ? in_2_a_bits_source : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] in_3_a_bits_source = {{2'd0}, auto_in_3_a_bits_source}; // @[Xbar.scala 231:18 237:29]
  wire [6:0] _T_71 = muxStateEarly_3 ? in_3_a_bits_source : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _T_72 = _T_68 | _T_69; // @[Mux.scala 27:73]
  wire [6:0] _T_73 = _T_72 | _T_70; // @[Mux.scala 27:73]
  wire [2:0] _T_75 = muxStateEarly_0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_76 = muxStateEarly_1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_77 = muxStateEarly_2 ? auto_in_2_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_78 = muxStateEarly_3 ? auto_in_3_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_79 = _T_75 | _T_76; // @[Mux.scala 27:73]
  wire [2:0] _T_80 = _T_79 | _T_77; // @[Mux.scala 27:73]
  wire [2:0] _T_89 = muxStateEarly_0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_90 = muxStateEarly_1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_91 = muxStateEarly_2 ? auto_in_2_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_92 = muxStateEarly_3 ? auto_in_3_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_93 = _T_89 | _T_90; // @[Mux.scala 27:73]
  wire [2:0] _T_94 = _T_93 | _T_91; // @[Mux.scala 27:73]
  assign auto_in_3_a_ready = auto_out_a_ready & allowed_3; // @[Arbiter.scala 123:31]
  assign auto_in_3_d_valid = auto_out_d_valid & requestDOI_0_3; // @[Xbar.scala 179:40]
  assign auto_in_3_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_3_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_3_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_3_d_bits_source = auto_out_d_bits_source[4:0]; // @[Xbar.scala 228:69]
  assign auto_in_3_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_3_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_2_a_ready = auto_out_a_ready & allowed_2; // @[Arbiter.scala 123:31]
  assign auto_in_2_d_valid = auto_out_d_valid & requestDOI_0_2; // @[Xbar.scala 179:40]
  assign auto_in_2_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_2_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_2_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_2_d_bits_source = auto_out_d_bits_source[4:0]; // @[Xbar.scala 228:69]
  assign auto_in_2_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_2_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_a_ready = auto_out_a_ready & allowed_1; // @[Arbiter.scala 123:31]
  assign auto_in_1_d_valid = auto_out_d_valid & requestDOI_0_1; // @[Xbar.scala 179:40]
  assign auto_in_1_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_source = auto_out_d_bits_source[4:0]; // @[Xbar.scala 228:69]
  assign auto_in_1_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_1_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_a_ready = auto_out_a_ready & allowed_0; // @[Arbiter.scala 123:31]
  assign auto_in_0_d_valid = auto_out_d_valid & requestDOI_0_0; // @[Xbar.scala 179:40]
  assign auto_in_0_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_source = auto_out_d_bits_source[4:0]; // @[Xbar.scala 228:69]
  assign auto_in_0_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_0_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_a_valid = idle ? _T_20 : _out_0_a_earlyValid_T_9; // @[Arbiter.scala 125:29]
  assign auto_out_a_bits_opcode = _T_94 | _T_92; // @[Mux.scala 27:73]
  assign auto_out_a_bits_size = _T_80 | _T_78; // @[Mux.scala 27:73]
  assign auto_out_a_bits_source = _T_73 | _T_71; // @[Mux.scala 27:73]
  assign auto_out_a_bits_address = _T_66 | _T_64; // @[Mux.scala 27:73]
  assign auto_out_a_bits_mask = _T_59 | _T_57; // @[Mux.scala 27:73]
  assign auto_out_a_bits_data = _T_52 | _T_50; // @[Mux.scala 27:73]
  assign auto_out_d_ready = requestDOI_0_0 & auto_in_0_d_ready | requestDOI_0_1 & auto_in_1_d_ready | requestDOI_0_2 &
    auto_in_2_d_ready | requestDOI_0_3 & auto_in_3_d_ready; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch) begin // @[Arbiter.scala 113:23]
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask <= 4'hf; // @[Arbiter.scala 23:23]
    end else if (latch & |readys_valid) begin // @[Arbiter.scala 27:32]
      readys_mask <= _readys_mask_T_6; // @[Arbiter.scala 28:12]
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
  beatsLeft = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  readys_mask = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  state_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state_3 = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
