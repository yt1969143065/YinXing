module AluDataModule(
  input  [63:0] io_src_0,
  input  [63:0] io_src_1,
  input  [6:0]  io_func,
  input         io_pred_taken,
  input         io_isBranch,
  output [63:0] io_result,
  output        io_taken,
  output        io_mispredict
);
  wire [5:0] leftShiftModule_io_shamt; // @[Alu.scala 195:31]
  wire [5:0] leftShiftModule_io_revShamt; // @[Alu.scala 195:31]
  wire [63:0] leftShiftModule_io_sllSrc; // @[Alu.scala 195:31]
  wire [63:0] leftShiftModule_io_sll; // @[Alu.scala 195:31]
  wire [63:0] leftShiftModule_io_revSll; // @[Alu.scala 195:31]
  wire [5:0] rightShiftModule_io_shamt; // @[Alu.scala 209:32]
  wire [5:0] rightShiftModule_io_revShamt; // @[Alu.scala 209:32]
  wire [63:0] rightShiftModule_io_srlSrc; // @[Alu.scala 209:32]
  wire [63:0] rightShiftModule_io_sraSrc; // @[Alu.scala 209:32]
  wire [63:0] rightShiftModule_io_srl; // @[Alu.scala 209:32]
  wire [63:0] rightShiftModule_io_sra; // @[Alu.scala 209:32]
  wire [63:0] rightShiftModule_io_revSrl; // @[Alu.scala 209:32]
  wire [63:0] addModule_io_src_0; // @[Alu.scala 223:25]
  wire [63:0] addModule_io_src_1; // @[Alu.scala 223:25]
  wire [31:0] addModule_io_srcw; // @[Alu.scala 223:25]
  wire [63:0] addModule_io_add; // @[Alu.scala 223:25]
  wire [31:0] addModule_io_addw; // @[Alu.scala 223:25]
  wire [63:0] subModule_io_src_0; // @[Alu.scala 234:25]
  wire [63:0] subModule_io_src_1; // @[Alu.scala 234:25]
  wire [64:0] subModule_io_sub; // @[Alu.scala 234:25]
  wire [4:0] leftShiftWordModule_io_shamt; // @[Alu.scala 238:35]
  wire [4:0] leftShiftWordModule_io_revShamt; // @[Alu.scala 238:35]
  wire [31:0] leftShiftWordModule_io_sllSrc; // @[Alu.scala 238:35]
  wire [31:0] leftShiftWordModule_io_sllw; // @[Alu.scala 238:35]
  wire [31:0] leftShiftWordModule_io_revSllw; // @[Alu.scala 238:35]
  wire [4:0] rightShiftWordModule_io_shamt; // @[Alu.scala 245:36]
  wire [4:0] rightShiftWordModule_io_revShamt; // @[Alu.scala 245:36]
  wire [31:0] rightShiftWordModule_io_srlSrc; // @[Alu.scala 245:36]
  wire [31:0] rightShiftWordModule_io_sraSrc; // @[Alu.scala 245:36]
  wire [31:0] rightShiftWordModule_io_srlw; // @[Alu.scala 245:36]
  wire [31:0] rightShiftWordModule_io_sraw; // @[Alu.scala 245:36]
  wire [31:0] rightShiftWordModule_io_revSrlw; // @[Alu.scala 245:36]
  wire [3:0] shiftResSel_io_func; // @[Alu.scala 316:27]
  wire [63:0] shiftResSel_io_sll; // @[Alu.scala 316:27]
  wire [63:0] shiftResSel_io_srl; // @[Alu.scala 316:27]
  wire [63:0] shiftResSel_io_sra; // @[Alu.scala 316:27]
  wire [63:0] shiftResSel_io_rol; // @[Alu.scala 316:27]
  wire [63:0] shiftResSel_io_ror; // @[Alu.scala 316:27]
  wire [63:0] shiftResSel_io_bclr; // @[Alu.scala 316:27]
  wire [63:0] shiftResSel_io_bset; // @[Alu.scala 316:27]
  wire [63:0] shiftResSel_io_binv; // @[Alu.scala 316:27]
  wire [63:0] shiftResSel_io_bext; // @[Alu.scala 316:27]
  wire [63:0] shiftResSel_io_shiftRes; // @[Alu.scala 316:27]
  wire [5:0] miscResSel_io_func; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_and; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_or; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_xor; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_orcb; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_orh48; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_sextb; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_packh; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_sexth; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_packw; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_revb; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_rev8; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_pack; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_src; // @[Alu.scala 329:26]
  wire [63:0] miscResSel_io_miscRes; // @[Alu.scala 329:26]
  wire [6:0] wordResSel_io_func; // @[Alu.scala 346:26]
  wire [31:0] wordResSel_io_sllw; // @[Alu.scala 346:26]
  wire [31:0] wordResSel_io_srlw; // @[Alu.scala 346:26]
  wire [31:0] wordResSel_io_sraw; // @[Alu.scala 346:26]
  wire [31:0] wordResSel_io_rolw; // @[Alu.scala 346:26]
  wire [31:0] wordResSel_io_rorw; // @[Alu.scala 346:26]
  wire [31:0] wordResSel_io_addw; // @[Alu.scala 346:26]
  wire [31:0] wordResSel_io_subw; // @[Alu.scala 346:26]
  wire [63:0] wordResSel_io_wordRes; // @[Alu.scala 346:26]
  wire [2:0] aluResSel_io_func; // @[Alu.scala 357:25]
  wire [63:0] aluResSel_io_addRes; // @[Alu.scala 357:25]
  wire [63:0] aluResSel_io_shiftRes; // @[Alu.scala 357:25]
  wire [63:0] aluResSel_io_miscRes; // @[Alu.scala 357:25]
  wire [63:0] aluResSel_io_compareRes; // @[Alu.scala 357:25]
  wire [63:0] aluResSel_io_wordRes; // @[Alu.scala 357:25]
  wire [63:0] aluResSel_io_aluRes; // @[Alu.scala 357:25]
  wire [5:0] shamt = io_src_1[5:0]; // @[Alu.scala 191:19]
  wire [5:0] _revShamt_T_1 = ~shamt; // @[Alu.scala 192:18]
  wire [5:0] revShamt = _revShamt_T_1 + 6'h1; // @[Alu.scala 192:29]
  wire [31:0] _leftShiftModule_io_sllSrc_T_2 = io_func[0] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _leftShiftModule_io_sllSrc_T_4 = {_leftShiftModule_io_sllSrc_T_2,32'hffffffff}; // @[Cat.scala 31:58]
  wire [63:0] _leftShiftModule_io_sllSrc_T_5 = _leftShiftModule_io_sllSrc_T_4 & io_src_0; // @[Alu.scala 198:70]
  wire [63:0] bitShift = 64'h1 << shamt; // @[Alu.scala 203:22]
  wire [63:0] _bclr_T = ~bitShift; // @[Alu.scala 204:21]
  wire  bext = rightShiftModule_io_srl[0]; // @[Alu.scala 217:17]
  wire [63:0] _addModule_io_srcw_T_5 = {63'h0,io_src_0[0]}; // @[Cat.scala 31:58]
  wire [63:0] _addModule_io_srcw_T_7 = ~io_func[2] & io_func[0] ? _addModule_io_srcw_T_5 : {{32'd0}, io_src_0[31:0]}; // @[Alu.scala 224:27]
  wire [63:0] addwResultAll_0 = {63'h0,addModule_io_addw[0]}; // @[Cat.scala 31:58]
  wire [63:0] addwResultAll_1 = {56'h0,addModule_io_addw[7:0]}; // @[Cat.scala 31:58]
  wire [63:0] addwResultAll_2 = {48'h0,addModule_io_addw[15:0]}; // @[Cat.scala 31:58]
  wire  addwResultAll_signBit = addModule_io_addw[15]; // @[BitUtils.scala 43:20]
  wire [47:0] _addwResultAll_T_8 = addwResultAll_signBit ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 74:12]
  wire [63:0] addwResultAll_3 = {_addwResultAll_T_8,addModule_io_addw[15:0]}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_1 = 2'h1 == io_func[1:0] ? addwResultAll_1 : addwResultAll_0; // @[Alu.scala 231:{17,17}]
  wire [63:0] _GEN_2 = 2'h2 == io_func[1:0] ? addwResultAll_2 : _GEN_1; // @[Alu.scala 231:{17,17}]
  wire [63:0] _GEN_3 = 2'h3 == io_func[1:0] ? addwResultAll_3 : _GEN_2; // @[Alu.scala 231:{17,17}]
  wire [63:0] addw = io_func[2] ? _GEN_3 : {{32'd0}, addModule_io_addw}; // @[Alu.scala 231:17]
  wire [63:0] shaddSource_0 = {_leftShiftModule_io_sllSrc_T_5[62:0],1'h0}; // @[Cat.scala 31:58]
  wire [63:0] shaddSource_1 = {_leftShiftModule_io_sllSrc_T_5[61:0],2'h0}; // @[Cat.scala 31:58]
  wire [63:0] shaddSource_2 = {_leftShiftModule_io_sllSrc_T_5[60:0],3'h0}; // @[Cat.scala 31:58]
  wire [63:0] shaddSource_3 = {_leftShiftModule_io_sllSrc_T_5[59:0],4'h0}; // @[Cat.scala 31:58]
  wire [63:0] sraddSource_0 = {29'h0,io_src_0[63:29]}; // @[Cat.scala 31:58]
  wire [63:0] sraddSource_1 = {30'h0,io_src_0[63:30]}; // @[Cat.scala 31:58]
  wire [63:0] sraddSource_2 = {31'h0,io_src_0[63:31]}; // @[Cat.scala 31:58]
  wire [63:0] sraddSource_3 = {32'h0,io_src_0[63:32]}; // @[Cat.scala 31:58]
  wire [63:0] _addModule_io_src_0_T_7 = io_func[1] ? _addModule_io_srcw_T_5 : _leftShiftModule_io_sllSrc_T_5; // @[Alu.scala 275:8]
  wire [63:0] _GEN_5 = 2'h1 == io_func[1:0] ? sraddSource_1 : sraddSource_0; // @[Alu.scala 274:{8,8}]
  wire [63:0] _GEN_6 = 2'h2 == io_func[1:0] ? sraddSource_2 : _GEN_5; // @[Alu.scala 274:{8,8}]
  wire [63:0] _GEN_7 = 2'h3 == io_func[1:0] ? sraddSource_3 : _GEN_6; // @[Alu.scala 274:{8,8}]
  wire [63:0] _addModule_io_src_0_T_8 = io_func[2] ? _GEN_7 : _addModule_io_src_0_T_7; // @[Alu.scala 274:8]
  wire [63:0] _GEN_9 = 2'h1 == io_func[2:1] ? shaddSource_1 : shaddSource_0; // @[Alu.scala 273:{29,29}]
  wire [63:0] _GEN_10 = 2'h2 == io_func[2:1] ? shaddSource_2 : _GEN_9; // @[Alu.scala 273:{29,29}]
  wire [63:0] _GEN_11 = 2'h3 == io_func[2:1] ? shaddSource_3 : _GEN_10; // @[Alu.scala 273:{29,29}]
  wire  sltu = ~subModule_io_sub[64]; // @[Alu.scala 284:17]
  wire  slt = io_src_0[63] ^ io_src_1[63] ^ sltu; // @[Alu.scala 285:49]
  wire [63:0] maxMin = slt ^ io_func[0] ? io_src_1 : io_src_0; // @[Alu.scala 286:20]
  wire [63:0] maxMinU = sltu ^ io_func[0] ? io_src_1 : io_src_0; // @[Alu.scala 287:20]
  wire [63:0] _compareRes_T_2 = io_func[1] ? maxMin : maxMinU; // @[Alu.scala 288:36]
  wire [64:0] _compareRes_T_5 = io_func[0] ? {{64'd0}, sltu} : subModule_io_sub; // @[Alu.scala 288:85]
  wire [64:0] _compareRes_T_6 = io_func[1] ? {{64'd0}, slt} : _compareRes_T_5; // @[Alu.scala 288:67]
  wire [64:0] compareRes = io_func[2] ? {{1'd0}, _compareRes_T_2} : _compareRes_T_6; // @[Alu.scala 288:23]
  wire [63:0] _logicSrc2_T_4 = ~io_src_1; // @[Alu.scala 291:44]
  wire [63:0] logicSrc2 = ~io_func[5] & io_func[0] ? _logicSrc2_T_4 : io_src_1; // @[Alu.scala 291:22]
  wire [63:0] xor_ = io_src_0 ^ logicSrc2; // @[Alu.scala 294:22]
  wire  _orcb_T_1 = |io_src_0[7:0]; // @[Alu.scala 295:73]
  wire [7:0] _orcb_T_3 = _orcb_T_1 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire  _orcb_T_5 = |io_src_0[15:8]; // @[Alu.scala 295:73]
  wire [7:0] _orcb_T_7 = _orcb_T_5 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire  _orcb_T_9 = |io_src_0[23:16]; // @[Alu.scala 295:73]
  wire [7:0] _orcb_T_11 = _orcb_T_9 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire  _orcb_T_13 = |io_src_0[31:24]; // @[Alu.scala 295:73]
  wire [7:0] _orcb_T_15 = _orcb_T_13 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire  _orcb_T_17 = |io_src_0[39:32]; // @[Alu.scala 295:73]
  wire [7:0] _orcb_T_19 = _orcb_T_17 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire  _orcb_T_21 = |io_src_0[47:40]; // @[Alu.scala 295:73]
  wire [7:0] _orcb_T_23 = _orcb_T_21 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire  _orcb_T_25 = |io_src_0[55:48]; // @[Alu.scala 295:73]
  wire [7:0] _orcb_T_27 = _orcb_T_25 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire  _orcb_T_29 = |io_src_0[63:56]; // @[Alu.scala 295:73]
  wire [7:0] _orcb_T_31 = _orcb_T_29 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [31:0] orcb_lo = {_orcb_T_15,_orcb_T_11,_orcb_T_7,_orcb_T_3}; // @[Cat.scala 31:58]
  wire [31:0] orcb_hi = {_orcb_T_31,_orcb_T_27,_orcb_T_23,_orcb_T_19}; // @[Cat.scala 31:58]
  wire [63:0] _orh48_T_1 = {io_src_0[63:8],8'h0}; // @[Cat.scala 31:58]
  wire  sextb_signBit = io_src_0[7]; // @[BitUtils.scala 43:20]
  wire [55:0] _sextb_T_2 = sextb_signBit ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 74:12]
  wire [15:0] packh = {io_src_1[7:0],io_src_0[7:0]}; // @[Cat.scala 31:58]
  wire  sexth_signBit = io_src_0[15]; // @[BitUtils.scala 43:20]
  wire [47:0] _sexth_T_2 = sexth_signBit ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _packw_T_2 = {io_src_1[15:0],io_src_0[15:0]}; // @[Cat.scala 31:58]
  wire  packw_signBit = _packw_T_2[31]; // @[BitUtils.scala 43:20]
  wire [31:0] _packw_T_4 = packw_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _GEN_12 = {{4'd0}, io_src_0[7:4]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_4 = _GEN_12 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_6 = {io_src_0[3:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_8 = _revb_T_6 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_9 = _revb_T_4 | _revb_T_8; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_13 = {{2'd0}, _revb_T_9[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_14 = _GEN_13 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_16 = {_revb_T_9[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_18 = _revb_T_16 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_19 = _revb_T_14 | _revb_T_18; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_14 = {{1'd0}, _revb_T_19[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_24 = _GEN_14 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_26 = {_revb_T_19[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_28 = _revb_T_26 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_29 = _revb_T_24 | _revb_T_28; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_15 = {{4'd0}, io_src_0[15:12]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_34 = _GEN_15 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_36 = {io_src_0[11:8], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_38 = _revb_T_36 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_39 = _revb_T_34 | _revb_T_38; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_16 = {{2'd0}, _revb_T_39[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_44 = _GEN_16 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_46 = {_revb_T_39[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_48 = _revb_T_46 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_49 = _revb_T_44 | _revb_T_48; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_17 = {{1'd0}, _revb_T_49[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_54 = _GEN_17 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_56 = {_revb_T_49[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_58 = _revb_T_56 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_59 = _revb_T_54 | _revb_T_58; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_18 = {{4'd0}, io_src_0[23:20]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_64 = _GEN_18 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_66 = {io_src_0[19:16], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_68 = _revb_T_66 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_69 = _revb_T_64 | _revb_T_68; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_19 = {{2'd0}, _revb_T_69[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_74 = _GEN_19 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_76 = {_revb_T_69[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_78 = _revb_T_76 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_79 = _revb_T_74 | _revb_T_78; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_20 = {{1'd0}, _revb_T_79[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_84 = _GEN_20 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_86 = {_revb_T_79[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_88 = _revb_T_86 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_89 = _revb_T_84 | _revb_T_88; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_21 = {{4'd0}, io_src_0[31:28]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_94 = _GEN_21 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_96 = {io_src_0[27:24], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_98 = _revb_T_96 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_99 = _revb_T_94 | _revb_T_98; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_22 = {{2'd0}, _revb_T_99[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_104 = _GEN_22 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_106 = {_revb_T_99[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_108 = _revb_T_106 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_109 = _revb_T_104 | _revb_T_108; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_23 = {{1'd0}, _revb_T_109[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_114 = _GEN_23 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_116 = {_revb_T_109[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_118 = _revb_T_116 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_119 = _revb_T_114 | _revb_T_118; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_24 = {{4'd0}, io_src_0[39:36]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_124 = _GEN_24 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_126 = {io_src_0[35:32], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_128 = _revb_T_126 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_129 = _revb_T_124 | _revb_T_128; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_25 = {{2'd0}, _revb_T_129[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_134 = _GEN_25 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_136 = {_revb_T_129[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_138 = _revb_T_136 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_139 = _revb_T_134 | _revb_T_138; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_26 = {{1'd0}, _revb_T_139[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_144 = _GEN_26 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_146 = {_revb_T_139[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_148 = _revb_T_146 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_149 = _revb_T_144 | _revb_T_148; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_27 = {{4'd0}, io_src_0[47:44]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_154 = _GEN_27 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_156 = {io_src_0[43:40], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_158 = _revb_T_156 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_159 = _revb_T_154 | _revb_T_158; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_28 = {{2'd0}, _revb_T_159[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_164 = _GEN_28 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_166 = {_revb_T_159[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_168 = _revb_T_166 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_169 = _revb_T_164 | _revb_T_168; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_29 = {{1'd0}, _revb_T_169[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_174 = _GEN_29 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_176 = {_revb_T_169[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_178 = _revb_T_176 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_179 = _revb_T_174 | _revb_T_178; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_30 = {{4'd0}, io_src_0[55:52]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_184 = _GEN_30 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_186 = {io_src_0[51:48], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_188 = _revb_T_186 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_189 = _revb_T_184 | _revb_T_188; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_31 = {{2'd0}, _revb_T_189[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_194 = _GEN_31 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_196 = {_revb_T_189[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_198 = _revb_T_196 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_199 = _revb_T_194 | _revb_T_198; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_32 = {{1'd0}, _revb_T_199[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_204 = _GEN_32 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_206 = {_revb_T_199[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_208 = _revb_T_206 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_209 = _revb_T_204 | _revb_T_208; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_33 = {{4'd0}, io_src_0[63:60]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_214 = _GEN_33 & 8'hf; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_216 = {io_src_0[59:56], 4'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_218 = _revb_T_216 & 8'hf0; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_219 = _revb_T_214 | _revb_T_218; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_34 = {{2'd0}, _revb_T_219[7:2]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_224 = _GEN_34 & 8'h33; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_226 = {_revb_T_219[5:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_228 = _revb_T_226 & 8'hcc; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_229 = _revb_T_224 | _revb_T_228; // @[Bitwise.scala 105:39]
  wire [7:0] _GEN_35 = {{1'd0}, _revb_T_229[7:1]}; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_234 = _GEN_35 & 8'h55; // @[Bitwise.scala 105:31]
  wire [7:0] _revb_T_236 = {_revb_T_229[6:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [7:0] _revb_T_238 = _revb_T_236 & 8'haa; // @[Bitwise.scala 105:80]
  wire [7:0] _revb_T_239 = _revb_T_234 | _revb_T_238; // @[Bitwise.scala 105:39]
  wire [31:0] revb_lo = {_revb_T_119,_revb_T_89,_revb_T_59,_revb_T_29}; // @[Cat.scala 31:58]
  wire [31:0] revb_hi = {_revb_T_239,_revb_T_209,_revb_T_179,_revb_T_149}; // @[Cat.scala 31:58]
  wire [31:0] rev8_lo = {io_src_0[39:32],io_src_0[47:40],io_src_0[55:48],io_src_0[63:56]}; // @[Cat.scala 31:58]
  wire [31:0] rev8_hi = {io_src_0[7:0],io_src_0[15:8],io_src_0[23:16],io_src_0[31:24]}; // @[Cat.scala 31:58]
  wire  _T_1 = ~(|xor_); // @[Alu.scala 309:48]
  wire  _taken_T_1 = 2'h0 == io_func[3:2]; // @[LookupTree.scala 25:34]
  wire  _taken_T_2 = 2'h2 == io_func[3:2]; // @[LookupTree.scala 25:34]
  wire  _taken_T_3 = 2'h3 == io_func[3:2]; // @[LookupTree.scala 25:34]
  wire  _taken_T_8 = _taken_T_1 & _T_1 | _taken_T_2 & slt | _taken_T_3 & sltu; // @[Mux.scala 27:73]
  wire  taken = _taken_T_8 ^ io_func[1]; // @[Alu.scala 313:72]
  LeftShiftModule leftShiftModule ( // @[Alu.scala 195:31]
    .io_shamt(leftShiftModule_io_shamt),
    .io_revShamt(leftShiftModule_io_revShamt),
    .io_sllSrc(leftShiftModule_io_sllSrc),
    .io_sll(leftShiftModule_io_sll),
    .io_revSll(leftShiftModule_io_revSll)
  );
  RightShiftModule rightShiftModule ( // @[Alu.scala 209:32]
    .io_shamt(rightShiftModule_io_shamt),
    .io_revShamt(rightShiftModule_io_revShamt),
    .io_srlSrc(rightShiftModule_io_srlSrc),
    .io_sraSrc(rightShiftModule_io_sraSrc),
    .io_srl(rightShiftModule_io_srl),
    .io_sra(rightShiftModule_io_sra),
    .io_revSrl(rightShiftModule_io_revSrl)
  );
  AddModule addModule ( // @[Alu.scala 223:25]
    .io_src_0(addModule_io_src_0),
    .io_src_1(addModule_io_src_1),
    .io_srcw(addModule_io_srcw),
    .io_add(addModule_io_add),
    .io_addw(addModule_io_addw)
  );
  SubModule subModule ( // @[Alu.scala 234:25]
    .io_src_0(subModule_io_src_0),
    .io_src_1(subModule_io_src_1),
    .io_sub(subModule_io_sub)
  );
  LeftShiftWordModule leftShiftWordModule ( // @[Alu.scala 238:35]
    .io_shamt(leftShiftWordModule_io_shamt),
    .io_revShamt(leftShiftWordModule_io_revShamt),
    .io_sllSrc(leftShiftWordModule_io_sllSrc),
    .io_sllw(leftShiftWordModule_io_sllw),
    .io_revSllw(leftShiftWordModule_io_revSllw)
  );
  RightShiftWordModule rightShiftWordModule ( // @[Alu.scala 245:36]
    .io_shamt(rightShiftWordModule_io_shamt),
    .io_revShamt(rightShiftWordModule_io_revShamt),
    .io_srlSrc(rightShiftWordModule_io_srlSrc),
    .io_sraSrc(rightShiftWordModule_io_sraSrc),
    .io_srlw(rightShiftWordModule_io_srlw),
    .io_sraw(rightShiftWordModule_io_sraw),
    .io_revSrlw(rightShiftWordModule_io_revSrlw)
  );
  ShiftResultSelect shiftResSel ( // @[Alu.scala 316:27]
    .io_func(shiftResSel_io_func),
    .io_sll(shiftResSel_io_sll),
    .io_srl(shiftResSel_io_srl),
    .io_sra(shiftResSel_io_sra),
    .io_rol(shiftResSel_io_rol),
    .io_ror(shiftResSel_io_ror),
    .io_bclr(shiftResSel_io_bclr),
    .io_bset(shiftResSel_io_bset),
    .io_binv(shiftResSel_io_binv),
    .io_bext(shiftResSel_io_bext),
    .io_shiftRes(shiftResSel_io_shiftRes)
  );
  MiscResultSelect miscResSel ( // @[Alu.scala 329:26]
    .io_func(miscResSel_io_func),
    .io_and(miscResSel_io_and),
    .io_or(miscResSel_io_or),
    .io_xor(miscResSel_io_xor),
    .io_orcb(miscResSel_io_orcb),
    .io_orh48(miscResSel_io_orh48),
    .io_sextb(miscResSel_io_sextb),
    .io_packh(miscResSel_io_packh),
    .io_sexth(miscResSel_io_sexth),
    .io_packw(miscResSel_io_packw),
    .io_revb(miscResSel_io_revb),
    .io_rev8(miscResSel_io_rev8),
    .io_pack(miscResSel_io_pack),
    .io_src(miscResSel_io_src),
    .io_miscRes(miscResSel_io_miscRes)
  );
  WordResultSelect wordResSel ( // @[Alu.scala 346:26]
    .io_func(wordResSel_io_func),
    .io_sllw(wordResSel_io_sllw),
    .io_srlw(wordResSel_io_srlw),
    .io_sraw(wordResSel_io_sraw),
    .io_rolw(wordResSel_io_rolw),
    .io_rorw(wordResSel_io_rorw),
    .io_addw(wordResSel_io_addw),
    .io_subw(wordResSel_io_subw),
    .io_wordRes(wordResSel_io_wordRes)
  );
  AluResSel aluResSel ( // @[Alu.scala 357:25]
    .io_func(aluResSel_io_func),
    .io_addRes(aluResSel_io_addRes),
    .io_shiftRes(aluResSel_io_shiftRes),
    .io_miscRes(aluResSel_io_miscRes),
    .io_compareRes(aluResSel_io_compareRes),
    .io_wordRes(aluResSel_io_wordRes),
    .io_aluRes(aluResSel_io_aluRes)
  );
  assign io_result = aluResSel_io_aluRes; // @[Alu.scala 366:13]
  assign io_taken = _taken_T_8 ^ io_func[1]; // @[Alu.scala 313:72]
  assign io_mispredict = (io_pred_taken ^ taken) & io_isBranch; // @[Alu.scala 368:44]
  assign leftShiftModule_io_shamt = io_src_1[5:0]; // @[Alu.scala 191:19]
  assign leftShiftModule_io_revShamt = _revShamt_T_1 + 6'h1; // @[Alu.scala 192:29]
  assign leftShiftModule_io_sllSrc = _leftShiftModule_io_sllSrc_T_4 & io_src_0; // @[Alu.scala 198:70]
  assign rightShiftModule_io_shamt = io_src_1[5:0]; // @[Alu.scala 191:19]
  assign rightShiftModule_io_revShamt = _revShamt_T_1 + 6'h1; // @[Alu.scala 192:29]
  assign rightShiftModule_io_srlSrc = io_src_0; // @[Alu.scala 215:30]
  assign rightShiftModule_io_sraSrc = io_src_0; // @[Alu.scala 216:30]
  assign addModule_io_src_0 = io_func[3] ? _GEN_11 : _addModule_io_src_0_T_8; // @[Alu.scala 273:29]
  assign addModule_io_src_1 = io_src_1; // @[Alu.scala 277:23]
  assign addModule_io_srcw = _addModule_io_srcw_T_7[31:0]; // @[Alu.scala 224:21]
  assign subModule_io_src_0 = io_src_0; // @[Alu.scala 282:23]
  assign subModule_io_src_1 = io_src_1; // @[Alu.scala 283:23]
  assign leftShiftWordModule_io_shamt = shamt[4:0]; // @[Alu.scala 242:32]
  assign leftShiftWordModule_io_revShamt = revShamt[4:0]; // @[Alu.scala 243:35]
  assign leftShiftWordModule_io_sllSrc = io_src_0[31:0]; // @[Alu.scala 241:33]
  assign rightShiftWordModule_io_shamt = shamt[4:0]; // @[Alu.scala 249:33]
  assign rightShiftWordModule_io_revShamt = revShamt[4:0]; // @[Alu.scala 250:36]
  assign rightShiftWordModule_io_srlSrc = io_src_0[31:0]; // @[Alu.scala 251:34]
  assign rightShiftWordModule_io_sraSrc = io_src_0[31:0]; // @[Alu.scala 252:34]
  assign shiftResSel_io_func = io_func[3:0]; // @[Alu.scala 317:30]
  assign shiftResSel_io_sll = leftShiftModule_io_sll; // @[Alu.scala 318:23]
  assign shiftResSel_io_srl = rightShiftModule_io_srl; // @[Alu.scala 319:23]
  assign shiftResSel_io_sra = rightShiftModule_io_sra; // @[Alu.scala 320:23]
  assign shiftResSel_io_rol = rightShiftModule_io_revSrl | leftShiftModule_io_sll; // @[Alu.scala 219:20]
  assign shiftResSel_io_ror = rightShiftModule_io_srl | leftShiftModule_io_revSll; // @[Alu.scala 220:17]
  assign shiftResSel_io_bclr = io_src_0 & _bclr_T; // @[Alu.scala 204:19]
  assign shiftResSel_io_bset = io_src_0 | bitShift; // @[Alu.scala 205:19]
  assign shiftResSel_io_binv = io_src_0 ^ bitShift; // @[Alu.scala 206:19]
  assign shiftResSel_io_bext = {{63'd0}, bext}; // @[Alu.scala 326:23]
  assign miscResSel_io_func = io_func[5:0]; // @[Alu.scala 330:32]
  assign miscResSel_io_and = io_src_0 & logicSrc2; // @[Alu.scala 292:22]
  assign miscResSel_io_or = io_src_0 | logicSrc2; // @[Alu.scala 293:22]
  assign miscResSel_io_xor = io_src_0 ^ logicSrc2; // @[Alu.scala 294:22]
  assign miscResSel_io_orcb = {orcb_hi,orcb_lo}; // @[Cat.scala 31:58]
  assign miscResSel_io_orh48 = _orh48_T_1 | io_src_1; // @[Alu.scala 296:44]
  assign miscResSel_io_sextb = {_sextb_T_2,io_src_0[7:0]}; // @[Cat.scala 31:58]
  assign miscResSel_io_packh = {{48'd0}, packh}; // @[Alu.scala 337:25]
  assign miscResSel_io_sexth = {_sexth_T_2,io_src_0[15:0]}; // @[Cat.scala 31:58]
  assign miscResSel_io_packw = {_packw_T_4,_packw_T_2}; // @[Cat.scala 31:58]
  assign miscResSel_io_revb = {revb_hi,revb_lo}; // @[Cat.scala 31:58]
  assign miscResSel_io_rev8 = {rev8_hi,rev8_lo}; // @[Cat.scala 31:58]
  assign miscResSel_io_pack = {io_src_1[31:0],io_src_0[31:0]}; // @[Cat.scala 31:58]
  assign miscResSel_io_src = io_src_0; // @[Alu.scala 343:25]
  assign wordResSel_io_func = io_func; // @[Alu.scala 347:22]
  assign wordResSel_io_sllw = leftShiftWordModule_io_sllw; // @[Alu.scala 350:22]
  assign wordResSel_io_srlw = rightShiftWordModule_io_srlw; // @[Alu.scala 351:22]
  assign wordResSel_io_sraw = rightShiftWordModule_io_sraw; // @[Alu.scala 352:22]
  assign wordResSel_io_rolw = rightShiftWordModule_io_revSrlw | leftShiftWordModule_io_sllw; // @[Alu.scala 254:22]
  assign wordResSel_io_rorw = rightShiftWordModule_io_srlw | leftShiftWordModule_io_revSllw; // @[Alu.scala 255:19]
  assign wordResSel_io_addw = addw[31:0]; // @[Alu.scala 348:22]
  assign wordResSel_io_subw = subModule_io_sub[31:0]; // @[Alu.scala 349:22]
  assign aluResSel_io_func = io_func[6:4]; // @[Alu.scala 358:28]
  assign aluResSel_io_addRes = addModule_io_add; // @[Alu.scala 359:23]
  assign aluResSel_io_shiftRes = shiftResSel_io_shiftRes; // @[Alu.scala 361:25]
  assign aluResSel_io_miscRes = miscResSel_io_miscRes; // @[Alu.scala 362:24]
  assign aluResSel_io_compareRes = compareRes[63:0]; // @[Alu.scala 360:27]
  assign aluResSel_io_wordRes = wordResSel_io_wordRes; // @[Alu.scala 363:24]
endmodule
