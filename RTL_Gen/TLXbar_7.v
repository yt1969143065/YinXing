module TLXbar_7(
  input          clock,
  input          reset,
  output         auto_in_2_a_ready,
  input          auto_in_2_a_valid,
  input  [2:0]   auto_in_2_a_bits_opcode,
  input  [2:0]   auto_in_2_a_bits_param,
  input  [2:0]   auto_in_2_a_bits_size,
  input  [2:0]   auto_in_2_a_bits_source,
  input  [35:0]  auto_in_2_a_bits_address,
  input  [31:0]  auto_in_2_a_bits_mask,
  input  [255:0] auto_in_2_a_bits_data,
  input          auto_in_2_a_bits_corrupt,
  input          auto_in_2_d_ready,
  output         auto_in_2_d_valid,
  output [2:0]   auto_in_2_d_bits_opcode,
  output [2:0]   auto_in_2_d_bits_size,
  output [2:0]   auto_in_2_d_bits_source,
  output [255:0] auto_in_2_d_bits_data,
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_param,
  input  [2:0]   auto_in_1_a_bits_size,
  input  [1:0]   auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input  [1:0]   auto_in_1_a_bits_user_alias,
  input          auto_in_1_a_bits_user_preferCache,
  input          auto_in_1_a_bits_user_needHint,
  input  [31:0]  auto_in_1_a_bits_mask,
  input  [255:0] auto_in_1_a_bits_data,
  input          auto_in_1_a_bits_corrupt,
  input          auto_in_1_bready,
  output         auto_in_1_bvalid,
  output [1:0]   auto_in_1_bparam,
  output [35:0]  auto_in_1_baddress,
  output [255:0] auto_in_1_bdata,
  output         auto_in_1_c_ready,
  input          auto_in_1_c_valid,
  input  [2:0]   auto_in_1_c_bits_opcode,
  input  [2:0]   auto_in_1_c_bits_param,
  input  [2:0]   auto_in_1_c_bits_size,
  input  [1:0]   auto_in_1_c_bits_source,
  input  [35:0]  auto_in_1_c_bits_address,
  input          auto_in_1_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_1_c_bits_data,
  input          auto_in_1_d_ready,
  output         auto_in_1_d_valid,
  output [2:0]   auto_in_1_d_bits_opcode,
  output [1:0]   auto_in_1_d_bits_param,
  output [1:0]   auto_in_1_d_bits_source,
  output [4:0]   auto_in_1_d_bits_sink,
  output         auto_in_1_d_bits_echo_blockisdirty,
  output [255:0] auto_in_1_d_bits_data,
  output         auto_in_1_d_bits_corrupt,
  output         auto_in_1_e_ready,
  input          auto_in_1_e_valid,
  input  [4:0]   auto_in_1_e_bits_sink,
  output         auto_in_0_a_ready,
  input          auto_in_0_a_valid,
  input  [2:0]   auto_in_0_a_bits_opcode,
  input  [2:0]   auto_in_0_a_bits_param,
  input  [2:0]   auto_in_0_a_bits_size,
  input  [4:0]   auto_in_0_a_bits_source,
  input  [35:0]  auto_in_0_a_bits_address,
  input  [1:0]   auto_in_0_a_bits_user_alias,
  input          auto_in_0_a_bits_user_needHint,
  input  [31:0]  auto_in_0_a_bits_mask,
  input          auto_in_0_bready,
  output         auto_in_0_bvalid,
  output [1:0]   auto_in_0_bparam,
  output [35:0]  auto_in_0_baddress,
  output [255:0] auto_in_0_bdata,
  output         auto_in_0_c_ready,
  input          auto_in_0_c_valid,
  input  [2:0]   auto_in_0_c_bits_opcode,
  input  [2:0]   auto_in_0_c_bits_param,
  input  [2:0]   auto_in_0_c_bits_size,
  input  [4:0]   auto_in_0_c_bits_source,
  input  [35:0]  auto_in_0_c_bits_address,
  input          auto_in_0_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_0_c_bits_data,
  input          auto_in_0_d_ready,
  output         auto_in_0_d_valid,
  output [2:0]   auto_in_0_d_bits_opcode,
  output [1:0]   auto_in_0_d_bits_param,
  output [2:0]   auto_in_0_d_bits_size,
  output [4:0]   auto_in_0_d_bits_source,
  output [4:0]   auto_in_0_d_bits_sink,
  output         auto_in_0_d_bits_denied,
  output         auto_in_0_d_bits_echo_blockisdirty,
  output [255:0] auto_in_0_d_bits_data,
  output         auto_in_0_d_bits_corrupt,
  output         auto_in_0_e_ready,
  input          auto_in_0_e_valid,
  input  [4:0]   auto_in_0_e_bits_sink,
  input          auto_out_1_a_ready,
  output         auto_out_1_a_valid,
  output [2:0]   auto_out_1_a_bits_opcode,
  output [2:0]   auto_out_1_a_bits_param,
  output [2:0]   auto_out_1_a_bits_size,
  output [5:0]   auto_out_1_a_bits_source,
  output [35:0]  auto_out_1_a_bits_address,
  output [1:0]   auto_out_1_a_bits_user_alias,
  output         auto_out_1_a_bits_user_preferCache,
  output         auto_out_1_a_bits_user_needHint,
  output [31:0]  auto_out_1_a_bits_mask,
  output [255:0] auto_out_1_a_bits_data,
  output         auto_out_1_a_bits_corrupt,
  output         auto_out_1_bready,
  input          auto_out_1_bvalid,
  input  [1:0]   auto_out_1_bparam,
  input  [5:0]   auto_out_1_bsource,
  input  [35:0]  auto_out_1_baddress,
  input  [255:0] auto_out_1_bdata,
  input          auto_out_1_c_ready,
  output         auto_out_1_c_valid,
  output [2:0]   auto_out_1_c_bits_opcode,
  output [2:0]   auto_out_1_c_bits_param,
  output [2:0]   auto_out_1_c_bits_size,
  output [5:0]   auto_out_1_c_bits_source,
  output [35:0]  auto_out_1_c_bits_address,
  output         auto_out_1_c_bits_echo_blockisdirty,
  output [255:0] auto_out_1_c_bits_data,
  output         auto_out_1_d_ready,
  input          auto_out_1_d_valid,
  input  [2:0]   auto_out_1_d_bits_opcode,
  input  [1:0]   auto_out_1_d_bits_param,
  input  [2:0]   auto_out_1_d_bits_size,
  input  [5:0]   auto_out_1_d_bits_source,
  input  [3:0]   auto_out_1_d_bits_sink,
  input          auto_out_1_d_bits_denied,
  input          auto_out_1_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_1_d_bits_data,
  input          auto_out_1_d_bits_corrupt,
  output         auto_out_1_e_valid,
  output [3:0]   auto_out_1_e_bits_sink,
  input          auto_out_0_a_ready,
  output         auto_out_0_a_valid,
  output [2:0]   auto_out_0_a_bits_opcode,
  output [2:0]   auto_out_0_a_bits_param,
  output [2:0]   auto_out_0_a_bits_size,
  output [5:0]   auto_out_0_a_bits_source,
  output [35:0]  auto_out_0_a_bits_address,
  output [1:0]   auto_out_0_a_bits_user_alias,
  output         auto_out_0_a_bits_user_preferCache,
  output         auto_out_0_a_bits_user_needHint,
  output [31:0]  auto_out_0_a_bits_mask,
  output [255:0] auto_out_0_a_bits_data,
  output         auto_out_0_a_bits_corrupt,
  output         auto_out_0_bready,
  input          auto_out_0_bvalid,
  input  [1:0]   auto_out_0_bparam,
  input  [5:0]   auto_out_0_bsource,
  input  [35:0]  auto_out_0_baddress,
  input  [255:0] auto_out_0_bdata,
  input          auto_out_0_c_ready,
  output         auto_out_0_c_valid,
  output [2:0]   auto_out_0_c_bits_opcode,
  output [2:0]   auto_out_0_c_bits_param,
  output [2:0]   auto_out_0_c_bits_size,
  output [5:0]   auto_out_0_c_bits_source,
  output [35:0]  auto_out_0_c_bits_address,
  output         auto_out_0_c_bits_echo_blockisdirty,
  output [255:0] auto_out_0_c_bits_data,
  output         auto_out_0_d_ready,
  input          auto_out_0_d_valid,
  input  [2:0]   auto_out_0_d_bits_opcode,
  input  [1:0]   auto_out_0_d_bits_param,
  input  [2:0]   auto_out_0_d_bits_size,
  input  [5:0]   auto_out_0_d_bits_source,
  input  [3:0]   auto_out_0_d_bits_sink,
  input          auto_out_0_d_bits_denied,
  input          auto_out_0_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_0_d_bits_data,
  input          auto_out_0_d_bits_corrupt,
  output         auto_out_0_e_valid,
  output [3:0]   auto_out_0_e_bits_sink
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
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
`endif // RANDOMIZE_REG_INIT
  reg  beatsLeft_6; // @[Arbiter.scala 87:30]
  wire  idle_6 = ~beatsLeft_6; // @[Arbiter.scala 88:28]
  wire  requestBOI_1_0 = ~auto_out_1_bsource[5]; // @[Parameters.scala 54:32]
  wire  portsBIO_filtered_1_0_valid = auto_out_1_bvalid & requestBOI_1_0; // @[Xbar.scala 179:40]
  wire  requestBOI_0_0 = ~auto_out_0_bsource[5]; // @[Parameters.scala 54:32]
  wire  portsBIO_filtered__0_valid = auto_out_0_bvalid & requestBOI_0_0; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_6 = {portsBIO_filtered_1_0_valid,portsBIO_filtered__0_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_6; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_12 = ~readys_mask_6; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_13 = readys_valid_6 & _readys_filter_T_12; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_6 = {_readys_filter_T_13,portsBIO_filtered_1_0_valid,portsBIO_filtered__0_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_11 = {{1'd0}, readys_filter_6[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_35 = readys_filter_6 | _GEN_11; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_38 = {readys_mask_6, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_12 = {{1'd0}, _readys_unready_T_35[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_6 = _GEN_12 | _readys_unready_T_38; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_20 = readys_unready_6[3:2] & readys_unready_6[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_6 = ~_readys_readys_T_20; // @[Arbiter.scala 26:18]
  wire  readys_6_0 = readys_readys_6[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_6_0 = readys_6_0 & portsBIO_filtered__0_valid; // @[Arbiter.scala 97:79]
  reg  state_6_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_6_0 = idle_6 ? earlyWinner_6_0 : state_6_0; // @[Arbiter.scala 117:30]
  wire  readys_6_1 = readys_readys_6[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_6_1 = readys_6_1 & portsBIO_filtered_1_0_valid; // @[Arbiter.scala 97:79]
  reg  state_6_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_6_1 = idle_6 ? earlyWinner_6_1 : state_6_1; // @[Arbiter.scala 117:30]
  reg  beatsLeft_7; // @[Arbiter.scala 87:30]
  wire  idle_7 = ~beatsLeft_7; // @[Arbiter.scala 88:28]
  wire  requestDOI_1_0 = ~auto_out_1_d_bits_source[5]; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_1_0_valid = auto_out_1_d_valid & requestDOI_1_0; // @[Xbar.scala 179:40]
  wire  requestDOI_0_0 = ~auto_out_0_d_bits_source[5]; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered__0_valid = auto_out_0_d_valid & requestDOI_0_0; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_7 = {portsDIO_filtered_1_0_valid,portsDIO_filtered__0_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_7; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_14 = ~readys_mask_7; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_15 = readys_valid_7 & _readys_filter_T_14; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_7 = {_readys_filter_T_15,portsDIO_filtered_1_0_valid,portsDIO_filtered__0_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_13 = {{1'd0}, readys_filter_7[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_40 = readys_filter_7 | _GEN_13; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_43 = {readys_mask_7, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_14 = {{1'd0}, _readys_unready_T_40[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_7 = _GEN_14 | _readys_unready_T_43; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_23 = readys_unready_7[3:2] & readys_unready_7[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_7 = ~_readys_readys_T_23; // @[Arbiter.scala 26:18]
  wire  readys_7_0 = readys_readys_7[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_7_0 = readys_7_0 & portsDIO_filtered__0_valid; // @[Arbiter.scala 97:79]
  reg  state_7_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_7_0 = idle_7 ? earlyWinner_7_0 : state_7_0; // @[Arbiter.scala 117:30]
  wire [5:0] _T_441 = muxStateEarly_7_0 ? auto_out_0_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire  readys_7_1 = readys_readys_7[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_7_1 = readys_7_1 & portsDIO_filtered_1_0_valid; // @[Arbiter.scala 97:79]
  reg  state_7_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_7_1 = idle_7 ? earlyWinner_7_1 : state_7_1; // @[Arbiter.scala 117:30]
  wire [5:0] _T_442 = muxStateEarly_7_1 ? auto_out_1_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] sink_ACancel_5_bits_source = _T_441 | _T_442; // @[Mux.scala 27:73]
  wire [5:0] _GEN_15 = {{4'd0}, auto_in_1_a_bits_source}; // @[Xbar.scala 237:55]
  wire [5:0] in_1_a_bits_source = _GEN_15 | 6'h28; // @[Xbar.scala 237:55]
  reg  beatsLeft_8; // @[Arbiter.scala 87:30]
  wire  idle_8 = ~beatsLeft_8; // @[Arbiter.scala 88:28]
  wire  requestBOI_1_1 = auto_out_1_bsource[5:2] == 4'ha; // @[Parameters.scala 54:32]
  wire  portsBIO_filtered_1_1_valid = auto_out_1_bvalid & requestBOI_1_1; // @[Xbar.scala 179:40]
  wire  requestBOI_0_1 = auto_out_0_bsource[5:2] == 4'ha; // @[Parameters.scala 54:32]
  wire  portsBIO_filtered__1_valid = auto_out_0_bvalid & requestBOI_0_1; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_8 = {portsBIO_filtered_1_1_valid,portsBIO_filtered__1_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_8; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_16 = ~readys_mask_8; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_17 = readys_valid_8 & _readys_filter_T_16; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_8 = {_readys_filter_T_17,portsBIO_filtered_1_1_valid,portsBIO_filtered__1_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_16 = {{1'd0}, readys_filter_8[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_45 = readys_filter_8 | _GEN_16; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_48 = {readys_mask_8, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_17 = {{1'd0}, _readys_unready_T_45[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_8 = _GEN_17 | _readys_unready_T_48; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_26 = readys_unready_8[3:2] & readys_unready_8[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_8 = ~_readys_readys_T_26; // @[Arbiter.scala 26:18]
  wire  readys_8_0 = readys_readys_8[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_8_0 = readys_8_0 & portsBIO_filtered__1_valid; // @[Arbiter.scala 97:79]
  reg  state_8_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_8_0 = idle_8 ? earlyWinner_8_0 : state_8_0; // @[Arbiter.scala 117:30]
  wire  readys_8_1 = readys_readys_8[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_8_1 = readys_8_1 & portsBIO_filtered_1_1_valid; // @[Arbiter.scala 97:79]
  reg  state_8_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_8_1 = idle_8 ? earlyWinner_8_1 : state_8_1; // @[Arbiter.scala 117:30]
  wire [5:0] _GEN_18 = {{4'd0}, auto_in_1_c_bits_source}; // @[Xbar.scala 259:55]
  wire [5:0] in_1_c_bits_source = _GEN_18 | 6'h28; // @[Xbar.scala 259:55]
  reg  beatsLeft_9; // @[Arbiter.scala 87:30]
  wire  idle_9 = ~beatsLeft_9; // @[Arbiter.scala 88:28]
  wire  requestDOI_1_1 = auto_out_1_d_bits_source[5:2] == 4'ha; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_1_1_valid = auto_out_1_d_valid & requestDOI_1_1; // @[Xbar.scala 179:40]
  wire  requestDOI_0_1 = auto_out_0_d_bits_source[5:2] == 4'ha; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered__1_valid = auto_out_0_d_valid & requestDOI_0_1; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_9 = {portsDIO_filtered_1_1_valid,portsDIO_filtered__1_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_9; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_18 = ~readys_mask_9; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_19 = readys_valid_9 & _readys_filter_T_18; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_9 = {_readys_filter_T_19,portsDIO_filtered_1_1_valid,portsDIO_filtered__1_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_19 = {{1'd0}, readys_filter_9[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_50 = readys_filter_9 | _GEN_19; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_53 = {readys_mask_9, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_20 = {{1'd0}, _readys_unready_T_50[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_9 = _GEN_20 | _readys_unready_T_53; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_29 = readys_unready_9[3:2] & readys_unready_9[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_9 = ~_readys_readys_T_29; // @[Arbiter.scala 26:18]
  wire  readys_9_0 = readys_readys_9[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_9_0 = readys_9_0 & portsDIO_filtered__1_valid; // @[Arbiter.scala 97:79]
  reg  state_9_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_9_0 = idle_9 ? earlyWinner_9_0 : state_9_0; // @[Arbiter.scala 117:30]
  wire [5:0] _T_540 = muxStateEarly_9_0 ? auto_out_0_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire  readys_9_1 = readys_readys_9[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_9_1 = readys_9_1 & portsDIO_filtered_1_1_valid; // @[Arbiter.scala 97:79]
  reg  state_9_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_9_1 = idle_9 ? earlyWinner_9_1 : state_9_1; // @[Arbiter.scala 117:30]
  wire [5:0] _T_541 = muxStateEarly_9_1 ? auto_out_1_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] sink_ACancel_7_bits_source = _T_540 | _T_541; // @[Mux.scala 27:73]
  wire [5:0] _GEN_21 = {{3'd0}, auto_in_2_a_bits_source}; // @[Xbar.scala 237:55]
  wire [5:0] in_2_a_bits_source = _GEN_21 | 6'h20; // @[Xbar.scala 237:55]
  reg  beatsLeft_10; // @[Arbiter.scala 87:30]
  wire  idle_10 = ~beatsLeft_10; // @[Arbiter.scala 88:28]
  wire  requestDOI_1_2 = auto_out_1_d_bits_source[5:3] == 3'h4; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_1_2_valid = auto_out_1_d_valid & requestDOI_1_2; // @[Xbar.scala 179:40]
  wire  requestDOI_0_2 = auto_out_0_d_bits_source[5:3] == 3'h4; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered__2_valid = auto_out_0_d_valid & requestDOI_0_2; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_10 = {portsDIO_filtered_1_2_valid,portsDIO_filtered__2_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_10; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_20 = ~readys_mask_10; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_21 = readys_valid_10 & _readys_filter_T_20; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_10 = {_readys_filter_T_21,portsDIO_filtered_1_2_valid,portsDIO_filtered__2_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_22 = {{1'd0}, readys_filter_10[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_55 = readys_filter_10 | _GEN_22; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_58 = {readys_mask_10, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_23 = {{1'd0}, _readys_unready_T_55[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_10 = _GEN_23 | _readys_unready_T_58; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_32 = readys_unready_10[3:2] & readys_unready_10[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_10 = ~_readys_readys_T_32; // @[Arbiter.scala 26:18]
  wire  readys_10_0 = readys_readys_10[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_10_0 = readys_10_0 & portsDIO_filtered__2_valid; // @[Arbiter.scala 97:79]
  reg  state_10_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_10_0 = idle_10 ? earlyWinner_10_0 : state_10_0; // @[Arbiter.scala 117:30]
  wire [5:0] _T_591 = muxStateEarly_10_0 ? auto_out_0_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire  readys_10_1 = readys_readys_10[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_10_1 = readys_10_1 & portsDIO_filtered_1_2_valid; // @[Arbiter.scala 97:79]
  reg  state_10_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_10_1 = idle_10 ? earlyWinner_10_1 : state_10_1; // @[Arbiter.scala 117:30]
  wire [5:0] _T_592 = muxStateEarly_10_1 ? auto_out_1_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] sink_ACancel_9_bits_source = _T_591 | _T_592; // @[Mux.scala 27:73]
  wire [4:0] _GEN_24 = {{1'd0}, auto_out_0_d_bits_sink}; // @[Xbar.scala 323:53]
  wire [4:0] out_3_0_d_bits_sink = _GEN_24 | 5'h10; // @[Xbar.scala 323:53]
  reg  beatsLeft_2; // @[Arbiter.scala 87:30]
  wire  idle_2 = ~beatsLeft_2; // @[Arbiter.scala 88:28]
  wire  requestEIO_1_0 = auto_in_1_e_bits_sink[4]; // @[Parameters.scala 54:10]
  wire  portsEOI_filtered_1_0_valid = auto_in_1_e_valid & requestEIO_1_0; // @[Xbar.scala 179:40]
  wire  requestEIO_0_0 = auto_in_0_e_bits_sink[4]; // @[Parameters.scala 54:10]
  wire  portsEOI_filtered__0_valid = auto_in_0_e_valid & requestEIO_0_0; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_2 = {portsEOI_filtered_1_0_valid,portsEOI_filtered__0_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_2; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_4 = ~readys_mask_2; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_5 = readys_valid_2 & _readys_filter_T_4; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_2 = {_readys_filter_T_5,portsEOI_filtered_1_0_valid,portsEOI_filtered__0_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_25 = {{1'd0}, readys_filter_2[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_13 = readys_filter_2 | _GEN_25; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_16 = {readys_mask_2, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_26 = {{1'd0}, _readys_unready_T_13[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_2 = _GEN_26 | _readys_unready_T_16; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_8 = readys_unready_2[3:2] & readys_unready_2[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_2 = ~_readys_readys_T_8; // @[Arbiter.scala 26:18]
  wire  readys_2_0 = readys_readys_2[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_2_0 = readys_2_0 & portsEOI_filtered__0_valid; // @[Arbiter.scala 97:79]
  reg  state_2_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2_0 = idle_2 ? earlyWinner_2_0 : state_2_0; // @[Arbiter.scala 117:30]
  wire [4:0] _T_175 = muxStateEarly_2_0 ? auto_in_0_e_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire  readys_2_1 = readys_readys_2[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_2_1 = readys_2_1 & portsEOI_filtered_1_0_valid; // @[Arbiter.scala 97:79]
  reg  state_2_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2_1 = idle_2 ? earlyWinner_2_1 : state_2_1; // @[Arbiter.scala 117:30]
  wire [4:0] _T_176 = muxStateEarly_2_1 ? auto_in_1_e_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] sink_ACancel_1_bits_sink = _T_175 | _T_176; // @[Mux.scala 27:73]
  reg  beatsLeft_5; // @[Arbiter.scala 87:30]
  wire  idle_5 = ~beatsLeft_5; // @[Arbiter.scala 88:28]
  wire  requestEIO_1_1 = ~requestEIO_1_0; // @[Parameters.scala 54:32]
  wire  portsEOI_filtered_1_1_valid = auto_in_1_e_valid & requestEIO_1_1; // @[Xbar.scala 179:40]
  wire  requestEIO_0_1 = ~requestEIO_0_0; // @[Parameters.scala 54:32]
  wire  portsEOI_filtered__1_valid = auto_in_0_e_valid & requestEIO_0_1; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_5 = {portsEOI_filtered_1_1_valid,portsEOI_filtered__1_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_5; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_10 = ~readys_mask_5; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_11 = readys_valid_5 & _readys_filter_T_10; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_5 = {_readys_filter_T_11,portsEOI_filtered_1_1_valid,portsEOI_filtered__1_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_27 = {{1'd0}, readys_filter_5[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_30 = readys_filter_5 | _GEN_27; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_33 = {readys_mask_5, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_28 = {{1'd0}, _readys_unready_T_30[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_5 = _GEN_28 | _readys_unready_T_33; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_17 = readys_unready_5[3:2] & readys_unready_5[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_5 = ~_readys_readys_T_17; // @[Arbiter.scala 26:18]
  wire  readys_5_0 = readys_readys_5[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5_0 = readys_5_0 & portsEOI_filtered__1_valid; // @[Arbiter.scala 97:79]
  reg  state_5_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5_0 = idle_5 ? earlyWinner_5_0 : state_5_0; // @[Arbiter.scala 117:30]
  wire [4:0] _T_351 = muxStateEarly_5_0 ? auto_in_0_e_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire  readys_5_1 = readys_readys_5[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5_1 = readys_5_1 & portsEOI_filtered_1_1_valid; // @[Arbiter.scala 97:79]
  reg  state_5_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5_1 = idle_5 ? earlyWinner_5_1 : state_5_1; // @[Arbiter.scala 117:30]
  wire [4:0] _T_352 = muxStateEarly_5_1 ? auto_in_1_e_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] sink_ACancel_3_bits_sink = _T_351 | _T_352; // @[Mux.scala 27:73]
  wire [36:0] _requestAIO_T_1 = {1'b0,$signed(auto_in_0_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_3 = $signed(_requestAIO_T_1) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_0_0 = $signed(_requestAIO_T_3) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_5 = auto_in_0_a_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_6 = {1'b0,$signed(_requestAIO_T_5)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_8 = $signed(_requestAIO_T_6) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_0_1 = $signed(_requestAIO_T_8) == 37'sh0; // @[Parameters.scala 137:67]
  wire [36:0] _requestAIO_T_11 = {1'b0,$signed(auto_in_1_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_13 = $signed(_requestAIO_T_11) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_1_0 = $signed(_requestAIO_T_13) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_15 = auto_in_1_a_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_16 = {1'b0,$signed(_requestAIO_T_15)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_18 = $signed(_requestAIO_T_16) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_1_1 = $signed(_requestAIO_T_18) == 37'sh0; // @[Parameters.scala 137:67]
  wire [36:0] _requestAIO_T_21 = {1'b0,$signed(auto_in_2_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_23 = $signed(_requestAIO_T_21) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_2_0 = $signed(_requestAIO_T_23) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_25 = auto_in_2_a_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_26 = {1'b0,$signed(_requestAIO_T_25)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_28 = $signed(_requestAIO_T_26) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_2_1 = $signed(_requestAIO_T_28) == 37'sh0; // @[Parameters.scala 137:67]
  wire [36:0] _requestCIO_T_1 = {1'b0,$signed(auto_in_0_c_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestCIO_T_3 = $signed(_requestCIO_T_1) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestCIO_0_0 = $signed(_requestCIO_T_3) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestCIO_T_5 = auto_in_0_c_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestCIO_T_6 = {1'b0,$signed(_requestCIO_T_5)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestCIO_T_8 = $signed(_requestCIO_T_6) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestCIO_0_1 = $signed(_requestCIO_T_8) == 37'sh0; // @[Parameters.scala 137:67]
  wire [36:0] _requestCIO_T_11 = {1'b0,$signed(auto_in_1_c_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestCIO_T_13 = $signed(_requestCIO_T_11) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestCIO_1_0 = $signed(_requestCIO_T_13) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestCIO_T_15 = auto_in_1_c_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestCIO_T_16 = {1'b0,$signed(_requestCIO_T_15)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestCIO_T_18 = $signed(_requestCIO_T_16) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestCIO_1_1 = $signed(_requestCIO_T_18) == 37'sh0; // @[Parameters.scala 137:67]
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
  wire [12:0] _beatsCI_decode_T_1 = 13'h3f << auto_in_0_c_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsCI_decode_T_3 = ~_beatsCI_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beatsCI_decode = _beatsCI_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beatsCI_opdata = auto_in_0_c_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  beatsCI_0 = beatsCI_opdata & beatsCI_decode; // @[Edges.scala 220:14]
  wire [12:0] _beatsCI_decode_T_5 = 13'h3f << auto_in_1_c_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsCI_decode_T_7 = ~_beatsCI_decode_T_5[5:0]; // @[package.scala 234:46]
  wire  beatsCI_decode_1 = _beatsCI_decode_T_7[5]; // @[Edges.scala 219:59]
  wire  beatsCI_opdata_1 = auto_in_1_c_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  beatsCI_1 = beatsCI_opdata_1 & beatsCI_decode_1; // @[Edges.scala 220:14]
  wire [12:0] _beatsDO_decode_T_1 = 13'h3f << auto_out_0_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsDO_decode_T_3 = ~_beatsDO_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beatsDO_decode = _beatsDO_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beatsDO_opdata = auto_out_0_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  beatsDO_0 = beatsDO_opdata & beatsDO_decode; // @[Edges.scala 220:14]
  wire [12:0] _beatsDO_decode_T_5 = 13'h3f << auto_out_1_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsDO_decode_T_7 = ~_beatsDO_decode_T_5[5:0]; // @[package.scala 234:46]
  wire  beatsDO_decode_1 = _beatsDO_decode_T_7[5]; // @[Edges.scala 219:59]
  wire  beatsDO_opdata_1 = auto_out_1_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  beatsDO_1 = beatsDO_opdata_1 & beatsDO_decode_1; // @[Edges.scala 220:14]
  wire  portsAOI_filtered__0_earlyValid = auto_in_0_a_valid & requestAIO_0_0; // @[Xbar.scala 428:50]
  wire  portsAOI_filtered__1_earlyValid = auto_in_0_a_valid & requestAIO_0_1; // @[Xbar.scala 428:50]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  portsAOI_filtered_2_0_earlyValid = auto_in_2_a_valid & requestAIO_2_0; // @[Xbar.scala 428:50]
  wire  portsAOI_filtered_1_0_earlyValid = auto_in_1_a_valid & requestAIO_1_0; // @[Xbar.scala 428:50]
  wire [2:0] readys_valid = {portsAOI_filtered_2_0_earlyValid,portsAOI_filtered_1_0_earlyValid,
    portsAOI_filtered__0_earlyValid}; // @[Cat.scala 31:58]
  reg [2:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [2:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [2:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [5:0] readys_filter = {_readys_filter_T_1,portsAOI_filtered_2_0_earlyValid,portsAOI_filtered_1_0_earlyValid,
    portsAOI_filtered__0_earlyValid}; // @[Cat.scala 31:58]
  wire [5:0] _GEN_29 = {{1'd0}, readys_filter[5:1]}; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_1 = readys_filter | _GEN_29; // @[package.scala 253:43]
  wire [5:0] _GEN_30 = {{2'd0}, _readys_unready_T_1[5:2]}; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_3 = _readys_unready_T_1 | _GEN_30; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_6 = {readys_mask, 3'h0}; // @[Arbiter.scala 25:66]
  wire [5:0] _GEN_31 = {{1'd0}, _readys_unready_T_3[5:1]}; // @[Arbiter.scala 25:58]
  wire [5:0] readys_unready = _GEN_31 | _readys_unready_T_6; // @[Arbiter.scala 25:58]
  wire [2:0] _readys_readys_T_2 = readys_unready[5:3] & readys_unready[2:0]; // @[Arbiter.scala 26:39]
  wire [2:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire  readys__0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  reg  state__0; // @[Arbiter.scala 116:26]
  wire  allowed__0 = idle ? readys__0 : state__0; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered__0_ready = auto_out_0_a_ready & allowed__0; // @[Arbiter.scala 123:31]
  reg  beatsLeft_3; // @[Arbiter.scala 87:30]
  wire  idle_3 = ~beatsLeft_3; // @[Arbiter.scala 88:28]
  wire  portsAOI_filtered_2_1_earlyValid = auto_in_2_a_valid & requestAIO_2_1; // @[Xbar.scala 428:50]
  wire  portsAOI_filtered_1_1_earlyValid = auto_in_1_a_valid & requestAIO_1_1; // @[Xbar.scala 428:50]
  wire [2:0] readys_valid_3 = {portsAOI_filtered_2_1_earlyValid,portsAOI_filtered_1_1_earlyValid,
    portsAOI_filtered__1_earlyValid}; // @[Cat.scala 31:58]
  reg [2:0] readys_mask_3; // @[Arbiter.scala 23:23]
  wire [2:0] _readys_filter_T_6 = ~readys_mask_3; // @[Arbiter.scala 24:30]
  wire [2:0] _readys_filter_T_7 = readys_valid_3 & _readys_filter_T_6; // @[Arbiter.scala 24:28]
  wire [5:0] readys_filter_3 = {_readys_filter_T_7,portsAOI_filtered_2_1_earlyValid,portsAOI_filtered_1_1_earlyValid,
    portsAOI_filtered__1_earlyValid}; // @[Cat.scala 31:58]
  wire [5:0] _GEN_32 = {{1'd0}, readys_filter_3[5:1]}; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_18 = readys_filter_3 | _GEN_32; // @[package.scala 253:43]
  wire [5:0] _GEN_33 = {{2'd0}, _readys_unready_T_18[5:2]}; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_20 = _readys_unready_T_18 | _GEN_33; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_23 = {readys_mask_3, 3'h0}; // @[Arbiter.scala 25:66]
  wire [5:0] _GEN_34 = {{1'd0}, _readys_unready_T_20[5:1]}; // @[Arbiter.scala 25:58]
  wire [5:0] readys_unready_3 = _GEN_34 | _readys_unready_T_23; // @[Arbiter.scala 25:58]
  wire [2:0] _readys_readys_T_11 = readys_unready_3[5:3] & readys_unready_3[2:0]; // @[Arbiter.scala 26:39]
  wire [2:0] readys_readys_3 = ~_readys_readys_T_11; // @[Arbiter.scala 26:18]
  wire  readys_3_0 = readys_readys_3[0]; // @[Arbiter.scala 95:86]
  reg  state_3_0; // @[Arbiter.scala 116:26]
  wire  allowed_3_0 = idle_3 ? readys_3_0 : state_3_0; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered__1_ready = auto_out_1_a_ready & allowed_3_0; // @[Arbiter.scala 123:31]
  wire  readys__1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  reg  state__1; // @[Arbiter.scala 116:26]
  wire  allowed__1 = idle ? readys__1 : state__1; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_1_0_ready = auto_out_0_a_ready & allowed__1; // @[Arbiter.scala 123:31]
  wire  readys_3_1 = readys_readys_3[1]; // @[Arbiter.scala 95:86]
  reg  state_3_1; // @[Arbiter.scala 116:26]
  wire  allowed_3_1 = idle_3 ? readys_3_1 : state_3_1; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_1_1_ready = auto_out_1_a_ready & allowed_3_1; // @[Arbiter.scala 123:31]
  wire  readys__2 = readys_readys[2]; // @[Arbiter.scala 95:86]
  reg  state__2; // @[Arbiter.scala 116:26]
  wire  allowed__2 = idle ? readys__2 : state__2; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_2_0_ready = auto_out_0_a_ready & allowed__2; // @[Arbiter.scala 123:31]
  wire  readys_3_2 = readys_readys_3[2]; // @[Arbiter.scala 95:86]
  reg  state_3_2; // @[Arbiter.scala 116:26]
  wire  allowed_3_2 = idle_3 ? readys_3_2 : state_3_2; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_2_1_ready = auto_out_1_a_ready & allowed_3_2; // @[Arbiter.scala 123:31]
  wire  allowed_6_0 = idle_6 ? readys_6_0 : state_6_0; // @[Arbiter.scala 121:24]
  wire  out_16_ready = auto_in_0_bready & allowed_6_0; // @[Arbiter.scala 123:31]
  wire  allowed_8_0 = idle_8 ? readys_8_0 : state_8_0; // @[Arbiter.scala 121:24]
  wire  out_22_ready = auto_in_1_bready & allowed_8_0; // @[Arbiter.scala 123:31]
  wire  allowed_6_1 = idle_6 ? readys_6_1 : state_6_1; // @[Arbiter.scala 121:24]
  wire  out_17_ready = auto_in_0_bready & allowed_6_1; // @[Arbiter.scala 123:31]
  wire  allowed_8_1 = idle_8 ? readys_8_1 : state_8_1; // @[Arbiter.scala 121:24]
  wire  out_23_ready = auto_in_1_bready & allowed_8_1; // @[Arbiter.scala 123:31]
  wire  portsCOI_filtered__0_valid = auto_in_0_c_valid & requestCIO_0_0; // @[Xbar.scala 179:40]
  wire  portsCOI_filtered__1_valid = auto_in_0_c_valid & requestCIO_0_1; // @[Xbar.scala 179:40]
  reg  beatsLeft_1; // @[Arbiter.scala 87:30]
  wire  idle_1 = ~beatsLeft_1; // @[Arbiter.scala 88:28]
  wire  portsCOI_filtered_1_0_valid = auto_in_1_c_valid & requestCIO_1_0; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_1 = {portsCOI_filtered_1_0_valid,portsCOI_filtered__0_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_1; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_2 = ~readys_mask_1; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_3 = readys_valid_1 & _readys_filter_T_2; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_1 = {_readys_filter_T_3,portsCOI_filtered_1_0_valid,portsCOI_filtered__0_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_35 = {{1'd0}, readys_filter_1[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_8 = readys_filter_1 | _GEN_35; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_11 = {readys_mask_1, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_36 = {{1'd0}, _readys_unready_T_8[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_1 = _GEN_36 | _readys_unready_T_11; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_5 = readys_unready_1[3:2] & readys_unready_1[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_1 = ~_readys_readys_T_5; // @[Arbiter.scala 26:18]
  wire  readys_1_0 = readys_readys_1[0]; // @[Arbiter.scala 95:86]
  reg  state_1_0; // @[Arbiter.scala 116:26]
  wire  allowed_1_0 = idle_1 ? readys_1_0 : state_1_0; // @[Arbiter.scala 121:24]
  wire  out_4_ready = auto_out_0_c_ready & allowed_1_0; // @[Arbiter.scala 123:31]
  reg  beatsLeft_4; // @[Arbiter.scala 87:30]
  wire  idle_4 = ~beatsLeft_4; // @[Arbiter.scala 88:28]
  wire  portsCOI_filtered_1_1_valid = auto_in_1_c_valid & requestCIO_1_1; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_4 = {portsCOI_filtered_1_1_valid,portsCOI_filtered__1_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_4; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_8 = ~readys_mask_4; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_9 = readys_valid_4 & _readys_filter_T_8; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_4 = {_readys_filter_T_9,portsCOI_filtered_1_1_valid,portsCOI_filtered__1_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_37 = {{1'd0}, readys_filter_4[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_25 = readys_filter_4 | _GEN_37; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_28 = {readys_mask_4, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_38 = {{1'd0}, _readys_unready_T_25[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_4 = _GEN_38 | _readys_unready_T_28; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_14 = readys_unready_4[3:2] & readys_unready_4[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_4 = ~_readys_readys_T_14; // @[Arbiter.scala 26:18]
  wire  readys_4_0 = readys_readys_4[0]; // @[Arbiter.scala 95:86]
  reg  state_4_0; // @[Arbiter.scala 116:26]
  wire  allowed_4_0 = idle_4 ? readys_4_0 : state_4_0; // @[Arbiter.scala 121:24]
  wire  out_10_ready = auto_out_1_c_ready & allowed_4_0; // @[Arbiter.scala 123:31]
  wire  readys_1_1 = readys_readys_1[1]; // @[Arbiter.scala 95:86]
  reg  state_1_1; // @[Arbiter.scala 116:26]
  wire  allowed_1_1 = idle_1 ? readys_1_1 : state_1_1; // @[Arbiter.scala 121:24]
  wire  out_5_ready = auto_out_0_c_ready & allowed_1_1; // @[Arbiter.scala 123:31]
  wire  readys_4_1 = readys_readys_4[1]; // @[Arbiter.scala 95:86]
  reg  state_4_1; // @[Arbiter.scala 116:26]
  wire  allowed_4_1 = idle_4 ? readys_4_1 : state_4_1; // @[Arbiter.scala 121:24]
  wire  out_11_ready = auto_out_1_c_ready & allowed_4_1; // @[Arbiter.scala 123:31]
  wire  allowed_7_0 = idle_7 ? readys_7_0 : state_7_0; // @[Arbiter.scala 121:24]
  wire  out_19_ready = auto_in_0_d_ready & allowed_7_0; // @[Arbiter.scala 123:31]
  wire  allowed_9_0 = idle_9 ? readys_9_0 : state_9_0; // @[Arbiter.scala 121:24]
  wire  out_25_ready = auto_in_1_d_ready & allowed_9_0; // @[Arbiter.scala 123:31]
  wire  allowed_10_0 = idle_10 ? readys_10_0 : state_10_0; // @[Arbiter.scala 121:24]
  wire  out_29_ready = auto_in_2_d_ready & allowed_10_0; // @[Arbiter.scala 123:31]
  wire  allowed_7_1 = idle_7 ? readys_7_1 : state_7_1; // @[Arbiter.scala 121:24]
  wire  out_20_ready = auto_in_0_d_ready & allowed_7_1; // @[Arbiter.scala 123:31]
  wire  allowed_9_1 = idle_9 ? readys_9_1 : state_9_1; // @[Arbiter.scala 121:24]
  wire  out_26_ready = auto_in_1_d_ready & allowed_9_1; // @[Arbiter.scala 123:31]
  wire  allowed_10_1 = idle_10 ? readys_10_1 : state_10_1; // @[Arbiter.scala 121:24]
  wire  out_30_ready = auto_in_2_d_ready & allowed_10_1; // @[Arbiter.scala 123:31]
  wire  allowed_2_0 = idle_2 ? readys_2_0 : state_2_0; // @[Arbiter.scala 121:24]
  wire  allowed_5_0 = idle_5 ? readys_5_0 : state_5_0; // @[Arbiter.scala 121:24]
  wire  allowed_2_1 = idle_2 ? readys_2_1 : state_2_1; // @[Arbiter.scala 121:24]
  wire  allowed_5_1 = idle_5 ? readys_5_1 : state_5_1; // @[Arbiter.scala 121:24]
  wire  latch = idle & auto_out_0_a_ready; // @[Arbiter.scala 89:24]
  wire [2:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [3:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[2:0]; // @[package.scala 244:43]
  wire [4:0] _readys_mask_T_4 = {_readys_mask_T_3, 2'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_mask_T_6 = _readys_mask_T_3 | _readys_mask_T_4[2:0]; // @[package.scala 244:43]
  wire  earlyWinner__0 = readys__0 & portsAOI_filtered__0_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__1 = readys__1 & portsAOI_filtered_1_0_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__2 = readys__2 & portsAOI_filtered_2_0_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_17 = portsAOI_filtered__0_earlyValid | portsAOI_filtered_1_0_earlyValid | portsAOI_filtered_2_0_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner__0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner__1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  maskedBeats_2 = earlyWinner__2 & beatsAI_2; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1 | maskedBeats_2; // @[Arbiter.scala 112:44]
  wire  muxStateEarly__0 = idle ? earlyWinner__0 : state__0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly__1 = idle ? earlyWinner__1 : state__1; // @[Arbiter.scala 117:30]
  wire  muxStateEarly__2 = idle ? earlyWinner__2 : state__2; // @[Arbiter.scala 117:30]
  wire  _out_0_a_earlyValid_T_6 = state__0 & portsAOI_filtered__0_earlyValid | state__1 &
    portsAOI_filtered_1_0_earlyValid | state__2 & portsAOI_filtered_2_0_earlyValid; // @[Mux.scala 27:73]
  wire  out_3_0_a_earlyValid = idle ? _T_17 : _out_0_a_earlyValid_T_6; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_out_0_a_ready & out_3_0_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_40 = muxStateEarly__1 ? auto_in_1_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_41 = muxStateEarly__2 ? auto_in_2_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_44 = muxStateEarly__0 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_45 = muxStateEarly__1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_46 = muxStateEarly__2 ? auto_in_2_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_47 = _T_44 | _T_45; // @[Mux.scala 27:73]
  wire [1:0] _T_64 = muxStateEarly__0 ? auto_in_0_a_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_65 = muxStateEarly__1 ? auto_in_1_a_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_69 = muxStateEarly__0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_70 = muxStateEarly__1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_71 = muxStateEarly__2 ? auto_in_2_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_72 = _T_69 | _T_70; // @[Mux.scala 27:73]
  wire [5:0] in_0_a_bits_source = {{1'd0}, auto_in_0_a_bits_source}; // @[Xbar.scala 231:18 237:29]
  wire [5:0] _T_74 = muxStateEarly__0 ? in_0_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_75 = muxStateEarly__1 ? in_1_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_76 = muxStateEarly__2 ? in_2_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_77 = _T_74 | _T_75; // @[Mux.scala 27:73]
  wire [2:0] _T_79 = muxStateEarly__0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_80 = muxStateEarly__1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_81 = muxStateEarly__2 ? auto_in_2_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_82 = _T_79 | _T_80; // @[Mux.scala 27:73]
  wire [2:0] _T_84 = muxStateEarly__0 ? auto_in_0_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_85 = muxStateEarly__1 ? auto_in_1_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_86 = muxStateEarly__2 ? auto_in_2_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_87 = _T_84 | _T_85; // @[Mux.scala 27:73]
  wire [2:0] _T_89 = muxStateEarly__0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_90 = muxStateEarly__1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_91 = muxStateEarly__2 ? auto_in_2_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_92 = _T_89 | _T_90; // @[Mux.scala 27:73]
  wire  latch_1 = idle_1 & auto_out_0_c_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_8 = readys_readys_1 & readys_valid_1; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_9 = {_readys_mask_T_8, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_11 = _readys_mask_T_8 | _readys_mask_T_9[1:0]; // @[package.scala 244:43]
  wire  earlyWinner_1_0 = readys_1_0 & portsCOI_filtered__0_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_1 = readys_1_1 & portsCOI_filtered_1_0_valid; // @[Arbiter.scala 97:79]
  wire  _T_104 = portsCOI_filtered__0_valid | portsCOI_filtered_1_0_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_1 = earlyWinner_1_0 & beatsCI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_1 = earlyWinner_1_1 & beatsCI_1; // @[Arbiter.scala 111:73]
  wire  initBeats_1 = maskedBeats_0_1 | maskedBeats_1_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_1_0 = idle_1 ? earlyWinner_1_0 : state_1_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_1_1 = idle_1 ? earlyWinner_1_1 : state_1_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_3 = state_1_0 & portsCOI_filtered__0_valid | state_1_1 & portsCOI_filtered_1_0_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle_1 ? _T_104 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_8 = auto_out_0_c_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_121 = muxStateEarly_1_0 ? auto_in_0_c_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_122 = muxStateEarly_1_1 ? auto_in_1_c_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_136 = muxStateEarly_1_0 ? auto_in_0_c_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_137 = muxStateEarly_1_1 ? auto_in_1_c_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [5:0] in_0_c_bits_source = {{1'd0}, auto_in_0_c_bits_source}; // @[Xbar.scala 231:18 259:29]
  wire [5:0] _T_139 = muxStateEarly_1_0 ? in_0_c_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_140 = muxStateEarly_1_1 ? in_1_c_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_142 = muxStateEarly_1_0 ? auto_in_0_c_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_143 = muxStateEarly_1_1 ? auto_in_1_c_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_145 = muxStateEarly_1_0 ? auto_in_0_c_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_146 = muxStateEarly_1_1 ? auto_in_1_c_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_148 = muxStateEarly_1_0 ? auto_in_0_c_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_149 = muxStateEarly_1_1 ? auto_in_1_c_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [1:0] _readys_mask_T_13 = readys_readys_2 & readys_valid_2; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_14 = {_readys_mask_T_13, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_16 = _readys_mask_T_13 | _readys_mask_T_14[1:0]; // @[package.scala 244:43]
  wire  _T_161 = portsEOI_filtered__0_valid | portsEOI_filtered_1_0_valid; // @[Arbiter.scala 107:36]
  wire  _sink_ACancel_earlyValid_T_8 = state_2_0 & portsEOI_filtered__0_valid | state_2_1 & portsEOI_filtered_1_0_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_1_earlyValid = idle_2 ? _T_161 : _sink_ACancel_earlyValid_T_8; // @[Arbiter.scala 125:29]
  wire  latch_3 = idle_3 & auto_out_1_a_ready; // @[Arbiter.scala 89:24]
  wire [2:0] _readys_mask_T_18 = readys_readys_3 & readys_valid_3; // @[Arbiter.scala 28:29]
  wire [3:0] _readys_mask_T_19 = {_readys_mask_T_18, 1'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_mask_T_21 = _readys_mask_T_18 | _readys_mask_T_19[2:0]; // @[package.scala 244:43]
  wire [4:0] _readys_mask_T_22 = {_readys_mask_T_21, 2'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_mask_T_24 = _readys_mask_T_21 | _readys_mask_T_22[2:0]; // @[package.scala 244:43]
  wire  earlyWinner_3_0 = readys_3_0 & portsAOI_filtered__1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_3_1 = readys_3_1 & portsAOI_filtered_1_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_3_2 = readys_3_2 & portsAOI_filtered_2_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_193 = portsAOI_filtered__1_earlyValid | portsAOI_filtered_1_1_earlyValid | portsAOI_filtered_2_1_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_3 = earlyWinner_3_0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_3 = earlyWinner_3_1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  maskedBeats_2_1 = earlyWinner_3_2 & beatsAI_2; // @[Arbiter.scala 111:73]
  wire  initBeats_3 = maskedBeats_0_3 | maskedBeats_1_3 | maskedBeats_2_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_3_0 = idle_3 ? earlyWinner_3_0 : state_3_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_3_1 = idle_3 ? earlyWinner_3_1 : state_3_1; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_3_2 = idle_3 ? earlyWinner_3_2 : state_3_2; // @[Arbiter.scala 117:30]
  wire  _out_1_a_earlyValid_T_6 = state_3_0 & portsAOI_filtered__1_earlyValid | state_3_1 &
    portsAOI_filtered_1_1_earlyValid | state_3_2 & portsAOI_filtered_2_1_earlyValid; // @[Mux.scala 27:73]
  wire  out_3_1_a_earlyValid = idle_3 ? _T_193 : _out_1_a_earlyValid_T_6; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_20 = auto_out_1_a_ready & out_3_1_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_216 = muxStateEarly_3_1 ? auto_in_1_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_217 = muxStateEarly_3_2 ? auto_in_2_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_220 = muxStateEarly_3_0 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_221 = muxStateEarly_3_1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_222 = muxStateEarly_3_2 ? auto_in_2_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_223 = _T_220 | _T_221; // @[Mux.scala 27:73]
  wire [1:0] _T_240 = muxStateEarly_3_0 ? auto_in_0_a_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_241 = muxStateEarly_3_1 ? auto_in_1_a_bits_user_alias : 2'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_245 = muxStateEarly_3_0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_246 = muxStateEarly_3_1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_247 = muxStateEarly_3_2 ? auto_in_2_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_248 = _T_245 | _T_246; // @[Mux.scala 27:73]
  wire [5:0] _T_250 = muxStateEarly_3_0 ? in_0_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_251 = muxStateEarly_3_1 ? in_1_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_252 = muxStateEarly_3_2 ? in_2_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_253 = _T_250 | _T_251; // @[Mux.scala 27:73]
  wire [2:0] _T_255 = muxStateEarly_3_0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_256 = muxStateEarly_3_1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_257 = muxStateEarly_3_2 ? auto_in_2_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_258 = _T_255 | _T_256; // @[Mux.scala 27:73]
  wire [2:0] _T_260 = muxStateEarly_3_0 ? auto_in_0_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_261 = muxStateEarly_3_1 ? auto_in_1_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_262 = muxStateEarly_3_2 ? auto_in_2_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_263 = _T_260 | _T_261; // @[Mux.scala 27:73]
  wire [2:0] _T_265 = muxStateEarly_3_0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_266 = muxStateEarly_3_1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_267 = muxStateEarly_3_2 ? auto_in_2_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_268 = _T_265 | _T_266; // @[Mux.scala 27:73]
  wire  latch_4 = idle_4 & auto_out_1_c_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_26 = readys_readys_4 & readys_valid_4; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_27 = {_readys_mask_T_26, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_29 = _readys_mask_T_26 | _readys_mask_T_27[1:0]; // @[package.scala 244:43]
  wire  earlyWinner_4_0 = readys_4_0 & portsCOI_filtered__1_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_4_1 = readys_4_1 & portsCOI_filtered_1_1_valid; // @[Arbiter.scala 97:79]
  wire  _T_280 = portsCOI_filtered__1_valid | portsCOI_filtered_1_1_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_4 = earlyWinner_4_0 & beatsCI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_4 = earlyWinner_4_1 & beatsCI_1; // @[Arbiter.scala 111:73]
  wire  initBeats_4 = maskedBeats_0_4 | maskedBeats_1_4; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_4_0 = idle_4 ? earlyWinner_4_0 : state_4_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_4_1 = idle_4 ? earlyWinner_4_1 : state_4_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_13 = state_4_0 & portsCOI_filtered__1_valid | state_4_1 & portsCOI_filtered_1_1_valid
    ; // @[Mux.scala 27:73]
  wire  sink_ACancel_2_earlyValid = idle_4 ? _T_280 : _sink_ACancel_earlyValid_T_13; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_26 = auto_out_1_c_ready & sink_ACancel_2_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_297 = muxStateEarly_4_0 ? auto_in_0_c_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_298 = muxStateEarly_4_1 ? auto_in_1_c_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_312 = muxStateEarly_4_0 ? auto_in_0_c_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_313 = muxStateEarly_4_1 ? auto_in_1_c_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_315 = muxStateEarly_4_0 ? in_0_c_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_316 = muxStateEarly_4_1 ? in_1_c_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_318 = muxStateEarly_4_0 ? auto_in_0_c_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_319 = muxStateEarly_4_1 ? auto_in_1_c_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_321 = muxStateEarly_4_0 ? auto_in_0_c_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_322 = muxStateEarly_4_1 ? auto_in_1_c_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_324 = muxStateEarly_4_0 ? auto_in_0_c_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_325 = muxStateEarly_4_1 ? auto_in_1_c_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [1:0] _readys_mask_T_31 = readys_readys_5 & readys_valid_5; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_32 = {_readys_mask_T_31, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_34 = _readys_mask_T_31 | _readys_mask_T_32[1:0]; // @[package.scala 244:43]
  wire  _T_337 = portsEOI_filtered__1_valid | portsEOI_filtered_1_1_valid; // @[Arbiter.scala 107:36]
  wire  _sink_ACancel_earlyValid_T_18 = state_5_0 & portsEOI_filtered__1_valid | state_5_1 & portsEOI_filtered_1_1_valid
    ; // @[Mux.scala 27:73]
  wire  sink_ACancel_3_earlyValid = idle_5 ? _T_337 : _sink_ACancel_earlyValid_T_18; // @[Arbiter.scala 125:29]
  wire  latch_6 = idle_6 & auto_in_0_bready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_36 = readys_readys_6 & readys_valid_6; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_37 = {_readys_mask_T_36, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_39 = _readys_mask_T_36 | _readys_mask_T_37[1:0]; // @[package.scala 244:43]
  wire  _T_364 = portsBIO_filtered__0_valid | portsBIO_filtered_1_0_valid; // @[Arbiter.scala 107:36]
  wire  _sink_ACancel_earlyValid_T_23 = state_6_0 & portsBIO_filtered__0_valid | state_6_1 & portsBIO_filtered_1_0_valid
    ; // @[Mux.scala 27:73]
  wire  sink_ACancel_4_earlyValid = idle_6 ? _T_364 : _sink_ACancel_earlyValid_T_23; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_38 = auto_in_0_bready & sink_ACancel_4_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_381 = muxStateEarly_6_0 ? auto_out_0_bdata : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_382 = muxStateEarly_6_1 ? auto_out_1_bdata : 256'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_387 = muxStateEarly_6_0 ? auto_out_0_baddress : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_388 = muxStateEarly_6_1 ? auto_out_1_baddress : 36'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_396 = muxStateEarly_6_0 ? auto_out_0_bparam : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_397 = muxStateEarly_6_1 ? auto_out_1_bparam : 2'h0; // @[Mux.scala 27:73]
  wire  latch_7 = idle_7 & auto_in_0_d_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_41 = readys_readys_7 & readys_valid_7; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_42 = {_readys_mask_T_41, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_44 = _readys_mask_T_41 | _readys_mask_T_42[1:0]; // @[package.scala 244:43]
  wire  _T_412 = portsDIO_filtered__0_valid | portsDIO_filtered_1_0_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_7 = earlyWinner_7_0 & beatsDO_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_7 = earlyWinner_7_1 & beatsDO_1; // @[Arbiter.scala 111:73]
  wire  initBeats_7 = maskedBeats_0_7 | maskedBeats_1_7; // @[Arbiter.scala 112:44]
  wire  _sink_ACancel_earlyValid_T_28 = state_7_0 & portsDIO_filtered__0_valid | state_7_1 & portsDIO_filtered_1_0_valid
    ; // @[Mux.scala 27:73]
  wire  sink_ACancel_5_earlyValid = idle_7 ? _T_412 : _sink_ACancel_earlyValid_T_28; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_44 = auto_in_0_d_ready & sink_ACancel_5_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_429 = muxStateEarly_7_0 ? auto_out_0_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_430 = muxStateEarly_7_1 ? auto_out_1_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_438 = muxStateEarly_7_0 ? out_3_0_d_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] out_3_1_d_bits_sink = {{1'd0}, auto_out_1_d_bits_sink}; // @[Xbar.scala 288:19 323:28]
  wire [4:0] _T_439 = muxStateEarly_7_1 ? out_3_1_d_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_444 = muxStateEarly_7_0 ? auto_out_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_445 = muxStateEarly_7_1 ? auto_out_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_447 = muxStateEarly_7_0 ? auto_out_0_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_448 = muxStateEarly_7_1 ? auto_out_1_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_450 = muxStateEarly_7_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_451 = muxStateEarly_7_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_8 = idle_8 & auto_in_1_bready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_46 = readys_readys_8 & readys_valid_8; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_47 = {_readys_mask_T_46, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_49 = _readys_mask_T_46 | _readys_mask_T_47[1:0]; // @[package.scala 244:43]
  wire  _T_463 = portsBIO_filtered__1_valid | portsBIO_filtered_1_1_valid; // @[Arbiter.scala 107:36]
  wire  _sink_ACancel_earlyValid_T_33 = state_8_0 & portsBIO_filtered__1_valid | state_8_1 & portsBIO_filtered_1_1_valid
    ; // @[Mux.scala 27:73]
  wire  sink_ACancel_6_earlyValid = idle_8 ? _T_463 : _sink_ACancel_earlyValid_T_33; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_50 = auto_in_1_bready & sink_ACancel_6_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_480 = muxStateEarly_8_0 ? auto_out_0_bdata : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_481 = muxStateEarly_8_1 ? auto_out_1_bdata : 256'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_486 = muxStateEarly_8_0 ? auto_out_0_baddress : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_487 = muxStateEarly_8_1 ? auto_out_1_baddress : 36'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_495 = muxStateEarly_8_0 ? auto_out_0_bparam : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_496 = muxStateEarly_8_1 ? auto_out_1_bparam : 2'h0; // @[Mux.scala 27:73]
  wire  latch_9 = idle_9 & auto_in_1_d_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_51 = readys_readys_9 & readys_valid_9; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_52 = {_readys_mask_T_51, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_54 = _readys_mask_T_51 | _readys_mask_T_52[1:0]; // @[package.scala 244:43]
  wire  _T_511 = portsDIO_filtered__1_valid | portsDIO_filtered_1_1_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_9 = earlyWinner_9_0 & beatsDO_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_9 = earlyWinner_9_1 & beatsDO_1; // @[Arbiter.scala 111:73]
  wire  initBeats_9 = maskedBeats_0_9 | maskedBeats_1_9; // @[Arbiter.scala 112:44]
  wire  _sink_ACancel_earlyValid_T_38 = state_9_0 & portsDIO_filtered__1_valid | state_9_1 & portsDIO_filtered_1_1_valid
    ; // @[Mux.scala 27:73]
  wire  sink_ACancel_7_earlyValid = idle_9 ? _T_511 : _sink_ACancel_earlyValid_T_38; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_56 = auto_in_1_d_ready & sink_ACancel_7_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_528 = muxStateEarly_9_0 ? auto_out_0_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_529 = muxStateEarly_9_1 ? auto_out_1_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_537 = muxStateEarly_9_0 ? out_3_0_d_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_538 = muxStateEarly_9_1 ? out_3_1_d_bits_sink : 5'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_546 = muxStateEarly_9_0 ? auto_out_0_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_547 = muxStateEarly_9_1 ? auto_out_1_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_549 = muxStateEarly_9_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_550 = muxStateEarly_9_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_10 = idle_10 & auto_in_2_d_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_56 = readys_readys_10 & readys_valid_10; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_57 = {_readys_mask_T_56, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_59 = _readys_mask_T_56 | _readys_mask_T_57[1:0]; // @[package.scala 244:43]
  wire  _T_562 = portsDIO_filtered__2_valid | portsDIO_filtered_1_2_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_10 = earlyWinner_10_0 & beatsDO_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_10 = earlyWinner_10_1 & beatsDO_1; // @[Arbiter.scala 111:73]
  wire  initBeats_10 = maskedBeats_0_10 | maskedBeats_1_10; // @[Arbiter.scala 112:44]
  wire  _sink_ACancel_earlyValid_T_43 = state_10_0 & portsDIO_filtered__2_valid | state_10_1 &
    portsDIO_filtered_1_2_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_9_earlyValid = idle_10 ? _T_562 : _sink_ACancel_earlyValid_T_43; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_62 = auto_in_2_d_ready & sink_ACancel_9_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_579 = muxStateEarly_10_0 ? auto_out_0_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_580 = muxStateEarly_10_1 ? auto_out_1_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_594 = muxStateEarly_10_0 ? auto_out_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_595 = muxStateEarly_10_1 ? auto_out_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_600 = muxStateEarly_10_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_601 = muxStateEarly_10_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  assign auto_in_2_a_ready = requestAIO_2_0 & portsAOI_filtered_2_0_ready | requestAIO_2_1 & portsAOI_filtered_2_1_ready
    ; // @[Mux.scala 27:73]
  assign auto_in_2_d_valid = idle_10 ? _T_562 : _sink_ACancel_earlyValid_T_43; // @[Arbiter.scala 125:29]
  assign auto_in_2_d_bits_opcode = _T_600 | _T_601; // @[Mux.scala 27:73]
  assign auto_in_2_d_bits_size = _T_594 | _T_595; // @[Mux.scala 27:73]
  assign auto_in_2_d_bits_source = sink_ACancel_9_bits_source[2:0]; // @[Xbar.scala 228:69]
  assign auto_in_2_d_bits_data = _T_579 | _T_580; // @[Mux.scala 27:73]
  assign auto_in_1_a_ready = requestAIO_1_0 & portsAOI_filtered_1_0_ready | requestAIO_1_1 & portsAOI_filtered_1_1_ready
    ; // @[Mux.scala 27:73]
  assign auto_in_1_bvalid = idle_8 ? _T_463 : _sink_ACancel_earlyValid_T_33; // @[Arbiter.scala 125:29]
  assign auto_in_1_bparam = _T_495 | _T_496; // @[Mux.scala 27:73]
  assign auto_in_1_baddress = _T_486 | _T_487; // @[Mux.scala 27:73]
  assign auto_in_1_bdata = _T_480 | _T_481; // @[Mux.scala 27:73]
  assign auto_in_1_c_ready = requestCIO_1_0 & out_5_ready | requestCIO_1_1 & out_11_ready; // @[Mux.scala 27:73]
  assign auto_in_1_d_valid = idle_9 ? _T_511 : _sink_ACancel_earlyValid_T_38; // @[Arbiter.scala 125:29]
  assign auto_in_1_d_bits_opcode = _T_549 | _T_550; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_param = _T_546 | _T_547; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_source = sink_ACancel_7_bits_source[1:0]; // @[Xbar.scala 228:69]
  assign auto_in_1_d_bits_sink = _T_537 | _T_538; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_echo_blockisdirty = muxStateEarly_9_0 & auto_out_0_d_bits_echo_blockisdirty |
    muxStateEarly_9_1 & auto_out_1_d_bits_echo_blockisdirty; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_data = _T_528 | _T_529; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_corrupt = muxStateEarly_9_0 & auto_out_0_d_bits_corrupt | muxStateEarly_9_1 &
    auto_out_1_d_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_in_1_e_ready = requestEIO_1_0 & allowed_2_1 | requestEIO_1_1 & allowed_5_1; // @[Mux.scala 27:73]
  assign auto_in_0_a_ready = requestAIO_0_0 & portsAOI_filtered__0_ready | requestAIO_0_1 & portsAOI_filtered__1_ready; // @[Mux.scala 27:73]
  assign auto_in_0_bvalid = idle_6 ? _T_364 : _sink_ACancel_earlyValid_T_23; // @[Arbiter.scala 125:29]
  assign auto_in_0_bparam = _T_396 | _T_397; // @[Mux.scala 27:73]
  assign auto_in_0_baddress = _T_387 | _T_388; // @[Mux.scala 27:73]
  assign auto_in_0_bdata = _T_381 | _T_382; // @[Mux.scala 27:73]
  assign auto_in_0_c_ready = requestCIO_0_0 & out_4_ready | requestCIO_0_1 & out_10_ready; // @[Mux.scala 27:73]
  assign auto_in_0_d_valid = idle_7 ? _T_412 : _sink_ACancel_earlyValid_T_28; // @[Arbiter.scala 125:29]
  assign auto_in_0_d_bits_opcode = _T_450 | _T_451; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_param = _T_447 | _T_448; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_size = _T_444 | _T_445; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_source = sink_ACancel_5_bits_source[4:0]; // @[Xbar.scala 228:69]
  assign auto_in_0_d_bits_sink = _T_438 | _T_439; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_denied = muxStateEarly_7_0 & auto_out_0_d_bits_denied | muxStateEarly_7_1 &
    auto_out_1_d_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_echo_blockisdirty = muxStateEarly_7_0 & auto_out_0_d_bits_echo_blockisdirty |
    muxStateEarly_7_1 & auto_out_1_d_bits_echo_blockisdirty; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_data = _T_429 | _T_430; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_corrupt = muxStateEarly_7_0 & auto_out_0_d_bits_corrupt | muxStateEarly_7_1 &
    auto_out_1_d_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_in_0_e_ready = requestEIO_0_0 & allowed_2_0 | requestEIO_0_1 & allowed_5_0; // @[Mux.scala 27:73]
  assign auto_out_1_a_valid = idle_3 ? _T_193 : _out_1_a_earlyValid_T_6; // @[Arbiter.scala 125:29]
  assign auto_out_1_a_bits_opcode = _T_268 | _T_267; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_param = _T_263 | _T_262; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_size = _T_258 | _T_257; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_source = _T_253 | _T_252; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_address = _T_248 | _T_247; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_user_alias = _T_240 | _T_241; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_user_preferCache = muxStateEarly_3_1 & auto_in_1_a_bits_user_preferCache; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_user_needHint = muxStateEarly_3_0 & auto_in_0_a_bits_user_needHint | muxStateEarly_3_1 &
    auto_in_1_a_bits_user_needHint; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_mask = _T_223 | _T_222; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_data = _T_216 | _T_217; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_corrupt = muxStateEarly_3_1 & auto_in_1_a_bits_corrupt | muxStateEarly_3_2 &
    auto_in_2_a_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_out_1_bready = requestBOI_1_0 & out_17_ready | requestBOI_1_1 & out_23_ready; // @[Mux.scala 27:73]
  assign auto_out_1_c_valid = idle_4 ? _T_280 : _sink_ACancel_earlyValid_T_13; // @[Arbiter.scala 125:29]
  assign auto_out_1_c_bits_opcode = _T_324 | _T_325; // @[Mux.scala 27:73]
  assign auto_out_1_c_bits_param = _T_321 | _T_322; // @[Mux.scala 27:73]
  assign auto_out_1_c_bits_size = _T_318 | _T_319; // @[Mux.scala 27:73]
  assign auto_out_1_c_bits_source = _T_315 | _T_316; // @[Mux.scala 27:73]
  assign auto_out_1_c_bits_address = _T_312 | _T_313; // @[Mux.scala 27:73]
  assign auto_out_1_c_bits_echo_blockisdirty = muxStateEarly_4_0 & auto_in_0_c_bits_echo_blockisdirty |
    muxStateEarly_4_1 & auto_in_1_c_bits_echo_blockisdirty; // @[Mux.scala 27:73]
  assign auto_out_1_c_bits_data = _T_297 | _T_298; // @[Mux.scala 27:73]
  assign auto_out_1_d_ready = requestDOI_1_0 & out_20_ready | requestDOI_1_1 & out_26_ready | requestDOI_1_2 &
    out_30_ready; // @[Mux.scala 27:73]
  assign auto_out_1_e_valid = idle_5 ? _T_337 : _sink_ACancel_earlyValid_T_18; // @[Arbiter.scala 125:29]
  assign auto_out_1_e_bits_sink = sink_ACancel_3_bits_sink[3:0]; // @[Xbar.scala 228:69]
  assign auto_out_0_a_valid = idle ? _T_17 : _out_0_a_earlyValid_T_6; // @[Arbiter.scala 125:29]
  assign auto_out_0_a_bits_opcode = _T_92 | _T_91; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_param = _T_87 | _T_86; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_size = _T_82 | _T_81; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_source = _T_77 | _T_76; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_address = _T_72 | _T_71; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_user_alias = _T_64 | _T_65; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_user_preferCache = muxStateEarly__1 & auto_in_1_a_bits_user_preferCache; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_user_needHint = muxStateEarly__0 & auto_in_0_a_bits_user_needHint | muxStateEarly__1 &
    auto_in_1_a_bits_user_needHint; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_mask = _T_47 | _T_46; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_data = _T_40 | _T_41; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_corrupt = muxStateEarly__1 & auto_in_1_a_bits_corrupt | muxStateEarly__2 &
    auto_in_2_a_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_out_0_bready = requestBOI_0_0 & out_16_ready | requestBOI_0_1 & out_22_ready; // @[Mux.scala 27:73]
  assign auto_out_0_c_valid = idle_1 ? _T_104 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_0_c_bits_opcode = _T_148 | _T_149; // @[Mux.scala 27:73]
  assign auto_out_0_c_bits_param = _T_145 | _T_146; // @[Mux.scala 27:73]
  assign auto_out_0_c_bits_size = _T_142 | _T_143; // @[Mux.scala 27:73]
  assign auto_out_0_c_bits_source = _T_139 | _T_140; // @[Mux.scala 27:73]
  assign auto_out_0_c_bits_address = _T_136 | _T_137; // @[Mux.scala 27:73]
  assign auto_out_0_c_bits_echo_blockisdirty = muxStateEarly_1_0 & auto_in_0_c_bits_echo_blockisdirty |
    muxStateEarly_1_1 & auto_in_1_c_bits_echo_blockisdirty; // @[Mux.scala 27:73]
  assign auto_out_0_c_bits_data = _T_121 | _T_122; // @[Mux.scala 27:73]
  assign auto_out_0_d_ready = requestDOI_0_0 & out_19_ready | requestDOI_0_1 & out_25_ready | requestDOI_0_2 &
    out_29_ready; // @[Mux.scala 27:73]
  assign auto_out_0_e_valid = idle_2 ? _T_161 : _sink_ACancel_earlyValid_T_8; // @[Arbiter.scala 125:29]
  assign auto_out_0_e_bits_sink = sink_ACancel_1_bits_sink[3:0]; // @[Xbar.scala 228:69]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_6 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_6) begin // @[Arbiter.scala 113:23]
      beatsLeft_6 <= 1'h0;
    end else begin
      beatsLeft_6 <= beatsLeft_6 - _beatsLeft_T_38;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_6 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (latch_6 & |readys_valid_6) begin // @[Arbiter.scala 27:32]
      readys_mask_6 <= _readys_mask_T_39; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_6_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_6) begin // @[Arbiter.scala 117:30]
      state_6_0 <= earlyWinner_6_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_6_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_6) begin // @[Arbiter.scala 117:30]
      state_6_1 <= earlyWinner_6_1;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_7 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_7) begin // @[Arbiter.scala 113:23]
      beatsLeft_7 <= initBeats_7;
    end else begin
      beatsLeft_7 <= beatsLeft_7 - _beatsLeft_T_44;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_7 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (latch_7 & |readys_valid_7) begin // @[Arbiter.scala 27:32]
      readys_mask_7 <= _readys_mask_T_44; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_7_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_7) begin // @[Arbiter.scala 117:30]
      state_7_0 <= earlyWinner_7_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_7_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_7) begin // @[Arbiter.scala 117:30]
      state_7_1 <= earlyWinner_7_1;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_8 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_8) begin // @[Arbiter.scala 113:23]
      beatsLeft_8 <= 1'h0;
    end else begin
      beatsLeft_8 <= beatsLeft_8 - _beatsLeft_T_50;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_8 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (latch_8 & |readys_valid_8) begin // @[Arbiter.scala 27:32]
      readys_mask_8 <= _readys_mask_T_49; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_8_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_8) begin // @[Arbiter.scala 117:30]
      state_8_0 <= earlyWinner_8_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_8_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_8) begin // @[Arbiter.scala 117:30]
      state_8_1 <= earlyWinner_8_1;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_9 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_9) begin // @[Arbiter.scala 113:23]
      beatsLeft_9 <= initBeats_9;
    end else begin
      beatsLeft_9 <= beatsLeft_9 - _beatsLeft_T_56;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_9 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (latch_9 & |readys_valid_9) begin // @[Arbiter.scala 27:32]
      readys_mask_9 <= _readys_mask_T_54; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_9_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_9) begin // @[Arbiter.scala 117:30]
      state_9_0 <= earlyWinner_9_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_9_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_9) begin // @[Arbiter.scala 117:30]
      state_9_1 <= earlyWinner_9_1;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_10 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_10) begin // @[Arbiter.scala 113:23]
      beatsLeft_10 <= initBeats_10;
    end else begin
      beatsLeft_10 <= beatsLeft_10 - _beatsLeft_T_62;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_10 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (latch_10 & |readys_valid_10) begin // @[Arbiter.scala 27:32]
      readys_mask_10 <= _readys_mask_T_59; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_10_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_10) begin // @[Arbiter.scala 117:30]
      state_10_0 <= earlyWinner_10_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_10_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_10) begin // @[Arbiter.scala 117:30]
      state_10_1 <= earlyWinner_10_1;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_2 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (idle_2) begin // @[Arbiter.scala 113:23]
      beatsLeft_2 <= 1'h0;
    end else begin
      beatsLeft_2 <= beatsLeft_2 - sink_ACancel_1_earlyValid;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_2 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (idle_2 & |readys_valid_2) begin // @[Arbiter.scala 27:32]
      readys_mask_2 <= _readys_mask_T_16; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_2_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_2) begin // @[Arbiter.scala 117:30]
      state_2_0 <= earlyWinner_2_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_2_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_2) begin // @[Arbiter.scala 117:30]
      state_2_1 <= earlyWinner_2_1;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_5 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (idle_5) begin // @[Arbiter.scala 113:23]
      beatsLeft_5 <= 1'h0;
    end else begin
      beatsLeft_5 <= beatsLeft_5 - sink_ACancel_3_earlyValid;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_5 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (idle_5 & |readys_valid_5) begin // @[Arbiter.scala 27:32]
      readys_mask_5 <= _readys_mask_T_34; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_5_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_5) begin // @[Arbiter.scala 117:30]
      state_5_0 <= earlyWinner_5_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_5_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_5) begin // @[Arbiter.scala 117:30]
      state_5_1 <= earlyWinner_5_1;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch) begin // @[Arbiter.scala 113:23]
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask <= 3'h7; // @[Arbiter.scala 23:23]
    end else if (latch & |readys_valid) begin // @[Arbiter.scala 27:32]
      readys_mask <= _readys_mask_T_6; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__0 <= earlyWinner__0;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_3 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_3) begin // @[Arbiter.scala 113:23]
      beatsLeft_3 <= initBeats_3;
    end else begin
      beatsLeft_3 <= beatsLeft_3 - _beatsLeft_T_20;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_3 <= 3'h7; // @[Arbiter.scala 23:23]
    end else if (latch_3 & |readys_valid_3) begin // @[Arbiter.scala 27:32]
      readys_mask_3 <= _readys_mask_T_24; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_3_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_3) begin // @[Arbiter.scala 117:30]
      state_3_0 <= earlyWinner_3_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__1 <= earlyWinner__1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_3_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_3) begin // @[Arbiter.scala 117:30]
      state_3_1 <= earlyWinner_3_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state__2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__2 <= earlyWinner__2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_3_2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_3) begin // @[Arbiter.scala 117:30]
      state_3_2 <= earlyWinner_3_2;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_1 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_1) begin // @[Arbiter.scala 113:23]
      beatsLeft_1 <= initBeats_1;
    end else begin
      beatsLeft_1 <= beatsLeft_1 - _beatsLeft_T_8;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_1 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (latch_1 & |readys_valid_1) begin // @[Arbiter.scala 27:32]
      readys_mask_1 <= _readys_mask_T_11; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_0 <= earlyWinner_1_0;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_4 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_4) begin // @[Arbiter.scala 113:23]
      beatsLeft_4 <= initBeats_4;
    end else begin
      beatsLeft_4 <= beatsLeft_4 - _beatsLeft_T_26;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_4 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (latch_4 & |readys_valid_4) begin // @[Arbiter.scala 27:32]
      readys_mask_4 <= _readys_mask_T_29; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_4_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_4) begin // @[Arbiter.scala 117:30]
      state_4_0 <= earlyWinner_4_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_1 <= earlyWinner_1_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_4_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_4) begin // @[Arbiter.scala 117:30]
      state_4_1 <= earlyWinner_4_1;
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
  beatsLeft_6 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  readys_mask_6 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  state_6_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_6_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  beatsLeft_7 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  readys_mask_7 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  state_7_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_7_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  beatsLeft_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  readys_mask_8 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  state_8_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  state_8_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  beatsLeft_9 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  readys_mask_9 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  state_9_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  state_9_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  beatsLeft_10 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  readys_mask_10 = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  state_10_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  state_10_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  beatsLeft_2 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  readys_mask_2 = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  state_2_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  state_2_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  beatsLeft_5 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  readys_mask_5 = _RAND_25[1:0];
  _RAND_26 = {1{`RANDOM}};
  state_5_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  state_5_1 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  beatsLeft = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  readys_mask = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  state__0 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  beatsLeft_3 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  readys_mask_3 = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  state_3_0 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  state__1 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  state_3_1 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  state__2 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  state_3_2 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  beatsLeft_1 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  readys_mask_1 = _RAND_39[1:0];
  _RAND_40 = {1{`RANDOM}};
  state_1_0 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  beatsLeft_4 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  readys_mask_4 = _RAND_42[1:0];
  _RAND_43 = {1{`RANDOM}};
  state_4_0 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  state_1_1 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  state_4_1 = _RAND_45[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
