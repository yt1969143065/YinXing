module WrBypass_161(
  input        clock,
  input        reset,
  input        io_wen,
  input  [7:0] io_write_idx,
  input  [5:0] io_write_data_0,
  input  [5:0] io_write_data_1,
  input        io_write_way_mask_0,
  input        io_write_way_mask_1,
  output       io_hit,
  output       io_hit_data_0_valid,
  output [5:0] io_hit_data_0_bits,
  output       io_hit_data_1_valid,
  output [5:0] io_hit_data_1_bits
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
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
`endif // RANDOMIZE_REG_INIT
  wire  idx_tag_cam_clock; // @[WrBypass.scala 57:27]
  wire [7:0] idx_tag_cam_io_rreq_0_idx; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_0; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_1; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_2; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_3; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_4; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_5; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_6; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_7; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_8; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_9; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_10; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_11; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_12; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_13; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_14; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_15; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_wvalid; // @[WrBypass.scala 57:27]
  wire [7:0] idx_tag_cam_io_wdata_idx; // @[WrBypass.scala 57:27]
  wire [3:0] idx_tag_cam_io_windex; // @[WrBypass.scala 57:27]
  reg [5:0] data_mem_0 [0:15]; // @[WrBypass.scala 58:21]
  wire  data_mem_0_io_hit_data_0_bits_MPORT_en; // @[WrBypass.scala 58:21]
  wire [3:0] data_mem_0_io_hit_data_0_bits_MPORT_addr; // @[WrBypass.scala 58:21]
  wire [5:0] data_mem_0_io_hit_data_0_bits_MPORT_data; // @[WrBypass.scala 58:21]
  wire  data_mem_0_io_hit_data_1_bits_MPORT_en; // @[WrBypass.scala 58:21]
  wire [3:0] data_mem_0_io_hit_data_1_bits_MPORT_addr; // @[WrBypass.scala 58:21]
  wire [5:0] data_mem_0_io_hit_data_1_bits_MPORT_data; // @[WrBypass.scala 58:21]
  wire [5:0] data_mem_0_MPORT_data; // @[WrBypass.scala 58:21]
  wire [3:0] data_mem_0_MPORT_addr; // @[WrBypass.scala 58:21]
  wire  data_mem_0_MPORT_mask; // @[WrBypass.scala 58:21]
  wire  data_mem_0_MPORT_en; // @[WrBypass.scala 58:21]
  reg [5:0] data_mem_1 [0:15]; // @[WrBypass.scala 58:21]
  wire  data_mem_1_io_hit_data_0_bits_MPORT_en; // @[WrBypass.scala 58:21]
  wire [3:0] data_mem_1_io_hit_data_0_bits_MPORT_addr; // @[WrBypass.scala 58:21]
  wire [5:0] data_mem_1_io_hit_data_0_bits_MPORT_data; // @[WrBypass.scala 58:21]
  wire  data_mem_1_io_hit_data_1_bits_MPORT_en; // @[WrBypass.scala 58:21]
  wire [3:0] data_mem_1_io_hit_data_1_bits_MPORT_addr; // @[WrBypass.scala 58:21]
  wire [5:0] data_mem_1_io_hit_data_1_bits_MPORT_data; // @[WrBypass.scala 58:21]
  wire [5:0] data_mem_1_MPORT_data; // @[WrBypass.scala 58:21]
  wire [3:0] data_mem_1_MPORT_addr; // @[WrBypass.scala 58:21]
  wire  data_mem_1_MPORT_mask; // @[WrBypass.scala 58:21]
  wire  data_mem_1_MPORT_en; // @[WrBypass.scala 58:21]
  reg  valids_0_0; // @[WrBypass.scala 60:23]
  reg  valids_0_1; // @[WrBypass.scala 60:23]
  reg  valids_1_0; // @[WrBypass.scala 60:23]
  reg  valids_1_1; // @[WrBypass.scala 60:23]
  reg  valids_2_0; // @[WrBypass.scala 60:23]
  reg  valids_2_1; // @[WrBypass.scala 60:23]
  reg  valids_3_0; // @[WrBypass.scala 60:23]
  reg  valids_3_1; // @[WrBypass.scala 60:23]
  reg  valids_4_0; // @[WrBypass.scala 60:23]
  reg  valids_4_1; // @[WrBypass.scala 60:23]
  reg  valids_5_0; // @[WrBypass.scala 60:23]
  reg  valids_5_1; // @[WrBypass.scala 60:23]
  reg  valids_6_0; // @[WrBypass.scala 60:23]
  reg  valids_6_1; // @[WrBypass.scala 60:23]
  reg  valids_7_0; // @[WrBypass.scala 60:23]
  reg  valids_7_1; // @[WrBypass.scala 60:23]
  reg  valids_8_0; // @[WrBypass.scala 60:23]
  reg  valids_8_1; // @[WrBypass.scala 60:23]
  reg  valids_9_0; // @[WrBypass.scala 60:23]
  reg  valids_9_1; // @[WrBypass.scala 60:23]
  reg  valids_10_0; // @[WrBypass.scala 60:23]
  reg  valids_10_1; // @[WrBypass.scala 60:23]
  reg  valids_11_0; // @[WrBypass.scala 60:23]
  reg  valids_11_1; // @[WrBypass.scala 60:23]
  reg  valids_12_0; // @[WrBypass.scala 60:23]
  reg  valids_12_1; // @[WrBypass.scala 60:23]
  reg  valids_13_0; // @[WrBypass.scala 60:23]
  reg  valids_13_1; // @[WrBypass.scala 60:23]
  reg  valids_14_0; // @[WrBypass.scala 60:23]
  reg  valids_14_1; // @[WrBypass.scala 60:23]
  reg  valids_15_0; // @[WrBypass.scala 60:23]
  reg  valids_15_1; // @[WrBypass.scala 60:23]
  reg  enq_ptr_flag; // @[WrBypass.scala 62:24]
  reg [3:0] enq_ptr_value; // @[WrBypass.scala 62:24]
  wire [7:0] hit_idx_lo = {idx_tag_cam_io_rresp_0_7,idx_tag_cam_io_rresp_0_6,idx_tag_cam_io_rresp_0_5,
    idx_tag_cam_io_rresp_0_4,idx_tag_cam_io_rresp_0_3,idx_tag_cam_io_rresp_0_2,idx_tag_cam_io_rresp_0_1,
    idx_tag_cam_io_rresp_0_0}; // @[OneHot.scala 22:45]
  wire [15:0] _hit_idx_T = {idx_tag_cam_io_rresp_0_15,idx_tag_cam_io_rresp_0_14,idx_tag_cam_io_rresp_0_13,
    idx_tag_cam_io_rresp_0_12,idx_tag_cam_io_rresp_0_11,idx_tag_cam_io_rresp_0_10,idx_tag_cam_io_rresp_0_9,
    idx_tag_cam_io_rresp_0_8,hit_idx_lo}; // @[OneHot.scala 22:45]
  wire [7:0] hit_idx_hi_1 = _hit_idx_T[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] hit_idx_lo_1 = _hit_idx_T[7:0]; // @[OneHot.scala 31:18]
  wire  _hit_idx_T_1 = |hit_idx_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _hit_idx_T_2 = hit_idx_hi_1 | hit_idx_lo_1; // @[OneHot.scala 32:28]
  wire [3:0] hit_idx_hi_2 = _hit_idx_T_2[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] hit_idx_lo_2 = _hit_idx_T_2[3:0]; // @[OneHot.scala 31:18]
  wire  _hit_idx_T_3 = |hit_idx_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _hit_idx_T_4 = hit_idx_hi_2 | hit_idx_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] hit_idx_hi_3 = _hit_idx_T_4[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] hit_idx_lo_3 = _hit_idx_T_4[1:0]; // @[OneHot.scala 31:18]
  wire  _hit_idx_T_5 = |hit_idx_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _hit_idx_T_6 = hit_idx_hi_3 | hit_idx_lo_3; // @[OneHot.scala 32:28]
  wire [2:0] _hit_idx_T_9 = {_hit_idx_T_3,_hit_idx_T_5,_hit_idx_T_6[1]}; // @[Cat.scala 31:58]
  wire [3:0] hit_idx = {_hit_idx_T_1,_hit_idx_T_3,_hit_idx_T_5,_hit_idx_T_6[1]}; // @[Cat.scala 31:58]
  wire  hit = idx_tag_cam_io_rresp_0_0 | idx_tag_cam_io_rresp_0_1 | idx_tag_cam_io_rresp_0_2 |
    idx_tag_cam_io_rresp_0_3 | idx_tag_cam_io_rresp_0_4 | idx_tag_cam_io_rresp_0_5 | idx_tag_cam_io_rresp_0_6 |
    idx_tag_cam_io_rresp_0_7 | idx_tag_cam_io_rresp_0_8 | idx_tag_cam_io_rresp_0_9 | idx_tag_cam_io_rresp_0_10 |
    idx_tag_cam_io_rresp_0_11 | idx_tag_cam_io_rresp_0_12 | idx_tag_cam_io_rresp_0_13 | idx_tag_cam_io_rresp_0_14 |
    idx_tag_cam_io_rresp_0_15; // @[WrBypass.scala 68:29]
  wire  _io_hit_data_0_valid_T_15 = idx_tag_cam_io_rresp_0_15 & valids_15_0; // @[Mux.scala 27:73]
  wire  _io_hit_data_0_valid_T_46 = idx_tag_cam_io_rresp_0_15 & valids_15_1; // @[Mux.scala 27:73]
  wire  _GEN_11 = 4'h0 == hit_idx | valids_0_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_12 = 4'h1 == hit_idx | valids_1_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_13 = 4'h2 == hit_idx | valids_2_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_14 = 4'h3 == hit_idx | valids_3_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_15 = 4'h4 == hit_idx | valids_4_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_16 = 4'h5 == hit_idx | valids_5_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_17 = 4'h6 == hit_idx | valids_6_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_18 = 4'h7 == hit_idx | valids_7_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_19 = 4'h8 == hit_idx | valids_8_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_20 = 4'h9 == hit_idx | valids_9_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_21 = 4'ha == hit_idx | valids_10_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_22 = 4'hb == hit_idx | valids_11_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_23 = 4'hc == hit_idx | valids_12_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_24 = 4'hd == hit_idx | valids_13_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_25 = 4'he == hit_idx | valids_14_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_26 = 4'hf == hit_idx | valids_15_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_43 = 4'h0 == enq_ptr_value ? 1'h0 : valids_0_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_44 = 4'h1 == enq_ptr_value ? 1'h0 : valids_1_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_45 = 4'h2 == enq_ptr_value ? 1'h0 : valids_2_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_46 = 4'h3 == enq_ptr_value ? 1'h0 : valids_3_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_47 = 4'h4 == enq_ptr_value ? 1'h0 : valids_4_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_48 = 4'h5 == enq_ptr_value ? 1'h0 : valids_5_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_49 = 4'h6 == enq_ptr_value ? 1'h0 : valids_6_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_50 = 4'h7 == enq_ptr_value ? 1'h0 : valids_7_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_51 = 4'h8 == enq_ptr_value ? 1'h0 : valids_8_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_52 = 4'h9 == enq_ptr_value ? 1'h0 : valids_9_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_53 = 4'ha == enq_ptr_value ? 1'h0 : valids_10_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_54 = 4'hb == enq_ptr_value ? 1'h0 : valids_11_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_55 = 4'hc == enq_ptr_value ? 1'h0 : valids_12_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_56 = 4'hd == enq_ptr_value ? 1'h0 : valids_13_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_57 = 4'he == enq_ptr_value ? 1'h0 : valids_14_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_58 = 4'hf == enq_ptr_value ? 1'h0 : valids_15_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_59 = 4'h0 == enq_ptr_value | _GEN_43; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_60 = 4'h1 == enq_ptr_value | _GEN_44; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_61 = 4'h2 == enq_ptr_value | _GEN_45; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_62 = 4'h3 == enq_ptr_value | _GEN_46; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_63 = 4'h4 == enq_ptr_value | _GEN_47; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_64 = 4'h5 == enq_ptr_value | _GEN_48; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_65 = 4'h6 == enq_ptr_value | _GEN_49; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_66 = 4'h7 == enq_ptr_value | _GEN_50; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_67 = 4'h8 == enq_ptr_value | _GEN_51; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_68 = 4'h9 == enq_ptr_value | _GEN_52; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_69 = 4'ha == enq_ptr_value | _GEN_53; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_70 = 4'hb == enq_ptr_value | _GEN_54; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_71 = 4'hc == enq_ptr_value | _GEN_55; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_72 = 4'hd == enq_ptr_value | _GEN_56; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_73 = 4'he == enq_ptr_value | _GEN_57; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_74 = 4'hf == enq_ptr_value | _GEN_58; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_123 = 4'h0 == hit_idx | valids_0_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_124 = 4'h1 == hit_idx | valids_1_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_125 = 4'h2 == hit_idx | valids_2_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_126 = 4'h3 == hit_idx | valids_3_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_127 = 4'h4 == hit_idx | valids_4_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_128 = 4'h5 == hit_idx | valids_5_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_129 = 4'h6 == hit_idx | valids_6_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_130 = 4'h7 == hit_idx | valids_7_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_131 = 4'h8 == hit_idx | valids_8_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_132 = 4'h9 == hit_idx | valids_9_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_133 = 4'ha == hit_idx | valids_10_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_134 = 4'hb == hit_idx | valids_11_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_135 = 4'hc == hit_idx | valids_12_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_136 = 4'hd == hit_idx | valids_13_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_137 = 4'he == hit_idx | valids_14_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_138 = 4'hf == hit_idx | valids_15_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_155 = 4'h0 == enq_ptr_value ? 1'h0 : valids_0_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_156 = 4'h1 == enq_ptr_value ? 1'h0 : valids_1_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_157 = 4'h2 == enq_ptr_value ? 1'h0 : valids_2_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_158 = 4'h3 == enq_ptr_value ? 1'h0 : valids_3_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_159 = 4'h4 == enq_ptr_value ? 1'h0 : valids_4_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_160 = 4'h5 == enq_ptr_value ? 1'h0 : valids_5_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_161 = 4'h6 == enq_ptr_value ? 1'h0 : valids_6_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_162 = 4'h7 == enq_ptr_value ? 1'h0 : valids_7_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_163 = 4'h8 == enq_ptr_value ? 1'h0 : valids_8_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_164 = 4'h9 == enq_ptr_value ? 1'h0 : valids_9_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_165 = 4'ha == enq_ptr_value ? 1'h0 : valids_10_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_166 = 4'hb == enq_ptr_value ? 1'h0 : valids_11_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_167 = 4'hc == enq_ptr_value ? 1'h0 : valids_12_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_168 = 4'hd == enq_ptr_value ? 1'h0 : valids_13_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_169 = 4'he == enq_ptr_value ? 1'h0 : valids_14_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_170 = 4'hf == enq_ptr_value ? 1'h0 : valids_15_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_171 = 4'h0 == enq_ptr_value | _GEN_155; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_172 = 4'h1 == enq_ptr_value | _GEN_156; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_173 = 4'h2 == enq_ptr_value | _GEN_157; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_174 = 4'h3 == enq_ptr_value | _GEN_158; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_175 = 4'h4 == enq_ptr_value | _GEN_159; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_176 = 4'h5 == enq_ptr_value | _GEN_160; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_177 = 4'h6 == enq_ptr_value | _GEN_161; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_178 = 4'h7 == enq_ptr_value | _GEN_162; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_179 = 4'h8 == enq_ptr_value | _GEN_163; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_180 = 4'h9 == enq_ptr_value | _GEN_164; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_181 = 4'ha == enq_ptr_value | _GEN_165; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_182 = 4'hb == enq_ptr_value | _GEN_166; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_183 = 4'hc == enq_ptr_value | _GEN_167; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_184 = 4'hd == enq_ptr_value | _GEN_168; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_185 = 4'he == enq_ptr_value | _GEN_169; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_186 = 4'hf == enq_ptr_value | _GEN_170; // @[WrBypass.scala 95:{30,30}]
  wire  enq_en = io_wen & ~hit; // @[WrBypass.scala 101:23]
  wire [4:0] _enq_ptr_new_ptr_T = {enq_ptr_flag,enq_ptr_value}; // @[Cat.scala 31:58]
  wire [4:0] _GEN_299 = {{4'd0}, enq_en}; // @[CircularQueuePtr.scala 40:46]
  wire [4:0] _enq_ptr_new_ptr_T_2 = _enq_ptr_new_ptr_T + _GEN_299; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] enq_ptr_new_ptr_value = _enq_ptr_new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 40:59]
  wire  enq_ptr_new_ptr_flag = _enq_ptr_new_ptr_T_2[4]; // @[CircularQueuePtr.scala 40:59]
  CAMTemplate_161 idx_tag_cam ( // @[WrBypass.scala 57:27]
    .clock(idx_tag_cam_clock),
    .io_rreq_0_idx(idx_tag_cam_io_rreq_0_idx),
    .io_rresp_0_0(idx_tag_cam_io_rresp_0_0),
    .io_rresp_0_1(idx_tag_cam_io_rresp_0_1),
    .io_rresp_0_2(idx_tag_cam_io_rresp_0_2),
    .io_rresp_0_3(idx_tag_cam_io_rresp_0_3),
    .io_rresp_0_4(idx_tag_cam_io_rresp_0_4),
    .io_rresp_0_5(idx_tag_cam_io_rresp_0_5),
    .io_rresp_0_6(idx_tag_cam_io_rresp_0_6),
    .io_rresp_0_7(idx_tag_cam_io_rresp_0_7),
    .io_rresp_0_8(idx_tag_cam_io_rresp_0_8),
    .io_rresp_0_9(idx_tag_cam_io_rresp_0_9),
    .io_rresp_0_10(idx_tag_cam_io_rresp_0_10),
    .io_rresp_0_11(idx_tag_cam_io_rresp_0_11),
    .io_rresp_0_12(idx_tag_cam_io_rresp_0_12),
    .io_rresp_0_13(idx_tag_cam_io_rresp_0_13),
    .io_rresp_0_14(idx_tag_cam_io_rresp_0_14),
    .io_rresp_0_15(idx_tag_cam_io_rresp_0_15),
    .io_wvalid(idx_tag_cam_io_wvalid),
    .io_wdata_idx(idx_tag_cam_io_wdata_idx),
    .io_windex(idx_tag_cam_io_windex)
  );
  assign data_mem_0_io_hit_data_0_bits_MPORT_en = 1'h1;
  assign data_mem_0_io_hit_data_0_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_9};
  assign data_mem_0_io_hit_data_0_bits_MPORT_data = data_mem_0[data_mem_0_io_hit_data_0_bits_MPORT_addr]; // @[WrBypass.scala 58:21]
  assign data_mem_0_io_hit_data_1_bits_MPORT_en = 1'h1;
  assign data_mem_0_io_hit_data_1_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_9};
  assign data_mem_0_io_hit_data_1_bits_MPORT_data = data_mem_0[data_mem_0_io_hit_data_1_bits_MPORT_addr]; // @[WrBypass.scala 58:21]
  assign data_mem_0_MPORT_data = io_write_data_0;
  assign data_mem_0_MPORT_addr = hit ? hit_idx : enq_ptr_value;
  assign data_mem_0_MPORT_mask = io_write_way_mask_0;
  assign data_mem_0_MPORT_en = io_wen;
  assign data_mem_1_io_hit_data_0_bits_MPORT_en = 1'h1;
  assign data_mem_1_io_hit_data_0_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_9};
  assign data_mem_1_io_hit_data_0_bits_MPORT_data = data_mem_1[data_mem_1_io_hit_data_0_bits_MPORT_addr]; // @[WrBypass.scala 58:21]
  assign data_mem_1_io_hit_data_1_bits_MPORT_en = 1'h1;
  assign data_mem_1_io_hit_data_1_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_9};
  assign data_mem_1_io_hit_data_1_bits_MPORT_data = data_mem_1[data_mem_1_io_hit_data_1_bits_MPORT_addr]; // @[WrBypass.scala 58:21]
  assign data_mem_1_MPORT_data = io_write_data_1;
  assign data_mem_1_MPORT_addr = hit ? hit_idx : enq_ptr_value;
  assign data_mem_1_MPORT_mask = io_write_way_mask_1;
  assign data_mem_1_MPORT_en = io_wen;
  assign io_hit = idx_tag_cam_io_rresp_0_0 | idx_tag_cam_io_rresp_0_1 | idx_tag_cam_io_rresp_0_2 |
    idx_tag_cam_io_rresp_0_3 | idx_tag_cam_io_rresp_0_4 | idx_tag_cam_io_rresp_0_5 | idx_tag_cam_io_rresp_0_6 |
    idx_tag_cam_io_rresp_0_7 | idx_tag_cam_io_rresp_0_8 | idx_tag_cam_io_rresp_0_9 | idx_tag_cam_io_rresp_0_10 |
    idx_tag_cam_io_rresp_0_11 | idx_tag_cam_io_rresp_0_12 | idx_tag_cam_io_rresp_0_13 | idx_tag_cam_io_rresp_0_14 |
    idx_tag_cam_io_rresp_0_15; // @[WrBypass.scala 68:29]
  assign io_hit_data_0_valid = idx_tag_cam_io_rresp_0_0 & valids_0_0 | idx_tag_cam_io_rresp_0_1 & valids_1_0 |
    idx_tag_cam_io_rresp_0_2 & valids_2_0 | idx_tag_cam_io_rresp_0_3 & valids_3_0 | idx_tag_cam_io_rresp_0_4 &
    valids_4_0 | idx_tag_cam_io_rresp_0_5 & valids_5_0 | idx_tag_cam_io_rresp_0_6 & valids_6_0 |
    idx_tag_cam_io_rresp_0_7 & valids_7_0 | idx_tag_cam_io_rresp_0_8 & valids_8_0 | idx_tag_cam_io_rresp_0_9 &
    valids_9_0 | idx_tag_cam_io_rresp_0_10 & valids_10_0 | idx_tag_cam_io_rresp_0_11 & valids_11_0 |
    idx_tag_cam_io_rresp_0_12 & valids_12_0 | idx_tag_cam_io_rresp_0_13 & valids_13_0 | idx_tag_cam_io_rresp_0_14 &
    valids_14_0 | _io_hit_data_0_valid_T_15; // @[Mux.scala 27:73]
  assign io_hit_data_0_bits = data_mem_0_io_hit_data_0_bits_MPORT_data; // @[WrBypass.scala 73:26]
  assign io_hit_data_1_valid = idx_tag_cam_io_rresp_0_0 & valids_0_1 | idx_tag_cam_io_rresp_0_1 & valids_1_1 |
    idx_tag_cam_io_rresp_0_2 & valids_2_1 | idx_tag_cam_io_rresp_0_3 & valids_3_1 | idx_tag_cam_io_rresp_0_4 &
    valids_4_1 | idx_tag_cam_io_rresp_0_5 & valids_5_1 | idx_tag_cam_io_rresp_0_6 & valids_6_1 |
    idx_tag_cam_io_rresp_0_7 & valids_7_1 | idx_tag_cam_io_rresp_0_8 & valids_8_1 | idx_tag_cam_io_rresp_0_9 &
    valids_9_1 | idx_tag_cam_io_rresp_0_10 & valids_10_1 | idx_tag_cam_io_rresp_0_11 & valids_11_1 |
    idx_tag_cam_io_rresp_0_12 & valids_12_1 | idx_tag_cam_io_rresp_0_13 & valids_13_1 | idx_tag_cam_io_rresp_0_14 &
    valids_14_1 | _io_hit_data_0_valid_T_46; // @[Mux.scala 27:73]
  assign io_hit_data_1_bits = data_mem_1_io_hit_data_1_bits_MPORT_data; // @[WrBypass.scala 73:26]
  assign idx_tag_cam_clock = clock;
  assign idx_tag_cam_io_rreq_0_idx = io_write_idx; // @[WrBypass.scala 53:16]
  assign idx_tag_cam_io_wvalid = io_wen & ~hit; // @[WrBypass.scala 101:23]
  assign idx_tag_cam_io_wdata_idx = io_write_idx; // @[WrBypass.scala 53:16]
  assign idx_tag_cam_io_windex = enq_ptr_value; // @[WrBypass.scala 103:31]
  always @(posedge clock) begin
    if (data_mem_0_MPORT_en & data_mem_0_MPORT_mask) begin
      data_mem_0[data_mem_0_MPORT_addr] <= data_mem_0_MPORT_data; // @[WrBypass.scala 58:21]
    end
    if (data_mem_1_MPORT_en & data_mem_1_MPORT_mask) begin
      data_mem_1[data_mem_1_MPORT_addr] <= data_mem_1_MPORT_data; // @[WrBypass.scala 58:21]
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_0_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_0_0 <= _GEN_11;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_0_0 <= _GEN_59;
      end else begin
        valids_0_0 <= _GEN_43;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_0_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_0_1 <= _GEN_123;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_0_1 <= _GEN_171;
      end else begin
        valids_0_1 <= _GEN_155;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_1_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_1_0 <= _GEN_12;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_1_0 <= _GEN_60;
      end else begin
        valids_1_0 <= _GEN_44;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_1_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_1_1 <= _GEN_124;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_1_1 <= _GEN_172;
      end else begin
        valids_1_1 <= _GEN_156;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_2_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_2_0 <= _GEN_13;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_2_0 <= _GEN_61;
      end else begin
        valids_2_0 <= _GEN_45;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_2_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_2_1 <= _GEN_125;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_2_1 <= _GEN_173;
      end else begin
        valids_2_1 <= _GEN_157;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_3_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_3_0 <= _GEN_14;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_3_0 <= _GEN_62;
      end else begin
        valids_3_0 <= _GEN_46;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_3_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_3_1 <= _GEN_126;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_3_1 <= _GEN_174;
      end else begin
        valids_3_1 <= _GEN_158;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_4_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_4_0 <= _GEN_15;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_4_0 <= _GEN_63;
      end else begin
        valids_4_0 <= _GEN_47;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_4_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_4_1 <= _GEN_127;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_4_1 <= _GEN_175;
      end else begin
        valids_4_1 <= _GEN_159;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_5_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_5_0 <= _GEN_16;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_5_0 <= _GEN_64;
      end else begin
        valids_5_0 <= _GEN_48;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_5_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_5_1 <= _GEN_128;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_5_1 <= _GEN_176;
      end else begin
        valids_5_1 <= _GEN_160;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_6_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_6_0 <= _GEN_17;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_6_0 <= _GEN_65;
      end else begin
        valids_6_0 <= _GEN_49;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_6_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_6_1 <= _GEN_129;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_6_1 <= _GEN_177;
      end else begin
        valids_6_1 <= _GEN_161;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_7_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_7_0 <= _GEN_18;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_7_0 <= _GEN_66;
      end else begin
        valids_7_0 <= _GEN_50;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_7_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_7_1 <= _GEN_130;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_7_1 <= _GEN_178;
      end else begin
        valids_7_1 <= _GEN_162;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_8_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_8_0 <= _GEN_19;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_8_0 <= _GEN_67;
      end else begin
        valids_8_0 <= _GEN_51;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_8_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_8_1 <= _GEN_131;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_8_1 <= _GEN_179;
      end else begin
        valids_8_1 <= _GEN_163;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_9_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_9_0 <= _GEN_20;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_9_0 <= _GEN_68;
      end else begin
        valids_9_0 <= _GEN_52;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_9_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_9_1 <= _GEN_132;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_9_1 <= _GEN_180;
      end else begin
        valids_9_1 <= _GEN_164;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_10_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_10_0 <= _GEN_21;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_10_0 <= _GEN_69;
      end else begin
        valids_10_0 <= _GEN_53;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_10_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_10_1 <= _GEN_133;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_10_1 <= _GEN_181;
      end else begin
        valids_10_1 <= _GEN_165;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_11_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_11_0 <= _GEN_22;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_11_0 <= _GEN_70;
      end else begin
        valids_11_0 <= _GEN_54;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_11_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_11_1 <= _GEN_134;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_11_1 <= _GEN_182;
      end else begin
        valids_11_1 <= _GEN_166;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_12_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_12_0 <= _GEN_23;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_12_0 <= _GEN_71;
      end else begin
        valids_12_0 <= _GEN_55;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_12_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_12_1 <= _GEN_135;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_12_1 <= _GEN_183;
      end else begin
        valids_12_1 <= _GEN_167;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_13_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_13_0 <= _GEN_24;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_13_0 <= _GEN_72;
      end else begin
        valids_13_0 <= _GEN_56;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_13_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_13_1 <= _GEN_136;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_13_1 <= _GEN_184;
      end else begin
        valids_13_1 <= _GEN_168;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_14_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_14_0 <= _GEN_25;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_14_0 <= _GEN_73;
      end else begin
        valids_14_0 <= _GEN_57;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_14_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_14_1 <= _GEN_137;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_14_1 <= _GEN_185;
      end else begin
        valids_14_1 <= _GEN_169;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_15_0 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_0) begin // @[WrBypass.scala 89:35]
          valids_15_0 <= _GEN_26;
        end
      end else if (io_write_way_mask_0) begin // @[WrBypass.scala 94:35]
        valids_15_0 <= _GEN_74;
      end else begin
        valids_15_0 <= _GEN_58;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_15_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_15_1 <= _GEN_138;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_15_1 <= _GEN_186;
      end else begin
        valids_15_1 <= _GEN_170;
      end
    end
    if (reset) begin // @[WrBypass.scala 62:24]
      enq_ptr_flag <= 1'h0; // @[WrBypass.scala 62:24]
    end else begin
      enq_ptr_flag <= enq_ptr_new_ptr_flag; // @[WrBypass.scala 105:11]
    end
    if (reset) begin // @[WrBypass.scala 62:24]
      enq_ptr_value <= 4'h0; // @[WrBypass.scala 62:24]
    end else begin
      enq_ptr_value <= enq_ptr_new_ptr_value; // @[WrBypass.scala 105:11]
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_mem_0[initvar] = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_mem_1[initvar] = _RAND_1[5:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  valids_0_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  valids_0_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  valids_1_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  valids_1_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  valids_2_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  valids_2_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  valids_3_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  valids_3_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  valids_4_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  valids_4_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  valids_5_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  valids_5_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  valids_6_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  valids_6_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  valids_7_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  valids_7_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  valids_8_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  valids_8_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  valids_9_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  valids_9_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  valids_10_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  valids_10_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  valids_11_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  valids_11_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  valids_12_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  valids_12_1 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  valids_13_0 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  valids_13_1 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  valids_14_0 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  valids_14_1 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  valids_15_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  valids_15_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  enq_ptr_flag = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  enq_ptr_value = _RAND_35[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
