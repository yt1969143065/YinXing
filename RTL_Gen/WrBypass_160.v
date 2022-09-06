module WrBypass_160(
  input         clock,
  input         reset,
  input         io_wen,
  input  [10:0] io_write_idx,
  input  [1:0]  io_write_data_0,
  input  [1:0]  io_write_data_1,
  input         io_write_way_mask_0,
  input         io_write_way_mask_1,
  output        io_hit,
  output        io_hit_data_0_valid,
  output [1:0]  io_hit_data_0_bits,
  output        io_hit_data_1_valid,
  output [1:0]  io_hit_data_1_bits
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
`endif // RANDOMIZE_REG_INIT
  wire  idx_tag_cam_clock; // @[WrBypass.scala 57:27]
  wire [10:0] idx_tag_cam_io_rreq_0_idx; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_0; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_1; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_2; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_3; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_4; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_5; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_6; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_rresp_0_7; // @[WrBypass.scala 57:27]
  wire  idx_tag_cam_io_wvalid; // @[WrBypass.scala 57:27]
  wire [10:0] idx_tag_cam_io_wdata_idx; // @[WrBypass.scala 57:27]
  wire [2:0] idx_tag_cam_io_windex; // @[WrBypass.scala 57:27]
  reg [1:0] data_mem_0 [0:7]; // @[WrBypass.scala 58:21]
  wire  data_mem_0_io_hit_data_0_bits_MPORT_en; // @[WrBypass.scala 58:21]
  wire [2:0] data_mem_0_io_hit_data_0_bits_MPORT_addr; // @[WrBypass.scala 58:21]
  wire [1:0] data_mem_0_io_hit_data_0_bits_MPORT_data; // @[WrBypass.scala 58:21]
  wire  data_mem_0_io_hit_data_1_bits_MPORT_en; // @[WrBypass.scala 58:21]
  wire [2:0] data_mem_0_io_hit_data_1_bits_MPORT_addr; // @[WrBypass.scala 58:21]
  wire [1:0] data_mem_0_io_hit_data_1_bits_MPORT_data; // @[WrBypass.scala 58:21]
  wire [1:0] data_mem_0_MPORT_data; // @[WrBypass.scala 58:21]
  wire [2:0] data_mem_0_MPORT_addr; // @[WrBypass.scala 58:21]
  wire  data_mem_0_MPORT_mask; // @[WrBypass.scala 58:21]
  wire  data_mem_0_MPORT_en; // @[WrBypass.scala 58:21]
  reg [1:0] data_mem_1 [0:7]; // @[WrBypass.scala 58:21]
  wire  data_mem_1_io_hit_data_0_bits_MPORT_en; // @[WrBypass.scala 58:21]
  wire [2:0] data_mem_1_io_hit_data_0_bits_MPORT_addr; // @[WrBypass.scala 58:21]
  wire [1:0] data_mem_1_io_hit_data_0_bits_MPORT_data; // @[WrBypass.scala 58:21]
  wire  data_mem_1_io_hit_data_1_bits_MPORT_en; // @[WrBypass.scala 58:21]
  wire [2:0] data_mem_1_io_hit_data_1_bits_MPORT_addr; // @[WrBypass.scala 58:21]
  wire [1:0] data_mem_1_io_hit_data_1_bits_MPORT_data; // @[WrBypass.scala 58:21]
  wire [1:0] data_mem_1_MPORT_data; // @[WrBypass.scala 58:21]
  wire [2:0] data_mem_1_MPORT_addr; // @[WrBypass.scala 58:21]
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
  reg  enq_ptr_flag; // @[WrBypass.scala 62:24]
  reg [2:0] enq_ptr_value; // @[WrBypass.scala 62:24]
  wire [7:0] _hit_idx_T = {idx_tag_cam_io_rresp_0_7,idx_tag_cam_io_rresp_0_6,idx_tag_cam_io_rresp_0_5,
    idx_tag_cam_io_rresp_0_4,idx_tag_cam_io_rresp_0_3,idx_tag_cam_io_rresp_0_2,idx_tag_cam_io_rresp_0_1,
    idx_tag_cam_io_rresp_0_0}; // @[OneHot.scala 22:45]
  wire [3:0] hit_idx_hi_1 = _hit_idx_T[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] hit_idx_lo_1 = _hit_idx_T[3:0]; // @[OneHot.scala 31:18]
  wire  _hit_idx_T_1 = |hit_idx_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _hit_idx_T_2 = hit_idx_hi_1 | hit_idx_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] hit_idx_hi_2 = _hit_idx_T_2[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] hit_idx_lo_2 = _hit_idx_T_2[1:0]; // @[OneHot.scala 31:18]
  wire  _hit_idx_T_3 = |hit_idx_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _hit_idx_T_4 = hit_idx_hi_2 | hit_idx_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] _hit_idx_T_6 = {_hit_idx_T_3,_hit_idx_T_4[1]}; // @[Cat.scala 31:58]
  wire [2:0] hit_idx = {_hit_idx_T_1,_hit_idx_T_3,_hit_idx_T_4[1]}; // @[Cat.scala 31:58]
  wire  hit = idx_tag_cam_io_rresp_0_0 | idx_tag_cam_io_rresp_0_1 | idx_tag_cam_io_rresp_0_2 |
    idx_tag_cam_io_rresp_0_3 | idx_tag_cam_io_rresp_0_4 | idx_tag_cam_io_rresp_0_5 | idx_tag_cam_io_rresp_0_6 |
    idx_tag_cam_io_rresp_0_7; // @[WrBypass.scala 68:29]
  wire  _GEN_11 = 3'h0 == hit_idx | valids_0_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_12 = 3'h1 == hit_idx | valids_1_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_13 = 3'h2 == hit_idx | valids_2_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_14 = 3'h3 == hit_idx | valids_3_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_15 = 3'h4 == hit_idx | valids_4_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_16 = 3'h5 == hit_idx | valids_5_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_17 = 3'h6 == hit_idx | valids_6_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_18 = 3'h7 == hit_idx | valids_7_0; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_27 = 3'h0 == enq_ptr_value ? 1'h0 : valids_0_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_28 = 3'h1 == enq_ptr_value ? 1'h0 : valids_1_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_29 = 3'h2 == enq_ptr_value ? 1'h0 : valids_2_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_30 = 3'h3 == enq_ptr_value ? 1'h0 : valids_3_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_31 = 3'h4 == enq_ptr_value ? 1'h0 : valids_4_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_32 = 3'h5 == enq_ptr_value ? 1'h0 : valids_5_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_33 = 3'h6 == enq_ptr_value ? 1'h0 : valids_6_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_34 = 3'h7 == enq_ptr_value ? 1'h0 : valids_7_0; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_35 = 3'h0 == enq_ptr_value | _GEN_27; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_36 = 3'h1 == enq_ptr_value | _GEN_28; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_37 = 3'h2 == enq_ptr_value | _GEN_29; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_38 = 3'h3 == enq_ptr_value | _GEN_30; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_39 = 3'h4 == enq_ptr_value | _GEN_31; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_40 = 3'h5 == enq_ptr_value | _GEN_32; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_41 = 3'h6 == enq_ptr_value | _GEN_33; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_42 = 3'h7 == enq_ptr_value | _GEN_34; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_67 = 3'h0 == hit_idx | valids_0_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_68 = 3'h1 == hit_idx | valids_1_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_69 = 3'h2 == hit_idx | valids_2_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_70 = 3'h3 == hit_idx | valids_3_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_71 = 3'h4 == hit_idx | valids_4_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_72 = 3'h5 == hit_idx | valids_5_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_73 = 3'h6 == hit_idx | valids_6_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_74 = 3'h7 == hit_idx | valids_7_1; // @[WrBypass.scala 60:23 90:{30,30}]
  wire  _GEN_83 = 3'h0 == enq_ptr_value ? 1'h0 : valids_0_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_84 = 3'h1 == enq_ptr_value ? 1'h0 : valids_1_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_85 = 3'h2 == enq_ptr_value ? 1'h0 : valids_2_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_86 = 3'h3 == enq_ptr_value ? 1'h0 : valids_3_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_87 = 3'h4 == enq_ptr_value ? 1'h0 : valids_4_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_88 = 3'h5 == enq_ptr_value ? 1'h0 : valids_5_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_89 = 3'h6 == enq_ptr_value ? 1'h0 : valids_6_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_90 = 3'h7 == enq_ptr_value ? 1'h0 : valids_7_1; // @[WrBypass.scala 60:23 93:{28,28}]
  wire  _GEN_91 = 3'h0 == enq_ptr_value | _GEN_83; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_92 = 3'h1 == enq_ptr_value | _GEN_84; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_93 = 3'h2 == enq_ptr_value | _GEN_85; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_94 = 3'h3 == enq_ptr_value | _GEN_86; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_95 = 3'h4 == enq_ptr_value | _GEN_87; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_96 = 3'h5 == enq_ptr_value | _GEN_88; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_97 = 3'h6 == enq_ptr_value | _GEN_89; // @[WrBypass.scala 95:{30,30}]
  wire  _GEN_98 = 3'h7 == enq_ptr_value | _GEN_90; // @[WrBypass.scala 95:{30,30}]
  wire  enq_en = io_wen & ~hit; // @[WrBypass.scala 101:23]
  wire [3:0] _enq_ptr_new_ptr_T = {enq_ptr_flag,enq_ptr_value}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_155 = {{3'd0}, enq_en}; // @[CircularQueuePtr.scala 40:46]
  wire [3:0] _enq_ptr_new_ptr_T_2 = _enq_ptr_new_ptr_T + _GEN_155; // @[CircularQueuePtr.scala 40:46]
  wire [2:0] enq_ptr_new_ptr_value = _enq_ptr_new_ptr_T_2[2:0]; // @[CircularQueuePtr.scala 40:59]
  wire  enq_ptr_new_ptr_flag = _enq_ptr_new_ptr_T_2[3]; // @[CircularQueuePtr.scala 40:59]
  CAMTemplate_160 idx_tag_cam ( // @[WrBypass.scala 57:27]
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
    .io_wvalid(idx_tag_cam_io_wvalid),
    .io_wdata_idx(idx_tag_cam_io_wdata_idx),
    .io_windex(idx_tag_cam_io_windex)
  );
  assign data_mem_0_io_hit_data_0_bits_MPORT_en = 1'h1;
  assign data_mem_0_io_hit_data_0_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_6};
  assign data_mem_0_io_hit_data_0_bits_MPORT_data = data_mem_0[data_mem_0_io_hit_data_0_bits_MPORT_addr]; // @[WrBypass.scala 58:21]
  assign data_mem_0_io_hit_data_1_bits_MPORT_en = 1'h1;
  assign data_mem_0_io_hit_data_1_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_6};
  assign data_mem_0_io_hit_data_1_bits_MPORT_data = data_mem_0[data_mem_0_io_hit_data_1_bits_MPORT_addr]; // @[WrBypass.scala 58:21]
  assign data_mem_0_MPORT_data = io_write_data_0;
  assign data_mem_0_MPORT_addr = hit ? hit_idx : enq_ptr_value;
  assign data_mem_0_MPORT_mask = io_write_way_mask_0;
  assign data_mem_0_MPORT_en = io_wen;
  assign data_mem_1_io_hit_data_0_bits_MPORT_en = 1'h1;
  assign data_mem_1_io_hit_data_0_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_6};
  assign data_mem_1_io_hit_data_0_bits_MPORT_data = data_mem_1[data_mem_1_io_hit_data_0_bits_MPORT_addr]; // @[WrBypass.scala 58:21]
  assign data_mem_1_io_hit_data_1_bits_MPORT_en = 1'h1;
  assign data_mem_1_io_hit_data_1_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_6};
  assign data_mem_1_io_hit_data_1_bits_MPORT_data = data_mem_1[data_mem_1_io_hit_data_1_bits_MPORT_addr]; // @[WrBypass.scala 58:21]
  assign data_mem_1_MPORT_data = io_write_data_1;
  assign data_mem_1_MPORT_addr = hit ? hit_idx : enq_ptr_value;
  assign data_mem_1_MPORT_mask = io_write_way_mask_1;
  assign data_mem_1_MPORT_en = io_wen;
  assign io_hit = idx_tag_cam_io_rresp_0_0 | idx_tag_cam_io_rresp_0_1 | idx_tag_cam_io_rresp_0_2 |
    idx_tag_cam_io_rresp_0_3 | idx_tag_cam_io_rresp_0_4 | idx_tag_cam_io_rresp_0_5 | idx_tag_cam_io_rresp_0_6 |
    idx_tag_cam_io_rresp_0_7; // @[WrBypass.scala 68:29]
  assign io_hit_data_0_valid = idx_tag_cam_io_rresp_0_0 & valids_0_0 | idx_tag_cam_io_rresp_0_1 & valids_1_0 |
    idx_tag_cam_io_rresp_0_2 & valids_2_0 | idx_tag_cam_io_rresp_0_3 & valids_3_0 | idx_tag_cam_io_rresp_0_4 &
    valids_4_0 | idx_tag_cam_io_rresp_0_5 & valids_5_0 | idx_tag_cam_io_rresp_0_6 & valids_6_0 |
    idx_tag_cam_io_rresp_0_7 & valids_7_0; // @[Mux.scala 27:73]
  assign io_hit_data_0_bits = data_mem_0_io_hit_data_0_bits_MPORT_data; // @[WrBypass.scala 73:26]
  assign io_hit_data_1_valid = idx_tag_cam_io_rresp_0_0 & valids_0_1 | idx_tag_cam_io_rresp_0_1 & valids_1_1 |
    idx_tag_cam_io_rresp_0_2 & valids_2_1 | idx_tag_cam_io_rresp_0_3 & valids_3_1 | idx_tag_cam_io_rresp_0_4 &
    valids_4_1 | idx_tag_cam_io_rresp_0_5 & valids_5_1 | idx_tag_cam_io_rresp_0_6 & valids_6_1 |
    idx_tag_cam_io_rresp_0_7 & valids_7_1; // @[Mux.scala 27:73]
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
        valids_0_0 <= _GEN_35;
      end else begin
        valids_0_0 <= _GEN_27;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_0_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_0_1 <= _GEN_67;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_0_1 <= _GEN_91;
      end else begin
        valids_0_1 <= _GEN_83;
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
        valids_1_0 <= _GEN_36;
      end else begin
        valids_1_0 <= _GEN_28;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_1_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_1_1 <= _GEN_68;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_1_1 <= _GEN_92;
      end else begin
        valids_1_1 <= _GEN_84;
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
        valids_2_0 <= _GEN_37;
      end else begin
        valids_2_0 <= _GEN_29;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_2_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_2_1 <= _GEN_69;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_2_1 <= _GEN_93;
      end else begin
        valids_2_1 <= _GEN_85;
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
        valids_3_0 <= _GEN_38;
      end else begin
        valids_3_0 <= _GEN_30;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_3_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_3_1 <= _GEN_70;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_3_1 <= _GEN_94;
      end else begin
        valids_3_1 <= _GEN_86;
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
        valids_4_0 <= _GEN_39;
      end else begin
        valids_4_0 <= _GEN_31;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_4_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_4_1 <= _GEN_71;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_4_1 <= _GEN_95;
      end else begin
        valids_4_1 <= _GEN_87;
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
        valids_5_0 <= _GEN_40;
      end else begin
        valids_5_0 <= _GEN_32;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_5_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_5_1 <= _GEN_72;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_5_1 <= _GEN_96;
      end else begin
        valids_5_1 <= _GEN_88;
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
        valids_6_0 <= _GEN_41;
      end else begin
        valids_6_0 <= _GEN_33;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_6_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_6_1 <= _GEN_73;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_6_1 <= _GEN_97;
      end else begin
        valids_6_1 <= _GEN_89;
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
        valids_7_0 <= _GEN_42;
      end else begin
        valids_7_0 <= _GEN_34;
      end
    end
    if (reset) begin // @[WrBypass.scala 60:23]
      valids_7_1 <= 1'h0; // @[WrBypass.scala 60:23]
    end else if (io_wen) begin // @[WrBypass.scala 87:19]
      if (hit) begin // @[WrBypass.scala 88:18]
        if (io_write_way_mask_1) begin // @[WrBypass.scala 89:35]
          valids_7_1 <= _GEN_74;
        end
      end else if (io_write_way_mask_1) begin // @[WrBypass.scala 94:35]
        valids_7_1 <= _GEN_98;
      end else begin
        valids_7_1 <= _GEN_90;
      end
    end
    if (reset) begin // @[WrBypass.scala 62:24]
      enq_ptr_flag <= 1'h0; // @[WrBypass.scala 62:24]
    end else begin
      enq_ptr_flag <= enq_ptr_new_ptr_flag; // @[WrBypass.scala 105:11]
    end
    if (reset) begin // @[WrBypass.scala 62:24]
      enq_ptr_value <= 3'h0; // @[WrBypass.scala 62:24]
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
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    data_mem_0[initvar] = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    data_mem_1[initvar] = _RAND_1[1:0];
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
  enq_ptr_flag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  enq_ptr_value = _RAND_19[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
