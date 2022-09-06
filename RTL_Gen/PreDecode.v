module PreDecode(
  input  [15:0] io_in_data_0,
  input  [15:0] io_in_data_1,
  input  [15:0] io_in_data_2,
  input  [15:0] io_in_data_3,
  input  [15:0] io_in_data_4,
  input  [15:0] io_in_data_5,
  input  [15:0] io_in_data_6,
  input  [15:0] io_in_data_7,
  input  [15:0] io_in_data_8,
  output        io_out_pd_0_isRVC,
  output [1:0]  io_out_pd_0_brType,
  output        io_out_pd_0_isCall,
  output        io_out_pd_0_isRet,
  output        io_out_pd_1_valid,
  output        io_out_pd_1_isRVC,
  output [1:0]  io_out_pd_1_brType,
  output        io_out_pd_1_isCall,
  output        io_out_pd_1_isRet,
  output        io_out_pd_2_valid,
  output        io_out_pd_2_isRVC,
  output [1:0]  io_out_pd_2_brType,
  output        io_out_pd_2_isCall,
  output        io_out_pd_2_isRet,
  output        io_out_pd_3_valid,
  output        io_out_pd_3_isRVC,
  output [1:0]  io_out_pd_3_brType,
  output        io_out_pd_3_isCall,
  output        io_out_pd_3_isRet,
  output        io_out_pd_4_valid,
  output        io_out_pd_4_isRVC,
  output [1:0]  io_out_pd_4_brType,
  output        io_out_pd_4_isCall,
  output        io_out_pd_4_isRet,
  output        io_out_pd_5_valid,
  output        io_out_pd_5_isRVC,
  output [1:0]  io_out_pd_5_brType,
  output        io_out_pd_5_isCall,
  output        io_out_pd_5_isRet,
  output        io_out_pd_6_valid,
  output        io_out_pd_6_isRVC,
  output [1:0]  io_out_pd_6_brType,
  output        io_out_pd_6_isCall,
  output        io_out_pd_6_isRet,
  output        io_out_pd_7_valid,
  output        io_out_pd_7_isRVC,
  output [1:0]  io_out_pd_7_brType,
  output        io_out_pd_7_isCall,
  output        io_out_pd_7_isRet,
  output        io_out_hasHalfValid_2,
  output        io_out_hasHalfValid_3,
  output        io_out_hasHalfValid_4,
  output        io_out_hasHalfValid_5,
  output        io_out_hasHalfValid_6,
  output        io_out_hasHalfValid_7,
  output [31:0] io_out_expInstr_0,
  output [31:0] io_out_expInstr_1,
  output [31:0] io_out_expInstr_2,
  output [31:0] io_out_expInstr_3,
  output [31:0] io_out_expInstr_4,
  output [31:0] io_out_expInstr_5,
  output [31:0] io_out_expInstr_6,
  output [31:0] io_out_expInstr_7,
  output [63:0] io_out_jumpOffset_0,
  output [63:0] io_out_jumpOffset_1,
  output [63:0] io_out_jumpOffset_2,
  output [63:0] io_out_jumpOffset_3,
  output [63:0] io_out_jumpOffset_4,
  output [63:0] io_out_jumpOffset_5,
  output [63:0] io_out_jumpOffset_6,
  output [63:0] io_out_jumpOffset_7
);
  wire [31:0] expander_io_in; // @[PreDecode.scala 107:32]
  wire [31:0] expander_io_out_bits; // @[PreDecode.scala 107:32]
  wire [31:0] expander_1_io_in; // @[PreDecode.scala 107:32]
  wire [31:0] expander_1_io_out_bits; // @[PreDecode.scala 107:32]
  wire [31:0] expander_2_io_in; // @[PreDecode.scala 107:32]
  wire [31:0] expander_2_io_out_bits; // @[PreDecode.scala 107:32]
  wire [31:0] expander_3_io_in; // @[PreDecode.scala 107:32]
  wire [31:0] expander_3_io_out_bits; // @[PreDecode.scala 107:32]
  wire [31:0] expander_4_io_in; // @[PreDecode.scala 107:32]
  wire [31:0] expander_4_io_out_bits; // @[PreDecode.scala 107:32]
  wire [31:0] expander_5_io_in; // @[PreDecode.scala 107:32]
  wire [31:0] expander_5_io_out_bits; // @[PreDecode.scala 107:32]
  wire [31:0] expander_6_io_in; // @[PreDecode.scala 107:32]
  wire [31:0] expander_6_io_out_bits; // @[PreDecode.scala 107:32]
  wire [31:0] expander_7_io_in; // @[PreDecode.scala 107:32]
  wire [31:0] expander_7_io_out_bits; // @[PreDecode.scala 107:32]
  wire [31:0] rawInsts_0 = {io_in_data_1,io_in_data_0}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_1 = {io_in_data_2,io_in_data_1}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_2 = {io_in_data_3,io_in_data_2}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_3 = {io_in_data_4,io_in_data_3}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_4 = {io_in_data_5,io_in_data_4}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_5 = {io_in_data_6,io_in_data_5}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_6 = {io_in_data_7,io_in_data_6}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_7 = {io_in_data_8,io_in_data_7}; // @[Cat.scala 31:58]
  wire  currentIsRVC = rawInsts_0[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  wire [31:0] _brType_T = rawInsts_0 & 32'he003; // @[Lookup.scala 31:38]
  wire  _brType_T_1 = 32'ha001 == _brType_T; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_2 = rawInsts_0 & 32'he07f; // @[Lookup.scala 31:38]
  wire  _brType_T_3 = 32'h8002 == _brType_T_2; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_4 = rawInsts_0 & 32'hc003; // @[Lookup.scala 31:38]
  wire  _brType_T_5 = 32'hc001 == _brType_T_4; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_6 = rawInsts_0 & 32'h7f; // @[Lookup.scala 31:38]
  wire  _brType_T_7 = 32'h6f == _brType_T_6; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_8 = rawInsts_0 & 32'h707f; // @[Lookup.scala 31:38]
  wire  _brType_T_9 = 32'h67 == _brType_T_8; // @[Lookup.scala 31:38]
  wire  _brType_T_11 = 32'h63 == _brType_T_6; // @[Lookup.scala 31:38]
  wire [1:0] _brType_T_13 = _brType_T_9 ? 2'h3 : {{1'd0}, _brType_T_11}; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_14 = _brType_T_7 ? 2'h2 : _brType_T_13; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_15 = _brType_T_5 ? 2'h1 : _brType_T_14; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_16 = _brType_T_3 ? 2'h3 : _brType_T_15; // @[Lookup.scala 34:39]
  wire [1:0] brType = _brType_T_1 ? 2'h2 : _brType_T_16; // @[Lookup.scala 34:39]
  wire [4:0] rd = currentIsRVC ? {{4'd0}, rawInsts_0[12]} : rawInsts_0[11:7]; // @[PreDecode.scala 34:17]
  wire  _rs_T_2 = brType == 2'h2; // @[PreDecode.scala 35:43]
  wire [4:0] _rs_T_4 = brType == 2'h2 ? 5'h0 : rawInsts_0[11:7]; // @[PreDecode.scala 35:35]
  wire [4:0] rs = currentIsRVC ? _rs_T_4 : rawInsts_0[19:15]; // @[PreDecode.scala 35:17]
  wire  _isCall_T_3 = ~currentIsRVC; // @[PreDecode.scala 36:44]
  wire  _isCall_T_5 = brType == 2'h3; // @[PreDecode.scala 36:68]
  wire  _isCall_T_9 = rd == 5'h1 | rd == 5'h5; // @[PreDecode.scala 31:38]
  wire  isCall = (_rs_T_2 & ~currentIsRVC | brType == 2'h3) & _isCall_T_9; // @[PreDecode.scala 36:85]
  wire  _isRet_T_3 = rs == 5'h1 | rs == 5'h5; // @[PreDecode.scala 31:38]
  wire [11:0] jalOffset_rvc_offset = {rawInsts_0[12],rawInsts_0[8],rawInsts_0[10:9],rawInsts_0[6],rawInsts_0[7],
    rawInsts_0[2],rawInsts_0[11],rawInsts_0[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] jalOffset_rvi_offset = {rawInsts_0[31],rawInsts_0[19:12],rawInsts_0[20],rawInsts_0[30:21],1'h0}; // @[Cat.scala 31:58]
  wire  jalOffset_signBit = jalOffset_rvc_offset[11]; // @[BitUtils.scala 43:20]
  wire [8:0] _jalOffset_T_1 = jalOffset_signBit ? 9'h1ff : 9'h0; // @[Bitwise.scala 74:12]
  wire [20:0] _jalOffset_T_2 = {_jalOffset_T_1,rawInsts_0[12],rawInsts_0[8],rawInsts_0[10:9],rawInsts_0[6],rawInsts_0[7]
    ,rawInsts_0[2],rawInsts_0[11],rawInsts_0[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] _jalOffset_T_4 = currentIsRVC ? _jalOffset_T_2 : jalOffset_rvi_offset; // @[PreDecode.scala 44:16]
  wire  jalOffset_signBit_2 = _jalOffset_T_4[20]; // @[BitUtils.scala 43:20]
  wire [42:0] _jalOffset_T_6 = jalOffset_signBit_2 ? 43'h7ffffffffff : 43'h0; // @[Bitwise.scala 74:12]
  wire [63:0] jalOffset = {_jalOffset_T_6,_jalOffset_T_4}; // @[Cat.scala 31:58]
  wire [8:0] brOffset_rvc_offset = {rawInsts_0[12],rawInsts_0[6:5],rawInsts_0[2],rawInsts_0[11:10],rawInsts_0[4:3],1'h0}
    ; // @[Cat.scala 31:58]
  wire [12:0] brOffset_rvi_offset = {rawInsts_0[31],rawInsts_0[7],rawInsts_0[30:25],rawInsts_0[11:8],1'h0}; // @[Cat.scala 31:58]
  wire  brOffset_signBit = brOffset_rvc_offset[8]; // @[BitUtils.scala 43:20]
  wire [3:0] _brOffset_T_1 = brOffset_signBit ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [12:0] _brOffset_T_2 = {_brOffset_T_1,rawInsts_0[12],rawInsts_0[6:5],rawInsts_0[2],rawInsts_0[11:10],rawInsts_0[4
    :3],1'h0}; // @[Cat.scala 31:58]
  wire [12:0] _brOffset_T_4 = currentIsRVC ? _brOffset_T_2 : brOffset_rvi_offset; // @[PreDecode.scala 50:16]
  wire  brOffset_signBit_2 = _brOffset_T_4[12]; // @[BitUtils.scala 43:20]
  wire [50:0] _brOffset_T_6 = brOffset_signBit_2 ? 51'h7ffffffffffff : 51'h0; // @[Bitwise.scala 74:12]
  wire [63:0] brOffset = {_brOffset_T_6,_brOffset_T_4}; // @[Cat.scala 31:58]
  wire  _io_out_jumpOffset_0_T = io_out_pd_0_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  currentIsRVC_1 = rawInsts_1[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  wire [31:0] _brType_T_17 = rawInsts_1 & 32'he003; // @[Lookup.scala 31:38]
  wire  _brType_T_18 = 32'ha001 == _brType_T_17; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_19 = rawInsts_1 & 32'he07f; // @[Lookup.scala 31:38]
  wire  _brType_T_20 = 32'h8002 == _brType_T_19; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_21 = rawInsts_1 & 32'hc003; // @[Lookup.scala 31:38]
  wire  _brType_T_22 = 32'hc001 == _brType_T_21; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_23 = rawInsts_1 & 32'h7f; // @[Lookup.scala 31:38]
  wire  _brType_T_24 = 32'h6f == _brType_T_23; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_25 = rawInsts_1 & 32'h707f; // @[Lookup.scala 31:38]
  wire  _brType_T_26 = 32'h67 == _brType_T_25; // @[Lookup.scala 31:38]
  wire  _brType_T_28 = 32'h63 == _brType_T_23; // @[Lookup.scala 31:38]
  wire [1:0] _brType_T_30 = _brType_T_26 ? 2'h3 : {{1'd0}, _brType_T_28}; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_31 = _brType_T_24 ? 2'h2 : _brType_T_30; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_32 = _brType_T_22 ? 2'h1 : _brType_T_31; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_33 = _brType_T_20 ? 2'h3 : _brType_T_32; // @[Lookup.scala 34:39]
  wire [1:0] brType_1 = _brType_T_18 ? 2'h2 : _brType_T_33; // @[Lookup.scala 34:39]
  wire [4:0] rd_1 = currentIsRVC_1 ? {{4'd0}, rawInsts_1[12]} : rawInsts_1[11:7]; // @[PreDecode.scala 34:17]
  wire  _rs_T_8 = brType_1 == 2'h2; // @[PreDecode.scala 35:43]
  wire [4:0] _rs_T_10 = brType_1 == 2'h2 ? 5'h0 : rawInsts_1[11:7]; // @[PreDecode.scala 35:35]
  wire [4:0] rs_1 = currentIsRVC_1 ? _rs_T_10 : rawInsts_1[19:15]; // @[PreDecode.scala 35:17]
  wire  _isCall_T_13 = ~currentIsRVC_1; // @[PreDecode.scala 36:44]
  wire  _isCall_T_15 = brType_1 == 2'h3; // @[PreDecode.scala 36:68]
  wire  _isCall_T_19 = rd_1 == 5'h1 | rd_1 == 5'h5; // @[PreDecode.scala 31:38]
  wire  isCall_1 = (_rs_T_8 & ~currentIsRVC_1 | brType_1 == 2'h3) & _isCall_T_19; // @[PreDecode.scala 36:85]
  wire  _isRet_T_9 = rs_1 == 5'h1 | rs_1 == 5'h5; // @[PreDecode.scala 31:38]
  wire [11:0] jalOffset_rvc_offset_1 = {rawInsts_1[12],rawInsts_1[8],rawInsts_1[10:9],rawInsts_1[6],rawInsts_1[7],
    rawInsts_1[2],rawInsts_1[11],rawInsts_1[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] jalOffset_rvi_offset_1 = {rawInsts_1[31],rawInsts_1[19:12],rawInsts_1[20],rawInsts_1[30:21],1'h0}; // @[Cat.scala 31:58]
  wire  jalOffset_signBit_3 = jalOffset_rvc_offset_1[11]; // @[BitUtils.scala 43:20]
  wire [8:0] _jalOffset_T_8 = jalOffset_signBit_3 ? 9'h1ff : 9'h0; // @[Bitwise.scala 74:12]
  wire [20:0] _jalOffset_T_9 = {_jalOffset_T_8,rawInsts_1[12],rawInsts_1[8],rawInsts_1[10:9],rawInsts_1[6],rawInsts_1[7]
    ,rawInsts_1[2],rawInsts_1[11],rawInsts_1[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] _jalOffset_T_11 = currentIsRVC_1 ? _jalOffset_T_9 : jalOffset_rvi_offset_1; // @[PreDecode.scala 44:16]
  wire  jalOffset_signBit_5 = _jalOffset_T_11[20]; // @[BitUtils.scala 43:20]
  wire [42:0] _jalOffset_T_13 = jalOffset_signBit_5 ? 43'h7ffffffffff : 43'h0; // @[Bitwise.scala 74:12]
  wire [63:0] jalOffset_1 = {_jalOffset_T_13,_jalOffset_T_11}; // @[Cat.scala 31:58]
  wire [8:0] brOffset_rvc_offset_1 = {rawInsts_1[12],rawInsts_1[6:5],rawInsts_1[2],rawInsts_1[11:10],rawInsts_1[4:3],1'h0
    }; // @[Cat.scala 31:58]
  wire [12:0] brOffset_rvi_offset_1 = {rawInsts_1[31],rawInsts_1[7],rawInsts_1[30:25],rawInsts_1[11:8],1'h0}; // @[Cat.scala 31:58]
  wire  brOffset_signBit_3 = brOffset_rvc_offset_1[8]; // @[BitUtils.scala 43:20]
  wire [3:0] _brOffset_T_8 = brOffset_signBit_3 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [12:0] _brOffset_T_9 = {_brOffset_T_8,rawInsts_1[12],rawInsts_1[6:5],rawInsts_1[2],rawInsts_1[11:10],rawInsts_1[4
    :3],1'h0}; // @[Cat.scala 31:58]
  wire [12:0] _brOffset_T_11 = currentIsRVC_1 ? _brOffset_T_9 : brOffset_rvi_offset_1; // @[PreDecode.scala 50:16]
  wire  brOffset_signBit_5 = _brOffset_T_11[12]; // @[BitUtils.scala 43:20]
  wire [50:0] _brOffset_T_13 = brOffset_signBit_5 ? 51'h7ffffffffffff : 51'h0; // @[Bitwise.scala 74:12]
  wire [63:0] brOffset_1 = {_brOffset_T_13,_brOffset_T_11}; // @[Cat.scala 31:58]
  wire  validEnd_1 = currentIsRVC & currentIsRVC_1 | _isCall_T_3; // @[PreDecode.scala 119:54]
  wire  _io_out_jumpOffset_1_T = io_out_pd_1_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  currentIsRVC_2 = rawInsts_2[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  wire [31:0] _brType_T_34 = rawInsts_2 & 32'he003; // @[Lookup.scala 31:38]
  wire  _brType_T_35 = 32'ha001 == _brType_T_34; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_36 = rawInsts_2 & 32'he07f; // @[Lookup.scala 31:38]
  wire  _brType_T_37 = 32'h8002 == _brType_T_36; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_38 = rawInsts_2 & 32'hc003; // @[Lookup.scala 31:38]
  wire  _brType_T_39 = 32'hc001 == _brType_T_38; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_40 = rawInsts_2 & 32'h7f; // @[Lookup.scala 31:38]
  wire  _brType_T_41 = 32'h6f == _brType_T_40; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_42 = rawInsts_2 & 32'h707f; // @[Lookup.scala 31:38]
  wire  _brType_T_43 = 32'h67 == _brType_T_42; // @[Lookup.scala 31:38]
  wire  _brType_T_45 = 32'h63 == _brType_T_40; // @[Lookup.scala 31:38]
  wire [1:0] _brType_T_47 = _brType_T_43 ? 2'h3 : {{1'd0}, _brType_T_45}; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_48 = _brType_T_41 ? 2'h2 : _brType_T_47; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_49 = _brType_T_39 ? 2'h1 : _brType_T_48; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_50 = _brType_T_37 ? 2'h3 : _brType_T_49; // @[Lookup.scala 34:39]
  wire [1:0] brType_2 = _brType_T_35 ? 2'h2 : _brType_T_50; // @[Lookup.scala 34:39]
  wire [4:0] rd_2 = currentIsRVC_2 ? {{4'd0}, rawInsts_2[12]} : rawInsts_2[11:7]; // @[PreDecode.scala 34:17]
  wire  _rs_T_14 = brType_2 == 2'h2; // @[PreDecode.scala 35:43]
  wire [4:0] _rs_T_16 = brType_2 == 2'h2 ? 5'h0 : rawInsts_2[11:7]; // @[PreDecode.scala 35:35]
  wire [4:0] rs_2 = currentIsRVC_2 ? _rs_T_16 : rawInsts_2[19:15]; // @[PreDecode.scala 35:17]
  wire  _isCall_T_25 = brType_2 == 2'h3; // @[PreDecode.scala 36:68]
  wire  _isCall_T_29 = rd_2 == 5'h1 | rd_2 == 5'h5; // @[PreDecode.scala 31:38]
  wire  isCall_2 = (_rs_T_14 & ~currentIsRVC_2 | brType_2 == 2'h3) & _isCall_T_29; // @[PreDecode.scala 36:85]
  wire  _isRet_T_15 = rs_2 == 5'h1 | rs_2 == 5'h5; // @[PreDecode.scala 31:38]
  wire [11:0] jalOffset_rvc_offset_2 = {rawInsts_2[12],rawInsts_2[8],rawInsts_2[10:9],rawInsts_2[6],rawInsts_2[7],
    rawInsts_2[2],rawInsts_2[11],rawInsts_2[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] jalOffset_rvi_offset_2 = {rawInsts_2[31],rawInsts_2[19:12],rawInsts_2[20],rawInsts_2[30:21],1'h0}; // @[Cat.scala 31:58]
  wire  jalOffset_signBit_6 = jalOffset_rvc_offset_2[11]; // @[BitUtils.scala 43:20]
  wire [8:0] _jalOffset_T_15 = jalOffset_signBit_6 ? 9'h1ff : 9'h0; // @[Bitwise.scala 74:12]
  wire [20:0] _jalOffset_T_16 = {_jalOffset_T_15,rawInsts_2[12],rawInsts_2[8],rawInsts_2[10:9],rawInsts_2[6],rawInsts_2[
    7],rawInsts_2[2],rawInsts_2[11],rawInsts_2[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] _jalOffset_T_18 = currentIsRVC_2 ? _jalOffset_T_16 : jalOffset_rvi_offset_2; // @[PreDecode.scala 44:16]
  wire  jalOffset_signBit_8 = _jalOffset_T_18[20]; // @[BitUtils.scala 43:20]
  wire [42:0] _jalOffset_T_20 = jalOffset_signBit_8 ? 43'h7ffffffffff : 43'h0; // @[Bitwise.scala 74:12]
  wire [63:0] jalOffset_2 = {_jalOffset_T_20,_jalOffset_T_18}; // @[Cat.scala 31:58]
  wire [8:0] brOffset_rvc_offset_2 = {rawInsts_2[12],rawInsts_2[6:5],rawInsts_2[2],rawInsts_2[11:10],rawInsts_2[4:3],1'h0
    }; // @[Cat.scala 31:58]
  wire [12:0] brOffset_rvi_offset_2 = {rawInsts_2[31],rawInsts_2[7],rawInsts_2[30:25],rawInsts_2[11:8],1'h0}; // @[Cat.scala 31:58]
  wire  brOffset_signBit_6 = brOffset_rvc_offset_2[8]; // @[BitUtils.scala 43:20]
  wire [3:0] _brOffset_T_15 = brOffset_signBit_6 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [12:0] _brOffset_T_16 = {_brOffset_T_15,rawInsts_2[12],rawInsts_2[6:5],rawInsts_2[2],rawInsts_2[11:10],rawInsts_2
    [4:3],1'h0}; // @[Cat.scala 31:58]
  wire [12:0] _brOffset_T_18 = currentIsRVC_2 ? _brOffset_T_16 : brOffset_rvi_offset_2; // @[PreDecode.scala 50:16]
  wire  brOffset_signBit_8 = _brOffset_T_18[12]; // @[BitUtils.scala 43:20]
  wire [50:0] _brOffset_T_20 = brOffset_signBit_8 ? 51'h7ffffffffffff : 51'h0; // @[Bitwise.scala 74:12]
  wire [63:0] brOffset_2 = {_brOffset_T_20,_brOffset_T_18}; // @[Cat.scala 31:58]
  wire  validEnd_2 = validEnd_1 & currentIsRVC_2 | ~validEnd_1; // @[PreDecode.scala 119:54]
  wire  h_validEnd_2 = currentIsRVC_1 & currentIsRVC_2 | _isCall_T_13; // @[PreDecode.scala 125:58]
  wire  _io_out_jumpOffset_2_T = io_out_pd_2_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  currentIsRVC_3 = rawInsts_3[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  wire [31:0] _brType_T_51 = rawInsts_3 & 32'he003; // @[Lookup.scala 31:38]
  wire  _brType_T_52 = 32'ha001 == _brType_T_51; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_53 = rawInsts_3 & 32'he07f; // @[Lookup.scala 31:38]
  wire  _brType_T_54 = 32'h8002 == _brType_T_53; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_55 = rawInsts_3 & 32'hc003; // @[Lookup.scala 31:38]
  wire  _brType_T_56 = 32'hc001 == _brType_T_55; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_57 = rawInsts_3 & 32'h7f; // @[Lookup.scala 31:38]
  wire  _brType_T_58 = 32'h6f == _brType_T_57; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_59 = rawInsts_3 & 32'h707f; // @[Lookup.scala 31:38]
  wire  _brType_T_60 = 32'h67 == _brType_T_59; // @[Lookup.scala 31:38]
  wire  _brType_T_62 = 32'h63 == _brType_T_57; // @[Lookup.scala 31:38]
  wire [1:0] _brType_T_64 = _brType_T_60 ? 2'h3 : {{1'd0}, _brType_T_62}; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_65 = _brType_T_58 ? 2'h2 : _brType_T_64; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_66 = _brType_T_56 ? 2'h1 : _brType_T_65; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_67 = _brType_T_54 ? 2'h3 : _brType_T_66; // @[Lookup.scala 34:39]
  wire [1:0] brType_3 = _brType_T_52 ? 2'h2 : _brType_T_67; // @[Lookup.scala 34:39]
  wire [4:0] rd_3 = currentIsRVC_3 ? {{4'd0}, rawInsts_3[12]} : rawInsts_3[11:7]; // @[PreDecode.scala 34:17]
  wire  _rs_T_20 = brType_3 == 2'h2; // @[PreDecode.scala 35:43]
  wire [4:0] _rs_T_22 = brType_3 == 2'h2 ? 5'h0 : rawInsts_3[11:7]; // @[PreDecode.scala 35:35]
  wire [4:0] rs_3 = currentIsRVC_3 ? _rs_T_22 : rawInsts_3[19:15]; // @[PreDecode.scala 35:17]
  wire  _isCall_T_35 = brType_3 == 2'h3; // @[PreDecode.scala 36:68]
  wire  _isCall_T_39 = rd_3 == 5'h1 | rd_3 == 5'h5; // @[PreDecode.scala 31:38]
  wire  isCall_3 = (_rs_T_20 & ~currentIsRVC_3 | brType_3 == 2'h3) & _isCall_T_39; // @[PreDecode.scala 36:85]
  wire  _isRet_T_21 = rs_3 == 5'h1 | rs_3 == 5'h5; // @[PreDecode.scala 31:38]
  wire [11:0] jalOffset_rvc_offset_3 = {rawInsts_3[12],rawInsts_3[8],rawInsts_3[10:9],rawInsts_3[6],rawInsts_3[7],
    rawInsts_3[2],rawInsts_3[11],rawInsts_3[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] jalOffset_rvi_offset_3 = {rawInsts_3[31],rawInsts_3[19:12],rawInsts_3[20],rawInsts_3[30:21],1'h0}; // @[Cat.scala 31:58]
  wire  jalOffset_signBit_9 = jalOffset_rvc_offset_3[11]; // @[BitUtils.scala 43:20]
  wire [8:0] _jalOffset_T_22 = jalOffset_signBit_9 ? 9'h1ff : 9'h0; // @[Bitwise.scala 74:12]
  wire [20:0] _jalOffset_T_23 = {_jalOffset_T_22,rawInsts_3[12],rawInsts_3[8],rawInsts_3[10:9],rawInsts_3[6],rawInsts_3[
    7],rawInsts_3[2],rawInsts_3[11],rawInsts_3[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] _jalOffset_T_25 = currentIsRVC_3 ? _jalOffset_T_23 : jalOffset_rvi_offset_3; // @[PreDecode.scala 44:16]
  wire  jalOffset_signBit_11 = _jalOffset_T_25[20]; // @[BitUtils.scala 43:20]
  wire [42:0] _jalOffset_T_27 = jalOffset_signBit_11 ? 43'h7ffffffffff : 43'h0; // @[Bitwise.scala 74:12]
  wire [63:0] jalOffset_3 = {_jalOffset_T_27,_jalOffset_T_25}; // @[Cat.scala 31:58]
  wire [8:0] brOffset_rvc_offset_3 = {rawInsts_3[12],rawInsts_3[6:5],rawInsts_3[2],rawInsts_3[11:10],rawInsts_3[4:3],1'h0
    }; // @[Cat.scala 31:58]
  wire [12:0] brOffset_rvi_offset_3 = {rawInsts_3[31],rawInsts_3[7],rawInsts_3[30:25],rawInsts_3[11:8],1'h0}; // @[Cat.scala 31:58]
  wire  brOffset_signBit_9 = brOffset_rvc_offset_3[8]; // @[BitUtils.scala 43:20]
  wire [3:0] _brOffset_T_22 = brOffset_signBit_9 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [12:0] _brOffset_T_23 = {_brOffset_T_22,rawInsts_3[12],rawInsts_3[6:5],rawInsts_3[2],rawInsts_3[11:10],rawInsts_3
    [4:3],1'h0}; // @[Cat.scala 31:58]
  wire [12:0] _brOffset_T_25 = currentIsRVC_3 ? _brOffset_T_23 : brOffset_rvi_offset_3; // @[PreDecode.scala 50:16]
  wire  brOffset_signBit_11 = _brOffset_T_25[12]; // @[BitUtils.scala 43:20]
  wire [50:0] _brOffset_T_27 = brOffset_signBit_11 ? 51'h7ffffffffffff : 51'h0; // @[Bitwise.scala 74:12]
  wire [63:0] brOffset_3 = {_brOffset_T_27,_brOffset_T_25}; // @[Cat.scala 31:58]
  wire  validEnd_3 = validEnd_2 & currentIsRVC_3 | ~validEnd_2; // @[PreDecode.scala 119:54]
  wire  h_validEnd_3 = h_validEnd_2 & currentIsRVC_3 | ~h_validEnd_2; // @[PreDecode.scala 125:58]
  wire  _io_out_jumpOffset_3_T = io_out_pd_3_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  currentIsRVC_4 = rawInsts_4[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  wire [31:0] _brType_T_68 = rawInsts_4 & 32'he003; // @[Lookup.scala 31:38]
  wire  _brType_T_69 = 32'ha001 == _brType_T_68; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_70 = rawInsts_4 & 32'he07f; // @[Lookup.scala 31:38]
  wire  _brType_T_71 = 32'h8002 == _brType_T_70; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_72 = rawInsts_4 & 32'hc003; // @[Lookup.scala 31:38]
  wire  _brType_T_73 = 32'hc001 == _brType_T_72; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_74 = rawInsts_4 & 32'h7f; // @[Lookup.scala 31:38]
  wire  _brType_T_75 = 32'h6f == _brType_T_74; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_76 = rawInsts_4 & 32'h707f; // @[Lookup.scala 31:38]
  wire  _brType_T_77 = 32'h67 == _brType_T_76; // @[Lookup.scala 31:38]
  wire  _brType_T_79 = 32'h63 == _brType_T_74; // @[Lookup.scala 31:38]
  wire [1:0] _brType_T_81 = _brType_T_77 ? 2'h3 : {{1'd0}, _brType_T_79}; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_82 = _brType_T_75 ? 2'h2 : _brType_T_81; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_83 = _brType_T_73 ? 2'h1 : _brType_T_82; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_84 = _brType_T_71 ? 2'h3 : _brType_T_83; // @[Lookup.scala 34:39]
  wire [1:0] brType_4 = _brType_T_69 ? 2'h2 : _brType_T_84; // @[Lookup.scala 34:39]
  wire [4:0] rd_4 = currentIsRVC_4 ? {{4'd0}, rawInsts_4[12]} : rawInsts_4[11:7]; // @[PreDecode.scala 34:17]
  wire  _rs_T_26 = brType_4 == 2'h2; // @[PreDecode.scala 35:43]
  wire [4:0] _rs_T_28 = brType_4 == 2'h2 ? 5'h0 : rawInsts_4[11:7]; // @[PreDecode.scala 35:35]
  wire [4:0] rs_4 = currentIsRVC_4 ? _rs_T_28 : rawInsts_4[19:15]; // @[PreDecode.scala 35:17]
  wire  _isCall_T_45 = brType_4 == 2'h3; // @[PreDecode.scala 36:68]
  wire  _isCall_T_49 = rd_4 == 5'h1 | rd_4 == 5'h5; // @[PreDecode.scala 31:38]
  wire  isCall_4 = (_rs_T_26 & ~currentIsRVC_4 | brType_4 == 2'h3) & _isCall_T_49; // @[PreDecode.scala 36:85]
  wire  _isRet_T_27 = rs_4 == 5'h1 | rs_4 == 5'h5; // @[PreDecode.scala 31:38]
  wire [11:0] jalOffset_rvc_offset_4 = {rawInsts_4[12],rawInsts_4[8],rawInsts_4[10:9],rawInsts_4[6],rawInsts_4[7],
    rawInsts_4[2],rawInsts_4[11],rawInsts_4[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] jalOffset_rvi_offset_4 = {rawInsts_4[31],rawInsts_4[19:12],rawInsts_4[20],rawInsts_4[30:21],1'h0}; // @[Cat.scala 31:58]
  wire  jalOffset_signBit_12 = jalOffset_rvc_offset_4[11]; // @[BitUtils.scala 43:20]
  wire [8:0] _jalOffset_T_29 = jalOffset_signBit_12 ? 9'h1ff : 9'h0; // @[Bitwise.scala 74:12]
  wire [20:0] _jalOffset_T_30 = {_jalOffset_T_29,rawInsts_4[12],rawInsts_4[8],rawInsts_4[10:9],rawInsts_4[6],rawInsts_4[
    7],rawInsts_4[2],rawInsts_4[11],rawInsts_4[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] _jalOffset_T_32 = currentIsRVC_4 ? _jalOffset_T_30 : jalOffset_rvi_offset_4; // @[PreDecode.scala 44:16]
  wire  jalOffset_signBit_14 = _jalOffset_T_32[20]; // @[BitUtils.scala 43:20]
  wire [42:0] _jalOffset_T_34 = jalOffset_signBit_14 ? 43'h7ffffffffff : 43'h0; // @[Bitwise.scala 74:12]
  wire [63:0] jalOffset_4 = {_jalOffset_T_34,_jalOffset_T_32}; // @[Cat.scala 31:58]
  wire [8:0] brOffset_rvc_offset_4 = {rawInsts_4[12],rawInsts_4[6:5],rawInsts_4[2],rawInsts_4[11:10],rawInsts_4[4:3],1'h0
    }; // @[Cat.scala 31:58]
  wire [12:0] brOffset_rvi_offset_4 = {rawInsts_4[31],rawInsts_4[7],rawInsts_4[30:25],rawInsts_4[11:8],1'h0}; // @[Cat.scala 31:58]
  wire  brOffset_signBit_12 = brOffset_rvc_offset_4[8]; // @[BitUtils.scala 43:20]
  wire [3:0] _brOffset_T_29 = brOffset_signBit_12 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [12:0] _brOffset_T_30 = {_brOffset_T_29,rawInsts_4[12],rawInsts_4[6:5],rawInsts_4[2],rawInsts_4[11:10],rawInsts_4
    [4:3],1'h0}; // @[Cat.scala 31:58]
  wire [12:0] _brOffset_T_32 = currentIsRVC_4 ? _brOffset_T_30 : brOffset_rvi_offset_4; // @[PreDecode.scala 50:16]
  wire  brOffset_signBit_14 = _brOffset_T_32[12]; // @[BitUtils.scala 43:20]
  wire [50:0] _brOffset_T_34 = brOffset_signBit_14 ? 51'h7ffffffffffff : 51'h0; // @[Bitwise.scala 74:12]
  wire [63:0] brOffset_4 = {_brOffset_T_34,_brOffset_T_32}; // @[Cat.scala 31:58]
  wire  validEnd_4 = validEnd_3 & currentIsRVC_4 | ~validEnd_3; // @[PreDecode.scala 119:54]
  wire  h_validEnd_4 = h_validEnd_3 & currentIsRVC_4 | ~h_validEnd_3; // @[PreDecode.scala 125:58]
  wire  _io_out_jumpOffset_4_T = io_out_pd_4_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  currentIsRVC_5 = rawInsts_5[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  wire [31:0] _brType_T_85 = rawInsts_5 & 32'he003; // @[Lookup.scala 31:38]
  wire  _brType_T_86 = 32'ha001 == _brType_T_85; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_87 = rawInsts_5 & 32'he07f; // @[Lookup.scala 31:38]
  wire  _brType_T_88 = 32'h8002 == _brType_T_87; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_89 = rawInsts_5 & 32'hc003; // @[Lookup.scala 31:38]
  wire  _brType_T_90 = 32'hc001 == _brType_T_89; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_91 = rawInsts_5 & 32'h7f; // @[Lookup.scala 31:38]
  wire  _brType_T_92 = 32'h6f == _brType_T_91; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_93 = rawInsts_5 & 32'h707f; // @[Lookup.scala 31:38]
  wire  _brType_T_94 = 32'h67 == _brType_T_93; // @[Lookup.scala 31:38]
  wire  _brType_T_96 = 32'h63 == _brType_T_91; // @[Lookup.scala 31:38]
  wire [1:0] _brType_T_98 = _brType_T_94 ? 2'h3 : {{1'd0}, _brType_T_96}; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_99 = _brType_T_92 ? 2'h2 : _brType_T_98; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_100 = _brType_T_90 ? 2'h1 : _brType_T_99; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_101 = _brType_T_88 ? 2'h3 : _brType_T_100; // @[Lookup.scala 34:39]
  wire [1:0] brType_5 = _brType_T_86 ? 2'h2 : _brType_T_101; // @[Lookup.scala 34:39]
  wire [4:0] rd_5 = currentIsRVC_5 ? {{4'd0}, rawInsts_5[12]} : rawInsts_5[11:7]; // @[PreDecode.scala 34:17]
  wire  _rs_T_32 = brType_5 == 2'h2; // @[PreDecode.scala 35:43]
  wire [4:0] _rs_T_34 = brType_5 == 2'h2 ? 5'h0 : rawInsts_5[11:7]; // @[PreDecode.scala 35:35]
  wire [4:0] rs_5 = currentIsRVC_5 ? _rs_T_34 : rawInsts_5[19:15]; // @[PreDecode.scala 35:17]
  wire  _isCall_T_55 = brType_5 == 2'h3; // @[PreDecode.scala 36:68]
  wire  _isCall_T_59 = rd_5 == 5'h1 | rd_5 == 5'h5; // @[PreDecode.scala 31:38]
  wire  isCall_5 = (_rs_T_32 & ~currentIsRVC_5 | brType_5 == 2'h3) & _isCall_T_59; // @[PreDecode.scala 36:85]
  wire  _isRet_T_33 = rs_5 == 5'h1 | rs_5 == 5'h5; // @[PreDecode.scala 31:38]
  wire [11:0] jalOffset_rvc_offset_5 = {rawInsts_5[12],rawInsts_5[8],rawInsts_5[10:9],rawInsts_5[6],rawInsts_5[7],
    rawInsts_5[2],rawInsts_5[11],rawInsts_5[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] jalOffset_rvi_offset_5 = {rawInsts_5[31],rawInsts_5[19:12],rawInsts_5[20],rawInsts_5[30:21],1'h0}; // @[Cat.scala 31:58]
  wire  jalOffset_signBit_15 = jalOffset_rvc_offset_5[11]; // @[BitUtils.scala 43:20]
  wire [8:0] _jalOffset_T_36 = jalOffset_signBit_15 ? 9'h1ff : 9'h0; // @[Bitwise.scala 74:12]
  wire [20:0] _jalOffset_T_37 = {_jalOffset_T_36,rawInsts_5[12],rawInsts_5[8],rawInsts_5[10:9],rawInsts_5[6],rawInsts_5[
    7],rawInsts_5[2],rawInsts_5[11],rawInsts_5[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] _jalOffset_T_39 = currentIsRVC_5 ? _jalOffset_T_37 : jalOffset_rvi_offset_5; // @[PreDecode.scala 44:16]
  wire  jalOffset_signBit_17 = _jalOffset_T_39[20]; // @[BitUtils.scala 43:20]
  wire [42:0] _jalOffset_T_41 = jalOffset_signBit_17 ? 43'h7ffffffffff : 43'h0; // @[Bitwise.scala 74:12]
  wire [63:0] jalOffset_5 = {_jalOffset_T_41,_jalOffset_T_39}; // @[Cat.scala 31:58]
  wire [8:0] brOffset_rvc_offset_5 = {rawInsts_5[12],rawInsts_5[6:5],rawInsts_5[2],rawInsts_5[11:10],rawInsts_5[4:3],1'h0
    }; // @[Cat.scala 31:58]
  wire [12:0] brOffset_rvi_offset_5 = {rawInsts_5[31],rawInsts_5[7],rawInsts_5[30:25],rawInsts_5[11:8],1'h0}; // @[Cat.scala 31:58]
  wire  brOffset_signBit_15 = brOffset_rvc_offset_5[8]; // @[BitUtils.scala 43:20]
  wire [3:0] _brOffset_T_36 = brOffset_signBit_15 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [12:0] _brOffset_T_37 = {_brOffset_T_36,rawInsts_5[12],rawInsts_5[6:5],rawInsts_5[2],rawInsts_5[11:10],rawInsts_5
    [4:3],1'h0}; // @[Cat.scala 31:58]
  wire [12:0] _brOffset_T_39 = currentIsRVC_5 ? _brOffset_T_37 : brOffset_rvi_offset_5; // @[PreDecode.scala 50:16]
  wire  brOffset_signBit_17 = _brOffset_T_39[12]; // @[BitUtils.scala 43:20]
  wire [50:0] _brOffset_T_41 = brOffset_signBit_17 ? 51'h7ffffffffffff : 51'h0; // @[Bitwise.scala 74:12]
  wire [63:0] brOffset_5 = {_brOffset_T_41,_brOffset_T_39}; // @[Cat.scala 31:58]
  wire  validEnd_5 = validEnd_4 & currentIsRVC_5 | ~validEnd_4; // @[PreDecode.scala 119:54]
  wire  h_validEnd_5 = h_validEnd_4 & currentIsRVC_5 | ~h_validEnd_4; // @[PreDecode.scala 125:58]
  wire  _io_out_jumpOffset_5_T = io_out_pd_5_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  currentIsRVC_6 = rawInsts_6[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  wire [31:0] _brType_T_102 = rawInsts_6 & 32'he003; // @[Lookup.scala 31:38]
  wire  _brType_T_103 = 32'ha001 == _brType_T_102; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_104 = rawInsts_6 & 32'he07f; // @[Lookup.scala 31:38]
  wire  _brType_T_105 = 32'h8002 == _brType_T_104; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_106 = rawInsts_6 & 32'hc003; // @[Lookup.scala 31:38]
  wire  _brType_T_107 = 32'hc001 == _brType_T_106; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_108 = rawInsts_6 & 32'h7f; // @[Lookup.scala 31:38]
  wire  _brType_T_109 = 32'h6f == _brType_T_108; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_110 = rawInsts_6 & 32'h707f; // @[Lookup.scala 31:38]
  wire  _brType_T_111 = 32'h67 == _brType_T_110; // @[Lookup.scala 31:38]
  wire  _brType_T_113 = 32'h63 == _brType_T_108; // @[Lookup.scala 31:38]
  wire [1:0] _brType_T_115 = _brType_T_111 ? 2'h3 : {{1'd0}, _brType_T_113}; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_116 = _brType_T_109 ? 2'h2 : _brType_T_115; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_117 = _brType_T_107 ? 2'h1 : _brType_T_116; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_118 = _brType_T_105 ? 2'h3 : _brType_T_117; // @[Lookup.scala 34:39]
  wire [1:0] brType_6 = _brType_T_103 ? 2'h2 : _brType_T_118; // @[Lookup.scala 34:39]
  wire [4:0] rd_6 = currentIsRVC_6 ? {{4'd0}, rawInsts_6[12]} : rawInsts_6[11:7]; // @[PreDecode.scala 34:17]
  wire  _rs_T_38 = brType_6 == 2'h2; // @[PreDecode.scala 35:43]
  wire [4:0] _rs_T_40 = brType_6 == 2'h2 ? 5'h0 : rawInsts_6[11:7]; // @[PreDecode.scala 35:35]
  wire [4:0] rs_6 = currentIsRVC_6 ? _rs_T_40 : rawInsts_6[19:15]; // @[PreDecode.scala 35:17]
  wire  _isCall_T_65 = brType_6 == 2'h3; // @[PreDecode.scala 36:68]
  wire  _isCall_T_69 = rd_6 == 5'h1 | rd_6 == 5'h5; // @[PreDecode.scala 31:38]
  wire  isCall_6 = (_rs_T_38 & ~currentIsRVC_6 | brType_6 == 2'h3) & _isCall_T_69; // @[PreDecode.scala 36:85]
  wire  _isRet_T_39 = rs_6 == 5'h1 | rs_6 == 5'h5; // @[PreDecode.scala 31:38]
  wire [11:0] jalOffset_rvc_offset_6 = {rawInsts_6[12],rawInsts_6[8],rawInsts_6[10:9],rawInsts_6[6],rawInsts_6[7],
    rawInsts_6[2],rawInsts_6[11],rawInsts_6[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] jalOffset_rvi_offset_6 = {rawInsts_6[31],rawInsts_6[19:12],rawInsts_6[20],rawInsts_6[30:21],1'h0}; // @[Cat.scala 31:58]
  wire  jalOffset_signBit_18 = jalOffset_rvc_offset_6[11]; // @[BitUtils.scala 43:20]
  wire [8:0] _jalOffset_T_43 = jalOffset_signBit_18 ? 9'h1ff : 9'h0; // @[Bitwise.scala 74:12]
  wire [20:0] _jalOffset_T_44 = {_jalOffset_T_43,rawInsts_6[12],rawInsts_6[8],rawInsts_6[10:9],rawInsts_6[6],rawInsts_6[
    7],rawInsts_6[2],rawInsts_6[11],rawInsts_6[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] _jalOffset_T_46 = currentIsRVC_6 ? _jalOffset_T_44 : jalOffset_rvi_offset_6; // @[PreDecode.scala 44:16]
  wire  jalOffset_signBit_20 = _jalOffset_T_46[20]; // @[BitUtils.scala 43:20]
  wire [42:0] _jalOffset_T_48 = jalOffset_signBit_20 ? 43'h7ffffffffff : 43'h0; // @[Bitwise.scala 74:12]
  wire [63:0] jalOffset_6 = {_jalOffset_T_48,_jalOffset_T_46}; // @[Cat.scala 31:58]
  wire [8:0] brOffset_rvc_offset_6 = {rawInsts_6[12],rawInsts_6[6:5],rawInsts_6[2],rawInsts_6[11:10],rawInsts_6[4:3],1'h0
    }; // @[Cat.scala 31:58]
  wire [12:0] brOffset_rvi_offset_6 = {rawInsts_6[31],rawInsts_6[7],rawInsts_6[30:25],rawInsts_6[11:8],1'h0}; // @[Cat.scala 31:58]
  wire  brOffset_signBit_18 = brOffset_rvc_offset_6[8]; // @[BitUtils.scala 43:20]
  wire [3:0] _brOffset_T_43 = brOffset_signBit_18 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [12:0] _brOffset_T_44 = {_brOffset_T_43,rawInsts_6[12],rawInsts_6[6:5],rawInsts_6[2],rawInsts_6[11:10],rawInsts_6
    [4:3],1'h0}; // @[Cat.scala 31:58]
  wire [12:0] _brOffset_T_46 = currentIsRVC_6 ? _brOffset_T_44 : brOffset_rvi_offset_6; // @[PreDecode.scala 50:16]
  wire  brOffset_signBit_20 = _brOffset_T_46[12]; // @[BitUtils.scala 43:20]
  wire [50:0] _brOffset_T_48 = brOffset_signBit_20 ? 51'h7ffffffffffff : 51'h0; // @[Bitwise.scala 74:12]
  wire [63:0] brOffset_6 = {_brOffset_T_48,_brOffset_T_46}; // @[Cat.scala 31:58]
  wire  _io_out_jumpOffset_6_T = io_out_pd_6_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  currentIsRVC_7 = rawInsts_7[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  wire [31:0] _brType_T_119 = rawInsts_7 & 32'he003; // @[Lookup.scala 31:38]
  wire  _brType_T_120 = 32'ha001 == _brType_T_119; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_121 = rawInsts_7 & 32'he07f; // @[Lookup.scala 31:38]
  wire  _brType_T_122 = 32'h8002 == _brType_T_121; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_123 = rawInsts_7 & 32'hc003; // @[Lookup.scala 31:38]
  wire  _brType_T_124 = 32'hc001 == _brType_T_123; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_125 = rawInsts_7 & 32'h7f; // @[Lookup.scala 31:38]
  wire  _brType_T_126 = 32'h6f == _brType_T_125; // @[Lookup.scala 31:38]
  wire [31:0] _brType_T_127 = rawInsts_7 & 32'h707f; // @[Lookup.scala 31:38]
  wire  _brType_T_128 = 32'h67 == _brType_T_127; // @[Lookup.scala 31:38]
  wire  _brType_T_130 = 32'h63 == _brType_T_125; // @[Lookup.scala 31:38]
  wire [1:0] _brType_T_132 = _brType_T_128 ? 2'h3 : {{1'd0}, _brType_T_130}; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_133 = _brType_T_126 ? 2'h2 : _brType_T_132; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_134 = _brType_T_124 ? 2'h1 : _brType_T_133; // @[Lookup.scala 34:39]
  wire [1:0] _brType_T_135 = _brType_T_122 ? 2'h3 : _brType_T_134; // @[Lookup.scala 34:39]
  wire [1:0] brType_7 = _brType_T_120 ? 2'h2 : _brType_T_135; // @[Lookup.scala 34:39]
  wire [4:0] rd_7 = currentIsRVC_7 ? {{4'd0}, rawInsts_7[12]} : rawInsts_7[11:7]; // @[PreDecode.scala 34:17]
  wire  _rs_T_44 = brType_7 == 2'h2; // @[PreDecode.scala 35:43]
  wire [4:0] _rs_T_46 = brType_7 == 2'h2 ? 5'h0 : rawInsts_7[11:7]; // @[PreDecode.scala 35:35]
  wire [4:0] rs_7 = currentIsRVC_7 ? _rs_T_46 : rawInsts_7[19:15]; // @[PreDecode.scala 35:17]
  wire  _isCall_T_75 = brType_7 == 2'h3; // @[PreDecode.scala 36:68]
  wire  _isCall_T_79 = rd_7 == 5'h1 | rd_7 == 5'h5; // @[PreDecode.scala 31:38]
  wire  isCall_7 = (_rs_T_44 & ~currentIsRVC_7 | brType_7 == 2'h3) & _isCall_T_79; // @[PreDecode.scala 36:85]
  wire  _isRet_T_45 = rs_7 == 5'h1 | rs_7 == 5'h5; // @[PreDecode.scala 31:38]
  wire [11:0] jalOffset_rvc_offset_7 = {rawInsts_7[12],rawInsts_7[8],rawInsts_7[10:9],rawInsts_7[6],rawInsts_7[7],
    rawInsts_7[2],rawInsts_7[11],rawInsts_7[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] jalOffset_rvi_offset_7 = {rawInsts_7[31],rawInsts_7[19:12],rawInsts_7[20],rawInsts_7[30:21],1'h0}; // @[Cat.scala 31:58]
  wire  jalOffset_signBit_21 = jalOffset_rvc_offset_7[11]; // @[BitUtils.scala 43:20]
  wire [8:0] _jalOffset_T_50 = jalOffset_signBit_21 ? 9'h1ff : 9'h0; // @[Bitwise.scala 74:12]
  wire [20:0] _jalOffset_T_51 = {_jalOffset_T_50,rawInsts_7[12],rawInsts_7[8],rawInsts_7[10:9],rawInsts_7[6],rawInsts_7[
    7],rawInsts_7[2],rawInsts_7[11],rawInsts_7[5:3],1'h0}; // @[Cat.scala 31:58]
  wire [20:0] _jalOffset_T_53 = currentIsRVC_7 ? _jalOffset_T_51 : jalOffset_rvi_offset_7; // @[PreDecode.scala 44:16]
  wire  jalOffset_signBit_23 = _jalOffset_T_53[20]; // @[BitUtils.scala 43:20]
  wire [42:0] _jalOffset_T_55 = jalOffset_signBit_23 ? 43'h7ffffffffff : 43'h0; // @[Bitwise.scala 74:12]
  wire [63:0] jalOffset_7 = {_jalOffset_T_55,_jalOffset_T_53}; // @[Cat.scala 31:58]
  wire [8:0] brOffset_rvc_offset_7 = {rawInsts_7[12],rawInsts_7[6:5],rawInsts_7[2],rawInsts_7[11:10],rawInsts_7[4:3],1'h0
    }; // @[Cat.scala 31:58]
  wire [12:0] brOffset_rvi_offset_7 = {rawInsts_7[31],rawInsts_7[7],rawInsts_7[30:25],rawInsts_7[11:8],1'h0}; // @[Cat.scala 31:58]
  wire  brOffset_signBit_21 = brOffset_rvc_offset_7[8]; // @[BitUtils.scala 43:20]
  wire [3:0] _brOffset_T_50 = brOffset_signBit_21 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [12:0] _brOffset_T_51 = {_brOffset_T_50,rawInsts_7[12],rawInsts_7[6:5],rawInsts_7[2],rawInsts_7[11:10],rawInsts_7
    [4:3],1'h0}; // @[Cat.scala 31:58]
  wire [12:0] _brOffset_T_53 = currentIsRVC_7 ? _brOffset_T_51 : brOffset_rvi_offset_7; // @[PreDecode.scala 50:16]
  wire  brOffset_signBit_23 = _brOffset_T_53[12]; // @[BitUtils.scala 43:20]
  wire [50:0] _brOffset_T_55 = brOffset_signBit_23 ? 51'h7ffffffffffff : 51'h0; // @[Bitwise.scala 74:12]
  wire [63:0] brOffset_7 = {_brOffset_T_55,_brOffset_T_53}; // @[Cat.scala 31:58]
  wire  _io_out_jumpOffset_7_T = io_out_pd_7_brType == 2'h1; // @[PreDecode.scala 76:24]
  RVCExpander expander ( // @[PreDecode.scala 107:32]
    .io_in(expander_io_in),
    .io_out_bits(expander_io_out_bits)
  );
  RVCExpander expander_1 ( // @[PreDecode.scala 107:32]
    .io_in(expander_1_io_in),
    .io_out_bits(expander_1_io_out_bits)
  );
  RVCExpander expander_2 ( // @[PreDecode.scala 107:32]
    .io_in(expander_2_io_in),
    .io_out_bits(expander_2_io_out_bits)
  );
  RVCExpander expander_3 ( // @[PreDecode.scala 107:32]
    .io_in(expander_3_io_in),
    .io_out_bits(expander_3_io_out_bits)
  );
  RVCExpander expander_4 ( // @[PreDecode.scala 107:32]
    .io_in(expander_4_io_in),
    .io_out_bits(expander_4_io_out_bits)
  );
  RVCExpander expander_5 ( // @[PreDecode.scala 107:32]
    .io_in(expander_5_io_in),
    .io_out_bits(expander_5_io_out_bits)
  );
  RVCExpander expander_6 ( // @[PreDecode.scala 107:32]
    .io_in(expander_6_io_in),
    .io_out_bits(expander_6_io_out_bits)
  );
  RVCExpander expander_7 ( // @[PreDecode.scala 107:32]
    .io_in(expander_7_io_in),
    .io_out_bits(expander_7_io_out_bits)
  );
  assign io_out_pd_0_isRVC = rawInsts_0[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  assign io_out_pd_0_brType = _brType_T_1 ? 2'h2 : _brType_T_16; // @[Lookup.scala 34:39]
  assign io_out_pd_0_isCall = (_rs_T_2 & ~currentIsRVC | brType == 2'h3) & _isCall_T_9; // @[PreDecode.scala 36:85]
  assign io_out_pd_0_isRet = _isCall_T_5 & _isRet_T_3 & ~isCall; // @[PreDecode.scala 37:54]
  assign io_out_pd_1_valid = rawInsts_0[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  assign io_out_pd_1_isRVC = rawInsts_1[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  assign io_out_pd_1_brType = _brType_T_18 ? 2'h2 : _brType_T_33; // @[Lookup.scala 34:39]
  assign io_out_pd_1_isCall = (_rs_T_8 & ~currentIsRVC_1 | brType_1 == 2'h3) & _isCall_T_19; // @[PreDecode.scala 36:85]
  assign io_out_pd_1_isRet = _isCall_T_15 & _isRet_T_9 & ~isCall_1; // @[PreDecode.scala 37:54]
  assign io_out_pd_2_valid = currentIsRVC & currentIsRVC_1 | _isCall_T_3; // @[PreDecode.scala 119:54]
  assign io_out_pd_2_isRVC = rawInsts_2[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  assign io_out_pd_2_brType = _brType_T_35 ? 2'h2 : _brType_T_50; // @[Lookup.scala 34:39]
  assign io_out_pd_2_isCall = (_rs_T_14 & ~currentIsRVC_2 | brType_2 == 2'h3) & _isCall_T_29; // @[PreDecode.scala 36:85]
  assign io_out_pd_2_isRet = _isCall_T_25 & _isRet_T_15 & ~isCall_2; // @[PreDecode.scala 37:54]
  assign io_out_pd_3_valid = validEnd_1 & currentIsRVC_2 | ~validEnd_1; // @[PreDecode.scala 119:54]
  assign io_out_pd_3_isRVC = rawInsts_3[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  assign io_out_pd_3_brType = _brType_T_52 ? 2'h2 : _brType_T_67; // @[Lookup.scala 34:39]
  assign io_out_pd_3_isCall = (_rs_T_20 & ~currentIsRVC_3 | brType_3 == 2'h3) & _isCall_T_39; // @[PreDecode.scala 36:85]
  assign io_out_pd_3_isRet = _isCall_T_35 & _isRet_T_21 & ~isCall_3; // @[PreDecode.scala 37:54]
  assign io_out_pd_4_valid = validEnd_2 & currentIsRVC_3 | ~validEnd_2; // @[PreDecode.scala 119:54]
  assign io_out_pd_4_isRVC = rawInsts_4[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  assign io_out_pd_4_brType = _brType_T_69 ? 2'h2 : _brType_T_84; // @[Lookup.scala 34:39]
  assign io_out_pd_4_isCall = (_rs_T_26 & ~currentIsRVC_4 | brType_4 == 2'h3) & _isCall_T_49; // @[PreDecode.scala 36:85]
  assign io_out_pd_4_isRet = _isCall_T_45 & _isRet_T_27 & ~isCall_4; // @[PreDecode.scala 37:54]
  assign io_out_pd_5_valid = validEnd_3 & currentIsRVC_4 | ~validEnd_3; // @[PreDecode.scala 119:54]
  assign io_out_pd_5_isRVC = rawInsts_5[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  assign io_out_pd_5_brType = _brType_T_86 ? 2'h2 : _brType_T_101; // @[Lookup.scala 34:39]
  assign io_out_pd_5_isCall = (_rs_T_32 & ~currentIsRVC_5 | brType_5 == 2'h3) & _isCall_T_59; // @[PreDecode.scala 36:85]
  assign io_out_pd_5_isRet = _isCall_T_55 & _isRet_T_33 & ~isCall_5; // @[PreDecode.scala 37:54]
  assign io_out_pd_6_valid = validEnd_4 & currentIsRVC_5 | ~validEnd_4; // @[PreDecode.scala 119:54]
  assign io_out_pd_6_isRVC = rawInsts_6[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  assign io_out_pd_6_brType = _brType_T_103 ? 2'h2 : _brType_T_118; // @[Lookup.scala 34:39]
  assign io_out_pd_6_isCall = (_rs_T_38 & ~currentIsRVC_6 | brType_6 == 2'h3) & _isCall_T_69; // @[PreDecode.scala 36:85]
  assign io_out_pd_6_isRet = _isCall_T_65 & _isRet_T_39 & ~isCall_6; // @[PreDecode.scala 37:54]
  assign io_out_pd_7_valid = validEnd_5 & currentIsRVC_6 | ~validEnd_5; // @[PreDecode.scala 119:54]
  assign io_out_pd_7_isRVC = rawInsts_7[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  assign io_out_pd_7_brType = _brType_T_120 ? 2'h2 : _brType_T_135; // @[Lookup.scala 34:39]
  assign io_out_pd_7_isCall = (_rs_T_44 & ~currentIsRVC_7 | brType_7 == 2'h3) & _isCall_T_79; // @[PreDecode.scala 36:85]
  assign io_out_pd_7_isRet = _isCall_T_75 & _isRet_T_45 & ~isCall_7; // @[PreDecode.scala 37:54]
  assign io_out_hasHalfValid_2 = rawInsts_1[1:0] != 2'h3; // @[PreDecode.scala 30:38]
  assign io_out_hasHalfValid_3 = currentIsRVC_1 & currentIsRVC_2 | _isCall_T_13; // @[PreDecode.scala 125:58]
  assign io_out_hasHalfValid_4 = h_validEnd_2 & currentIsRVC_3 | ~h_validEnd_2; // @[PreDecode.scala 125:58]
  assign io_out_hasHalfValid_5 = h_validEnd_3 & currentIsRVC_4 | ~h_validEnd_3; // @[PreDecode.scala 125:58]
  assign io_out_hasHalfValid_6 = h_validEnd_4 & currentIsRVC_5 | ~h_validEnd_4; // @[PreDecode.scala 125:58]
  assign io_out_hasHalfValid_7 = h_validEnd_5 & currentIsRVC_6 | ~h_validEnd_5; // @[PreDecode.scala 125:58]
  assign io_out_expInstr_0 = expander_io_out_bits; // @[PreDecode.scala 138:32]
  assign io_out_expInstr_1 = expander_1_io_out_bits; // @[PreDecode.scala 138:32]
  assign io_out_expInstr_2 = expander_2_io_out_bits; // @[PreDecode.scala 138:32]
  assign io_out_expInstr_3 = expander_3_io_out_bits; // @[PreDecode.scala 138:32]
  assign io_out_expInstr_4 = expander_4_io_out_bits; // @[PreDecode.scala 138:32]
  assign io_out_expInstr_5 = expander_5_io_out_bits; // @[PreDecode.scala 138:32]
  assign io_out_expInstr_6 = expander_6_io_out_bits; // @[PreDecode.scala 138:32]
  assign io_out_expInstr_7 = expander_7_io_out_bits; // @[PreDecode.scala 138:32]
  assign io_out_jumpOffset_0 = _io_out_jumpOffset_0_T ? brOffset : jalOffset; // @[PreDecode.scala 139:38]
  assign io_out_jumpOffset_1 = _io_out_jumpOffset_1_T ? brOffset_1 : jalOffset_1; // @[PreDecode.scala 139:38]
  assign io_out_jumpOffset_2 = _io_out_jumpOffset_2_T ? brOffset_2 : jalOffset_2; // @[PreDecode.scala 139:38]
  assign io_out_jumpOffset_3 = _io_out_jumpOffset_3_T ? brOffset_3 : jalOffset_3; // @[PreDecode.scala 139:38]
  assign io_out_jumpOffset_4 = _io_out_jumpOffset_4_T ? brOffset_4 : jalOffset_4; // @[PreDecode.scala 139:38]
  assign io_out_jumpOffset_5 = _io_out_jumpOffset_5_T ? brOffset_5 : jalOffset_5; // @[PreDecode.scala 139:38]
  assign io_out_jumpOffset_6 = _io_out_jumpOffset_6_T ? brOffset_6 : jalOffset_6; // @[PreDecode.scala 139:38]
  assign io_out_jumpOffset_7 = _io_out_jumpOffset_7_T ? brOffset_7 : jalOffset_7; // @[PreDecode.scala 139:38]
  assign expander_io_in = {io_in_data_1,io_in_data_0}; // @[Cat.scala 31:58]
  assign expander_1_io_in = {io_in_data_2,io_in_data_1}; // @[Cat.scala 31:58]
  assign expander_2_io_in = {io_in_data_3,io_in_data_2}; // @[Cat.scala 31:58]
  assign expander_3_io_in = {io_in_data_4,io_in_data_3}; // @[Cat.scala 31:58]
  assign expander_4_io_in = {io_in_data_5,io_in_data_4}; // @[Cat.scala 31:58]
  assign expander_5_io_in = {io_in_data_6,io_in_data_5}; // @[Cat.scala 31:58]
  assign expander_6_io_in = {io_in_data_7,io_in_data_6}; // @[Cat.scala 31:58]
  assign expander_7_io_in = {io_in_data_8,io_in_data_7}; // @[Cat.scala 31:58]
endmodule
