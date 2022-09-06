module MaskedSyncDataModuleTemplate(
  input        clock,
  input  [5:0] io_raddr_0,
  input  [5:0] io_raddr_1,
  input  [5:0] io_raddr_2,
  output [7:0] io_rdata_0,
  output [7:0] io_rdata_1,
  output [7:0] io_rdata_2,
  input        io_wen_0,
  input        io_wen_1,
  input        io_wen_2,
  input  [5:0] io_waddr_0,
  input  [5:0] io_waddr_1,
  input  [5:0] io_waddr_2,
  input  [7:0] io_wdata_0,
  input  [7:0] io_wdata_1,
  input  [7:0] io_wdata_2,
  input        io_mwmask_0_0,
  input        io_mwmask_0_1,
  input        io_mwmask_0_2,
  input        io_mwmask_0_3,
  input        io_mwmask_0_4,
  input        io_mwmask_0_5,
  input        io_mwmask_0_6,
  input        io_mwmask_0_7,
  input        io_mwmask_0_8,
  input        io_mwmask_0_9,
  input        io_mwmask_0_10,
  input        io_mwmask_0_11,
  input        io_mwmask_0_12,
  input        io_mwmask_0_13,
  input        io_mwmask_0_14,
  input        io_mwmask_0_15,
  input        io_mwmask_0_16,
  input        io_mwmask_0_17,
  input        io_mwmask_0_18,
  input        io_mwmask_0_19,
  input        io_mwmask_0_20,
  input        io_mwmask_0_21,
  input        io_mwmask_0_22,
  input        io_mwmask_0_23,
  input        io_mwmask_0_24,
  input        io_mwmask_0_25,
  input        io_mwmask_0_26,
  input        io_mwmask_0_27,
  input        io_mwmask_0_28,
  input        io_mwmask_0_29,
  input        io_mwmask_0_30,
  input        io_mwmask_0_31,
  input        io_mwmask_0_32,
  input        io_mwmask_0_33,
  input        io_mwmask_0_34,
  input        io_mwmask_0_35,
  input        io_mwmask_0_36,
  input        io_mwmask_0_37,
  input        io_mwmask_0_38,
  input        io_mwmask_0_39,
  input        io_mwmask_0_40,
  input        io_mwmask_0_41,
  input        io_mwmask_0_42,
  input        io_mwmask_0_43,
  input        io_mwmask_0_44,
  input        io_mwmask_0_45,
  input        io_mwmask_0_46,
  input        io_mwmask_0_47,
  input        io_mwmask_1_0,
  input        io_mwmask_1_1,
  input        io_mwmask_1_2,
  input        io_mwmask_1_3,
  input        io_mwmask_1_4,
  input        io_mwmask_1_5,
  input        io_mwmask_1_6,
  input        io_mwmask_1_7,
  input        io_mwmask_1_8,
  input        io_mwmask_1_9,
  input        io_mwmask_1_10,
  input        io_mwmask_1_11,
  input        io_mwmask_1_12,
  input        io_mwmask_1_13,
  input        io_mwmask_1_14,
  input        io_mwmask_1_15,
  input        io_mwmask_1_16,
  input        io_mwmask_1_17,
  input        io_mwmask_1_18,
  input        io_mwmask_1_19,
  input        io_mwmask_1_20,
  input        io_mwmask_1_21,
  input        io_mwmask_1_22,
  input        io_mwmask_1_23,
  input        io_mwmask_1_24,
  input        io_mwmask_1_25,
  input        io_mwmask_1_26,
  input        io_mwmask_1_27,
  input        io_mwmask_1_28,
  input        io_mwmask_1_29,
  input        io_mwmask_1_30,
  input        io_mwmask_1_31,
  input        io_mwmask_1_32,
  input        io_mwmask_1_33,
  input        io_mwmask_1_34,
  input        io_mwmask_1_35,
  input        io_mwmask_1_36,
  input        io_mwmask_1_37,
  input        io_mwmask_1_38,
  input        io_mwmask_1_39,
  input        io_mwmask_1_40,
  input        io_mwmask_1_41,
  input        io_mwmask_1_42,
  input        io_mwmask_1_43,
  input        io_mwmask_1_44,
  input        io_mwmask_1_45,
  input        io_mwmask_1_46,
  input        io_mwmask_1_47,
  input        io_mwmask_2_0,
  input        io_mwmask_2_1,
  input        io_mwmask_2_2,
  input        io_mwmask_2_3,
  input        io_mwmask_2_4,
  input        io_mwmask_2_5,
  input        io_mwmask_2_6,
  input        io_mwmask_2_7,
  input        io_mwmask_2_8,
  input        io_mwmask_2_9,
  input        io_mwmask_2_10,
  input        io_mwmask_2_11,
  input        io_mwmask_2_12,
  input        io_mwmask_2_13,
  input        io_mwmask_2_14,
  input        io_mwmask_2_15,
  input        io_mwmask_2_16,
  input        io_mwmask_2_17,
  input        io_mwmask_2_18,
  input        io_mwmask_2_19,
  input        io_mwmask_2_20,
  input        io_mwmask_2_21,
  input        io_mwmask_2_22,
  input        io_mwmask_2_23,
  input        io_mwmask_2_24,
  input        io_mwmask_2_25,
  input        io_mwmask_2_26,
  input        io_mwmask_2_27,
  input        io_mwmask_2_28,
  input        io_mwmask_2_29,
  input        io_mwmask_2_30,
  input        io_mwmask_2_31,
  input        io_mwmask_2_32,
  input        io_mwmask_2_33,
  input        io_mwmask_2_34,
  input        io_mwmask_2_35,
  input        io_mwmask_2_36,
  input        io_mwmask_2_37,
  input        io_mwmask_2_38,
  input        io_mwmask_2_39,
  input        io_mwmask_2_40,
  input        io_mwmask_2_41,
  input        io_mwmask_2_42,
  input        io_mwmask_2_43,
  input        io_mwmask_2_44,
  input        io_mwmask_2_45,
  input        io_mwmask_2_46,
  input        io_mwmask_2_47,
  input        io_mwmask_3_0,
  input        io_mwmask_3_1,
  input        io_mwmask_3_2,
  input        io_mwmask_3_3,
  input        io_mwmask_3_4,
  input        io_mwmask_3_5,
  input        io_mwmask_3_6,
  input        io_mwmask_3_7,
  input        io_mwmask_3_8,
  input        io_mwmask_3_9,
  input        io_mwmask_3_10,
  input        io_mwmask_3_11,
  input        io_mwmask_3_12,
  input        io_mwmask_3_13,
  input        io_mwmask_3_14,
  input        io_mwmask_3_15,
  input        io_mwmask_3_16,
  input        io_mwmask_3_17,
  input        io_mwmask_3_18,
  input        io_mwmask_3_19,
  input        io_mwmask_3_20,
  input        io_mwmask_3_21,
  input        io_mwmask_3_22,
  input        io_mwmask_3_23,
  input        io_mwmask_3_24,
  input        io_mwmask_3_25,
  input        io_mwmask_3_26,
  input        io_mwmask_3_27,
  input        io_mwmask_3_28,
  input        io_mwmask_3_29,
  input        io_mwmask_3_30,
  input        io_mwmask_3_31,
  input        io_mwmask_3_32,
  input        io_mwmask_3_33,
  input        io_mwmask_3_34,
  input        io_mwmask_3_35,
  input        io_mwmask_3_36,
  input        io_mwmask_3_37,
  input        io_mwmask_3_38,
  input        io_mwmask_3_39,
  input        io_mwmask_3_40,
  input        io_mwmask_3_41,
  input        io_mwmask_3_42,
  input        io_mwmask_3_43,
  input        io_mwmask_3_44,
  input        io_mwmask_3_45,
  input        io_mwmask_3_46,
  input        io_mwmask_3_47,
  input  [7:0] io_mwdata_0,
  input  [7:0] io_mwdata_1,
  input  [7:0] io_mwdata_2,
  input  [7:0] io_mwdata_3
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
`endif // RANDOMIZE_REG_INIT
  reg [7:0] data_0; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_1; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_2; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_3; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_4; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_5; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_6; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_7; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_8; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_9; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_10; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_11; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_12; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_13; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_14; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_15; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_16; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_17; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_18; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_19; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_20; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_21; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_22; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_23; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_24; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_25; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_26; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_27; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_28; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_29; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_30; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_31; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_32; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_33; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_34; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_35; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_36; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_37; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_38; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_39; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_40; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_41; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_42; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_43; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_44; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_45; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_46; // @[MaskedDataModule.scala 45:17]
  reg [7:0] data_47; // @[MaskedDataModule.scala 45:17]
  reg [5:0] io_rdata_0_REG; // @[MaskedDataModule.scala 49:32]
  wire [7:0] _GEN_1 = 6'h1 == io_rdata_0_REG ? data_1 : data_0; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_2 = 6'h2 == io_rdata_0_REG ? data_2 : _GEN_1; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_3 = 6'h3 == io_rdata_0_REG ? data_3 : _GEN_2; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_4 = 6'h4 == io_rdata_0_REG ? data_4 : _GEN_3; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_5 = 6'h5 == io_rdata_0_REG ? data_5 : _GEN_4; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_6 = 6'h6 == io_rdata_0_REG ? data_6 : _GEN_5; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_7 = 6'h7 == io_rdata_0_REG ? data_7 : _GEN_6; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_8 = 6'h8 == io_rdata_0_REG ? data_8 : _GEN_7; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_9 = 6'h9 == io_rdata_0_REG ? data_9 : _GEN_8; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_10 = 6'ha == io_rdata_0_REG ? data_10 : _GEN_9; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_11 = 6'hb == io_rdata_0_REG ? data_11 : _GEN_10; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_12 = 6'hc == io_rdata_0_REG ? data_12 : _GEN_11; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_13 = 6'hd == io_rdata_0_REG ? data_13 : _GEN_12; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_14 = 6'he == io_rdata_0_REG ? data_14 : _GEN_13; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_15 = 6'hf == io_rdata_0_REG ? data_15 : _GEN_14; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_16 = 6'h10 == io_rdata_0_REG ? data_16 : _GEN_15; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_17 = 6'h11 == io_rdata_0_REG ? data_17 : _GEN_16; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_18 = 6'h12 == io_rdata_0_REG ? data_18 : _GEN_17; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_19 = 6'h13 == io_rdata_0_REG ? data_19 : _GEN_18; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_20 = 6'h14 == io_rdata_0_REG ? data_20 : _GEN_19; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_21 = 6'h15 == io_rdata_0_REG ? data_21 : _GEN_20; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_22 = 6'h16 == io_rdata_0_REG ? data_22 : _GEN_21; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_23 = 6'h17 == io_rdata_0_REG ? data_23 : _GEN_22; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_24 = 6'h18 == io_rdata_0_REG ? data_24 : _GEN_23; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_25 = 6'h19 == io_rdata_0_REG ? data_25 : _GEN_24; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_26 = 6'h1a == io_rdata_0_REG ? data_26 : _GEN_25; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_27 = 6'h1b == io_rdata_0_REG ? data_27 : _GEN_26; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_28 = 6'h1c == io_rdata_0_REG ? data_28 : _GEN_27; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_29 = 6'h1d == io_rdata_0_REG ? data_29 : _GEN_28; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_30 = 6'h1e == io_rdata_0_REG ? data_30 : _GEN_29; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_31 = 6'h1f == io_rdata_0_REG ? data_31 : _GEN_30; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_32 = 6'h20 == io_rdata_0_REG ? data_32 : _GEN_31; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_33 = 6'h21 == io_rdata_0_REG ? data_33 : _GEN_32; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_34 = 6'h22 == io_rdata_0_REG ? data_34 : _GEN_33; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_35 = 6'h23 == io_rdata_0_REG ? data_35 : _GEN_34; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_36 = 6'h24 == io_rdata_0_REG ? data_36 : _GEN_35; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_37 = 6'h25 == io_rdata_0_REG ? data_37 : _GEN_36; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_38 = 6'h26 == io_rdata_0_REG ? data_38 : _GEN_37; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_39 = 6'h27 == io_rdata_0_REG ? data_39 : _GEN_38; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_40 = 6'h28 == io_rdata_0_REG ? data_40 : _GEN_39; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_41 = 6'h29 == io_rdata_0_REG ? data_41 : _GEN_40; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_42 = 6'h2a == io_rdata_0_REG ? data_42 : _GEN_41; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_43 = 6'h2b == io_rdata_0_REG ? data_43 : _GEN_42; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_44 = 6'h2c == io_rdata_0_REG ? data_44 : _GEN_43; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_45 = 6'h2d == io_rdata_0_REG ? data_45 : _GEN_44; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_46 = 6'h2e == io_rdata_0_REG ? data_46 : _GEN_45; // @[MaskedDataModule.scala 49:{17,17}]
  reg [5:0] io_rdata_1_REG; // @[MaskedDataModule.scala 49:32]
  wire [7:0] _GEN_49 = 6'h1 == io_rdata_1_REG ? data_1 : data_0; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_50 = 6'h2 == io_rdata_1_REG ? data_2 : _GEN_49; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_51 = 6'h3 == io_rdata_1_REG ? data_3 : _GEN_50; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_52 = 6'h4 == io_rdata_1_REG ? data_4 : _GEN_51; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_53 = 6'h5 == io_rdata_1_REG ? data_5 : _GEN_52; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_54 = 6'h6 == io_rdata_1_REG ? data_6 : _GEN_53; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_55 = 6'h7 == io_rdata_1_REG ? data_7 : _GEN_54; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_56 = 6'h8 == io_rdata_1_REG ? data_8 : _GEN_55; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_57 = 6'h9 == io_rdata_1_REG ? data_9 : _GEN_56; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_58 = 6'ha == io_rdata_1_REG ? data_10 : _GEN_57; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_59 = 6'hb == io_rdata_1_REG ? data_11 : _GEN_58; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_60 = 6'hc == io_rdata_1_REG ? data_12 : _GEN_59; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_61 = 6'hd == io_rdata_1_REG ? data_13 : _GEN_60; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_62 = 6'he == io_rdata_1_REG ? data_14 : _GEN_61; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_63 = 6'hf == io_rdata_1_REG ? data_15 : _GEN_62; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_64 = 6'h10 == io_rdata_1_REG ? data_16 : _GEN_63; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_65 = 6'h11 == io_rdata_1_REG ? data_17 : _GEN_64; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_66 = 6'h12 == io_rdata_1_REG ? data_18 : _GEN_65; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_67 = 6'h13 == io_rdata_1_REG ? data_19 : _GEN_66; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_68 = 6'h14 == io_rdata_1_REG ? data_20 : _GEN_67; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_69 = 6'h15 == io_rdata_1_REG ? data_21 : _GEN_68; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_70 = 6'h16 == io_rdata_1_REG ? data_22 : _GEN_69; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_71 = 6'h17 == io_rdata_1_REG ? data_23 : _GEN_70; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_72 = 6'h18 == io_rdata_1_REG ? data_24 : _GEN_71; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_73 = 6'h19 == io_rdata_1_REG ? data_25 : _GEN_72; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_74 = 6'h1a == io_rdata_1_REG ? data_26 : _GEN_73; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_75 = 6'h1b == io_rdata_1_REG ? data_27 : _GEN_74; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_76 = 6'h1c == io_rdata_1_REG ? data_28 : _GEN_75; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_77 = 6'h1d == io_rdata_1_REG ? data_29 : _GEN_76; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_78 = 6'h1e == io_rdata_1_REG ? data_30 : _GEN_77; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_79 = 6'h1f == io_rdata_1_REG ? data_31 : _GEN_78; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_80 = 6'h20 == io_rdata_1_REG ? data_32 : _GEN_79; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_81 = 6'h21 == io_rdata_1_REG ? data_33 : _GEN_80; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_82 = 6'h22 == io_rdata_1_REG ? data_34 : _GEN_81; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_83 = 6'h23 == io_rdata_1_REG ? data_35 : _GEN_82; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_84 = 6'h24 == io_rdata_1_REG ? data_36 : _GEN_83; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_85 = 6'h25 == io_rdata_1_REG ? data_37 : _GEN_84; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_86 = 6'h26 == io_rdata_1_REG ? data_38 : _GEN_85; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_87 = 6'h27 == io_rdata_1_REG ? data_39 : _GEN_86; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_88 = 6'h28 == io_rdata_1_REG ? data_40 : _GEN_87; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_89 = 6'h29 == io_rdata_1_REG ? data_41 : _GEN_88; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_90 = 6'h2a == io_rdata_1_REG ? data_42 : _GEN_89; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_91 = 6'h2b == io_rdata_1_REG ? data_43 : _GEN_90; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_92 = 6'h2c == io_rdata_1_REG ? data_44 : _GEN_91; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_93 = 6'h2d == io_rdata_1_REG ? data_45 : _GEN_92; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_94 = 6'h2e == io_rdata_1_REG ? data_46 : _GEN_93; // @[MaskedDataModule.scala 49:{17,17}]
  reg [5:0] io_rdata_2_REG; // @[MaskedDataModule.scala 49:32]
  wire [7:0] _GEN_97 = 6'h1 == io_rdata_2_REG ? data_1 : data_0; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_98 = 6'h2 == io_rdata_2_REG ? data_2 : _GEN_97; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_99 = 6'h3 == io_rdata_2_REG ? data_3 : _GEN_98; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_100 = 6'h4 == io_rdata_2_REG ? data_4 : _GEN_99; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_101 = 6'h5 == io_rdata_2_REG ? data_5 : _GEN_100; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_102 = 6'h6 == io_rdata_2_REG ? data_6 : _GEN_101; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_103 = 6'h7 == io_rdata_2_REG ? data_7 : _GEN_102; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_104 = 6'h8 == io_rdata_2_REG ? data_8 : _GEN_103; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_105 = 6'h9 == io_rdata_2_REG ? data_9 : _GEN_104; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_106 = 6'ha == io_rdata_2_REG ? data_10 : _GEN_105; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_107 = 6'hb == io_rdata_2_REG ? data_11 : _GEN_106; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_108 = 6'hc == io_rdata_2_REG ? data_12 : _GEN_107; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_109 = 6'hd == io_rdata_2_REG ? data_13 : _GEN_108; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_110 = 6'he == io_rdata_2_REG ? data_14 : _GEN_109; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_111 = 6'hf == io_rdata_2_REG ? data_15 : _GEN_110; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_112 = 6'h10 == io_rdata_2_REG ? data_16 : _GEN_111; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_113 = 6'h11 == io_rdata_2_REG ? data_17 : _GEN_112; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_114 = 6'h12 == io_rdata_2_REG ? data_18 : _GEN_113; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_115 = 6'h13 == io_rdata_2_REG ? data_19 : _GEN_114; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_116 = 6'h14 == io_rdata_2_REG ? data_20 : _GEN_115; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_117 = 6'h15 == io_rdata_2_REG ? data_21 : _GEN_116; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_118 = 6'h16 == io_rdata_2_REG ? data_22 : _GEN_117; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_119 = 6'h17 == io_rdata_2_REG ? data_23 : _GEN_118; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_120 = 6'h18 == io_rdata_2_REG ? data_24 : _GEN_119; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_121 = 6'h19 == io_rdata_2_REG ? data_25 : _GEN_120; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_122 = 6'h1a == io_rdata_2_REG ? data_26 : _GEN_121; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_123 = 6'h1b == io_rdata_2_REG ? data_27 : _GEN_122; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_124 = 6'h1c == io_rdata_2_REG ? data_28 : _GEN_123; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_125 = 6'h1d == io_rdata_2_REG ? data_29 : _GEN_124; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_126 = 6'h1e == io_rdata_2_REG ? data_30 : _GEN_125; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_127 = 6'h1f == io_rdata_2_REG ? data_31 : _GEN_126; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_128 = 6'h20 == io_rdata_2_REG ? data_32 : _GEN_127; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_129 = 6'h21 == io_rdata_2_REG ? data_33 : _GEN_128; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_130 = 6'h22 == io_rdata_2_REG ? data_34 : _GEN_129; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_131 = 6'h23 == io_rdata_2_REG ? data_35 : _GEN_130; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_132 = 6'h24 == io_rdata_2_REG ? data_36 : _GEN_131; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_133 = 6'h25 == io_rdata_2_REG ? data_37 : _GEN_132; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_134 = 6'h26 == io_rdata_2_REG ? data_38 : _GEN_133; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_135 = 6'h27 == io_rdata_2_REG ? data_39 : _GEN_134; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_136 = 6'h28 == io_rdata_2_REG ? data_40 : _GEN_135; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_137 = 6'h29 == io_rdata_2_REG ? data_41 : _GEN_136; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_138 = 6'h2a == io_rdata_2_REG ? data_42 : _GEN_137; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_139 = 6'h2b == io_rdata_2_REG ? data_43 : _GEN_138; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_140 = 6'h2c == io_rdata_2_REG ? data_44 : _GEN_139; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_141 = 6'h2d == io_rdata_2_REG ? data_45 : _GEN_140; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_142 = 6'h2e == io_rdata_2_REG ? data_46 : _GEN_141; // @[MaskedDataModule.scala 49:{17,17}]
  wire [7:0] _GEN_144 = 6'h0 == io_waddr_0 ? io_wdata_0 : data_0; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_145 = 6'h1 == io_waddr_0 ? io_wdata_0 : data_1; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_146 = 6'h2 == io_waddr_0 ? io_wdata_0 : data_2; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_147 = 6'h3 == io_waddr_0 ? io_wdata_0 : data_3; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_148 = 6'h4 == io_waddr_0 ? io_wdata_0 : data_4; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_149 = 6'h5 == io_waddr_0 ? io_wdata_0 : data_5; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_150 = 6'h6 == io_waddr_0 ? io_wdata_0 : data_6; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_151 = 6'h7 == io_waddr_0 ? io_wdata_0 : data_7; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_152 = 6'h8 == io_waddr_0 ? io_wdata_0 : data_8; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_153 = 6'h9 == io_waddr_0 ? io_wdata_0 : data_9; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_154 = 6'ha == io_waddr_0 ? io_wdata_0 : data_10; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_155 = 6'hb == io_waddr_0 ? io_wdata_0 : data_11; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_156 = 6'hc == io_waddr_0 ? io_wdata_0 : data_12; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_157 = 6'hd == io_waddr_0 ? io_wdata_0 : data_13; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_158 = 6'he == io_waddr_0 ? io_wdata_0 : data_14; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_159 = 6'hf == io_waddr_0 ? io_wdata_0 : data_15; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_160 = 6'h10 == io_waddr_0 ? io_wdata_0 : data_16; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_161 = 6'h11 == io_waddr_0 ? io_wdata_0 : data_17; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_162 = 6'h12 == io_waddr_0 ? io_wdata_0 : data_18; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_163 = 6'h13 == io_waddr_0 ? io_wdata_0 : data_19; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_164 = 6'h14 == io_waddr_0 ? io_wdata_0 : data_20; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_165 = 6'h15 == io_waddr_0 ? io_wdata_0 : data_21; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_166 = 6'h16 == io_waddr_0 ? io_wdata_0 : data_22; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_167 = 6'h17 == io_waddr_0 ? io_wdata_0 : data_23; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_168 = 6'h18 == io_waddr_0 ? io_wdata_0 : data_24; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_169 = 6'h19 == io_waddr_0 ? io_wdata_0 : data_25; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_170 = 6'h1a == io_waddr_0 ? io_wdata_0 : data_26; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_171 = 6'h1b == io_waddr_0 ? io_wdata_0 : data_27; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_172 = 6'h1c == io_waddr_0 ? io_wdata_0 : data_28; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_173 = 6'h1d == io_waddr_0 ? io_wdata_0 : data_29; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_174 = 6'h1e == io_waddr_0 ? io_wdata_0 : data_30; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_175 = 6'h1f == io_waddr_0 ? io_wdata_0 : data_31; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_176 = 6'h20 == io_waddr_0 ? io_wdata_0 : data_32; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_177 = 6'h21 == io_waddr_0 ? io_wdata_0 : data_33; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_178 = 6'h22 == io_waddr_0 ? io_wdata_0 : data_34; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_179 = 6'h23 == io_waddr_0 ? io_wdata_0 : data_35; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_180 = 6'h24 == io_waddr_0 ? io_wdata_0 : data_36; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_181 = 6'h25 == io_waddr_0 ? io_wdata_0 : data_37; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_182 = 6'h26 == io_waddr_0 ? io_wdata_0 : data_38; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_183 = 6'h27 == io_waddr_0 ? io_wdata_0 : data_39; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_184 = 6'h28 == io_waddr_0 ? io_wdata_0 : data_40; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_185 = 6'h29 == io_waddr_0 ? io_wdata_0 : data_41; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_186 = 6'h2a == io_waddr_0 ? io_wdata_0 : data_42; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_187 = 6'h2b == io_waddr_0 ? io_wdata_0 : data_43; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_188 = 6'h2c == io_waddr_0 ? io_wdata_0 : data_44; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_189 = 6'h2d == io_waddr_0 ? io_wdata_0 : data_45; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_190 = 6'h2e == io_waddr_0 ? io_wdata_0 : data_46; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_191 = 6'h2f == io_waddr_0 ? io_wdata_0 : data_47; // @[MaskedDataModule.scala 45:17 60:{25,25}]
  wire [7:0] _GEN_192 = io_wen_0 ? _GEN_144 : data_0; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_193 = io_wen_0 ? _GEN_145 : data_1; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_194 = io_wen_0 ? _GEN_146 : data_2; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_195 = io_wen_0 ? _GEN_147 : data_3; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_196 = io_wen_0 ? _GEN_148 : data_4; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_197 = io_wen_0 ? _GEN_149 : data_5; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_198 = io_wen_0 ? _GEN_150 : data_6; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_199 = io_wen_0 ? _GEN_151 : data_7; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_200 = io_wen_0 ? _GEN_152 : data_8; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_201 = io_wen_0 ? _GEN_153 : data_9; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_202 = io_wen_0 ? _GEN_154 : data_10; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_203 = io_wen_0 ? _GEN_155 : data_11; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_204 = io_wen_0 ? _GEN_156 : data_12; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_205 = io_wen_0 ? _GEN_157 : data_13; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_206 = io_wen_0 ? _GEN_158 : data_14; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_207 = io_wen_0 ? _GEN_159 : data_15; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_208 = io_wen_0 ? _GEN_160 : data_16; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_209 = io_wen_0 ? _GEN_161 : data_17; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_210 = io_wen_0 ? _GEN_162 : data_18; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_211 = io_wen_0 ? _GEN_163 : data_19; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_212 = io_wen_0 ? _GEN_164 : data_20; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_213 = io_wen_0 ? _GEN_165 : data_21; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_214 = io_wen_0 ? _GEN_166 : data_22; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_215 = io_wen_0 ? _GEN_167 : data_23; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_216 = io_wen_0 ? _GEN_168 : data_24; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_217 = io_wen_0 ? _GEN_169 : data_25; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_218 = io_wen_0 ? _GEN_170 : data_26; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_219 = io_wen_0 ? _GEN_171 : data_27; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_220 = io_wen_0 ? _GEN_172 : data_28; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_221 = io_wen_0 ? _GEN_173 : data_29; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_222 = io_wen_0 ? _GEN_174 : data_30; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_223 = io_wen_0 ? _GEN_175 : data_31; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_224 = io_wen_0 ? _GEN_176 : data_32; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_225 = io_wen_0 ? _GEN_177 : data_33; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_226 = io_wen_0 ? _GEN_178 : data_34; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_227 = io_wen_0 ? _GEN_179 : data_35; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_228 = io_wen_0 ? _GEN_180 : data_36; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_229 = io_wen_0 ? _GEN_181 : data_37; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_230 = io_wen_0 ? _GEN_182 : data_38; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_231 = io_wen_0 ? _GEN_183 : data_39; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_232 = io_wen_0 ? _GEN_184 : data_40; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_233 = io_wen_0 ? _GEN_185 : data_41; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_234 = io_wen_0 ? _GEN_186 : data_42; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_235 = io_wen_0 ? _GEN_187 : data_43; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_236 = io_wen_0 ? _GEN_188 : data_44; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_237 = io_wen_0 ? _GEN_189 : data_45; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_238 = io_wen_0 ? _GEN_190 : data_46; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_239 = io_wen_0 ? _GEN_191 : data_47; // @[MaskedDataModule.scala 45:17 59:22]
  wire [7:0] _GEN_240 = 6'h0 == io_waddr_1 ? io_wdata_1 : _GEN_192; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_241 = 6'h1 == io_waddr_1 ? io_wdata_1 : _GEN_193; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_242 = 6'h2 == io_waddr_1 ? io_wdata_1 : _GEN_194; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_243 = 6'h3 == io_waddr_1 ? io_wdata_1 : _GEN_195; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_244 = 6'h4 == io_waddr_1 ? io_wdata_1 : _GEN_196; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_245 = 6'h5 == io_waddr_1 ? io_wdata_1 : _GEN_197; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_246 = 6'h6 == io_waddr_1 ? io_wdata_1 : _GEN_198; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_247 = 6'h7 == io_waddr_1 ? io_wdata_1 : _GEN_199; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_248 = 6'h8 == io_waddr_1 ? io_wdata_1 : _GEN_200; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_249 = 6'h9 == io_waddr_1 ? io_wdata_1 : _GEN_201; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_250 = 6'ha == io_waddr_1 ? io_wdata_1 : _GEN_202; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_251 = 6'hb == io_waddr_1 ? io_wdata_1 : _GEN_203; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_252 = 6'hc == io_waddr_1 ? io_wdata_1 : _GEN_204; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_253 = 6'hd == io_waddr_1 ? io_wdata_1 : _GEN_205; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_254 = 6'he == io_waddr_1 ? io_wdata_1 : _GEN_206; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_255 = 6'hf == io_waddr_1 ? io_wdata_1 : _GEN_207; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_256 = 6'h10 == io_waddr_1 ? io_wdata_1 : _GEN_208; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_257 = 6'h11 == io_waddr_1 ? io_wdata_1 : _GEN_209; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_258 = 6'h12 == io_waddr_1 ? io_wdata_1 : _GEN_210; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_259 = 6'h13 == io_waddr_1 ? io_wdata_1 : _GEN_211; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_260 = 6'h14 == io_waddr_1 ? io_wdata_1 : _GEN_212; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_261 = 6'h15 == io_waddr_1 ? io_wdata_1 : _GEN_213; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_262 = 6'h16 == io_waddr_1 ? io_wdata_1 : _GEN_214; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_263 = 6'h17 == io_waddr_1 ? io_wdata_1 : _GEN_215; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_264 = 6'h18 == io_waddr_1 ? io_wdata_1 : _GEN_216; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_265 = 6'h19 == io_waddr_1 ? io_wdata_1 : _GEN_217; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_266 = 6'h1a == io_waddr_1 ? io_wdata_1 : _GEN_218; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_267 = 6'h1b == io_waddr_1 ? io_wdata_1 : _GEN_219; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_268 = 6'h1c == io_waddr_1 ? io_wdata_1 : _GEN_220; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_269 = 6'h1d == io_waddr_1 ? io_wdata_1 : _GEN_221; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_270 = 6'h1e == io_waddr_1 ? io_wdata_1 : _GEN_222; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_271 = 6'h1f == io_waddr_1 ? io_wdata_1 : _GEN_223; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_272 = 6'h20 == io_waddr_1 ? io_wdata_1 : _GEN_224; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_273 = 6'h21 == io_waddr_1 ? io_wdata_1 : _GEN_225; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_274 = 6'h22 == io_waddr_1 ? io_wdata_1 : _GEN_226; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_275 = 6'h23 == io_waddr_1 ? io_wdata_1 : _GEN_227; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_276 = 6'h24 == io_waddr_1 ? io_wdata_1 : _GEN_228; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_277 = 6'h25 == io_waddr_1 ? io_wdata_1 : _GEN_229; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_278 = 6'h26 == io_waddr_1 ? io_wdata_1 : _GEN_230; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_279 = 6'h27 == io_waddr_1 ? io_wdata_1 : _GEN_231; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_280 = 6'h28 == io_waddr_1 ? io_wdata_1 : _GEN_232; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_281 = 6'h29 == io_waddr_1 ? io_wdata_1 : _GEN_233; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_282 = 6'h2a == io_waddr_1 ? io_wdata_1 : _GEN_234; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_283 = 6'h2b == io_waddr_1 ? io_wdata_1 : _GEN_235; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_284 = 6'h2c == io_waddr_1 ? io_wdata_1 : _GEN_236; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_285 = 6'h2d == io_waddr_1 ? io_wdata_1 : _GEN_237; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_286 = 6'h2e == io_waddr_1 ? io_wdata_1 : _GEN_238; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_287 = 6'h2f == io_waddr_1 ? io_wdata_1 : _GEN_239; // @[MaskedDataModule.scala 60:{25,25}]
  wire [7:0] _GEN_288 = io_wen_1 ? _GEN_240 : _GEN_192; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_289 = io_wen_1 ? _GEN_241 : _GEN_193; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_290 = io_wen_1 ? _GEN_242 : _GEN_194; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_291 = io_wen_1 ? _GEN_243 : _GEN_195; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_292 = io_wen_1 ? _GEN_244 : _GEN_196; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_293 = io_wen_1 ? _GEN_245 : _GEN_197; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_294 = io_wen_1 ? _GEN_246 : _GEN_198; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_295 = io_wen_1 ? _GEN_247 : _GEN_199; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_296 = io_wen_1 ? _GEN_248 : _GEN_200; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_297 = io_wen_1 ? _GEN_249 : _GEN_201; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_298 = io_wen_1 ? _GEN_250 : _GEN_202; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_299 = io_wen_1 ? _GEN_251 : _GEN_203; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_300 = io_wen_1 ? _GEN_252 : _GEN_204; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_301 = io_wen_1 ? _GEN_253 : _GEN_205; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_302 = io_wen_1 ? _GEN_254 : _GEN_206; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_303 = io_wen_1 ? _GEN_255 : _GEN_207; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_304 = io_wen_1 ? _GEN_256 : _GEN_208; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_305 = io_wen_1 ? _GEN_257 : _GEN_209; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_306 = io_wen_1 ? _GEN_258 : _GEN_210; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_307 = io_wen_1 ? _GEN_259 : _GEN_211; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_308 = io_wen_1 ? _GEN_260 : _GEN_212; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_309 = io_wen_1 ? _GEN_261 : _GEN_213; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_310 = io_wen_1 ? _GEN_262 : _GEN_214; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_311 = io_wen_1 ? _GEN_263 : _GEN_215; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_312 = io_wen_1 ? _GEN_264 : _GEN_216; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_313 = io_wen_1 ? _GEN_265 : _GEN_217; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_314 = io_wen_1 ? _GEN_266 : _GEN_218; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_315 = io_wen_1 ? _GEN_267 : _GEN_219; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_316 = io_wen_1 ? _GEN_268 : _GEN_220; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_317 = io_wen_1 ? _GEN_269 : _GEN_221; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_318 = io_wen_1 ? _GEN_270 : _GEN_222; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_319 = io_wen_1 ? _GEN_271 : _GEN_223; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_320 = io_wen_1 ? _GEN_272 : _GEN_224; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_321 = io_wen_1 ? _GEN_273 : _GEN_225; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_322 = io_wen_1 ? _GEN_274 : _GEN_226; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_323 = io_wen_1 ? _GEN_275 : _GEN_227; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_324 = io_wen_1 ? _GEN_276 : _GEN_228; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_325 = io_wen_1 ? _GEN_277 : _GEN_229; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_326 = io_wen_1 ? _GEN_278 : _GEN_230; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_327 = io_wen_1 ? _GEN_279 : _GEN_231; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_328 = io_wen_1 ? _GEN_280 : _GEN_232; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_329 = io_wen_1 ? _GEN_281 : _GEN_233; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_330 = io_wen_1 ? _GEN_282 : _GEN_234; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_331 = io_wen_1 ? _GEN_283 : _GEN_235; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_332 = io_wen_1 ? _GEN_284 : _GEN_236; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_333 = io_wen_1 ? _GEN_285 : _GEN_237; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_334 = io_wen_1 ? _GEN_286 : _GEN_238; // @[MaskedDataModule.scala 59:22]
  wire [7:0] _GEN_335 = io_wen_1 ? _GEN_287 : _GEN_239; // @[MaskedDataModule.scala 59:22]
  wire [3:0] _wen_T = {io_mwmask_3_0,io_mwmask_2_0,io_mwmask_1_0,io_mwmask_0_0}; // @[MaskedDataModule.scala 66:70]
  wire  wen = |_wen_T; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_0_T = io_mwmask_0_0 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_0_T_1 = io_mwmask_1_0 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_0_T_2 = io_mwmask_2_0 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_0_T_3 = io_mwmask_3_0 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_0_T_4 = _data_0_T | _data_0_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_0_T_5 = _data_0_T_4 | _data_0_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_0_T_6 = _data_0_T_5 | _data_0_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_1 = {io_mwmask_3_1,io_mwmask_2_1,io_mwmask_1_1,io_mwmask_0_1}; // @[MaskedDataModule.scala 66:70]
  wire  wen_1 = |_wen_T_1; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_1_T = io_mwmask_0_1 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_1_T_1 = io_mwmask_1_1 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_1_T_2 = io_mwmask_2_1 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_1_T_3 = io_mwmask_3_1 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_1_T_4 = _data_1_T | _data_1_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_1_T_5 = _data_1_T_4 | _data_1_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_1_T_6 = _data_1_T_5 | _data_1_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_2 = {io_mwmask_3_2,io_mwmask_2_2,io_mwmask_1_2,io_mwmask_0_2}; // @[MaskedDataModule.scala 66:70]
  wire  wen_2 = |_wen_T_2; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_2_T = io_mwmask_0_2 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_2_T_1 = io_mwmask_1_2 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_2_T_2 = io_mwmask_2_2 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_2_T_3 = io_mwmask_3_2 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_2_T_4 = _data_2_T | _data_2_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_2_T_5 = _data_2_T_4 | _data_2_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_2_T_6 = _data_2_T_5 | _data_2_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_3 = {io_mwmask_3_3,io_mwmask_2_3,io_mwmask_1_3,io_mwmask_0_3}; // @[MaskedDataModule.scala 66:70]
  wire  wen_3 = |_wen_T_3; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_3_T = io_mwmask_0_3 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_3_T_1 = io_mwmask_1_3 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_3_T_2 = io_mwmask_2_3 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_3_T_3 = io_mwmask_3_3 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_3_T_4 = _data_3_T | _data_3_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_3_T_5 = _data_3_T_4 | _data_3_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_3_T_6 = _data_3_T_5 | _data_3_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_4 = {io_mwmask_3_4,io_mwmask_2_4,io_mwmask_1_4,io_mwmask_0_4}; // @[MaskedDataModule.scala 66:70]
  wire  wen_4 = |_wen_T_4; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_4_T = io_mwmask_0_4 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_4_T_1 = io_mwmask_1_4 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_4_T_2 = io_mwmask_2_4 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_4_T_3 = io_mwmask_3_4 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_4_T_4 = _data_4_T | _data_4_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_4_T_5 = _data_4_T_4 | _data_4_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_4_T_6 = _data_4_T_5 | _data_4_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_5 = {io_mwmask_3_5,io_mwmask_2_5,io_mwmask_1_5,io_mwmask_0_5}; // @[MaskedDataModule.scala 66:70]
  wire  wen_5 = |_wen_T_5; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_5_T = io_mwmask_0_5 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_5_T_1 = io_mwmask_1_5 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_5_T_2 = io_mwmask_2_5 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_5_T_3 = io_mwmask_3_5 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_5_T_4 = _data_5_T | _data_5_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_5_T_5 = _data_5_T_4 | _data_5_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_5_T_6 = _data_5_T_5 | _data_5_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_6 = {io_mwmask_3_6,io_mwmask_2_6,io_mwmask_1_6,io_mwmask_0_6}; // @[MaskedDataModule.scala 66:70]
  wire  wen_6 = |_wen_T_6; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_6_T = io_mwmask_0_6 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_6_T_1 = io_mwmask_1_6 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_6_T_2 = io_mwmask_2_6 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_6_T_3 = io_mwmask_3_6 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_6_T_4 = _data_6_T | _data_6_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_6_T_5 = _data_6_T_4 | _data_6_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_6_T_6 = _data_6_T_5 | _data_6_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_7 = {io_mwmask_3_7,io_mwmask_2_7,io_mwmask_1_7,io_mwmask_0_7}; // @[MaskedDataModule.scala 66:70]
  wire  wen_7 = |_wen_T_7; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_7_T = io_mwmask_0_7 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_7_T_1 = io_mwmask_1_7 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_7_T_2 = io_mwmask_2_7 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_7_T_3 = io_mwmask_3_7 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_7_T_4 = _data_7_T | _data_7_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_7_T_5 = _data_7_T_4 | _data_7_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_7_T_6 = _data_7_T_5 | _data_7_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_8 = {io_mwmask_3_8,io_mwmask_2_8,io_mwmask_1_8,io_mwmask_0_8}; // @[MaskedDataModule.scala 66:70]
  wire  wen_8 = |_wen_T_8; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_8_T = io_mwmask_0_8 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_8_T_1 = io_mwmask_1_8 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_8_T_2 = io_mwmask_2_8 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_8_T_3 = io_mwmask_3_8 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_8_T_4 = _data_8_T | _data_8_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_8_T_5 = _data_8_T_4 | _data_8_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_8_T_6 = _data_8_T_5 | _data_8_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_9 = {io_mwmask_3_9,io_mwmask_2_9,io_mwmask_1_9,io_mwmask_0_9}; // @[MaskedDataModule.scala 66:70]
  wire  wen_9 = |_wen_T_9; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_9_T = io_mwmask_0_9 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_9_T_1 = io_mwmask_1_9 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_9_T_2 = io_mwmask_2_9 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_9_T_3 = io_mwmask_3_9 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_9_T_4 = _data_9_T | _data_9_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_9_T_5 = _data_9_T_4 | _data_9_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_9_T_6 = _data_9_T_5 | _data_9_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_10 = {io_mwmask_3_10,io_mwmask_2_10,io_mwmask_1_10,io_mwmask_0_10}; // @[MaskedDataModule.scala 66:70]
  wire  wen_10 = |_wen_T_10; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_10_T = io_mwmask_0_10 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_10_T_1 = io_mwmask_1_10 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_10_T_2 = io_mwmask_2_10 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_10_T_3 = io_mwmask_3_10 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_10_T_4 = _data_10_T | _data_10_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_10_T_5 = _data_10_T_4 | _data_10_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_10_T_6 = _data_10_T_5 | _data_10_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_11 = {io_mwmask_3_11,io_mwmask_2_11,io_mwmask_1_11,io_mwmask_0_11}; // @[MaskedDataModule.scala 66:70]
  wire  wen_11 = |_wen_T_11; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_11_T = io_mwmask_0_11 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_11_T_1 = io_mwmask_1_11 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_11_T_2 = io_mwmask_2_11 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_11_T_3 = io_mwmask_3_11 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_11_T_4 = _data_11_T | _data_11_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_11_T_5 = _data_11_T_4 | _data_11_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_11_T_6 = _data_11_T_5 | _data_11_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_12 = {io_mwmask_3_12,io_mwmask_2_12,io_mwmask_1_12,io_mwmask_0_12}; // @[MaskedDataModule.scala 66:70]
  wire  wen_12 = |_wen_T_12; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_12_T = io_mwmask_0_12 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_12_T_1 = io_mwmask_1_12 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_12_T_2 = io_mwmask_2_12 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_12_T_3 = io_mwmask_3_12 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_12_T_4 = _data_12_T | _data_12_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_12_T_5 = _data_12_T_4 | _data_12_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_12_T_6 = _data_12_T_5 | _data_12_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_13 = {io_mwmask_3_13,io_mwmask_2_13,io_mwmask_1_13,io_mwmask_0_13}; // @[MaskedDataModule.scala 66:70]
  wire  wen_13 = |_wen_T_13; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_13_T = io_mwmask_0_13 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_13_T_1 = io_mwmask_1_13 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_13_T_2 = io_mwmask_2_13 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_13_T_3 = io_mwmask_3_13 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_13_T_4 = _data_13_T | _data_13_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_13_T_5 = _data_13_T_4 | _data_13_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_13_T_6 = _data_13_T_5 | _data_13_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_14 = {io_mwmask_3_14,io_mwmask_2_14,io_mwmask_1_14,io_mwmask_0_14}; // @[MaskedDataModule.scala 66:70]
  wire  wen_14 = |_wen_T_14; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_14_T = io_mwmask_0_14 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_14_T_1 = io_mwmask_1_14 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_14_T_2 = io_mwmask_2_14 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_14_T_3 = io_mwmask_3_14 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_14_T_4 = _data_14_T | _data_14_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_14_T_5 = _data_14_T_4 | _data_14_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_14_T_6 = _data_14_T_5 | _data_14_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_15 = {io_mwmask_3_15,io_mwmask_2_15,io_mwmask_1_15,io_mwmask_0_15}; // @[MaskedDataModule.scala 66:70]
  wire  wen_15 = |_wen_T_15; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_15_T = io_mwmask_0_15 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_15_T_1 = io_mwmask_1_15 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_15_T_2 = io_mwmask_2_15 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_15_T_3 = io_mwmask_3_15 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_15_T_4 = _data_15_T | _data_15_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_15_T_5 = _data_15_T_4 | _data_15_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_15_T_6 = _data_15_T_5 | _data_15_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_16 = {io_mwmask_3_16,io_mwmask_2_16,io_mwmask_1_16,io_mwmask_0_16}; // @[MaskedDataModule.scala 66:70]
  wire  wen_16 = |_wen_T_16; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_16_T = io_mwmask_0_16 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_16_T_1 = io_mwmask_1_16 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_16_T_2 = io_mwmask_2_16 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_16_T_3 = io_mwmask_3_16 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_16_T_4 = _data_16_T | _data_16_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_16_T_5 = _data_16_T_4 | _data_16_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_16_T_6 = _data_16_T_5 | _data_16_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_17 = {io_mwmask_3_17,io_mwmask_2_17,io_mwmask_1_17,io_mwmask_0_17}; // @[MaskedDataModule.scala 66:70]
  wire  wen_17 = |_wen_T_17; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_17_T = io_mwmask_0_17 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_17_T_1 = io_mwmask_1_17 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_17_T_2 = io_mwmask_2_17 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_17_T_3 = io_mwmask_3_17 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_17_T_4 = _data_17_T | _data_17_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_17_T_5 = _data_17_T_4 | _data_17_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_17_T_6 = _data_17_T_5 | _data_17_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_18 = {io_mwmask_3_18,io_mwmask_2_18,io_mwmask_1_18,io_mwmask_0_18}; // @[MaskedDataModule.scala 66:70]
  wire  wen_18 = |_wen_T_18; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_18_T = io_mwmask_0_18 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_18_T_1 = io_mwmask_1_18 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_18_T_2 = io_mwmask_2_18 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_18_T_3 = io_mwmask_3_18 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_18_T_4 = _data_18_T | _data_18_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_18_T_5 = _data_18_T_4 | _data_18_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_18_T_6 = _data_18_T_5 | _data_18_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_19 = {io_mwmask_3_19,io_mwmask_2_19,io_mwmask_1_19,io_mwmask_0_19}; // @[MaskedDataModule.scala 66:70]
  wire  wen_19 = |_wen_T_19; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_19_T = io_mwmask_0_19 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_19_T_1 = io_mwmask_1_19 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_19_T_2 = io_mwmask_2_19 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_19_T_3 = io_mwmask_3_19 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_19_T_4 = _data_19_T | _data_19_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_19_T_5 = _data_19_T_4 | _data_19_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_19_T_6 = _data_19_T_5 | _data_19_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_20 = {io_mwmask_3_20,io_mwmask_2_20,io_mwmask_1_20,io_mwmask_0_20}; // @[MaskedDataModule.scala 66:70]
  wire  wen_20 = |_wen_T_20; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_20_T = io_mwmask_0_20 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_20_T_1 = io_mwmask_1_20 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_20_T_2 = io_mwmask_2_20 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_20_T_3 = io_mwmask_3_20 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_20_T_4 = _data_20_T | _data_20_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_20_T_5 = _data_20_T_4 | _data_20_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_20_T_6 = _data_20_T_5 | _data_20_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_21 = {io_mwmask_3_21,io_mwmask_2_21,io_mwmask_1_21,io_mwmask_0_21}; // @[MaskedDataModule.scala 66:70]
  wire  wen_21 = |_wen_T_21; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_21_T = io_mwmask_0_21 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_21_T_1 = io_mwmask_1_21 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_21_T_2 = io_mwmask_2_21 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_21_T_3 = io_mwmask_3_21 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_21_T_4 = _data_21_T | _data_21_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_21_T_5 = _data_21_T_4 | _data_21_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_21_T_6 = _data_21_T_5 | _data_21_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_22 = {io_mwmask_3_22,io_mwmask_2_22,io_mwmask_1_22,io_mwmask_0_22}; // @[MaskedDataModule.scala 66:70]
  wire  wen_22 = |_wen_T_22; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_22_T = io_mwmask_0_22 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_22_T_1 = io_mwmask_1_22 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_22_T_2 = io_mwmask_2_22 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_22_T_3 = io_mwmask_3_22 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_22_T_4 = _data_22_T | _data_22_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_22_T_5 = _data_22_T_4 | _data_22_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_22_T_6 = _data_22_T_5 | _data_22_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_23 = {io_mwmask_3_23,io_mwmask_2_23,io_mwmask_1_23,io_mwmask_0_23}; // @[MaskedDataModule.scala 66:70]
  wire  wen_23 = |_wen_T_23; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_23_T = io_mwmask_0_23 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_23_T_1 = io_mwmask_1_23 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_23_T_2 = io_mwmask_2_23 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_23_T_3 = io_mwmask_3_23 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_23_T_4 = _data_23_T | _data_23_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_23_T_5 = _data_23_T_4 | _data_23_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_23_T_6 = _data_23_T_5 | _data_23_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_24 = {io_mwmask_3_24,io_mwmask_2_24,io_mwmask_1_24,io_mwmask_0_24}; // @[MaskedDataModule.scala 66:70]
  wire  wen_24 = |_wen_T_24; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_24_T = io_mwmask_0_24 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_24_T_1 = io_mwmask_1_24 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_24_T_2 = io_mwmask_2_24 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_24_T_3 = io_mwmask_3_24 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_24_T_4 = _data_24_T | _data_24_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_24_T_5 = _data_24_T_4 | _data_24_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_24_T_6 = _data_24_T_5 | _data_24_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_25 = {io_mwmask_3_25,io_mwmask_2_25,io_mwmask_1_25,io_mwmask_0_25}; // @[MaskedDataModule.scala 66:70]
  wire  wen_25 = |_wen_T_25; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_25_T = io_mwmask_0_25 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_25_T_1 = io_mwmask_1_25 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_25_T_2 = io_mwmask_2_25 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_25_T_3 = io_mwmask_3_25 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_25_T_4 = _data_25_T | _data_25_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_25_T_5 = _data_25_T_4 | _data_25_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_25_T_6 = _data_25_T_5 | _data_25_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_26 = {io_mwmask_3_26,io_mwmask_2_26,io_mwmask_1_26,io_mwmask_0_26}; // @[MaskedDataModule.scala 66:70]
  wire  wen_26 = |_wen_T_26; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_26_T = io_mwmask_0_26 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_26_T_1 = io_mwmask_1_26 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_26_T_2 = io_mwmask_2_26 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_26_T_3 = io_mwmask_3_26 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_26_T_4 = _data_26_T | _data_26_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_26_T_5 = _data_26_T_4 | _data_26_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_26_T_6 = _data_26_T_5 | _data_26_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_27 = {io_mwmask_3_27,io_mwmask_2_27,io_mwmask_1_27,io_mwmask_0_27}; // @[MaskedDataModule.scala 66:70]
  wire  wen_27 = |_wen_T_27; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_27_T = io_mwmask_0_27 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_27_T_1 = io_mwmask_1_27 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_27_T_2 = io_mwmask_2_27 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_27_T_3 = io_mwmask_3_27 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_27_T_4 = _data_27_T | _data_27_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_27_T_5 = _data_27_T_4 | _data_27_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_27_T_6 = _data_27_T_5 | _data_27_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_28 = {io_mwmask_3_28,io_mwmask_2_28,io_mwmask_1_28,io_mwmask_0_28}; // @[MaskedDataModule.scala 66:70]
  wire  wen_28 = |_wen_T_28; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_28_T = io_mwmask_0_28 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_28_T_1 = io_mwmask_1_28 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_28_T_2 = io_mwmask_2_28 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_28_T_3 = io_mwmask_3_28 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_28_T_4 = _data_28_T | _data_28_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_28_T_5 = _data_28_T_4 | _data_28_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_28_T_6 = _data_28_T_5 | _data_28_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_29 = {io_mwmask_3_29,io_mwmask_2_29,io_mwmask_1_29,io_mwmask_0_29}; // @[MaskedDataModule.scala 66:70]
  wire  wen_29 = |_wen_T_29; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_29_T = io_mwmask_0_29 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_29_T_1 = io_mwmask_1_29 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_29_T_2 = io_mwmask_2_29 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_29_T_3 = io_mwmask_3_29 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_29_T_4 = _data_29_T | _data_29_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_29_T_5 = _data_29_T_4 | _data_29_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_29_T_6 = _data_29_T_5 | _data_29_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_30 = {io_mwmask_3_30,io_mwmask_2_30,io_mwmask_1_30,io_mwmask_0_30}; // @[MaskedDataModule.scala 66:70]
  wire  wen_30 = |_wen_T_30; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_30_T = io_mwmask_0_30 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_30_T_1 = io_mwmask_1_30 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_30_T_2 = io_mwmask_2_30 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_30_T_3 = io_mwmask_3_30 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_30_T_4 = _data_30_T | _data_30_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_30_T_5 = _data_30_T_4 | _data_30_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_30_T_6 = _data_30_T_5 | _data_30_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_31 = {io_mwmask_3_31,io_mwmask_2_31,io_mwmask_1_31,io_mwmask_0_31}; // @[MaskedDataModule.scala 66:70]
  wire  wen_31 = |_wen_T_31; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_31_T = io_mwmask_0_31 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_31_T_1 = io_mwmask_1_31 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_31_T_2 = io_mwmask_2_31 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_31_T_3 = io_mwmask_3_31 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_31_T_4 = _data_31_T | _data_31_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_31_T_5 = _data_31_T_4 | _data_31_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_31_T_6 = _data_31_T_5 | _data_31_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_32 = {io_mwmask_3_32,io_mwmask_2_32,io_mwmask_1_32,io_mwmask_0_32}; // @[MaskedDataModule.scala 66:70]
  wire  wen_32 = |_wen_T_32; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_32_T = io_mwmask_0_32 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_32_T_1 = io_mwmask_1_32 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_32_T_2 = io_mwmask_2_32 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_32_T_3 = io_mwmask_3_32 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_32_T_4 = _data_32_T | _data_32_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_32_T_5 = _data_32_T_4 | _data_32_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_32_T_6 = _data_32_T_5 | _data_32_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_33 = {io_mwmask_3_33,io_mwmask_2_33,io_mwmask_1_33,io_mwmask_0_33}; // @[MaskedDataModule.scala 66:70]
  wire  wen_33 = |_wen_T_33; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_33_T = io_mwmask_0_33 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_33_T_1 = io_mwmask_1_33 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_33_T_2 = io_mwmask_2_33 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_33_T_3 = io_mwmask_3_33 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_33_T_4 = _data_33_T | _data_33_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_33_T_5 = _data_33_T_4 | _data_33_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_33_T_6 = _data_33_T_5 | _data_33_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_34 = {io_mwmask_3_34,io_mwmask_2_34,io_mwmask_1_34,io_mwmask_0_34}; // @[MaskedDataModule.scala 66:70]
  wire  wen_34 = |_wen_T_34; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_34_T = io_mwmask_0_34 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_34_T_1 = io_mwmask_1_34 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_34_T_2 = io_mwmask_2_34 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_34_T_3 = io_mwmask_3_34 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_34_T_4 = _data_34_T | _data_34_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_34_T_5 = _data_34_T_4 | _data_34_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_34_T_6 = _data_34_T_5 | _data_34_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_35 = {io_mwmask_3_35,io_mwmask_2_35,io_mwmask_1_35,io_mwmask_0_35}; // @[MaskedDataModule.scala 66:70]
  wire  wen_35 = |_wen_T_35; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_35_T = io_mwmask_0_35 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_35_T_1 = io_mwmask_1_35 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_35_T_2 = io_mwmask_2_35 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_35_T_3 = io_mwmask_3_35 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_35_T_4 = _data_35_T | _data_35_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_35_T_5 = _data_35_T_4 | _data_35_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_35_T_6 = _data_35_T_5 | _data_35_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_36 = {io_mwmask_3_36,io_mwmask_2_36,io_mwmask_1_36,io_mwmask_0_36}; // @[MaskedDataModule.scala 66:70]
  wire  wen_36 = |_wen_T_36; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_36_T = io_mwmask_0_36 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_36_T_1 = io_mwmask_1_36 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_36_T_2 = io_mwmask_2_36 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_36_T_3 = io_mwmask_3_36 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_36_T_4 = _data_36_T | _data_36_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_36_T_5 = _data_36_T_4 | _data_36_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_36_T_6 = _data_36_T_5 | _data_36_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_37 = {io_mwmask_3_37,io_mwmask_2_37,io_mwmask_1_37,io_mwmask_0_37}; // @[MaskedDataModule.scala 66:70]
  wire  wen_37 = |_wen_T_37; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_37_T = io_mwmask_0_37 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_37_T_1 = io_mwmask_1_37 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_37_T_2 = io_mwmask_2_37 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_37_T_3 = io_mwmask_3_37 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_37_T_4 = _data_37_T | _data_37_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_37_T_5 = _data_37_T_4 | _data_37_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_37_T_6 = _data_37_T_5 | _data_37_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_38 = {io_mwmask_3_38,io_mwmask_2_38,io_mwmask_1_38,io_mwmask_0_38}; // @[MaskedDataModule.scala 66:70]
  wire  wen_38 = |_wen_T_38; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_38_T = io_mwmask_0_38 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_38_T_1 = io_mwmask_1_38 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_38_T_2 = io_mwmask_2_38 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_38_T_3 = io_mwmask_3_38 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_38_T_4 = _data_38_T | _data_38_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_38_T_5 = _data_38_T_4 | _data_38_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_38_T_6 = _data_38_T_5 | _data_38_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_39 = {io_mwmask_3_39,io_mwmask_2_39,io_mwmask_1_39,io_mwmask_0_39}; // @[MaskedDataModule.scala 66:70]
  wire  wen_39 = |_wen_T_39; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_39_T = io_mwmask_0_39 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_39_T_1 = io_mwmask_1_39 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_39_T_2 = io_mwmask_2_39 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_39_T_3 = io_mwmask_3_39 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_39_T_4 = _data_39_T | _data_39_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_39_T_5 = _data_39_T_4 | _data_39_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_39_T_6 = _data_39_T_5 | _data_39_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_40 = {io_mwmask_3_40,io_mwmask_2_40,io_mwmask_1_40,io_mwmask_0_40}; // @[MaskedDataModule.scala 66:70]
  wire  wen_40 = |_wen_T_40; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_40_T = io_mwmask_0_40 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_40_T_1 = io_mwmask_1_40 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_40_T_2 = io_mwmask_2_40 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_40_T_3 = io_mwmask_3_40 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_40_T_4 = _data_40_T | _data_40_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_40_T_5 = _data_40_T_4 | _data_40_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_40_T_6 = _data_40_T_5 | _data_40_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_41 = {io_mwmask_3_41,io_mwmask_2_41,io_mwmask_1_41,io_mwmask_0_41}; // @[MaskedDataModule.scala 66:70]
  wire  wen_41 = |_wen_T_41; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_41_T = io_mwmask_0_41 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_41_T_1 = io_mwmask_1_41 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_41_T_2 = io_mwmask_2_41 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_41_T_3 = io_mwmask_3_41 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_41_T_4 = _data_41_T | _data_41_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_41_T_5 = _data_41_T_4 | _data_41_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_41_T_6 = _data_41_T_5 | _data_41_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_42 = {io_mwmask_3_42,io_mwmask_2_42,io_mwmask_1_42,io_mwmask_0_42}; // @[MaskedDataModule.scala 66:70]
  wire  wen_42 = |_wen_T_42; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_42_T = io_mwmask_0_42 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_42_T_1 = io_mwmask_1_42 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_42_T_2 = io_mwmask_2_42 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_42_T_3 = io_mwmask_3_42 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_42_T_4 = _data_42_T | _data_42_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_42_T_5 = _data_42_T_4 | _data_42_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_42_T_6 = _data_42_T_5 | _data_42_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_43 = {io_mwmask_3_43,io_mwmask_2_43,io_mwmask_1_43,io_mwmask_0_43}; // @[MaskedDataModule.scala 66:70]
  wire  wen_43 = |_wen_T_43; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_43_T = io_mwmask_0_43 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_43_T_1 = io_mwmask_1_43 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_43_T_2 = io_mwmask_2_43 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_43_T_3 = io_mwmask_3_43 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_43_T_4 = _data_43_T | _data_43_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_43_T_5 = _data_43_T_4 | _data_43_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_43_T_6 = _data_43_T_5 | _data_43_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_44 = {io_mwmask_3_44,io_mwmask_2_44,io_mwmask_1_44,io_mwmask_0_44}; // @[MaskedDataModule.scala 66:70]
  wire  wen_44 = |_wen_T_44; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_44_T = io_mwmask_0_44 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_44_T_1 = io_mwmask_1_44 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_44_T_2 = io_mwmask_2_44 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_44_T_3 = io_mwmask_3_44 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_44_T_4 = _data_44_T | _data_44_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_44_T_5 = _data_44_T_4 | _data_44_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_44_T_6 = _data_44_T_5 | _data_44_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_45 = {io_mwmask_3_45,io_mwmask_2_45,io_mwmask_1_45,io_mwmask_0_45}; // @[MaskedDataModule.scala 66:70]
  wire  wen_45 = |_wen_T_45; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_45_T = io_mwmask_0_45 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_45_T_1 = io_mwmask_1_45 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_45_T_2 = io_mwmask_2_45 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_45_T_3 = io_mwmask_3_45 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_45_T_4 = _data_45_T | _data_45_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_45_T_5 = _data_45_T_4 | _data_45_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_45_T_6 = _data_45_T_5 | _data_45_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_46 = {io_mwmask_3_46,io_mwmask_2_46,io_mwmask_1_46,io_mwmask_0_46}; // @[MaskedDataModule.scala 66:70]
  wire  wen_46 = |_wen_T_46; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_46_T = io_mwmask_0_46 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_46_T_1 = io_mwmask_1_46 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_46_T_2 = io_mwmask_2_46 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_46_T_3 = io_mwmask_3_46 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_46_T_4 = _data_46_T | _data_46_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_46_T_5 = _data_46_T_4 | _data_46_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_46_T_6 = _data_46_T_5 | _data_46_T_3; // @[MaskedDataModule.scala 70:20]
  wire [3:0] _wen_T_47 = {io_mwmask_3_47,io_mwmask_2_47,io_mwmask_1_47,io_mwmask_0_47}; // @[MaskedDataModule.scala 66:70]
  wire  wen_47 = |_wen_T_47; // @[MaskedDataModule.scala 66:77]
  wire [7:0] _data_47_T = io_mwmask_0_47 ? io_mwdata_0 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_47_T_1 = io_mwmask_1_47 ? io_mwdata_1 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_47_T_2 = io_mwmask_2_47 ? io_mwdata_2 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_47_T_3 = io_mwmask_3_47 ? io_mwdata_3 : 8'h0; // @[MaskedDataModule.scala 69:12]
  wire [7:0] _data_47_T_4 = _data_47_T | _data_47_T_1; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_47_T_5 = _data_47_T_4 | _data_47_T_2; // @[MaskedDataModule.scala 70:20]
  wire [7:0] _data_47_T_6 = _data_47_T_5 | _data_47_T_3; // @[MaskedDataModule.scala 70:20]
  assign io_rdata_0 = 6'h2f == io_rdata_0_REG ? data_47 : _GEN_46; // @[MaskedDataModule.scala 49:{17,17}]
  assign io_rdata_1 = 6'h2f == io_rdata_1_REG ? data_47 : _GEN_94; // @[MaskedDataModule.scala 49:{17,17}]
  assign io_rdata_2 = 6'h2f == io_rdata_2_REG ? data_47 : _GEN_142; // @[MaskedDataModule.scala 49:{17,17}]
  always @(posedge clock) begin
    if (wen) begin // @[MaskedDataModule.scala 67:16]
      data_0 <= _data_0_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h0 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_0 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_0 <= _GEN_288;
      end
    end else begin
      data_0 <= _GEN_288;
    end
    if (wen_1) begin // @[MaskedDataModule.scala 67:16]
      data_1 <= _data_1_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h1 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_1 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_1 <= _GEN_289;
      end
    end else begin
      data_1 <= _GEN_289;
    end
    if (wen_2) begin // @[MaskedDataModule.scala 67:16]
      data_2 <= _data_2_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h2 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_2 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_2 <= _GEN_290;
      end
    end else begin
      data_2 <= _GEN_290;
    end
    if (wen_3) begin // @[MaskedDataModule.scala 67:16]
      data_3 <= _data_3_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h3 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_3 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_3 <= _GEN_291;
      end
    end else begin
      data_3 <= _GEN_291;
    end
    if (wen_4) begin // @[MaskedDataModule.scala 67:16]
      data_4 <= _data_4_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h4 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_4 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_4 <= _GEN_292;
      end
    end else begin
      data_4 <= _GEN_292;
    end
    if (wen_5) begin // @[MaskedDataModule.scala 67:16]
      data_5 <= _data_5_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h5 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_5 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_5 <= _GEN_293;
      end
    end else begin
      data_5 <= _GEN_293;
    end
    if (wen_6) begin // @[MaskedDataModule.scala 67:16]
      data_6 <= _data_6_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h6 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_6 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_6 <= _GEN_294;
      end
    end else begin
      data_6 <= _GEN_294;
    end
    if (wen_7) begin // @[MaskedDataModule.scala 67:16]
      data_7 <= _data_7_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h7 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_7 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_7 <= _GEN_295;
      end
    end else begin
      data_7 <= _GEN_295;
    end
    if (wen_8) begin // @[MaskedDataModule.scala 67:16]
      data_8 <= _data_8_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h8 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_8 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_8 <= _GEN_296;
      end
    end else begin
      data_8 <= _GEN_296;
    end
    if (wen_9) begin // @[MaskedDataModule.scala 67:16]
      data_9 <= _data_9_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h9 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_9 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_9 <= _GEN_297;
      end
    end else begin
      data_9 <= _GEN_297;
    end
    if (wen_10) begin // @[MaskedDataModule.scala 67:16]
      data_10 <= _data_10_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'ha == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_10 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_10 <= _GEN_298;
      end
    end else begin
      data_10 <= _GEN_298;
    end
    if (wen_11) begin // @[MaskedDataModule.scala 67:16]
      data_11 <= _data_11_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'hb == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_11 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_11 <= _GEN_299;
      end
    end else begin
      data_11 <= _GEN_299;
    end
    if (wen_12) begin // @[MaskedDataModule.scala 67:16]
      data_12 <= _data_12_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'hc == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_12 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_12 <= _GEN_300;
      end
    end else begin
      data_12 <= _GEN_300;
    end
    if (wen_13) begin // @[MaskedDataModule.scala 67:16]
      data_13 <= _data_13_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'hd == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_13 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_13 <= _GEN_301;
      end
    end else begin
      data_13 <= _GEN_301;
    end
    if (wen_14) begin // @[MaskedDataModule.scala 67:16]
      data_14 <= _data_14_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'he == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_14 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_14 <= _GEN_302;
      end
    end else begin
      data_14 <= _GEN_302;
    end
    if (wen_15) begin // @[MaskedDataModule.scala 67:16]
      data_15 <= _data_15_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'hf == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_15 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_15 <= _GEN_303;
      end
    end else begin
      data_15 <= _GEN_303;
    end
    if (wen_16) begin // @[MaskedDataModule.scala 67:16]
      data_16 <= _data_16_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h10 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_16 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_16 <= _GEN_304;
      end
    end else begin
      data_16 <= _GEN_304;
    end
    if (wen_17) begin // @[MaskedDataModule.scala 67:16]
      data_17 <= _data_17_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h11 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_17 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_17 <= _GEN_305;
      end
    end else begin
      data_17 <= _GEN_305;
    end
    if (wen_18) begin // @[MaskedDataModule.scala 67:16]
      data_18 <= _data_18_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h12 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_18 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_18 <= _GEN_306;
      end
    end else begin
      data_18 <= _GEN_306;
    end
    if (wen_19) begin // @[MaskedDataModule.scala 67:16]
      data_19 <= _data_19_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h13 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_19 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_19 <= _GEN_307;
      end
    end else begin
      data_19 <= _GEN_307;
    end
    if (wen_20) begin // @[MaskedDataModule.scala 67:16]
      data_20 <= _data_20_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h14 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_20 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_20 <= _GEN_308;
      end
    end else begin
      data_20 <= _GEN_308;
    end
    if (wen_21) begin // @[MaskedDataModule.scala 67:16]
      data_21 <= _data_21_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h15 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_21 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_21 <= _GEN_309;
      end
    end else begin
      data_21 <= _GEN_309;
    end
    if (wen_22) begin // @[MaskedDataModule.scala 67:16]
      data_22 <= _data_22_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h16 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_22 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_22 <= _GEN_310;
      end
    end else begin
      data_22 <= _GEN_310;
    end
    if (wen_23) begin // @[MaskedDataModule.scala 67:16]
      data_23 <= _data_23_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h17 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_23 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_23 <= _GEN_311;
      end
    end else begin
      data_23 <= _GEN_311;
    end
    if (wen_24) begin // @[MaskedDataModule.scala 67:16]
      data_24 <= _data_24_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h18 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_24 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_24 <= _GEN_312;
      end
    end else begin
      data_24 <= _GEN_312;
    end
    if (wen_25) begin // @[MaskedDataModule.scala 67:16]
      data_25 <= _data_25_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h19 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_25 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_25 <= _GEN_313;
      end
    end else begin
      data_25 <= _GEN_313;
    end
    if (wen_26) begin // @[MaskedDataModule.scala 67:16]
      data_26 <= _data_26_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h1a == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_26 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_26 <= _GEN_314;
      end
    end else begin
      data_26 <= _GEN_314;
    end
    if (wen_27) begin // @[MaskedDataModule.scala 67:16]
      data_27 <= _data_27_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h1b == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_27 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_27 <= _GEN_315;
      end
    end else begin
      data_27 <= _GEN_315;
    end
    if (wen_28) begin // @[MaskedDataModule.scala 67:16]
      data_28 <= _data_28_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h1c == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_28 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_28 <= _GEN_316;
      end
    end else begin
      data_28 <= _GEN_316;
    end
    if (wen_29) begin // @[MaskedDataModule.scala 67:16]
      data_29 <= _data_29_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h1d == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_29 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_29 <= _GEN_317;
      end
    end else begin
      data_29 <= _GEN_317;
    end
    if (wen_30) begin // @[MaskedDataModule.scala 67:16]
      data_30 <= _data_30_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h1e == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_30 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_30 <= _GEN_318;
      end
    end else begin
      data_30 <= _GEN_318;
    end
    if (wen_31) begin // @[MaskedDataModule.scala 67:16]
      data_31 <= _data_31_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h1f == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_31 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_31 <= _GEN_319;
      end
    end else begin
      data_31 <= _GEN_319;
    end
    if (wen_32) begin // @[MaskedDataModule.scala 67:16]
      data_32 <= _data_32_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h20 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_32 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_32 <= _GEN_320;
      end
    end else begin
      data_32 <= _GEN_320;
    end
    if (wen_33) begin // @[MaskedDataModule.scala 67:16]
      data_33 <= _data_33_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h21 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_33 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_33 <= _GEN_321;
      end
    end else begin
      data_33 <= _GEN_321;
    end
    if (wen_34) begin // @[MaskedDataModule.scala 67:16]
      data_34 <= _data_34_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h22 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_34 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_34 <= _GEN_322;
      end
    end else begin
      data_34 <= _GEN_322;
    end
    if (wen_35) begin // @[MaskedDataModule.scala 67:16]
      data_35 <= _data_35_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h23 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_35 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_35 <= _GEN_323;
      end
    end else begin
      data_35 <= _GEN_323;
    end
    if (wen_36) begin // @[MaskedDataModule.scala 67:16]
      data_36 <= _data_36_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h24 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_36 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_36 <= _GEN_324;
      end
    end else begin
      data_36 <= _GEN_324;
    end
    if (wen_37) begin // @[MaskedDataModule.scala 67:16]
      data_37 <= _data_37_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h25 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_37 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_37 <= _GEN_325;
      end
    end else begin
      data_37 <= _GEN_325;
    end
    if (wen_38) begin // @[MaskedDataModule.scala 67:16]
      data_38 <= _data_38_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h26 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_38 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_38 <= _GEN_326;
      end
    end else begin
      data_38 <= _GEN_326;
    end
    if (wen_39) begin // @[MaskedDataModule.scala 67:16]
      data_39 <= _data_39_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h27 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_39 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_39 <= _GEN_327;
      end
    end else begin
      data_39 <= _GEN_327;
    end
    if (wen_40) begin // @[MaskedDataModule.scala 67:16]
      data_40 <= _data_40_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h28 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_40 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_40 <= _GEN_328;
      end
    end else begin
      data_40 <= _GEN_328;
    end
    if (wen_41) begin // @[MaskedDataModule.scala 67:16]
      data_41 <= _data_41_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h29 == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_41 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_41 <= _GEN_329;
      end
    end else begin
      data_41 <= _GEN_329;
    end
    if (wen_42) begin // @[MaskedDataModule.scala 67:16]
      data_42 <= _data_42_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h2a == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_42 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_42 <= _GEN_330;
      end
    end else begin
      data_42 <= _GEN_330;
    end
    if (wen_43) begin // @[MaskedDataModule.scala 67:16]
      data_43 <= _data_43_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h2b == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_43 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_43 <= _GEN_331;
      end
    end else begin
      data_43 <= _GEN_331;
    end
    if (wen_44) begin // @[MaskedDataModule.scala 67:16]
      data_44 <= _data_44_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h2c == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_44 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_44 <= _GEN_332;
      end
    end else begin
      data_44 <= _GEN_332;
    end
    if (wen_45) begin // @[MaskedDataModule.scala 67:16]
      data_45 <= _data_45_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h2d == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_45 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_45 <= _GEN_333;
      end
    end else begin
      data_45 <= _GEN_333;
    end
    if (wen_46) begin // @[MaskedDataModule.scala 67:16]
      data_46 <= _data_46_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h2e == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_46 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_46 <= _GEN_334;
      end
    end else begin
      data_46 <= _GEN_334;
    end
    if (wen_47) begin // @[MaskedDataModule.scala 67:16]
      data_47 <= _data_47_T_6; // @[MaskedDataModule.scala 68:15]
    end else if (io_wen_2) begin // @[MaskedDataModule.scala 59:22]
      if (6'h2f == io_waddr_2) begin // @[MaskedDataModule.scala 60:25]
        data_47 <= io_wdata_2; // @[MaskedDataModule.scala 60:25]
      end else begin
        data_47 <= _GEN_335;
      end
    end else begin
      data_47 <= _GEN_335;
    end
    io_rdata_0_REG <= io_raddr_0; // @[MaskedDataModule.scala 49:32]
    io_rdata_1_REG <= io_raddr_1; // @[MaskedDataModule.scala 49:32]
    io_rdata_2_REG <= io_raddr_2; // @[MaskedDataModule.scala 49:32]
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
  data_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  data_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  data_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  data_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  data_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  data_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  data_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  data_7 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  data_8 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  data_9 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  data_10 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  data_11 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  data_12 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  data_13 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  data_14 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  data_15 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  data_16 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  data_17 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  data_18 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  data_19 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  data_20 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  data_21 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  data_22 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  data_23 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  data_24 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  data_25 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  data_26 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  data_27 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  data_28 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  data_29 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  data_30 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  data_31 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  data_32 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  data_33 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  data_34 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  data_35 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  data_36 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  data_37 = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  data_38 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  data_39 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  data_40 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  data_41 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  data_42 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  data_43 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  data_44 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  data_45 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  data_46 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  data_47 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  io_rdata_0_REG = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  io_rdata_1_REG = _RAND_49[5:0];
  _RAND_50 = {1{`RANDOM}};
  io_rdata_2_REG = _RAND_50[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
