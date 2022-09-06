module TLXbar_2(
  input          clock,
  input          reset,
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_param,
  input  [2:0]   auto_in_1_a_bits_size,
  input  [2:0]   auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input  [31:0]  auto_in_1_a_bits_mask,
  input  [255:0] auto_in_1_a_bits_data,
  input          auto_in_1_a_bits_corrupt,
  input          auto_in_1_d_ready,
  output         auto_in_1_d_valid,
  output [2:0]   auto_in_1_d_bits_opcode,
  output [2:0]   auto_in_1_d_bits_size,
  output [2:0]   auto_in_1_d_bits_source,
  output         auto_in_1_d_bits_denied,
  output [255:0] auto_in_1_d_bits_data,
  output         auto_in_1_d_bits_corrupt,
  output         auto_in_0_a_ready,
  input          auto_in_0_a_valid,
  input  [2:0]   auto_in_0_a_bits_opcode,
  input  [2:0]   auto_in_0_a_bits_param,
  input  [2:0]   auto_in_0_a_bits_size,
  input  [4:0]   auto_in_0_a_bits_source,
  input  [35:0]  auto_in_0_a_bits_address,
  input          auto_in_0_a_bits_user_preferCache,
  input  [31:0]  auto_in_0_a_bits_mask,
  input  [255:0] auto_in_0_a_bits_data,
  input          auto_in_0_a_bits_corrupt,
  input          auto_in_0_bready,
  output         auto_in_0_bvalid,
  output [2:0]   auto_in_0_bopcode,
  output [1:0]   auto_in_0_bparam,
  output [2:0]   auto_in_0_bsize,
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
  output [5:0]   auto_in_0_d_bits_sink,
  output         auto_in_0_d_bits_denied,
  output         auto_in_0_d_bits_echo_blockisdirty,
  output [255:0] auto_in_0_d_bits_data,
  output         auto_in_0_e_ready,
  input          auto_in_0_e_valid,
  input  [5:0]   auto_in_0_e_bits_sink,
  input          auto_out_3_a_ready,
  output         auto_out_3_a_valid,
  output [2:0]   auto_out_3_a_bits_opcode,
  output [2:0]   auto_out_3_a_bits_param,
  output [2:0]   auto_out_3_a_bits_size,
  output [5:0]   auto_out_3_a_bits_source,
  output [35:0]  auto_out_3_a_bits_address,
  output         auto_out_3_a_bits_user_preferCache,
  output [31:0]  auto_out_3_a_bits_mask,
  output [255:0] auto_out_3_a_bits_data,
  output         auto_out_3_a_bits_corrupt,
  output         auto_out_3_bready,
  input          auto_out_3_bvalid,
  input  [2:0]   auto_out_3_bopcode,
  input  [1:0]   auto_out_3_bparam,
  input  [2:0]   auto_out_3_bsize,
  input  [5:0]   auto_out_3_bsource,
  input  [35:0]  auto_out_3_baddress,
  input  [255:0] auto_out_3_bdata,
  input          auto_out_3_c_ready,
  output         auto_out_3_c_valid,
  output [2:0]   auto_out_3_c_bits_opcode,
  output [2:0]   auto_out_3_c_bits_param,
  output [2:0]   auto_out_3_c_bits_size,
  output [5:0]   auto_out_3_c_bits_source,
  output [35:0]  auto_out_3_c_bits_address,
  output         auto_out_3_c_bits_echo_blockisdirty,
  output [255:0] auto_out_3_c_bits_data,
  output         auto_out_3_d_ready,
  input          auto_out_3_d_valid,
  input  [2:0]   auto_out_3_d_bits_opcode,
  input  [1:0]   auto_out_3_d_bits_param,
  input  [2:0]   auto_out_3_d_bits_size,
  input  [5:0]   auto_out_3_d_bits_source,
  input  [3:0]   auto_out_3_d_bits_sink,
  input          auto_out_3_d_bits_denied,
  input          auto_out_3_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_3_d_bits_data,
  input          auto_out_3_d_bits_corrupt,
  input          auto_out_3_e_ready,
  output         auto_out_3_e_valid,
  output [3:0]   auto_out_3_e_bits_sink,
  input          auto_out_2_a_ready,
  output         auto_out_2_a_valid,
  output [2:0]   auto_out_2_a_bits_opcode,
  output [2:0]   auto_out_2_a_bits_param,
  output [2:0]   auto_out_2_a_bits_size,
  output [5:0]   auto_out_2_a_bits_source,
  output [35:0]  auto_out_2_a_bits_address,
  output         auto_out_2_a_bits_user_preferCache,
  output [31:0]  auto_out_2_a_bits_mask,
  output [255:0] auto_out_2_a_bits_data,
  output         auto_out_2_a_bits_corrupt,
  output         auto_out_2_bready,
  input          auto_out_2_bvalid,
  input  [2:0]   auto_out_2_bopcode,
  input  [1:0]   auto_out_2_bparam,
  input  [2:0]   auto_out_2_bsize,
  input  [5:0]   auto_out_2_bsource,
  input  [35:0]  auto_out_2_baddress,
  input  [255:0] auto_out_2_bdata,
  input          auto_out_2_c_ready,
  output         auto_out_2_c_valid,
  output [2:0]   auto_out_2_c_bits_opcode,
  output [2:0]   auto_out_2_c_bits_param,
  output [2:0]   auto_out_2_c_bits_size,
  output [5:0]   auto_out_2_c_bits_source,
  output [35:0]  auto_out_2_c_bits_address,
  output         auto_out_2_c_bits_echo_blockisdirty,
  output [255:0] auto_out_2_c_bits_data,
  output         auto_out_2_d_ready,
  input          auto_out_2_d_valid,
  input  [2:0]   auto_out_2_d_bits_opcode,
  input  [1:0]   auto_out_2_d_bits_param,
  input  [2:0]   auto_out_2_d_bits_size,
  input  [5:0]   auto_out_2_d_bits_source,
  input  [3:0]   auto_out_2_d_bits_sink,
  input          auto_out_2_d_bits_denied,
  input          auto_out_2_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_2_d_bits_data,
  input          auto_out_2_d_bits_corrupt,
  input          auto_out_2_e_ready,
  output         auto_out_2_e_valid,
  output [3:0]   auto_out_2_e_bits_sink,
  input          auto_out_1_a_ready,
  output         auto_out_1_a_valid,
  output [2:0]   auto_out_1_a_bits_opcode,
  output [2:0]   auto_out_1_a_bits_param,
  output [2:0]   auto_out_1_a_bits_size,
  output [5:0]   auto_out_1_a_bits_source,
  output [35:0]  auto_out_1_a_bits_address,
  output         auto_out_1_a_bits_user_preferCache,
  output [31:0]  auto_out_1_a_bits_mask,
  output [255:0] auto_out_1_a_bits_data,
  output         auto_out_1_a_bits_corrupt,
  output         auto_out_1_bready,
  input          auto_out_1_bvalid,
  input  [2:0]   auto_out_1_bopcode,
  input  [1:0]   auto_out_1_bparam,
  input  [2:0]   auto_out_1_bsize,
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
  input          auto_out_1_e_ready,
  output         auto_out_1_e_valid,
  output [3:0]   auto_out_1_e_bits_sink,
  input          auto_out_0_a_ready,
  output         auto_out_0_a_valid,
  output [2:0]   auto_out_0_a_bits_opcode,
  output [2:0]   auto_out_0_a_bits_param,
  output [2:0]   auto_out_0_a_bits_size,
  output [5:0]   auto_out_0_a_bits_source,
  output [35:0]  auto_out_0_a_bits_address,
  output         auto_out_0_a_bits_user_preferCache,
  output [31:0]  auto_out_0_a_bits_mask,
  output [255:0] auto_out_0_a_bits_data,
  output         auto_out_0_a_bits_corrupt,
  output         auto_out_0_bready,
  input          auto_out_0_bvalid,
  input  [2:0]   auto_out_0_bopcode,
  input  [1:0]   auto_out_0_bparam,
  input  [2:0]   auto_out_0_bsize,
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
  input          auto_out_0_e_ready,
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
`endif // RANDOMIZE_REG_INIT
  reg  beatsLeft_4; // @[Arbiter.scala 87:30]
  wire  idle_4 = ~beatsLeft_4; // @[Arbiter.scala 88:28]
  wire  requestBOI_3_0 = ~auto_out_3_bsource[5]; // @[Parameters.scala 54:32]
  wire  portsBIO_filtered_3_0_valid = auto_out_3_bvalid & requestBOI_3_0; // @[Xbar.scala 179:40]
  wire  requestBOI_2_0 = ~auto_out_2_bsource[5]; // @[Parameters.scala 54:32]
  wire  portsBIO_filtered_2_0_valid = auto_out_2_bvalid & requestBOI_2_0; // @[Xbar.scala 179:40]
  wire  requestBOI_1_0 = ~auto_out_1_bsource[5]; // @[Parameters.scala 54:32]
  wire  portsBIO_filtered_1_0_valid = auto_out_1_bvalid & requestBOI_1_0; // @[Xbar.scala 179:40]
  wire  requestBOI_0_0 = ~auto_out_0_bsource[5]; // @[Parameters.scala 54:32]
  wire  portsBIO_filtered__0_valid = auto_out_0_bvalid & requestBOI_0_0; // @[Xbar.scala 179:40]
  wire [3:0] readys_valid_4 = {portsBIO_filtered_3_0_valid,portsBIO_filtered_2_0_valid,portsBIO_filtered_1_0_valid,
    portsBIO_filtered__0_valid}; // @[Cat.scala 31:58]
  reg [3:0] readys_mask_4; // @[Arbiter.scala 23:23]
  wire [3:0] _readys_filter_T_8 = ~readys_mask_4; // @[Arbiter.scala 24:30]
  wire [3:0] _readys_filter_T_9 = readys_valid_4 & _readys_filter_T_8; // @[Arbiter.scala 24:28]
  wire [7:0] readys_filter_4 = {_readys_filter_T_9,portsBIO_filtered_3_0_valid,portsBIO_filtered_2_0_valid,
    portsBIO_filtered_1_0_valid,portsBIO_filtered__0_valid}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_7 = {{1'd0}, readys_filter_4[7:1]}; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_21 = readys_filter_4 | _GEN_7; // @[package.scala 253:43]
  wire [7:0] _GEN_8 = {{2'd0}, _readys_unready_T_21[7:2]}; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_23 = _readys_unready_T_21 | _GEN_8; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_26 = {readys_mask_4, 4'h0}; // @[Arbiter.scala 25:66]
  wire [7:0] _GEN_9 = {{1'd0}, _readys_unready_T_23[7:1]}; // @[Arbiter.scala 25:58]
  wire [7:0] readys_unready_4 = _GEN_9 | _readys_unready_T_26; // @[Arbiter.scala 25:58]
  wire [3:0] _readys_readys_T_14 = readys_unready_4[7:4] & readys_unready_4[3:0]; // @[Arbiter.scala 26:39]
  wire [3:0] readys_readys_4 = ~_readys_readys_T_14; // @[Arbiter.scala 26:18]
  wire  readys_4_0 = readys_readys_4[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_4_0 = readys_4_0 & portsBIO_filtered__0_valid; // @[Arbiter.scala 97:79]
  reg  state_4_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_4_0 = idle_4 ? earlyWinner_4_0 : state_4_0; // @[Arbiter.scala 117:30]
  wire  readys_4_1 = readys_readys_4[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_4_1 = readys_4_1 & portsBIO_filtered_1_0_valid; // @[Arbiter.scala 97:79]
  reg  state_4_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_4_1 = idle_4 ? earlyWinner_4_1 : state_4_1; // @[Arbiter.scala 117:30]
  wire  readys_4_2 = readys_readys_4[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_4_2 = readys_4_2 & portsBIO_filtered_2_0_valid; // @[Arbiter.scala 97:79]
  reg  state_4_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_4_2 = idle_4 ? earlyWinner_4_2 : state_4_2; // @[Arbiter.scala 117:30]
  wire  readys_4_3 = readys_readys_4[3]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_4_3 = readys_4_3 & portsBIO_filtered_3_0_valid; // @[Arbiter.scala 97:79]
  reg  state_4_3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_4_3 = idle_4 ? earlyWinner_4_3 : state_4_3; // @[Arbiter.scala 117:30]
  reg  beatsLeft_5; // @[Arbiter.scala 87:30]
  wire  idle_5 = ~beatsLeft_5; // @[Arbiter.scala 88:28]
  wire  requestDOI_3_0 = ~auto_out_3_d_bits_source[5]; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_3_0_valid = auto_out_3_d_valid & requestDOI_3_0; // @[Xbar.scala 179:40]
  wire  requestDOI_2_0 = ~auto_out_2_d_bits_source[5]; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_2_0_valid = auto_out_2_d_valid & requestDOI_2_0; // @[Xbar.scala 179:40]
  wire  requestDOI_1_0 = ~auto_out_1_d_bits_source[5]; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_1_0_valid = auto_out_1_d_valid & requestDOI_1_0; // @[Xbar.scala 179:40]
  wire  requestDOI_0_0 = ~auto_out_0_d_bits_source[5]; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered__0_valid = auto_out_0_d_valid & requestDOI_0_0; // @[Xbar.scala 179:40]
  wire [3:0] readys_valid_5 = {portsDIO_filtered_3_0_valid,portsDIO_filtered_2_0_valid,portsDIO_filtered_1_0_valid,
    portsDIO_filtered__0_valid}; // @[Cat.scala 31:58]
  reg [3:0] readys_mask_5; // @[Arbiter.scala 23:23]
  wire [3:0] _readys_filter_T_10 = ~readys_mask_5; // @[Arbiter.scala 24:30]
  wire [3:0] _readys_filter_T_11 = readys_valid_5 & _readys_filter_T_10; // @[Arbiter.scala 24:28]
  wire [7:0] readys_filter_5 = {_readys_filter_T_11,portsDIO_filtered_3_0_valid,portsDIO_filtered_2_0_valid,
    portsDIO_filtered_1_0_valid,portsDIO_filtered__0_valid}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_10 = {{1'd0}, readys_filter_5[7:1]}; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_28 = readys_filter_5 | _GEN_10; // @[package.scala 253:43]
  wire [7:0] _GEN_11 = {{2'd0}, _readys_unready_T_28[7:2]}; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_30 = _readys_unready_T_28 | _GEN_11; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_33 = {readys_mask_5, 4'h0}; // @[Arbiter.scala 25:66]
  wire [7:0] _GEN_12 = {{1'd0}, _readys_unready_T_30[7:1]}; // @[Arbiter.scala 25:58]
  wire [7:0] readys_unready_5 = _GEN_12 | _readys_unready_T_33; // @[Arbiter.scala 25:58]
  wire [3:0] _readys_readys_T_17 = readys_unready_5[7:4] & readys_unready_5[3:0]; // @[Arbiter.scala 26:39]
  wire [3:0] readys_readys_5 = ~_readys_readys_T_17; // @[Arbiter.scala 26:18]
  wire  readys_5_0 = readys_readys_5[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5_0 = readys_5_0 & portsDIO_filtered__0_valid; // @[Arbiter.scala 97:79]
  reg  state_5_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5_0 = idle_5 ? earlyWinner_5_0 : state_5_0; // @[Arbiter.scala 117:30]
  wire [5:0] _T_391 = muxStateEarly_5_0 ? auto_out_0_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire  readys_5_1 = readys_readys_5[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5_1 = readys_5_1 & portsDIO_filtered_1_0_valid; // @[Arbiter.scala 97:79]
  reg  state_5_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5_1 = idle_5 ? earlyWinner_5_1 : state_5_1; // @[Arbiter.scala 117:30]
  wire [5:0] _T_392 = muxStateEarly_5_1 ? auto_out_1_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_395 = _T_391 | _T_392; // @[Mux.scala 27:73]
  wire  readys_5_2 = readys_readys_5[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5_2 = readys_5_2 & portsDIO_filtered_2_0_valid; // @[Arbiter.scala 97:79]
  reg  state_5_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5_2 = idle_5 ? earlyWinner_5_2 : state_5_2; // @[Arbiter.scala 117:30]
  wire [5:0] _T_393 = muxStateEarly_5_2 ? auto_out_2_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_396 = _T_395 | _T_393; // @[Mux.scala 27:73]
  wire  readys_5_3 = readys_readys_5[3]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5_3 = readys_5_3 & portsDIO_filtered_3_0_valid; // @[Arbiter.scala 97:79]
  reg  state_5_3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5_3 = idle_5 ? earlyWinner_5_3 : state_5_3; // @[Arbiter.scala 117:30]
  wire [5:0] _T_394 = muxStateEarly_5_3 ? auto_out_3_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] sink_ACancel_9_bits_source = _T_396 | _T_394; // @[Mux.scala 27:73]
  wire [5:0] _GEN_13 = {{3'd0}, auto_in_1_a_bits_source}; // @[Xbar.scala 237:55]
  wire [5:0] in_1_a_bits_source = _GEN_13 | 6'h20; // @[Xbar.scala 237:55]
  reg  beatsLeft_6; // @[Arbiter.scala 87:30]
  wire  idle_6 = ~beatsLeft_6; // @[Arbiter.scala 88:28]
  wire  requestDOI_3_1 = auto_out_3_d_bits_source[5:3] == 3'h4; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_3_1_valid = auto_out_3_d_valid & requestDOI_3_1; // @[Xbar.scala 179:40]
  wire  requestDOI_2_1 = auto_out_2_d_bits_source[5:3] == 3'h4; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_2_1_valid = auto_out_2_d_valid & requestDOI_2_1; // @[Xbar.scala 179:40]
  wire  requestDOI_1_1 = auto_out_1_d_bits_source[5:3] == 3'h4; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_1_1_valid = auto_out_1_d_valid & requestDOI_1_1; // @[Xbar.scala 179:40]
  wire  requestDOI_0_1 = auto_out_0_d_bits_source[5:3] == 3'h4; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered__1_valid = auto_out_0_d_valid & requestDOI_0_1; // @[Xbar.scala 179:40]
  wire [3:0] readys_valid_6 = {portsDIO_filtered_3_1_valid,portsDIO_filtered_2_1_valid,portsDIO_filtered_1_1_valid,
    portsDIO_filtered__1_valid}; // @[Cat.scala 31:58]
  reg [3:0] readys_mask_6; // @[Arbiter.scala 23:23]
  wire [3:0] _readys_filter_T_12 = ~readys_mask_6; // @[Arbiter.scala 24:30]
  wire [3:0] _readys_filter_T_13 = readys_valid_6 & _readys_filter_T_12; // @[Arbiter.scala 24:28]
  wire [7:0] readys_filter_6 = {_readys_filter_T_13,portsDIO_filtered_3_1_valid,portsDIO_filtered_2_1_valid,
    portsDIO_filtered_1_1_valid,portsDIO_filtered__1_valid}; // @[Cat.scala 31:58]
  wire [7:0] _GEN_14 = {{1'd0}, readys_filter_6[7:1]}; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_35 = readys_filter_6 | _GEN_14; // @[package.scala 253:43]
  wire [7:0] _GEN_15 = {{2'd0}, _readys_unready_T_35[7:2]}; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_37 = _readys_unready_T_35 | _GEN_15; // @[package.scala 253:43]
  wire [7:0] _readys_unready_T_40 = {readys_mask_6, 4'h0}; // @[Arbiter.scala 25:66]
  wire [7:0] _GEN_16 = {{1'd0}, _readys_unready_T_37[7:1]}; // @[Arbiter.scala 25:58]
  wire [7:0] readys_unready_6 = _GEN_16 | _readys_unready_T_40; // @[Arbiter.scala 25:58]
  wire [3:0] _readys_readys_T_20 = readys_unready_6[7:4] & readys_unready_6[3:0]; // @[Arbiter.scala 26:39]
  wire [3:0] readys_readys_6 = ~_readys_readys_T_20; // @[Arbiter.scala 26:18]
  wire  readys_6_0 = readys_readys_6[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_6_0 = readys_6_0 & portsDIO_filtered__1_valid; // @[Arbiter.scala 97:79]
  reg  state_6_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_6_0 = idle_6 ? earlyWinner_6_0 : state_6_0; // @[Arbiter.scala 117:30]
  wire [5:0] _T_494 = muxStateEarly_6_0 ? auto_out_0_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire  readys_6_1 = readys_readys_6[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_6_1 = readys_6_1 & portsDIO_filtered_1_1_valid; // @[Arbiter.scala 97:79]
  reg  state_6_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_6_1 = idle_6 ? earlyWinner_6_1 : state_6_1; // @[Arbiter.scala 117:30]
  wire [5:0] _T_495 = muxStateEarly_6_1 ? auto_out_1_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_498 = _T_494 | _T_495; // @[Mux.scala 27:73]
  wire  readys_6_2 = readys_readys_6[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_6_2 = readys_6_2 & portsDIO_filtered_2_1_valid; // @[Arbiter.scala 97:79]
  reg  state_6_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_6_2 = idle_6 ? earlyWinner_6_2 : state_6_2; // @[Arbiter.scala 117:30]
  wire [5:0] _T_496 = muxStateEarly_6_2 ? auto_out_2_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_499 = _T_498 | _T_496; // @[Mux.scala 27:73]
  wire  readys_6_3 = readys_readys_6[3]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_6_3 = readys_6_3 & portsDIO_filtered_3_1_valid; // @[Arbiter.scala 97:79]
  reg  state_6_3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_6_3 = idle_6 ? earlyWinner_6_3 : state_6_3; // @[Arbiter.scala 117:30]
  wire [5:0] _T_497 = muxStateEarly_6_3 ? auto_out_3_d_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] sink_ACancel_11_bits_source = _T_499 | _T_497; // @[Mux.scala 27:73]
  wire [5:0] _GEN_17 = {{2'd0}, auto_out_0_d_bits_sink}; // @[Xbar.scala 323:53]
  wire [5:0] out_2_0_d_bits_sink = _GEN_17 | 6'h30; // @[Xbar.scala 323:53]
  wire [5:0] _GEN_18 = {{2'd0}, auto_out_1_d_bits_sink}; // @[Xbar.scala 323:53]
  wire [5:0] out_2_1_d_bits_sink = _GEN_18 | 6'h20; // @[Xbar.scala 323:53]
  wire [4:0] _GEN_19 = {{1'd0}, auto_out_2_d_bits_sink}; // @[Xbar.scala 323:53]
  wire [4:0] _out_2_d_bits_sink_T = _GEN_19 | 5'h10; // @[Xbar.scala 323:53]
  wire [36:0] _requestAIO_T_1 = {1'b0,$signed(auto_in_0_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_3 = $signed(_requestAIO_T_1) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestAIO_0_0 = $signed(_requestAIO_T_3) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_5 = auto_in_0_a_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_6 = {1'b0,$signed(_requestAIO_T_5)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_8 = $signed(_requestAIO_T_6) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestAIO_0_1 = $signed(_requestAIO_T_8) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_10 = auto_in_0_a_bits_address ^ 36'h80; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_11 = {1'b0,$signed(_requestAIO_T_10)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_13 = $signed(_requestAIO_T_11) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestAIO_0_2 = $signed(_requestAIO_T_13) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_15 = auto_in_0_a_bits_address ^ 36'hc0; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_16 = {1'b0,$signed(_requestAIO_T_15)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_18 = $signed(_requestAIO_T_16) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestAIO_0_3 = $signed(_requestAIO_T_18) == 37'sh0; // @[Parameters.scala 137:67]
  wire [36:0] _requestAIO_T_21 = {1'b0,$signed(auto_in_1_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_23 = $signed(_requestAIO_T_21) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestAIO_1_0 = $signed(_requestAIO_T_23) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_25 = auto_in_1_a_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_26 = {1'b0,$signed(_requestAIO_T_25)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_28 = $signed(_requestAIO_T_26) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestAIO_1_1 = $signed(_requestAIO_T_28) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_30 = auto_in_1_a_bits_address ^ 36'h80; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_31 = {1'b0,$signed(_requestAIO_T_30)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_33 = $signed(_requestAIO_T_31) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestAIO_1_2 = $signed(_requestAIO_T_33) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_35 = auto_in_1_a_bits_address ^ 36'hc0; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_36 = {1'b0,$signed(_requestAIO_T_35)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_38 = $signed(_requestAIO_T_36) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestAIO_1_3 = $signed(_requestAIO_T_38) == 37'sh0; // @[Parameters.scala 137:67]
  wire [36:0] _requestCIO_T_1 = {1'b0,$signed(auto_in_0_c_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestCIO_T_3 = $signed(_requestCIO_T_1) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestCIO_0_0 = $signed(_requestCIO_T_3) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestCIO_T_5 = auto_in_0_c_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestCIO_T_6 = {1'b0,$signed(_requestCIO_T_5)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestCIO_T_8 = $signed(_requestCIO_T_6) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestCIO_0_1 = $signed(_requestCIO_T_8) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestCIO_T_10 = auto_in_0_c_bits_address ^ 36'h80; // @[Parameters.scala 137:31]
  wire [36:0] _requestCIO_T_11 = {1'b0,$signed(_requestCIO_T_10)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestCIO_T_13 = $signed(_requestCIO_T_11) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestCIO_0_2 = $signed(_requestCIO_T_13) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestCIO_T_15 = auto_in_0_c_bits_address ^ 36'hc0; // @[Parameters.scala 137:31]
  wire [36:0] _requestCIO_T_16 = {1'b0,$signed(_requestCIO_T_15)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestCIO_T_18 = $signed(_requestCIO_T_16) & 37'shc0; // @[Parameters.scala 137:52]
  wire  requestCIO_0_3 = $signed(_requestCIO_T_18) == 37'sh0; // @[Parameters.scala 137:67]
  wire  requestEIO_0_0 = auto_in_0_e_bits_sink[5:4] == 2'h3; // @[Parameters.scala 54:32]
  wire  requestEIO_0_1 = auto_in_0_e_bits_sink[5:4] == 2'h2; // @[Parameters.scala 54:32]
  wire  requestEIO_0_2 = auto_in_0_e_bits_sink[5:4] == 2'h1; // @[Parameters.scala 54:32]
  wire  requestEIO_0_3 = auto_in_0_e_bits_sink[5:4] == 2'h0; // @[Parameters.scala 54:32]
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
  wire [12:0] _beatsDO_decode_T_9 = 13'h3f << auto_out_2_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsDO_decode_T_11 = ~_beatsDO_decode_T_9[5:0]; // @[package.scala 234:46]
  wire  beatsDO_decode_2 = _beatsDO_decode_T_11[5]; // @[Edges.scala 219:59]
  wire  beatsDO_opdata_2 = auto_out_2_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  beatsDO_2 = beatsDO_opdata_2 & beatsDO_decode_2; // @[Edges.scala 220:14]
  wire [12:0] _beatsDO_decode_T_13 = 13'h3f << auto_out_3_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsDO_decode_T_15 = ~_beatsDO_decode_T_13[5:0]; // @[package.scala 234:46]
  wire  beatsDO_decode_3 = _beatsDO_decode_T_15[5]; // @[Edges.scala 219:59]
  wire  beatsDO_opdata_3 = auto_out_3_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  beatsDO_3 = beatsDO_opdata_3 & beatsDO_decode_3; // @[Edges.scala 220:14]
  wire  portsAOI_filtered__0_earlyValid = auto_in_0_a_valid & requestAIO_0_0; // @[Xbar.scala 428:50]
  wire  portsAOI_filtered__1_earlyValid = auto_in_0_a_valid & requestAIO_0_1; // @[Xbar.scala 428:50]
  wire  portsAOI_filtered__2_earlyValid = auto_in_0_a_valid & requestAIO_0_2; // @[Xbar.scala 428:50]
  wire  portsAOI_filtered__3_earlyValid = auto_in_0_a_valid & requestAIO_0_3; // @[Xbar.scala 428:50]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  portsAOI_filtered_1_0_earlyValid = auto_in_1_a_valid & requestAIO_1_0; // @[Xbar.scala 428:50]
  wire [1:0] readys_valid = {portsAOI_filtered_1_0_earlyValid,portsAOI_filtered__0_earlyValid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter = {_readys_filter_T_1,portsAOI_filtered_1_0_earlyValid,portsAOI_filtered__0_earlyValid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_20 = {{1'd0}, readys_filter[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_1 = readys_filter | _GEN_20; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_4 = {readys_mask, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_21 = {{1'd0}, _readys_unready_T_1[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready = _GEN_21 | _readys_unready_T_4; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_2 = readys_unready[3:2] & readys_unready[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire  readys__0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  reg  state__0; // @[Arbiter.scala 116:26]
  wire  allowed__0 = idle ? readys__0 : state__0; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered__0_ready = auto_out_0_a_ready & allowed__0; // @[Arbiter.scala 123:31]
  reg  beatsLeft_1; // @[Arbiter.scala 87:30]
  wire  idle_1 = ~beatsLeft_1; // @[Arbiter.scala 88:28]
  wire  portsAOI_filtered_1_1_earlyValid = auto_in_1_a_valid & requestAIO_1_1; // @[Xbar.scala 428:50]
  wire [1:0] readys_valid_1 = {portsAOI_filtered_1_1_earlyValid,portsAOI_filtered__1_earlyValid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_1; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_2 = ~readys_mask_1; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_3 = readys_valid_1 & _readys_filter_T_2; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_1 = {_readys_filter_T_3,portsAOI_filtered_1_1_earlyValid,portsAOI_filtered__1_earlyValid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_22 = {{1'd0}, readys_filter_1[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_6 = readys_filter_1 | _GEN_22; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_9 = {readys_mask_1, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_23 = {{1'd0}, _readys_unready_T_6[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_1 = _GEN_23 | _readys_unready_T_9; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_5 = readys_unready_1[3:2] & readys_unready_1[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_1 = ~_readys_readys_T_5; // @[Arbiter.scala 26:18]
  wire  readys_1_0 = readys_readys_1[0]; // @[Arbiter.scala 95:86]
  reg  state_1_0; // @[Arbiter.scala 116:26]
  wire  allowed_1_0 = idle_1 ? readys_1_0 : state_1_0; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered__1_ready = auto_out_1_a_ready & allowed_1_0; // @[Arbiter.scala 123:31]
  reg  beatsLeft_2; // @[Arbiter.scala 87:30]
  wire  idle_2 = ~beatsLeft_2; // @[Arbiter.scala 88:28]
  wire  portsAOI_filtered_1_2_earlyValid = auto_in_1_a_valid & requestAIO_1_2; // @[Xbar.scala 428:50]
  wire [1:0] readys_valid_2 = {portsAOI_filtered_1_2_earlyValid,portsAOI_filtered__2_earlyValid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_2; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_4 = ~readys_mask_2; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_5 = readys_valid_2 & _readys_filter_T_4; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_2 = {_readys_filter_T_5,portsAOI_filtered_1_2_earlyValid,portsAOI_filtered__2_earlyValid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_24 = {{1'd0}, readys_filter_2[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_11 = readys_filter_2 | _GEN_24; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_14 = {readys_mask_2, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_25 = {{1'd0}, _readys_unready_T_11[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_2 = _GEN_25 | _readys_unready_T_14; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_8 = readys_unready_2[3:2] & readys_unready_2[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_2 = ~_readys_readys_T_8; // @[Arbiter.scala 26:18]
  wire  readys_2_0 = readys_readys_2[0]; // @[Arbiter.scala 95:86]
  reg  state_2_0; // @[Arbiter.scala 116:26]
  wire  allowed_2_0 = idle_2 ? readys_2_0 : state_2_0; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered__2_ready = auto_out_2_a_ready & allowed_2_0; // @[Arbiter.scala 123:31]
  reg  beatsLeft_3; // @[Arbiter.scala 87:30]
  wire  idle_3 = ~beatsLeft_3; // @[Arbiter.scala 88:28]
  wire  portsAOI_filtered_1_3_earlyValid = auto_in_1_a_valid & requestAIO_1_3; // @[Xbar.scala 428:50]
  wire [1:0] readys_valid_3 = {portsAOI_filtered_1_3_earlyValid,portsAOI_filtered__3_earlyValid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_3; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_6 = ~readys_mask_3; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_7 = readys_valid_3 & _readys_filter_T_6; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_3 = {_readys_filter_T_7,portsAOI_filtered_1_3_earlyValid,portsAOI_filtered__3_earlyValid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_26 = {{1'd0}, readys_filter_3[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_16 = readys_filter_3 | _GEN_26; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_19 = {readys_mask_3, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_27 = {{1'd0}, _readys_unready_T_16[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_3 = _GEN_27 | _readys_unready_T_19; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_11 = readys_unready_3[3:2] & readys_unready_3[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_3 = ~_readys_readys_T_11; // @[Arbiter.scala 26:18]
  wire  readys_3_0 = readys_readys_3[0]; // @[Arbiter.scala 95:86]
  reg  state_3_0; // @[Arbiter.scala 116:26]
  wire  allowed_3_0 = idle_3 ? readys_3_0 : state_3_0; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered__3_ready = auto_out_3_a_ready & allowed_3_0; // @[Arbiter.scala 123:31]
  wire  readys__1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  reg  state__1; // @[Arbiter.scala 116:26]
  wire  allowed__1 = idle ? readys__1 : state__1; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_1_0_ready = auto_out_0_a_ready & allowed__1; // @[Arbiter.scala 123:31]
  wire  readys_1_1 = readys_readys_1[1]; // @[Arbiter.scala 95:86]
  reg  state_1_1; // @[Arbiter.scala 116:26]
  wire  allowed_1_1 = idle_1 ? readys_1_1 : state_1_1; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_1_1_ready = auto_out_1_a_ready & allowed_1_1; // @[Arbiter.scala 123:31]
  wire  readys_2_1 = readys_readys_2[1]; // @[Arbiter.scala 95:86]
  reg  state_2_1; // @[Arbiter.scala 116:26]
  wire  allowed_2_1 = idle_2 ? readys_2_1 : state_2_1; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_1_2_ready = auto_out_2_a_ready & allowed_2_1; // @[Arbiter.scala 123:31]
  wire  readys_3_1 = readys_readys_3[1]; // @[Arbiter.scala 95:86]
  reg  state_3_1; // @[Arbiter.scala 116:26]
  wire  allowed_3_1 = idle_3 ? readys_3_1 : state_3_1; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_1_3_ready = auto_out_3_a_ready & allowed_3_1; // @[Arbiter.scala 123:31]
  wire  allowed_4_0 = idle_4 ? readys_4_0 : state_4_0; // @[Arbiter.scala 121:24]
  wire  out_19_ready = auto_in_0_bready & allowed_4_0; // @[Arbiter.scala 123:31]
  wire  allowed_4_1 = idle_4 ? readys_4_1 : state_4_1; // @[Arbiter.scala 121:24]
  wire  out_20_ready = auto_in_0_bready & allowed_4_1; // @[Arbiter.scala 123:31]
  wire  allowed_4_2 = idle_4 ? readys_4_2 : state_4_2; // @[Arbiter.scala 121:24]
  wire  out_21_ready = auto_in_0_bready & allowed_4_2; // @[Arbiter.scala 123:31]
  wire  allowed_4_3 = idle_4 ? readys_4_3 : state_4_3; // @[Arbiter.scala 121:24]
  wire  out_22_ready = auto_in_0_bready & allowed_4_3; // @[Arbiter.scala 123:31]
  wire  allowed_5_0 = idle_5 ? readys_5_0 : state_5_0; // @[Arbiter.scala 121:24]
  wire  out_24_ready = auto_in_0_d_ready & allowed_5_0; // @[Arbiter.scala 123:31]
  wire  allowed_6_0 = idle_6 ? readys_6_0 : state_6_0; // @[Arbiter.scala 121:24]
  wire  out_30_ready = auto_in_1_d_ready & allowed_6_0; // @[Arbiter.scala 123:31]
  wire  allowed_5_1 = idle_5 ? readys_5_1 : state_5_1; // @[Arbiter.scala 121:24]
  wire  out_25_ready = auto_in_0_d_ready & allowed_5_1; // @[Arbiter.scala 123:31]
  wire  allowed_6_1 = idle_6 ? readys_6_1 : state_6_1; // @[Arbiter.scala 121:24]
  wire  out_31_ready = auto_in_1_d_ready & allowed_6_1; // @[Arbiter.scala 123:31]
  wire  allowed_5_2 = idle_5 ? readys_5_2 : state_5_2; // @[Arbiter.scala 121:24]
  wire  out_26_ready = auto_in_0_d_ready & allowed_5_2; // @[Arbiter.scala 123:31]
  wire  allowed_6_2 = idle_6 ? readys_6_2 : state_6_2; // @[Arbiter.scala 121:24]
  wire  out_32_ready = auto_in_1_d_ready & allowed_6_2; // @[Arbiter.scala 123:31]
  wire  allowed_5_3 = idle_5 ? readys_5_3 : state_5_3; // @[Arbiter.scala 121:24]
  wire  out_27_ready = auto_in_0_d_ready & allowed_5_3; // @[Arbiter.scala 123:31]
  wire  allowed_6_3 = idle_6 ? readys_6_3 : state_6_3; // @[Arbiter.scala 121:24]
  wire  out_33_ready = auto_in_1_d_ready & allowed_6_3; // @[Arbiter.scala 123:31]
  wire  latch = idle & auto_out_0_a_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[1:0]; // @[package.scala 244:43]
  wire  earlyWinner__0 = readys__0 & portsAOI_filtered__0_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__1 = readys__1 & portsAOI_filtered_1_0_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_14 = portsAOI_filtered__0_earlyValid | portsAOI_filtered_1_0_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner__0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner__1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly__0 = idle ? earlyWinner__0 : state__0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly__1 = idle ? earlyWinner__1 : state__1; // @[Arbiter.scala 117:30]
  wire  _out_0_a_earlyValid_T_3 = state__0 & portsAOI_filtered__0_earlyValid | state__1 &
    portsAOI_filtered_1_0_earlyValid; // @[Mux.scala 27:73]
  wire  out_2_0_a_earlyValid = idle ? _T_14 : _out_0_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_out_0_a_ready & out_2_0_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_31 = muxStateEarly__0 ? auto_in_0_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_32 = muxStateEarly__1 ? auto_in_1_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_34 = muxStateEarly__0 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_35 = muxStateEarly__1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_43 = muxStateEarly__0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_44 = muxStateEarly__1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [5:0] in_0_a_bits_source = {{1'd0}, auto_in_0_a_bits_source}; // @[Xbar.scala 231:18 237:29]
  wire [5:0] _T_46 = muxStateEarly__0 ? in_0_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_47 = muxStateEarly__1 ? in_1_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_49 = muxStateEarly__0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_50 = muxStateEarly__1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_52 = muxStateEarly__0 ? auto_in_0_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_53 = muxStateEarly__1 ? auto_in_1_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_55 = muxStateEarly__0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_56 = muxStateEarly__1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_1 = idle_1 & auto_out_1_a_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_5 = readys_readys_1 & readys_valid_1; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_6 = {_readys_mask_T_5, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_8 = _readys_mask_T_5 | _readys_mask_T_6[1:0]; // @[package.scala 244:43]
  wire  earlyWinner_1_0 = readys_1_0 & portsAOI_filtered__1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_1 = readys_1_1 & portsAOI_filtered_1_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_68 = portsAOI_filtered__1_earlyValid | portsAOI_filtered_1_1_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_1 = earlyWinner_1_0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_1 = earlyWinner_1_1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  initBeats_1 = maskedBeats_0_1 | maskedBeats_1_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_1_0 = idle_1 ? earlyWinner_1_0 : state_1_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_1_1 = idle_1 ? earlyWinner_1_1 : state_1_1; // @[Arbiter.scala 117:30]
  wire  _out_1_a_earlyValid_T_3 = state_1_0 & portsAOI_filtered__1_earlyValid | state_1_1 &
    portsAOI_filtered_1_1_earlyValid; // @[Mux.scala 27:73]
  wire  out_2_1_a_earlyValid = idle_1 ? _T_68 : _out_1_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_8 = auto_out_1_a_ready & out_2_1_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_85 = muxStateEarly_1_0 ? auto_in_0_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_86 = muxStateEarly_1_1 ? auto_in_1_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_88 = muxStateEarly_1_0 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_89 = muxStateEarly_1_1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_97 = muxStateEarly_1_0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_98 = muxStateEarly_1_1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_100 = muxStateEarly_1_0 ? in_0_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_101 = muxStateEarly_1_1 ? in_1_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_103 = muxStateEarly_1_0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_104 = muxStateEarly_1_1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_106 = muxStateEarly_1_0 ? auto_in_0_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_107 = muxStateEarly_1_1 ? auto_in_1_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_109 = muxStateEarly_1_0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_110 = muxStateEarly_1_1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_2 = idle_2 & auto_out_2_a_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_10 = readys_readys_2 & readys_valid_2; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_11 = {_readys_mask_T_10, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_13 = _readys_mask_T_10 | _readys_mask_T_11[1:0]; // @[package.scala 244:43]
  wire  earlyWinner_2_0 = readys_2_0 & portsAOI_filtered__2_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_2_1 = readys_2_1 & portsAOI_filtered_1_2_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_122 = portsAOI_filtered__2_earlyValid | portsAOI_filtered_1_2_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_2 = earlyWinner_2_0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_2 = earlyWinner_2_1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  initBeats_2 = maskedBeats_0_2 | maskedBeats_1_2; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_2_0 = idle_2 ? earlyWinner_2_0 : state_2_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_2_1 = idle_2 ? earlyWinner_2_1 : state_2_1; // @[Arbiter.scala 117:30]
  wire  _out_2_a_earlyValid_T_3 = state_2_0 & portsAOI_filtered__2_earlyValid | state_2_1 &
    portsAOI_filtered_1_2_earlyValid; // @[Mux.scala 27:73]
  wire  out_2_2_a_earlyValid = idle_2 ? _T_122 : _out_2_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_14 = auto_out_2_a_ready & out_2_2_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_139 = muxStateEarly_2_0 ? auto_in_0_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_140 = muxStateEarly_2_1 ? auto_in_1_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_142 = muxStateEarly_2_0 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_143 = muxStateEarly_2_1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_151 = muxStateEarly_2_0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_152 = muxStateEarly_2_1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_154 = muxStateEarly_2_0 ? in_0_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_155 = muxStateEarly_2_1 ? in_1_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_157 = muxStateEarly_2_0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_158 = muxStateEarly_2_1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_160 = muxStateEarly_2_0 ? auto_in_0_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_161 = muxStateEarly_2_1 ? auto_in_1_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_163 = muxStateEarly_2_0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_164 = muxStateEarly_2_1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_3 = idle_3 & auto_out_3_a_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_15 = readys_readys_3 & readys_valid_3; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_16 = {_readys_mask_T_15, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_18 = _readys_mask_T_15 | _readys_mask_T_16[1:0]; // @[package.scala 244:43]
  wire  earlyWinner_3_0 = readys_3_0 & portsAOI_filtered__3_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_3_1 = readys_3_1 & portsAOI_filtered_1_3_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_176 = portsAOI_filtered__3_earlyValid | portsAOI_filtered_1_3_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_3 = earlyWinner_3_0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_3 = earlyWinner_3_1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  initBeats_3 = maskedBeats_0_3 | maskedBeats_1_3; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_3_0 = idle_3 ? earlyWinner_3_0 : state_3_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_3_1 = idle_3 ? earlyWinner_3_1 : state_3_1; // @[Arbiter.scala 117:30]
  wire  _out_3_a_earlyValid_T_3 = state_3_0 & portsAOI_filtered__3_earlyValid | state_3_1 &
    portsAOI_filtered_1_3_earlyValid; // @[Mux.scala 27:73]
  wire  out_2_3_a_earlyValid = idle_3 ? _T_176 : _out_3_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_20 = auto_out_3_a_ready & out_2_3_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_193 = muxStateEarly_3_0 ? auto_in_0_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_194 = muxStateEarly_3_1 ? auto_in_1_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_196 = muxStateEarly_3_0 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_197 = muxStateEarly_3_1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_205 = muxStateEarly_3_0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_206 = muxStateEarly_3_1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_208 = muxStateEarly_3_0 ? in_0_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_209 = muxStateEarly_3_1 ? in_1_a_bits_source : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_211 = muxStateEarly_3_0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_212 = muxStateEarly_3_1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_214 = muxStateEarly_3_0 ? auto_in_0_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_215 = muxStateEarly_3_1 ? auto_in_1_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_217 = muxStateEarly_3_0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_218 = muxStateEarly_3_1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_4 = idle_4 & auto_in_0_bready; // @[Arbiter.scala 89:24]
  wire [3:0] _readys_mask_T_20 = readys_readys_4 & readys_valid_4; // @[Arbiter.scala 28:29]
  wire [4:0] _readys_mask_T_21 = {_readys_mask_T_20, 1'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_mask_T_23 = _readys_mask_T_20 | _readys_mask_T_21[3:0]; // @[package.scala 244:43]
  wire [5:0] _readys_mask_T_24 = {_readys_mask_T_23, 2'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_mask_T_26 = _readys_mask_T_23 | _readys_mask_T_24[3:0]; // @[package.scala 244:43]
  wire  _T_240 = portsBIO_filtered__0_valid | portsBIO_filtered_1_0_valid | portsBIO_filtered_2_0_valid |
    portsBIO_filtered_3_0_valid; // @[Arbiter.scala 107:36]
  wire  _sink_ACancel_earlyValid_T_9 = state_4_0 & portsBIO_filtered__0_valid | state_4_1 & portsBIO_filtered_1_0_valid
     | state_4_2 & portsBIO_filtered_2_0_valid | state_4_3 & portsBIO_filtered_3_0_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_8_earlyValid = idle_4 ? _T_240 : _sink_ACancel_earlyValid_T_9; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_26 = auto_in_0_bready & sink_ACancel_8_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_267 = muxStateEarly_4_0 ? auto_out_0_bdata : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_268 = muxStateEarly_4_1 ? auto_out_1_bdata : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_269 = muxStateEarly_4_2 ? auto_out_2_bdata : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_270 = muxStateEarly_4_3 ? auto_out_3_bdata : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_271 = _T_267 | _T_268; // @[Mux.scala 27:73]
  wire [255:0] _T_272 = _T_271 | _T_269; // @[Mux.scala 27:73]
  wire [35:0] _T_281 = muxStateEarly_4_0 ? auto_out_0_baddress : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_282 = muxStateEarly_4_1 ? auto_out_1_baddress : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_283 = muxStateEarly_4_2 ? auto_out_2_baddress : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_284 = muxStateEarly_4_3 ? auto_out_3_baddress : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_285 = _T_281 | _T_282; // @[Mux.scala 27:73]
  wire [35:0] _T_286 = _T_285 | _T_283; // @[Mux.scala 27:73]
  wire [2:0] _T_295 = muxStateEarly_4_0 ? auto_out_0_bsize : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_296 = muxStateEarly_4_1 ? auto_out_1_bsize : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_297 = muxStateEarly_4_2 ? auto_out_2_bsize : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_298 = muxStateEarly_4_3 ? auto_out_3_bsize : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_299 = _T_295 | _T_296; // @[Mux.scala 27:73]
  wire [2:0] _T_300 = _T_299 | _T_297; // @[Mux.scala 27:73]
  wire [1:0] _T_302 = muxStateEarly_4_0 ? auto_out_0_bparam : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_303 = muxStateEarly_4_1 ? auto_out_1_bparam : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_304 = muxStateEarly_4_2 ? auto_out_2_bparam : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_305 = muxStateEarly_4_3 ? auto_out_3_bparam : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_306 = _T_302 | _T_303; // @[Mux.scala 27:73]
  wire [1:0] _T_307 = _T_306 | _T_304; // @[Mux.scala 27:73]
  wire [2:0] _T_309 = muxStateEarly_4_0 ? auto_out_0_bopcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_310 = muxStateEarly_4_1 ? auto_out_1_bopcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_311 = muxStateEarly_4_2 ? auto_out_2_bopcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_312 = muxStateEarly_4_3 ? auto_out_3_bopcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_313 = _T_309 | _T_310; // @[Mux.scala 27:73]
  wire [2:0] _T_314 = _T_313 | _T_311; // @[Mux.scala 27:73]
  wire  latch_5 = idle_5 & auto_in_0_d_ready; // @[Arbiter.scala 89:24]
  wire [3:0] _readys_mask_T_28 = readys_readys_5 & readys_valid_5; // @[Arbiter.scala 28:29]
  wire [4:0] _readys_mask_T_29 = {_readys_mask_T_28, 1'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_mask_T_31 = _readys_mask_T_28 | _readys_mask_T_29[3:0]; // @[package.scala 244:43]
  wire [5:0] _readys_mask_T_32 = {_readys_mask_T_31, 2'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_mask_T_34 = _readys_mask_T_31 | _readys_mask_T_32[3:0]; // @[package.scala 244:43]
  wire  _T_336 = portsDIO_filtered__0_valid | portsDIO_filtered_1_0_valid | portsDIO_filtered_2_0_valid |
    portsDIO_filtered_3_0_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_5 = earlyWinner_5_0 & beatsDO_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_5 = earlyWinner_5_1 & beatsDO_1; // @[Arbiter.scala 111:73]
  wire  maskedBeats_2_1 = earlyWinner_5_2 & beatsDO_2; // @[Arbiter.scala 111:73]
  wire  maskedBeats_3_1 = earlyWinner_5_3 & beatsDO_3; // @[Arbiter.scala 111:73]
  wire  initBeats_5 = maskedBeats_0_5 | maskedBeats_1_5 | maskedBeats_2_1 | maskedBeats_3_1; // @[Arbiter.scala 112:44]
  wire  _sink_ACancel_earlyValid_T_20 = state_5_0 & portsDIO_filtered__0_valid | state_5_1 & portsDIO_filtered_1_0_valid
     | state_5_2 & portsDIO_filtered_2_0_valid | state_5_3 & portsDIO_filtered_3_0_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_9_earlyValid = idle_5 ? _T_336 : _sink_ACancel_earlyValid_T_20; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_32 = auto_in_0_d_ready & sink_ACancel_9_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_363 = muxStateEarly_5_0 ? auto_out_0_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_364 = muxStateEarly_5_1 ? auto_out_1_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_365 = muxStateEarly_5_2 ? auto_out_2_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_366 = muxStateEarly_5_3 ? auto_out_3_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_367 = _T_363 | _T_364; // @[Mux.scala 27:73]
  wire [255:0] _T_368 = _T_367 | _T_365; // @[Mux.scala 27:73]
  wire [5:0] _T_384 = muxStateEarly_5_0 ? out_2_0_d_bits_sink : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_385 = muxStateEarly_5_1 ? out_2_1_d_bits_sink : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] out_2_2_d_bits_sink = {{1'd0}, _out_2_d_bits_sink_T}; // @[Xbar.scala 288:19 323:28]
  wire [5:0] _T_386 = muxStateEarly_5_2 ? out_2_2_d_bits_sink : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] out_2_3_d_bits_sink = {{2'd0}, auto_out_3_d_bits_sink}; // @[Xbar.scala 288:19 323:28]
  wire [5:0] _T_387 = muxStateEarly_5_3 ? out_2_3_d_bits_sink : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _T_388 = _T_384 | _T_385; // @[Mux.scala 27:73]
  wire [5:0] _T_389 = _T_388 | _T_386; // @[Mux.scala 27:73]
  wire [2:0] _T_398 = muxStateEarly_5_0 ? auto_out_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_399 = muxStateEarly_5_1 ? auto_out_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_400 = muxStateEarly_5_2 ? auto_out_2_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_401 = muxStateEarly_5_3 ? auto_out_3_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_402 = _T_398 | _T_399; // @[Mux.scala 27:73]
  wire [2:0] _T_403 = _T_402 | _T_400; // @[Mux.scala 27:73]
  wire [1:0] _T_405 = muxStateEarly_5_0 ? auto_out_0_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_406 = muxStateEarly_5_1 ? auto_out_1_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_407 = muxStateEarly_5_2 ? auto_out_2_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_408 = muxStateEarly_5_3 ? auto_out_3_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_409 = _T_405 | _T_406; // @[Mux.scala 27:73]
  wire [1:0] _T_410 = _T_409 | _T_407; // @[Mux.scala 27:73]
  wire [2:0] _T_412 = muxStateEarly_5_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_413 = muxStateEarly_5_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_414 = muxStateEarly_5_2 ? auto_out_2_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_415 = muxStateEarly_5_3 ? auto_out_3_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_416 = _T_412 | _T_413; // @[Mux.scala 27:73]
  wire [2:0] _T_417 = _T_416 | _T_414; // @[Mux.scala 27:73]
  wire  latch_6 = idle_6 & auto_in_1_d_ready; // @[Arbiter.scala 89:24]
  wire [3:0] _readys_mask_T_36 = readys_readys_6 & readys_valid_6; // @[Arbiter.scala 28:29]
  wire [4:0] _readys_mask_T_37 = {_readys_mask_T_36, 1'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_mask_T_39 = _readys_mask_T_36 | _readys_mask_T_37[3:0]; // @[package.scala 244:43]
  wire [5:0] _readys_mask_T_40 = {_readys_mask_T_39, 2'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_mask_T_42 = _readys_mask_T_39 | _readys_mask_T_40[3:0]; // @[package.scala 244:43]
  wire  _T_439 = portsDIO_filtered__1_valid | portsDIO_filtered_1_1_valid | portsDIO_filtered_2_1_valid |
    portsDIO_filtered_3_1_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_6 = earlyWinner_6_0 & beatsDO_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_6 = earlyWinner_6_1 & beatsDO_1; // @[Arbiter.scala 111:73]
  wire  maskedBeats_2_2 = earlyWinner_6_2 & beatsDO_2; // @[Arbiter.scala 111:73]
  wire  maskedBeats_3_2 = earlyWinner_6_3 & beatsDO_3; // @[Arbiter.scala 111:73]
  wire  initBeats_6 = maskedBeats_0_6 | maskedBeats_1_6 | maskedBeats_2_2 | maskedBeats_3_2; // @[Arbiter.scala 112:44]
  wire  _sink_ACancel_earlyValid_T_31 = state_6_0 & portsDIO_filtered__1_valid | state_6_1 & portsDIO_filtered_1_1_valid
     | state_6_2 & portsDIO_filtered_2_1_valid | state_6_3 & portsDIO_filtered_3_1_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_11_earlyValid = idle_6 ? _T_439 : _sink_ACancel_earlyValid_T_31; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_38 = auto_in_1_d_ready & sink_ACancel_11_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_466 = muxStateEarly_6_0 ? auto_out_0_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_467 = muxStateEarly_6_1 ? auto_out_1_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_468 = muxStateEarly_6_2 ? auto_out_2_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_469 = muxStateEarly_6_3 ? auto_out_3_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_470 = _T_466 | _T_467; // @[Mux.scala 27:73]
  wire [255:0] _T_471 = _T_470 | _T_468; // @[Mux.scala 27:73]
  wire [2:0] _T_501 = muxStateEarly_6_0 ? auto_out_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_502 = muxStateEarly_6_1 ? auto_out_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_503 = muxStateEarly_6_2 ? auto_out_2_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_504 = muxStateEarly_6_3 ? auto_out_3_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_505 = _T_501 | _T_502; // @[Mux.scala 27:73]
  wire [2:0] _T_506 = _T_505 | _T_503; // @[Mux.scala 27:73]
  wire [2:0] _T_515 = muxStateEarly_6_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_516 = muxStateEarly_6_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_517 = muxStateEarly_6_2 ? auto_out_2_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_518 = muxStateEarly_6_3 ? auto_out_3_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_519 = _T_515 | _T_516; // @[Mux.scala 27:73]
  wire [2:0] _T_520 = _T_519 | _T_517; // @[Mux.scala 27:73]
  assign auto_in_1_a_ready = requestAIO_1_0 & portsAOI_filtered_1_0_ready | requestAIO_1_1 & portsAOI_filtered_1_1_ready
     | requestAIO_1_2 & portsAOI_filtered_1_2_ready | requestAIO_1_3 & portsAOI_filtered_1_3_ready; // @[Mux.scala 27:73]
  assign auto_in_1_d_valid = idle_6 ? _T_439 : _sink_ACancel_earlyValid_T_31; // @[Arbiter.scala 125:29]
  assign auto_in_1_d_bits_opcode = _T_520 | _T_518; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_size = _T_506 | _T_504; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_source = sink_ACancel_11_bits_source[2:0]; // @[Xbar.scala 228:69]
  assign auto_in_1_d_bits_denied = muxStateEarly_6_0 & auto_out_0_d_bits_denied | muxStateEarly_6_1 &
    auto_out_1_d_bits_denied | muxStateEarly_6_2 & auto_out_2_d_bits_denied | muxStateEarly_6_3 &
    auto_out_3_d_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_data = _T_471 | _T_469; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_corrupt = muxStateEarly_6_0 & auto_out_0_d_bits_corrupt | muxStateEarly_6_1 &
    auto_out_1_d_bits_corrupt | muxStateEarly_6_2 & auto_out_2_d_bits_corrupt | muxStateEarly_6_3 &
    auto_out_3_d_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_in_0_a_ready = requestAIO_0_0 & portsAOI_filtered__0_ready | requestAIO_0_1 & portsAOI_filtered__1_ready
     | requestAIO_0_2 & portsAOI_filtered__2_ready | requestAIO_0_3 & portsAOI_filtered__3_ready; // @[Mux.scala 27:73]
  assign auto_in_0_bvalid = idle_4 ? _T_240 : _sink_ACancel_earlyValid_T_9; // @[Arbiter.scala 125:29]
  assign auto_in_0_bopcode = _T_314 | _T_312; // @[Mux.scala 27:73]
  assign auto_in_0_bparam = _T_307 | _T_305; // @[Mux.scala 27:73]
  assign auto_in_0_bsize = _T_300 | _T_298; // @[Mux.scala 27:73]
  assign auto_in_0_baddress = _T_286 | _T_284; // @[Mux.scala 27:73]
  assign auto_in_0_bdata = _T_272 | _T_270; // @[Mux.scala 27:73]
  assign auto_in_0_c_ready = requestCIO_0_0 & auto_out_0_c_ready | requestCIO_0_1 & auto_out_1_c_ready | requestCIO_0_2
     & auto_out_2_c_ready | requestCIO_0_3 & auto_out_3_c_ready; // @[Mux.scala 27:73]
  assign auto_in_0_d_valid = idle_5 ? _T_336 : _sink_ACancel_earlyValid_T_20; // @[Arbiter.scala 125:29]
  assign auto_in_0_d_bits_opcode = _T_417 | _T_415; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_param = _T_410 | _T_408; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_size = _T_403 | _T_401; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_source = sink_ACancel_9_bits_source[4:0]; // @[Xbar.scala 228:69]
  assign auto_in_0_d_bits_sink = _T_389 | _T_387; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_denied = muxStateEarly_5_0 & auto_out_0_d_bits_denied | muxStateEarly_5_1 &
    auto_out_1_d_bits_denied | muxStateEarly_5_2 & auto_out_2_d_bits_denied | muxStateEarly_5_3 &
    auto_out_3_d_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_echo_blockisdirty = muxStateEarly_5_0 & auto_out_0_d_bits_echo_blockisdirty |
    muxStateEarly_5_1 & auto_out_1_d_bits_echo_blockisdirty | muxStateEarly_5_2 & auto_out_2_d_bits_echo_blockisdirty |
    muxStateEarly_5_3 & auto_out_3_d_bits_echo_blockisdirty; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_data = _T_368 | _T_366; // @[Mux.scala 27:73]
  assign auto_in_0_e_ready = requestEIO_0_0 & auto_out_0_e_ready | requestEIO_0_1 & auto_out_1_e_ready | requestEIO_0_2
     & auto_out_2_e_ready | requestEIO_0_3 & auto_out_3_e_ready; // @[Mux.scala 27:73]
  assign auto_out_3_a_valid = idle_3 ? _T_176 : _out_3_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_3_a_bits_opcode = _T_217 | _T_218; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_param = _T_214 | _T_215; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_size = _T_211 | _T_212; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_source = _T_208 | _T_209; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_address = _T_205 | _T_206; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_user_preferCache = muxStateEarly_3_0 & auto_in_0_a_bits_user_preferCache; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_mask = _T_196 | _T_197; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_data = _T_193 | _T_194; // @[Mux.scala 27:73]
  assign auto_out_3_a_bits_corrupt = muxStateEarly_3_0 & auto_in_0_a_bits_corrupt | muxStateEarly_3_1 &
    auto_in_1_a_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_out_3_bready = requestBOI_3_0 & out_22_ready; // @[Mux.scala 27:73]
  assign auto_out_3_c_valid = auto_in_0_c_valid & requestCIO_0_3; // @[Xbar.scala 179:40]
  assign auto_out_3_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_c_bits_source = {{1'd0}, auto_in_0_c_bits_source}; // @[Xbar.scala 231:18 259:29]
  assign auto_out_3_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_c_bits_echo_blockisdirty = auto_in_0_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_c_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_d_ready = requestDOI_3_0 & out_27_ready | requestDOI_3_1 & out_33_ready; // @[Mux.scala 27:73]
  assign auto_out_3_e_valid = auto_in_0_e_valid & requestEIO_0_3; // @[Xbar.scala 179:40]
  assign auto_out_3_e_bits_sink = auto_in_0_e_bits_sink[3:0]; // @[Xbar.scala 228:69]
  assign auto_out_2_a_valid = idle_2 ? _T_122 : _out_2_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_2_a_bits_opcode = _T_163 | _T_164; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_param = _T_160 | _T_161; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_size = _T_157 | _T_158; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_source = _T_154 | _T_155; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_address = _T_151 | _T_152; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_user_preferCache = muxStateEarly_2_0 & auto_in_0_a_bits_user_preferCache; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_mask = _T_142 | _T_143; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_data = _T_139 | _T_140; // @[Mux.scala 27:73]
  assign auto_out_2_a_bits_corrupt = muxStateEarly_2_0 & auto_in_0_a_bits_corrupt | muxStateEarly_2_1 &
    auto_in_1_a_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_out_2_bready = requestBOI_2_0 & out_21_ready; // @[Mux.scala 27:73]
  assign auto_out_2_c_valid = auto_in_0_c_valid & requestCIO_0_2; // @[Xbar.scala 179:40]
  assign auto_out_2_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_c_bits_source = {{1'd0}, auto_in_0_c_bits_source}; // @[Xbar.scala 231:18 259:29]
  assign auto_out_2_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_c_bits_echo_blockisdirty = auto_in_0_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_c_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_d_ready = requestDOI_2_0 & out_26_ready | requestDOI_2_1 & out_32_ready; // @[Mux.scala 27:73]
  assign auto_out_2_e_valid = auto_in_0_e_valid & requestEIO_0_2; // @[Xbar.scala 179:40]
  assign auto_out_2_e_bits_sink = auto_in_0_e_bits_sink[3:0]; // @[Xbar.scala 228:69]
  assign auto_out_1_a_valid = idle_1 ? _T_68 : _out_1_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_1_a_bits_opcode = _T_109 | _T_110; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_param = _T_106 | _T_107; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_size = _T_103 | _T_104; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_source = _T_100 | _T_101; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_address = _T_97 | _T_98; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_user_preferCache = muxStateEarly_1_0 & auto_in_0_a_bits_user_preferCache; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_mask = _T_88 | _T_89; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_data = _T_85 | _T_86; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_corrupt = muxStateEarly_1_0 & auto_in_0_a_bits_corrupt | muxStateEarly_1_1 &
    auto_in_1_a_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_out_1_bready = requestBOI_1_0 & out_20_ready; // @[Mux.scala 27:73]
  assign auto_out_1_c_valid = auto_in_0_c_valid & requestCIO_0_1; // @[Xbar.scala 179:40]
  assign auto_out_1_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_source = {{1'd0}, auto_in_0_c_bits_source}; // @[Xbar.scala 231:18 259:29]
  assign auto_out_1_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_echo_blockisdirty = auto_in_0_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_d_ready = requestDOI_1_0 & out_25_ready | requestDOI_1_1 & out_31_ready; // @[Mux.scala 27:73]
  assign auto_out_1_e_valid = auto_in_0_e_valid & requestEIO_0_1; // @[Xbar.scala 179:40]
  assign auto_out_1_e_bits_sink = auto_in_0_e_bits_sink[3:0]; // @[Xbar.scala 228:69]
  assign auto_out_0_a_valid = idle ? _T_14 : _out_0_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_0_a_bits_opcode = _T_55 | _T_56; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_param = _T_52 | _T_53; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_size = _T_49 | _T_50; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_source = _T_46 | _T_47; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_address = _T_43 | _T_44; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_user_preferCache = muxStateEarly__0 & auto_in_0_a_bits_user_preferCache; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_mask = _T_34 | _T_35; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_data = _T_31 | _T_32; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_corrupt = muxStateEarly__0 & auto_in_0_a_bits_corrupt | muxStateEarly__1 &
    auto_in_1_a_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_out_0_bready = requestBOI_0_0 & out_19_ready; // @[Mux.scala 27:73]
  assign auto_out_0_c_valid = auto_in_0_c_valid & requestCIO_0_0; // @[Xbar.scala 179:40]
  assign auto_out_0_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_source = {{1'd0}, auto_in_0_c_bits_source}; // @[Xbar.scala 231:18 259:29]
  assign auto_out_0_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_echo_blockisdirty = auto_in_0_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_d_ready = requestDOI_0_0 & out_24_ready | requestDOI_0_1 & out_30_ready; // @[Mux.scala 27:73]
  assign auto_out_0_e_valid = auto_in_0_e_valid & requestEIO_0_0; // @[Xbar.scala 179:40]
  assign auto_out_0_e_bits_sink = auto_in_0_e_bits_sink[3:0]; // @[Xbar.scala 228:69]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_4 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_4) begin // @[Arbiter.scala 113:23]
      beatsLeft_4 <= 1'h0;
    end else begin
      beatsLeft_4 <= beatsLeft_4 - _beatsLeft_T_26;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_4 <= 4'hf; // @[Arbiter.scala 23:23]
    end else if (latch_4 & |readys_valid_4) begin // @[Arbiter.scala 27:32]
      readys_mask_4 <= _readys_mask_T_26; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_4_0 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_4) begin // @[Arbiter.scala 117:30]
      state_4_0 <= earlyWinner_4_0;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_4_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_4) begin // @[Arbiter.scala 117:30]
      state_4_1 <= earlyWinner_4_1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_4_2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_4) begin // @[Arbiter.scala 117:30]
      state_4_2 <= earlyWinner_4_2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_4_3 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_4) begin // @[Arbiter.scala 117:30]
      state_4_3 <= earlyWinner_4_3;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_5 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_5) begin // @[Arbiter.scala 113:23]
      beatsLeft_5 <= initBeats_5;
    end else begin
      beatsLeft_5 <= beatsLeft_5 - _beatsLeft_T_32;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_5 <= 4'hf; // @[Arbiter.scala 23:23]
    end else if (latch_5 & |readys_valid_5) begin // @[Arbiter.scala 27:32]
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
    if (reset) begin // @[Arbiter.scala 116:26]
      state_5_2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_5) begin // @[Arbiter.scala 117:30]
      state_5_2 <= earlyWinner_5_2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_5_3 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_5) begin // @[Arbiter.scala 117:30]
      state_5_3 <= earlyWinner_5_3;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_6 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_6) begin // @[Arbiter.scala 113:23]
      beatsLeft_6 <= initBeats_6;
    end else begin
      beatsLeft_6 <= beatsLeft_6 - _beatsLeft_T_38;
    end
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_6 <= 4'hf; // @[Arbiter.scala 23:23]
    end else if (latch_6 & |readys_valid_6) begin // @[Arbiter.scala 27:32]
      readys_mask_6 <= _readys_mask_T_42; // @[Arbiter.scala 28:12]
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
    if (reset) begin // @[Arbiter.scala 116:26]
      state_6_2 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_6) begin // @[Arbiter.scala 117:30]
      state_6_2 <= earlyWinner_6_2;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_6_3 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_6) begin // @[Arbiter.scala 117:30]
      state_6_3 <= earlyWinner_6_3;
    end
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch) begin // @[Arbiter.scala 113:23]
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
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
      beatsLeft_1 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_1) begin // @[Arbiter.scala 113:23]
      beatsLeft_1 <= initBeats_1;
    end else begin
      beatsLeft_1 <= beatsLeft_1 - _beatsLeft_T_8;
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
    if (reset) begin // @[Arbiter.scala 87:30]
      beatsLeft_2 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_2) begin // @[Arbiter.scala 113:23]
      beatsLeft_2 <= initBeats_2;
    end else begin
      beatsLeft_2 <= beatsLeft_2 - _beatsLeft_T_14;
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
      beatsLeft_3 <= 1'h0; // @[Arbiter.scala 87:30]
    end else if (latch_3) begin // @[Arbiter.scala 113:23]
      beatsLeft_3 <= initBeats_3;
    end else begin
      beatsLeft_3 <= beatsLeft_3 - _beatsLeft_T_20;
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
      state__1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle) begin // @[Arbiter.scala 117:30]
      state__1 <= earlyWinner__1;
    end
    if (reset) begin // @[Arbiter.scala 116:26]
      state_1_1 <= 1'h0; // @[Arbiter.scala 116:26]
    end else if (idle_1) begin // @[Arbiter.scala 117:30]
      state_1_1 <= earlyWinner_1_1;
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
  beatsLeft_4 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  readys_mask_4 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  state_4_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_4_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state_4_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state_4_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  beatsLeft_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  readys_mask_5 = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  state_5_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  state_5_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state_5_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  state_5_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  beatsLeft_6 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  readys_mask_6 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  state_6_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  state_6_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  state_6_2 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  state_6_3 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  beatsLeft = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  readys_mask = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  state__0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  beatsLeft_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  readys_mask_1 = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  state_1_0 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  beatsLeft_2 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  readys_mask_2 = _RAND_25[1:0];
  _RAND_26 = {1{`RANDOM}};
  state_2_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  beatsLeft_3 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  readys_mask_3 = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  state_3_0 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  state__1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  state_1_1 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  state_2_1 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  state_3_1 = _RAND_33[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
