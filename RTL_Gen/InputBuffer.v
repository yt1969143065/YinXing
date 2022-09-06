module InputBuffer(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_in_ready,
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input  [63:0] io_in_bits_src_1,
  input         io_in_bits_uop_cf_trigger_backendHit_0,
  input         io_in_bits_uop_cf_trigger_backendHit_1,
  input         io_in_bits_uop_cf_trigger_backendHit_2,
  input         io_in_bits_uop_cf_trigger_backendHit_3,
  input         io_in_bits_uop_cf_trigger_backendHit_4,
  input         io_in_bits_uop_cf_trigger_backendHit_5,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input         io_in_bits_uop_ctrl_fpu_typeTagIn,
  input         io_in_bits_uop_ctrl_fpu_sqrt,
  input  [2:0]  io_in_bits_uop_ctrl_fpu_rm,
  input  [6:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [6:0]  io_in_bits_uop_robIdx_value,
  input         io_out_ready,
  output        io_out_valid,
  output [63:0] io_out_bits_src_0,
  output [63:0] io_out_bits_src_1,
  output        io_out_bits_uop_cf_trigger_backendHit_0,
  output        io_out_bits_uop_cf_trigger_backendHit_1,
  output        io_out_bits_uop_cf_trigger_backendHit_2,
  output        io_out_bits_uop_cf_trigger_backendHit_3,
  output        io_out_bits_uop_cf_trigger_backendHit_4,
  output        io_out_bits_uop_cf_trigger_backendHit_5,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output        io_out_bits_uop_ctrl_fpu_typeTagIn,
  output        io_out_bits_uop_ctrl_fpu_sqrt,
  output [2:0]  io_out_bits_uop_ctrl_fpu_rm,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
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
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
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
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
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
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [63:0] _RAND_64;
  reg [63:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [63:0] _RAND_80;
  reg [63:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [63:0] _RAND_96;
  reg [63:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [63:0] _RAND_112;
  reg [63:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
`endif // RANDOMIZE_REG_INIT
  wire  age_clock; // @[InputBuffer.scala 54:19]
  wire  age_reset; // @[InputBuffer.scala 54:19]
  wire [7:0] age_io_enq_0; // @[InputBuffer.scala 54:19]
  wire [7:0] age_io_deq; // @[InputBuffer.scala 54:19]
  wire [7:0] age_io_out; // @[InputBuffer.scala 54:19]
  reg [63:0] data_0_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_0_src_1; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 35:17]
  reg [2:0] data_0_uop_ctrl_fpu_rm; // @[InputBuffer.scala 35:17]
  reg [6:0] data_0_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_0_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [6:0] data_0_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg [63:0] data_1_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_1_src_1; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 35:17]
  reg [2:0] data_1_uop_ctrl_fpu_rm; // @[InputBuffer.scala 35:17]
  reg [6:0] data_1_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_1_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [6:0] data_1_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg [63:0] data_2_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_2_src_1; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 35:17]
  reg [2:0] data_2_uop_ctrl_fpu_rm; // @[InputBuffer.scala 35:17]
  reg [6:0] data_2_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_2_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [6:0] data_2_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg [63:0] data_3_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_3_src_1; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 35:17]
  reg [2:0] data_3_uop_ctrl_fpu_rm; // @[InputBuffer.scala 35:17]
  reg [6:0] data_3_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_3_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [6:0] data_3_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg [63:0] data_4_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_4_src_1; // @[InputBuffer.scala 35:17]
  reg  data_4_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 35:17]
  reg  data_4_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 35:17]
  reg  data_4_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 35:17]
  reg  data_4_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 35:17]
  reg  data_4_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 35:17]
  reg  data_4_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 35:17]
  reg  data_4_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_4_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg  data_4_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 35:17]
  reg  data_4_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 35:17]
  reg [2:0] data_4_uop_ctrl_fpu_rm; // @[InputBuffer.scala 35:17]
  reg [6:0] data_4_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_4_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [6:0] data_4_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg [63:0] data_5_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_5_src_1; // @[InputBuffer.scala 35:17]
  reg  data_5_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 35:17]
  reg  data_5_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 35:17]
  reg  data_5_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 35:17]
  reg  data_5_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 35:17]
  reg  data_5_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 35:17]
  reg  data_5_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 35:17]
  reg  data_5_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_5_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg  data_5_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 35:17]
  reg  data_5_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 35:17]
  reg [2:0] data_5_uop_ctrl_fpu_rm; // @[InputBuffer.scala 35:17]
  reg [6:0] data_5_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_5_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [6:0] data_5_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg [63:0] data_6_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_6_src_1; // @[InputBuffer.scala 35:17]
  reg  data_6_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 35:17]
  reg  data_6_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 35:17]
  reg  data_6_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 35:17]
  reg  data_6_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 35:17]
  reg  data_6_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 35:17]
  reg  data_6_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 35:17]
  reg  data_6_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_6_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg  data_6_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 35:17]
  reg  data_6_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 35:17]
  reg [2:0] data_6_uop_ctrl_fpu_rm; // @[InputBuffer.scala 35:17]
  reg [6:0] data_6_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_6_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [6:0] data_6_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg [63:0] data_7_src_0; // @[InputBuffer.scala 35:17]
  reg [63:0] data_7_src_1; // @[InputBuffer.scala 35:17]
  reg  data_7_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 35:17]
  reg  data_7_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 35:17]
  reg  data_7_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 35:17]
  reg  data_7_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 35:17]
  reg  data_7_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 35:17]
  reg  data_7_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 35:17]
  reg  data_7_uop_ctrl_rfWen; // @[InputBuffer.scala 35:17]
  reg  data_7_uop_ctrl_fpWen; // @[InputBuffer.scala 35:17]
  reg  data_7_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 35:17]
  reg  data_7_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 35:17]
  reg [2:0] data_7_uop_ctrl_fpu_rm; // @[InputBuffer.scala 35:17]
  reg [6:0] data_7_uop_pdest; // @[InputBuffer.scala 35:17]
  reg  data_7_uop_robIdx_flag; // @[InputBuffer.scala 35:17]
  reg [6:0] data_7_uop_robIdx_value; // @[InputBuffer.scala 35:17]
  reg  emptyVec_0; // @[InputBuffer.scala 36:25]
  reg  emptyVec_1; // @[InputBuffer.scala 36:25]
  reg  emptyVec_2; // @[InputBuffer.scala 36:25]
  reg  emptyVec_3; // @[InputBuffer.scala 36:25]
  reg  emptyVec_4; // @[InputBuffer.scala 36:25]
  reg  emptyVec_5; // @[InputBuffer.scala 36:25]
  reg  emptyVec_6; // @[InputBuffer.scala 36:25]
  reg  emptyVec_7; // @[InputBuffer.scala 36:25]
  wire  matrix_1_0 = ~(|emptyVec_0); // @[BitUtils.scala 222:50]
  wire [1:0] _matrix_2_0_T = {emptyVec_0,emptyVec_1}; // @[Cat.scala 31:58]
  wire  matrix_2_0 = ~(|_matrix_2_0_T); // @[BitUtils.scala 222:50]
  wire [2:0] _matrix_3_0_T = {emptyVec_0,emptyVec_1,emptyVec_2}; // @[Cat.scala 31:58]
  wire  matrix_3_0 = ~(|_matrix_3_0_T); // @[BitUtils.scala 222:50]
  wire [3:0] _matrix_4_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3}; // @[Cat.scala 31:58]
  wire  matrix_4_0 = ~(|_matrix_4_0_T); // @[BitUtils.scala 222:50]
  wire [4:0] _matrix_5_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4}; // @[Cat.scala 31:58]
  wire  matrix_5_0 = ~(|_matrix_5_0_T); // @[BitUtils.scala 222:50]
  wire [5:0] _matrix_6_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5}; // @[Cat.scala 31:58]
  wire  matrix_6_0 = ~(|_matrix_6_0_T); // @[BitUtils.scala 222:50]
  wire [6:0] _matrix_7_0_T = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6}; // @[Cat.scala 31:58]
  wire  matrix_7_0 = ~(|_matrix_7_0_T); // @[BitUtils.scala 222:50]
  wire  enqVec_1 = emptyVec_1 & matrix_1_0; // @[BitUtils.scala 239:62]
  wire  enqVec_2 = emptyVec_2 & matrix_2_0; // @[BitUtils.scala 239:62]
  wire  enqVec_3 = emptyVec_3 & matrix_3_0; // @[BitUtils.scala 239:62]
  wire  enqVec_4 = emptyVec_4 & matrix_4_0; // @[BitUtils.scala 239:62]
  wire  enqVec_5 = emptyVec_5 & matrix_5_0; // @[BitUtils.scala 239:62]
  wire  enqVec_6 = emptyVec_6 & matrix_6_0; // @[BitUtils.scala 239:62]
  wire  enqVec_7 = emptyVec_7 & matrix_7_0; // @[BitUtils.scala 239:62]
  wire [7:0] _io_in_ready_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2,emptyVec_1,emptyVec_0}; // @[InputBuffer.scala 39:27]
  wire  _doEnqueue_T = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  wire [7:0] _doEnqueue_flushItself_T_1 = {io_in_bits_uop_robIdx_flag,io_in_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _doEnqueue_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _doEnqueue_flushItself_T_3 = _doEnqueue_flushItself_T_1 == _doEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  doEnqueue_flushItself = io_redirect_bits_level & _doEnqueue_flushItself_T_3; // @[Rob.scala 35:51]
  wire  doEnqueue_differentFlag = io_in_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  doEnqueue_compare = io_in_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _doEnqueue_T_1 = doEnqueue_differentFlag ^ doEnqueue_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _doEnqueue_T_3 = io_redirect_valid & (doEnqueue_flushItself | _doEnqueue_T_1); // @[Rob.scala 36:20]
  wire  doEnqueue = _doEnqueue_T & ~_doEnqueue_T_3; // @[InputBuffer.scala 43:32]
  wire  _GEN_122 = emptyVec_0 ? 1'h0 : emptyVec_0; // @[InputBuffer.scala 46:24 48:21 36:25]
  wire  _GEN_245 = enqVec_1 ? 1'h0 : emptyVec_1; // @[InputBuffer.scala 46:24 48:21 36:25]
  wire  _GEN_368 = enqVec_2 ? 1'h0 : emptyVec_2; // @[InputBuffer.scala 46:24 48:21 36:25]
  wire  _GEN_491 = enqVec_3 ? 1'h0 : emptyVec_3; // @[InputBuffer.scala 46:24 48:21 36:25]
  wire  _GEN_614 = enqVec_4 ? 1'h0 : emptyVec_4; // @[InputBuffer.scala 46:24 48:21 36:25]
  wire  _GEN_737 = enqVec_5 ? 1'h0 : emptyVec_5; // @[InputBuffer.scala 46:24 48:21 36:25]
  wire  _GEN_860 = enqVec_6 ? 1'h0 : emptyVec_6; // @[InputBuffer.scala 46:24 48:21 36:25]
  wire  _GEN_983 = enqVec_7 ? 1'h0 : emptyVec_7; // @[InputBuffer.scala 46:24 48:21 36:25]
  wire  _GEN_1106 = doEnqueue ? _GEN_122 : emptyVec_0; // @[InputBuffer.scala 44:20 36:25]
  wire  _GEN_1229 = doEnqueue ? _GEN_245 : emptyVec_1; // @[InputBuffer.scala 44:20 36:25]
  wire  _GEN_1352 = doEnqueue ? _GEN_368 : emptyVec_2; // @[InputBuffer.scala 44:20 36:25]
  wire  _GEN_1475 = doEnqueue ? _GEN_491 : emptyVec_3; // @[InputBuffer.scala 44:20 36:25]
  wire  _GEN_1598 = doEnqueue ? _GEN_614 : emptyVec_4; // @[InputBuffer.scala 44:20 36:25]
  wire  _GEN_1721 = doEnqueue ? _GEN_737 : emptyVec_5; // @[InputBuffer.scala 44:20 36:25]
  wire  _GEN_1844 = doEnqueue ? _GEN_860 : emptyVec_6; // @[InputBuffer.scala 44:20 36:25]
  wire  _GEN_1967 = doEnqueue ? _GEN_983 : emptyVec_7; // @[InputBuffer.scala 44:20 36:25]
  wire [7:0] _age_io_enq_0_T = {enqVec_7,enqVec_6,enqVec_5,enqVec_4,enqVec_3,enqVec_2,enqVec_1,emptyVec_0}; // @[InputBuffer.scala 55:42]
  wire [6:0] _io_out_bits_T_203 = age_io_out[0] ? data_0_uop_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_204 = age_io_out[1] ? data_1_uop_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_205 = age_io_out[2] ? data_2_uop_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_206 = age_io_out[3] ? data_3_uop_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_207 = age_io_out[4] ? data_4_uop_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_208 = age_io_out[5] ? data_5_uop_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_209 = age_io_out[6] ? data_6_uop_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_210 = age_io_out[7] ? data_7_uop_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_211 = _io_out_bits_T_203 | _io_out_bits_T_204; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_212 = _io_out_bits_T_211 | _io_out_bits_T_205; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_213 = _io_out_bits_T_212 | _io_out_bits_T_206; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_214 = _io_out_bits_T_213 | _io_out_bits_T_207; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_215 = _io_out_bits_T_214 | _io_out_bits_T_208; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_216 = _io_out_bits_T_215 | _io_out_bits_T_209; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_248 = age_io_out[0] ? data_0_uop_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_249 = age_io_out[1] ? data_1_uop_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_250 = age_io_out[2] ? data_2_uop_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_251 = age_io_out[3] ? data_3_uop_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_252 = age_io_out[4] ? data_4_uop_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_253 = age_io_out[5] ? data_5_uop_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_254 = age_io_out[6] ? data_6_uop_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_255 = age_io_out[7] ? data_7_uop_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_256 = _io_out_bits_T_248 | _io_out_bits_T_249; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_257 = _io_out_bits_T_256 | _io_out_bits_T_250; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_258 = _io_out_bits_T_257 | _io_out_bits_T_251; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_259 = _io_out_bits_T_258 | _io_out_bits_T_252; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_260 = _io_out_bits_T_259 | _io_out_bits_T_253; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_261 = _io_out_bits_T_260 | _io_out_bits_T_254; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_398 = age_io_out[0] ? data_0_uop_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_399 = age_io_out[1] ? data_1_uop_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_400 = age_io_out[2] ? data_2_uop_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_401 = age_io_out[3] ? data_3_uop_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_402 = age_io_out[4] ? data_4_uop_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_403 = age_io_out[5] ? data_5_uop_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_404 = age_io_out[6] ? data_6_uop_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_405 = age_io_out[7] ? data_7_uop_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_406 = _io_out_bits_T_398 | _io_out_bits_T_399; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_407 = _io_out_bits_T_406 | _io_out_bits_T_400; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_408 = _io_out_bits_T_407 | _io_out_bits_T_401; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_409 = _io_out_bits_T_408 | _io_out_bits_T_402; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_410 = _io_out_bits_T_409 | _io_out_bits_T_403; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_411 = _io_out_bits_T_410 | _io_out_bits_T_404; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1793 = age_io_out[0] ? data_0_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1794 = age_io_out[1] ? data_1_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1795 = age_io_out[2] ? data_2_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1796 = age_io_out[3] ? data_3_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1797 = age_io_out[4] ? data_4_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1798 = age_io_out[5] ? data_5_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1799 = age_io_out[6] ? data_6_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1800 = age_io_out[7] ? data_7_src_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1801 = _io_out_bits_T_1793 | _io_out_bits_T_1794; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1802 = _io_out_bits_T_1801 | _io_out_bits_T_1795; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1803 = _io_out_bits_T_1802 | _io_out_bits_T_1796; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1804 = _io_out_bits_T_1803 | _io_out_bits_T_1797; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1805 = _io_out_bits_T_1804 | _io_out_bits_T_1798; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1806 = _io_out_bits_T_1805 | _io_out_bits_T_1799; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1808 = age_io_out[0] ? data_0_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1809 = age_io_out[1] ? data_1_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1810 = age_io_out[2] ? data_2_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1811 = age_io_out[3] ? data_3_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1812 = age_io_out[4] ? data_4_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1813 = age_io_out[5] ? data_5_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1814 = age_io_out[6] ? data_6_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1815 = age_io_out[7] ? data_7_src_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1816 = _io_out_bits_T_1808 | _io_out_bits_T_1809; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1817 = _io_out_bits_T_1816 | _io_out_bits_T_1810; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1818 = _io_out_bits_T_1817 | _io_out_bits_T_1811; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1819 = _io_out_bits_T_1818 | _io_out_bits_T_1812; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1820 = _io_out_bits_T_1819 | _io_out_bits_T_1813; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_1821 = _io_out_bits_T_1820 | _io_out_bits_T_1814; // @[Mux.scala 27:73]
  wire  _T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_1968 = age_io_out[0] | _GEN_1106; // @[InputBuffer.scala 61:28 62:21]
  wire  _GEN_1969 = age_io_out[1] | _GEN_1229; // @[InputBuffer.scala 61:28 62:21]
  wire  _GEN_1970 = age_io_out[2] | _GEN_1352; // @[InputBuffer.scala 61:28 62:21]
  wire  _GEN_1971 = age_io_out[3] | _GEN_1475; // @[InputBuffer.scala 61:28 62:21]
  wire  _GEN_1972 = age_io_out[4] | _GEN_1598; // @[InputBuffer.scala 61:28 62:21]
  wire  _GEN_1973 = age_io_out[5] | _GEN_1721; // @[InputBuffer.scala 61:28 62:21]
  wire  _GEN_1974 = age_io_out[6] | _GEN_1844; // @[InputBuffer.scala 61:28 62:21]
  wire  _GEN_1975 = age_io_out[7] | _GEN_1967; // @[InputBuffer.scala 61:28 62:21]
  wire  _GEN_1976 = _T ? _GEN_1968 : _GEN_1106; // @[InputBuffer.scala 59:22]
  wire  _GEN_1977 = _T ? _GEN_1969 : _GEN_1229; // @[InputBuffer.scala 59:22]
  wire  _GEN_1978 = _T ? _GEN_1970 : _GEN_1352; // @[InputBuffer.scala 59:22]
  wire  _GEN_1979 = _T ? _GEN_1971 : _GEN_1475; // @[InputBuffer.scala 59:22]
  wire  _GEN_1980 = _T ? _GEN_1972 : _GEN_1598; // @[InputBuffer.scala 59:22]
  wire  _GEN_1981 = _T ? _GEN_1973 : _GEN_1721; // @[InputBuffer.scala 59:22]
  wire  _GEN_1982 = _T ? _GEN_1974 : _GEN_1844; // @[InputBuffer.scala 59:22]
  wire  _GEN_1983 = _T ? _GEN_1975 : _GEN_1967; // @[InputBuffer.scala 59:22]
  wire [7:0] _flushVec_flushItself_T_1 = {data_0_uop_robIdx_flag,data_0_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushVec_flushItself_T_3 = _flushVec_flushItself_T_1 == _doEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushVec_flushItself = io_redirect_bits_level & _flushVec_flushItself_T_3; // @[Rob.scala 35:51]
  wire  flushVec_differentFlag = data_0_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  flushVec_compare = data_0_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _flushVec_T_1 = flushVec_differentFlag ^ flushVec_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _flushVec_T_3 = io_redirect_valid & (flushVec_flushItself | _flushVec_T_1); // @[Rob.scala 36:20]
  wire  flushVec_0 = ~emptyVec_0 & _flushVec_T_3; // @[InputBuffer.scala 69:78]
  wire [7:0] _flushVec_flushItself_T_5 = {data_1_uop_robIdx_flag,data_1_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushVec_flushItself_T_7 = _flushVec_flushItself_T_5 == _doEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushVec_flushItself_1 = io_redirect_bits_level & _flushVec_flushItself_T_7; // @[Rob.scala 35:51]
  wire  flushVec_differentFlag_1 = data_1_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  flushVec_compare_1 = data_1_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _flushVec_T_5 = flushVec_differentFlag_1 ^ flushVec_compare_1; // @[CircularQueuePtr.scala 87:19]
  wire  _flushVec_T_7 = io_redirect_valid & (flushVec_flushItself_1 | _flushVec_T_5); // @[Rob.scala 36:20]
  wire  flushVec_1 = ~emptyVec_1 & _flushVec_T_7; // @[InputBuffer.scala 69:78]
  wire [7:0] _flushVec_flushItself_T_9 = {data_2_uop_robIdx_flag,data_2_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushVec_flushItself_T_11 = _flushVec_flushItself_T_9 == _doEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushVec_flushItself_2 = io_redirect_bits_level & _flushVec_flushItself_T_11; // @[Rob.scala 35:51]
  wire  flushVec_differentFlag_2 = data_2_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  flushVec_compare_2 = data_2_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _flushVec_T_9 = flushVec_differentFlag_2 ^ flushVec_compare_2; // @[CircularQueuePtr.scala 87:19]
  wire  _flushVec_T_11 = io_redirect_valid & (flushVec_flushItself_2 | _flushVec_T_9); // @[Rob.scala 36:20]
  wire  flushVec_2 = ~emptyVec_2 & _flushVec_T_11; // @[InputBuffer.scala 69:78]
  wire [7:0] _flushVec_flushItself_T_13 = {data_3_uop_robIdx_flag,data_3_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushVec_flushItself_T_15 = _flushVec_flushItself_T_13 == _doEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushVec_flushItself_3 = io_redirect_bits_level & _flushVec_flushItself_T_15; // @[Rob.scala 35:51]
  wire  flushVec_differentFlag_3 = data_3_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  flushVec_compare_3 = data_3_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _flushVec_T_13 = flushVec_differentFlag_3 ^ flushVec_compare_3; // @[CircularQueuePtr.scala 87:19]
  wire  _flushVec_T_15 = io_redirect_valid & (flushVec_flushItself_3 | _flushVec_T_13); // @[Rob.scala 36:20]
  wire  flushVec_3 = ~emptyVec_3 & _flushVec_T_15; // @[InputBuffer.scala 69:78]
  wire [7:0] _flushVec_flushItself_T_17 = {data_4_uop_robIdx_flag,data_4_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushVec_flushItself_T_19 = _flushVec_flushItself_T_17 == _doEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushVec_flushItself_4 = io_redirect_bits_level & _flushVec_flushItself_T_19; // @[Rob.scala 35:51]
  wire  flushVec_differentFlag_4 = data_4_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  flushVec_compare_4 = data_4_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _flushVec_T_17 = flushVec_differentFlag_4 ^ flushVec_compare_4; // @[CircularQueuePtr.scala 87:19]
  wire  _flushVec_T_19 = io_redirect_valid & (flushVec_flushItself_4 | _flushVec_T_17); // @[Rob.scala 36:20]
  wire  flushVec_4 = ~emptyVec_4 & _flushVec_T_19; // @[InputBuffer.scala 69:78]
  wire [7:0] _flushVec_flushItself_T_21 = {data_5_uop_robIdx_flag,data_5_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushVec_flushItself_T_23 = _flushVec_flushItself_T_21 == _doEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushVec_flushItself_5 = io_redirect_bits_level & _flushVec_flushItself_T_23; // @[Rob.scala 35:51]
  wire  flushVec_differentFlag_5 = data_5_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  flushVec_compare_5 = data_5_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _flushVec_T_21 = flushVec_differentFlag_5 ^ flushVec_compare_5; // @[CircularQueuePtr.scala 87:19]
  wire  _flushVec_T_23 = io_redirect_valid & (flushVec_flushItself_5 | _flushVec_T_21); // @[Rob.scala 36:20]
  wire  flushVec_5 = ~emptyVec_5 & _flushVec_T_23; // @[InputBuffer.scala 69:78]
  wire [7:0] _flushVec_flushItself_T_25 = {data_6_uop_robIdx_flag,data_6_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushVec_flushItself_T_27 = _flushVec_flushItself_T_25 == _doEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushVec_flushItself_6 = io_redirect_bits_level & _flushVec_flushItself_T_27; // @[Rob.scala 35:51]
  wire  flushVec_differentFlag_6 = data_6_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  flushVec_compare_6 = data_6_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _flushVec_T_25 = flushVec_differentFlag_6 ^ flushVec_compare_6; // @[CircularQueuePtr.scala 87:19]
  wire  _flushVec_T_27 = io_redirect_valid & (flushVec_flushItself_6 | _flushVec_T_25); // @[Rob.scala 36:20]
  wire  flushVec_6 = ~emptyVec_6 & _flushVec_T_27; // @[InputBuffer.scala 69:78]
  wire [7:0] _flushVec_flushItself_T_29 = {data_7_uop_robIdx_flag,data_7_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _flushVec_flushItself_T_31 = _flushVec_flushItself_T_29 == _doEnqueue_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  flushVec_flushItself_7 = io_redirect_bits_level & _flushVec_flushItself_T_31; // @[Rob.scala 35:51]
  wire  flushVec_differentFlag_7 = data_7_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  flushVec_compare_7 = data_7_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _flushVec_T_29 = flushVec_differentFlag_7 ^ flushVec_compare_7; // @[CircularQueuePtr.scala 87:19]
  wire  _flushVec_T_31 = io_redirect_valid & (flushVec_flushItself_7 | _flushVec_T_29); // @[Rob.scala 36:20]
  wire  flushVec_7 = ~emptyVec_7 & _flushVec_T_31; // @[InputBuffer.scala 69:78]
  wire  _GEN_1984 = flushVec_0 | _GEN_1976; // @[InputBuffer.scala 71:24 72:19]
  wire  _GEN_1985 = flushVec_1 | _GEN_1977; // @[InputBuffer.scala 71:24 72:19]
  wire  _GEN_1986 = flushVec_2 | _GEN_1978; // @[InputBuffer.scala 71:24 72:19]
  wire  _GEN_1987 = flushVec_3 | _GEN_1979; // @[InputBuffer.scala 71:24 72:19]
  wire  _GEN_1988 = flushVec_4 | _GEN_1980; // @[InputBuffer.scala 71:24 72:19]
  wire  _GEN_1989 = flushVec_5 | _GEN_1981; // @[InputBuffer.scala 71:24 72:19]
  wire  _GEN_1990 = flushVec_6 | _GEN_1982; // @[InputBuffer.scala 71:24 72:19]
  wire  _GEN_1991 = flushVec_7 | _GEN_1983; // @[InputBuffer.scala 71:24 72:19]
  wire [7:0] flushDeq = {flushVec_7,flushVec_6,flushVec_5,flushVec_4,flushVec_3,flushVec_2,flushVec_1,flushVec_0}; // @[InputBuffer.scala 76:36]
  wire [7:0] _age_io_deq_T_1 = _T ? age_io_out : 8'h0; // @[InputBuffer.scala 77:20]
  AgeDetector_9 age ( // @[InputBuffer.scala 54:19]
    .clock(age_clock),
    .reset(age_reset),
    .io_enq_0(age_io_enq_0),
    .io_deq(age_io_deq),
    .io_out(age_io_out)
  );
  assign io_in_ready = |_io_in_ready_T; // @[InputBuffer.scala 39:34]
  assign io_out_valid = ~(&_io_in_ready_T); // @[InputBuffer.scala 57:19]
  assign io_out_bits_src_0 = _io_out_bits_T_1806 | _io_out_bits_T_1800; // @[Mux.scala 27:73]
  assign io_out_bits_src_1 = _io_out_bits_T_1821 | _io_out_bits_T_1815; // @[Mux.scala 27:73]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = age_io_out[0] & data_0_uop_cf_trigger_backendHit_0 | age_io_out[1] &
    data_1_uop_cf_trigger_backendHit_0 | age_io_out[2] & data_2_uop_cf_trigger_backendHit_0 | age_io_out[3] &
    data_3_uop_cf_trigger_backendHit_0 | age_io_out[4] & data_4_uop_cf_trigger_backendHit_0 | age_io_out[5] &
    data_5_uop_cf_trigger_backendHit_0 | age_io_out[6] & data_6_uop_cf_trigger_backendHit_0 | age_io_out[7] &
    data_7_uop_cf_trigger_backendHit_0; // @[Mux.scala 27:73]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = age_io_out[0] & data_0_uop_cf_trigger_backendHit_1 | age_io_out[1] &
    data_1_uop_cf_trigger_backendHit_1 | age_io_out[2] & data_2_uop_cf_trigger_backendHit_1 | age_io_out[3] &
    data_3_uop_cf_trigger_backendHit_1 | age_io_out[4] & data_4_uop_cf_trigger_backendHit_1 | age_io_out[5] &
    data_5_uop_cf_trigger_backendHit_1 | age_io_out[6] & data_6_uop_cf_trigger_backendHit_1 | age_io_out[7] &
    data_7_uop_cf_trigger_backendHit_1; // @[Mux.scala 27:73]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = age_io_out[0] & data_0_uop_cf_trigger_backendHit_2 | age_io_out[1] &
    data_1_uop_cf_trigger_backendHit_2 | age_io_out[2] & data_2_uop_cf_trigger_backendHit_2 | age_io_out[3] &
    data_3_uop_cf_trigger_backendHit_2 | age_io_out[4] & data_4_uop_cf_trigger_backendHit_2 | age_io_out[5] &
    data_5_uop_cf_trigger_backendHit_2 | age_io_out[6] & data_6_uop_cf_trigger_backendHit_2 | age_io_out[7] &
    data_7_uop_cf_trigger_backendHit_2; // @[Mux.scala 27:73]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = age_io_out[0] & data_0_uop_cf_trigger_backendHit_3 | age_io_out[1] &
    data_1_uop_cf_trigger_backendHit_3 | age_io_out[2] & data_2_uop_cf_trigger_backendHit_3 | age_io_out[3] &
    data_3_uop_cf_trigger_backendHit_3 | age_io_out[4] & data_4_uop_cf_trigger_backendHit_3 | age_io_out[5] &
    data_5_uop_cf_trigger_backendHit_3 | age_io_out[6] & data_6_uop_cf_trigger_backendHit_3 | age_io_out[7] &
    data_7_uop_cf_trigger_backendHit_3; // @[Mux.scala 27:73]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = age_io_out[0] & data_0_uop_cf_trigger_backendHit_4 | age_io_out[1] &
    data_1_uop_cf_trigger_backendHit_4 | age_io_out[2] & data_2_uop_cf_trigger_backendHit_4 | age_io_out[3] &
    data_3_uop_cf_trigger_backendHit_4 | age_io_out[4] & data_4_uop_cf_trigger_backendHit_4 | age_io_out[5] &
    data_5_uop_cf_trigger_backendHit_4 | age_io_out[6] & data_6_uop_cf_trigger_backendHit_4 | age_io_out[7] &
    data_7_uop_cf_trigger_backendHit_4; // @[Mux.scala 27:73]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = age_io_out[0] & data_0_uop_cf_trigger_backendHit_5 | age_io_out[1] &
    data_1_uop_cf_trigger_backendHit_5 | age_io_out[2] & data_2_uop_cf_trigger_backendHit_5 | age_io_out[3] &
    data_3_uop_cf_trigger_backendHit_5 | age_io_out[4] & data_4_uop_cf_trigger_backendHit_5 | age_io_out[5] &
    data_5_uop_cf_trigger_backendHit_5 | age_io_out[6] & data_6_uop_cf_trigger_backendHit_5 | age_io_out[7] &
    data_7_uop_cf_trigger_backendHit_5; // @[Mux.scala 27:73]
  assign io_out_bits_uop_ctrl_rfWen = age_io_out[0] & data_0_uop_ctrl_rfWen | age_io_out[1] & data_1_uop_ctrl_rfWen |
    age_io_out[2] & data_2_uop_ctrl_rfWen | age_io_out[3] & data_3_uop_ctrl_rfWen | age_io_out[4] &
    data_4_uop_ctrl_rfWen | age_io_out[5] & data_5_uop_ctrl_rfWen | age_io_out[6] & data_6_uop_ctrl_rfWen | age_io_out[7
    ] & data_7_uop_ctrl_rfWen; // @[Mux.scala 27:73]
  assign io_out_bits_uop_ctrl_fpWen = age_io_out[0] & data_0_uop_ctrl_fpWen | age_io_out[1] & data_1_uop_ctrl_fpWen |
    age_io_out[2] & data_2_uop_ctrl_fpWen | age_io_out[3] & data_3_uop_ctrl_fpWen | age_io_out[4] &
    data_4_uop_ctrl_fpWen | age_io_out[5] & data_5_uop_ctrl_fpWen | age_io_out[6] & data_6_uop_ctrl_fpWen | age_io_out[7
    ] & data_7_uop_ctrl_fpWen; // @[Mux.scala 27:73]
  assign io_out_bits_uop_ctrl_fpu_typeTagIn = age_io_out[0] & data_0_uop_ctrl_fpu_typeTagIn | age_io_out[1] &
    data_1_uop_ctrl_fpu_typeTagIn | age_io_out[2] & data_2_uop_ctrl_fpu_typeTagIn | age_io_out[3] &
    data_3_uop_ctrl_fpu_typeTagIn | age_io_out[4] & data_4_uop_ctrl_fpu_typeTagIn | age_io_out[5] &
    data_5_uop_ctrl_fpu_typeTagIn | age_io_out[6] & data_6_uop_ctrl_fpu_typeTagIn | age_io_out[7] &
    data_7_uop_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  assign io_out_bits_uop_ctrl_fpu_sqrt = age_io_out[0] & data_0_uop_ctrl_fpu_sqrt | age_io_out[1] &
    data_1_uop_ctrl_fpu_sqrt | age_io_out[2] & data_2_uop_ctrl_fpu_sqrt | age_io_out[3] & data_3_uop_ctrl_fpu_sqrt |
    age_io_out[4] & data_4_uop_ctrl_fpu_sqrt | age_io_out[5] & data_5_uop_ctrl_fpu_sqrt | age_io_out[6] &
    data_6_uop_ctrl_fpu_sqrt | age_io_out[7] & data_7_uop_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  assign io_out_bits_uop_ctrl_fpu_rm = _io_out_bits_T_411 | _io_out_bits_T_405; // @[Mux.scala 27:73]
  assign io_out_bits_uop_pdest = _io_out_bits_T_261 | _io_out_bits_T_255; // @[Mux.scala 27:73]
  assign io_out_bits_uop_robIdx_flag = age_io_out[0] & data_0_uop_robIdx_flag | age_io_out[1] & data_1_uop_robIdx_flag
     | age_io_out[2] & data_2_uop_robIdx_flag | age_io_out[3] & data_3_uop_robIdx_flag | age_io_out[4] &
    data_4_uop_robIdx_flag | age_io_out[5] & data_5_uop_robIdx_flag | age_io_out[6] & data_6_uop_robIdx_flag |
    age_io_out[7] & data_7_uop_robIdx_flag; // @[Mux.scala 27:73]
  assign io_out_bits_uop_robIdx_value = _io_out_bits_T_216 | _io_out_bits_T_210; // @[Mux.scala 27:73]
  assign age_clock = clock;
  assign age_reset = reset;
  assign age_io_enq_0 = doEnqueue ? _age_io_enq_0_T : 8'h0; // @[InputBuffer.scala 55:23]
  assign age_io_deq = _age_io_deq_T_1 | flushDeq; // @[InputBuffer.scala 77:51]
  always @(posedge clock) begin
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_ctrl_fpu_typeTagIn <= io_in_bits_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_ctrl_fpu_sqrt <= io_in_bits_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_ctrl_fpu_rm <= io_in_bits_uop_ctrl_fpu_rm; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (emptyVec_0) begin // @[InputBuffer.scala 46:24]
        data_0_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_ctrl_fpu_typeTagIn <= io_in_bits_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_ctrl_fpu_sqrt <= io_in_bits_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_ctrl_fpu_rm <= io_in_bits_uop_ctrl_fpu_rm; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_1) begin // @[InputBuffer.scala 46:24]
        data_1_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_ctrl_fpu_typeTagIn <= io_in_bits_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_ctrl_fpu_sqrt <= io_in_bits_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_ctrl_fpu_rm <= io_in_bits_uop_ctrl_fpu_rm; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_2) begin // @[InputBuffer.scala 46:24]
        data_2_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_ctrl_fpu_typeTagIn <= io_in_bits_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_ctrl_fpu_sqrt <= io_in_bits_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_ctrl_fpu_rm <= io_in_bits_uop_ctrl_fpu_rm; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_3) begin // @[InputBuffer.scala 46:24]
        data_3_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_ctrl_fpu_typeTagIn <= io_in_bits_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_ctrl_fpu_sqrt <= io_in_bits_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_ctrl_fpu_rm <= io_in_bits_uop_ctrl_fpu_rm; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_4) begin // @[InputBuffer.scala 46:24]
        data_4_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_ctrl_fpu_typeTagIn <= io_in_bits_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_ctrl_fpu_sqrt <= io_in_bits_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_ctrl_fpu_rm <= io_in_bits_uop_ctrl_fpu_rm; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_5) begin // @[InputBuffer.scala 46:24]
        data_5_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_ctrl_fpu_typeTagIn <= io_in_bits_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_ctrl_fpu_sqrt <= io_in_bits_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_ctrl_fpu_rm <= io_in_bits_uop_ctrl_fpu_rm; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_6) begin // @[InputBuffer.scala 46:24]
        data_6_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_src_0 <= io_in_bits_src_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_src_1 <= io_in_bits_src_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_cf_trigger_backendHit_0 <= io_in_bits_uop_cf_trigger_backendHit_0; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_cf_trigger_backendHit_1 <= io_in_bits_uop_cf_trigger_backendHit_1; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_cf_trigger_backendHit_2 <= io_in_bits_uop_cf_trigger_backendHit_2; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_cf_trigger_backendHit_3 <= io_in_bits_uop_cf_trigger_backendHit_3; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_cf_trigger_backendHit_4 <= io_in_bits_uop_cf_trigger_backendHit_4; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_cf_trigger_backendHit_5 <= io_in_bits_uop_cf_trigger_backendHit_5; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_ctrl_fpu_typeTagIn <= io_in_bits_uop_ctrl_fpu_typeTagIn; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_ctrl_fpu_sqrt <= io_in_bits_uop_ctrl_fpu_sqrt; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_ctrl_fpu_rm <= io_in_bits_uop_ctrl_fpu_rm; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_pdest <= io_in_bits_uop_pdest; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[InputBuffer.scala 47:17]
      end
    end
    if (doEnqueue) begin // @[InputBuffer.scala 44:20]
      if (enqVec_7) begin // @[InputBuffer.scala 46:24]
        data_7_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[InputBuffer.scala 47:17]
      end
    end
    emptyVec_0 <= reset | _GEN_1984; // @[InputBuffer.scala 36:{25,25}]
    emptyVec_1 <= reset | _GEN_1985; // @[InputBuffer.scala 36:{25,25}]
    emptyVec_2 <= reset | _GEN_1986; // @[InputBuffer.scala 36:{25,25}]
    emptyVec_3 <= reset | _GEN_1987; // @[InputBuffer.scala 36:{25,25}]
    emptyVec_4 <= reset | _GEN_1988; // @[InputBuffer.scala 36:{25,25}]
    emptyVec_5 <= reset | _GEN_1989; // @[InputBuffer.scala 36:{25,25}]
    emptyVec_6 <= reset | _GEN_1990; // @[InputBuffer.scala 36:{25,25}]
    emptyVec_7 <= reset | _GEN_1991; // @[InputBuffer.scala 36:{25,25}]
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
  data_0_src_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  data_0_src_1 = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  data_0_uop_cf_trigger_backendHit_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  data_0_uop_cf_trigger_backendHit_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  data_0_uop_cf_trigger_backendHit_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  data_0_uop_cf_trigger_backendHit_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  data_0_uop_cf_trigger_backendHit_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  data_0_uop_cf_trigger_backendHit_5 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  data_0_uop_ctrl_rfWen = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  data_0_uop_ctrl_fpWen = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  data_0_uop_ctrl_fpu_typeTagIn = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  data_0_uop_ctrl_fpu_sqrt = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  data_0_uop_ctrl_fpu_rm = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  data_0_uop_pdest = _RAND_13[6:0];
  _RAND_14 = {1{`RANDOM}};
  data_0_uop_robIdx_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  data_0_uop_robIdx_value = _RAND_15[6:0];
  _RAND_16 = {2{`RANDOM}};
  data_1_src_0 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  data_1_src_1 = _RAND_17[63:0];
  _RAND_18 = {1{`RANDOM}};
  data_1_uop_cf_trigger_backendHit_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  data_1_uop_cf_trigger_backendHit_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  data_1_uop_cf_trigger_backendHit_2 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  data_1_uop_cf_trigger_backendHit_3 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  data_1_uop_cf_trigger_backendHit_4 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  data_1_uop_cf_trigger_backendHit_5 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  data_1_uop_ctrl_rfWen = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  data_1_uop_ctrl_fpWen = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  data_1_uop_ctrl_fpu_typeTagIn = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  data_1_uop_ctrl_fpu_sqrt = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  data_1_uop_ctrl_fpu_rm = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  data_1_uop_pdest = _RAND_29[6:0];
  _RAND_30 = {1{`RANDOM}};
  data_1_uop_robIdx_flag = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  data_1_uop_robIdx_value = _RAND_31[6:0];
  _RAND_32 = {2{`RANDOM}};
  data_2_src_0 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  data_2_src_1 = _RAND_33[63:0];
  _RAND_34 = {1{`RANDOM}};
  data_2_uop_cf_trigger_backendHit_0 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  data_2_uop_cf_trigger_backendHit_1 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  data_2_uop_cf_trigger_backendHit_2 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  data_2_uop_cf_trigger_backendHit_3 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  data_2_uop_cf_trigger_backendHit_4 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  data_2_uop_cf_trigger_backendHit_5 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  data_2_uop_ctrl_rfWen = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  data_2_uop_ctrl_fpWen = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  data_2_uop_ctrl_fpu_typeTagIn = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  data_2_uop_ctrl_fpu_sqrt = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  data_2_uop_ctrl_fpu_rm = _RAND_44[2:0];
  _RAND_45 = {1{`RANDOM}};
  data_2_uop_pdest = _RAND_45[6:0];
  _RAND_46 = {1{`RANDOM}};
  data_2_uop_robIdx_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  data_2_uop_robIdx_value = _RAND_47[6:0];
  _RAND_48 = {2{`RANDOM}};
  data_3_src_0 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  data_3_src_1 = _RAND_49[63:0];
  _RAND_50 = {1{`RANDOM}};
  data_3_uop_cf_trigger_backendHit_0 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  data_3_uop_cf_trigger_backendHit_1 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  data_3_uop_cf_trigger_backendHit_2 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  data_3_uop_cf_trigger_backendHit_3 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  data_3_uop_cf_trigger_backendHit_4 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  data_3_uop_cf_trigger_backendHit_5 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  data_3_uop_ctrl_rfWen = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  data_3_uop_ctrl_fpWen = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  data_3_uop_ctrl_fpu_typeTagIn = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  data_3_uop_ctrl_fpu_sqrt = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  data_3_uop_ctrl_fpu_rm = _RAND_60[2:0];
  _RAND_61 = {1{`RANDOM}};
  data_3_uop_pdest = _RAND_61[6:0];
  _RAND_62 = {1{`RANDOM}};
  data_3_uop_robIdx_flag = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  data_3_uop_robIdx_value = _RAND_63[6:0];
  _RAND_64 = {2{`RANDOM}};
  data_4_src_0 = _RAND_64[63:0];
  _RAND_65 = {2{`RANDOM}};
  data_4_src_1 = _RAND_65[63:0];
  _RAND_66 = {1{`RANDOM}};
  data_4_uop_cf_trigger_backendHit_0 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  data_4_uop_cf_trigger_backendHit_1 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  data_4_uop_cf_trigger_backendHit_2 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  data_4_uop_cf_trigger_backendHit_3 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  data_4_uop_cf_trigger_backendHit_4 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  data_4_uop_cf_trigger_backendHit_5 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  data_4_uop_ctrl_rfWen = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  data_4_uop_ctrl_fpWen = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  data_4_uop_ctrl_fpu_typeTagIn = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  data_4_uop_ctrl_fpu_sqrt = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  data_4_uop_ctrl_fpu_rm = _RAND_76[2:0];
  _RAND_77 = {1{`RANDOM}};
  data_4_uop_pdest = _RAND_77[6:0];
  _RAND_78 = {1{`RANDOM}};
  data_4_uop_robIdx_flag = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  data_4_uop_robIdx_value = _RAND_79[6:0];
  _RAND_80 = {2{`RANDOM}};
  data_5_src_0 = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  data_5_src_1 = _RAND_81[63:0];
  _RAND_82 = {1{`RANDOM}};
  data_5_uop_cf_trigger_backendHit_0 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  data_5_uop_cf_trigger_backendHit_1 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  data_5_uop_cf_trigger_backendHit_2 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  data_5_uop_cf_trigger_backendHit_3 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  data_5_uop_cf_trigger_backendHit_4 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  data_5_uop_cf_trigger_backendHit_5 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  data_5_uop_ctrl_rfWen = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  data_5_uop_ctrl_fpWen = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  data_5_uop_ctrl_fpu_typeTagIn = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  data_5_uop_ctrl_fpu_sqrt = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  data_5_uop_ctrl_fpu_rm = _RAND_92[2:0];
  _RAND_93 = {1{`RANDOM}};
  data_5_uop_pdest = _RAND_93[6:0];
  _RAND_94 = {1{`RANDOM}};
  data_5_uop_robIdx_flag = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  data_5_uop_robIdx_value = _RAND_95[6:0];
  _RAND_96 = {2{`RANDOM}};
  data_6_src_0 = _RAND_96[63:0];
  _RAND_97 = {2{`RANDOM}};
  data_6_src_1 = _RAND_97[63:0];
  _RAND_98 = {1{`RANDOM}};
  data_6_uop_cf_trigger_backendHit_0 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  data_6_uop_cf_trigger_backendHit_1 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  data_6_uop_cf_trigger_backendHit_2 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  data_6_uop_cf_trigger_backendHit_3 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  data_6_uop_cf_trigger_backendHit_4 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  data_6_uop_cf_trigger_backendHit_5 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  data_6_uop_ctrl_rfWen = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  data_6_uop_ctrl_fpWen = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  data_6_uop_ctrl_fpu_typeTagIn = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  data_6_uop_ctrl_fpu_sqrt = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  data_6_uop_ctrl_fpu_rm = _RAND_108[2:0];
  _RAND_109 = {1{`RANDOM}};
  data_6_uop_pdest = _RAND_109[6:0];
  _RAND_110 = {1{`RANDOM}};
  data_6_uop_robIdx_flag = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  data_6_uop_robIdx_value = _RAND_111[6:0];
  _RAND_112 = {2{`RANDOM}};
  data_7_src_0 = _RAND_112[63:0];
  _RAND_113 = {2{`RANDOM}};
  data_7_src_1 = _RAND_113[63:0];
  _RAND_114 = {1{`RANDOM}};
  data_7_uop_cf_trigger_backendHit_0 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  data_7_uop_cf_trigger_backendHit_1 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  data_7_uop_cf_trigger_backendHit_2 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  data_7_uop_cf_trigger_backendHit_3 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  data_7_uop_cf_trigger_backendHit_4 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  data_7_uop_cf_trigger_backendHit_5 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  data_7_uop_ctrl_rfWen = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  data_7_uop_ctrl_fpWen = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  data_7_uop_ctrl_fpu_typeTagIn = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  data_7_uop_ctrl_fpu_sqrt = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  data_7_uop_ctrl_fpu_rm = _RAND_124[2:0];
  _RAND_125 = {1{`RANDOM}};
  data_7_uop_pdest = _RAND_125[6:0];
  _RAND_126 = {1{`RANDOM}};
  data_7_uop_robIdx_flag = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  data_7_uop_robIdx_value = _RAND_127[6:0];
  _RAND_128 = {1{`RANDOM}};
  emptyVec_0 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  emptyVec_1 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  emptyVec_2 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  emptyVec_3 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  emptyVec_4 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  emptyVec_5 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  emptyVec_6 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  emptyVec_7 = _RAND_135[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
