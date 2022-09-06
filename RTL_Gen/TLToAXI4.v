module TLToAXI4(
  input          clock,
  input          reset,
  output         auto_in_a_ready,
  input          auto_in_a_valid,
  input  [2:0]   auto_in_a_bits_opcode,
  input  [2:0]   auto_in_a_bits_size,
  input  [5:0]   auto_in_a_bits_source,
  input  [35:0]  auto_in_a_bits_address,
  input  [31:0]  auto_in_a_bits_mask,
  input  [255:0] auto_in_a_bits_data,
  input          auto_in_d_ready,
  output         auto_in_d_valid,
  output [2:0]   auto_in_d_bits_opcode,
  output [2:0]   auto_in_d_bits_size,
  output [5:0]   auto_in_d_bits_source,
  output         auto_in_d_bits_denied,
  output [255:0] auto_in_d_bits_data,
  input          auto_out_awready,
  output         auto_out_awvalid,
  output [5:0]   auto_out_awid,
  output [35:0]  auto_out_awaddr,
  output [7:0]   auto_out_awlen,
  output [2:0]   auto_out_awsize,
  output [1:0]   auto_out_awburst,
  output         auto_out_awlock,
  output [3:0]   auto_out_awcache,
  output [2:0]   auto_out_awprot,
  output [3:0]   auto_out_awqos,
  output [3:0]   auto_out_awecho_tl_state_size,
  output [5:0]   auto_out_awecho_tl_state_source,
  input          auto_out_wready,
  output         auto_out_wvalid,
  output [255:0] auto_out_wdata,
  output [31:0]  auto_out_wstrb,
  output         auto_out_wlast,
  output         auto_out_bready,
  input          auto_out_bvalid,
  input  [5:0]   auto_out_bid,
  input  [1:0]   auto_out_bresp,
  input  [3:0]   auto_out_becho_tl_state_size,
  input  [5:0]   auto_out_becho_tl_state_source,
  input          auto_out_arready,
  output         auto_out_arvalid,
  output [5:0]   auto_out_arid,
  output [35:0]  auto_out_araddr,
  output [7:0]   auto_out_arlen,
  output [2:0]   auto_out_arsize,
  output [1:0]   auto_out_arburst,
  output         auto_out_arlock,
  output [3:0]   auto_out_arcache,
  output [2:0]   auto_out_arprot,
  output [3:0]   auto_out_arqos,
  output [3:0]   auto_out_arecho_tl_state_size,
  output [5:0]   auto_out_arecho_tl_state_source,
  output         auto_out_rready,
  input          auto_out_rvalid,
  input  [5:0]   auto_out_rid,
  input  [255:0] auto_out_rdata,
  input  [1:0]   auto_out_rresp,
  input  [3:0]   auto_out_recho_tl_state_size,
  input  [5:0]   auto_out_recho_tl_state_source,
  input          auto_out_rlast
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
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
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
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
`endif // RANDOMIZE_REG_INIT
  wire  deq_clock; // @[Decoupled.scala 361:21]
  wire  deq_reset; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [255:0] deq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire [31:0] deq_io_enq_bits_strb; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_bits_last; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [255:0] deq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire [31:0] deq_io_deq_bits_strb; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_bits_last; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_clock; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_reset; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [5:0] queue_arw_deq_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [35:0] queue_arw_deq_io_enq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] queue_arw_deq_io_enq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_enq_bits_echo_tl_state_size; // @[Decoupled.scala 361:21]
  wire [5:0] queue_arw_deq_io_enq_bits_echo_tl_state_source; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_enq_bits_wen; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [5:0] queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [35:0] queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [1:0] queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 361:21]
  wire [5:0] queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_bits_wen; // @[Decoupled.scala 361:21]
  wire  a_isPut = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 91:28]
  reg  count_64; // @[ToAXI4.scala 254:28]
  reg  count_63; // @[ToAXI4.scala 254:28]
  reg  count_62; // @[ToAXI4.scala 254:28]
  reg  count_61; // @[ToAXI4.scala 254:28]
  reg  count_60; // @[ToAXI4.scala 254:28]
  reg  count_59; // @[ToAXI4.scala 254:28]
  reg  count_58; // @[ToAXI4.scala 254:28]
  reg  count_57; // @[ToAXI4.scala 254:28]
  reg  count_56; // @[ToAXI4.scala 254:28]
  reg  count_55; // @[ToAXI4.scala 254:28]
  reg  count_54; // @[ToAXI4.scala 254:28]
  reg  count_53; // @[ToAXI4.scala 254:28]
  reg  count_52; // @[ToAXI4.scala 254:28]
  reg  count_51; // @[ToAXI4.scala 254:28]
  reg  count_50; // @[ToAXI4.scala 254:28]
  reg  count_49; // @[ToAXI4.scala 254:28]
  reg  count_48; // @[ToAXI4.scala 254:28]
  reg  count_47; // @[ToAXI4.scala 254:28]
  reg  count_46; // @[ToAXI4.scala 254:28]
  reg  count_45; // @[ToAXI4.scala 254:28]
  reg  count_44; // @[ToAXI4.scala 254:28]
  reg  count_43; // @[ToAXI4.scala 254:28]
  reg  count_42; // @[ToAXI4.scala 254:28]
  reg  count_41; // @[ToAXI4.scala 254:28]
  reg  count_40; // @[ToAXI4.scala 254:28]
  reg  count_39; // @[ToAXI4.scala 254:28]
  reg  count_38; // @[ToAXI4.scala 254:28]
  reg  count_37; // @[ToAXI4.scala 254:28]
  reg  count_36; // @[ToAXI4.scala 254:28]
  reg  count_35; // @[ToAXI4.scala 254:28]
  reg  count_34; // @[ToAXI4.scala 254:28]
  reg  count_33; // @[ToAXI4.scala 254:28]
  reg  count_32; // @[ToAXI4.scala 254:28]
  reg  count_31; // @[ToAXI4.scala 254:28]
  reg  count_30; // @[ToAXI4.scala 254:28]
  reg  count_29; // @[ToAXI4.scala 254:28]
  reg  count_28; // @[ToAXI4.scala 254:28]
  reg  count_27; // @[ToAXI4.scala 254:28]
  reg  count_26; // @[ToAXI4.scala 254:28]
  reg  count_25; // @[ToAXI4.scala 254:28]
  reg  count_24; // @[ToAXI4.scala 254:28]
  reg  count_23; // @[ToAXI4.scala 254:28]
  reg  count_22; // @[ToAXI4.scala 254:28]
  reg  count_21; // @[ToAXI4.scala 254:28]
  reg  count_20; // @[ToAXI4.scala 254:28]
  reg  count_19; // @[ToAXI4.scala 254:28]
  reg  count_18; // @[ToAXI4.scala 254:28]
  reg  count_17; // @[ToAXI4.scala 254:28]
  reg  count_16; // @[ToAXI4.scala 254:28]
  reg  count_15; // @[ToAXI4.scala 254:28]
  reg  count_14; // @[ToAXI4.scala 254:28]
  reg  count_13; // @[ToAXI4.scala 254:28]
  reg  count_12; // @[ToAXI4.scala 254:28]
  reg  count_11; // @[ToAXI4.scala 254:28]
  reg  count_10; // @[ToAXI4.scala 254:28]
  reg  count_9; // @[ToAXI4.scala 254:28]
  reg  count_8; // @[ToAXI4.scala 254:28]
  reg  count_7; // @[ToAXI4.scala 254:28]
  reg  count_6; // @[ToAXI4.scala 254:28]
  reg  count_5; // @[ToAXI4.scala 254:28]
  reg  count_4; // @[ToAXI4.scala 254:28]
  reg  count_3; // @[ToAXI4.scala 254:28]
  reg  count_2; // @[ToAXI4.scala 254:28]
  reg  count_1; // @[ToAXI4.scala 254:28]
  wire  _GEN_67 = 6'h1 == auto_in_a_bits_source ? count_2 : count_1; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_68 = 6'h2 == auto_in_a_bits_source ? count_3 : _GEN_67; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_69 = 6'h3 == auto_in_a_bits_source ? count_4 : _GEN_68; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_70 = 6'h4 == auto_in_a_bits_source ? count_5 : _GEN_69; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_71 = 6'h5 == auto_in_a_bits_source ? count_6 : _GEN_70; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_72 = 6'h6 == auto_in_a_bits_source ? count_7 : _GEN_71; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_73 = 6'h7 == auto_in_a_bits_source ? count_8 : _GEN_72; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_74 = 6'h8 == auto_in_a_bits_source ? count_9 : _GEN_73; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_75 = 6'h9 == auto_in_a_bits_source ? count_10 : _GEN_74; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_76 = 6'ha == auto_in_a_bits_source ? count_11 : _GEN_75; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_77 = 6'hb == auto_in_a_bits_source ? count_12 : _GEN_76; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_78 = 6'hc == auto_in_a_bits_source ? count_13 : _GEN_77; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_79 = 6'hd == auto_in_a_bits_source ? count_14 : _GEN_78; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_80 = 6'he == auto_in_a_bits_source ? count_15 : _GEN_79; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_81 = 6'hf == auto_in_a_bits_source ? count_16 : _GEN_80; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_82 = 6'h10 == auto_in_a_bits_source ? count_17 : _GEN_81; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_83 = 6'h11 == auto_in_a_bits_source ? count_18 : _GEN_82; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_84 = 6'h12 == auto_in_a_bits_source ? count_19 : _GEN_83; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_85 = 6'h13 == auto_in_a_bits_source ? count_20 : _GEN_84; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_86 = 6'h14 == auto_in_a_bits_source ? count_21 : _GEN_85; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_87 = 6'h15 == auto_in_a_bits_source ? count_22 : _GEN_86; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_88 = 6'h16 == auto_in_a_bits_source ? count_23 : _GEN_87; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_89 = 6'h17 == auto_in_a_bits_source ? count_24 : _GEN_88; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_90 = 6'h18 == auto_in_a_bits_source ? count_25 : _GEN_89; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_91 = 6'h19 == auto_in_a_bits_source ? count_26 : _GEN_90; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_92 = 6'h1a == auto_in_a_bits_source ? count_27 : _GEN_91; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_93 = 6'h1b == auto_in_a_bits_source ? count_28 : _GEN_92; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_94 = 6'h1c == auto_in_a_bits_source ? count_29 : _GEN_93; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_95 = 6'h1d == auto_in_a_bits_source ? count_30 : _GEN_94; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_96 = 6'h1e == auto_in_a_bits_source ? count_31 : _GEN_95; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_97 = 6'h1f == auto_in_a_bits_source ? count_32 : _GEN_96; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_98 = 6'h20 == auto_in_a_bits_source ? count_33 : _GEN_97; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_99 = 6'h21 == auto_in_a_bits_source ? count_34 : _GEN_98; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_100 = 6'h22 == auto_in_a_bits_source ? count_35 : _GEN_99; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_101 = 6'h23 == auto_in_a_bits_source ? count_36 : _GEN_100; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_102 = 6'h24 == auto_in_a_bits_source ? count_37 : _GEN_101; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_103 = 6'h25 == auto_in_a_bits_source ? count_38 : _GEN_102; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_104 = 6'h26 == auto_in_a_bits_source ? count_39 : _GEN_103; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_105 = 6'h27 == auto_in_a_bits_source ? count_40 : _GEN_104; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_106 = 6'h28 == auto_in_a_bits_source ? count_41 : _GEN_105; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_107 = 6'h29 == auto_in_a_bits_source ? count_42 : _GEN_106; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_108 = 6'h2a == auto_in_a_bits_source ? count_43 : _GEN_107; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_109 = 6'h2b == auto_in_a_bits_source ? count_44 : _GEN_108; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_110 = 6'h2c == auto_in_a_bits_source ? count_45 : _GEN_109; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_111 = 6'h2d == auto_in_a_bits_source ? count_46 : _GEN_110; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_112 = 6'h2e == auto_in_a_bits_source ? count_47 : _GEN_111; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_113 = 6'h2f == auto_in_a_bits_source ? count_48 : _GEN_112; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_114 = 6'h30 == auto_in_a_bits_source ? count_49 : _GEN_113; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_115 = 6'h31 == auto_in_a_bits_source ? count_50 : _GEN_114; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_116 = 6'h32 == auto_in_a_bits_source ? count_51 : _GEN_115; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_117 = 6'h33 == auto_in_a_bits_source ? count_52 : _GEN_116; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_118 = 6'h34 == auto_in_a_bits_source ? count_53 : _GEN_117; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_119 = 6'h35 == auto_in_a_bits_source ? count_54 : _GEN_118; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_120 = 6'h36 == auto_in_a_bits_source ? count_55 : _GEN_119; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_121 = 6'h37 == auto_in_a_bits_source ? count_56 : _GEN_120; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_122 = 6'h38 == auto_in_a_bits_source ? count_57 : _GEN_121; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_123 = 6'h39 == auto_in_a_bits_source ? count_58 : _GEN_122; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_124 = 6'h3a == auto_in_a_bits_source ? count_59 : _GEN_123; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_125 = 6'h3b == auto_in_a_bits_source ? count_60 : _GEN_124; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_126 = 6'h3c == auto_in_a_bits_source ? count_61 : _GEN_125; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_127 = 6'h3d == auto_in_a_bits_source ? count_62 : _GEN_126; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_128 = 6'h3e == auto_in_a_bits_source ? count_63 : _GEN_127; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_129 = 6'h3f == auto_in_a_bits_source ? count_64 : _GEN_128; // @[ToAXI4.scala 195:{49,49}]
  reg  counter; // @[Edges.scala 228:27]
  wire  a_first = ~counter; // @[Edges.scala 230:25]
  wire  stall = _GEN_129 & a_first; // @[ToAXI4.scala 195:49]
  wire  _bundleIn_0_a_ready_T = ~stall; // @[ToAXI4.scala 196:21]
  reg  doneAW; // @[ToAXI4.scala 161:30]
  wire  out_arw_ready = queue_arw_deq_io_enq_ready; // @[ToAXI4.scala 147:25 Decoupled.scala 365:17]
  wire  _bundleIn_0_a_ready_T_1 = doneAW | out_arw_ready; // @[ToAXI4.scala 196:52]
  wire  out_wready = deq_io_enq_ready; // @[ToAXI4.scala 148:23 Decoupled.scala 365:17]
  wire  _bundleIn_0_a_ready_T_3 = a_isPut ? (doneAW | out_arw_ready) & out_wready : out_arw_ready; // @[ToAXI4.scala 196:34]
  wire  bundleIn_0_a_ready = ~stall & _bundleIn_0_a_ready_T_3; // @[ToAXI4.scala 196:28]
  wire  _T = bundleIn_0_a_ready & auto_in_a_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _beats1_decode_T_1 = 13'h3f << auto_in_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beats1_decode_T_3 = ~_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beats1_decode = _beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beats1 = a_isPut & beats1_decode; // @[Edges.scala 220:14]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 229:28]
  wire  a_last = counter | ~beats1; // @[Edges.scala 231:37]
  wire  queue_arw_bits_wen = queue_arw_deq_io_deq_bits_wen; // @[Decoupled.scala 401:19 402:14]
  wire  queue_arw_valid = queue_arw_deq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  wire [5:0] _GEN_3 = 6'h1 == auto_in_a_bits_source ? 6'h1 : 6'h0; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_4 = 6'h2 == auto_in_a_bits_source ? 6'h2 : _GEN_3; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_5 = 6'h3 == auto_in_a_bits_source ? 6'h3 : _GEN_4; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_6 = 6'h4 == auto_in_a_bits_source ? 6'h4 : _GEN_5; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_7 = 6'h5 == auto_in_a_bits_source ? 6'h5 : _GEN_6; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_8 = 6'h6 == auto_in_a_bits_source ? 6'h6 : _GEN_7; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_9 = 6'h7 == auto_in_a_bits_source ? 6'h7 : _GEN_8; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_10 = 6'h8 == auto_in_a_bits_source ? 6'h8 : _GEN_9; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_11 = 6'h9 == auto_in_a_bits_source ? 6'h9 : _GEN_10; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_12 = 6'ha == auto_in_a_bits_source ? 6'ha : _GEN_11; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_13 = 6'hb == auto_in_a_bits_source ? 6'hb : _GEN_12; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_14 = 6'hc == auto_in_a_bits_source ? 6'hc : _GEN_13; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_15 = 6'hd == auto_in_a_bits_source ? 6'hd : _GEN_14; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_16 = 6'he == auto_in_a_bits_source ? 6'he : _GEN_15; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_17 = 6'hf == auto_in_a_bits_source ? 6'hf : _GEN_16; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_18 = 6'h10 == auto_in_a_bits_source ? 6'h10 : _GEN_17; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_19 = 6'h11 == auto_in_a_bits_source ? 6'h11 : _GEN_18; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_20 = 6'h12 == auto_in_a_bits_source ? 6'h12 : _GEN_19; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_21 = 6'h13 == auto_in_a_bits_source ? 6'h13 : _GEN_20; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_22 = 6'h14 == auto_in_a_bits_source ? 6'h14 : _GEN_21; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_23 = 6'h15 == auto_in_a_bits_source ? 6'h15 : _GEN_22; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_24 = 6'h16 == auto_in_a_bits_source ? 6'h16 : _GEN_23; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_25 = 6'h17 == auto_in_a_bits_source ? 6'h17 : _GEN_24; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_26 = 6'h18 == auto_in_a_bits_source ? 6'h18 : _GEN_25; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_27 = 6'h19 == auto_in_a_bits_source ? 6'h19 : _GEN_26; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_28 = 6'h1a == auto_in_a_bits_source ? 6'h1a : _GEN_27; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_29 = 6'h1b == auto_in_a_bits_source ? 6'h1b : _GEN_28; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_30 = 6'h1c == auto_in_a_bits_source ? 6'h1c : _GEN_29; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_31 = 6'h1d == auto_in_a_bits_source ? 6'h1d : _GEN_30; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_32 = 6'h1e == auto_in_a_bits_source ? 6'h1e : _GEN_31; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_33 = 6'h1f == auto_in_a_bits_source ? 6'h1f : _GEN_32; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_34 = 6'h20 == auto_in_a_bits_source ? 6'h20 : _GEN_33; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_35 = 6'h21 == auto_in_a_bits_source ? 6'h21 : _GEN_34; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_36 = 6'h22 == auto_in_a_bits_source ? 6'h22 : _GEN_35; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_37 = 6'h23 == auto_in_a_bits_source ? 6'h23 : _GEN_36; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_38 = 6'h24 == auto_in_a_bits_source ? 6'h24 : _GEN_37; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_39 = 6'h25 == auto_in_a_bits_source ? 6'h25 : _GEN_38; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_40 = 6'h26 == auto_in_a_bits_source ? 6'h26 : _GEN_39; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_41 = 6'h27 == auto_in_a_bits_source ? 6'h27 : _GEN_40; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_42 = 6'h28 == auto_in_a_bits_source ? 6'h28 : _GEN_41; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_43 = 6'h29 == auto_in_a_bits_source ? 6'h29 : _GEN_42; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_44 = 6'h2a == auto_in_a_bits_source ? 6'h2a : _GEN_43; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_45 = 6'h2b == auto_in_a_bits_source ? 6'h2b : _GEN_44; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_46 = 6'h2c == auto_in_a_bits_source ? 6'h2c : _GEN_45; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_47 = 6'h2d == auto_in_a_bits_source ? 6'h2d : _GEN_46; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_48 = 6'h2e == auto_in_a_bits_source ? 6'h2e : _GEN_47; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_49 = 6'h2f == auto_in_a_bits_source ? 6'h2f : _GEN_48; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_50 = 6'h30 == auto_in_a_bits_source ? 6'h30 : _GEN_49; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_51 = 6'h31 == auto_in_a_bits_source ? 6'h31 : _GEN_50; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_52 = 6'h32 == auto_in_a_bits_source ? 6'h32 : _GEN_51; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_53 = 6'h33 == auto_in_a_bits_source ? 6'h33 : _GEN_52; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_54 = 6'h34 == auto_in_a_bits_source ? 6'h34 : _GEN_53; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_55 = 6'h35 == auto_in_a_bits_source ? 6'h35 : _GEN_54; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_56 = 6'h36 == auto_in_a_bits_source ? 6'h36 : _GEN_55; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_57 = 6'h37 == auto_in_a_bits_source ? 6'h37 : _GEN_56; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_58 = 6'h38 == auto_in_a_bits_source ? 6'h38 : _GEN_57; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_59 = 6'h39 == auto_in_a_bits_source ? 6'h39 : _GEN_58; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_60 = 6'h3a == auto_in_a_bits_source ? 6'h3a : _GEN_59; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_61 = 6'h3b == auto_in_a_bits_source ? 6'h3b : _GEN_60; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_62 = 6'h3c == auto_in_a_bits_source ? 6'h3c : _GEN_61; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_63 = 6'h3d == auto_in_a_bits_source ? 6'h3d : _GEN_62; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] _GEN_64 = 6'h3e == auto_in_a_bits_source ? 6'h3e : _GEN_63; // @[ToAXI4.scala 166:{17,17}]
  wire [5:0] out_arw_bits_id = 6'h3f == auto_in_a_bits_source ? 6'h3f : _GEN_64; // @[ToAXI4.scala 166:{17,17}]
  wire [19:0] _out_arw_bits_len_T_1 = 20'h1fff << auto_in_a_bits_size; // @[package.scala 234:77]
  wire [12:0] _out_arw_bits_len_T_3 = ~_out_arw_bits_len_T_1[12:0]; // @[package.scala 234:46]
  wire  _out_arw_valid_T_1 = _bundleIn_0_a_ready_T & auto_in_a_valid; // @[ToAXI4.scala 197:31]
  wire  _out_arw_valid_T_4 = a_isPut ? ~doneAW & out_wready : 1'h1; // @[ToAXI4.scala 197:51]
  wire  out_arw_valid = _bundleIn_0_a_ready_T & auto_in_a_valid & _out_arw_valid_T_4; // @[ToAXI4.scala 197:45]
  reg  r_holds_d; // @[ToAXI4.scala 206:30]
  reg [2:0] b_delay; // @[ToAXI4.scala 209:24]
  wire  r_wins = auto_out_rvalid & b_delay != 3'h7 | r_holds_d; // @[ToAXI4.scala 215:57]
  wire  bundleOut_0_rready = auto_in_d_ready & r_wins; // @[ToAXI4.scala 217:33]
  wire  _T_2 = bundleOut_0_rready & auto_out_rvalid; // @[Decoupled.scala 50:35]
  wire  bundleOut_0_bready = auto_in_d_ready & ~r_wins; // @[ToAXI4.scala 218:33]
  wire [2:0] _bdelay_T_1 = b_delay + 3'h1; // @[ToAXI4.scala 211:28]
  wire  bundleIn_0_d_valid = r_wins ? auto_out_rvalid : auto_out_bvalid; // @[ToAXI4.scala 219:24]
  reg  r_first; // @[ToAXI4.scala 224:28]
  wire  _GEN_132 = _T_2 ? auto_out_rlast : r_first; // @[ToAXI4.scala 225:27 224:28 225:37]
  wire  _rdenied_T = auto_out_rresp == 2'h3; // @[ToAXI4.scala 226:39]
  reg  r_denied_r; // @[Reg.scala 16:16]
  wire  _GEN_133 = r_first ? _rdenied_T : r_denied_r; // @[Reg.scala 16:16 17:{18,22}]
  wire  b_denied = auto_out_bresp != 2'h0; // @[ToAXI4.scala 228:39]
  wire [2:0] r_d_size = auto_out_recho_tl_state_size[2:0]; // @[Edges.scala 771:17 774:15]
  wire [2:0] b_d_size = auto_out_becho_tl_state_size[2:0]; // @[Edges.scala 755:17 758:15]
  wire [63:0] _a_sel_T = 64'h1 << out_arw_bits_id; // @[OneHot.scala 64:12]
  wire  a_sel_0 = _a_sel_T[0]; // @[ToAXI4.scala 242:58]
  wire  a_sel_1 = _a_sel_T[1]; // @[ToAXI4.scala 242:58]
  wire  a_sel_2 = _a_sel_T[2]; // @[ToAXI4.scala 242:58]
  wire  a_sel_3 = _a_sel_T[3]; // @[ToAXI4.scala 242:58]
  wire  a_sel_4 = _a_sel_T[4]; // @[ToAXI4.scala 242:58]
  wire  a_sel_5 = _a_sel_T[5]; // @[ToAXI4.scala 242:58]
  wire  a_sel_6 = _a_sel_T[6]; // @[ToAXI4.scala 242:58]
  wire  a_sel_7 = _a_sel_T[7]; // @[ToAXI4.scala 242:58]
  wire  a_sel_8 = _a_sel_T[8]; // @[ToAXI4.scala 242:58]
  wire  a_sel_9 = _a_sel_T[9]; // @[ToAXI4.scala 242:58]
  wire  a_sel_10 = _a_sel_T[10]; // @[ToAXI4.scala 242:58]
  wire  a_sel_11 = _a_sel_T[11]; // @[ToAXI4.scala 242:58]
  wire  a_sel_12 = _a_sel_T[12]; // @[ToAXI4.scala 242:58]
  wire  a_sel_13 = _a_sel_T[13]; // @[ToAXI4.scala 242:58]
  wire  a_sel_14 = _a_sel_T[14]; // @[ToAXI4.scala 242:58]
  wire  a_sel_15 = _a_sel_T[15]; // @[ToAXI4.scala 242:58]
  wire  a_sel_16 = _a_sel_T[16]; // @[ToAXI4.scala 242:58]
  wire  a_sel_17 = _a_sel_T[17]; // @[ToAXI4.scala 242:58]
  wire  a_sel_18 = _a_sel_T[18]; // @[ToAXI4.scala 242:58]
  wire  a_sel_19 = _a_sel_T[19]; // @[ToAXI4.scala 242:58]
  wire  a_sel_20 = _a_sel_T[20]; // @[ToAXI4.scala 242:58]
  wire  a_sel_21 = _a_sel_T[21]; // @[ToAXI4.scala 242:58]
  wire  a_sel_22 = _a_sel_T[22]; // @[ToAXI4.scala 242:58]
  wire  a_sel_23 = _a_sel_T[23]; // @[ToAXI4.scala 242:58]
  wire  a_sel_24 = _a_sel_T[24]; // @[ToAXI4.scala 242:58]
  wire  a_sel_25 = _a_sel_T[25]; // @[ToAXI4.scala 242:58]
  wire  a_sel_26 = _a_sel_T[26]; // @[ToAXI4.scala 242:58]
  wire  a_sel_27 = _a_sel_T[27]; // @[ToAXI4.scala 242:58]
  wire  a_sel_28 = _a_sel_T[28]; // @[ToAXI4.scala 242:58]
  wire  a_sel_29 = _a_sel_T[29]; // @[ToAXI4.scala 242:58]
  wire  a_sel_30 = _a_sel_T[30]; // @[ToAXI4.scala 242:58]
  wire  a_sel_31 = _a_sel_T[31]; // @[ToAXI4.scala 242:58]
  wire  a_sel_32 = _a_sel_T[32]; // @[ToAXI4.scala 242:58]
  wire  a_sel_33 = _a_sel_T[33]; // @[ToAXI4.scala 242:58]
  wire  a_sel_34 = _a_sel_T[34]; // @[ToAXI4.scala 242:58]
  wire  a_sel_35 = _a_sel_T[35]; // @[ToAXI4.scala 242:58]
  wire  a_sel_36 = _a_sel_T[36]; // @[ToAXI4.scala 242:58]
  wire  a_sel_37 = _a_sel_T[37]; // @[ToAXI4.scala 242:58]
  wire  a_sel_38 = _a_sel_T[38]; // @[ToAXI4.scala 242:58]
  wire  a_sel_39 = _a_sel_T[39]; // @[ToAXI4.scala 242:58]
  wire  a_sel_40 = _a_sel_T[40]; // @[ToAXI4.scala 242:58]
  wire  a_sel_41 = _a_sel_T[41]; // @[ToAXI4.scala 242:58]
  wire  a_sel_42 = _a_sel_T[42]; // @[ToAXI4.scala 242:58]
  wire  a_sel_43 = _a_sel_T[43]; // @[ToAXI4.scala 242:58]
  wire  a_sel_44 = _a_sel_T[44]; // @[ToAXI4.scala 242:58]
  wire  a_sel_45 = _a_sel_T[45]; // @[ToAXI4.scala 242:58]
  wire  a_sel_46 = _a_sel_T[46]; // @[ToAXI4.scala 242:58]
  wire  a_sel_47 = _a_sel_T[47]; // @[ToAXI4.scala 242:58]
  wire  a_sel_48 = _a_sel_T[48]; // @[ToAXI4.scala 242:58]
  wire  a_sel_49 = _a_sel_T[49]; // @[ToAXI4.scala 242:58]
  wire  a_sel_50 = _a_sel_T[50]; // @[ToAXI4.scala 242:58]
  wire  a_sel_51 = _a_sel_T[51]; // @[ToAXI4.scala 242:58]
  wire  a_sel_52 = _a_sel_T[52]; // @[ToAXI4.scala 242:58]
  wire  a_sel_53 = _a_sel_T[53]; // @[ToAXI4.scala 242:58]
  wire  a_sel_54 = _a_sel_T[54]; // @[ToAXI4.scala 242:58]
  wire  a_sel_55 = _a_sel_T[55]; // @[ToAXI4.scala 242:58]
  wire  a_sel_56 = _a_sel_T[56]; // @[ToAXI4.scala 242:58]
  wire  a_sel_57 = _a_sel_T[57]; // @[ToAXI4.scala 242:58]
  wire  a_sel_58 = _a_sel_T[58]; // @[ToAXI4.scala 242:58]
  wire  a_sel_59 = _a_sel_T[59]; // @[ToAXI4.scala 242:58]
  wire  a_sel_60 = _a_sel_T[60]; // @[ToAXI4.scala 242:58]
  wire  a_sel_61 = _a_sel_T[61]; // @[ToAXI4.scala 242:58]
  wire  a_sel_62 = _a_sel_T[62]; // @[ToAXI4.scala 242:58]
  wire  a_sel_63 = _a_sel_T[63]; // @[ToAXI4.scala 242:58]
  wire [5:0] d_sel_shiftAmount = r_wins ? auto_out_rid : auto_out_bid; // @[ToAXI4.scala 243:31]
  wire [63:0] _d_sel_T_1 = 64'h1 << d_sel_shiftAmount; // @[OneHot.scala 64:12]
  wire  d_sel_0 = _d_sel_T_1[0]; // @[ToAXI4.scala 243:93]
  wire  d_sel_1 = _d_sel_T_1[1]; // @[ToAXI4.scala 243:93]
  wire  d_sel_2 = _d_sel_T_1[2]; // @[ToAXI4.scala 243:93]
  wire  d_sel_3 = _d_sel_T_1[3]; // @[ToAXI4.scala 243:93]
  wire  d_sel_4 = _d_sel_T_1[4]; // @[ToAXI4.scala 243:93]
  wire  d_sel_5 = _d_sel_T_1[5]; // @[ToAXI4.scala 243:93]
  wire  d_sel_6 = _d_sel_T_1[6]; // @[ToAXI4.scala 243:93]
  wire  d_sel_7 = _d_sel_T_1[7]; // @[ToAXI4.scala 243:93]
  wire  d_sel_8 = _d_sel_T_1[8]; // @[ToAXI4.scala 243:93]
  wire  d_sel_9 = _d_sel_T_1[9]; // @[ToAXI4.scala 243:93]
  wire  d_sel_10 = _d_sel_T_1[10]; // @[ToAXI4.scala 243:93]
  wire  d_sel_11 = _d_sel_T_1[11]; // @[ToAXI4.scala 243:93]
  wire  d_sel_12 = _d_sel_T_1[12]; // @[ToAXI4.scala 243:93]
  wire  d_sel_13 = _d_sel_T_1[13]; // @[ToAXI4.scala 243:93]
  wire  d_sel_14 = _d_sel_T_1[14]; // @[ToAXI4.scala 243:93]
  wire  d_sel_15 = _d_sel_T_1[15]; // @[ToAXI4.scala 243:93]
  wire  d_sel_16 = _d_sel_T_1[16]; // @[ToAXI4.scala 243:93]
  wire  d_sel_17 = _d_sel_T_1[17]; // @[ToAXI4.scala 243:93]
  wire  d_sel_18 = _d_sel_T_1[18]; // @[ToAXI4.scala 243:93]
  wire  d_sel_19 = _d_sel_T_1[19]; // @[ToAXI4.scala 243:93]
  wire  d_sel_20 = _d_sel_T_1[20]; // @[ToAXI4.scala 243:93]
  wire  d_sel_21 = _d_sel_T_1[21]; // @[ToAXI4.scala 243:93]
  wire  d_sel_22 = _d_sel_T_1[22]; // @[ToAXI4.scala 243:93]
  wire  d_sel_23 = _d_sel_T_1[23]; // @[ToAXI4.scala 243:93]
  wire  d_sel_24 = _d_sel_T_1[24]; // @[ToAXI4.scala 243:93]
  wire  d_sel_25 = _d_sel_T_1[25]; // @[ToAXI4.scala 243:93]
  wire  d_sel_26 = _d_sel_T_1[26]; // @[ToAXI4.scala 243:93]
  wire  d_sel_27 = _d_sel_T_1[27]; // @[ToAXI4.scala 243:93]
  wire  d_sel_28 = _d_sel_T_1[28]; // @[ToAXI4.scala 243:93]
  wire  d_sel_29 = _d_sel_T_1[29]; // @[ToAXI4.scala 243:93]
  wire  d_sel_30 = _d_sel_T_1[30]; // @[ToAXI4.scala 243:93]
  wire  d_sel_31 = _d_sel_T_1[31]; // @[ToAXI4.scala 243:93]
  wire  d_sel_32 = _d_sel_T_1[32]; // @[ToAXI4.scala 243:93]
  wire  d_sel_33 = _d_sel_T_1[33]; // @[ToAXI4.scala 243:93]
  wire  d_sel_34 = _d_sel_T_1[34]; // @[ToAXI4.scala 243:93]
  wire  d_sel_35 = _d_sel_T_1[35]; // @[ToAXI4.scala 243:93]
  wire  d_sel_36 = _d_sel_T_1[36]; // @[ToAXI4.scala 243:93]
  wire  d_sel_37 = _d_sel_T_1[37]; // @[ToAXI4.scala 243:93]
  wire  d_sel_38 = _d_sel_T_1[38]; // @[ToAXI4.scala 243:93]
  wire  d_sel_39 = _d_sel_T_1[39]; // @[ToAXI4.scala 243:93]
  wire  d_sel_40 = _d_sel_T_1[40]; // @[ToAXI4.scala 243:93]
  wire  d_sel_41 = _d_sel_T_1[41]; // @[ToAXI4.scala 243:93]
  wire  d_sel_42 = _d_sel_T_1[42]; // @[ToAXI4.scala 243:93]
  wire  d_sel_43 = _d_sel_T_1[43]; // @[ToAXI4.scala 243:93]
  wire  d_sel_44 = _d_sel_T_1[44]; // @[ToAXI4.scala 243:93]
  wire  d_sel_45 = _d_sel_T_1[45]; // @[ToAXI4.scala 243:93]
  wire  d_sel_46 = _d_sel_T_1[46]; // @[ToAXI4.scala 243:93]
  wire  d_sel_47 = _d_sel_T_1[47]; // @[ToAXI4.scala 243:93]
  wire  d_sel_48 = _d_sel_T_1[48]; // @[ToAXI4.scala 243:93]
  wire  d_sel_49 = _d_sel_T_1[49]; // @[ToAXI4.scala 243:93]
  wire  d_sel_50 = _d_sel_T_1[50]; // @[ToAXI4.scala 243:93]
  wire  d_sel_51 = _d_sel_T_1[51]; // @[ToAXI4.scala 243:93]
  wire  d_sel_52 = _d_sel_T_1[52]; // @[ToAXI4.scala 243:93]
  wire  d_sel_53 = _d_sel_T_1[53]; // @[ToAXI4.scala 243:93]
  wire  d_sel_54 = _d_sel_T_1[54]; // @[ToAXI4.scala 243:93]
  wire  d_sel_55 = _d_sel_T_1[55]; // @[ToAXI4.scala 243:93]
  wire  d_sel_56 = _d_sel_T_1[56]; // @[ToAXI4.scala 243:93]
  wire  d_sel_57 = _d_sel_T_1[57]; // @[ToAXI4.scala 243:93]
  wire  d_sel_58 = _d_sel_T_1[58]; // @[ToAXI4.scala 243:93]
  wire  d_sel_59 = _d_sel_T_1[59]; // @[ToAXI4.scala 243:93]
  wire  d_sel_60 = _d_sel_T_1[60]; // @[ToAXI4.scala 243:93]
  wire  d_sel_61 = _d_sel_T_1[61]; // @[ToAXI4.scala 243:93]
  wire  d_sel_62 = _d_sel_T_1[62]; // @[ToAXI4.scala 243:93]
  wire  d_sel_63 = _d_sel_T_1[63]; // @[ToAXI4.scala 243:93]
  wire  d_last = r_wins ? auto_out_rlast : 1'h1; // @[ToAXI4.scala 244:23]
  wire  _inc_T = out_arw_ready & out_arw_valid; // @[Decoupled.scala 50:35]
  wire  inc = a_sel_0 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  _dec_T_1 = auto_in_d_ready & bundleIn_0_d_valid; // @[Decoupled.scala 50:35]
  wire  dec = d_sel_0 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_2 = count_1 + inc; // @[ToAXI4.scala 260:24]
  wire  inc_1 = a_sel_1 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_1 = d_sel_1 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_6 = count_2 + inc_1; // @[ToAXI4.scala 260:24]
  wire  inc_2 = a_sel_2 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_2 = d_sel_2 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_10 = count_3 + inc_2; // @[ToAXI4.scala 260:24]
  wire  inc_3 = a_sel_3 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_3 = d_sel_3 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_14 = count_4 + inc_3; // @[ToAXI4.scala 260:24]
  wire  inc_4 = a_sel_4 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_4 = d_sel_4 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_18 = count_5 + inc_4; // @[ToAXI4.scala 260:24]
  wire  inc_5 = a_sel_5 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_5 = d_sel_5 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_22 = count_6 + inc_5; // @[ToAXI4.scala 260:24]
  wire  inc_6 = a_sel_6 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_6 = d_sel_6 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_26 = count_7 + inc_6; // @[ToAXI4.scala 260:24]
  wire  inc_7 = a_sel_7 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_7 = d_sel_7 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_30 = count_8 + inc_7; // @[ToAXI4.scala 260:24]
  wire  inc_8 = a_sel_8 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_8 = d_sel_8 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_34 = count_9 + inc_8; // @[ToAXI4.scala 260:24]
  wire  inc_9 = a_sel_9 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_9 = d_sel_9 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_38 = count_10 + inc_9; // @[ToAXI4.scala 260:24]
  wire  inc_10 = a_sel_10 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_10 = d_sel_10 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_42 = count_11 + inc_10; // @[ToAXI4.scala 260:24]
  wire  inc_11 = a_sel_11 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_11 = d_sel_11 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_46 = count_12 + inc_11; // @[ToAXI4.scala 260:24]
  wire  inc_12 = a_sel_12 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_12 = d_sel_12 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_50 = count_13 + inc_12; // @[ToAXI4.scala 260:24]
  wire  inc_13 = a_sel_13 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_13 = d_sel_13 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_54 = count_14 + inc_13; // @[ToAXI4.scala 260:24]
  wire  inc_14 = a_sel_14 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_14 = d_sel_14 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_58 = count_15 + inc_14; // @[ToAXI4.scala 260:24]
  wire  inc_15 = a_sel_15 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_15 = d_sel_15 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_62 = count_16 + inc_15; // @[ToAXI4.scala 260:24]
  wire  inc_16 = a_sel_16 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_16 = d_sel_16 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_66 = count_17 + inc_16; // @[ToAXI4.scala 260:24]
  wire  inc_17 = a_sel_17 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_17 = d_sel_17 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_70 = count_18 + inc_17; // @[ToAXI4.scala 260:24]
  wire  inc_18 = a_sel_18 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_18 = d_sel_18 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_74 = count_19 + inc_18; // @[ToAXI4.scala 260:24]
  wire  inc_19 = a_sel_19 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_19 = d_sel_19 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_78 = count_20 + inc_19; // @[ToAXI4.scala 260:24]
  wire  inc_20 = a_sel_20 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_20 = d_sel_20 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_82 = count_21 + inc_20; // @[ToAXI4.scala 260:24]
  wire  inc_21 = a_sel_21 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_21 = d_sel_21 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_86 = count_22 + inc_21; // @[ToAXI4.scala 260:24]
  wire  inc_22 = a_sel_22 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_22 = d_sel_22 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_90 = count_23 + inc_22; // @[ToAXI4.scala 260:24]
  wire  inc_23 = a_sel_23 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_23 = d_sel_23 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_94 = count_24 + inc_23; // @[ToAXI4.scala 260:24]
  wire  inc_24 = a_sel_24 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_24 = d_sel_24 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_98 = count_25 + inc_24; // @[ToAXI4.scala 260:24]
  wire  inc_25 = a_sel_25 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_25 = d_sel_25 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_102 = count_26 + inc_25; // @[ToAXI4.scala 260:24]
  wire  inc_26 = a_sel_26 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_26 = d_sel_26 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_106 = count_27 + inc_26; // @[ToAXI4.scala 260:24]
  wire  inc_27 = a_sel_27 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_27 = d_sel_27 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_110 = count_28 + inc_27; // @[ToAXI4.scala 260:24]
  wire  inc_28 = a_sel_28 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_28 = d_sel_28 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_114 = count_29 + inc_28; // @[ToAXI4.scala 260:24]
  wire  inc_29 = a_sel_29 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_29 = d_sel_29 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_118 = count_30 + inc_29; // @[ToAXI4.scala 260:24]
  wire  inc_30 = a_sel_30 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_30 = d_sel_30 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_122 = count_31 + inc_30; // @[ToAXI4.scala 260:24]
  wire  inc_31 = a_sel_31 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_31 = d_sel_31 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_126 = count_32 + inc_31; // @[ToAXI4.scala 260:24]
  wire  inc_32 = a_sel_32 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_32 = d_sel_32 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_130 = count_33 + inc_32; // @[ToAXI4.scala 260:24]
  wire  inc_33 = a_sel_33 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_33 = d_sel_33 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_134 = count_34 + inc_33; // @[ToAXI4.scala 260:24]
  wire  inc_34 = a_sel_34 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_34 = d_sel_34 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_138 = count_35 + inc_34; // @[ToAXI4.scala 260:24]
  wire  inc_35 = a_sel_35 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_35 = d_sel_35 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_142 = count_36 + inc_35; // @[ToAXI4.scala 260:24]
  wire  inc_36 = a_sel_36 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_36 = d_sel_36 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_146 = count_37 + inc_36; // @[ToAXI4.scala 260:24]
  wire  inc_37 = a_sel_37 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_37 = d_sel_37 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_150 = count_38 + inc_37; // @[ToAXI4.scala 260:24]
  wire  inc_38 = a_sel_38 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_38 = d_sel_38 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_154 = count_39 + inc_38; // @[ToAXI4.scala 260:24]
  wire  inc_39 = a_sel_39 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_39 = d_sel_39 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_158 = count_40 + inc_39; // @[ToAXI4.scala 260:24]
  wire  inc_40 = a_sel_40 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_40 = d_sel_40 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_162 = count_41 + inc_40; // @[ToAXI4.scala 260:24]
  wire  inc_41 = a_sel_41 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_41 = d_sel_41 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_166 = count_42 + inc_41; // @[ToAXI4.scala 260:24]
  wire  inc_42 = a_sel_42 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_42 = d_sel_42 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_170 = count_43 + inc_42; // @[ToAXI4.scala 260:24]
  wire  inc_43 = a_sel_43 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_43 = d_sel_43 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_174 = count_44 + inc_43; // @[ToAXI4.scala 260:24]
  wire  inc_44 = a_sel_44 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_44 = d_sel_44 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_178 = count_45 + inc_44; // @[ToAXI4.scala 260:24]
  wire  inc_45 = a_sel_45 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_45 = d_sel_45 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_182 = count_46 + inc_45; // @[ToAXI4.scala 260:24]
  wire  inc_46 = a_sel_46 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_46 = d_sel_46 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_186 = count_47 + inc_46; // @[ToAXI4.scala 260:24]
  wire  inc_47 = a_sel_47 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_47 = d_sel_47 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_190 = count_48 + inc_47; // @[ToAXI4.scala 260:24]
  wire  inc_48 = a_sel_48 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_48 = d_sel_48 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_194 = count_49 + inc_48; // @[ToAXI4.scala 260:24]
  wire  inc_49 = a_sel_49 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_49 = d_sel_49 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_198 = count_50 + inc_49; // @[ToAXI4.scala 260:24]
  wire  inc_50 = a_sel_50 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_50 = d_sel_50 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_202 = count_51 + inc_50; // @[ToAXI4.scala 260:24]
  wire  inc_51 = a_sel_51 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_51 = d_sel_51 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_206 = count_52 + inc_51; // @[ToAXI4.scala 260:24]
  wire  inc_52 = a_sel_52 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_52 = d_sel_52 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_210 = count_53 + inc_52; // @[ToAXI4.scala 260:24]
  wire  inc_53 = a_sel_53 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_53 = d_sel_53 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_214 = count_54 + inc_53; // @[ToAXI4.scala 260:24]
  wire  inc_54 = a_sel_54 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_54 = d_sel_54 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_218 = count_55 + inc_54; // @[ToAXI4.scala 260:24]
  wire  inc_55 = a_sel_55 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_55 = d_sel_55 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_222 = count_56 + inc_55; // @[ToAXI4.scala 260:24]
  wire  inc_56 = a_sel_56 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_56 = d_sel_56 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_226 = count_57 + inc_56; // @[ToAXI4.scala 260:24]
  wire  inc_57 = a_sel_57 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_57 = d_sel_57 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_230 = count_58 + inc_57; // @[ToAXI4.scala 260:24]
  wire  inc_58 = a_sel_58 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_58 = d_sel_58 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_234 = count_59 + inc_58; // @[ToAXI4.scala 260:24]
  wire  inc_59 = a_sel_59 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_59 = d_sel_59 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_238 = count_60 + inc_59; // @[ToAXI4.scala 260:24]
  wire  inc_60 = a_sel_60 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_60 = d_sel_60 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_242 = count_61 + inc_60; // @[ToAXI4.scala 260:24]
  wire  inc_61 = a_sel_61 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_61 = d_sel_61 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_246 = count_62 + inc_61; // @[ToAXI4.scala 260:24]
  wire  inc_62 = a_sel_62 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_62 = d_sel_62 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_250 = count_63 + inc_62; // @[ToAXI4.scala 260:24]
  wire  inc_63 = a_sel_63 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_63 = d_sel_63 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_254 = count_64 + inc_63; // @[ToAXI4.scala 260:24]
  Queue_109 deq ( // @[Decoupled.scala 361:21]
    .clock(deq_clock),
    .reset(deq_reset),
    .io_enq_ready(deq_io_enq_ready),
    .io_enq_valid(deq_io_enq_valid),
    .io_enq_bits_data(deq_io_enq_bits_data),
    .io_enq_bits_strb(deq_io_enq_bits_strb),
    .io_enq_bits_last(deq_io_enq_bits_last),
    .io_deq_ready(deq_io_deq_ready),
    .io_deq_valid(deq_io_deq_valid),
    .io_deq_bits_data(deq_io_deq_bits_data),
    .io_deq_bits_strb(deq_io_deq_bits_strb),
    .io_deq_bits_last(deq_io_deq_bits_last)
  );
  Queue_110 queue_arw_deq ( // @[Decoupled.scala 361:21]
    .clock(queue_arw_deq_clock),
    .reset(queue_arw_deq_reset),
    .io_enq_ready(queue_arw_deq_io_enq_ready),
    .io_enq_valid(queue_arw_deq_io_enq_valid),
    .io_enq_bits_id(queue_arw_deq_io_enq_bits_id),
    .io_enq_bits_addr(queue_arw_deq_io_enq_bits_addr),
    .io_enq_bits_len(queue_arw_deq_io_enq_bits_len),
    .io_enq_bits_size(queue_arw_deq_io_enq_bits_size),
    .io_enq_bits_echo_tl_state_size(queue_arw_deq_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(queue_arw_deq_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_wen(queue_arw_deq_io_enq_bits_wen),
    .io_deq_ready(queue_arw_deq_io_deq_ready),
    .io_deq_valid(queue_arw_deq_io_deq_valid),
    .io_deq_bits_id(queue_arw_deq_io_deq_bits_id),
    .io_deq_bits_addr(queue_arw_deq_io_deq_bits_addr),
    .io_deq_bits_len(queue_arw_deq_io_deq_bits_len),
    .io_deq_bits_size(queue_arw_deq_io_deq_bits_size),
    .io_deq_bits_burst(queue_arw_deq_io_deq_bits_burst),
    .io_deq_bits_lock(queue_arw_deq_io_deq_bits_lock),
    .io_deq_bits_cache(queue_arw_deq_io_deq_bits_cache),
    .io_deq_bits_prot(queue_arw_deq_io_deq_bits_prot),
    .io_deq_bits_qos(queue_arw_deq_io_deq_bits_qos),
    .io_deq_bits_echo_tl_state_size(queue_arw_deq_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(queue_arw_deq_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_wen(queue_arw_deq_io_deq_bits_wen)
  );
  assign auto_in_a_ready = ~stall & _bundleIn_0_a_ready_T_3; // @[ToAXI4.scala 196:28]
  assign auto_in_d_valid = r_wins ? auto_out_rvalid : auto_out_bvalid; // @[ToAXI4.scala 219:24]
  assign auto_in_d_bits_opcode = r_wins ? 3'h1 : 3'h0; // @[ToAXI4.scala 237:23]
  assign auto_in_d_bits_size = r_wins ? r_d_size : b_d_size; // @[ToAXI4.scala 237:23]
  assign auto_in_d_bits_source = r_wins ? auto_out_recho_tl_state_source : auto_out_becho_tl_state_source; // @[ToAXI4.scala 237:23]
  assign auto_in_d_bits_denied = r_wins ? _GEN_133 : b_denied; // @[ToAXI4.scala 237:23]
  assign auto_in_d_bits_data = auto_out_rdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_awvalid = queue_arw_valid & queue_arw_bits_wen; // @[ToAXI4.scala 156:39]
  assign auto_out_awid = queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awaddr = queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awlen = queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awsize = queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awburst = queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awlock = queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awcache = queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awprot = queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awqos = queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awecho_tl_state_size = queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awecho_tl_state_source = queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_wvalid = deq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  assign auto_out_wdata = deq_io_deq_bits_data; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_wstrb = deq_io_deq_bits_strb; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_wlast = deq_io_deq_bits_last; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_bready = auto_in_d_ready & ~r_wins; // @[ToAXI4.scala 218:33]
  assign auto_out_arvalid = queue_arw_valid & ~queue_arw_bits_wen; // @[ToAXI4.scala 155:39]
  assign auto_out_arid = queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_araddr = queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arlen = queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arsize = queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arburst = queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arlock = queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arcache = queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arprot = queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arqos = queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arecho_tl_state_size = queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arecho_tl_state_source = queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_rready = auto_in_d_ready & r_wins; // @[ToAXI4.scala 217:33]
  assign deq_clock = clock;
  assign deq_reset = reset;
  assign deq_io_enq_valid = _out_arw_valid_T_1 & a_isPut & _bundleIn_0_a_ready_T_1; // @[ToAXI4.scala 199:54]
  assign deq_io_enq_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_enq_bits_strb = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_enq_bits_last = counter | ~beats1; // @[Edges.scala 231:37]
  assign deq_io_deq_ready = auto_out_wready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign queue_arw_deq_clock = clock;
  assign queue_arw_deq_reset = reset;
  assign queue_arw_deq_io_enq_valid = _bundleIn_0_a_ready_T & auto_in_a_valid & _out_arw_valid_T_4; // @[ToAXI4.scala 197:45]
  assign queue_arw_deq_io_enq_bits_id = 6'h3f == auto_in_a_bits_source ? 6'h3f : _GEN_64; // @[ToAXI4.scala 166:{17,17}]
  assign queue_arw_deq_io_enq_bits_addr = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign queue_arw_deq_io_enq_bits_len = _out_arw_bits_len_T_3[12:5]; // @[ToAXI4.scala 168:84]
  assign queue_arw_deq_io_enq_bits_size = auto_in_a_bits_size >= 3'h5 ? 3'h5 : auto_in_a_bits_size; // @[ToAXI4.scala 169:23]
  assign queue_arw_deq_io_enq_bits_echo_tl_state_size = {{1'd0}, auto_in_a_bits_size}; // @[ToAXI4.scala 147:25 179:22]
  assign queue_arw_deq_io_enq_bits_echo_tl_state_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign queue_arw_deq_io_enq_bits_wen = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 91:28]
  assign queue_arw_deq_io_deq_ready = queue_arw_bits_wen ? auto_out_awready : auto_out_arready; // @[ToAXI4.scala 157:29]
  always @(posedge clock) begin
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_64 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_64 <= _count_T_254 - dec_63; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_63 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_63 <= _count_T_250 - dec_62; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_62 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_62 <= _count_T_246 - dec_61; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_61 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_61 <= _count_T_242 - dec_60; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_60 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_60 <= _count_T_238 - dec_59; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_59 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_59 <= _count_T_234 - dec_58; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_58 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_58 <= _count_T_230 - dec_57; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_57 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_57 <= _count_T_226 - dec_56; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_56 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_56 <= _count_T_222 - dec_55; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_55 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_55 <= _count_T_218 - dec_54; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_54 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_54 <= _count_T_214 - dec_53; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_53 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_53 <= _count_T_210 - dec_52; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_52 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_52 <= _count_T_206 - dec_51; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_51 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_51 <= _count_T_202 - dec_50; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_50 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_50 <= _count_T_198 - dec_49; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_49 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_49 <= _count_T_194 - dec_48; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_48 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_48 <= _count_T_190 - dec_47; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_47 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_47 <= _count_T_186 - dec_46; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_46 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_46 <= _count_T_182 - dec_45; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_45 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_45 <= _count_T_178 - dec_44; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_44 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_44 <= _count_T_174 - dec_43; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_43 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_43 <= _count_T_170 - dec_42; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_42 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_42 <= _count_T_166 - dec_41; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_41 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_41 <= _count_T_162 - dec_40; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_40 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_40 <= _count_T_158 - dec_39; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_39 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_39 <= _count_T_154 - dec_38; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_38 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_38 <= _count_T_150 - dec_37; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_37 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_37 <= _count_T_146 - dec_36; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_36 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_36 <= _count_T_142 - dec_35; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_35 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_35 <= _count_T_138 - dec_34; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_34 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_34 <= _count_T_134 - dec_33; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_33 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_33 <= _count_T_130 - dec_32; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_32 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_32 <= _count_T_126 - dec_31; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_31 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_31 <= _count_T_122 - dec_30; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_30 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_30 <= _count_T_118 - dec_29; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_29 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_29 <= _count_T_114 - dec_28; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_28 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_28 <= _count_T_110 - dec_27; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_27 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_27 <= _count_T_106 - dec_26; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_26 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_26 <= _count_T_102 - dec_25; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_25 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_25 <= _count_T_98 - dec_24; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_24 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_24 <= _count_T_94 - dec_23; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_23 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_23 <= _count_T_90 - dec_22; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_22 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_22 <= _count_T_86 - dec_21; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_21 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_21 <= _count_T_82 - dec_20; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_20 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_20 <= _count_T_78 - dec_19; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_19 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_19 <= _count_T_74 - dec_18; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_18 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_18 <= _count_T_70 - dec_17; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_17 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_17 <= _count_T_66 - dec_16; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_16 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_16 <= _count_T_62 - dec_15; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_15 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_15 <= _count_T_58 - dec_14; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_14 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_14 <= _count_T_54 - dec_13; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_13 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_13 <= _count_T_50 - dec_12; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_12 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_12 <= _count_T_46 - dec_11; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_11 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_11 <= _count_T_42 - dec_10; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_10 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_10 <= _count_T_38 - dec_9; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_9 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_9 <= _count_T_34 - dec_8; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_8 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_8 <= _count_T_30 - dec_7; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_7 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_7 <= _count_T_26 - dec_6; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_6 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_6 <= _count_T_22 - dec_5; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_5 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_5 <= _count_T_18 - dec_4; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_4 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_4 <= _count_T_14 - dec_3; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_3 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_3 <= _count_T_10 - dec_2; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_2 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_2 <= _count_T_6 - dec_1; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_1 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_1 <= _count_T_2 - dec; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[Edges.scala 228:27]
      counter <= 1'h0; // @[Edges.scala 228:27]
    end else if (_T) begin // @[Edges.scala 234:17]
      if (a_first) begin // @[Edges.scala 235:21]
        counter <= beats1;
      end else begin
        counter <= counter1;
      end
    end
    if (reset) begin // @[ToAXI4.scala 161:30]
      doneAW <= 1'h0; // @[ToAXI4.scala 161:30]
    end else if (_T) begin // @[ToAXI4.scala 162:26]
      doneAW <= ~a_last; // @[ToAXI4.scala 162:35]
    end
    if (reset) begin // @[ToAXI4.scala 206:30]
      r_holds_d <= 1'h0; // @[ToAXI4.scala 206:30]
    end else if (_T_2) begin // @[ToAXI4.scala 207:27]
      r_holds_d <= ~auto_out_rlast; // @[ToAXI4.scala 207:39]
    end
    if (auto_out_bvalid & ~bundleOut_0_bready) begin // @[ToAXI4.scala 210:42]
      b_delay <= _bdelay_T_1; // @[ToAXI4.scala 211:17]
    end else begin
      b_delay <= 3'h0; // @[ToAXI4.scala 213:17]
    end
    r_first <= reset | _GEN_132; // @[ToAXI4.scala 224:{28,28}]
    if (r_first) begin // @[Reg.scala 17:18]
      r_denied_r <= _rdenied_T; // @[Reg.scala 17:22]
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
  count_64 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  count_63 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  count_62 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  count_61 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  count_60 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  count_59 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  count_58 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  count_57 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  count_56 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  count_55 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  count_54 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  count_53 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  count_52 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  count_51 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  count_50 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  count_49 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  count_48 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  count_47 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  count_46 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  count_45 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  count_44 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  count_43 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  count_42 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  count_41 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  count_40 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  count_39 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  count_38 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  count_37 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  count_36 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  count_35 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  count_34 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  count_33 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  count_32 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  count_31 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  count_30 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  count_29 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  count_28 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  count_27 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  count_26 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  count_25 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  count_24 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  count_23 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  count_22 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  count_21 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  count_20 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  count_19 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  count_18 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  count_17 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  count_16 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  count_15 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  count_14 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  count_13 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  count_12 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  count_11 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  count_10 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  count_9 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  count_8 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  count_7 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  count_6 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  count_5 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  count_4 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  count_3 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  count_2 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  count_1 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  counter = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  doneAW = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  r_holds_d = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  b_delay = _RAND_67[2:0];
  _RAND_68 = {1{`RANDOM}};
  r_first = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  r_denied_r = _RAND_69[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
