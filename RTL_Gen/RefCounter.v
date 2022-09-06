module RefCounter(
  input        clock,
  input        reset,
  input        io_allocate_0_valid,
  input  [6:0] io_allocate_0_bits,
  input        io_allocate_1_valid,
  input  [6:0] io_allocate_1_bits,
  input        io_allocate_2_valid,
  input  [6:0] io_allocate_2_bits,
  input        io_allocate_3_valid,
  input  [6:0] io_allocate_3_bits,
  input        io_deallocate_0_valid,
  input  [6:0] io_deallocate_0_bits,
  input        io_deallocate_1_valid,
  input  [6:0] io_deallocate_1_bits,
  input        io_deallocate_2_valid,
  input  [6:0] io_deallocate_2_bits,
  input        io_deallocate_3_valid,
  input  [6:0] io_deallocate_3_bits,
  output       io_freeRegs_0_valid,
  output [6:0] io_freeRegs_0_bits,
  output       io_freeRegs_1_valid,
  output [6:0] io_freeRegs_1_bits,
  output       io_freeRegs_2_valid,
  output [6:0] io_freeRegs_2_bits,
  output       io_freeRegs_3_valid,
  output [6:0] io_freeRegs_3_bits
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
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
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
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
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
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
`endif // RANDOMIZE_REG_INIT
  reg  allocate_0_valid; // @[RefCounter.scala 35:25]
  reg [6:0] allocate_0_bits; // @[RefCounter.scala 35:25]
  reg  allocate_1_valid; // @[RefCounter.scala 35:25]
  reg [6:0] allocate_1_bits; // @[RefCounter.scala 35:25]
  reg  allocate_2_valid; // @[RefCounter.scala 35:25]
  reg [6:0] allocate_2_bits; // @[RefCounter.scala 35:25]
  reg  allocate_3_valid; // @[RefCounter.scala 35:25]
  reg [6:0] allocate_3_bits; // @[RefCounter.scala 35:25]
  reg  deallocate_0_valid; // @[RefCounter.scala 36:27]
  reg [6:0] deallocate_0_bits; // @[RefCounter.scala 36:27]
  reg  deallocate_1_valid; // @[RefCounter.scala 36:27]
  reg [6:0] deallocate_1_bits; // @[RefCounter.scala 36:27]
  reg  deallocate_2_valid; // @[RefCounter.scala 36:27]
  reg [6:0] deallocate_2_bits; // @[RefCounter.scala 36:27]
  reg  deallocate_3_valid; // @[RefCounter.scala 36:27]
  reg [6:0] deallocate_3_bits; // @[RefCounter.scala 36:27]
  reg [6:0] refCounter_1; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_2; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_3; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_4; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_5; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_6; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_7; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_8; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_9; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_10; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_11; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_12; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_13; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_14; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_15; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_16; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_17; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_18; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_19; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_20; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_21; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_22; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_23; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_24; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_25; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_26; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_27; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_28; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_29; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_30; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_31; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_32; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_33; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_34; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_35; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_36; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_37; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_38; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_39; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_40; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_41; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_42; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_43; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_44; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_45; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_46; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_47; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_48; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_49; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_50; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_51; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_52; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_53; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_54; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_55; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_56; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_57; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_58; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_59; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_60; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_61; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_62; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_63; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_64; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_65; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_66; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_67; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_68; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_69; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_70; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_71; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_72; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_73; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_74; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_75; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_76; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_77; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_78; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_79; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_80; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_81; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_82; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_83; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_84; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_85; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_86; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_87; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_88; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_89; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_90; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_91; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_92; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_93; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_94; // @[RefCounter.scala 40:27]
  reg [6:0] refCounter_95; // @[RefCounter.scala 40:27]
  wire [127:0] allocateOH_0 = 128'h1 << allocate_0_bits; // @[OneHot.scala 57:35]
  wire [127:0] allocateOH_1 = 128'h1 << allocate_1_bits; // @[OneHot.scala 57:35]
  wire [127:0] allocateOH_2 = 128'h1 << allocate_2_bits; // @[OneHot.scala 57:35]
  wire [127:0] allocateOH_3 = 128'h1 << allocate_3_bits; // @[OneHot.scala 57:35]
  wire [127:0] deallocateOH_0 = 128'h1 << deallocate_0_bits; // @[OneHot.scala 57:35]
  wire [127:0] deallocateOH_1 = 128'h1 << deallocate_1_bits; // @[OneHot.scala 57:35]
  wire [127:0] deallocateOH_2 = 128'h1 << deallocate_2_bits; // @[OneHot.scala 57:35]
  wire [127:0] deallocateOH_3 = 128'h1 << deallocate_3_bits; // @[OneHot.scala 57:35]
  wire [6:0] _GEN_1 = 7'h1 == deallocate_0_bits ? refCounter_1 : 7'h1; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_2 = 7'h2 == deallocate_0_bits ? refCounter_2 : _GEN_1; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_3 = 7'h3 == deallocate_0_bits ? refCounter_3 : _GEN_2; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_4 = 7'h4 == deallocate_0_bits ? refCounter_4 : _GEN_3; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_5 = 7'h5 == deallocate_0_bits ? refCounter_5 : _GEN_4; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_6 = 7'h6 == deallocate_0_bits ? refCounter_6 : _GEN_5; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_7 = 7'h7 == deallocate_0_bits ? refCounter_7 : _GEN_6; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_8 = 7'h8 == deallocate_0_bits ? refCounter_8 : _GEN_7; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_9 = 7'h9 == deallocate_0_bits ? refCounter_9 : _GEN_8; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_10 = 7'ha == deallocate_0_bits ? refCounter_10 : _GEN_9; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_11 = 7'hb == deallocate_0_bits ? refCounter_11 : _GEN_10; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_12 = 7'hc == deallocate_0_bits ? refCounter_12 : _GEN_11; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_13 = 7'hd == deallocate_0_bits ? refCounter_13 : _GEN_12; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_14 = 7'he == deallocate_0_bits ? refCounter_14 : _GEN_13; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_15 = 7'hf == deallocate_0_bits ? refCounter_15 : _GEN_14; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_16 = 7'h10 == deallocate_0_bits ? refCounter_16 : _GEN_15; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_17 = 7'h11 == deallocate_0_bits ? refCounter_17 : _GEN_16; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_18 = 7'h12 == deallocate_0_bits ? refCounter_18 : _GEN_17; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_19 = 7'h13 == deallocate_0_bits ? refCounter_19 : _GEN_18; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_20 = 7'h14 == deallocate_0_bits ? refCounter_20 : _GEN_19; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_21 = 7'h15 == deallocate_0_bits ? refCounter_21 : _GEN_20; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_22 = 7'h16 == deallocate_0_bits ? refCounter_22 : _GEN_21; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_23 = 7'h17 == deallocate_0_bits ? refCounter_23 : _GEN_22; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_24 = 7'h18 == deallocate_0_bits ? refCounter_24 : _GEN_23; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_25 = 7'h19 == deallocate_0_bits ? refCounter_25 : _GEN_24; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_26 = 7'h1a == deallocate_0_bits ? refCounter_26 : _GEN_25; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_27 = 7'h1b == deallocate_0_bits ? refCounter_27 : _GEN_26; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_28 = 7'h1c == deallocate_0_bits ? refCounter_28 : _GEN_27; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_29 = 7'h1d == deallocate_0_bits ? refCounter_29 : _GEN_28; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_30 = 7'h1e == deallocate_0_bits ? refCounter_30 : _GEN_29; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_31 = 7'h1f == deallocate_0_bits ? refCounter_31 : _GEN_30; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_32 = 7'h20 == deallocate_0_bits ? refCounter_32 : _GEN_31; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_33 = 7'h21 == deallocate_0_bits ? refCounter_33 : _GEN_32; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_34 = 7'h22 == deallocate_0_bits ? refCounter_34 : _GEN_33; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_35 = 7'h23 == deallocate_0_bits ? refCounter_35 : _GEN_34; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_36 = 7'h24 == deallocate_0_bits ? refCounter_36 : _GEN_35; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_37 = 7'h25 == deallocate_0_bits ? refCounter_37 : _GEN_36; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_38 = 7'h26 == deallocate_0_bits ? refCounter_38 : _GEN_37; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_39 = 7'h27 == deallocate_0_bits ? refCounter_39 : _GEN_38; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_40 = 7'h28 == deallocate_0_bits ? refCounter_40 : _GEN_39; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_41 = 7'h29 == deallocate_0_bits ? refCounter_41 : _GEN_40; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_42 = 7'h2a == deallocate_0_bits ? refCounter_42 : _GEN_41; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_43 = 7'h2b == deallocate_0_bits ? refCounter_43 : _GEN_42; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_44 = 7'h2c == deallocate_0_bits ? refCounter_44 : _GEN_43; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_45 = 7'h2d == deallocate_0_bits ? refCounter_45 : _GEN_44; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_46 = 7'h2e == deallocate_0_bits ? refCounter_46 : _GEN_45; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_47 = 7'h2f == deallocate_0_bits ? refCounter_47 : _GEN_46; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_48 = 7'h30 == deallocate_0_bits ? refCounter_48 : _GEN_47; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_49 = 7'h31 == deallocate_0_bits ? refCounter_49 : _GEN_48; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_50 = 7'h32 == deallocate_0_bits ? refCounter_50 : _GEN_49; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_51 = 7'h33 == deallocate_0_bits ? refCounter_51 : _GEN_50; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_52 = 7'h34 == deallocate_0_bits ? refCounter_52 : _GEN_51; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_53 = 7'h35 == deallocate_0_bits ? refCounter_53 : _GEN_52; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_54 = 7'h36 == deallocate_0_bits ? refCounter_54 : _GEN_53; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_55 = 7'h37 == deallocate_0_bits ? refCounter_55 : _GEN_54; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_56 = 7'h38 == deallocate_0_bits ? refCounter_56 : _GEN_55; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_57 = 7'h39 == deallocate_0_bits ? refCounter_57 : _GEN_56; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_58 = 7'h3a == deallocate_0_bits ? refCounter_58 : _GEN_57; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_59 = 7'h3b == deallocate_0_bits ? refCounter_59 : _GEN_58; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_60 = 7'h3c == deallocate_0_bits ? refCounter_60 : _GEN_59; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_61 = 7'h3d == deallocate_0_bits ? refCounter_61 : _GEN_60; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_62 = 7'h3e == deallocate_0_bits ? refCounter_62 : _GEN_61; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_63 = 7'h3f == deallocate_0_bits ? refCounter_63 : _GEN_62; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_64 = 7'h40 == deallocate_0_bits ? refCounter_64 : _GEN_63; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_65 = 7'h41 == deallocate_0_bits ? refCounter_65 : _GEN_64; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_66 = 7'h42 == deallocate_0_bits ? refCounter_66 : _GEN_65; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_67 = 7'h43 == deallocate_0_bits ? refCounter_67 : _GEN_66; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_68 = 7'h44 == deallocate_0_bits ? refCounter_68 : _GEN_67; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_69 = 7'h45 == deallocate_0_bits ? refCounter_69 : _GEN_68; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_70 = 7'h46 == deallocate_0_bits ? refCounter_70 : _GEN_69; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_71 = 7'h47 == deallocate_0_bits ? refCounter_71 : _GEN_70; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_72 = 7'h48 == deallocate_0_bits ? refCounter_72 : _GEN_71; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_73 = 7'h49 == deallocate_0_bits ? refCounter_73 : _GEN_72; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_74 = 7'h4a == deallocate_0_bits ? refCounter_74 : _GEN_73; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_75 = 7'h4b == deallocate_0_bits ? refCounter_75 : _GEN_74; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_76 = 7'h4c == deallocate_0_bits ? refCounter_76 : _GEN_75; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_77 = 7'h4d == deallocate_0_bits ? refCounter_77 : _GEN_76; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_78 = 7'h4e == deallocate_0_bits ? refCounter_78 : _GEN_77; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_79 = 7'h4f == deallocate_0_bits ? refCounter_79 : _GEN_78; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_80 = 7'h50 == deallocate_0_bits ? refCounter_80 : _GEN_79; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_81 = 7'h51 == deallocate_0_bits ? refCounter_81 : _GEN_80; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_82 = 7'h52 == deallocate_0_bits ? refCounter_82 : _GEN_81; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_83 = 7'h53 == deallocate_0_bits ? refCounter_83 : _GEN_82; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_84 = 7'h54 == deallocate_0_bits ? refCounter_84 : _GEN_83; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_85 = 7'h55 == deallocate_0_bits ? refCounter_85 : _GEN_84; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_86 = 7'h56 == deallocate_0_bits ? refCounter_86 : _GEN_85; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_87 = 7'h57 == deallocate_0_bits ? refCounter_87 : _GEN_86; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_88 = 7'h58 == deallocate_0_bits ? refCounter_88 : _GEN_87; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_89 = 7'h59 == deallocate_0_bits ? refCounter_89 : _GEN_88; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_90 = 7'h5a == deallocate_0_bits ? refCounter_90 : _GEN_89; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_91 = 7'h5b == deallocate_0_bits ? refCounter_91 : _GEN_90; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_92 = 7'h5c == deallocate_0_bits ? refCounter_92 : _GEN_91; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_93 = 7'h5d == deallocate_0_bits ? refCounter_93 : _GEN_92; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_94 = 7'h5e == deallocate_0_bits ? refCounter_94 : _GEN_93; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_95 = 7'h5f == deallocate_0_bits ? refCounter_95 : _GEN_94; // @[RefCounter.scala 53:{53,53}]
  wire  _refCounterInc_1_T_1 = allocate_0_valid & allocateOH_0[1]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_1_T_3 = allocate_1_valid & allocateOH_1[1]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_1_T_8 = _refCounterInc_1_T_1 + _refCounterInc_1_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_1_T_5 = allocate_2_valid & allocateOH_2[1]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_1_T_7 = allocate_3_valid & allocateOH_3[1]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_1_T_10 = _refCounterInc_1_T_5 + _refCounterInc_1_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_1_T_12 = _refCounterInc_1_T_8 + _refCounterInc_1_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_1 = {{4'd0}, _refCounterInc_1_T_12};
  wire [6:0] _GEN_97 = 7'h1 == deallocate_0_bits ? refCounterInc_1 : 7'h1; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_2_T_1 = allocate_0_valid & allocateOH_0[2]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_2_T_3 = allocate_1_valid & allocateOH_1[2]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_2_T_8 = _refCounterInc_2_T_1 + _refCounterInc_2_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_2_T_5 = allocate_2_valid & allocateOH_2[2]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_2_T_7 = allocate_3_valid & allocateOH_3[2]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_2_T_10 = _refCounterInc_2_T_5 + _refCounterInc_2_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_2_T_12 = _refCounterInc_2_T_8 + _refCounterInc_2_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_2 = {{4'd0}, _refCounterInc_2_T_12};
  wire [6:0] _GEN_98 = 7'h2 == deallocate_0_bits ? refCounterInc_2 : _GEN_97; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_3_T_1 = allocate_0_valid & allocateOH_0[3]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_3_T_3 = allocate_1_valid & allocateOH_1[3]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_3_T_8 = _refCounterInc_3_T_1 + _refCounterInc_3_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_3_T_5 = allocate_2_valid & allocateOH_2[3]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_3_T_7 = allocate_3_valid & allocateOH_3[3]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_3_T_10 = _refCounterInc_3_T_5 + _refCounterInc_3_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_3_T_12 = _refCounterInc_3_T_8 + _refCounterInc_3_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_3 = {{4'd0}, _refCounterInc_3_T_12};
  wire [6:0] _GEN_99 = 7'h3 == deallocate_0_bits ? refCounterInc_3 : _GEN_98; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_4_T_1 = allocate_0_valid & allocateOH_0[4]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_4_T_3 = allocate_1_valid & allocateOH_1[4]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_4_T_8 = _refCounterInc_4_T_1 + _refCounterInc_4_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_4_T_5 = allocate_2_valid & allocateOH_2[4]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_4_T_7 = allocate_3_valid & allocateOH_3[4]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_4_T_10 = _refCounterInc_4_T_5 + _refCounterInc_4_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_4_T_12 = _refCounterInc_4_T_8 + _refCounterInc_4_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_4 = {{4'd0}, _refCounterInc_4_T_12};
  wire [6:0] _GEN_100 = 7'h4 == deallocate_0_bits ? refCounterInc_4 : _GEN_99; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_5_T_1 = allocate_0_valid & allocateOH_0[5]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_5_T_3 = allocate_1_valid & allocateOH_1[5]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_5_T_8 = _refCounterInc_5_T_1 + _refCounterInc_5_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_5_T_5 = allocate_2_valid & allocateOH_2[5]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_5_T_7 = allocate_3_valid & allocateOH_3[5]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_5_T_10 = _refCounterInc_5_T_5 + _refCounterInc_5_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_5_T_12 = _refCounterInc_5_T_8 + _refCounterInc_5_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_5 = {{4'd0}, _refCounterInc_5_T_12};
  wire [6:0] _GEN_101 = 7'h5 == deallocate_0_bits ? refCounterInc_5 : _GEN_100; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_6_T_1 = allocate_0_valid & allocateOH_0[6]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_6_T_3 = allocate_1_valid & allocateOH_1[6]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_6_T_8 = _refCounterInc_6_T_1 + _refCounterInc_6_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_6_T_5 = allocate_2_valid & allocateOH_2[6]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_6_T_7 = allocate_3_valid & allocateOH_3[6]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_6_T_10 = _refCounterInc_6_T_5 + _refCounterInc_6_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_6_T_12 = _refCounterInc_6_T_8 + _refCounterInc_6_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_6 = {{4'd0}, _refCounterInc_6_T_12};
  wire [6:0] _GEN_102 = 7'h6 == deallocate_0_bits ? refCounterInc_6 : _GEN_101; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_7_T_1 = allocate_0_valid & allocateOH_0[7]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_7_T_3 = allocate_1_valid & allocateOH_1[7]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_7_T_8 = _refCounterInc_7_T_1 + _refCounterInc_7_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_7_T_5 = allocate_2_valid & allocateOH_2[7]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_7_T_7 = allocate_3_valid & allocateOH_3[7]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_7_T_10 = _refCounterInc_7_T_5 + _refCounterInc_7_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_7_T_12 = _refCounterInc_7_T_8 + _refCounterInc_7_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_7 = {{4'd0}, _refCounterInc_7_T_12};
  wire [6:0] _GEN_103 = 7'h7 == deallocate_0_bits ? refCounterInc_7 : _GEN_102; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_8_T_1 = allocate_0_valid & allocateOH_0[8]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_8_T_3 = allocate_1_valid & allocateOH_1[8]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_8_T_8 = _refCounterInc_8_T_1 + _refCounterInc_8_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_8_T_5 = allocate_2_valid & allocateOH_2[8]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_8_T_7 = allocate_3_valid & allocateOH_3[8]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_8_T_10 = _refCounterInc_8_T_5 + _refCounterInc_8_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_8_T_12 = _refCounterInc_8_T_8 + _refCounterInc_8_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_8 = {{4'd0}, _refCounterInc_8_T_12};
  wire [6:0] _GEN_104 = 7'h8 == deallocate_0_bits ? refCounterInc_8 : _GEN_103; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_9_T_1 = allocate_0_valid & allocateOH_0[9]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_9_T_3 = allocate_1_valid & allocateOH_1[9]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_9_T_8 = _refCounterInc_9_T_1 + _refCounterInc_9_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_9_T_5 = allocate_2_valid & allocateOH_2[9]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_9_T_7 = allocate_3_valid & allocateOH_3[9]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_9_T_10 = _refCounterInc_9_T_5 + _refCounterInc_9_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_9_T_12 = _refCounterInc_9_T_8 + _refCounterInc_9_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_9 = {{4'd0}, _refCounterInc_9_T_12};
  wire [6:0] _GEN_105 = 7'h9 == deallocate_0_bits ? refCounterInc_9 : _GEN_104; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_10_T_1 = allocate_0_valid & allocateOH_0[10]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_10_T_3 = allocate_1_valid & allocateOH_1[10]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_10_T_8 = _refCounterInc_10_T_1 + _refCounterInc_10_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_10_T_5 = allocate_2_valid & allocateOH_2[10]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_10_T_7 = allocate_3_valid & allocateOH_3[10]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_10_T_10 = _refCounterInc_10_T_5 + _refCounterInc_10_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_10_T_12 = _refCounterInc_10_T_8 + _refCounterInc_10_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_10 = {{4'd0}, _refCounterInc_10_T_12};
  wire [6:0] _GEN_106 = 7'ha == deallocate_0_bits ? refCounterInc_10 : _GEN_105; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_11_T_1 = allocate_0_valid & allocateOH_0[11]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_11_T_3 = allocate_1_valid & allocateOH_1[11]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_11_T_8 = _refCounterInc_11_T_1 + _refCounterInc_11_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_11_T_5 = allocate_2_valid & allocateOH_2[11]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_11_T_7 = allocate_3_valid & allocateOH_3[11]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_11_T_10 = _refCounterInc_11_T_5 + _refCounterInc_11_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_11_T_12 = _refCounterInc_11_T_8 + _refCounterInc_11_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_11 = {{4'd0}, _refCounterInc_11_T_12};
  wire [6:0] _GEN_107 = 7'hb == deallocate_0_bits ? refCounterInc_11 : _GEN_106; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_12_T_1 = allocate_0_valid & allocateOH_0[12]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_12_T_3 = allocate_1_valid & allocateOH_1[12]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_12_T_8 = _refCounterInc_12_T_1 + _refCounterInc_12_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_12_T_5 = allocate_2_valid & allocateOH_2[12]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_12_T_7 = allocate_3_valid & allocateOH_3[12]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_12_T_10 = _refCounterInc_12_T_5 + _refCounterInc_12_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_12_T_12 = _refCounterInc_12_T_8 + _refCounterInc_12_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_12 = {{4'd0}, _refCounterInc_12_T_12};
  wire [6:0] _GEN_108 = 7'hc == deallocate_0_bits ? refCounterInc_12 : _GEN_107; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_13_T_1 = allocate_0_valid & allocateOH_0[13]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_13_T_3 = allocate_1_valid & allocateOH_1[13]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_13_T_8 = _refCounterInc_13_T_1 + _refCounterInc_13_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_13_T_5 = allocate_2_valid & allocateOH_2[13]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_13_T_7 = allocate_3_valid & allocateOH_3[13]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_13_T_10 = _refCounterInc_13_T_5 + _refCounterInc_13_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_13_T_12 = _refCounterInc_13_T_8 + _refCounterInc_13_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_13 = {{4'd0}, _refCounterInc_13_T_12};
  wire [6:0] _GEN_109 = 7'hd == deallocate_0_bits ? refCounterInc_13 : _GEN_108; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_14_T_1 = allocate_0_valid & allocateOH_0[14]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_14_T_3 = allocate_1_valid & allocateOH_1[14]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_14_T_8 = _refCounterInc_14_T_1 + _refCounterInc_14_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_14_T_5 = allocate_2_valid & allocateOH_2[14]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_14_T_7 = allocate_3_valid & allocateOH_3[14]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_14_T_10 = _refCounterInc_14_T_5 + _refCounterInc_14_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_14_T_12 = _refCounterInc_14_T_8 + _refCounterInc_14_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_14 = {{4'd0}, _refCounterInc_14_T_12};
  wire [6:0] _GEN_110 = 7'he == deallocate_0_bits ? refCounterInc_14 : _GEN_109; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_15_T_1 = allocate_0_valid & allocateOH_0[15]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_15_T_3 = allocate_1_valid & allocateOH_1[15]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_15_T_8 = _refCounterInc_15_T_1 + _refCounterInc_15_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_15_T_5 = allocate_2_valid & allocateOH_2[15]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_15_T_7 = allocate_3_valid & allocateOH_3[15]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_15_T_10 = _refCounterInc_15_T_5 + _refCounterInc_15_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_15_T_12 = _refCounterInc_15_T_8 + _refCounterInc_15_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_15 = {{4'd0}, _refCounterInc_15_T_12};
  wire [6:0] _GEN_111 = 7'hf == deallocate_0_bits ? refCounterInc_15 : _GEN_110; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_16_T_1 = allocate_0_valid & allocateOH_0[16]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_16_T_3 = allocate_1_valid & allocateOH_1[16]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_16_T_8 = _refCounterInc_16_T_1 + _refCounterInc_16_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_16_T_5 = allocate_2_valid & allocateOH_2[16]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_16_T_7 = allocate_3_valid & allocateOH_3[16]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_16_T_10 = _refCounterInc_16_T_5 + _refCounterInc_16_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_16_T_12 = _refCounterInc_16_T_8 + _refCounterInc_16_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_16 = {{4'd0}, _refCounterInc_16_T_12};
  wire [6:0] _GEN_112 = 7'h10 == deallocate_0_bits ? refCounterInc_16 : _GEN_111; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_17_T_1 = allocate_0_valid & allocateOH_0[17]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_17_T_3 = allocate_1_valid & allocateOH_1[17]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_17_T_8 = _refCounterInc_17_T_1 + _refCounterInc_17_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_17_T_5 = allocate_2_valid & allocateOH_2[17]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_17_T_7 = allocate_3_valid & allocateOH_3[17]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_17_T_10 = _refCounterInc_17_T_5 + _refCounterInc_17_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_17_T_12 = _refCounterInc_17_T_8 + _refCounterInc_17_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_17 = {{4'd0}, _refCounterInc_17_T_12};
  wire [6:0] _GEN_113 = 7'h11 == deallocate_0_bits ? refCounterInc_17 : _GEN_112; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_18_T_1 = allocate_0_valid & allocateOH_0[18]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_18_T_3 = allocate_1_valid & allocateOH_1[18]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_18_T_8 = _refCounterInc_18_T_1 + _refCounterInc_18_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_18_T_5 = allocate_2_valid & allocateOH_2[18]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_18_T_7 = allocate_3_valid & allocateOH_3[18]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_18_T_10 = _refCounterInc_18_T_5 + _refCounterInc_18_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_18_T_12 = _refCounterInc_18_T_8 + _refCounterInc_18_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_18 = {{4'd0}, _refCounterInc_18_T_12};
  wire [6:0] _GEN_114 = 7'h12 == deallocate_0_bits ? refCounterInc_18 : _GEN_113; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_19_T_1 = allocate_0_valid & allocateOH_0[19]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_19_T_3 = allocate_1_valid & allocateOH_1[19]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_19_T_8 = _refCounterInc_19_T_1 + _refCounterInc_19_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_19_T_5 = allocate_2_valid & allocateOH_2[19]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_19_T_7 = allocate_3_valid & allocateOH_3[19]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_19_T_10 = _refCounterInc_19_T_5 + _refCounterInc_19_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_19_T_12 = _refCounterInc_19_T_8 + _refCounterInc_19_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_19 = {{4'd0}, _refCounterInc_19_T_12};
  wire [6:0] _GEN_115 = 7'h13 == deallocate_0_bits ? refCounterInc_19 : _GEN_114; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_20_T_1 = allocate_0_valid & allocateOH_0[20]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_20_T_3 = allocate_1_valid & allocateOH_1[20]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_20_T_8 = _refCounterInc_20_T_1 + _refCounterInc_20_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_20_T_5 = allocate_2_valid & allocateOH_2[20]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_20_T_7 = allocate_3_valid & allocateOH_3[20]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_20_T_10 = _refCounterInc_20_T_5 + _refCounterInc_20_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_20_T_12 = _refCounterInc_20_T_8 + _refCounterInc_20_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_20 = {{4'd0}, _refCounterInc_20_T_12};
  wire [6:0] _GEN_116 = 7'h14 == deallocate_0_bits ? refCounterInc_20 : _GEN_115; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_21_T_1 = allocate_0_valid & allocateOH_0[21]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_21_T_3 = allocate_1_valid & allocateOH_1[21]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_21_T_8 = _refCounterInc_21_T_1 + _refCounterInc_21_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_21_T_5 = allocate_2_valid & allocateOH_2[21]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_21_T_7 = allocate_3_valid & allocateOH_3[21]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_21_T_10 = _refCounterInc_21_T_5 + _refCounterInc_21_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_21_T_12 = _refCounterInc_21_T_8 + _refCounterInc_21_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_21 = {{4'd0}, _refCounterInc_21_T_12};
  wire [6:0] _GEN_117 = 7'h15 == deallocate_0_bits ? refCounterInc_21 : _GEN_116; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_22_T_1 = allocate_0_valid & allocateOH_0[22]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_22_T_3 = allocate_1_valid & allocateOH_1[22]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_22_T_8 = _refCounterInc_22_T_1 + _refCounterInc_22_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_22_T_5 = allocate_2_valid & allocateOH_2[22]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_22_T_7 = allocate_3_valid & allocateOH_3[22]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_22_T_10 = _refCounterInc_22_T_5 + _refCounterInc_22_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_22_T_12 = _refCounterInc_22_T_8 + _refCounterInc_22_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_22 = {{4'd0}, _refCounterInc_22_T_12};
  wire [6:0] _GEN_118 = 7'h16 == deallocate_0_bits ? refCounterInc_22 : _GEN_117; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_23_T_1 = allocate_0_valid & allocateOH_0[23]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_23_T_3 = allocate_1_valid & allocateOH_1[23]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_23_T_8 = _refCounterInc_23_T_1 + _refCounterInc_23_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_23_T_5 = allocate_2_valid & allocateOH_2[23]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_23_T_7 = allocate_3_valid & allocateOH_3[23]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_23_T_10 = _refCounterInc_23_T_5 + _refCounterInc_23_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_23_T_12 = _refCounterInc_23_T_8 + _refCounterInc_23_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_23 = {{4'd0}, _refCounterInc_23_T_12};
  wire [6:0] _GEN_119 = 7'h17 == deallocate_0_bits ? refCounterInc_23 : _GEN_118; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_24_T_1 = allocate_0_valid & allocateOH_0[24]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_24_T_3 = allocate_1_valid & allocateOH_1[24]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_24_T_8 = _refCounterInc_24_T_1 + _refCounterInc_24_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_24_T_5 = allocate_2_valid & allocateOH_2[24]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_24_T_7 = allocate_3_valid & allocateOH_3[24]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_24_T_10 = _refCounterInc_24_T_5 + _refCounterInc_24_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_24_T_12 = _refCounterInc_24_T_8 + _refCounterInc_24_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_24 = {{4'd0}, _refCounterInc_24_T_12};
  wire [6:0] _GEN_120 = 7'h18 == deallocate_0_bits ? refCounterInc_24 : _GEN_119; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_25_T_1 = allocate_0_valid & allocateOH_0[25]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_25_T_3 = allocate_1_valid & allocateOH_1[25]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_25_T_8 = _refCounterInc_25_T_1 + _refCounterInc_25_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_25_T_5 = allocate_2_valid & allocateOH_2[25]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_25_T_7 = allocate_3_valid & allocateOH_3[25]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_25_T_10 = _refCounterInc_25_T_5 + _refCounterInc_25_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_25_T_12 = _refCounterInc_25_T_8 + _refCounterInc_25_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_25 = {{4'd0}, _refCounterInc_25_T_12};
  wire [6:0] _GEN_121 = 7'h19 == deallocate_0_bits ? refCounterInc_25 : _GEN_120; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_26_T_1 = allocate_0_valid & allocateOH_0[26]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_26_T_3 = allocate_1_valid & allocateOH_1[26]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_26_T_8 = _refCounterInc_26_T_1 + _refCounterInc_26_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_26_T_5 = allocate_2_valid & allocateOH_2[26]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_26_T_7 = allocate_3_valid & allocateOH_3[26]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_26_T_10 = _refCounterInc_26_T_5 + _refCounterInc_26_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_26_T_12 = _refCounterInc_26_T_8 + _refCounterInc_26_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_26 = {{4'd0}, _refCounterInc_26_T_12};
  wire [6:0] _GEN_122 = 7'h1a == deallocate_0_bits ? refCounterInc_26 : _GEN_121; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_27_T_1 = allocate_0_valid & allocateOH_0[27]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_27_T_3 = allocate_1_valid & allocateOH_1[27]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_27_T_8 = _refCounterInc_27_T_1 + _refCounterInc_27_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_27_T_5 = allocate_2_valid & allocateOH_2[27]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_27_T_7 = allocate_3_valid & allocateOH_3[27]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_27_T_10 = _refCounterInc_27_T_5 + _refCounterInc_27_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_27_T_12 = _refCounterInc_27_T_8 + _refCounterInc_27_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_27 = {{4'd0}, _refCounterInc_27_T_12};
  wire [6:0] _GEN_123 = 7'h1b == deallocate_0_bits ? refCounterInc_27 : _GEN_122; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_28_T_1 = allocate_0_valid & allocateOH_0[28]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_28_T_3 = allocate_1_valid & allocateOH_1[28]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_28_T_8 = _refCounterInc_28_T_1 + _refCounterInc_28_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_28_T_5 = allocate_2_valid & allocateOH_2[28]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_28_T_7 = allocate_3_valid & allocateOH_3[28]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_28_T_10 = _refCounterInc_28_T_5 + _refCounterInc_28_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_28_T_12 = _refCounterInc_28_T_8 + _refCounterInc_28_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_28 = {{4'd0}, _refCounterInc_28_T_12};
  wire [6:0] _GEN_124 = 7'h1c == deallocate_0_bits ? refCounterInc_28 : _GEN_123; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_29_T_1 = allocate_0_valid & allocateOH_0[29]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_29_T_3 = allocate_1_valid & allocateOH_1[29]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_29_T_8 = _refCounterInc_29_T_1 + _refCounterInc_29_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_29_T_5 = allocate_2_valid & allocateOH_2[29]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_29_T_7 = allocate_3_valid & allocateOH_3[29]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_29_T_10 = _refCounterInc_29_T_5 + _refCounterInc_29_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_29_T_12 = _refCounterInc_29_T_8 + _refCounterInc_29_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_29 = {{4'd0}, _refCounterInc_29_T_12};
  wire [6:0] _GEN_125 = 7'h1d == deallocate_0_bits ? refCounterInc_29 : _GEN_124; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_30_T_1 = allocate_0_valid & allocateOH_0[30]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_30_T_3 = allocate_1_valid & allocateOH_1[30]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_30_T_8 = _refCounterInc_30_T_1 + _refCounterInc_30_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_30_T_5 = allocate_2_valid & allocateOH_2[30]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_30_T_7 = allocate_3_valid & allocateOH_3[30]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_30_T_10 = _refCounterInc_30_T_5 + _refCounterInc_30_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_30_T_12 = _refCounterInc_30_T_8 + _refCounterInc_30_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_30 = {{4'd0}, _refCounterInc_30_T_12};
  wire [6:0] _GEN_126 = 7'h1e == deallocate_0_bits ? refCounterInc_30 : _GEN_125; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_31_T_1 = allocate_0_valid & allocateOH_0[31]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_31_T_3 = allocate_1_valid & allocateOH_1[31]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_31_T_8 = _refCounterInc_31_T_1 + _refCounterInc_31_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_31_T_5 = allocate_2_valid & allocateOH_2[31]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_31_T_7 = allocate_3_valid & allocateOH_3[31]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_31_T_10 = _refCounterInc_31_T_5 + _refCounterInc_31_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_31_T_12 = _refCounterInc_31_T_8 + _refCounterInc_31_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_31 = {{4'd0}, _refCounterInc_31_T_12};
  wire [6:0] _GEN_127 = 7'h1f == deallocate_0_bits ? refCounterInc_31 : _GEN_126; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_32_T_1 = allocate_0_valid & allocateOH_0[32]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_32_T_3 = allocate_1_valid & allocateOH_1[32]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_32_T_8 = _refCounterInc_32_T_1 + _refCounterInc_32_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_32_T_5 = allocate_2_valid & allocateOH_2[32]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_32_T_7 = allocate_3_valid & allocateOH_3[32]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_32_T_10 = _refCounterInc_32_T_5 + _refCounterInc_32_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_32_T_12 = _refCounterInc_32_T_8 + _refCounterInc_32_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_32 = {{4'd0}, _refCounterInc_32_T_12};
  wire [6:0] _GEN_128 = 7'h20 == deallocate_0_bits ? refCounterInc_32 : _GEN_127; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_33_T_1 = allocate_0_valid & allocateOH_0[33]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_33_T_3 = allocate_1_valid & allocateOH_1[33]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_33_T_8 = _refCounterInc_33_T_1 + _refCounterInc_33_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_33_T_5 = allocate_2_valid & allocateOH_2[33]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_33_T_7 = allocate_3_valid & allocateOH_3[33]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_33_T_10 = _refCounterInc_33_T_5 + _refCounterInc_33_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_33_T_12 = _refCounterInc_33_T_8 + _refCounterInc_33_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_33 = {{4'd0}, _refCounterInc_33_T_12};
  wire [6:0] _GEN_129 = 7'h21 == deallocate_0_bits ? refCounterInc_33 : _GEN_128; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_34_T_1 = allocate_0_valid & allocateOH_0[34]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_34_T_3 = allocate_1_valid & allocateOH_1[34]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_34_T_8 = _refCounterInc_34_T_1 + _refCounterInc_34_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_34_T_5 = allocate_2_valid & allocateOH_2[34]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_34_T_7 = allocate_3_valid & allocateOH_3[34]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_34_T_10 = _refCounterInc_34_T_5 + _refCounterInc_34_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_34_T_12 = _refCounterInc_34_T_8 + _refCounterInc_34_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_34 = {{4'd0}, _refCounterInc_34_T_12};
  wire [6:0] _GEN_130 = 7'h22 == deallocate_0_bits ? refCounterInc_34 : _GEN_129; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_35_T_1 = allocate_0_valid & allocateOH_0[35]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_35_T_3 = allocate_1_valid & allocateOH_1[35]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_35_T_8 = _refCounterInc_35_T_1 + _refCounterInc_35_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_35_T_5 = allocate_2_valid & allocateOH_2[35]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_35_T_7 = allocate_3_valid & allocateOH_3[35]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_35_T_10 = _refCounterInc_35_T_5 + _refCounterInc_35_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_35_T_12 = _refCounterInc_35_T_8 + _refCounterInc_35_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_35 = {{4'd0}, _refCounterInc_35_T_12};
  wire [6:0] _GEN_131 = 7'h23 == deallocate_0_bits ? refCounterInc_35 : _GEN_130; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_36_T_1 = allocate_0_valid & allocateOH_0[36]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_36_T_3 = allocate_1_valid & allocateOH_1[36]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_36_T_8 = _refCounterInc_36_T_1 + _refCounterInc_36_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_36_T_5 = allocate_2_valid & allocateOH_2[36]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_36_T_7 = allocate_3_valid & allocateOH_3[36]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_36_T_10 = _refCounterInc_36_T_5 + _refCounterInc_36_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_36_T_12 = _refCounterInc_36_T_8 + _refCounterInc_36_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_36 = {{4'd0}, _refCounterInc_36_T_12};
  wire [6:0] _GEN_132 = 7'h24 == deallocate_0_bits ? refCounterInc_36 : _GEN_131; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_37_T_1 = allocate_0_valid & allocateOH_0[37]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_37_T_3 = allocate_1_valid & allocateOH_1[37]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_37_T_8 = _refCounterInc_37_T_1 + _refCounterInc_37_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_37_T_5 = allocate_2_valid & allocateOH_2[37]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_37_T_7 = allocate_3_valid & allocateOH_3[37]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_37_T_10 = _refCounterInc_37_T_5 + _refCounterInc_37_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_37_T_12 = _refCounterInc_37_T_8 + _refCounterInc_37_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_37 = {{4'd0}, _refCounterInc_37_T_12};
  wire [6:0] _GEN_133 = 7'h25 == deallocate_0_bits ? refCounterInc_37 : _GEN_132; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_38_T_1 = allocate_0_valid & allocateOH_0[38]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_38_T_3 = allocate_1_valid & allocateOH_1[38]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_38_T_8 = _refCounterInc_38_T_1 + _refCounterInc_38_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_38_T_5 = allocate_2_valid & allocateOH_2[38]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_38_T_7 = allocate_3_valid & allocateOH_3[38]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_38_T_10 = _refCounterInc_38_T_5 + _refCounterInc_38_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_38_T_12 = _refCounterInc_38_T_8 + _refCounterInc_38_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_38 = {{4'd0}, _refCounterInc_38_T_12};
  wire [6:0] _GEN_134 = 7'h26 == deallocate_0_bits ? refCounterInc_38 : _GEN_133; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_39_T_1 = allocate_0_valid & allocateOH_0[39]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_39_T_3 = allocate_1_valid & allocateOH_1[39]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_39_T_8 = _refCounterInc_39_T_1 + _refCounterInc_39_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_39_T_5 = allocate_2_valid & allocateOH_2[39]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_39_T_7 = allocate_3_valid & allocateOH_3[39]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_39_T_10 = _refCounterInc_39_T_5 + _refCounterInc_39_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_39_T_12 = _refCounterInc_39_T_8 + _refCounterInc_39_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_39 = {{4'd0}, _refCounterInc_39_T_12};
  wire [6:0] _GEN_135 = 7'h27 == deallocate_0_bits ? refCounterInc_39 : _GEN_134; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_40_T_1 = allocate_0_valid & allocateOH_0[40]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_40_T_3 = allocate_1_valid & allocateOH_1[40]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_40_T_8 = _refCounterInc_40_T_1 + _refCounterInc_40_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_40_T_5 = allocate_2_valid & allocateOH_2[40]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_40_T_7 = allocate_3_valid & allocateOH_3[40]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_40_T_10 = _refCounterInc_40_T_5 + _refCounterInc_40_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_40_T_12 = _refCounterInc_40_T_8 + _refCounterInc_40_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_40 = {{4'd0}, _refCounterInc_40_T_12};
  wire [6:0] _GEN_136 = 7'h28 == deallocate_0_bits ? refCounterInc_40 : _GEN_135; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_41_T_1 = allocate_0_valid & allocateOH_0[41]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_41_T_3 = allocate_1_valid & allocateOH_1[41]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_41_T_8 = _refCounterInc_41_T_1 + _refCounterInc_41_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_41_T_5 = allocate_2_valid & allocateOH_2[41]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_41_T_7 = allocate_3_valid & allocateOH_3[41]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_41_T_10 = _refCounterInc_41_T_5 + _refCounterInc_41_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_41_T_12 = _refCounterInc_41_T_8 + _refCounterInc_41_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_41 = {{4'd0}, _refCounterInc_41_T_12};
  wire [6:0] _GEN_137 = 7'h29 == deallocate_0_bits ? refCounterInc_41 : _GEN_136; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_42_T_1 = allocate_0_valid & allocateOH_0[42]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_42_T_3 = allocate_1_valid & allocateOH_1[42]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_42_T_8 = _refCounterInc_42_T_1 + _refCounterInc_42_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_42_T_5 = allocate_2_valid & allocateOH_2[42]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_42_T_7 = allocate_3_valid & allocateOH_3[42]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_42_T_10 = _refCounterInc_42_T_5 + _refCounterInc_42_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_42_T_12 = _refCounterInc_42_T_8 + _refCounterInc_42_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_42 = {{4'd0}, _refCounterInc_42_T_12};
  wire [6:0] _GEN_138 = 7'h2a == deallocate_0_bits ? refCounterInc_42 : _GEN_137; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_43_T_1 = allocate_0_valid & allocateOH_0[43]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_43_T_3 = allocate_1_valid & allocateOH_1[43]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_43_T_8 = _refCounterInc_43_T_1 + _refCounterInc_43_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_43_T_5 = allocate_2_valid & allocateOH_2[43]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_43_T_7 = allocate_3_valid & allocateOH_3[43]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_43_T_10 = _refCounterInc_43_T_5 + _refCounterInc_43_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_43_T_12 = _refCounterInc_43_T_8 + _refCounterInc_43_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_43 = {{4'd0}, _refCounterInc_43_T_12};
  wire [6:0] _GEN_139 = 7'h2b == deallocate_0_bits ? refCounterInc_43 : _GEN_138; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_44_T_1 = allocate_0_valid & allocateOH_0[44]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_44_T_3 = allocate_1_valid & allocateOH_1[44]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_44_T_8 = _refCounterInc_44_T_1 + _refCounterInc_44_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_44_T_5 = allocate_2_valid & allocateOH_2[44]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_44_T_7 = allocate_3_valid & allocateOH_3[44]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_44_T_10 = _refCounterInc_44_T_5 + _refCounterInc_44_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_44_T_12 = _refCounterInc_44_T_8 + _refCounterInc_44_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_44 = {{4'd0}, _refCounterInc_44_T_12};
  wire [6:0] _GEN_140 = 7'h2c == deallocate_0_bits ? refCounterInc_44 : _GEN_139; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_45_T_1 = allocate_0_valid & allocateOH_0[45]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_45_T_3 = allocate_1_valid & allocateOH_1[45]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_45_T_8 = _refCounterInc_45_T_1 + _refCounterInc_45_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_45_T_5 = allocate_2_valid & allocateOH_2[45]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_45_T_7 = allocate_3_valid & allocateOH_3[45]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_45_T_10 = _refCounterInc_45_T_5 + _refCounterInc_45_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_45_T_12 = _refCounterInc_45_T_8 + _refCounterInc_45_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_45 = {{4'd0}, _refCounterInc_45_T_12};
  wire [6:0] _GEN_141 = 7'h2d == deallocate_0_bits ? refCounterInc_45 : _GEN_140; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_46_T_1 = allocate_0_valid & allocateOH_0[46]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_46_T_3 = allocate_1_valid & allocateOH_1[46]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_46_T_8 = _refCounterInc_46_T_1 + _refCounterInc_46_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_46_T_5 = allocate_2_valid & allocateOH_2[46]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_46_T_7 = allocate_3_valid & allocateOH_3[46]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_46_T_10 = _refCounterInc_46_T_5 + _refCounterInc_46_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_46_T_12 = _refCounterInc_46_T_8 + _refCounterInc_46_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_46 = {{4'd0}, _refCounterInc_46_T_12};
  wire [6:0] _GEN_142 = 7'h2e == deallocate_0_bits ? refCounterInc_46 : _GEN_141; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_47_T_1 = allocate_0_valid & allocateOH_0[47]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_47_T_3 = allocate_1_valid & allocateOH_1[47]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_47_T_8 = _refCounterInc_47_T_1 + _refCounterInc_47_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_47_T_5 = allocate_2_valid & allocateOH_2[47]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_47_T_7 = allocate_3_valid & allocateOH_3[47]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_47_T_10 = _refCounterInc_47_T_5 + _refCounterInc_47_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_47_T_12 = _refCounterInc_47_T_8 + _refCounterInc_47_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_47 = {{4'd0}, _refCounterInc_47_T_12};
  wire [6:0] _GEN_143 = 7'h2f == deallocate_0_bits ? refCounterInc_47 : _GEN_142; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_48_T_1 = allocate_0_valid & allocateOH_0[48]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_48_T_3 = allocate_1_valid & allocateOH_1[48]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_48_T_8 = _refCounterInc_48_T_1 + _refCounterInc_48_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_48_T_5 = allocate_2_valid & allocateOH_2[48]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_48_T_7 = allocate_3_valid & allocateOH_3[48]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_48_T_10 = _refCounterInc_48_T_5 + _refCounterInc_48_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_48_T_12 = _refCounterInc_48_T_8 + _refCounterInc_48_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_48 = {{4'd0}, _refCounterInc_48_T_12};
  wire [6:0] _GEN_144 = 7'h30 == deallocate_0_bits ? refCounterInc_48 : _GEN_143; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_49_T_1 = allocate_0_valid & allocateOH_0[49]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_49_T_3 = allocate_1_valid & allocateOH_1[49]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_49_T_8 = _refCounterInc_49_T_1 + _refCounterInc_49_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_49_T_5 = allocate_2_valid & allocateOH_2[49]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_49_T_7 = allocate_3_valid & allocateOH_3[49]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_49_T_10 = _refCounterInc_49_T_5 + _refCounterInc_49_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_49_T_12 = _refCounterInc_49_T_8 + _refCounterInc_49_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_49 = {{4'd0}, _refCounterInc_49_T_12};
  wire [6:0] _GEN_145 = 7'h31 == deallocate_0_bits ? refCounterInc_49 : _GEN_144; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_50_T_1 = allocate_0_valid & allocateOH_0[50]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_50_T_3 = allocate_1_valid & allocateOH_1[50]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_50_T_8 = _refCounterInc_50_T_1 + _refCounterInc_50_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_50_T_5 = allocate_2_valid & allocateOH_2[50]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_50_T_7 = allocate_3_valid & allocateOH_3[50]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_50_T_10 = _refCounterInc_50_T_5 + _refCounterInc_50_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_50_T_12 = _refCounterInc_50_T_8 + _refCounterInc_50_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_50 = {{4'd0}, _refCounterInc_50_T_12};
  wire [6:0] _GEN_146 = 7'h32 == deallocate_0_bits ? refCounterInc_50 : _GEN_145; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_51_T_1 = allocate_0_valid & allocateOH_0[51]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_51_T_3 = allocate_1_valid & allocateOH_1[51]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_51_T_8 = _refCounterInc_51_T_1 + _refCounterInc_51_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_51_T_5 = allocate_2_valid & allocateOH_2[51]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_51_T_7 = allocate_3_valid & allocateOH_3[51]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_51_T_10 = _refCounterInc_51_T_5 + _refCounterInc_51_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_51_T_12 = _refCounterInc_51_T_8 + _refCounterInc_51_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_51 = {{4'd0}, _refCounterInc_51_T_12};
  wire [6:0] _GEN_147 = 7'h33 == deallocate_0_bits ? refCounterInc_51 : _GEN_146; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_52_T_1 = allocate_0_valid & allocateOH_0[52]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_52_T_3 = allocate_1_valid & allocateOH_1[52]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_52_T_8 = _refCounterInc_52_T_1 + _refCounterInc_52_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_52_T_5 = allocate_2_valid & allocateOH_2[52]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_52_T_7 = allocate_3_valid & allocateOH_3[52]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_52_T_10 = _refCounterInc_52_T_5 + _refCounterInc_52_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_52_T_12 = _refCounterInc_52_T_8 + _refCounterInc_52_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_52 = {{4'd0}, _refCounterInc_52_T_12};
  wire [6:0] _GEN_148 = 7'h34 == deallocate_0_bits ? refCounterInc_52 : _GEN_147; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_53_T_1 = allocate_0_valid & allocateOH_0[53]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_53_T_3 = allocate_1_valid & allocateOH_1[53]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_53_T_8 = _refCounterInc_53_T_1 + _refCounterInc_53_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_53_T_5 = allocate_2_valid & allocateOH_2[53]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_53_T_7 = allocate_3_valid & allocateOH_3[53]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_53_T_10 = _refCounterInc_53_T_5 + _refCounterInc_53_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_53_T_12 = _refCounterInc_53_T_8 + _refCounterInc_53_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_53 = {{4'd0}, _refCounterInc_53_T_12};
  wire [6:0] _GEN_149 = 7'h35 == deallocate_0_bits ? refCounterInc_53 : _GEN_148; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_54_T_1 = allocate_0_valid & allocateOH_0[54]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_54_T_3 = allocate_1_valid & allocateOH_1[54]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_54_T_8 = _refCounterInc_54_T_1 + _refCounterInc_54_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_54_T_5 = allocate_2_valid & allocateOH_2[54]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_54_T_7 = allocate_3_valid & allocateOH_3[54]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_54_T_10 = _refCounterInc_54_T_5 + _refCounterInc_54_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_54_T_12 = _refCounterInc_54_T_8 + _refCounterInc_54_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_54 = {{4'd0}, _refCounterInc_54_T_12};
  wire [6:0] _GEN_150 = 7'h36 == deallocate_0_bits ? refCounterInc_54 : _GEN_149; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_55_T_1 = allocate_0_valid & allocateOH_0[55]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_55_T_3 = allocate_1_valid & allocateOH_1[55]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_55_T_8 = _refCounterInc_55_T_1 + _refCounterInc_55_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_55_T_5 = allocate_2_valid & allocateOH_2[55]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_55_T_7 = allocate_3_valid & allocateOH_3[55]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_55_T_10 = _refCounterInc_55_T_5 + _refCounterInc_55_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_55_T_12 = _refCounterInc_55_T_8 + _refCounterInc_55_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_55 = {{4'd0}, _refCounterInc_55_T_12};
  wire [6:0] _GEN_151 = 7'h37 == deallocate_0_bits ? refCounterInc_55 : _GEN_150; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_56_T_1 = allocate_0_valid & allocateOH_0[56]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_56_T_3 = allocate_1_valid & allocateOH_1[56]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_56_T_8 = _refCounterInc_56_T_1 + _refCounterInc_56_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_56_T_5 = allocate_2_valid & allocateOH_2[56]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_56_T_7 = allocate_3_valid & allocateOH_3[56]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_56_T_10 = _refCounterInc_56_T_5 + _refCounterInc_56_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_56_T_12 = _refCounterInc_56_T_8 + _refCounterInc_56_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_56 = {{4'd0}, _refCounterInc_56_T_12};
  wire [6:0] _GEN_152 = 7'h38 == deallocate_0_bits ? refCounterInc_56 : _GEN_151; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_57_T_1 = allocate_0_valid & allocateOH_0[57]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_57_T_3 = allocate_1_valid & allocateOH_1[57]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_57_T_8 = _refCounterInc_57_T_1 + _refCounterInc_57_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_57_T_5 = allocate_2_valid & allocateOH_2[57]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_57_T_7 = allocate_3_valid & allocateOH_3[57]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_57_T_10 = _refCounterInc_57_T_5 + _refCounterInc_57_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_57_T_12 = _refCounterInc_57_T_8 + _refCounterInc_57_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_57 = {{4'd0}, _refCounterInc_57_T_12};
  wire [6:0] _GEN_153 = 7'h39 == deallocate_0_bits ? refCounterInc_57 : _GEN_152; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_58_T_1 = allocate_0_valid & allocateOH_0[58]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_58_T_3 = allocate_1_valid & allocateOH_1[58]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_58_T_8 = _refCounterInc_58_T_1 + _refCounterInc_58_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_58_T_5 = allocate_2_valid & allocateOH_2[58]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_58_T_7 = allocate_3_valid & allocateOH_3[58]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_58_T_10 = _refCounterInc_58_T_5 + _refCounterInc_58_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_58_T_12 = _refCounterInc_58_T_8 + _refCounterInc_58_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_58 = {{4'd0}, _refCounterInc_58_T_12};
  wire [6:0] _GEN_154 = 7'h3a == deallocate_0_bits ? refCounterInc_58 : _GEN_153; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_59_T_1 = allocate_0_valid & allocateOH_0[59]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_59_T_3 = allocate_1_valid & allocateOH_1[59]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_59_T_8 = _refCounterInc_59_T_1 + _refCounterInc_59_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_59_T_5 = allocate_2_valid & allocateOH_2[59]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_59_T_7 = allocate_3_valid & allocateOH_3[59]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_59_T_10 = _refCounterInc_59_T_5 + _refCounterInc_59_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_59_T_12 = _refCounterInc_59_T_8 + _refCounterInc_59_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_59 = {{4'd0}, _refCounterInc_59_T_12};
  wire [6:0] _GEN_155 = 7'h3b == deallocate_0_bits ? refCounterInc_59 : _GEN_154; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_60_T_1 = allocate_0_valid & allocateOH_0[60]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_60_T_3 = allocate_1_valid & allocateOH_1[60]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_60_T_8 = _refCounterInc_60_T_1 + _refCounterInc_60_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_60_T_5 = allocate_2_valid & allocateOH_2[60]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_60_T_7 = allocate_3_valid & allocateOH_3[60]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_60_T_10 = _refCounterInc_60_T_5 + _refCounterInc_60_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_60_T_12 = _refCounterInc_60_T_8 + _refCounterInc_60_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_60 = {{4'd0}, _refCounterInc_60_T_12};
  wire [6:0] _GEN_156 = 7'h3c == deallocate_0_bits ? refCounterInc_60 : _GEN_155; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_61_T_1 = allocate_0_valid & allocateOH_0[61]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_61_T_3 = allocate_1_valid & allocateOH_1[61]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_61_T_8 = _refCounterInc_61_T_1 + _refCounterInc_61_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_61_T_5 = allocate_2_valid & allocateOH_2[61]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_61_T_7 = allocate_3_valid & allocateOH_3[61]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_61_T_10 = _refCounterInc_61_T_5 + _refCounterInc_61_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_61_T_12 = _refCounterInc_61_T_8 + _refCounterInc_61_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_61 = {{4'd0}, _refCounterInc_61_T_12};
  wire [6:0] _GEN_157 = 7'h3d == deallocate_0_bits ? refCounterInc_61 : _GEN_156; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_62_T_1 = allocate_0_valid & allocateOH_0[62]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_62_T_3 = allocate_1_valid & allocateOH_1[62]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_62_T_8 = _refCounterInc_62_T_1 + _refCounterInc_62_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_62_T_5 = allocate_2_valid & allocateOH_2[62]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_62_T_7 = allocate_3_valid & allocateOH_3[62]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_62_T_10 = _refCounterInc_62_T_5 + _refCounterInc_62_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_62_T_12 = _refCounterInc_62_T_8 + _refCounterInc_62_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_62 = {{4'd0}, _refCounterInc_62_T_12};
  wire [6:0] _GEN_158 = 7'h3e == deallocate_0_bits ? refCounterInc_62 : _GEN_157; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_63_T_1 = allocate_0_valid & allocateOH_0[63]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_63_T_3 = allocate_1_valid & allocateOH_1[63]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_63_T_8 = _refCounterInc_63_T_1 + _refCounterInc_63_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_63_T_5 = allocate_2_valid & allocateOH_2[63]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_63_T_7 = allocate_3_valid & allocateOH_3[63]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_63_T_10 = _refCounterInc_63_T_5 + _refCounterInc_63_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_63_T_12 = _refCounterInc_63_T_8 + _refCounterInc_63_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_63 = {{4'd0}, _refCounterInc_63_T_12};
  wire [6:0] _GEN_159 = 7'h3f == deallocate_0_bits ? refCounterInc_63 : _GEN_158; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_64_T_1 = allocate_0_valid & allocateOH_0[64]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_64_T_3 = allocate_1_valid & allocateOH_1[64]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_64_T_8 = _refCounterInc_64_T_1 + _refCounterInc_64_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_64_T_5 = allocate_2_valid & allocateOH_2[64]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_64_T_7 = allocate_3_valid & allocateOH_3[64]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_64_T_10 = _refCounterInc_64_T_5 + _refCounterInc_64_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_64_T_12 = _refCounterInc_64_T_8 + _refCounterInc_64_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_64 = {{4'd0}, _refCounterInc_64_T_12};
  wire [6:0] _GEN_160 = 7'h40 == deallocate_0_bits ? refCounterInc_64 : _GEN_159; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_65_T_1 = allocate_0_valid & allocateOH_0[65]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_65_T_3 = allocate_1_valid & allocateOH_1[65]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_65_T_8 = _refCounterInc_65_T_1 + _refCounterInc_65_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_65_T_5 = allocate_2_valid & allocateOH_2[65]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_65_T_7 = allocate_3_valid & allocateOH_3[65]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_65_T_10 = _refCounterInc_65_T_5 + _refCounterInc_65_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_65_T_12 = _refCounterInc_65_T_8 + _refCounterInc_65_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_65 = {{4'd0}, _refCounterInc_65_T_12};
  wire [6:0] _GEN_161 = 7'h41 == deallocate_0_bits ? refCounterInc_65 : _GEN_160; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_66_T_1 = allocate_0_valid & allocateOH_0[66]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_66_T_3 = allocate_1_valid & allocateOH_1[66]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_66_T_8 = _refCounterInc_66_T_1 + _refCounterInc_66_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_66_T_5 = allocate_2_valid & allocateOH_2[66]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_66_T_7 = allocate_3_valid & allocateOH_3[66]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_66_T_10 = _refCounterInc_66_T_5 + _refCounterInc_66_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_66_T_12 = _refCounterInc_66_T_8 + _refCounterInc_66_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_66 = {{4'd0}, _refCounterInc_66_T_12};
  wire [6:0] _GEN_162 = 7'h42 == deallocate_0_bits ? refCounterInc_66 : _GEN_161; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_67_T_1 = allocate_0_valid & allocateOH_0[67]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_67_T_3 = allocate_1_valid & allocateOH_1[67]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_67_T_8 = _refCounterInc_67_T_1 + _refCounterInc_67_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_67_T_5 = allocate_2_valid & allocateOH_2[67]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_67_T_7 = allocate_3_valid & allocateOH_3[67]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_67_T_10 = _refCounterInc_67_T_5 + _refCounterInc_67_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_67_T_12 = _refCounterInc_67_T_8 + _refCounterInc_67_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_67 = {{4'd0}, _refCounterInc_67_T_12};
  wire [6:0] _GEN_163 = 7'h43 == deallocate_0_bits ? refCounterInc_67 : _GEN_162; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_68_T_1 = allocate_0_valid & allocateOH_0[68]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_68_T_3 = allocate_1_valid & allocateOH_1[68]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_68_T_8 = _refCounterInc_68_T_1 + _refCounterInc_68_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_68_T_5 = allocate_2_valid & allocateOH_2[68]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_68_T_7 = allocate_3_valid & allocateOH_3[68]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_68_T_10 = _refCounterInc_68_T_5 + _refCounterInc_68_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_68_T_12 = _refCounterInc_68_T_8 + _refCounterInc_68_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_68 = {{4'd0}, _refCounterInc_68_T_12};
  wire [6:0] _GEN_164 = 7'h44 == deallocate_0_bits ? refCounterInc_68 : _GEN_163; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_69_T_1 = allocate_0_valid & allocateOH_0[69]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_69_T_3 = allocate_1_valid & allocateOH_1[69]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_69_T_8 = _refCounterInc_69_T_1 + _refCounterInc_69_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_69_T_5 = allocate_2_valid & allocateOH_2[69]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_69_T_7 = allocate_3_valid & allocateOH_3[69]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_69_T_10 = _refCounterInc_69_T_5 + _refCounterInc_69_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_69_T_12 = _refCounterInc_69_T_8 + _refCounterInc_69_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_69 = {{4'd0}, _refCounterInc_69_T_12};
  wire [6:0] _GEN_165 = 7'h45 == deallocate_0_bits ? refCounterInc_69 : _GEN_164; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_70_T_1 = allocate_0_valid & allocateOH_0[70]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_70_T_3 = allocate_1_valid & allocateOH_1[70]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_70_T_8 = _refCounterInc_70_T_1 + _refCounterInc_70_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_70_T_5 = allocate_2_valid & allocateOH_2[70]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_70_T_7 = allocate_3_valid & allocateOH_3[70]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_70_T_10 = _refCounterInc_70_T_5 + _refCounterInc_70_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_70_T_12 = _refCounterInc_70_T_8 + _refCounterInc_70_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_70 = {{4'd0}, _refCounterInc_70_T_12};
  wire [6:0] _GEN_166 = 7'h46 == deallocate_0_bits ? refCounterInc_70 : _GEN_165; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_71_T_1 = allocate_0_valid & allocateOH_0[71]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_71_T_3 = allocate_1_valid & allocateOH_1[71]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_71_T_8 = _refCounterInc_71_T_1 + _refCounterInc_71_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_71_T_5 = allocate_2_valid & allocateOH_2[71]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_71_T_7 = allocate_3_valid & allocateOH_3[71]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_71_T_10 = _refCounterInc_71_T_5 + _refCounterInc_71_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_71_T_12 = _refCounterInc_71_T_8 + _refCounterInc_71_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_71 = {{4'd0}, _refCounterInc_71_T_12};
  wire [6:0] _GEN_167 = 7'h47 == deallocate_0_bits ? refCounterInc_71 : _GEN_166; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_72_T_1 = allocate_0_valid & allocateOH_0[72]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_72_T_3 = allocate_1_valid & allocateOH_1[72]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_72_T_8 = _refCounterInc_72_T_1 + _refCounterInc_72_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_72_T_5 = allocate_2_valid & allocateOH_2[72]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_72_T_7 = allocate_3_valid & allocateOH_3[72]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_72_T_10 = _refCounterInc_72_T_5 + _refCounterInc_72_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_72_T_12 = _refCounterInc_72_T_8 + _refCounterInc_72_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_72 = {{4'd0}, _refCounterInc_72_T_12};
  wire [6:0] _GEN_168 = 7'h48 == deallocate_0_bits ? refCounterInc_72 : _GEN_167; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_73_T_1 = allocate_0_valid & allocateOH_0[73]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_73_T_3 = allocate_1_valid & allocateOH_1[73]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_73_T_8 = _refCounterInc_73_T_1 + _refCounterInc_73_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_73_T_5 = allocate_2_valid & allocateOH_2[73]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_73_T_7 = allocate_3_valid & allocateOH_3[73]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_73_T_10 = _refCounterInc_73_T_5 + _refCounterInc_73_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_73_T_12 = _refCounterInc_73_T_8 + _refCounterInc_73_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_73 = {{4'd0}, _refCounterInc_73_T_12};
  wire [6:0] _GEN_169 = 7'h49 == deallocate_0_bits ? refCounterInc_73 : _GEN_168; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_74_T_1 = allocate_0_valid & allocateOH_0[74]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_74_T_3 = allocate_1_valid & allocateOH_1[74]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_74_T_8 = _refCounterInc_74_T_1 + _refCounterInc_74_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_74_T_5 = allocate_2_valid & allocateOH_2[74]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_74_T_7 = allocate_3_valid & allocateOH_3[74]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_74_T_10 = _refCounterInc_74_T_5 + _refCounterInc_74_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_74_T_12 = _refCounterInc_74_T_8 + _refCounterInc_74_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_74 = {{4'd0}, _refCounterInc_74_T_12};
  wire [6:0] _GEN_170 = 7'h4a == deallocate_0_bits ? refCounterInc_74 : _GEN_169; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_75_T_1 = allocate_0_valid & allocateOH_0[75]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_75_T_3 = allocate_1_valid & allocateOH_1[75]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_75_T_8 = _refCounterInc_75_T_1 + _refCounterInc_75_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_75_T_5 = allocate_2_valid & allocateOH_2[75]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_75_T_7 = allocate_3_valid & allocateOH_3[75]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_75_T_10 = _refCounterInc_75_T_5 + _refCounterInc_75_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_75_T_12 = _refCounterInc_75_T_8 + _refCounterInc_75_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_75 = {{4'd0}, _refCounterInc_75_T_12};
  wire [6:0] _GEN_171 = 7'h4b == deallocate_0_bits ? refCounterInc_75 : _GEN_170; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_76_T_1 = allocate_0_valid & allocateOH_0[76]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_76_T_3 = allocate_1_valid & allocateOH_1[76]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_76_T_8 = _refCounterInc_76_T_1 + _refCounterInc_76_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_76_T_5 = allocate_2_valid & allocateOH_2[76]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_76_T_7 = allocate_3_valid & allocateOH_3[76]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_76_T_10 = _refCounterInc_76_T_5 + _refCounterInc_76_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_76_T_12 = _refCounterInc_76_T_8 + _refCounterInc_76_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_76 = {{4'd0}, _refCounterInc_76_T_12};
  wire [6:0] _GEN_172 = 7'h4c == deallocate_0_bits ? refCounterInc_76 : _GEN_171; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_77_T_1 = allocate_0_valid & allocateOH_0[77]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_77_T_3 = allocate_1_valid & allocateOH_1[77]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_77_T_8 = _refCounterInc_77_T_1 + _refCounterInc_77_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_77_T_5 = allocate_2_valid & allocateOH_2[77]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_77_T_7 = allocate_3_valid & allocateOH_3[77]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_77_T_10 = _refCounterInc_77_T_5 + _refCounterInc_77_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_77_T_12 = _refCounterInc_77_T_8 + _refCounterInc_77_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_77 = {{4'd0}, _refCounterInc_77_T_12};
  wire [6:0] _GEN_173 = 7'h4d == deallocate_0_bits ? refCounterInc_77 : _GEN_172; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_78_T_1 = allocate_0_valid & allocateOH_0[78]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_78_T_3 = allocate_1_valid & allocateOH_1[78]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_78_T_8 = _refCounterInc_78_T_1 + _refCounterInc_78_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_78_T_5 = allocate_2_valid & allocateOH_2[78]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_78_T_7 = allocate_3_valid & allocateOH_3[78]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_78_T_10 = _refCounterInc_78_T_5 + _refCounterInc_78_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_78_T_12 = _refCounterInc_78_T_8 + _refCounterInc_78_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_78 = {{4'd0}, _refCounterInc_78_T_12};
  wire [6:0] _GEN_174 = 7'h4e == deallocate_0_bits ? refCounterInc_78 : _GEN_173; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_79_T_1 = allocate_0_valid & allocateOH_0[79]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_79_T_3 = allocate_1_valid & allocateOH_1[79]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_79_T_8 = _refCounterInc_79_T_1 + _refCounterInc_79_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_79_T_5 = allocate_2_valid & allocateOH_2[79]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_79_T_7 = allocate_3_valid & allocateOH_3[79]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_79_T_10 = _refCounterInc_79_T_5 + _refCounterInc_79_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_79_T_12 = _refCounterInc_79_T_8 + _refCounterInc_79_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_79 = {{4'd0}, _refCounterInc_79_T_12};
  wire [6:0] _GEN_175 = 7'h4f == deallocate_0_bits ? refCounterInc_79 : _GEN_174; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_80_T_1 = allocate_0_valid & allocateOH_0[80]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_80_T_3 = allocate_1_valid & allocateOH_1[80]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_80_T_8 = _refCounterInc_80_T_1 + _refCounterInc_80_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_80_T_5 = allocate_2_valid & allocateOH_2[80]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_80_T_7 = allocate_3_valid & allocateOH_3[80]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_80_T_10 = _refCounterInc_80_T_5 + _refCounterInc_80_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_80_T_12 = _refCounterInc_80_T_8 + _refCounterInc_80_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_80 = {{4'd0}, _refCounterInc_80_T_12};
  wire [6:0] _GEN_176 = 7'h50 == deallocate_0_bits ? refCounterInc_80 : _GEN_175; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_81_T_1 = allocate_0_valid & allocateOH_0[81]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_81_T_3 = allocate_1_valid & allocateOH_1[81]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_81_T_8 = _refCounterInc_81_T_1 + _refCounterInc_81_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_81_T_5 = allocate_2_valid & allocateOH_2[81]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_81_T_7 = allocate_3_valid & allocateOH_3[81]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_81_T_10 = _refCounterInc_81_T_5 + _refCounterInc_81_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_81_T_12 = _refCounterInc_81_T_8 + _refCounterInc_81_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_81 = {{4'd0}, _refCounterInc_81_T_12};
  wire [6:0] _GEN_177 = 7'h51 == deallocate_0_bits ? refCounterInc_81 : _GEN_176; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_82_T_1 = allocate_0_valid & allocateOH_0[82]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_82_T_3 = allocate_1_valid & allocateOH_1[82]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_82_T_8 = _refCounterInc_82_T_1 + _refCounterInc_82_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_82_T_5 = allocate_2_valid & allocateOH_2[82]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_82_T_7 = allocate_3_valid & allocateOH_3[82]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_82_T_10 = _refCounterInc_82_T_5 + _refCounterInc_82_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_82_T_12 = _refCounterInc_82_T_8 + _refCounterInc_82_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_82 = {{4'd0}, _refCounterInc_82_T_12};
  wire [6:0] _GEN_178 = 7'h52 == deallocate_0_bits ? refCounterInc_82 : _GEN_177; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_83_T_1 = allocate_0_valid & allocateOH_0[83]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_83_T_3 = allocate_1_valid & allocateOH_1[83]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_83_T_8 = _refCounterInc_83_T_1 + _refCounterInc_83_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_83_T_5 = allocate_2_valid & allocateOH_2[83]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_83_T_7 = allocate_3_valid & allocateOH_3[83]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_83_T_10 = _refCounterInc_83_T_5 + _refCounterInc_83_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_83_T_12 = _refCounterInc_83_T_8 + _refCounterInc_83_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_83 = {{4'd0}, _refCounterInc_83_T_12};
  wire [6:0] _GEN_179 = 7'h53 == deallocate_0_bits ? refCounterInc_83 : _GEN_178; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_84_T_1 = allocate_0_valid & allocateOH_0[84]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_84_T_3 = allocate_1_valid & allocateOH_1[84]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_84_T_8 = _refCounterInc_84_T_1 + _refCounterInc_84_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_84_T_5 = allocate_2_valid & allocateOH_2[84]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_84_T_7 = allocate_3_valid & allocateOH_3[84]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_84_T_10 = _refCounterInc_84_T_5 + _refCounterInc_84_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_84_T_12 = _refCounterInc_84_T_8 + _refCounterInc_84_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_84 = {{4'd0}, _refCounterInc_84_T_12};
  wire [6:0] _GEN_180 = 7'h54 == deallocate_0_bits ? refCounterInc_84 : _GEN_179; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_85_T_1 = allocate_0_valid & allocateOH_0[85]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_85_T_3 = allocate_1_valid & allocateOH_1[85]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_85_T_8 = _refCounterInc_85_T_1 + _refCounterInc_85_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_85_T_5 = allocate_2_valid & allocateOH_2[85]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_85_T_7 = allocate_3_valid & allocateOH_3[85]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_85_T_10 = _refCounterInc_85_T_5 + _refCounterInc_85_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_85_T_12 = _refCounterInc_85_T_8 + _refCounterInc_85_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_85 = {{4'd0}, _refCounterInc_85_T_12};
  wire [6:0] _GEN_181 = 7'h55 == deallocate_0_bits ? refCounterInc_85 : _GEN_180; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_86_T_1 = allocate_0_valid & allocateOH_0[86]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_86_T_3 = allocate_1_valid & allocateOH_1[86]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_86_T_8 = _refCounterInc_86_T_1 + _refCounterInc_86_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_86_T_5 = allocate_2_valid & allocateOH_2[86]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_86_T_7 = allocate_3_valid & allocateOH_3[86]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_86_T_10 = _refCounterInc_86_T_5 + _refCounterInc_86_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_86_T_12 = _refCounterInc_86_T_8 + _refCounterInc_86_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_86 = {{4'd0}, _refCounterInc_86_T_12};
  wire [6:0] _GEN_182 = 7'h56 == deallocate_0_bits ? refCounterInc_86 : _GEN_181; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_87_T_1 = allocate_0_valid & allocateOH_0[87]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_87_T_3 = allocate_1_valid & allocateOH_1[87]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_87_T_8 = _refCounterInc_87_T_1 + _refCounterInc_87_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_87_T_5 = allocate_2_valid & allocateOH_2[87]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_87_T_7 = allocate_3_valid & allocateOH_3[87]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_87_T_10 = _refCounterInc_87_T_5 + _refCounterInc_87_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_87_T_12 = _refCounterInc_87_T_8 + _refCounterInc_87_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_87 = {{4'd0}, _refCounterInc_87_T_12};
  wire [6:0] _GEN_183 = 7'h57 == deallocate_0_bits ? refCounterInc_87 : _GEN_182; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_88_T_1 = allocate_0_valid & allocateOH_0[88]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_88_T_3 = allocate_1_valid & allocateOH_1[88]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_88_T_8 = _refCounterInc_88_T_1 + _refCounterInc_88_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_88_T_5 = allocate_2_valid & allocateOH_2[88]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_88_T_7 = allocate_3_valid & allocateOH_3[88]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_88_T_10 = _refCounterInc_88_T_5 + _refCounterInc_88_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_88_T_12 = _refCounterInc_88_T_8 + _refCounterInc_88_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_88 = {{4'd0}, _refCounterInc_88_T_12};
  wire [6:0] _GEN_184 = 7'h58 == deallocate_0_bits ? refCounterInc_88 : _GEN_183; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_89_T_1 = allocate_0_valid & allocateOH_0[89]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_89_T_3 = allocate_1_valid & allocateOH_1[89]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_89_T_8 = _refCounterInc_89_T_1 + _refCounterInc_89_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_89_T_5 = allocate_2_valid & allocateOH_2[89]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_89_T_7 = allocate_3_valid & allocateOH_3[89]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_89_T_10 = _refCounterInc_89_T_5 + _refCounterInc_89_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_89_T_12 = _refCounterInc_89_T_8 + _refCounterInc_89_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_89 = {{4'd0}, _refCounterInc_89_T_12};
  wire [6:0] _GEN_185 = 7'h59 == deallocate_0_bits ? refCounterInc_89 : _GEN_184; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_90_T_1 = allocate_0_valid & allocateOH_0[90]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_90_T_3 = allocate_1_valid & allocateOH_1[90]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_90_T_8 = _refCounterInc_90_T_1 + _refCounterInc_90_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_90_T_5 = allocate_2_valid & allocateOH_2[90]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_90_T_7 = allocate_3_valid & allocateOH_3[90]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_90_T_10 = _refCounterInc_90_T_5 + _refCounterInc_90_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_90_T_12 = _refCounterInc_90_T_8 + _refCounterInc_90_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_90 = {{4'd0}, _refCounterInc_90_T_12};
  wire [6:0] _GEN_186 = 7'h5a == deallocate_0_bits ? refCounterInc_90 : _GEN_185; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_91_T_1 = allocate_0_valid & allocateOH_0[91]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_91_T_3 = allocate_1_valid & allocateOH_1[91]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_91_T_8 = _refCounterInc_91_T_1 + _refCounterInc_91_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_91_T_5 = allocate_2_valid & allocateOH_2[91]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_91_T_7 = allocate_3_valid & allocateOH_3[91]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_91_T_10 = _refCounterInc_91_T_5 + _refCounterInc_91_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_91_T_12 = _refCounterInc_91_T_8 + _refCounterInc_91_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_91 = {{4'd0}, _refCounterInc_91_T_12};
  wire [6:0] _GEN_187 = 7'h5b == deallocate_0_bits ? refCounterInc_91 : _GEN_186; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_92_T_1 = allocate_0_valid & allocateOH_0[92]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_92_T_3 = allocate_1_valid & allocateOH_1[92]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_92_T_8 = _refCounterInc_92_T_1 + _refCounterInc_92_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_92_T_5 = allocate_2_valid & allocateOH_2[92]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_92_T_7 = allocate_3_valid & allocateOH_3[92]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_92_T_10 = _refCounterInc_92_T_5 + _refCounterInc_92_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_92_T_12 = _refCounterInc_92_T_8 + _refCounterInc_92_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_92 = {{4'd0}, _refCounterInc_92_T_12};
  wire [6:0] _GEN_188 = 7'h5c == deallocate_0_bits ? refCounterInc_92 : _GEN_187; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_93_T_1 = allocate_0_valid & allocateOH_0[93]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_93_T_3 = allocate_1_valid & allocateOH_1[93]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_93_T_8 = _refCounterInc_93_T_1 + _refCounterInc_93_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_93_T_5 = allocate_2_valid & allocateOH_2[93]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_93_T_7 = allocate_3_valid & allocateOH_3[93]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_93_T_10 = _refCounterInc_93_T_5 + _refCounterInc_93_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_93_T_12 = _refCounterInc_93_T_8 + _refCounterInc_93_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_93 = {{4'd0}, _refCounterInc_93_T_12};
  wire [6:0] _GEN_189 = 7'h5d == deallocate_0_bits ? refCounterInc_93 : _GEN_188; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_94_T_1 = allocate_0_valid & allocateOH_0[94]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_94_T_3 = allocate_1_valid & allocateOH_1[94]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_94_T_8 = _refCounterInc_94_T_1 + _refCounterInc_94_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_94_T_5 = allocate_2_valid & allocateOH_2[94]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_94_T_7 = allocate_3_valid & allocateOH_3[94]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_94_T_10 = _refCounterInc_94_T_5 + _refCounterInc_94_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_94_T_12 = _refCounterInc_94_T_8 + _refCounterInc_94_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_94 = {{4'd0}, _refCounterInc_94_T_12};
  wire [6:0] _GEN_190 = 7'h5e == deallocate_0_bits ? refCounterInc_94 : _GEN_189; // @[RefCounter.scala 56:{39,39}]
  wire  _refCounterInc_95_T_1 = allocate_0_valid & allocateOH_0[95]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_95_T_3 = allocate_1_valid & allocateOH_1[95]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_95_T_8 = _refCounterInc_95_T_1 + _refCounterInc_95_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterInc_95_T_5 = allocate_2_valid & allocateOH_2[95]; // @[RefCounter.scala 80:87]
  wire  _refCounterInc_95_T_7 = allocate_3_valid & allocateOH_3[95]; // @[RefCounter.scala 80:87]
  wire [1:0] _refCounterInc_95_T_10 = _refCounterInc_95_T_5 + _refCounterInc_95_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterInc_95_T_12 = _refCounterInc_95_T_8 + _refCounterInc_95_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterInc_95 = {{4'd0}, _refCounterInc_95_T_12};
  wire [6:0] _GEN_191 = 7'h5f == deallocate_0_bits ? refCounterInc_95 : _GEN_190; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _isFreed_T_1 = _GEN_95 + _GEN_191; // @[RefCounter.scala 56:39]
  wire  _refCounterDec_1_T_1 = deallocate_0_valid & deallocateOH_0[1]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_1_T_3 = deallocate_1_valid & deallocateOH_1[1]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_1_T_8 = _refCounterDec_1_T_1 + _refCounterDec_1_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_1_T_5 = deallocate_2_valid & deallocateOH_2[1]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_1_T_7 = deallocate_3_valid & deallocateOH_3[1]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_1_T_10 = _refCounterDec_1_T_5 + _refCounterDec_1_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_1_T_12 = _refCounterDec_1_T_8 + _refCounterDec_1_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_1 = {{4'd0}, _refCounterDec_1_T_12};
  wire [6:0] _GEN_193 = 7'h1 == deallocate_0_bits ? refCounterDec_1 : 7'h1; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_2_T_1 = deallocate_0_valid & deallocateOH_0[2]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_2_T_3 = deallocate_1_valid & deallocateOH_1[2]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_2_T_8 = _refCounterDec_2_T_1 + _refCounterDec_2_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_2_T_5 = deallocate_2_valid & deallocateOH_2[2]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_2_T_7 = deallocate_3_valid & deallocateOH_3[2]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_2_T_10 = _refCounterDec_2_T_5 + _refCounterDec_2_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_2_T_12 = _refCounterDec_2_T_8 + _refCounterDec_2_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_2 = {{4'd0}, _refCounterDec_2_T_12};
  wire [6:0] _GEN_194 = 7'h2 == deallocate_0_bits ? refCounterDec_2 : _GEN_193; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_3_T_1 = deallocate_0_valid & deallocateOH_0[3]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_3_T_3 = deallocate_1_valid & deallocateOH_1[3]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_3_T_8 = _refCounterDec_3_T_1 + _refCounterDec_3_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_3_T_5 = deallocate_2_valid & deallocateOH_2[3]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_3_T_7 = deallocate_3_valid & deallocateOH_3[3]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_3_T_10 = _refCounterDec_3_T_5 + _refCounterDec_3_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_3_T_12 = _refCounterDec_3_T_8 + _refCounterDec_3_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_3 = {{4'd0}, _refCounterDec_3_T_12};
  wire [6:0] _GEN_195 = 7'h3 == deallocate_0_bits ? refCounterDec_3 : _GEN_194; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_4_T_1 = deallocate_0_valid & deallocateOH_0[4]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_4_T_3 = deallocate_1_valid & deallocateOH_1[4]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_4_T_8 = _refCounterDec_4_T_1 + _refCounterDec_4_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_4_T_5 = deallocate_2_valid & deallocateOH_2[4]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_4_T_7 = deallocate_3_valid & deallocateOH_3[4]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_4_T_10 = _refCounterDec_4_T_5 + _refCounterDec_4_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_4_T_12 = _refCounterDec_4_T_8 + _refCounterDec_4_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_4 = {{4'd0}, _refCounterDec_4_T_12};
  wire [6:0] _GEN_196 = 7'h4 == deallocate_0_bits ? refCounterDec_4 : _GEN_195; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_5_T_1 = deallocate_0_valid & deallocateOH_0[5]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_5_T_3 = deallocate_1_valid & deallocateOH_1[5]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_5_T_8 = _refCounterDec_5_T_1 + _refCounterDec_5_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_5_T_5 = deallocate_2_valid & deallocateOH_2[5]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_5_T_7 = deallocate_3_valid & deallocateOH_3[5]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_5_T_10 = _refCounterDec_5_T_5 + _refCounterDec_5_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_5_T_12 = _refCounterDec_5_T_8 + _refCounterDec_5_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_5 = {{4'd0}, _refCounterDec_5_T_12};
  wire [6:0] _GEN_197 = 7'h5 == deallocate_0_bits ? refCounterDec_5 : _GEN_196; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_6_T_1 = deallocate_0_valid & deallocateOH_0[6]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_6_T_3 = deallocate_1_valid & deallocateOH_1[6]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_6_T_8 = _refCounterDec_6_T_1 + _refCounterDec_6_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_6_T_5 = deallocate_2_valid & deallocateOH_2[6]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_6_T_7 = deallocate_3_valid & deallocateOH_3[6]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_6_T_10 = _refCounterDec_6_T_5 + _refCounterDec_6_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_6_T_12 = _refCounterDec_6_T_8 + _refCounterDec_6_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_6 = {{4'd0}, _refCounterDec_6_T_12};
  wire [6:0] _GEN_198 = 7'h6 == deallocate_0_bits ? refCounterDec_6 : _GEN_197; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_7_T_1 = deallocate_0_valid & deallocateOH_0[7]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_7_T_3 = deallocate_1_valid & deallocateOH_1[7]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_7_T_8 = _refCounterDec_7_T_1 + _refCounterDec_7_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_7_T_5 = deallocate_2_valid & deallocateOH_2[7]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_7_T_7 = deallocate_3_valid & deallocateOH_3[7]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_7_T_10 = _refCounterDec_7_T_5 + _refCounterDec_7_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_7_T_12 = _refCounterDec_7_T_8 + _refCounterDec_7_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_7 = {{4'd0}, _refCounterDec_7_T_12};
  wire [6:0] _GEN_199 = 7'h7 == deallocate_0_bits ? refCounterDec_7 : _GEN_198; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_8_T_1 = deallocate_0_valid & deallocateOH_0[8]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_8_T_3 = deallocate_1_valid & deallocateOH_1[8]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_8_T_8 = _refCounterDec_8_T_1 + _refCounterDec_8_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_8_T_5 = deallocate_2_valid & deallocateOH_2[8]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_8_T_7 = deallocate_3_valid & deallocateOH_3[8]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_8_T_10 = _refCounterDec_8_T_5 + _refCounterDec_8_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_8_T_12 = _refCounterDec_8_T_8 + _refCounterDec_8_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_8 = {{4'd0}, _refCounterDec_8_T_12};
  wire [6:0] _GEN_200 = 7'h8 == deallocate_0_bits ? refCounterDec_8 : _GEN_199; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_9_T_1 = deallocate_0_valid & deallocateOH_0[9]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_9_T_3 = deallocate_1_valid & deallocateOH_1[9]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_9_T_8 = _refCounterDec_9_T_1 + _refCounterDec_9_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_9_T_5 = deallocate_2_valid & deallocateOH_2[9]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_9_T_7 = deallocate_3_valid & deallocateOH_3[9]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_9_T_10 = _refCounterDec_9_T_5 + _refCounterDec_9_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_9_T_12 = _refCounterDec_9_T_8 + _refCounterDec_9_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_9 = {{4'd0}, _refCounterDec_9_T_12};
  wire [6:0] _GEN_201 = 7'h9 == deallocate_0_bits ? refCounterDec_9 : _GEN_200; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_10_T_1 = deallocate_0_valid & deallocateOH_0[10]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_10_T_3 = deallocate_1_valid & deallocateOH_1[10]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_10_T_8 = _refCounterDec_10_T_1 + _refCounterDec_10_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_10_T_5 = deallocate_2_valid & deallocateOH_2[10]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_10_T_7 = deallocate_3_valid & deallocateOH_3[10]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_10_T_10 = _refCounterDec_10_T_5 + _refCounterDec_10_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_10_T_12 = _refCounterDec_10_T_8 + _refCounterDec_10_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_10 = {{4'd0}, _refCounterDec_10_T_12};
  wire [6:0] _GEN_202 = 7'ha == deallocate_0_bits ? refCounterDec_10 : _GEN_201; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_11_T_1 = deallocate_0_valid & deallocateOH_0[11]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_11_T_3 = deallocate_1_valid & deallocateOH_1[11]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_11_T_8 = _refCounterDec_11_T_1 + _refCounterDec_11_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_11_T_5 = deallocate_2_valid & deallocateOH_2[11]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_11_T_7 = deallocate_3_valid & deallocateOH_3[11]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_11_T_10 = _refCounterDec_11_T_5 + _refCounterDec_11_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_11_T_12 = _refCounterDec_11_T_8 + _refCounterDec_11_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_11 = {{4'd0}, _refCounterDec_11_T_12};
  wire [6:0] _GEN_203 = 7'hb == deallocate_0_bits ? refCounterDec_11 : _GEN_202; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_12_T_1 = deallocate_0_valid & deallocateOH_0[12]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_12_T_3 = deallocate_1_valid & deallocateOH_1[12]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_12_T_8 = _refCounterDec_12_T_1 + _refCounterDec_12_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_12_T_5 = deallocate_2_valid & deallocateOH_2[12]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_12_T_7 = deallocate_3_valid & deallocateOH_3[12]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_12_T_10 = _refCounterDec_12_T_5 + _refCounterDec_12_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_12_T_12 = _refCounterDec_12_T_8 + _refCounterDec_12_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_12 = {{4'd0}, _refCounterDec_12_T_12};
  wire [6:0] _GEN_204 = 7'hc == deallocate_0_bits ? refCounterDec_12 : _GEN_203; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_13_T_1 = deallocate_0_valid & deallocateOH_0[13]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_13_T_3 = deallocate_1_valid & deallocateOH_1[13]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_13_T_8 = _refCounterDec_13_T_1 + _refCounterDec_13_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_13_T_5 = deallocate_2_valid & deallocateOH_2[13]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_13_T_7 = deallocate_3_valid & deallocateOH_3[13]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_13_T_10 = _refCounterDec_13_T_5 + _refCounterDec_13_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_13_T_12 = _refCounterDec_13_T_8 + _refCounterDec_13_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_13 = {{4'd0}, _refCounterDec_13_T_12};
  wire [6:0] _GEN_205 = 7'hd == deallocate_0_bits ? refCounterDec_13 : _GEN_204; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_14_T_1 = deallocate_0_valid & deallocateOH_0[14]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_14_T_3 = deallocate_1_valid & deallocateOH_1[14]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_14_T_8 = _refCounterDec_14_T_1 + _refCounterDec_14_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_14_T_5 = deallocate_2_valid & deallocateOH_2[14]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_14_T_7 = deallocate_3_valid & deallocateOH_3[14]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_14_T_10 = _refCounterDec_14_T_5 + _refCounterDec_14_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_14_T_12 = _refCounterDec_14_T_8 + _refCounterDec_14_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_14 = {{4'd0}, _refCounterDec_14_T_12};
  wire [6:0] _GEN_206 = 7'he == deallocate_0_bits ? refCounterDec_14 : _GEN_205; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_15_T_1 = deallocate_0_valid & deallocateOH_0[15]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_15_T_3 = deallocate_1_valid & deallocateOH_1[15]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_15_T_8 = _refCounterDec_15_T_1 + _refCounterDec_15_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_15_T_5 = deallocate_2_valid & deallocateOH_2[15]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_15_T_7 = deallocate_3_valid & deallocateOH_3[15]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_15_T_10 = _refCounterDec_15_T_5 + _refCounterDec_15_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_15_T_12 = _refCounterDec_15_T_8 + _refCounterDec_15_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_15 = {{4'd0}, _refCounterDec_15_T_12};
  wire [6:0] _GEN_207 = 7'hf == deallocate_0_bits ? refCounterDec_15 : _GEN_206; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_16_T_1 = deallocate_0_valid & deallocateOH_0[16]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_16_T_3 = deallocate_1_valid & deallocateOH_1[16]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_16_T_8 = _refCounterDec_16_T_1 + _refCounterDec_16_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_16_T_5 = deallocate_2_valid & deallocateOH_2[16]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_16_T_7 = deallocate_3_valid & deallocateOH_3[16]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_16_T_10 = _refCounterDec_16_T_5 + _refCounterDec_16_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_16_T_12 = _refCounterDec_16_T_8 + _refCounterDec_16_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_16 = {{4'd0}, _refCounterDec_16_T_12};
  wire [6:0] _GEN_208 = 7'h10 == deallocate_0_bits ? refCounterDec_16 : _GEN_207; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_17_T_1 = deallocate_0_valid & deallocateOH_0[17]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_17_T_3 = deallocate_1_valid & deallocateOH_1[17]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_17_T_8 = _refCounterDec_17_T_1 + _refCounterDec_17_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_17_T_5 = deallocate_2_valid & deallocateOH_2[17]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_17_T_7 = deallocate_3_valid & deallocateOH_3[17]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_17_T_10 = _refCounterDec_17_T_5 + _refCounterDec_17_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_17_T_12 = _refCounterDec_17_T_8 + _refCounterDec_17_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_17 = {{4'd0}, _refCounterDec_17_T_12};
  wire [6:0] _GEN_209 = 7'h11 == deallocate_0_bits ? refCounterDec_17 : _GEN_208; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_18_T_1 = deallocate_0_valid & deallocateOH_0[18]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_18_T_3 = deallocate_1_valid & deallocateOH_1[18]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_18_T_8 = _refCounterDec_18_T_1 + _refCounterDec_18_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_18_T_5 = deallocate_2_valid & deallocateOH_2[18]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_18_T_7 = deallocate_3_valid & deallocateOH_3[18]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_18_T_10 = _refCounterDec_18_T_5 + _refCounterDec_18_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_18_T_12 = _refCounterDec_18_T_8 + _refCounterDec_18_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_18 = {{4'd0}, _refCounterDec_18_T_12};
  wire [6:0] _GEN_210 = 7'h12 == deallocate_0_bits ? refCounterDec_18 : _GEN_209; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_19_T_1 = deallocate_0_valid & deallocateOH_0[19]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_19_T_3 = deallocate_1_valid & deallocateOH_1[19]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_19_T_8 = _refCounterDec_19_T_1 + _refCounterDec_19_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_19_T_5 = deallocate_2_valid & deallocateOH_2[19]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_19_T_7 = deallocate_3_valid & deallocateOH_3[19]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_19_T_10 = _refCounterDec_19_T_5 + _refCounterDec_19_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_19_T_12 = _refCounterDec_19_T_8 + _refCounterDec_19_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_19 = {{4'd0}, _refCounterDec_19_T_12};
  wire [6:0] _GEN_211 = 7'h13 == deallocate_0_bits ? refCounterDec_19 : _GEN_210; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_20_T_1 = deallocate_0_valid & deallocateOH_0[20]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_20_T_3 = deallocate_1_valid & deallocateOH_1[20]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_20_T_8 = _refCounterDec_20_T_1 + _refCounterDec_20_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_20_T_5 = deallocate_2_valid & deallocateOH_2[20]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_20_T_7 = deallocate_3_valid & deallocateOH_3[20]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_20_T_10 = _refCounterDec_20_T_5 + _refCounterDec_20_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_20_T_12 = _refCounterDec_20_T_8 + _refCounterDec_20_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_20 = {{4'd0}, _refCounterDec_20_T_12};
  wire [6:0] _GEN_212 = 7'h14 == deallocate_0_bits ? refCounterDec_20 : _GEN_211; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_21_T_1 = deallocate_0_valid & deallocateOH_0[21]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_21_T_3 = deallocate_1_valid & deallocateOH_1[21]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_21_T_8 = _refCounterDec_21_T_1 + _refCounterDec_21_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_21_T_5 = deallocate_2_valid & deallocateOH_2[21]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_21_T_7 = deallocate_3_valid & deallocateOH_3[21]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_21_T_10 = _refCounterDec_21_T_5 + _refCounterDec_21_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_21_T_12 = _refCounterDec_21_T_8 + _refCounterDec_21_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_21 = {{4'd0}, _refCounterDec_21_T_12};
  wire [6:0] _GEN_213 = 7'h15 == deallocate_0_bits ? refCounterDec_21 : _GEN_212; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_22_T_1 = deallocate_0_valid & deallocateOH_0[22]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_22_T_3 = deallocate_1_valid & deallocateOH_1[22]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_22_T_8 = _refCounterDec_22_T_1 + _refCounterDec_22_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_22_T_5 = deallocate_2_valid & deallocateOH_2[22]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_22_T_7 = deallocate_3_valid & deallocateOH_3[22]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_22_T_10 = _refCounterDec_22_T_5 + _refCounterDec_22_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_22_T_12 = _refCounterDec_22_T_8 + _refCounterDec_22_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_22 = {{4'd0}, _refCounterDec_22_T_12};
  wire [6:0] _GEN_214 = 7'h16 == deallocate_0_bits ? refCounterDec_22 : _GEN_213; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_23_T_1 = deallocate_0_valid & deallocateOH_0[23]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_23_T_3 = deallocate_1_valid & deallocateOH_1[23]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_23_T_8 = _refCounterDec_23_T_1 + _refCounterDec_23_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_23_T_5 = deallocate_2_valid & deallocateOH_2[23]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_23_T_7 = deallocate_3_valid & deallocateOH_3[23]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_23_T_10 = _refCounterDec_23_T_5 + _refCounterDec_23_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_23_T_12 = _refCounterDec_23_T_8 + _refCounterDec_23_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_23 = {{4'd0}, _refCounterDec_23_T_12};
  wire [6:0] _GEN_215 = 7'h17 == deallocate_0_bits ? refCounterDec_23 : _GEN_214; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_24_T_1 = deallocate_0_valid & deallocateOH_0[24]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_24_T_3 = deallocate_1_valid & deallocateOH_1[24]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_24_T_8 = _refCounterDec_24_T_1 + _refCounterDec_24_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_24_T_5 = deallocate_2_valid & deallocateOH_2[24]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_24_T_7 = deallocate_3_valid & deallocateOH_3[24]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_24_T_10 = _refCounterDec_24_T_5 + _refCounterDec_24_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_24_T_12 = _refCounterDec_24_T_8 + _refCounterDec_24_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_24 = {{4'd0}, _refCounterDec_24_T_12};
  wire [6:0] _GEN_216 = 7'h18 == deallocate_0_bits ? refCounterDec_24 : _GEN_215; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_25_T_1 = deallocate_0_valid & deallocateOH_0[25]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_25_T_3 = deallocate_1_valid & deallocateOH_1[25]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_25_T_8 = _refCounterDec_25_T_1 + _refCounterDec_25_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_25_T_5 = deallocate_2_valid & deallocateOH_2[25]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_25_T_7 = deallocate_3_valid & deallocateOH_3[25]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_25_T_10 = _refCounterDec_25_T_5 + _refCounterDec_25_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_25_T_12 = _refCounterDec_25_T_8 + _refCounterDec_25_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_25 = {{4'd0}, _refCounterDec_25_T_12};
  wire [6:0] _GEN_217 = 7'h19 == deallocate_0_bits ? refCounterDec_25 : _GEN_216; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_26_T_1 = deallocate_0_valid & deallocateOH_0[26]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_26_T_3 = deallocate_1_valid & deallocateOH_1[26]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_26_T_8 = _refCounterDec_26_T_1 + _refCounterDec_26_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_26_T_5 = deallocate_2_valid & deallocateOH_2[26]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_26_T_7 = deallocate_3_valid & deallocateOH_3[26]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_26_T_10 = _refCounterDec_26_T_5 + _refCounterDec_26_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_26_T_12 = _refCounterDec_26_T_8 + _refCounterDec_26_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_26 = {{4'd0}, _refCounterDec_26_T_12};
  wire [6:0] _GEN_218 = 7'h1a == deallocate_0_bits ? refCounterDec_26 : _GEN_217; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_27_T_1 = deallocate_0_valid & deallocateOH_0[27]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_27_T_3 = deallocate_1_valid & deallocateOH_1[27]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_27_T_8 = _refCounterDec_27_T_1 + _refCounterDec_27_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_27_T_5 = deallocate_2_valid & deallocateOH_2[27]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_27_T_7 = deallocate_3_valid & deallocateOH_3[27]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_27_T_10 = _refCounterDec_27_T_5 + _refCounterDec_27_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_27_T_12 = _refCounterDec_27_T_8 + _refCounterDec_27_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_27 = {{4'd0}, _refCounterDec_27_T_12};
  wire [6:0] _GEN_219 = 7'h1b == deallocate_0_bits ? refCounterDec_27 : _GEN_218; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_28_T_1 = deallocate_0_valid & deallocateOH_0[28]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_28_T_3 = deallocate_1_valid & deallocateOH_1[28]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_28_T_8 = _refCounterDec_28_T_1 + _refCounterDec_28_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_28_T_5 = deallocate_2_valid & deallocateOH_2[28]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_28_T_7 = deallocate_3_valid & deallocateOH_3[28]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_28_T_10 = _refCounterDec_28_T_5 + _refCounterDec_28_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_28_T_12 = _refCounterDec_28_T_8 + _refCounterDec_28_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_28 = {{4'd0}, _refCounterDec_28_T_12};
  wire [6:0] _GEN_220 = 7'h1c == deallocate_0_bits ? refCounterDec_28 : _GEN_219; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_29_T_1 = deallocate_0_valid & deallocateOH_0[29]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_29_T_3 = deallocate_1_valid & deallocateOH_1[29]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_29_T_8 = _refCounterDec_29_T_1 + _refCounterDec_29_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_29_T_5 = deallocate_2_valid & deallocateOH_2[29]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_29_T_7 = deallocate_3_valid & deallocateOH_3[29]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_29_T_10 = _refCounterDec_29_T_5 + _refCounterDec_29_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_29_T_12 = _refCounterDec_29_T_8 + _refCounterDec_29_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_29 = {{4'd0}, _refCounterDec_29_T_12};
  wire [6:0] _GEN_221 = 7'h1d == deallocate_0_bits ? refCounterDec_29 : _GEN_220; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_30_T_1 = deallocate_0_valid & deallocateOH_0[30]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_30_T_3 = deallocate_1_valid & deallocateOH_1[30]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_30_T_8 = _refCounterDec_30_T_1 + _refCounterDec_30_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_30_T_5 = deallocate_2_valid & deallocateOH_2[30]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_30_T_7 = deallocate_3_valid & deallocateOH_3[30]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_30_T_10 = _refCounterDec_30_T_5 + _refCounterDec_30_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_30_T_12 = _refCounterDec_30_T_8 + _refCounterDec_30_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_30 = {{4'd0}, _refCounterDec_30_T_12};
  wire [6:0] _GEN_222 = 7'h1e == deallocate_0_bits ? refCounterDec_30 : _GEN_221; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_31_T_1 = deallocate_0_valid & deallocateOH_0[31]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_31_T_3 = deallocate_1_valid & deallocateOH_1[31]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_31_T_8 = _refCounterDec_31_T_1 + _refCounterDec_31_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_31_T_5 = deallocate_2_valid & deallocateOH_2[31]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_31_T_7 = deallocate_3_valid & deallocateOH_3[31]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_31_T_10 = _refCounterDec_31_T_5 + _refCounterDec_31_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_31_T_12 = _refCounterDec_31_T_8 + _refCounterDec_31_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_31 = {{4'd0}, _refCounterDec_31_T_12};
  wire [6:0] _GEN_223 = 7'h1f == deallocate_0_bits ? refCounterDec_31 : _GEN_222; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_32_T_1 = deallocate_0_valid & deallocateOH_0[32]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_32_T_3 = deallocate_1_valid & deallocateOH_1[32]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_32_T_8 = _refCounterDec_32_T_1 + _refCounterDec_32_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_32_T_5 = deallocate_2_valid & deallocateOH_2[32]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_32_T_7 = deallocate_3_valid & deallocateOH_3[32]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_32_T_10 = _refCounterDec_32_T_5 + _refCounterDec_32_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_32_T_12 = _refCounterDec_32_T_8 + _refCounterDec_32_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_32 = {{4'd0}, _refCounterDec_32_T_12};
  wire [6:0] _GEN_224 = 7'h20 == deallocate_0_bits ? refCounterDec_32 : _GEN_223; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_33_T_1 = deallocate_0_valid & deallocateOH_0[33]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_33_T_3 = deallocate_1_valid & deallocateOH_1[33]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_33_T_8 = _refCounterDec_33_T_1 + _refCounterDec_33_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_33_T_5 = deallocate_2_valid & deallocateOH_2[33]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_33_T_7 = deallocate_3_valid & deallocateOH_3[33]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_33_T_10 = _refCounterDec_33_T_5 + _refCounterDec_33_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_33_T_12 = _refCounterDec_33_T_8 + _refCounterDec_33_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_33 = {{4'd0}, _refCounterDec_33_T_12};
  wire [6:0] _GEN_225 = 7'h21 == deallocate_0_bits ? refCounterDec_33 : _GEN_224; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_34_T_1 = deallocate_0_valid & deallocateOH_0[34]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_34_T_3 = deallocate_1_valid & deallocateOH_1[34]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_34_T_8 = _refCounterDec_34_T_1 + _refCounterDec_34_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_34_T_5 = deallocate_2_valid & deallocateOH_2[34]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_34_T_7 = deallocate_3_valid & deallocateOH_3[34]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_34_T_10 = _refCounterDec_34_T_5 + _refCounterDec_34_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_34_T_12 = _refCounterDec_34_T_8 + _refCounterDec_34_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_34 = {{4'd0}, _refCounterDec_34_T_12};
  wire [6:0] _GEN_226 = 7'h22 == deallocate_0_bits ? refCounterDec_34 : _GEN_225; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_35_T_1 = deallocate_0_valid & deallocateOH_0[35]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_35_T_3 = deallocate_1_valid & deallocateOH_1[35]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_35_T_8 = _refCounterDec_35_T_1 + _refCounterDec_35_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_35_T_5 = deallocate_2_valid & deallocateOH_2[35]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_35_T_7 = deallocate_3_valid & deallocateOH_3[35]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_35_T_10 = _refCounterDec_35_T_5 + _refCounterDec_35_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_35_T_12 = _refCounterDec_35_T_8 + _refCounterDec_35_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_35 = {{4'd0}, _refCounterDec_35_T_12};
  wire [6:0] _GEN_227 = 7'h23 == deallocate_0_bits ? refCounterDec_35 : _GEN_226; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_36_T_1 = deallocate_0_valid & deallocateOH_0[36]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_36_T_3 = deallocate_1_valid & deallocateOH_1[36]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_36_T_8 = _refCounterDec_36_T_1 + _refCounterDec_36_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_36_T_5 = deallocate_2_valid & deallocateOH_2[36]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_36_T_7 = deallocate_3_valid & deallocateOH_3[36]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_36_T_10 = _refCounterDec_36_T_5 + _refCounterDec_36_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_36_T_12 = _refCounterDec_36_T_8 + _refCounterDec_36_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_36 = {{4'd0}, _refCounterDec_36_T_12};
  wire [6:0] _GEN_228 = 7'h24 == deallocate_0_bits ? refCounterDec_36 : _GEN_227; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_37_T_1 = deallocate_0_valid & deallocateOH_0[37]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_37_T_3 = deallocate_1_valid & deallocateOH_1[37]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_37_T_8 = _refCounterDec_37_T_1 + _refCounterDec_37_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_37_T_5 = deallocate_2_valid & deallocateOH_2[37]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_37_T_7 = deallocate_3_valid & deallocateOH_3[37]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_37_T_10 = _refCounterDec_37_T_5 + _refCounterDec_37_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_37_T_12 = _refCounterDec_37_T_8 + _refCounterDec_37_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_37 = {{4'd0}, _refCounterDec_37_T_12};
  wire [6:0] _GEN_229 = 7'h25 == deallocate_0_bits ? refCounterDec_37 : _GEN_228; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_38_T_1 = deallocate_0_valid & deallocateOH_0[38]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_38_T_3 = deallocate_1_valid & deallocateOH_1[38]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_38_T_8 = _refCounterDec_38_T_1 + _refCounterDec_38_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_38_T_5 = deallocate_2_valid & deallocateOH_2[38]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_38_T_7 = deallocate_3_valid & deallocateOH_3[38]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_38_T_10 = _refCounterDec_38_T_5 + _refCounterDec_38_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_38_T_12 = _refCounterDec_38_T_8 + _refCounterDec_38_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_38 = {{4'd0}, _refCounterDec_38_T_12};
  wire [6:0] _GEN_230 = 7'h26 == deallocate_0_bits ? refCounterDec_38 : _GEN_229; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_39_T_1 = deallocate_0_valid & deallocateOH_0[39]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_39_T_3 = deallocate_1_valid & deallocateOH_1[39]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_39_T_8 = _refCounterDec_39_T_1 + _refCounterDec_39_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_39_T_5 = deallocate_2_valid & deallocateOH_2[39]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_39_T_7 = deallocate_3_valid & deallocateOH_3[39]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_39_T_10 = _refCounterDec_39_T_5 + _refCounterDec_39_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_39_T_12 = _refCounterDec_39_T_8 + _refCounterDec_39_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_39 = {{4'd0}, _refCounterDec_39_T_12};
  wire [6:0] _GEN_231 = 7'h27 == deallocate_0_bits ? refCounterDec_39 : _GEN_230; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_40_T_1 = deallocate_0_valid & deallocateOH_0[40]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_40_T_3 = deallocate_1_valid & deallocateOH_1[40]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_40_T_8 = _refCounterDec_40_T_1 + _refCounterDec_40_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_40_T_5 = deallocate_2_valid & deallocateOH_2[40]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_40_T_7 = deallocate_3_valid & deallocateOH_3[40]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_40_T_10 = _refCounterDec_40_T_5 + _refCounterDec_40_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_40_T_12 = _refCounterDec_40_T_8 + _refCounterDec_40_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_40 = {{4'd0}, _refCounterDec_40_T_12};
  wire [6:0] _GEN_232 = 7'h28 == deallocate_0_bits ? refCounterDec_40 : _GEN_231; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_41_T_1 = deallocate_0_valid & deallocateOH_0[41]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_41_T_3 = deallocate_1_valid & deallocateOH_1[41]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_41_T_8 = _refCounterDec_41_T_1 + _refCounterDec_41_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_41_T_5 = deallocate_2_valid & deallocateOH_2[41]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_41_T_7 = deallocate_3_valid & deallocateOH_3[41]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_41_T_10 = _refCounterDec_41_T_5 + _refCounterDec_41_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_41_T_12 = _refCounterDec_41_T_8 + _refCounterDec_41_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_41 = {{4'd0}, _refCounterDec_41_T_12};
  wire [6:0] _GEN_233 = 7'h29 == deallocate_0_bits ? refCounterDec_41 : _GEN_232; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_42_T_1 = deallocate_0_valid & deallocateOH_0[42]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_42_T_3 = deallocate_1_valid & deallocateOH_1[42]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_42_T_8 = _refCounterDec_42_T_1 + _refCounterDec_42_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_42_T_5 = deallocate_2_valid & deallocateOH_2[42]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_42_T_7 = deallocate_3_valid & deallocateOH_3[42]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_42_T_10 = _refCounterDec_42_T_5 + _refCounterDec_42_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_42_T_12 = _refCounterDec_42_T_8 + _refCounterDec_42_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_42 = {{4'd0}, _refCounterDec_42_T_12};
  wire [6:0] _GEN_234 = 7'h2a == deallocate_0_bits ? refCounterDec_42 : _GEN_233; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_43_T_1 = deallocate_0_valid & deallocateOH_0[43]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_43_T_3 = deallocate_1_valid & deallocateOH_1[43]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_43_T_8 = _refCounterDec_43_T_1 + _refCounterDec_43_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_43_T_5 = deallocate_2_valid & deallocateOH_2[43]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_43_T_7 = deallocate_3_valid & deallocateOH_3[43]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_43_T_10 = _refCounterDec_43_T_5 + _refCounterDec_43_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_43_T_12 = _refCounterDec_43_T_8 + _refCounterDec_43_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_43 = {{4'd0}, _refCounterDec_43_T_12};
  wire [6:0] _GEN_235 = 7'h2b == deallocate_0_bits ? refCounterDec_43 : _GEN_234; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_44_T_1 = deallocate_0_valid & deallocateOH_0[44]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_44_T_3 = deallocate_1_valid & deallocateOH_1[44]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_44_T_8 = _refCounterDec_44_T_1 + _refCounterDec_44_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_44_T_5 = deallocate_2_valid & deallocateOH_2[44]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_44_T_7 = deallocate_3_valid & deallocateOH_3[44]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_44_T_10 = _refCounterDec_44_T_5 + _refCounterDec_44_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_44_T_12 = _refCounterDec_44_T_8 + _refCounterDec_44_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_44 = {{4'd0}, _refCounterDec_44_T_12};
  wire [6:0] _GEN_236 = 7'h2c == deallocate_0_bits ? refCounterDec_44 : _GEN_235; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_45_T_1 = deallocate_0_valid & deallocateOH_0[45]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_45_T_3 = deallocate_1_valid & deallocateOH_1[45]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_45_T_8 = _refCounterDec_45_T_1 + _refCounterDec_45_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_45_T_5 = deallocate_2_valid & deallocateOH_2[45]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_45_T_7 = deallocate_3_valid & deallocateOH_3[45]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_45_T_10 = _refCounterDec_45_T_5 + _refCounterDec_45_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_45_T_12 = _refCounterDec_45_T_8 + _refCounterDec_45_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_45 = {{4'd0}, _refCounterDec_45_T_12};
  wire [6:0] _GEN_237 = 7'h2d == deallocate_0_bits ? refCounterDec_45 : _GEN_236; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_46_T_1 = deallocate_0_valid & deallocateOH_0[46]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_46_T_3 = deallocate_1_valid & deallocateOH_1[46]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_46_T_8 = _refCounterDec_46_T_1 + _refCounterDec_46_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_46_T_5 = deallocate_2_valid & deallocateOH_2[46]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_46_T_7 = deallocate_3_valid & deallocateOH_3[46]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_46_T_10 = _refCounterDec_46_T_5 + _refCounterDec_46_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_46_T_12 = _refCounterDec_46_T_8 + _refCounterDec_46_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_46 = {{4'd0}, _refCounterDec_46_T_12};
  wire [6:0] _GEN_238 = 7'h2e == deallocate_0_bits ? refCounterDec_46 : _GEN_237; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_47_T_1 = deallocate_0_valid & deallocateOH_0[47]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_47_T_3 = deallocate_1_valid & deallocateOH_1[47]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_47_T_8 = _refCounterDec_47_T_1 + _refCounterDec_47_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_47_T_5 = deallocate_2_valid & deallocateOH_2[47]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_47_T_7 = deallocate_3_valid & deallocateOH_3[47]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_47_T_10 = _refCounterDec_47_T_5 + _refCounterDec_47_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_47_T_12 = _refCounterDec_47_T_8 + _refCounterDec_47_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_47 = {{4'd0}, _refCounterDec_47_T_12};
  wire [6:0] _GEN_239 = 7'h2f == deallocate_0_bits ? refCounterDec_47 : _GEN_238; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_48_T_1 = deallocate_0_valid & deallocateOH_0[48]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_48_T_3 = deallocate_1_valid & deallocateOH_1[48]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_48_T_8 = _refCounterDec_48_T_1 + _refCounterDec_48_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_48_T_5 = deallocate_2_valid & deallocateOH_2[48]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_48_T_7 = deallocate_3_valid & deallocateOH_3[48]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_48_T_10 = _refCounterDec_48_T_5 + _refCounterDec_48_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_48_T_12 = _refCounterDec_48_T_8 + _refCounterDec_48_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_48 = {{4'd0}, _refCounterDec_48_T_12};
  wire [6:0] _GEN_240 = 7'h30 == deallocate_0_bits ? refCounterDec_48 : _GEN_239; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_49_T_1 = deallocate_0_valid & deallocateOH_0[49]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_49_T_3 = deallocate_1_valid & deallocateOH_1[49]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_49_T_8 = _refCounterDec_49_T_1 + _refCounterDec_49_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_49_T_5 = deallocate_2_valid & deallocateOH_2[49]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_49_T_7 = deallocate_3_valid & deallocateOH_3[49]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_49_T_10 = _refCounterDec_49_T_5 + _refCounterDec_49_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_49_T_12 = _refCounterDec_49_T_8 + _refCounterDec_49_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_49 = {{4'd0}, _refCounterDec_49_T_12};
  wire [6:0] _GEN_241 = 7'h31 == deallocate_0_bits ? refCounterDec_49 : _GEN_240; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_50_T_1 = deallocate_0_valid & deallocateOH_0[50]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_50_T_3 = deallocate_1_valid & deallocateOH_1[50]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_50_T_8 = _refCounterDec_50_T_1 + _refCounterDec_50_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_50_T_5 = deallocate_2_valid & deallocateOH_2[50]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_50_T_7 = deallocate_3_valid & deallocateOH_3[50]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_50_T_10 = _refCounterDec_50_T_5 + _refCounterDec_50_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_50_T_12 = _refCounterDec_50_T_8 + _refCounterDec_50_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_50 = {{4'd0}, _refCounterDec_50_T_12};
  wire [6:0] _GEN_242 = 7'h32 == deallocate_0_bits ? refCounterDec_50 : _GEN_241; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_51_T_1 = deallocate_0_valid & deallocateOH_0[51]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_51_T_3 = deallocate_1_valid & deallocateOH_1[51]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_51_T_8 = _refCounterDec_51_T_1 + _refCounterDec_51_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_51_T_5 = deallocate_2_valid & deallocateOH_2[51]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_51_T_7 = deallocate_3_valid & deallocateOH_3[51]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_51_T_10 = _refCounterDec_51_T_5 + _refCounterDec_51_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_51_T_12 = _refCounterDec_51_T_8 + _refCounterDec_51_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_51 = {{4'd0}, _refCounterDec_51_T_12};
  wire [6:0] _GEN_243 = 7'h33 == deallocate_0_bits ? refCounterDec_51 : _GEN_242; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_52_T_1 = deallocate_0_valid & deallocateOH_0[52]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_52_T_3 = deallocate_1_valid & deallocateOH_1[52]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_52_T_8 = _refCounterDec_52_T_1 + _refCounterDec_52_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_52_T_5 = deallocate_2_valid & deallocateOH_2[52]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_52_T_7 = deallocate_3_valid & deallocateOH_3[52]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_52_T_10 = _refCounterDec_52_T_5 + _refCounterDec_52_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_52_T_12 = _refCounterDec_52_T_8 + _refCounterDec_52_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_52 = {{4'd0}, _refCounterDec_52_T_12};
  wire [6:0] _GEN_244 = 7'h34 == deallocate_0_bits ? refCounterDec_52 : _GEN_243; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_53_T_1 = deallocate_0_valid & deallocateOH_0[53]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_53_T_3 = deallocate_1_valid & deallocateOH_1[53]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_53_T_8 = _refCounterDec_53_T_1 + _refCounterDec_53_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_53_T_5 = deallocate_2_valid & deallocateOH_2[53]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_53_T_7 = deallocate_3_valid & deallocateOH_3[53]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_53_T_10 = _refCounterDec_53_T_5 + _refCounterDec_53_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_53_T_12 = _refCounterDec_53_T_8 + _refCounterDec_53_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_53 = {{4'd0}, _refCounterDec_53_T_12};
  wire [6:0] _GEN_245 = 7'h35 == deallocate_0_bits ? refCounterDec_53 : _GEN_244; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_54_T_1 = deallocate_0_valid & deallocateOH_0[54]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_54_T_3 = deallocate_1_valid & deallocateOH_1[54]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_54_T_8 = _refCounterDec_54_T_1 + _refCounterDec_54_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_54_T_5 = deallocate_2_valid & deallocateOH_2[54]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_54_T_7 = deallocate_3_valid & deallocateOH_3[54]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_54_T_10 = _refCounterDec_54_T_5 + _refCounterDec_54_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_54_T_12 = _refCounterDec_54_T_8 + _refCounterDec_54_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_54 = {{4'd0}, _refCounterDec_54_T_12};
  wire [6:0] _GEN_246 = 7'h36 == deallocate_0_bits ? refCounterDec_54 : _GEN_245; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_55_T_1 = deallocate_0_valid & deallocateOH_0[55]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_55_T_3 = deallocate_1_valid & deallocateOH_1[55]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_55_T_8 = _refCounterDec_55_T_1 + _refCounterDec_55_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_55_T_5 = deallocate_2_valid & deallocateOH_2[55]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_55_T_7 = deallocate_3_valid & deallocateOH_3[55]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_55_T_10 = _refCounterDec_55_T_5 + _refCounterDec_55_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_55_T_12 = _refCounterDec_55_T_8 + _refCounterDec_55_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_55 = {{4'd0}, _refCounterDec_55_T_12};
  wire [6:0] _GEN_247 = 7'h37 == deallocate_0_bits ? refCounterDec_55 : _GEN_246; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_56_T_1 = deallocate_0_valid & deallocateOH_0[56]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_56_T_3 = deallocate_1_valid & deallocateOH_1[56]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_56_T_8 = _refCounterDec_56_T_1 + _refCounterDec_56_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_56_T_5 = deallocate_2_valid & deallocateOH_2[56]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_56_T_7 = deallocate_3_valid & deallocateOH_3[56]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_56_T_10 = _refCounterDec_56_T_5 + _refCounterDec_56_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_56_T_12 = _refCounterDec_56_T_8 + _refCounterDec_56_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_56 = {{4'd0}, _refCounterDec_56_T_12};
  wire [6:0] _GEN_248 = 7'h38 == deallocate_0_bits ? refCounterDec_56 : _GEN_247; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_57_T_1 = deallocate_0_valid & deallocateOH_0[57]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_57_T_3 = deallocate_1_valid & deallocateOH_1[57]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_57_T_8 = _refCounterDec_57_T_1 + _refCounterDec_57_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_57_T_5 = deallocate_2_valid & deallocateOH_2[57]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_57_T_7 = deallocate_3_valid & deallocateOH_3[57]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_57_T_10 = _refCounterDec_57_T_5 + _refCounterDec_57_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_57_T_12 = _refCounterDec_57_T_8 + _refCounterDec_57_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_57 = {{4'd0}, _refCounterDec_57_T_12};
  wire [6:0] _GEN_249 = 7'h39 == deallocate_0_bits ? refCounterDec_57 : _GEN_248; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_58_T_1 = deallocate_0_valid & deallocateOH_0[58]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_58_T_3 = deallocate_1_valid & deallocateOH_1[58]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_58_T_8 = _refCounterDec_58_T_1 + _refCounterDec_58_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_58_T_5 = deallocate_2_valid & deallocateOH_2[58]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_58_T_7 = deallocate_3_valid & deallocateOH_3[58]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_58_T_10 = _refCounterDec_58_T_5 + _refCounterDec_58_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_58_T_12 = _refCounterDec_58_T_8 + _refCounterDec_58_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_58 = {{4'd0}, _refCounterDec_58_T_12};
  wire [6:0] _GEN_250 = 7'h3a == deallocate_0_bits ? refCounterDec_58 : _GEN_249; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_59_T_1 = deallocate_0_valid & deallocateOH_0[59]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_59_T_3 = deallocate_1_valid & deallocateOH_1[59]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_59_T_8 = _refCounterDec_59_T_1 + _refCounterDec_59_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_59_T_5 = deallocate_2_valid & deallocateOH_2[59]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_59_T_7 = deallocate_3_valid & deallocateOH_3[59]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_59_T_10 = _refCounterDec_59_T_5 + _refCounterDec_59_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_59_T_12 = _refCounterDec_59_T_8 + _refCounterDec_59_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_59 = {{4'd0}, _refCounterDec_59_T_12};
  wire [6:0] _GEN_251 = 7'h3b == deallocate_0_bits ? refCounterDec_59 : _GEN_250; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_60_T_1 = deallocate_0_valid & deallocateOH_0[60]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_60_T_3 = deallocate_1_valid & deallocateOH_1[60]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_60_T_8 = _refCounterDec_60_T_1 + _refCounterDec_60_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_60_T_5 = deallocate_2_valid & deallocateOH_2[60]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_60_T_7 = deallocate_3_valid & deallocateOH_3[60]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_60_T_10 = _refCounterDec_60_T_5 + _refCounterDec_60_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_60_T_12 = _refCounterDec_60_T_8 + _refCounterDec_60_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_60 = {{4'd0}, _refCounterDec_60_T_12};
  wire [6:0] _GEN_252 = 7'h3c == deallocate_0_bits ? refCounterDec_60 : _GEN_251; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_61_T_1 = deallocate_0_valid & deallocateOH_0[61]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_61_T_3 = deallocate_1_valid & deallocateOH_1[61]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_61_T_8 = _refCounterDec_61_T_1 + _refCounterDec_61_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_61_T_5 = deallocate_2_valid & deallocateOH_2[61]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_61_T_7 = deallocate_3_valid & deallocateOH_3[61]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_61_T_10 = _refCounterDec_61_T_5 + _refCounterDec_61_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_61_T_12 = _refCounterDec_61_T_8 + _refCounterDec_61_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_61 = {{4'd0}, _refCounterDec_61_T_12};
  wire [6:0] _GEN_253 = 7'h3d == deallocate_0_bits ? refCounterDec_61 : _GEN_252; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_62_T_1 = deallocate_0_valid & deallocateOH_0[62]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_62_T_3 = deallocate_1_valid & deallocateOH_1[62]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_62_T_8 = _refCounterDec_62_T_1 + _refCounterDec_62_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_62_T_5 = deallocate_2_valid & deallocateOH_2[62]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_62_T_7 = deallocate_3_valid & deallocateOH_3[62]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_62_T_10 = _refCounterDec_62_T_5 + _refCounterDec_62_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_62_T_12 = _refCounterDec_62_T_8 + _refCounterDec_62_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_62 = {{4'd0}, _refCounterDec_62_T_12};
  wire [6:0] _GEN_254 = 7'h3e == deallocate_0_bits ? refCounterDec_62 : _GEN_253; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_63_T_1 = deallocate_0_valid & deallocateOH_0[63]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_63_T_3 = deallocate_1_valid & deallocateOH_1[63]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_63_T_8 = _refCounterDec_63_T_1 + _refCounterDec_63_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_63_T_5 = deallocate_2_valid & deallocateOH_2[63]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_63_T_7 = deallocate_3_valid & deallocateOH_3[63]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_63_T_10 = _refCounterDec_63_T_5 + _refCounterDec_63_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_63_T_12 = _refCounterDec_63_T_8 + _refCounterDec_63_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_63 = {{4'd0}, _refCounterDec_63_T_12};
  wire [6:0] _GEN_255 = 7'h3f == deallocate_0_bits ? refCounterDec_63 : _GEN_254; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_64_T_1 = deallocate_0_valid & deallocateOH_0[64]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_64_T_3 = deallocate_1_valid & deallocateOH_1[64]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_64_T_8 = _refCounterDec_64_T_1 + _refCounterDec_64_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_64_T_5 = deallocate_2_valid & deallocateOH_2[64]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_64_T_7 = deallocate_3_valid & deallocateOH_3[64]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_64_T_10 = _refCounterDec_64_T_5 + _refCounterDec_64_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_64_T_12 = _refCounterDec_64_T_8 + _refCounterDec_64_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_64 = {{4'd0}, _refCounterDec_64_T_12};
  wire [6:0] _GEN_256 = 7'h40 == deallocate_0_bits ? refCounterDec_64 : _GEN_255; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_65_T_1 = deallocate_0_valid & deallocateOH_0[65]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_65_T_3 = deallocate_1_valid & deallocateOH_1[65]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_65_T_8 = _refCounterDec_65_T_1 + _refCounterDec_65_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_65_T_5 = deallocate_2_valid & deallocateOH_2[65]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_65_T_7 = deallocate_3_valid & deallocateOH_3[65]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_65_T_10 = _refCounterDec_65_T_5 + _refCounterDec_65_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_65_T_12 = _refCounterDec_65_T_8 + _refCounterDec_65_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_65 = {{4'd0}, _refCounterDec_65_T_12};
  wire [6:0] _GEN_257 = 7'h41 == deallocate_0_bits ? refCounterDec_65 : _GEN_256; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_66_T_1 = deallocate_0_valid & deallocateOH_0[66]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_66_T_3 = deallocate_1_valid & deallocateOH_1[66]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_66_T_8 = _refCounterDec_66_T_1 + _refCounterDec_66_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_66_T_5 = deallocate_2_valid & deallocateOH_2[66]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_66_T_7 = deallocate_3_valid & deallocateOH_3[66]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_66_T_10 = _refCounterDec_66_T_5 + _refCounterDec_66_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_66_T_12 = _refCounterDec_66_T_8 + _refCounterDec_66_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_66 = {{4'd0}, _refCounterDec_66_T_12};
  wire [6:0] _GEN_258 = 7'h42 == deallocate_0_bits ? refCounterDec_66 : _GEN_257; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_67_T_1 = deallocate_0_valid & deallocateOH_0[67]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_67_T_3 = deallocate_1_valid & deallocateOH_1[67]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_67_T_8 = _refCounterDec_67_T_1 + _refCounterDec_67_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_67_T_5 = deallocate_2_valid & deallocateOH_2[67]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_67_T_7 = deallocate_3_valid & deallocateOH_3[67]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_67_T_10 = _refCounterDec_67_T_5 + _refCounterDec_67_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_67_T_12 = _refCounterDec_67_T_8 + _refCounterDec_67_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_67 = {{4'd0}, _refCounterDec_67_T_12};
  wire [6:0] _GEN_259 = 7'h43 == deallocate_0_bits ? refCounterDec_67 : _GEN_258; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_68_T_1 = deallocate_0_valid & deallocateOH_0[68]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_68_T_3 = deallocate_1_valid & deallocateOH_1[68]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_68_T_8 = _refCounterDec_68_T_1 + _refCounterDec_68_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_68_T_5 = deallocate_2_valid & deallocateOH_2[68]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_68_T_7 = deallocate_3_valid & deallocateOH_3[68]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_68_T_10 = _refCounterDec_68_T_5 + _refCounterDec_68_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_68_T_12 = _refCounterDec_68_T_8 + _refCounterDec_68_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_68 = {{4'd0}, _refCounterDec_68_T_12};
  wire [6:0] _GEN_260 = 7'h44 == deallocate_0_bits ? refCounterDec_68 : _GEN_259; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_69_T_1 = deallocate_0_valid & deallocateOH_0[69]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_69_T_3 = deallocate_1_valid & deallocateOH_1[69]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_69_T_8 = _refCounterDec_69_T_1 + _refCounterDec_69_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_69_T_5 = deallocate_2_valid & deallocateOH_2[69]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_69_T_7 = deallocate_3_valid & deallocateOH_3[69]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_69_T_10 = _refCounterDec_69_T_5 + _refCounterDec_69_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_69_T_12 = _refCounterDec_69_T_8 + _refCounterDec_69_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_69 = {{4'd0}, _refCounterDec_69_T_12};
  wire [6:0] _GEN_261 = 7'h45 == deallocate_0_bits ? refCounterDec_69 : _GEN_260; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_70_T_1 = deallocate_0_valid & deallocateOH_0[70]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_70_T_3 = deallocate_1_valid & deallocateOH_1[70]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_70_T_8 = _refCounterDec_70_T_1 + _refCounterDec_70_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_70_T_5 = deallocate_2_valid & deallocateOH_2[70]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_70_T_7 = deallocate_3_valid & deallocateOH_3[70]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_70_T_10 = _refCounterDec_70_T_5 + _refCounterDec_70_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_70_T_12 = _refCounterDec_70_T_8 + _refCounterDec_70_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_70 = {{4'd0}, _refCounterDec_70_T_12};
  wire [6:0] _GEN_262 = 7'h46 == deallocate_0_bits ? refCounterDec_70 : _GEN_261; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_71_T_1 = deallocate_0_valid & deallocateOH_0[71]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_71_T_3 = deallocate_1_valid & deallocateOH_1[71]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_71_T_8 = _refCounterDec_71_T_1 + _refCounterDec_71_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_71_T_5 = deallocate_2_valid & deallocateOH_2[71]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_71_T_7 = deallocate_3_valid & deallocateOH_3[71]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_71_T_10 = _refCounterDec_71_T_5 + _refCounterDec_71_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_71_T_12 = _refCounterDec_71_T_8 + _refCounterDec_71_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_71 = {{4'd0}, _refCounterDec_71_T_12};
  wire [6:0] _GEN_263 = 7'h47 == deallocate_0_bits ? refCounterDec_71 : _GEN_262; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_72_T_1 = deallocate_0_valid & deallocateOH_0[72]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_72_T_3 = deallocate_1_valid & deallocateOH_1[72]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_72_T_8 = _refCounterDec_72_T_1 + _refCounterDec_72_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_72_T_5 = deallocate_2_valid & deallocateOH_2[72]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_72_T_7 = deallocate_3_valid & deallocateOH_3[72]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_72_T_10 = _refCounterDec_72_T_5 + _refCounterDec_72_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_72_T_12 = _refCounterDec_72_T_8 + _refCounterDec_72_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_72 = {{4'd0}, _refCounterDec_72_T_12};
  wire [6:0] _GEN_264 = 7'h48 == deallocate_0_bits ? refCounterDec_72 : _GEN_263; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_73_T_1 = deallocate_0_valid & deallocateOH_0[73]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_73_T_3 = deallocate_1_valid & deallocateOH_1[73]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_73_T_8 = _refCounterDec_73_T_1 + _refCounterDec_73_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_73_T_5 = deallocate_2_valid & deallocateOH_2[73]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_73_T_7 = deallocate_3_valid & deallocateOH_3[73]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_73_T_10 = _refCounterDec_73_T_5 + _refCounterDec_73_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_73_T_12 = _refCounterDec_73_T_8 + _refCounterDec_73_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_73 = {{4'd0}, _refCounterDec_73_T_12};
  wire [6:0] _GEN_265 = 7'h49 == deallocate_0_bits ? refCounterDec_73 : _GEN_264; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_74_T_1 = deallocate_0_valid & deallocateOH_0[74]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_74_T_3 = deallocate_1_valid & deallocateOH_1[74]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_74_T_8 = _refCounterDec_74_T_1 + _refCounterDec_74_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_74_T_5 = deallocate_2_valid & deallocateOH_2[74]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_74_T_7 = deallocate_3_valid & deallocateOH_3[74]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_74_T_10 = _refCounterDec_74_T_5 + _refCounterDec_74_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_74_T_12 = _refCounterDec_74_T_8 + _refCounterDec_74_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_74 = {{4'd0}, _refCounterDec_74_T_12};
  wire [6:0] _GEN_266 = 7'h4a == deallocate_0_bits ? refCounterDec_74 : _GEN_265; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_75_T_1 = deallocate_0_valid & deallocateOH_0[75]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_75_T_3 = deallocate_1_valid & deallocateOH_1[75]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_75_T_8 = _refCounterDec_75_T_1 + _refCounterDec_75_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_75_T_5 = deallocate_2_valid & deallocateOH_2[75]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_75_T_7 = deallocate_3_valid & deallocateOH_3[75]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_75_T_10 = _refCounterDec_75_T_5 + _refCounterDec_75_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_75_T_12 = _refCounterDec_75_T_8 + _refCounterDec_75_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_75 = {{4'd0}, _refCounterDec_75_T_12};
  wire [6:0] _GEN_267 = 7'h4b == deallocate_0_bits ? refCounterDec_75 : _GEN_266; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_76_T_1 = deallocate_0_valid & deallocateOH_0[76]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_76_T_3 = deallocate_1_valid & deallocateOH_1[76]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_76_T_8 = _refCounterDec_76_T_1 + _refCounterDec_76_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_76_T_5 = deallocate_2_valid & deallocateOH_2[76]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_76_T_7 = deallocate_3_valid & deallocateOH_3[76]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_76_T_10 = _refCounterDec_76_T_5 + _refCounterDec_76_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_76_T_12 = _refCounterDec_76_T_8 + _refCounterDec_76_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_76 = {{4'd0}, _refCounterDec_76_T_12};
  wire [6:0] _GEN_268 = 7'h4c == deallocate_0_bits ? refCounterDec_76 : _GEN_267; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_77_T_1 = deallocate_0_valid & deallocateOH_0[77]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_77_T_3 = deallocate_1_valid & deallocateOH_1[77]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_77_T_8 = _refCounterDec_77_T_1 + _refCounterDec_77_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_77_T_5 = deallocate_2_valid & deallocateOH_2[77]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_77_T_7 = deallocate_3_valid & deallocateOH_3[77]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_77_T_10 = _refCounterDec_77_T_5 + _refCounterDec_77_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_77_T_12 = _refCounterDec_77_T_8 + _refCounterDec_77_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_77 = {{4'd0}, _refCounterDec_77_T_12};
  wire [6:0] _GEN_269 = 7'h4d == deallocate_0_bits ? refCounterDec_77 : _GEN_268; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_78_T_1 = deallocate_0_valid & deallocateOH_0[78]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_78_T_3 = deallocate_1_valid & deallocateOH_1[78]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_78_T_8 = _refCounterDec_78_T_1 + _refCounterDec_78_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_78_T_5 = deallocate_2_valid & deallocateOH_2[78]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_78_T_7 = deallocate_3_valid & deallocateOH_3[78]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_78_T_10 = _refCounterDec_78_T_5 + _refCounterDec_78_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_78_T_12 = _refCounterDec_78_T_8 + _refCounterDec_78_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_78 = {{4'd0}, _refCounterDec_78_T_12};
  wire [6:0] _GEN_270 = 7'h4e == deallocate_0_bits ? refCounterDec_78 : _GEN_269; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_79_T_1 = deallocate_0_valid & deallocateOH_0[79]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_79_T_3 = deallocate_1_valid & deallocateOH_1[79]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_79_T_8 = _refCounterDec_79_T_1 + _refCounterDec_79_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_79_T_5 = deallocate_2_valid & deallocateOH_2[79]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_79_T_7 = deallocate_3_valid & deallocateOH_3[79]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_79_T_10 = _refCounterDec_79_T_5 + _refCounterDec_79_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_79_T_12 = _refCounterDec_79_T_8 + _refCounterDec_79_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_79 = {{4'd0}, _refCounterDec_79_T_12};
  wire [6:0] _GEN_271 = 7'h4f == deallocate_0_bits ? refCounterDec_79 : _GEN_270; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_80_T_1 = deallocate_0_valid & deallocateOH_0[80]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_80_T_3 = deallocate_1_valid & deallocateOH_1[80]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_80_T_8 = _refCounterDec_80_T_1 + _refCounterDec_80_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_80_T_5 = deallocate_2_valid & deallocateOH_2[80]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_80_T_7 = deallocate_3_valid & deallocateOH_3[80]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_80_T_10 = _refCounterDec_80_T_5 + _refCounterDec_80_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_80_T_12 = _refCounterDec_80_T_8 + _refCounterDec_80_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_80 = {{4'd0}, _refCounterDec_80_T_12};
  wire [6:0] _GEN_272 = 7'h50 == deallocate_0_bits ? refCounterDec_80 : _GEN_271; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_81_T_1 = deallocate_0_valid & deallocateOH_0[81]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_81_T_3 = deallocate_1_valid & deallocateOH_1[81]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_81_T_8 = _refCounterDec_81_T_1 + _refCounterDec_81_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_81_T_5 = deallocate_2_valid & deallocateOH_2[81]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_81_T_7 = deallocate_3_valid & deallocateOH_3[81]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_81_T_10 = _refCounterDec_81_T_5 + _refCounterDec_81_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_81_T_12 = _refCounterDec_81_T_8 + _refCounterDec_81_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_81 = {{4'd0}, _refCounterDec_81_T_12};
  wire [6:0] _GEN_273 = 7'h51 == deallocate_0_bits ? refCounterDec_81 : _GEN_272; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_82_T_1 = deallocate_0_valid & deallocateOH_0[82]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_82_T_3 = deallocate_1_valid & deallocateOH_1[82]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_82_T_8 = _refCounterDec_82_T_1 + _refCounterDec_82_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_82_T_5 = deallocate_2_valid & deallocateOH_2[82]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_82_T_7 = deallocate_3_valid & deallocateOH_3[82]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_82_T_10 = _refCounterDec_82_T_5 + _refCounterDec_82_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_82_T_12 = _refCounterDec_82_T_8 + _refCounterDec_82_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_82 = {{4'd0}, _refCounterDec_82_T_12};
  wire [6:0] _GEN_274 = 7'h52 == deallocate_0_bits ? refCounterDec_82 : _GEN_273; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_83_T_1 = deallocate_0_valid & deallocateOH_0[83]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_83_T_3 = deallocate_1_valid & deallocateOH_1[83]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_83_T_8 = _refCounterDec_83_T_1 + _refCounterDec_83_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_83_T_5 = deallocate_2_valid & deallocateOH_2[83]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_83_T_7 = deallocate_3_valid & deallocateOH_3[83]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_83_T_10 = _refCounterDec_83_T_5 + _refCounterDec_83_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_83_T_12 = _refCounterDec_83_T_8 + _refCounterDec_83_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_83 = {{4'd0}, _refCounterDec_83_T_12};
  wire [6:0] _GEN_275 = 7'h53 == deallocate_0_bits ? refCounterDec_83 : _GEN_274; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_84_T_1 = deallocate_0_valid & deallocateOH_0[84]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_84_T_3 = deallocate_1_valid & deallocateOH_1[84]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_84_T_8 = _refCounterDec_84_T_1 + _refCounterDec_84_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_84_T_5 = deallocate_2_valid & deallocateOH_2[84]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_84_T_7 = deallocate_3_valid & deallocateOH_3[84]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_84_T_10 = _refCounterDec_84_T_5 + _refCounterDec_84_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_84_T_12 = _refCounterDec_84_T_8 + _refCounterDec_84_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_84 = {{4'd0}, _refCounterDec_84_T_12};
  wire [6:0] _GEN_276 = 7'h54 == deallocate_0_bits ? refCounterDec_84 : _GEN_275; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_85_T_1 = deallocate_0_valid & deallocateOH_0[85]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_85_T_3 = deallocate_1_valid & deallocateOH_1[85]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_85_T_8 = _refCounterDec_85_T_1 + _refCounterDec_85_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_85_T_5 = deallocate_2_valid & deallocateOH_2[85]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_85_T_7 = deallocate_3_valid & deallocateOH_3[85]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_85_T_10 = _refCounterDec_85_T_5 + _refCounterDec_85_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_85_T_12 = _refCounterDec_85_T_8 + _refCounterDec_85_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_85 = {{4'd0}, _refCounterDec_85_T_12};
  wire [6:0] _GEN_277 = 7'h55 == deallocate_0_bits ? refCounterDec_85 : _GEN_276; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_86_T_1 = deallocate_0_valid & deallocateOH_0[86]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_86_T_3 = deallocate_1_valid & deallocateOH_1[86]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_86_T_8 = _refCounterDec_86_T_1 + _refCounterDec_86_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_86_T_5 = deallocate_2_valid & deallocateOH_2[86]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_86_T_7 = deallocate_3_valid & deallocateOH_3[86]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_86_T_10 = _refCounterDec_86_T_5 + _refCounterDec_86_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_86_T_12 = _refCounterDec_86_T_8 + _refCounterDec_86_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_86 = {{4'd0}, _refCounterDec_86_T_12};
  wire [6:0] _GEN_278 = 7'h56 == deallocate_0_bits ? refCounterDec_86 : _GEN_277; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_87_T_1 = deallocate_0_valid & deallocateOH_0[87]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_87_T_3 = deallocate_1_valid & deallocateOH_1[87]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_87_T_8 = _refCounterDec_87_T_1 + _refCounterDec_87_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_87_T_5 = deallocate_2_valid & deallocateOH_2[87]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_87_T_7 = deallocate_3_valid & deallocateOH_3[87]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_87_T_10 = _refCounterDec_87_T_5 + _refCounterDec_87_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_87_T_12 = _refCounterDec_87_T_8 + _refCounterDec_87_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_87 = {{4'd0}, _refCounterDec_87_T_12};
  wire [6:0] _GEN_279 = 7'h57 == deallocate_0_bits ? refCounterDec_87 : _GEN_278; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_88_T_1 = deallocate_0_valid & deallocateOH_0[88]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_88_T_3 = deallocate_1_valid & deallocateOH_1[88]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_88_T_8 = _refCounterDec_88_T_1 + _refCounterDec_88_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_88_T_5 = deallocate_2_valid & deallocateOH_2[88]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_88_T_7 = deallocate_3_valid & deallocateOH_3[88]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_88_T_10 = _refCounterDec_88_T_5 + _refCounterDec_88_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_88_T_12 = _refCounterDec_88_T_8 + _refCounterDec_88_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_88 = {{4'd0}, _refCounterDec_88_T_12};
  wire [6:0] _GEN_280 = 7'h58 == deallocate_0_bits ? refCounterDec_88 : _GEN_279; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_89_T_1 = deallocate_0_valid & deallocateOH_0[89]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_89_T_3 = deallocate_1_valid & deallocateOH_1[89]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_89_T_8 = _refCounterDec_89_T_1 + _refCounterDec_89_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_89_T_5 = deallocate_2_valid & deallocateOH_2[89]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_89_T_7 = deallocate_3_valid & deallocateOH_3[89]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_89_T_10 = _refCounterDec_89_T_5 + _refCounterDec_89_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_89_T_12 = _refCounterDec_89_T_8 + _refCounterDec_89_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_89 = {{4'd0}, _refCounterDec_89_T_12};
  wire [6:0] _GEN_281 = 7'h59 == deallocate_0_bits ? refCounterDec_89 : _GEN_280; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_90_T_1 = deallocate_0_valid & deallocateOH_0[90]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_90_T_3 = deallocate_1_valid & deallocateOH_1[90]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_90_T_8 = _refCounterDec_90_T_1 + _refCounterDec_90_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_90_T_5 = deallocate_2_valid & deallocateOH_2[90]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_90_T_7 = deallocate_3_valid & deallocateOH_3[90]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_90_T_10 = _refCounterDec_90_T_5 + _refCounterDec_90_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_90_T_12 = _refCounterDec_90_T_8 + _refCounterDec_90_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_90 = {{4'd0}, _refCounterDec_90_T_12};
  wire [6:0] _GEN_282 = 7'h5a == deallocate_0_bits ? refCounterDec_90 : _GEN_281; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_91_T_1 = deallocate_0_valid & deallocateOH_0[91]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_91_T_3 = deallocate_1_valid & deallocateOH_1[91]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_91_T_8 = _refCounterDec_91_T_1 + _refCounterDec_91_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_91_T_5 = deallocate_2_valid & deallocateOH_2[91]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_91_T_7 = deallocate_3_valid & deallocateOH_3[91]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_91_T_10 = _refCounterDec_91_T_5 + _refCounterDec_91_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_91_T_12 = _refCounterDec_91_T_8 + _refCounterDec_91_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_91 = {{4'd0}, _refCounterDec_91_T_12};
  wire [6:0] _GEN_283 = 7'h5b == deallocate_0_bits ? refCounterDec_91 : _GEN_282; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_92_T_1 = deallocate_0_valid & deallocateOH_0[92]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_92_T_3 = deallocate_1_valid & deallocateOH_1[92]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_92_T_8 = _refCounterDec_92_T_1 + _refCounterDec_92_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_92_T_5 = deallocate_2_valid & deallocateOH_2[92]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_92_T_7 = deallocate_3_valid & deallocateOH_3[92]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_92_T_10 = _refCounterDec_92_T_5 + _refCounterDec_92_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_92_T_12 = _refCounterDec_92_T_8 + _refCounterDec_92_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_92 = {{4'd0}, _refCounterDec_92_T_12};
  wire [6:0] _GEN_284 = 7'h5c == deallocate_0_bits ? refCounterDec_92 : _GEN_283; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_93_T_1 = deallocate_0_valid & deallocateOH_0[93]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_93_T_3 = deallocate_1_valid & deallocateOH_1[93]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_93_T_8 = _refCounterDec_93_T_1 + _refCounterDec_93_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_93_T_5 = deallocate_2_valid & deallocateOH_2[93]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_93_T_7 = deallocate_3_valid & deallocateOH_3[93]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_93_T_10 = _refCounterDec_93_T_5 + _refCounterDec_93_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_93_T_12 = _refCounterDec_93_T_8 + _refCounterDec_93_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_93 = {{4'd0}, _refCounterDec_93_T_12};
  wire [6:0] _GEN_285 = 7'h5d == deallocate_0_bits ? refCounterDec_93 : _GEN_284; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_94_T_1 = deallocate_0_valid & deallocateOH_0[94]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_94_T_3 = deallocate_1_valid & deallocateOH_1[94]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_94_T_8 = _refCounterDec_94_T_1 + _refCounterDec_94_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_94_T_5 = deallocate_2_valid & deallocateOH_2[94]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_94_T_7 = deallocate_3_valid & deallocateOH_3[94]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_94_T_10 = _refCounterDec_94_T_5 + _refCounterDec_94_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_94_T_12 = _refCounterDec_94_T_8 + _refCounterDec_94_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_94 = {{4'd0}, _refCounterDec_94_T_12};
  wire [6:0] _GEN_286 = 7'h5e == deallocate_0_bits ? refCounterDec_94 : _GEN_285; // @[RefCounter.scala 56:{64,64}]
  wire  _refCounterDec_95_T_1 = deallocate_0_valid & deallocateOH_0[95]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_95_T_3 = deallocate_1_valid & deallocateOH_1[95]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_95_T_8 = _refCounterDec_95_T_1 + _refCounterDec_95_T_3; // @[Bitwise.scala 48:55]
  wire  _refCounterDec_95_T_5 = deallocate_2_valid & deallocateOH_2[95]; // @[RefCounter.scala 81:95]
  wire  _refCounterDec_95_T_7 = deallocate_3_valid & deallocateOH_3[95]; // @[RefCounter.scala 81:95]
  wire [1:0] _refCounterDec_95_T_10 = _refCounterDec_95_T_5 + _refCounterDec_95_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _refCounterDec_95_T_12 = _refCounterDec_95_T_8 + _refCounterDec_95_T_10; // @[Bitwise.scala 48:55]
  wire [6:0] refCounterDec_95 = {{4'd0}, _refCounterDec_95_T_12};
  wire [6:0] _GEN_287 = 7'h5f == deallocate_0_bits ? refCounterDec_95 : _GEN_286; // @[RefCounter.scala 56:{64,64}]
  reg  io_freeRegs_0_valid_REG; // @[RefCounter.scala 57:36]
  reg  io_freeRegs_0_valid_REG_1; // @[RefCounter.scala 57:75]
  reg [6:0] io_freeRegs_0_bits_REG; // @[RefCounter.scala 60:35]
  wire [6:0] _GEN_385 = 7'h1 == deallocate_1_bits ? refCounter_1 : 7'h1; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_386 = 7'h2 == deallocate_1_bits ? refCounter_2 : _GEN_385; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_387 = 7'h3 == deallocate_1_bits ? refCounter_3 : _GEN_386; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_388 = 7'h4 == deallocate_1_bits ? refCounter_4 : _GEN_387; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_389 = 7'h5 == deallocate_1_bits ? refCounter_5 : _GEN_388; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_390 = 7'h6 == deallocate_1_bits ? refCounter_6 : _GEN_389; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_391 = 7'h7 == deallocate_1_bits ? refCounter_7 : _GEN_390; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_392 = 7'h8 == deallocate_1_bits ? refCounter_8 : _GEN_391; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_393 = 7'h9 == deallocate_1_bits ? refCounter_9 : _GEN_392; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_394 = 7'ha == deallocate_1_bits ? refCounter_10 : _GEN_393; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_395 = 7'hb == deallocate_1_bits ? refCounter_11 : _GEN_394; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_396 = 7'hc == deallocate_1_bits ? refCounter_12 : _GEN_395; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_397 = 7'hd == deallocate_1_bits ? refCounter_13 : _GEN_396; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_398 = 7'he == deallocate_1_bits ? refCounter_14 : _GEN_397; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_399 = 7'hf == deallocate_1_bits ? refCounter_15 : _GEN_398; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_400 = 7'h10 == deallocate_1_bits ? refCounter_16 : _GEN_399; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_401 = 7'h11 == deallocate_1_bits ? refCounter_17 : _GEN_400; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_402 = 7'h12 == deallocate_1_bits ? refCounter_18 : _GEN_401; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_403 = 7'h13 == deallocate_1_bits ? refCounter_19 : _GEN_402; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_404 = 7'h14 == deallocate_1_bits ? refCounter_20 : _GEN_403; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_405 = 7'h15 == deallocate_1_bits ? refCounter_21 : _GEN_404; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_406 = 7'h16 == deallocate_1_bits ? refCounter_22 : _GEN_405; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_407 = 7'h17 == deallocate_1_bits ? refCounter_23 : _GEN_406; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_408 = 7'h18 == deallocate_1_bits ? refCounter_24 : _GEN_407; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_409 = 7'h19 == deallocate_1_bits ? refCounter_25 : _GEN_408; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_410 = 7'h1a == deallocate_1_bits ? refCounter_26 : _GEN_409; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_411 = 7'h1b == deallocate_1_bits ? refCounter_27 : _GEN_410; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_412 = 7'h1c == deallocate_1_bits ? refCounter_28 : _GEN_411; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_413 = 7'h1d == deallocate_1_bits ? refCounter_29 : _GEN_412; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_414 = 7'h1e == deallocate_1_bits ? refCounter_30 : _GEN_413; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_415 = 7'h1f == deallocate_1_bits ? refCounter_31 : _GEN_414; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_416 = 7'h20 == deallocate_1_bits ? refCounter_32 : _GEN_415; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_417 = 7'h21 == deallocate_1_bits ? refCounter_33 : _GEN_416; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_418 = 7'h22 == deallocate_1_bits ? refCounter_34 : _GEN_417; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_419 = 7'h23 == deallocate_1_bits ? refCounter_35 : _GEN_418; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_420 = 7'h24 == deallocate_1_bits ? refCounter_36 : _GEN_419; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_421 = 7'h25 == deallocate_1_bits ? refCounter_37 : _GEN_420; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_422 = 7'h26 == deallocate_1_bits ? refCounter_38 : _GEN_421; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_423 = 7'h27 == deallocate_1_bits ? refCounter_39 : _GEN_422; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_424 = 7'h28 == deallocate_1_bits ? refCounter_40 : _GEN_423; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_425 = 7'h29 == deallocate_1_bits ? refCounter_41 : _GEN_424; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_426 = 7'h2a == deallocate_1_bits ? refCounter_42 : _GEN_425; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_427 = 7'h2b == deallocate_1_bits ? refCounter_43 : _GEN_426; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_428 = 7'h2c == deallocate_1_bits ? refCounter_44 : _GEN_427; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_429 = 7'h2d == deallocate_1_bits ? refCounter_45 : _GEN_428; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_430 = 7'h2e == deallocate_1_bits ? refCounter_46 : _GEN_429; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_431 = 7'h2f == deallocate_1_bits ? refCounter_47 : _GEN_430; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_432 = 7'h30 == deallocate_1_bits ? refCounter_48 : _GEN_431; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_433 = 7'h31 == deallocate_1_bits ? refCounter_49 : _GEN_432; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_434 = 7'h32 == deallocate_1_bits ? refCounter_50 : _GEN_433; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_435 = 7'h33 == deallocate_1_bits ? refCounter_51 : _GEN_434; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_436 = 7'h34 == deallocate_1_bits ? refCounter_52 : _GEN_435; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_437 = 7'h35 == deallocate_1_bits ? refCounter_53 : _GEN_436; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_438 = 7'h36 == deallocate_1_bits ? refCounter_54 : _GEN_437; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_439 = 7'h37 == deallocate_1_bits ? refCounter_55 : _GEN_438; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_440 = 7'h38 == deallocate_1_bits ? refCounter_56 : _GEN_439; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_441 = 7'h39 == deallocate_1_bits ? refCounter_57 : _GEN_440; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_442 = 7'h3a == deallocate_1_bits ? refCounter_58 : _GEN_441; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_443 = 7'h3b == deallocate_1_bits ? refCounter_59 : _GEN_442; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_444 = 7'h3c == deallocate_1_bits ? refCounter_60 : _GEN_443; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_445 = 7'h3d == deallocate_1_bits ? refCounter_61 : _GEN_444; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_446 = 7'h3e == deallocate_1_bits ? refCounter_62 : _GEN_445; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_447 = 7'h3f == deallocate_1_bits ? refCounter_63 : _GEN_446; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_448 = 7'h40 == deallocate_1_bits ? refCounter_64 : _GEN_447; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_449 = 7'h41 == deallocate_1_bits ? refCounter_65 : _GEN_448; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_450 = 7'h42 == deallocate_1_bits ? refCounter_66 : _GEN_449; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_451 = 7'h43 == deallocate_1_bits ? refCounter_67 : _GEN_450; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_452 = 7'h44 == deallocate_1_bits ? refCounter_68 : _GEN_451; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_453 = 7'h45 == deallocate_1_bits ? refCounter_69 : _GEN_452; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_454 = 7'h46 == deallocate_1_bits ? refCounter_70 : _GEN_453; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_455 = 7'h47 == deallocate_1_bits ? refCounter_71 : _GEN_454; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_456 = 7'h48 == deallocate_1_bits ? refCounter_72 : _GEN_455; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_457 = 7'h49 == deallocate_1_bits ? refCounter_73 : _GEN_456; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_458 = 7'h4a == deallocate_1_bits ? refCounter_74 : _GEN_457; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_459 = 7'h4b == deallocate_1_bits ? refCounter_75 : _GEN_458; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_460 = 7'h4c == deallocate_1_bits ? refCounter_76 : _GEN_459; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_461 = 7'h4d == deallocate_1_bits ? refCounter_77 : _GEN_460; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_462 = 7'h4e == deallocate_1_bits ? refCounter_78 : _GEN_461; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_463 = 7'h4f == deallocate_1_bits ? refCounter_79 : _GEN_462; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_464 = 7'h50 == deallocate_1_bits ? refCounter_80 : _GEN_463; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_465 = 7'h51 == deallocate_1_bits ? refCounter_81 : _GEN_464; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_466 = 7'h52 == deallocate_1_bits ? refCounter_82 : _GEN_465; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_467 = 7'h53 == deallocate_1_bits ? refCounter_83 : _GEN_466; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_468 = 7'h54 == deallocate_1_bits ? refCounter_84 : _GEN_467; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_469 = 7'h55 == deallocate_1_bits ? refCounter_85 : _GEN_468; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_470 = 7'h56 == deallocate_1_bits ? refCounter_86 : _GEN_469; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_471 = 7'h57 == deallocate_1_bits ? refCounter_87 : _GEN_470; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_472 = 7'h58 == deallocate_1_bits ? refCounter_88 : _GEN_471; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_473 = 7'h59 == deallocate_1_bits ? refCounter_89 : _GEN_472; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_474 = 7'h5a == deallocate_1_bits ? refCounter_90 : _GEN_473; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_475 = 7'h5b == deallocate_1_bits ? refCounter_91 : _GEN_474; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_476 = 7'h5c == deallocate_1_bits ? refCounter_92 : _GEN_475; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_477 = 7'h5d == deallocate_1_bits ? refCounter_93 : _GEN_476; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_478 = 7'h5e == deallocate_1_bits ? refCounter_94 : _GEN_477; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_479 = 7'h5f == deallocate_1_bits ? refCounter_95 : _GEN_478; // @[RefCounter.scala 53:{53,53}]
  wire  isNonZero_1 = deallocate_1_valid & _GEN_479 != 7'h0; // @[RefCounter.scala 53:30]
  wire  hasDuplicate_0 = deallocate_0_valid & deallocate_0_bits == deallocate_1_bits; // @[RefCounter.scala 54:62]
  wire  blockedByDup = |hasDuplicate_0; // @[RefCounter.scala 55:78]
  wire [6:0] _GEN_481 = 7'h1 == deallocate_1_bits ? refCounterInc_1 : 7'h1; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_482 = 7'h2 == deallocate_1_bits ? refCounterInc_2 : _GEN_481; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_483 = 7'h3 == deallocate_1_bits ? refCounterInc_3 : _GEN_482; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_484 = 7'h4 == deallocate_1_bits ? refCounterInc_4 : _GEN_483; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_485 = 7'h5 == deallocate_1_bits ? refCounterInc_5 : _GEN_484; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_486 = 7'h6 == deallocate_1_bits ? refCounterInc_6 : _GEN_485; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_487 = 7'h7 == deallocate_1_bits ? refCounterInc_7 : _GEN_486; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_488 = 7'h8 == deallocate_1_bits ? refCounterInc_8 : _GEN_487; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_489 = 7'h9 == deallocate_1_bits ? refCounterInc_9 : _GEN_488; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_490 = 7'ha == deallocate_1_bits ? refCounterInc_10 : _GEN_489; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_491 = 7'hb == deallocate_1_bits ? refCounterInc_11 : _GEN_490; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_492 = 7'hc == deallocate_1_bits ? refCounterInc_12 : _GEN_491; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_493 = 7'hd == deallocate_1_bits ? refCounterInc_13 : _GEN_492; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_494 = 7'he == deallocate_1_bits ? refCounterInc_14 : _GEN_493; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_495 = 7'hf == deallocate_1_bits ? refCounterInc_15 : _GEN_494; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_496 = 7'h10 == deallocate_1_bits ? refCounterInc_16 : _GEN_495; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_497 = 7'h11 == deallocate_1_bits ? refCounterInc_17 : _GEN_496; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_498 = 7'h12 == deallocate_1_bits ? refCounterInc_18 : _GEN_497; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_499 = 7'h13 == deallocate_1_bits ? refCounterInc_19 : _GEN_498; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_500 = 7'h14 == deallocate_1_bits ? refCounterInc_20 : _GEN_499; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_501 = 7'h15 == deallocate_1_bits ? refCounterInc_21 : _GEN_500; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_502 = 7'h16 == deallocate_1_bits ? refCounterInc_22 : _GEN_501; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_503 = 7'h17 == deallocate_1_bits ? refCounterInc_23 : _GEN_502; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_504 = 7'h18 == deallocate_1_bits ? refCounterInc_24 : _GEN_503; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_505 = 7'h19 == deallocate_1_bits ? refCounterInc_25 : _GEN_504; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_506 = 7'h1a == deallocate_1_bits ? refCounterInc_26 : _GEN_505; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_507 = 7'h1b == deallocate_1_bits ? refCounterInc_27 : _GEN_506; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_508 = 7'h1c == deallocate_1_bits ? refCounterInc_28 : _GEN_507; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_509 = 7'h1d == deallocate_1_bits ? refCounterInc_29 : _GEN_508; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_510 = 7'h1e == deallocate_1_bits ? refCounterInc_30 : _GEN_509; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_511 = 7'h1f == deallocate_1_bits ? refCounterInc_31 : _GEN_510; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_512 = 7'h20 == deallocate_1_bits ? refCounterInc_32 : _GEN_511; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_513 = 7'h21 == deallocate_1_bits ? refCounterInc_33 : _GEN_512; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_514 = 7'h22 == deallocate_1_bits ? refCounterInc_34 : _GEN_513; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_515 = 7'h23 == deallocate_1_bits ? refCounterInc_35 : _GEN_514; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_516 = 7'h24 == deallocate_1_bits ? refCounterInc_36 : _GEN_515; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_517 = 7'h25 == deallocate_1_bits ? refCounterInc_37 : _GEN_516; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_518 = 7'h26 == deallocate_1_bits ? refCounterInc_38 : _GEN_517; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_519 = 7'h27 == deallocate_1_bits ? refCounterInc_39 : _GEN_518; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_520 = 7'h28 == deallocate_1_bits ? refCounterInc_40 : _GEN_519; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_521 = 7'h29 == deallocate_1_bits ? refCounterInc_41 : _GEN_520; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_522 = 7'h2a == deallocate_1_bits ? refCounterInc_42 : _GEN_521; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_523 = 7'h2b == deallocate_1_bits ? refCounterInc_43 : _GEN_522; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_524 = 7'h2c == deallocate_1_bits ? refCounterInc_44 : _GEN_523; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_525 = 7'h2d == deallocate_1_bits ? refCounterInc_45 : _GEN_524; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_526 = 7'h2e == deallocate_1_bits ? refCounterInc_46 : _GEN_525; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_527 = 7'h2f == deallocate_1_bits ? refCounterInc_47 : _GEN_526; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_528 = 7'h30 == deallocate_1_bits ? refCounterInc_48 : _GEN_527; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_529 = 7'h31 == deallocate_1_bits ? refCounterInc_49 : _GEN_528; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_530 = 7'h32 == deallocate_1_bits ? refCounterInc_50 : _GEN_529; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_531 = 7'h33 == deallocate_1_bits ? refCounterInc_51 : _GEN_530; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_532 = 7'h34 == deallocate_1_bits ? refCounterInc_52 : _GEN_531; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_533 = 7'h35 == deallocate_1_bits ? refCounterInc_53 : _GEN_532; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_534 = 7'h36 == deallocate_1_bits ? refCounterInc_54 : _GEN_533; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_535 = 7'h37 == deallocate_1_bits ? refCounterInc_55 : _GEN_534; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_536 = 7'h38 == deallocate_1_bits ? refCounterInc_56 : _GEN_535; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_537 = 7'h39 == deallocate_1_bits ? refCounterInc_57 : _GEN_536; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_538 = 7'h3a == deallocate_1_bits ? refCounterInc_58 : _GEN_537; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_539 = 7'h3b == deallocate_1_bits ? refCounterInc_59 : _GEN_538; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_540 = 7'h3c == deallocate_1_bits ? refCounterInc_60 : _GEN_539; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_541 = 7'h3d == deallocate_1_bits ? refCounterInc_61 : _GEN_540; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_542 = 7'h3e == deallocate_1_bits ? refCounterInc_62 : _GEN_541; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_543 = 7'h3f == deallocate_1_bits ? refCounterInc_63 : _GEN_542; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_544 = 7'h40 == deallocate_1_bits ? refCounterInc_64 : _GEN_543; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_545 = 7'h41 == deallocate_1_bits ? refCounterInc_65 : _GEN_544; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_546 = 7'h42 == deallocate_1_bits ? refCounterInc_66 : _GEN_545; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_547 = 7'h43 == deallocate_1_bits ? refCounterInc_67 : _GEN_546; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_548 = 7'h44 == deallocate_1_bits ? refCounterInc_68 : _GEN_547; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_549 = 7'h45 == deallocate_1_bits ? refCounterInc_69 : _GEN_548; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_550 = 7'h46 == deallocate_1_bits ? refCounterInc_70 : _GEN_549; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_551 = 7'h47 == deallocate_1_bits ? refCounterInc_71 : _GEN_550; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_552 = 7'h48 == deallocate_1_bits ? refCounterInc_72 : _GEN_551; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_553 = 7'h49 == deallocate_1_bits ? refCounterInc_73 : _GEN_552; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_554 = 7'h4a == deallocate_1_bits ? refCounterInc_74 : _GEN_553; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_555 = 7'h4b == deallocate_1_bits ? refCounterInc_75 : _GEN_554; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_556 = 7'h4c == deallocate_1_bits ? refCounterInc_76 : _GEN_555; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_557 = 7'h4d == deallocate_1_bits ? refCounterInc_77 : _GEN_556; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_558 = 7'h4e == deallocate_1_bits ? refCounterInc_78 : _GEN_557; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_559 = 7'h4f == deallocate_1_bits ? refCounterInc_79 : _GEN_558; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_560 = 7'h50 == deallocate_1_bits ? refCounterInc_80 : _GEN_559; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_561 = 7'h51 == deallocate_1_bits ? refCounterInc_81 : _GEN_560; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_562 = 7'h52 == deallocate_1_bits ? refCounterInc_82 : _GEN_561; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_563 = 7'h53 == deallocate_1_bits ? refCounterInc_83 : _GEN_562; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_564 = 7'h54 == deallocate_1_bits ? refCounterInc_84 : _GEN_563; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_565 = 7'h55 == deallocate_1_bits ? refCounterInc_85 : _GEN_564; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_566 = 7'h56 == deallocate_1_bits ? refCounterInc_86 : _GEN_565; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_567 = 7'h57 == deallocate_1_bits ? refCounterInc_87 : _GEN_566; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_568 = 7'h58 == deallocate_1_bits ? refCounterInc_88 : _GEN_567; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_569 = 7'h59 == deallocate_1_bits ? refCounterInc_89 : _GEN_568; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_570 = 7'h5a == deallocate_1_bits ? refCounterInc_90 : _GEN_569; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_571 = 7'h5b == deallocate_1_bits ? refCounterInc_91 : _GEN_570; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_572 = 7'h5c == deallocate_1_bits ? refCounterInc_92 : _GEN_571; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_573 = 7'h5d == deallocate_1_bits ? refCounterInc_93 : _GEN_572; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_574 = 7'h5e == deallocate_1_bits ? refCounterInc_94 : _GEN_573; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_575 = 7'h5f == deallocate_1_bits ? refCounterInc_95 : _GEN_574; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _isFreed_T_3 = _GEN_479 + _GEN_575; // @[RefCounter.scala 56:39]
  wire [6:0] _GEN_577 = 7'h1 == deallocate_1_bits ? refCounterDec_1 : 7'h1; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_578 = 7'h2 == deallocate_1_bits ? refCounterDec_2 : _GEN_577; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_579 = 7'h3 == deallocate_1_bits ? refCounterDec_3 : _GEN_578; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_580 = 7'h4 == deallocate_1_bits ? refCounterDec_4 : _GEN_579; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_581 = 7'h5 == deallocate_1_bits ? refCounterDec_5 : _GEN_580; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_582 = 7'h6 == deallocate_1_bits ? refCounterDec_6 : _GEN_581; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_583 = 7'h7 == deallocate_1_bits ? refCounterDec_7 : _GEN_582; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_584 = 7'h8 == deallocate_1_bits ? refCounterDec_8 : _GEN_583; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_585 = 7'h9 == deallocate_1_bits ? refCounterDec_9 : _GEN_584; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_586 = 7'ha == deallocate_1_bits ? refCounterDec_10 : _GEN_585; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_587 = 7'hb == deallocate_1_bits ? refCounterDec_11 : _GEN_586; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_588 = 7'hc == deallocate_1_bits ? refCounterDec_12 : _GEN_587; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_589 = 7'hd == deallocate_1_bits ? refCounterDec_13 : _GEN_588; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_590 = 7'he == deallocate_1_bits ? refCounterDec_14 : _GEN_589; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_591 = 7'hf == deallocate_1_bits ? refCounterDec_15 : _GEN_590; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_592 = 7'h10 == deallocate_1_bits ? refCounterDec_16 : _GEN_591; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_593 = 7'h11 == deallocate_1_bits ? refCounterDec_17 : _GEN_592; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_594 = 7'h12 == deallocate_1_bits ? refCounterDec_18 : _GEN_593; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_595 = 7'h13 == deallocate_1_bits ? refCounterDec_19 : _GEN_594; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_596 = 7'h14 == deallocate_1_bits ? refCounterDec_20 : _GEN_595; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_597 = 7'h15 == deallocate_1_bits ? refCounterDec_21 : _GEN_596; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_598 = 7'h16 == deallocate_1_bits ? refCounterDec_22 : _GEN_597; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_599 = 7'h17 == deallocate_1_bits ? refCounterDec_23 : _GEN_598; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_600 = 7'h18 == deallocate_1_bits ? refCounterDec_24 : _GEN_599; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_601 = 7'h19 == deallocate_1_bits ? refCounterDec_25 : _GEN_600; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_602 = 7'h1a == deallocate_1_bits ? refCounterDec_26 : _GEN_601; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_603 = 7'h1b == deallocate_1_bits ? refCounterDec_27 : _GEN_602; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_604 = 7'h1c == deallocate_1_bits ? refCounterDec_28 : _GEN_603; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_605 = 7'h1d == deallocate_1_bits ? refCounterDec_29 : _GEN_604; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_606 = 7'h1e == deallocate_1_bits ? refCounterDec_30 : _GEN_605; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_607 = 7'h1f == deallocate_1_bits ? refCounterDec_31 : _GEN_606; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_608 = 7'h20 == deallocate_1_bits ? refCounterDec_32 : _GEN_607; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_609 = 7'h21 == deallocate_1_bits ? refCounterDec_33 : _GEN_608; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_610 = 7'h22 == deallocate_1_bits ? refCounterDec_34 : _GEN_609; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_611 = 7'h23 == deallocate_1_bits ? refCounterDec_35 : _GEN_610; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_612 = 7'h24 == deallocate_1_bits ? refCounterDec_36 : _GEN_611; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_613 = 7'h25 == deallocate_1_bits ? refCounterDec_37 : _GEN_612; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_614 = 7'h26 == deallocate_1_bits ? refCounterDec_38 : _GEN_613; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_615 = 7'h27 == deallocate_1_bits ? refCounterDec_39 : _GEN_614; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_616 = 7'h28 == deallocate_1_bits ? refCounterDec_40 : _GEN_615; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_617 = 7'h29 == deallocate_1_bits ? refCounterDec_41 : _GEN_616; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_618 = 7'h2a == deallocate_1_bits ? refCounterDec_42 : _GEN_617; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_619 = 7'h2b == deallocate_1_bits ? refCounterDec_43 : _GEN_618; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_620 = 7'h2c == deallocate_1_bits ? refCounterDec_44 : _GEN_619; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_621 = 7'h2d == deallocate_1_bits ? refCounterDec_45 : _GEN_620; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_622 = 7'h2e == deallocate_1_bits ? refCounterDec_46 : _GEN_621; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_623 = 7'h2f == deallocate_1_bits ? refCounterDec_47 : _GEN_622; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_624 = 7'h30 == deallocate_1_bits ? refCounterDec_48 : _GEN_623; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_625 = 7'h31 == deallocate_1_bits ? refCounterDec_49 : _GEN_624; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_626 = 7'h32 == deallocate_1_bits ? refCounterDec_50 : _GEN_625; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_627 = 7'h33 == deallocate_1_bits ? refCounterDec_51 : _GEN_626; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_628 = 7'h34 == deallocate_1_bits ? refCounterDec_52 : _GEN_627; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_629 = 7'h35 == deallocate_1_bits ? refCounterDec_53 : _GEN_628; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_630 = 7'h36 == deallocate_1_bits ? refCounterDec_54 : _GEN_629; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_631 = 7'h37 == deallocate_1_bits ? refCounterDec_55 : _GEN_630; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_632 = 7'h38 == deallocate_1_bits ? refCounterDec_56 : _GEN_631; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_633 = 7'h39 == deallocate_1_bits ? refCounterDec_57 : _GEN_632; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_634 = 7'h3a == deallocate_1_bits ? refCounterDec_58 : _GEN_633; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_635 = 7'h3b == deallocate_1_bits ? refCounterDec_59 : _GEN_634; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_636 = 7'h3c == deallocate_1_bits ? refCounterDec_60 : _GEN_635; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_637 = 7'h3d == deallocate_1_bits ? refCounterDec_61 : _GEN_636; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_638 = 7'h3e == deallocate_1_bits ? refCounterDec_62 : _GEN_637; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_639 = 7'h3f == deallocate_1_bits ? refCounterDec_63 : _GEN_638; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_640 = 7'h40 == deallocate_1_bits ? refCounterDec_64 : _GEN_639; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_641 = 7'h41 == deallocate_1_bits ? refCounterDec_65 : _GEN_640; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_642 = 7'h42 == deallocate_1_bits ? refCounterDec_66 : _GEN_641; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_643 = 7'h43 == deallocate_1_bits ? refCounterDec_67 : _GEN_642; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_644 = 7'h44 == deallocate_1_bits ? refCounterDec_68 : _GEN_643; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_645 = 7'h45 == deallocate_1_bits ? refCounterDec_69 : _GEN_644; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_646 = 7'h46 == deallocate_1_bits ? refCounterDec_70 : _GEN_645; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_647 = 7'h47 == deallocate_1_bits ? refCounterDec_71 : _GEN_646; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_648 = 7'h48 == deallocate_1_bits ? refCounterDec_72 : _GEN_647; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_649 = 7'h49 == deallocate_1_bits ? refCounterDec_73 : _GEN_648; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_650 = 7'h4a == deallocate_1_bits ? refCounterDec_74 : _GEN_649; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_651 = 7'h4b == deallocate_1_bits ? refCounterDec_75 : _GEN_650; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_652 = 7'h4c == deallocate_1_bits ? refCounterDec_76 : _GEN_651; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_653 = 7'h4d == deallocate_1_bits ? refCounterDec_77 : _GEN_652; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_654 = 7'h4e == deallocate_1_bits ? refCounterDec_78 : _GEN_653; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_655 = 7'h4f == deallocate_1_bits ? refCounterDec_79 : _GEN_654; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_656 = 7'h50 == deallocate_1_bits ? refCounterDec_80 : _GEN_655; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_657 = 7'h51 == deallocate_1_bits ? refCounterDec_81 : _GEN_656; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_658 = 7'h52 == deallocate_1_bits ? refCounterDec_82 : _GEN_657; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_659 = 7'h53 == deallocate_1_bits ? refCounterDec_83 : _GEN_658; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_660 = 7'h54 == deallocate_1_bits ? refCounterDec_84 : _GEN_659; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_661 = 7'h55 == deallocate_1_bits ? refCounterDec_85 : _GEN_660; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_662 = 7'h56 == deallocate_1_bits ? refCounterDec_86 : _GEN_661; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_663 = 7'h57 == deallocate_1_bits ? refCounterDec_87 : _GEN_662; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_664 = 7'h58 == deallocate_1_bits ? refCounterDec_88 : _GEN_663; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_665 = 7'h59 == deallocate_1_bits ? refCounterDec_89 : _GEN_664; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_666 = 7'h5a == deallocate_1_bits ? refCounterDec_90 : _GEN_665; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_667 = 7'h5b == deallocate_1_bits ? refCounterDec_91 : _GEN_666; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_668 = 7'h5c == deallocate_1_bits ? refCounterDec_92 : _GEN_667; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_669 = 7'h5d == deallocate_1_bits ? refCounterDec_93 : _GEN_668; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_670 = 7'h5e == deallocate_1_bits ? refCounterDec_94 : _GEN_669; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_671 = 7'h5f == deallocate_1_bits ? refCounterDec_95 : _GEN_670; // @[RefCounter.scala 56:{64,64}]
  reg  io_freeRegs_1_valid_REG; // @[RefCounter.scala 57:36]
  reg  io_freeRegs_1_valid_REG_1; // @[RefCounter.scala 57:75]
  reg [6:0] io_freeRegs_1_bits_REG; // @[RefCounter.scala 60:35]
  wire [6:0] _GEN_769 = 7'h1 == deallocate_2_bits ? refCounter_1 : 7'h1; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_770 = 7'h2 == deallocate_2_bits ? refCounter_2 : _GEN_769; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_771 = 7'h3 == deallocate_2_bits ? refCounter_3 : _GEN_770; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_772 = 7'h4 == deallocate_2_bits ? refCounter_4 : _GEN_771; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_773 = 7'h5 == deallocate_2_bits ? refCounter_5 : _GEN_772; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_774 = 7'h6 == deallocate_2_bits ? refCounter_6 : _GEN_773; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_775 = 7'h7 == deallocate_2_bits ? refCounter_7 : _GEN_774; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_776 = 7'h8 == deallocate_2_bits ? refCounter_8 : _GEN_775; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_777 = 7'h9 == deallocate_2_bits ? refCounter_9 : _GEN_776; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_778 = 7'ha == deallocate_2_bits ? refCounter_10 : _GEN_777; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_779 = 7'hb == deallocate_2_bits ? refCounter_11 : _GEN_778; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_780 = 7'hc == deallocate_2_bits ? refCounter_12 : _GEN_779; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_781 = 7'hd == deallocate_2_bits ? refCounter_13 : _GEN_780; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_782 = 7'he == deallocate_2_bits ? refCounter_14 : _GEN_781; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_783 = 7'hf == deallocate_2_bits ? refCounter_15 : _GEN_782; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_784 = 7'h10 == deallocate_2_bits ? refCounter_16 : _GEN_783; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_785 = 7'h11 == deallocate_2_bits ? refCounter_17 : _GEN_784; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_786 = 7'h12 == deallocate_2_bits ? refCounter_18 : _GEN_785; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_787 = 7'h13 == deallocate_2_bits ? refCounter_19 : _GEN_786; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_788 = 7'h14 == deallocate_2_bits ? refCounter_20 : _GEN_787; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_789 = 7'h15 == deallocate_2_bits ? refCounter_21 : _GEN_788; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_790 = 7'h16 == deallocate_2_bits ? refCounter_22 : _GEN_789; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_791 = 7'h17 == deallocate_2_bits ? refCounter_23 : _GEN_790; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_792 = 7'h18 == deallocate_2_bits ? refCounter_24 : _GEN_791; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_793 = 7'h19 == deallocate_2_bits ? refCounter_25 : _GEN_792; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_794 = 7'h1a == deallocate_2_bits ? refCounter_26 : _GEN_793; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_795 = 7'h1b == deallocate_2_bits ? refCounter_27 : _GEN_794; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_796 = 7'h1c == deallocate_2_bits ? refCounter_28 : _GEN_795; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_797 = 7'h1d == deallocate_2_bits ? refCounter_29 : _GEN_796; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_798 = 7'h1e == deallocate_2_bits ? refCounter_30 : _GEN_797; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_799 = 7'h1f == deallocate_2_bits ? refCounter_31 : _GEN_798; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_800 = 7'h20 == deallocate_2_bits ? refCounter_32 : _GEN_799; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_801 = 7'h21 == deallocate_2_bits ? refCounter_33 : _GEN_800; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_802 = 7'h22 == deallocate_2_bits ? refCounter_34 : _GEN_801; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_803 = 7'h23 == deallocate_2_bits ? refCounter_35 : _GEN_802; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_804 = 7'h24 == deallocate_2_bits ? refCounter_36 : _GEN_803; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_805 = 7'h25 == deallocate_2_bits ? refCounter_37 : _GEN_804; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_806 = 7'h26 == deallocate_2_bits ? refCounter_38 : _GEN_805; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_807 = 7'h27 == deallocate_2_bits ? refCounter_39 : _GEN_806; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_808 = 7'h28 == deallocate_2_bits ? refCounter_40 : _GEN_807; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_809 = 7'h29 == deallocate_2_bits ? refCounter_41 : _GEN_808; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_810 = 7'h2a == deallocate_2_bits ? refCounter_42 : _GEN_809; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_811 = 7'h2b == deallocate_2_bits ? refCounter_43 : _GEN_810; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_812 = 7'h2c == deallocate_2_bits ? refCounter_44 : _GEN_811; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_813 = 7'h2d == deallocate_2_bits ? refCounter_45 : _GEN_812; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_814 = 7'h2e == deallocate_2_bits ? refCounter_46 : _GEN_813; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_815 = 7'h2f == deallocate_2_bits ? refCounter_47 : _GEN_814; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_816 = 7'h30 == deallocate_2_bits ? refCounter_48 : _GEN_815; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_817 = 7'h31 == deallocate_2_bits ? refCounter_49 : _GEN_816; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_818 = 7'h32 == deallocate_2_bits ? refCounter_50 : _GEN_817; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_819 = 7'h33 == deallocate_2_bits ? refCounter_51 : _GEN_818; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_820 = 7'h34 == deallocate_2_bits ? refCounter_52 : _GEN_819; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_821 = 7'h35 == deallocate_2_bits ? refCounter_53 : _GEN_820; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_822 = 7'h36 == deallocate_2_bits ? refCounter_54 : _GEN_821; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_823 = 7'h37 == deallocate_2_bits ? refCounter_55 : _GEN_822; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_824 = 7'h38 == deallocate_2_bits ? refCounter_56 : _GEN_823; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_825 = 7'h39 == deallocate_2_bits ? refCounter_57 : _GEN_824; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_826 = 7'h3a == deallocate_2_bits ? refCounter_58 : _GEN_825; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_827 = 7'h3b == deallocate_2_bits ? refCounter_59 : _GEN_826; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_828 = 7'h3c == deallocate_2_bits ? refCounter_60 : _GEN_827; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_829 = 7'h3d == deallocate_2_bits ? refCounter_61 : _GEN_828; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_830 = 7'h3e == deallocate_2_bits ? refCounter_62 : _GEN_829; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_831 = 7'h3f == deallocate_2_bits ? refCounter_63 : _GEN_830; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_832 = 7'h40 == deallocate_2_bits ? refCounter_64 : _GEN_831; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_833 = 7'h41 == deallocate_2_bits ? refCounter_65 : _GEN_832; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_834 = 7'h42 == deallocate_2_bits ? refCounter_66 : _GEN_833; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_835 = 7'h43 == deallocate_2_bits ? refCounter_67 : _GEN_834; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_836 = 7'h44 == deallocate_2_bits ? refCounter_68 : _GEN_835; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_837 = 7'h45 == deallocate_2_bits ? refCounter_69 : _GEN_836; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_838 = 7'h46 == deallocate_2_bits ? refCounter_70 : _GEN_837; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_839 = 7'h47 == deallocate_2_bits ? refCounter_71 : _GEN_838; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_840 = 7'h48 == deallocate_2_bits ? refCounter_72 : _GEN_839; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_841 = 7'h49 == deallocate_2_bits ? refCounter_73 : _GEN_840; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_842 = 7'h4a == deallocate_2_bits ? refCounter_74 : _GEN_841; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_843 = 7'h4b == deallocate_2_bits ? refCounter_75 : _GEN_842; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_844 = 7'h4c == deallocate_2_bits ? refCounter_76 : _GEN_843; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_845 = 7'h4d == deallocate_2_bits ? refCounter_77 : _GEN_844; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_846 = 7'h4e == deallocate_2_bits ? refCounter_78 : _GEN_845; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_847 = 7'h4f == deallocate_2_bits ? refCounter_79 : _GEN_846; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_848 = 7'h50 == deallocate_2_bits ? refCounter_80 : _GEN_847; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_849 = 7'h51 == deallocate_2_bits ? refCounter_81 : _GEN_848; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_850 = 7'h52 == deallocate_2_bits ? refCounter_82 : _GEN_849; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_851 = 7'h53 == deallocate_2_bits ? refCounter_83 : _GEN_850; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_852 = 7'h54 == deallocate_2_bits ? refCounter_84 : _GEN_851; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_853 = 7'h55 == deallocate_2_bits ? refCounter_85 : _GEN_852; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_854 = 7'h56 == deallocate_2_bits ? refCounter_86 : _GEN_853; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_855 = 7'h57 == deallocate_2_bits ? refCounter_87 : _GEN_854; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_856 = 7'h58 == deallocate_2_bits ? refCounter_88 : _GEN_855; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_857 = 7'h59 == deallocate_2_bits ? refCounter_89 : _GEN_856; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_858 = 7'h5a == deallocate_2_bits ? refCounter_90 : _GEN_857; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_859 = 7'h5b == deallocate_2_bits ? refCounter_91 : _GEN_858; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_860 = 7'h5c == deallocate_2_bits ? refCounter_92 : _GEN_859; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_861 = 7'h5d == deallocate_2_bits ? refCounter_93 : _GEN_860; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_862 = 7'h5e == deallocate_2_bits ? refCounter_94 : _GEN_861; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_863 = 7'h5f == deallocate_2_bits ? refCounter_95 : _GEN_862; // @[RefCounter.scala 53:{53,53}]
  wire  isNonZero_2 = deallocate_2_valid & _GEN_863 != 7'h0; // @[RefCounter.scala 53:30]
  wire  hasDuplicate_0_1 = deallocate_0_valid & deallocate_0_bits == deallocate_2_bits; // @[RefCounter.scala 54:62]
  wire  hasDuplicate_1 = deallocate_1_valid & deallocate_1_bits == deallocate_2_bits; // @[RefCounter.scala 54:62]
  wire [1:0] _blockedByDup_T = {hasDuplicate_1,hasDuplicate_0_1}; // @[RefCounter.scala 55:71]
  wire  blockedByDup_1 = |_blockedByDup_T; // @[RefCounter.scala 55:78]
  wire [6:0] _GEN_865 = 7'h1 == deallocate_2_bits ? refCounterInc_1 : 7'h1; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_866 = 7'h2 == deallocate_2_bits ? refCounterInc_2 : _GEN_865; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_867 = 7'h3 == deallocate_2_bits ? refCounterInc_3 : _GEN_866; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_868 = 7'h4 == deallocate_2_bits ? refCounterInc_4 : _GEN_867; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_869 = 7'h5 == deallocate_2_bits ? refCounterInc_5 : _GEN_868; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_870 = 7'h6 == deallocate_2_bits ? refCounterInc_6 : _GEN_869; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_871 = 7'h7 == deallocate_2_bits ? refCounterInc_7 : _GEN_870; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_872 = 7'h8 == deallocate_2_bits ? refCounterInc_8 : _GEN_871; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_873 = 7'h9 == deallocate_2_bits ? refCounterInc_9 : _GEN_872; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_874 = 7'ha == deallocate_2_bits ? refCounterInc_10 : _GEN_873; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_875 = 7'hb == deallocate_2_bits ? refCounterInc_11 : _GEN_874; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_876 = 7'hc == deallocate_2_bits ? refCounterInc_12 : _GEN_875; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_877 = 7'hd == deallocate_2_bits ? refCounterInc_13 : _GEN_876; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_878 = 7'he == deallocate_2_bits ? refCounterInc_14 : _GEN_877; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_879 = 7'hf == deallocate_2_bits ? refCounterInc_15 : _GEN_878; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_880 = 7'h10 == deallocate_2_bits ? refCounterInc_16 : _GEN_879; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_881 = 7'h11 == deallocate_2_bits ? refCounterInc_17 : _GEN_880; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_882 = 7'h12 == deallocate_2_bits ? refCounterInc_18 : _GEN_881; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_883 = 7'h13 == deallocate_2_bits ? refCounterInc_19 : _GEN_882; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_884 = 7'h14 == deallocate_2_bits ? refCounterInc_20 : _GEN_883; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_885 = 7'h15 == deallocate_2_bits ? refCounterInc_21 : _GEN_884; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_886 = 7'h16 == deallocate_2_bits ? refCounterInc_22 : _GEN_885; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_887 = 7'h17 == deallocate_2_bits ? refCounterInc_23 : _GEN_886; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_888 = 7'h18 == deallocate_2_bits ? refCounterInc_24 : _GEN_887; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_889 = 7'h19 == deallocate_2_bits ? refCounterInc_25 : _GEN_888; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_890 = 7'h1a == deallocate_2_bits ? refCounterInc_26 : _GEN_889; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_891 = 7'h1b == deallocate_2_bits ? refCounterInc_27 : _GEN_890; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_892 = 7'h1c == deallocate_2_bits ? refCounterInc_28 : _GEN_891; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_893 = 7'h1d == deallocate_2_bits ? refCounterInc_29 : _GEN_892; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_894 = 7'h1e == deallocate_2_bits ? refCounterInc_30 : _GEN_893; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_895 = 7'h1f == deallocate_2_bits ? refCounterInc_31 : _GEN_894; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_896 = 7'h20 == deallocate_2_bits ? refCounterInc_32 : _GEN_895; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_897 = 7'h21 == deallocate_2_bits ? refCounterInc_33 : _GEN_896; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_898 = 7'h22 == deallocate_2_bits ? refCounterInc_34 : _GEN_897; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_899 = 7'h23 == deallocate_2_bits ? refCounterInc_35 : _GEN_898; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_900 = 7'h24 == deallocate_2_bits ? refCounterInc_36 : _GEN_899; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_901 = 7'h25 == deallocate_2_bits ? refCounterInc_37 : _GEN_900; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_902 = 7'h26 == deallocate_2_bits ? refCounterInc_38 : _GEN_901; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_903 = 7'h27 == deallocate_2_bits ? refCounterInc_39 : _GEN_902; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_904 = 7'h28 == deallocate_2_bits ? refCounterInc_40 : _GEN_903; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_905 = 7'h29 == deallocate_2_bits ? refCounterInc_41 : _GEN_904; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_906 = 7'h2a == deallocate_2_bits ? refCounterInc_42 : _GEN_905; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_907 = 7'h2b == deallocate_2_bits ? refCounterInc_43 : _GEN_906; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_908 = 7'h2c == deallocate_2_bits ? refCounterInc_44 : _GEN_907; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_909 = 7'h2d == deallocate_2_bits ? refCounterInc_45 : _GEN_908; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_910 = 7'h2e == deallocate_2_bits ? refCounterInc_46 : _GEN_909; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_911 = 7'h2f == deallocate_2_bits ? refCounterInc_47 : _GEN_910; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_912 = 7'h30 == deallocate_2_bits ? refCounterInc_48 : _GEN_911; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_913 = 7'h31 == deallocate_2_bits ? refCounterInc_49 : _GEN_912; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_914 = 7'h32 == deallocate_2_bits ? refCounterInc_50 : _GEN_913; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_915 = 7'h33 == deallocate_2_bits ? refCounterInc_51 : _GEN_914; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_916 = 7'h34 == deallocate_2_bits ? refCounterInc_52 : _GEN_915; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_917 = 7'h35 == deallocate_2_bits ? refCounterInc_53 : _GEN_916; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_918 = 7'h36 == deallocate_2_bits ? refCounterInc_54 : _GEN_917; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_919 = 7'h37 == deallocate_2_bits ? refCounterInc_55 : _GEN_918; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_920 = 7'h38 == deallocate_2_bits ? refCounterInc_56 : _GEN_919; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_921 = 7'h39 == deallocate_2_bits ? refCounterInc_57 : _GEN_920; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_922 = 7'h3a == deallocate_2_bits ? refCounterInc_58 : _GEN_921; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_923 = 7'h3b == deallocate_2_bits ? refCounterInc_59 : _GEN_922; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_924 = 7'h3c == deallocate_2_bits ? refCounterInc_60 : _GEN_923; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_925 = 7'h3d == deallocate_2_bits ? refCounterInc_61 : _GEN_924; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_926 = 7'h3e == deallocate_2_bits ? refCounterInc_62 : _GEN_925; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_927 = 7'h3f == deallocate_2_bits ? refCounterInc_63 : _GEN_926; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_928 = 7'h40 == deallocate_2_bits ? refCounterInc_64 : _GEN_927; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_929 = 7'h41 == deallocate_2_bits ? refCounterInc_65 : _GEN_928; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_930 = 7'h42 == deallocate_2_bits ? refCounterInc_66 : _GEN_929; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_931 = 7'h43 == deallocate_2_bits ? refCounterInc_67 : _GEN_930; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_932 = 7'h44 == deallocate_2_bits ? refCounterInc_68 : _GEN_931; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_933 = 7'h45 == deallocate_2_bits ? refCounterInc_69 : _GEN_932; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_934 = 7'h46 == deallocate_2_bits ? refCounterInc_70 : _GEN_933; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_935 = 7'h47 == deallocate_2_bits ? refCounterInc_71 : _GEN_934; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_936 = 7'h48 == deallocate_2_bits ? refCounterInc_72 : _GEN_935; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_937 = 7'h49 == deallocate_2_bits ? refCounterInc_73 : _GEN_936; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_938 = 7'h4a == deallocate_2_bits ? refCounterInc_74 : _GEN_937; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_939 = 7'h4b == deallocate_2_bits ? refCounterInc_75 : _GEN_938; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_940 = 7'h4c == deallocate_2_bits ? refCounterInc_76 : _GEN_939; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_941 = 7'h4d == deallocate_2_bits ? refCounterInc_77 : _GEN_940; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_942 = 7'h4e == deallocate_2_bits ? refCounterInc_78 : _GEN_941; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_943 = 7'h4f == deallocate_2_bits ? refCounterInc_79 : _GEN_942; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_944 = 7'h50 == deallocate_2_bits ? refCounterInc_80 : _GEN_943; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_945 = 7'h51 == deallocate_2_bits ? refCounterInc_81 : _GEN_944; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_946 = 7'h52 == deallocate_2_bits ? refCounterInc_82 : _GEN_945; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_947 = 7'h53 == deallocate_2_bits ? refCounterInc_83 : _GEN_946; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_948 = 7'h54 == deallocate_2_bits ? refCounterInc_84 : _GEN_947; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_949 = 7'h55 == deallocate_2_bits ? refCounterInc_85 : _GEN_948; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_950 = 7'h56 == deallocate_2_bits ? refCounterInc_86 : _GEN_949; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_951 = 7'h57 == deallocate_2_bits ? refCounterInc_87 : _GEN_950; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_952 = 7'h58 == deallocate_2_bits ? refCounterInc_88 : _GEN_951; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_953 = 7'h59 == deallocate_2_bits ? refCounterInc_89 : _GEN_952; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_954 = 7'h5a == deallocate_2_bits ? refCounterInc_90 : _GEN_953; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_955 = 7'h5b == deallocate_2_bits ? refCounterInc_91 : _GEN_954; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_956 = 7'h5c == deallocate_2_bits ? refCounterInc_92 : _GEN_955; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_957 = 7'h5d == deallocate_2_bits ? refCounterInc_93 : _GEN_956; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_958 = 7'h5e == deallocate_2_bits ? refCounterInc_94 : _GEN_957; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_959 = 7'h5f == deallocate_2_bits ? refCounterInc_95 : _GEN_958; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _isFreed_T_5 = _GEN_863 + _GEN_959; // @[RefCounter.scala 56:39]
  wire [6:0] _GEN_961 = 7'h1 == deallocate_2_bits ? refCounterDec_1 : 7'h1; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_962 = 7'h2 == deallocate_2_bits ? refCounterDec_2 : _GEN_961; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_963 = 7'h3 == deallocate_2_bits ? refCounterDec_3 : _GEN_962; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_964 = 7'h4 == deallocate_2_bits ? refCounterDec_4 : _GEN_963; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_965 = 7'h5 == deallocate_2_bits ? refCounterDec_5 : _GEN_964; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_966 = 7'h6 == deallocate_2_bits ? refCounterDec_6 : _GEN_965; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_967 = 7'h7 == deallocate_2_bits ? refCounterDec_7 : _GEN_966; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_968 = 7'h8 == deallocate_2_bits ? refCounterDec_8 : _GEN_967; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_969 = 7'h9 == deallocate_2_bits ? refCounterDec_9 : _GEN_968; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_970 = 7'ha == deallocate_2_bits ? refCounterDec_10 : _GEN_969; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_971 = 7'hb == deallocate_2_bits ? refCounterDec_11 : _GEN_970; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_972 = 7'hc == deallocate_2_bits ? refCounterDec_12 : _GEN_971; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_973 = 7'hd == deallocate_2_bits ? refCounterDec_13 : _GEN_972; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_974 = 7'he == deallocate_2_bits ? refCounterDec_14 : _GEN_973; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_975 = 7'hf == deallocate_2_bits ? refCounterDec_15 : _GEN_974; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_976 = 7'h10 == deallocate_2_bits ? refCounterDec_16 : _GEN_975; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_977 = 7'h11 == deallocate_2_bits ? refCounterDec_17 : _GEN_976; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_978 = 7'h12 == deallocate_2_bits ? refCounterDec_18 : _GEN_977; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_979 = 7'h13 == deallocate_2_bits ? refCounterDec_19 : _GEN_978; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_980 = 7'h14 == deallocate_2_bits ? refCounterDec_20 : _GEN_979; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_981 = 7'h15 == deallocate_2_bits ? refCounterDec_21 : _GEN_980; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_982 = 7'h16 == deallocate_2_bits ? refCounterDec_22 : _GEN_981; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_983 = 7'h17 == deallocate_2_bits ? refCounterDec_23 : _GEN_982; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_984 = 7'h18 == deallocate_2_bits ? refCounterDec_24 : _GEN_983; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_985 = 7'h19 == deallocate_2_bits ? refCounterDec_25 : _GEN_984; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_986 = 7'h1a == deallocate_2_bits ? refCounterDec_26 : _GEN_985; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_987 = 7'h1b == deallocate_2_bits ? refCounterDec_27 : _GEN_986; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_988 = 7'h1c == deallocate_2_bits ? refCounterDec_28 : _GEN_987; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_989 = 7'h1d == deallocate_2_bits ? refCounterDec_29 : _GEN_988; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_990 = 7'h1e == deallocate_2_bits ? refCounterDec_30 : _GEN_989; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_991 = 7'h1f == deallocate_2_bits ? refCounterDec_31 : _GEN_990; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_992 = 7'h20 == deallocate_2_bits ? refCounterDec_32 : _GEN_991; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_993 = 7'h21 == deallocate_2_bits ? refCounterDec_33 : _GEN_992; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_994 = 7'h22 == deallocate_2_bits ? refCounterDec_34 : _GEN_993; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_995 = 7'h23 == deallocate_2_bits ? refCounterDec_35 : _GEN_994; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_996 = 7'h24 == deallocate_2_bits ? refCounterDec_36 : _GEN_995; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_997 = 7'h25 == deallocate_2_bits ? refCounterDec_37 : _GEN_996; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_998 = 7'h26 == deallocate_2_bits ? refCounterDec_38 : _GEN_997; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_999 = 7'h27 == deallocate_2_bits ? refCounterDec_39 : _GEN_998; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1000 = 7'h28 == deallocate_2_bits ? refCounterDec_40 : _GEN_999; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1001 = 7'h29 == deallocate_2_bits ? refCounterDec_41 : _GEN_1000; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1002 = 7'h2a == deallocate_2_bits ? refCounterDec_42 : _GEN_1001; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1003 = 7'h2b == deallocate_2_bits ? refCounterDec_43 : _GEN_1002; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1004 = 7'h2c == deallocate_2_bits ? refCounterDec_44 : _GEN_1003; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1005 = 7'h2d == deallocate_2_bits ? refCounterDec_45 : _GEN_1004; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1006 = 7'h2e == deallocate_2_bits ? refCounterDec_46 : _GEN_1005; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1007 = 7'h2f == deallocate_2_bits ? refCounterDec_47 : _GEN_1006; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1008 = 7'h30 == deallocate_2_bits ? refCounterDec_48 : _GEN_1007; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1009 = 7'h31 == deallocate_2_bits ? refCounterDec_49 : _GEN_1008; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1010 = 7'h32 == deallocate_2_bits ? refCounterDec_50 : _GEN_1009; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1011 = 7'h33 == deallocate_2_bits ? refCounterDec_51 : _GEN_1010; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1012 = 7'h34 == deallocate_2_bits ? refCounterDec_52 : _GEN_1011; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1013 = 7'h35 == deallocate_2_bits ? refCounterDec_53 : _GEN_1012; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1014 = 7'h36 == deallocate_2_bits ? refCounterDec_54 : _GEN_1013; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1015 = 7'h37 == deallocate_2_bits ? refCounterDec_55 : _GEN_1014; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1016 = 7'h38 == deallocate_2_bits ? refCounterDec_56 : _GEN_1015; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1017 = 7'h39 == deallocate_2_bits ? refCounterDec_57 : _GEN_1016; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1018 = 7'h3a == deallocate_2_bits ? refCounterDec_58 : _GEN_1017; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1019 = 7'h3b == deallocate_2_bits ? refCounterDec_59 : _GEN_1018; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1020 = 7'h3c == deallocate_2_bits ? refCounterDec_60 : _GEN_1019; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1021 = 7'h3d == deallocate_2_bits ? refCounterDec_61 : _GEN_1020; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1022 = 7'h3e == deallocate_2_bits ? refCounterDec_62 : _GEN_1021; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1023 = 7'h3f == deallocate_2_bits ? refCounterDec_63 : _GEN_1022; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1024 = 7'h40 == deallocate_2_bits ? refCounterDec_64 : _GEN_1023; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1025 = 7'h41 == deallocate_2_bits ? refCounterDec_65 : _GEN_1024; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1026 = 7'h42 == deallocate_2_bits ? refCounterDec_66 : _GEN_1025; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1027 = 7'h43 == deallocate_2_bits ? refCounterDec_67 : _GEN_1026; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1028 = 7'h44 == deallocate_2_bits ? refCounterDec_68 : _GEN_1027; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1029 = 7'h45 == deallocate_2_bits ? refCounterDec_69 : _GEN_1028; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1030 = 7'h46 == deallocate_2_bits ? refCounterDec_70 : _GEN_1029; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1031 = 7'h47 == deallocate_2_bits ? refCounterDec_71 : _GEN_1030; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1032 = 7'h48 == deallocate_2_bits ? refCounterDec_72 : _GEN_1031; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1033 = 7'h49 == deallocate_2_bits ? refCounterDec_73 : _GEN_1032; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1034 = 7'h4a == deallocate_2_bits ? refCounterDec_74 : _GEN_1033; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1035 = 7'h4b == deallocate_2_bits ? refCounterDec_75 : _GEN_1034; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1036 = 7'h4c == deallocate_2_bits ? refCounterDec_76 : _GEN_1035; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1037 = 7'h4d == deallocate_2_bits ? refCounterDec_77 : _GEN_1036; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1038 = 7'h4e == deallocate_2_bits ? refCounterDec_78 : _GEN_1037; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1039 = 7'h4f == deallocate_2_bits ? refCounterDec_79 : _GEN_1038; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1040 = 7'h50 == deallocate_2_bits ? refCounterDec_80 : _GEN_1039; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1041 = 7'h51 == deallocate_2_bits ? refCounterDec_81 : _GEN_1040; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1042 = 7'h52 == deallocate_2_bits ? refCounterDec_82 : _GEN_1041; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1043 = 7'h53 == deallocate_2_bits ? refCounterDec_83 : _GEN_1042; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1044 = 7'h54 == deallocate_2_bits ? refCounterDec_84 : _GEN_1043; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1045 = 7'h55 == deallocate_2_bits ? refCounterDec_85 : _GEN_1044; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1046 = 7'h56 == deallocate_2_bits ? refCounterDec_86 : _GEN_1045; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1047 = 7'h57 == deallocate_2_bits ? refCounterDec_87 : _GEN_1046; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1048 = 7'h58 == deallocate_2_bits ? refCounterDec_88 : _GEN_1047; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1049 = 7'h59 == deallocate_2_bits ? refCounterDec_89 : _GEN_1048; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1050 = 7'h5a == deallocate_2_bits ? refCounterDec_90 : _GEN_1049; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1051 = 7'h5b == deallocate_2_bits ? refCounterDec_91 : _GEN_1050; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1052 = 7'h5c == deallocate_2_bits ? refCounterDec_92 : _GEN_1051; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1053 = 7'h5d == deallocate_2_bits ? refCounterDec_93 : _GEN_1052; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1054 = 7'h5e == deallocate_2_bits ? refCounterDec_94 : _GEN_1053; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1055 = 7'h5f == deallocate_2_bits ? refCounterDec_95 : _GEN_1054; // @[RefCounter.scala 56:{64,64}]
  reg  io_freeRegs_2_valid_REG; // @[RefCounter.scala 57:36]
  reg  io_freeRegs_2_valid_REG_1; // @[RefCounter.scala 57:75]
  reg [6:0] io_freeRegs_2_bits_REG; // @[RefCounter.scala 60:35]
  wire [6:0] _GEN_1153 = 7'h1 == deallocate_3_bits ? refCounter_1 : 7'h1; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1154 = 7'h2 == deallocate_3_bits ? refCounter_2 : _GEN_1153; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1155 = 7'h3 == deallocate_3_bits ? refCounter_3 : _GEN_1154; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1156 = 7'h4 == deallocate_3_bits ? refCounter_4 : _GEN_1155; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1157 = 7'h5 == deallocate_3_bits ? refCounter_5 : _GEN_1156; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1158 = 7'h6 == deallocate_3_bits ? refCounter_6 : _GEN_1157; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1159 = 7'h7 == deallocate_3_bits ? refCounter_7 : _GEN_1158; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1160 = 7'h8 == deallocate_3_bits ? refCounter_8 : _GEN_1159; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1161 = 7'h9 == deallocate_3_bits ? refCounter_9 : _GEN_1160; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1162 = 7'ha == deallocate_3_bits ? refCounter_10 : _GEN_1161; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1163 = 7'hb == deallocate_3_bits ? refCounter_11 : _GEN_1162; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1164 = 7'hc == deallocate_3_bits ? refCounter_12 : _GEN_1163; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1165 = 7'hd == deallocate_3_bits ? refCounter_13 : _GEN_1164; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1166 = 7'he == deallocate_3_bits ? refCounter_14 : _GEN_1165; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1167 = 7'hf == deallocate_3_bits ? refCounter_15 : _GEN_1166; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1168 = 7'h10 == deallocate_3_bits ? refCounter_16 : _GEN_1167; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1169 = 7'h11 == deallocate_3_bits ? refCounter_17 : _GEN_1168; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1170 = 7'h12 == deallocate_3_bits ? refCounter_18 : _GEN_1169; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1171 = 7'h13 == deallocate_3_bits ? refCounter_19 : _GEN_1170; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1172 = 7'h14 == deallocate_3_bits ? refCounter_20 : _GEN_1171; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1173 = 7'h15 == deallocate_3_bits ? refCounter_21 : _GEN_1172; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1174 = 7'h16 == deallocate_3_bits ? refCounter_22 : _GEN_1173; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1175 = 7'h17 == deallocate_3_bits ? refCounter_23 : _GEN_1174; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1176 = 7'h18 == deallocate_3_bits ? refCounter_24 : _GEN_1175; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1177 = 7'h19 == deallocate_3_bits ? refCounter_25 : _GEN_1176; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1178 = 7'h1a == deallocate_3_bits ? refCounter_26 : _GEN_1177; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1179 = 7'h1b == deallocate_3_bits ? refCounter_27 : _GEN_1178; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1180 = 7'h1c == deallocate_3_bits ? refCounter_28 : _GEN_1179; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1181 = 7'h1d == deallocate_3_bits ? refCounter_29 : _GEN_1180; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1182 = 7'h1e == deallocate_3_bits ? refCounter_30 : _GEN_1181; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1183 = 7'h1f == deallocate_3_bits ? refCounter_31 : _GEN_1182; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1184 = 7'h20 == deallocate_3_bits ? refCounter_32 : _GEN_1183; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1185 = 7'h21 == deallocate_3_bits ? refCounter_33 : _GEN_1184; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1186 = 7'h22 == deallocate_3_bits ? refCounter_34 : _GEN_1185; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1187 = 7'h23 == deallocate_3_bits ? refCounter_35 : _GEN_1186; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1188 = 7'h24 == deallocate_3_bits ? refCounter_36 : _GEN_1187; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1189 = 7'h25 == deallocate_3_bits ? refCounter_37 : _GEN_1188; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1190 = 7'h26 == deallocate_3_bits ? refCounter_38 : _GEN_1189; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1191 = 7'h27 == deallocate_3_bits ? refCounter_39 : _GEN_1190; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1192 = 7'h28 == deallocate_3_bits ? refCounter_40 : _GEN_1191; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1193 = 7'h29 == deallocate_3_bits ? refCounter_41 : _GEN_1192; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1194 = 7'h2a == deallocate_3_bits ? refCounter_42 : _GEN_1193; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1195 = 7'h2b == deallocate_3_bits ? refCounter_43 : _GEN_1194; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1196 = 7'h2c == deallocate_3_bits ? refCounter_44 : _GEN_1195; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1197 = 7'h2d == deallocate_3_bits ? refCounter_45 : _GEN_1196; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1198 = 7'h2e == deallocate_3_bits ? refCounter_46 : _GEN_1197; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1199 = 7'h2f == deallocate_3_bits ? refCounter_47 : _GEN_1198; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1200 = 7'h30 == deallocate_3_bits ? refCounter_48 : _GEN_1199; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1201 = 7'h31 == deallocate_3_bits ? refCounter_49 : _GEN_1200; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1202 = 7'h32 == deallocate_3_bits ? refCounter_50 : _GEN_1201; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1203 = 7'h33 == deallocate_3_bits ? refCounter_51 : _GEN_1202; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1204 = 7'h34 == deallocate_3_bits ? refCounter_52 : _GEN_1203; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1205 = 7'h35 == deallocate_3_bits ? refCounter_53 : _GEN_1204; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1206 = 7'h36 == deallocate_3_bits ? refCounter_54 : _GEN_1205; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1207 = 7'h37 == deallocate_3_bits ? refCounter_55 : _GEN_1206; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1208 = 7'h38 == deallocate_3_bits ? refCounter_56 : _GEN_1207; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1209 = 7'h39 == deallocate_3_bits ? refCounter_57 : _GEN_1208; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1210 = 7'h3a == deallocate_3_bits ? refCounter_58 : _GEN_1209; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1211 = 7'h3b == deallocate_3_bits ? refCounter_59 : _GEN_1210; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1212 = 7'h3c == deallocate_3_bits ? refCounter_60 : _GEN_1211; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1213 = 7'h3d == deallocate_3_bits ? refCounter_61 : _GEN_1212; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1214 = 7'h3e == deallocate_3_bits ? refCounter_62 : _GEN_1213; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1215 = 7'h3f == deallocate_3_bits ? refCounter_63 : _GEN_1214; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1216 = 7'h40 == deallocate_3_bits ? refCounter_64 : _GEN_1215; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1217 = 7'h41 == deallocate_3_bits ? refCounter_65 : _GEN_1216; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1218 = 7'h42 == deallocate_3_bits ? refCounter_66 : _GEN_1217; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1219 = 7'h43 == deallocate_3_bits ? refCounter_67 : _GEN_1218; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1220 = 7'h44 == deallocate_3_bits ? refCounter_68 : _GEN_1219; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1221 = 7'h45 == deallocate_3_bits ? refCounter_69 : _GEN_1220; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1222 = 7'h46 == deallocate_3_bits ? refCounter_70 : _GEN_1221; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1223 = 7'h47 == deallocate_3_bits ? refCounter_71 : _GEN_1222; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1224 = 7'h48 == deallocate_3_bits ? refCounter_72 : _GEN_1223; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1225 = 7'h49 == deallocate_3_bits ? refCounter_73 : _GEN_1224; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1226 = 7'h4a == deallocate_3_bits ? refCounter_74 : _GEN_1225; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1227 = 7'h4b == deallocate_3_bits ? refCounter_75 : _GEN_1226; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1228 = 7'h4c == deallocate_3_bits ? refCounter_76 : _GEN_1227; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1229 = 7'h4d == deallocate_3_bits ? refCounter_77 : _GEN_1228; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1230 = 7'h4e == deallocate_3_bits ? refCounter_78 : _GEN_1229; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1231 = 7'h4f == deallocate_3_bits ? refCounter_79 : _GEN_1230; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1232 = 7'h50 == deallocate_3_bits ? refCounter_80 : _GEN_1231; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1233 = 7'h51 == deallocate_3_bits ? refCounter_81 : _GEN_1232; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1234 = 7'h52 == deallocate_3_bits ? refCounter_82 : _GEN_1233; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1235 = 7'h53 == deallocate_3_bits ? refCounter_83 : _GEN_1234; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1236 = 7'h54 == deallocate_3_bits ? refCounter_84 : _GEN_1235; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1237 = 7'h55 == deallocate_3_bits ? refCounter_85 : _GEN_1236; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1238 = 7'h56 == deallocate_3_bits ? refCounter_86 : _GEN_1237; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1239 = 7'h57 == deallocate_3_bits ? refCounter_87 : _GEN_1238; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1240 = 7'h58 == deallocate_3_bits ? refCounter_88 : _GEN_1239; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1241 = 7'h59 == deallocate_3_bits ? refCounter_89 : _GEN_1240; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1242 = 7'h5a == deallocate_3_bits ? refCounter_90 : _GEN_1241; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1243 = 7'h5b == deallocate_3_bits ? refCounter_91 : _GEN_1242; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1244 = 7'h5c == deallocate_3_bits ? refCounter_92 : _GEN_1243; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1245 = 7'h5d == deallocate_3_bits ? refCounter_93 : _GEN_1244; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1246 = 7'h5e == deallocate_3_bits ? refCounter_94 : _GEN_1245; // @[RefCounter.scala 53:{53,53}]
  wire [6:0] _GEN_1247 = 7'h5f == deallocate_3_bits ? refCounter_95 : _GEN_1246; // @[RefCounter.scala 53:{53,53}]
  wire  isNonZero_3 = deallocate_3_valid & _GEN_1247 != 7'h0; // @[RefCounter.scala 53:30]
  wire  hasDuplicate_0_2 = deallocate_0_valid & deallocate_0_bits == deallocate_3_bits; // @[RefCounter.scala 54:62]
  wire  hasDuplicate_1_1 = deallocate_1_valid & deallocate_1_bits == deallocate_3_bits; // @[RefCounter.scala 54:62]
  wire  hasDuplicate_2 = deallocate_2_valid & deallocate_2_bits == deallocate_3_bits; // @[RefCounter.scala 54:62]
  wire [2:0] _blockedByDup_T_1 = {hasDuplicate_2,hasDuplicate_1_1,hasDuplicate_0_2}; // @[RefCounter.scala 55:71]
  wire  blockedByDup_2 = |_blockedByDup_T_1; // @[RefCounter.scala 55:78]
  wire [6:0] _GEN_1249 = 7'h1 == deallocate_3_bits ? refCounterInc_1 : 7'h1; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1250 = 7'h2 == deallocate_3_bits ? refCounterInc_2 : _GEN_1249; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1251 = 7'h3 == deallocate_3_bits ? refCounterInc_3 : _GEN_1250; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1252 = 7'h4 == deallocate_3_bits ? refCounterInc_4 : _GEN_1251; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1253 = 7'h5 == deallocate_3_bits ? refCounterInc_5 : _GEN_1252; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1254 = 7'h6 == deallocate_3_bits ? refCounterInc_6 : _GEN_1253; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1255 = 7'h7 == deallocate_3_bits ? refCounterInc_7 : _GEN_1254; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1256 = 7'h8 == deallocate_3_bits ? refCounterInc_8 : _GEN_1255; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1257 = 7'h9 == deallocate_3_bits ? refCounterInc_9 : _GEN_1256; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1258 = 7'ha == deallocate_3_bits ? refCounterInc_10 : _GEN_1257; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1259 = 7'hb == deallocate_3_bits ? refCounterInc_11 : _GEN_1258; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1260 = 7'hc == deallocate_3_bits ? refCounterInc_12 : _GEN_1259; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1261 = 7'hd == deallocate_3_bits ? refCounterInc_13 : _GEN_1260; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1262 = 7'he == deallocate_3_bits ? refCounterInc_14 : _GEN_1261; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1263 = 7'hf == deallocate_3_bits ? refCounterInc_15 : _GEN_1262; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1264 = 7'h10 == deallocate_3_bits ? refCounterInc_16 : _GEN_1263; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1265 = 7'h11 == deallocate_3_bits ? refCounterInc_17 : _GEN_1264; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1266 = 7'h12 == deallocate_3_bits ? refCounterInc_18 : _GEN_1265; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1267 = 7'h13 == deallocate_3_bits ? refCounterInc_19 : _GEN_1266; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1268 = 7'h14 == deallocate_3_bits ? refCounterInc_20 : _GEN_1267; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1269 = 7'h15 == deallocate_3_bits ? refCounterInc_21 : _GEN_1268; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1270 = 7'h16 == deallocate_3_bits ? refCounterInc_22 : _GEN_1269; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1271 = 7'h17 == deallocate_3_bits ? refCounterInc_23 : _GEN_1270; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1272 = 7'h18 == deallocate_3_bits ? refCounterInc_24 : _GEN_1271; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1273 = 7'h19 == deallocate_3_bits ? refCounterInc_25 : _GEN_1272; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1274 = 7'h1a == deallocate_3_bits ? refCounterInc_26 : _GEN_1273; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1275 = 7'h1b == deallocate_3_bits ? refCounterInc_27 : _GEN_1274; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1276 = 7'h1c == deallocate_3_bits ? refCounterInc_28 : _GEN_1275; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1277 = 7'h1d == deallocate_3_bits ? refCounterInc_29 : _GEN_1276; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1278 = 7'h1e == deallocate_3_bits ? refCounterInc_30 : _GEN_1277; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1279 = 7'h1f == deallocate_3_bits ? refCounterInc_31 : _GEN_1278; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1280 = 7'h20 == deallocate_3_bits ? refCounterInc_32 : _GEN_1279; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1281 = 7'h21 == deallocate_3_bits ? refCounterInc_33 : _GEN_1280; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1282 = 7'h22 == deallocate_3_bits ? refCounterInc_34 : _GEN_1281; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1283 = 7'h23 == deallocate_3_bits ? refCounterInc_35 : _GEN_1282; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1284 = 7'h24 == deallocate_3_bits ? refCounterInc_36 : _GEN_1283; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1285 = 7'h25 == deallocate_3_bits ? refCounterInc_37 : _GEN_1284; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1286 = 7'h26 == deallocate_3_bits ? refCounterInc_38 : _GEN_1285; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1287 = 7'h27 == deallocate_3_bits ? refCounterInc_39 : _GEN_1286; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1288 = 7'h28 == deallocate_3_bits ? refCounterInc_40 : _GEN_1287; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1289 = 7'h29 == deallocate_3_bits ? refCounterInc_41 : _GEN_1288; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1290 = 7'h2a == deallocate_3_bits ? refCounterInc_42 : _GEN_1289; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1291 = 7'h2b == deallocate_3_bits ? refCounterInc_43 : _GEN_1290; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1292 = 7'h2c == deallocate_3_bits ? refCounterInc_44 : _GEN_1291; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1293 = 7'h2d == deallocate_3_bits ? refCounterInc_45 : _GEN_1292; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1294 = 7'h2e == deallocate_3_bits ? refCounterInc_46 : _GEN_1293; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1295 = 7'h2f == deallocate_3_bits ? refCounterInc_47 : _GEN_1294; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1296 = 7'h30 == deallocate_3_bits ? refCounterInc_48 : _GEN_1295; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1297 = 7'h31 == deallocate_3_bits ? refCounterInc_49 : _GEN_1296; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1298 = 7'h32 == deallocate_3_bits ? refCounterInc_50 : _GEN_1297; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1299 = 7'h33 == deallocate_3_bits ? refCounterInc_51 : _GEN_1298; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1300 = 7'h34 == deallocate_3_bits ? refCounterInc_52 : _GEN_1299; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1301 = 7'h35 == deallocate_3_bits ? refCounterInc_53 : _GEN_1300; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1302 = 7'h36 == deallocate_3_bits ? refCounterInc_54 : _GEN_1301; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1303 = 7'h37 == deallocate_3_bits ? refCounterInc_55 : _GEN_1302; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1304 = 7'h38 == deallocate_3_bits ? refCounterInc_56 : _GEN_1303; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1305 = 7'h39 == deallocate_3_bits ? refCounterInc_57 : _GEN_1304; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1306 = 7'h3a == deallocate_3_bits ? refCounterInc_58 : _GEN_1305; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1307 = 7'h3b == deallocate_3_bits ? refCounterInc_59 : _GEN_1306; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1308 = 7'h3c == deallocate_3_bits ? refCounterInc_60 : _GEN_1307; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1309 = 7'h3d == deallocate_3_bits ? refCounterInc_61 : _GEN_1308; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1310 = 7'h3e == deallocate_3_bits ? refCounterInc_62 : _GEN_1309; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1311 = 7'h3f == deallocate_3_bits ? refCounterInc_63 : _GEN_1310; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1312 = 7'h40 == deallocate_3_bits ? refCounterInc_64 : _GEN_1311; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1313 = 7'h41 == deallocate_3_bits ? refCounterInc_65 : _GEN_1312; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1314 = 7'h42 == deallocate_3_bits ? refCounterInc_66 : _GEN_1313; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1315 = 7'h43 == deallocate_3_bits ? refCounterInc_67 : _GEN_1314; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1316 = 7'h44 == deallocate_3_bits ? refCounterInc_68 : _GEN_1315; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1317 = 7'h45 == deallocate_3_bits ? refCounterInc_69 : _GEN_1316; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1318 = 7'h46 == deallocate_3_bits ? refCounterInc_70 : _GEN_1317; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1319 = 7'h47 == deallocate_3_bits ? refCounterInc_71 : _GEN_1318; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1320 = 7'h48 == deallocate_3_bits ? refCounterInc_72 : _GEN_1319; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1321 = 7'h49 == deallocate_3_bits ? refCounterInc_73 : _GEN_1320; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1322 = 7'h4a == deallocate_3_bits ? refCounterInc_74 : _GEN_1321; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1323 = 7'h4b == deallocate_3_bits ? refCounterInc_75 : _GEN_1322; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1324 = 7'h4c == deallocate_3_bits ? refCounterInc_76 : _GEN_1323; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1325 = 7'h4d == deallocate_3_bits ? refCounterInc_77 : _GEN_1324; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1326 = 7'h4e == deallocate_3_bits ? refCounterInc_78 : _GEN_1325; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1327 = 7'h4f == deallocate_3_bits ? refCounterInc_79 : _GEN_1326; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1328 = 7'h50 == deallocate_3_bits ? refCounterInc_80 : _GEN_1327; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1329 = 7'h51 == deallocate_3_bits ? refCounterInc_81 : _GEN_1328; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1330 = 7'h52 == deallocate_3_bits ? refCounterInc_82 : _GEN_1329; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1331 = 7'h53 == deallocate_3_bits ? refCounterInc_83 : _GEN_1330; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1332 = 7'h54 == deallocate_3_bits ? refCounterInc_84 : _GEN_1331; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1333 = 7'h55 == deallocate_3_bits ? refCounterInc_85 : _GEN_1332; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1334 = 7'h56 == deallocate_3_bits ? refCounterInc_86 : _GEN_1333; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1335 = 7'h57 == deallocate_3_bits ? refCounterInc_87 : _GEN_1334; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1336 = 7'h58 == deallocate_3_bits ? refCounterInc_88 : _GEN_1335; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1337 = 7'h59 == deallocate_3_bits ? refCounterInc_89 : _GEN_1336; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1338 = 7'h5a == deallocate_3_bits ? refCounterInc_90 : _GEN_1337; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1339 = 7'h5b == deallocate_3_bits ? refCounterInc_91 : _GEN_1338; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1340 = 7'h5c == deallocate_3_bits ? refCounterInc_92 : _GEN_1339; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1341 = 7'h5d == deallocate_3_bits ? refCounterInc_93 : _GEN_1340; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1342 = 7'h5e == deallocate_3_bits ? refCounterInc_94 : _GEN_1341; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _GEN_1343 = 7'h5f == deallocate_3_bits ? refCounterInc_95 : _GEN_1342; // @[RefCounter.scala 56:{39,39}]
  wire [6:0] _isFreed_T_7 = _GEN_1247 + _GEN_1343; // @[RefCounter.scala 56:39]
  wire [6:0] _GEN_1345 = 7'h1 == deallocate_3_bits ? refCounterDec_1 : 7'h1; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1346 = 7'h2 == deallocate_3_bits ? refCounterDec_2 : _GEN_1345; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1347 = 7'h3 == deallocate_3_bits ? refCounterDec_3 : _GEN_1346; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1348 = 7'h4 == deallocate_3_bits ? refCounterDec_4 : _GEN_1347; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1349 = 7'h5 == deallocate_3_bits ? refCounterDec_5 : _GEN_1348; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1350 = 7'h6 == deallocate_3_bits ? refCounterDec_6 : _GEN_1349; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1351 = 7'h7 == deallocate_3_bits ? refCounterDec_7 : _GEN_1350; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1352 = 7'h8 == deallocate_3_bits ? refCounterDec_8 : _GEN_1351; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1353 = 7'h9 == deallocate_3_bits ? refCounterDec_9 : _GEN_1352; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1354 = 7'ha == deallocate_3_bits ? refCounterDec_10 : _GEN_1353; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1355 = 7'hb == deallocate_3_bits ? refCounterDec_11 : _GEN_1354; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1356 = 7'hc == deallocate_3_bits ? refCounterDec_12 : _GEN_1355; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1357 = 7'hd == deallocate_3_bits ? refCounterDec_13 : _GEN_1356; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1358 = 7'he == deallocate_3_bits ? refCounterDec_14 : _GEN_1357; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1359 = 7'hf == deallocate_3_bits ? refCounterDec_15 : _GEN_1358; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1360 = 7'h10 == deallocate_3_bits ? refCounterDec_16 : _GEN_1359; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1361 = 7'h11 == deallocate_3_bits ? refCounterDec_17 : _GEN_1360; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1362 = 7'h12 == deallocate_3_bits ? refCounterDec_18 : _GEN_1361; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1363 = 7'h13 == deallocate_3_bits ? refCounterDec_19 : _GEN_1362; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1364 = 7'h14 == deallocate_3_bits ? refCounterDec_20 : _GEN_1363; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1365 = 7'h15 == deallocate_3_bits ? refCounterDec_21 : _GEN_1364; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1366 = 7'h16 == deallocate_3_bits ? refCounterDec_22 : _GEN_1365; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1367 = 7'h17 == deallocate_3_bits ? refCounterDec_23 : _GEN_1366; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1368 = 7'h18 == deallocate_3_bits ? refCounterDec_24 : _GEN_1367; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1369 = 7'h19 == deallocate_3_bits ? refCounterDec_25 : _GEN_1368; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1370 = 7'h1a == deallocate_3_bits ? refCounterDec_26 : _GEN_1369; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1371 = 7'h1b == deallocate_3_bits ? refCounterDec_27 : _GEN_1370; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1372 = 7'h1c == deallocate_3_bits ? refCounterDec_28 : _GEN_1371; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1373 = 7'h1d == deallocate_3_bits ? refCounterDec_29 : _GEN_1372; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1374 = 7'h1e == deallocate_3_bits ? refCounterDec_30 : _GEN_1373; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1375 = 7'h1f == deallocate_3_bits ? refCounterDec_31 : _GEN_1374; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1376 = 7'h20 == deallocate_3_bits ? refCounterDec_32 : _GEN_1375; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1377 = 7'h21 == deallocate_3_bits ? refCounterDec_33 : _GEN_1376; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1378 = 7'h22 == deallocate_3_bits ? refCounterDec_34 : _GEN_1377; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1379 = 7'h23 == deallocate_3_bits ? refCounterDec_35 : _GEN_1378; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1380 = 7'h24 == deallocate_3_bits ? refCounterDec_36 : _GEN_1379; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1381 = 7'h25 == deallocate_3_bits ? refCounterDec_37 : _GEN_1380; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1382 = 7'h26 == deallocate_3_bits ? refCounterDec_38 : _GEN_1381; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1383 = 7'h27 == deallocate_3_bits ? refCounterDec_39 : _GEN_1382; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1384 = 7'h28 == deallocate_3_bits ? refCounterDec_40 : _GEN_1383; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1385 = 7'h29 == deallocate_3_bits ? refCounterDec_41 : _GEN_1384; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1386 = 7'h2a == deallocate_3_bits ? refCounterDec_42 : _GEN_1385; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1387 = 7'h2b == deallocate_3_bits ? refCounterDec_43 : _GEN_1386; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1388 = 7'h2c == deallocate_3_bits ? refCounterDec_44 : _GEN_1387; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1389 = 7'h2d == deallocate_3_bits ? refCounterDec_45 : _GEN_1388; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1390 = 7'h2e == deallocate_3_bits ? refCounterDec_46 : _GEN_1389; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1391 = 7'h2f == deallocate_3_bits ? refCounterDec_47 : _GEN_1390; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1392 = 7'h30 == deallocate_3_bits ? refCounterDec_48 : _GEN_1391; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1393 = 7'h31 == deallocate_3_bits ? refCounterDec_49 : _GEN_1392; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1394 = 7'h32 == deallocate_3_bits ? refCounterDec_50 : _GEN_1393; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1395 = 7'h33 == deallocate_3_bits ? refCounterDec_51 : _GEN_1394; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1396 = 7'h34 == deallocate_3_bits ? refCounterDec_52 : _GEN_1395; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1397 = 7'h35 == deallocate_3_bits ? refCounterDec_53 : _GEN_1396; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1398 = 7'h36 == deallocate_3_bits ? refCounterDec_54 : _GEN_1397; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1399 = 7'h37 == deallocate_3_bits ? refCounterDec_55 : _GEN_1398; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1400 = 7'h38 == deallocate_3_bits ? refCounterDec_56 : _GEN_1399; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1401 = 7'h39 == deallocate_3_bits ? refCounterDec_57 : _GEN_1400; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1402 = 7'h3a == deallocate_3_bits ? refCounterDec_58 : _GEN_1401; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1403 = 7'h3b == deallocate_3_bits ? refCounterDec_59 : _GEN_1402; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1404 = 7'h3c == deallocate_3_bits ? refCounterDec_60 : _GEN_1403; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1405 = 7'h3d == deallocate_3_bits ? refCounterDec_61 : _GEN_1404; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1406 = 7'h3e == deallocate_3_bits ? refCounterDec_62 : _GEN_1405; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1407 = 7'h3f == deallocate_3_bits ? refCounterDec_63 : _GEN_1406; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1408 = 7'h40 == deallocate_3_bits ? refCounterDec_64 : _GEN_1407; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1409 = 7'h41 == deallocate_3_bits ? refCounterDec_65 : _GEN_1408; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1410 = 7'h42 == deallocate_3_bits ? refCounterDec_66 : _GEN_1409; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1411 = 7'h43 == deallocate_3_bits ? refCounterDec_67 : _GEN_1410; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1412 = 7'h44 == deallocate_3_bits ? refCounterDec_68 : _GEN_1411; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1413 = 7'h45 == deallocate_3_bits ? refCounterDec_69 : _GEN_1412; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1414 = 7'h46 == deallocate_3_bits ? refCounterDec_70 : _GEN_1413; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1415 = 7'h47 == deallocate_3_bits ? refCounterDec_71 : _GEN_1414; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1416 = 7'h48 == deallocate_3_bits ? refCounterDec_72 : _GEN_1415; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1417 = 7'h49 == deallocate_3_bits ? refCounterDec_73 : _GEN_1416; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1418 = 7'h4a == deallocate_3_bits ? refCounterDec_74 : _GEN_1417; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1419 = 7'h4b == deallocate_3_bits ? refCounterDec_75 : _GEN_1418; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1420 = 7'h4c == deallocate_3_bits ? refCounterDec_76 : _GEN_1419; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1421 = 7'h4d == deallocate_3_bits ? refCounterDec_77 : _GEN_1420; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1422 = 7'h4e == deallocate_3_bits ? refCounterDec_78 : _GEN_1421; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1423 = 7'h4f == deallocate_3_bits ? refCounterDec_79 : _GEN_1422; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1424 = 7'h50 == deallocate_3_bits ? refCounterDec_80 : _GEN_1423; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1425 = 7'h51 == deallocate_3_bits ? refCounterDec_81 : _GEN_1424; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1426 = 7'h52 == deallocate_3_bits ? refCounterDec_82 : _GEN_1425; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1427 = 7'h53 == deallocate_3_bits ? refCounterDec_83 : _GEN_1426; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1428 = 7'h54 == deallocate_3_bits ? refCounterDec_84 : _GEN_1427; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1429 = 7'h55 == deallocate_3_bits ? refCounterDec_85 : _GEN_1428; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1430 = 7'h56 == deallocate_3_bits ? refCounterDec_86 : _GEN_1429; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1431 = 7'h57 == deallocate_3_bits ? refCounterDec_87 : _GEN_1430; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1432 = 7'h58 == deallocate_3_bits ? refCounterDec_88 : _GEN_1431; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1433 = 7'h59 == deallocate_3_bits ? refCounterDec_89 : _GEN_1432; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1434 = 7'h5a == deallocate_3_bits ? refCounterDec_90 : _GEN_1433; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1435 = 7'h5b == deallocate_3_bits ? refCounterDec_91 : _GEN_1434; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1436 = 7'h5c == deallocate_3_bits ? refCounterDec_92 : _GEN_1435; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1437 = 7'h5d == deallocate_3_bits ? refCounterDec_93 : _GEN_1436; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1438 = 7'h5e == deallocate_3_bits ? refCounterDec_94 : _GEN_1437; // @[RefCounter.scala 56:{64,64}]
  wire [6:0] _GEN_1439 = 7'h5f == deallocate_3_bits ? refCounterDec_95 : _GEN_1438; // @[RefCounter.scala 56:{64,64}]
  reg  io_freeRegs_3_valid_REG; // @[RefCounter.scala 57:36]
  reg  io_freeRegs_3_valid_REG_1; // @[RefCounter.scala 57:75]
  reg [6:0] io_freeRegs_3_bits_REG; // @[RefCounter.scala 60:35]
  wire [6:0] _refCounterNext_1_T_1 = refCounter_1 + refCounterInc_1; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_1 = _refCounterNext_1_T_1 - refCounterDec_1; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_2_T_1 = refCounter_2 + refCounterInc_2; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_2 = _refCounterNext_2_T_1 - refCounterDec_2; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_3_T_1 = refCounter_3 + refCounterInc_3; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_3 = _refCounterNext_3_T_1 - refCounterDec_3; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_4_T_1 = refCounter_4 + refCounterInc_4; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_4 = _refCounterNext_4_T_1 - refCounterDec_4; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_5_T_1 = refCounter_5 + refCounterInc_5; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_5 = _refCounterNext_5_T_1 - refCounterDec_5; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_6_T_1 = refCounter_6 + refCounterInc_6; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_6 = _refCounterNext_6_T_1 - refCounterDec_6; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_7_T_1 = refCounter_7 + refCounterInc_7; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_7 = _refCounterNext_7_T_1 - refCounterDec_7; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_8_T_1 = refCounter_8 + refCounterInc_8; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_8 = _refCounterNext_8_T_1 - refCounterDec_8; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_9_T_1 = refCounter_9 + refCounterInc_9; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_9 = _refCounterNext_9_T_1 - refCounterDec_9; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_10_T_1 = refCounter_10 + refCounterInc_10; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_10 = _refCounterNext_10_T_1 - refCounterDec_10; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_11_T_1 = refCounter_11 + refCounterInc_11; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_11 = _refCounterNext_11_T_1 - refCounterDec_11; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_12_T_1 = refCounter_12 + refCounterInc_12; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_12 = _refCounterNext_12_T_1 - refCounterDec_12; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_13_T_1 = refCounter_13 + refCounterInc_13; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_13 = _refCounterNext_13_T_1 - refCounterDec_13; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_14_T_1 = refCounter_14 + refCounterInc_14; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_14 = _refCounterNext_14_T_1 - refCounterDec_14; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_15_T_1 = refCounter_15 + refCounterInc_15; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_15 = _refCounterNext_15_T_1 - refCounterDec_15; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_16_T_1 = refCounter_16 + refCounterInc_16; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_16 = _refCounterNext_16_T_1 - refCounterDec_16; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_17_T_1 = refCounter_17 + refCounterInc_17; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_17 = _refCounterNext_17_T_1 - refCounterDec_17; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_18_T_1 = refCounter_18 + refCounterInc_18; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_18 = _refCounterNext_18_T_1 - refCounterDec_18; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_19_T_1 = refCounter_19 + refCounterInc_19; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_19 = _refCounterNext_19_T_1 - refCounterDec_19; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_20_T_1 = refCounter_20 + refCounterInc_20; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_20 = _refCounterNext_20_T_1 - refCounterDec_20; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_21_T_1 = refCounter_21 + refCounterInc_21; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_21 = _refCounterNext_21_T_1 - refCounterDec_21; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_22_T_1 = refCounter_22 + refCounterInc_22; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_22 = _refCounterNext_22_T_1 - refCounterDec_22; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_23_T_1 = refCounter_23 + refCounterInc_23; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_23 = _refCounterNext_23_T_1 - refCounterDec_23; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_24_T_1 = refCounter_24 + refCounterInc_24; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_24 = _refCounterNext_24_T_1 - refCounterDec_24; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_25_T_1 = refCounter_25 + refCounterInc_25; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_25 = _refCounterNext_25_T_1 - refCounterDec_25; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_26_T_1 = refCounter_26 + refCounterInc_26; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_26 = _refCounterNext_26_T_1 - refCounterDec_26; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_27_T_1 = refCounter_27 + refCounterInc_27; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_27 = _refCounterNext_27_T_1 - refCounterDec_27; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_28_T_1 = refCounter_28 + refCounterInc_28; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_28 = _refCounterNext_28_T_1 - refCounterDec_28; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_29_T_1 = refCounter_29 + refCounterInc_29; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_29 = _refCounterNext_29_T_1 - refCounterDec_29; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_30_T_1 = refCounter_30 + refCounterInc_30; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_30 = _refCounterNext_30_T_1 - refCounterDec_30; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_31_T_1 = refCounter_31 + refCounterInc_31; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_31 = _refCounterNext_31_T_1 - refCounterDec_31; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_32_T_1 = refCounter_32 + refCounterInc_32; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_32 = _refCounterNext_32_T_1 - refCounterDec_32; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_33_T_1 = refCounter_33 + refCounterInc_33; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_33 = _refCounterNext_33_T_1 - refCounterDec_33; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_34_T_1 = refCounter_34 + refCounterInc_34; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_34 = _refCounterNext_34_T_1 - refCounterDec_34; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_35_T_1 = refCounter_35 + refCounterInc_35; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_35 = _refCounterNext_35_T_1 - refCounterDec_35; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_36_T_1 = refCounter_36 + refCounterInc_36; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_36 = _refCounterNext_36_T_1 - refCounterDec_36; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_37_T_1 = refCounter_37 + refCounterInc_37; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_37 = _refCounterNext_37_T_1 - refCounterDec_37; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_38_T_1 = refCounter_38 + refCounterInc_38; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_38 = _refCounterNext_38_T_1 - refCounterDec_38; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_39_T_1 = refCounter_39 + refCounterInc_39; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_39 = _refCounterNext_39_T_1 - refCounterDec_39; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_40_T_1 = refCounter_40 + refCounterInc_40; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_40 = _refCounterNext_40_T_1 - refCounterDec_40; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_41_T_1 = refCounter_41 + refCounterInc_41; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_41 = _refCounterNext_41_T_1 - refCounterDec_41; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_42_T_1 = refCounter_42 + refCounterInc_42; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_42 = _refCounterNext_42_T_1 - refCounterDec_42; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_43_T_1 = refCounter_43 + refCounterInc_43; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_43 = _refCounterNext_43_T_1 - refCounterDec_43; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_44_T_1 = refCounter_44 + refCounterInc_44; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_44 = _refCounterNext_44_T_1 - refCounterDec_44; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_45_T_1 = refCounter_45 + refCounterInc_45; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_45 = _refCounterNext_45_T_1 - refCounterDec_45; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_46_T_1 = refCounter_46 + refCounterInc_46; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_46 = _refCounterNext_46_T_1 - refCounterDec_46; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_47_T_1 = refCounter_47 + refCounterInc_47; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_47 = _refCounterNext_47_T_1 - refCounterDec_47; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_48_T_1 = refCounter_48 + refCounterInc_48; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_48 = _refCounterNext_48_T_1 - refCounterDec_48; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_49_T_1 = refCounter_49 + refCounterInc_49; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_49 = _refCounterNext_49_T_1 - refCounterDec_49; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_50_T_1 = refCounter_50 + refCounterInc_50; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_50 = _refCounterNext_50_T_1 - refCounterDec_50; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_51_T_1 = refCounter_51 + refCounterInc_51; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_51 = _refCounterNext_51_T_1 - refCounterDec_51; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_52_T_1 = refCounter_52 + refCounterInc_52; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_52 = _refCounterNext_52_T_1 - refCounterDec_52; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_53_T_1 = refCounter_53 + refCounterInc_53; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_53 = _refCounterNext_53_T_1 - refCounterDec_53; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_54_T_1 = refCounter_54 + refCounterInc_54; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_54 = _refCounterNext_54_T_1 - refCounterDec_54; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_55_T_1 = refCounter_55 + refCounterInc_55; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_55 = _refCounterNext_55_T_1 - refCounterDec_55; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_56_T_1 = refCounter_56 + refCounterInc_56; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_56 = _refCounterNext_56_T_1 - refCounterDec_56; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_57_T_1 = refCounter_57 + refCounterInc_57; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_57 = _refCounterNext_57_T_1 - refCounterDec_57; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_58_T_1 = refCounter_58 + refCounterInc_58; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_58 = _refCounterNext_58_T_1 - refCounterDec_58; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_59_T_1 = refCounter_59 + refCounterInc_59; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_59 = _refCounterNext_59_T_1 - refCounterDec_59; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_60_T_1 = refCounter_60 + refCounterInc_60; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_60 = _refCounterNext_60_T_1 - refCounterDec_60; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_61_T_1 = refCounter_61 + refCounterInc_61; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_61 = _refCounterNext_61_T_1 - refCounterDec_61; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_62_T_1 = refCounter_62 + refCounterInc_62; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_62 = _refCounterNext_62_T_1 - refCounterDec_62; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_63_T_1 = refCounter_63 + refCounterInc_63; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_63 = _refCounterNext_63_T_1 - refCounterDec_63; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_64_T_1 = refCounter_64 + refCounterInc_64; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_64 = _refCounterNext_64_T_1 - refCounterDec_64; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_65_T_1 = refCounter_65 + refCounterInc_65; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_65 = _refCounterNext_65_T_1 - refCounterDec_65; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_66_T_1 = refCounter_66 + refCounterInc_66; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_66 = _refCounterNext_66_T_1 - refCounterDec_66; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_67_T_1 = refCounter_67 + refCounterInc_67; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_67 = _refCounterNext_67_T_1 - refCounterDec_67; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_68_T_1 = refCounter_68 + refCounterInc_68; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_68 = _refCounterNext_68_T_1 - refCounterDec_68; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_69_T_1 = refCounter_69 + refCounterInc_69; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_69 = _refCounterNext_69_T_1 - refCounterDec_69; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_70_T_1 = refCounter_70 + refCounterInc_70; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_70 = _refCounterNext_70_T_1 - refCounterDec_70; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_71_T_1 = refCounter_71 + refCounterInc_71; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_71 = _refCounterNext_71_T_1 - refCounterDec_71; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_72_T_1 = refCounter_72 + refCounterInc_72; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_72 = _refCounterNext_72_T_1 - refCounterDec_72; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_73_T_1 = refCounter_73 + refCounterInc_73; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_73 = _refCounterNext_73_T_1 - refCounterDec_73; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_74_T_1 = refCounter_74 + refCounterInc_74; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_74 = _refCounterNext_74_T_1 - refCounterDec_74; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_75_T_1 = refCounter_75 + refCounterInc_75; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_75 = _refCounterNext_75_T_1 - refCounterDec_75; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_76_T_1 = refCounter_76 + refCounterInc_76; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_76 = _refCounterNext_76_T_1 - refCounterDec_76; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_77_T_1 = refCounter_77 + refCounterInc_77; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_77 = _refCounterNext_77_T_1 - refCounterDec_77; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_78_T_1 = refCounter_78 + refCounterInc_78; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_78 = _refCounterNext_78_T_1 - refCounterDec_78; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_79_T_1 = refCounter_79 + refCounterInc_79; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_79 = _refCounterNext_79_T_1 - refCounterDec_79; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_80_T_1 = refCounter_80 + refCounterInc_80; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_80 = _refCounterNext_80_T_1 - refCounterDec_80; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_81_T_1 = refCounter_81 + refCounterInc_81; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_81 = _refCounterNext_81_T_1 - refCounterDec_81; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_82_T_1 = refCounter_82 + refCounterInc_82; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_82 = _refCounterNext_82_T_1 - refCounterDec_82; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_83_T_1 = refCounter_83 + refCounterInc_83; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_83 = _refCounterNext_83_T_1 - refCounterDec_83; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_84_T_1 = refCounter_84 + refCounterInc_84; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_84 = _refCounterNext_84_T_1 - refCounterDec_84; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_85_T_1 = refCounter_85 + refCounterInc_85; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_85 = _refCounterNext_85_T_1 - refCounterDec_85; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_86_T_1 = refCounter_86 + refCounterInc_86; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_86 = _refCounterNext_86_T_1 - refCounterDec_86; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_87_T_1 = refCounter_87 + refCounterInc_87; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_87 = _refCounterNext_87_T_1 - refCounterDec_87; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_88_T_1 = refCounter_88 + refCounterInc_88; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_88 = _refCounterNext_88_T_1 - refCounterDec_88; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_89_T_1 = refCounter_89 + refCounterInc_89; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_89 = _refCounterNext_89_T_1 - refCounterDec_89; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_90_T_1 = refCounter_90 + refCounterInc_90; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_90 = _refCounterNext_90_T_1 - refCounterDec_90; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_91_T_1 = refCounter_91 + refCounterInc_91; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_91 = _refCounterNext_91_T_1 - refCounterDec_91; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_92_T_1 = refCounter_92 + refCounterInc_92; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_92 = _refCounterNext_92_T_1 - refCounterDec_92; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_93_T_1 = refCounter_93 + refCounterInc_93; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_93 = _refCounterNext_93_T_1 - refCounterDec_93; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_94_T_1 = refCounter_94 + refCounterInc_94; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_94 = _refCounterNext_94_T_1 - refCounterDec_94; // @[RefCounter.scala 86:59]
  wire [6:0] _refCounterNext_95_T_1 = refCounter_95 + refCounterInc_95; // @[RefCounter.scala 86:40]
  wire [6:0] refCounterNext_95 = _refCounterNext_95_T_1 - refCounterDec_95; // @[RefCounter.scala 86:59]
  assign io_freeRegs_0_valid = io_freeRegs_0_valid_REG & io_freeRegs_0_valid_REG_1; // @[RefCounter.scala 57:65]
  assign io_freeRegs_0_bits = io_freeRegs_0_bits_REG; // @[RefCounter.scala 60:25]
  assign io_freeRegs_1_valid = io_freeRegs_1_valid_REG & io_freeRegs_1_valid_REG_1; // @[RefCounter.scala 57:65]
  assign io_freeRegs_1_bits = io_freeRegs_1_bits_REG; // @[RefCounter.scala 60:25]
  assign io_freeRegs_2_valid = io_freeRegs_2_valid_REG & io_freeRegs_2_valid_REG_1; // @[RefCounter.scala 57:65]
  assign io_freeRegs_2_bits = io_freeRegs_2_bits_REG; // @[RefCounter.scala 60:25]
  assign io_freeRegs_3_valid = io_freeRegs_3_valid_REG & io_freeRegs_3_valid_REG_1; // @[RefCounter.scala 57:65]
  assign io_freeRegs_3_bits = io_freeRegs_3_bits_REG; // @[RefCounter.scala 60:25]
  always @(posedge clock) begin
    allocate_0_valid <= io_allocate_0_valid; // @[RefCounter.scala 35:25]
    allocate_0_bits <= io_allocate_0_bits; // @[RefCounter.scala 35:25]
    allocate_1_valid <= io_allocate_1_valid; // @[RefCounter.scala 35:25]
    allocate_1_bits <= io_allocate_1_bits; // @[RefCounter.scala 35:25]
    allocate_2_valid <= io_allocate_2_valid; // @[RefCounter.scala 35:25]
    allocate_2_bits <= io_allocate_2_bits; // @[RefCounter.scala 35:25]
    allocate_3_valid <= io_allocate_3_valid; // @[RefCounter.scala 35:25]
    allocate_3_bits <= io_allocate_3_bits; // @[RefCounter.scala 35:25]
    deallocate_0_valid <= io_deallocate_0_valid; // @[RefCounter.scala 36:27]
    deallocate_0_bits <= io_deallocate_0_bits; // @[RefCounter.scala 36:27]
    deallocate_1_valid <= io_deallocate_1_valid; // @[RefCounter.scala 36:27]
    deallocate_1_bits <= io_deallocate_1_bits; // @[RefCounter.scala 36:27]
    deallocate_2_valid <= io_deallocate_2_valid; // @[RefCounter.scala 36:27]
    deallocate_2_bits <= io_deallocate_2_bits; // @[RefCounter.scala 36:27]
    deallocate_3_valid <= io_deallocate_3_valid; // @[RefCounter.scala 36:27]
    deallocate_3_bits <= io_deallocate_3_bits; // @[RefCounter.scala 36:27]
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_1 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_1 <= refCounterNext_1; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_2 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_2 <= refCounterNext_2; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_3 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_3 <= refCounterNext_3; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_4 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_4 <= refCounterNext_4; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_5 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_5 <= refCounterNext_5; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_6 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_6 <= refCounterNext_6; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_7 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_7 <= refCounterNext_7; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_8 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_8 <= refCounterNext_8; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_9 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_9 <= refCounterNext_9; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_10 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_10 <= refCounterNext_10; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_11 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_11 <= refCounterNext_11; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_12 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_12 <= refCounterNext_12; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_13 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_13 <= refCounterNext_13; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_14 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_14 <= refCounterNext_14; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_15 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_15 <= refCounterNext_15; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_16 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_16 <= refCounterNext_16; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_17 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_17 <= refCounterNext_17; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_18 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_18 <= refCounterNext_18; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_19 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_19 <= refCounterNext_19; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_20 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_20 <= refCounterNext_20; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_21 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_21 <= refCounterNext_21; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_22 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_22 <= refCounterNext_22; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_23 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_23 <= refCounterNext_23; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_24 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_24 <= refCounterNext_24; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_25 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_25 <= refCounterNext_25; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_26 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_26 <= refCounterNext_26; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_27 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_27 <= refCounterNext_27; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_28 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_28 <= refCounterNext_28; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_29 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_29 <= refCounterNext_29; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_30 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_30 <= refCounterNext_30; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_31 <= 7'h1; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_31 <= refCounterNext_31; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_32 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_32 <= refCounterNext_32; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_33 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_33 <= refCounterNext_33; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_34 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_34 <= refCounterNext_34; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_35 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_35 <= refCounterNext_35; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_36 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_36 <= refCounterNext_36; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_37 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_37 <= refCounterNext_37; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_38 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_38 <= refCounterNext_38; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_39 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_39 <= refCounterNext_39; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_40 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_40 <= refCounterNext_40; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_41 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_41 <= refCounterNext_41; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_42 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_42 <= refCounterNext_42; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_43 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_43 <= refCounterNext_43; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_44 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_44 <= refCounterNext_44; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_45 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_45 <= refCounterNext_45; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_46 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_46 <= refCounterNext_46; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_47 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_47 <= refCounterNext_47; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_48 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_48 <= refCounterNext_48; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_49 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_49 <= refCounterNext_49; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_50 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_50 <= refCounterNext_50; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_51 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_51 <= refCounterNext_51; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_52 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_52 <= refCounterNext_52; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_53 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_53 <= refCounterNext_53; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_54 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_54 <= refCounterNext_54; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_55 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_55 <= refCounterNext_55; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_56 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_56 <= refCounterNext_56; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_57 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_57 <= refCounterNext_57; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_58 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_58 <= refCounterNext_58; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_59 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_59 <= refCounterNext_59; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_60 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_60 <= refCounterNext_60; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_61 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_61 <= refCounterNext_61; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_62 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_62 <= refCounterNext_62; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_63 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_63 <= refCounterNext_63; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_64 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_64 <= refCounterNext_64; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_65 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_65 <= refCounterNext_65; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_66 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_66 <= refCounterNext_66; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_67 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_67 <= refCounterNext_67; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_68 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_68 <= refCounterNext_68; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_69 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_69 <= refCounterNext_69; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_70 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_70 <= refCounterNext_70; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_71 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_71 <= refCounterNext_71; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_72 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_72 <= refCounterNext_72; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_73 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_73 <= refCounterNext_73; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_74 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_74 <= refCounterNext_74; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_75 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_75 <= refCounterNext_75; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_76 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_76 <= refCounterNext_76; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_77 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_77 <= refCounterNext_77; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_78 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_78 <= refCounterNext_78; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_79 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_79 <= refCounterNext_79; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_80 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_80 <= refCounterNext_80; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_81 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_81 <= refCounterNext_81; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_82 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_82 <= refCounterNext_82; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_83 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_83 <= refCounterNext_83; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_84 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_84 <= refCounterNext_84; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_85 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_85 <= refCounterNext_85; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_86 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_86 <= refCounterNext_86; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_87 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_87 <= refCounterNext_87; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_88 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_88 <= refCounterNext_88; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_89 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_89 <= refCounterNext_89; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_90 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_90 <= refCounterNext_90; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_91 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_91 <= refCounterNext_91; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_92 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_92 <= refCounterNext_92; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_93 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_93 <= refCounterNext_93; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_94 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_94 <= refCounterNext_94; // @[RefCounter.scala 88:19]
    end
    if (reset) begin // @[RefCounter.scala 40:27]
      refCounter_95 <= 7'h0; // @[RefCounter.scala 40:27]
    end else begin
      refCounter_95 <= refCounterNext_95; // @[RefCounter.scala 88:19]
    end
    io_freeRegs_0_valid_REG <= deallocate_0_valid & _GEN_95 != 7'h0; // @[RefCounter.scala 53:30]
    io_freeRegs_0_valid_REG_1 <= _isFreed_T_1 == _GEN_287; // @[RefCounter.scala 56:64]
    io_freeRegs_0_bits_REG <= deallocate_0_bits; // @[RefCounter.scala 60:35]
    io_freeRegs_1_valid_REG <= isNonZero_1 & ~blockedByDup; // @[RefCounter.scala 57:47]
    io_freeRegs_1_valid_REG_1 <= _isFreed_T_3 == _GEN_671; // @[RefCounter.scala 56:64]
    io_freeRegs_1_bits_REG <= deallocate_1_bits; // @[RefCounter.scala 60:35]
    io_freeRegs_2_valid_REG <= isNonZero_2 & ~blockedByDup_1; // @[RefCounter.scala 57:47]
    io_freeRegs_2_valid_REG_1 <= _isFreed_T_5 == _GEN_1055; // @[RefCounter.scala 56:64]
    io_freeRegs_2_bits_REG <= deallocate_2_bits; // @[RefCounter.scala 60:35]
    io_freeRegs_3_valid_REG <= isNonZero_3 & ~blockedByDup_2; // @[RefCounter.scala 57:47]
    io_freeRegs_3_valid_REG_1 <= _isFreed_T_7 == _GEN_1439; // @[RefCounter.scala 56:64]
    io_freeRegs_3_bits_REG <= deallocate_3_bits; // @[RefCounter.scala 60:35]
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
  allocate_0_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  allocate_0_bits = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  allocate_1_valid = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  allocate_1_bits = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  allocate_2_valid = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  allocate_2_bits = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  allocate_3_valid = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  allocate_3_bits = _RAND_7[6:0];
  _RAND_8 = {1{`RANDOM}};
  deallocate_0_valid = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  deallocate_0_bits = _RAND_9[6:0];
  _RAND_10 = {1{`RANDOM}};
  deallocate_1_valid = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  deallocate_1_bits = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  deallocate_2_valid = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  deallocate_2_bits = _RAND_13[6:0];
  _RAND_14 = {1{`RANDOM}};
  deallocate_3_valid = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  deallocate_3_bits = _RAND_15[6:0];
  _RAND_16 = {1{`RANDOM}};
  refCounter_1 = _RAND_16[6:0];
  _RAND_17 = {1{`RANDOM}};
  refCounter_2 = _RAND_17[6:0];
  _RAND_18 = {1{`RANDOM}};
  refCounter_3 = _RAND_18[6:0];
  _RAND_19 = {1{`RANDOM}};
  refCounter_4 = _RAND_19[6:0];
  _RAND_20 = {1{`RANDOM}};
  refCounter_5 = _RAND_20[6:0];
  _RAND_21 = {1{`RANDOM}};
  refCounter_6 = _RAND_21[6:0];
  _RAND_22 = {1{`RANDOM}};
  refCounter_7 = _RAND_22[6:0];
  _RAND_23 = {1{`RANDOM}};
  refCounter_8 = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  refCounter_9 = _RAND_24[6:0];
  _RAND_25 = {1{`RANDOM}};
  refCounter_10 = _RAND_25[6:0];
  _RAND_26 = {1{`RANDOM}};
  refCounter_11 = _RAND_26[6:0];
  _RAND_27 = {1{`RANDOM}};
  refCounter_12 = _RAND_27[6:0];
  _RAND_28 = {1{`RANDOM}};
  refCounter_13 = _RAND_28[6:0];
  _RAND_29 = {1{`RANDOM}};
  refCounter_14 = _RAND_29[6:0];
  _RAND_30 = {1{`RANDOM}};
  refCounter_15 = _RAND_30[6:0];
  _RAND_31 = {1{`RANDOM}};
  refCounter_16 = _RAND_31[6:0];
  _RAND_32 = {1{`RANDOM}};
  refCounter_17 = _RAND_32[6:0];
  _RAND_33 = {1{`RANDOM}};
  refCounter_18 = _RAND_33[6:0];
  _RAND_34 = {1{`RANDOM}};
  refCounter_19 = _RAND_34[6:0];
  _RAND_35 = {1{`RANDOM}};
  refCounter_20 = _RAND_35[6:0];
  _RAND_36 = {1{`RANDOM}};
  refCounter_21 = _RAND_36[6:0];
  _RAND_37 = {1{`RANDOM}};
  refCounter_22 = _RAND_37[6:0];
  _RAND_38 = {1{`RANDOM}};
  refCounter_23 = _RAND_38[6:0];
  _RAND_39 = {1{`RANDOM}};
  refCounter_24 = _RAND_39[6:0];
  _RAND_40 = {1{`RANDOM}};
  refCounter_25 = _RAND_40[6:0];
  _RAND_41 = {1{`RANDOM}};
  refCounter_26 = _RAND_41[6:0];
  _RAND_42 = {1{`RANDOM}};
  refCounter_27 = _RAND_42[6:0];
  _RAND_43 = {1{`RANDOM}};
  refCounter_28 = _RAND_43[6:0];
  _RAND_44 = {1{`RANDOM}};
  refCounter_29 = _RAND_44[6:0];
  _RAND_45 = {1{`RANDOM}};
  refCounter_30 = _RAND_45[6:0];
  _RAND_46 = {1{`RANDOM}};
  refCounter_31 = _RAND_46[6:0];
  _RAND_47 = {1{`RANDOM}};
  refCounter_32 = _RAND_47[6:0];
  _RAND_48 = {1{`RANDOM}};
  refCounter_33 = _RAND_48[6:0];
  _RAND_49 = {1{`RANDOM}};
  refCounter_34 = _RAND_49[6:0];
  _RAND_50 = {1{`RANDOM}};
  refCounter_35 = _RAND_50[6:0];
  _RAND_51 = {1{`RANDOM}};
  refCounter_36 = _RAND_51[6:0];
  _RAND_52 = {1{`RANDOM}};
  refCounter_37 = _RAND_52[6:0];
  _RAND_53 = {1{`RANDOM}};
  refCounter_38 = _RAND_53[6:0];
  _RAND_54 = {1{`RANDOM}};
  refCounter_39 = _RAND_54[6:0];
  _RAND_55 = {1{`RANDOM}};
  refCounter_40 = _RAND_55[6:0];
  _RAND_56 = {1{`RANDOM}};
  refCounter_41 = _RAND_56[6:0];
  _RAND_57 = {1{`RANDOM}};
  refCounter_42 = _RAND_57[6:0];
  _RAND_58 = {1{`RANDOM}};
  refCounter_43 = _RAND_58[6:0];
  _RAND_59 = {1{`RANDOM}};
  refCounter_44 = _RAND_59[6:0];
  _RAND_60 = {1{`RANDOM}};
  refCounter_45 = _RAND_60[6:0];
  _RAND_61 = {1{`RANDOM}};
  refCounter_46 = _RAND_61[6:0];
  _RAND_62 = {1{`RANDOM}};
  refCounter_47 = _RAND_62[6:0];
  _RAND_63 = {1{`RANDOM}};
  refCounter_48 = _RAND_63[6:0];
  _RAND_64 = {1{`RANDOM}};
  refCounter_49 = _RAND_64[6:0];
  _RAND_65 = {1{`RANDOM}};
  refCounter_50 = _RAND_65[6:0];
  _RAND_66 = {1{`RANDOM}};
  refCounter_51 = _RAND_66[6:0];
  _RAND_67 = {1{`RANDOM}};
  refCounter_52 = _RAND_67[6:0];
  _RAND_68 = {1{`RANDOM}};
  refCounter_53 = _RAND_68[6:0];
  _RAND_69 = {1{`RANDOM}};
  refCounter_54 = _RAND_69[6:0];
  _RAND_70 = {1{`RANDOM}};
  refCounter_55 = _RAND_70[6:0];
  _RAND_71 = {1{`RANDOM}};
  refCounter_56 = _RAND_71[6:0];
  _RAND_72 = {1{`RANDOM}};
  refCounter_57 = _RAND_72[6:0];
  _RAND_73 = {1{`RANDOM}};
  refCounter_58 = _RAND_73[6:0];
  _RAND_74 = {1{`RANDOM}};
  refCounter_59 = _RAND_74[6:0];
  _RAND_75 = {1{`RANDOM}};
  refCounter_60 = _RAND_75[6:0];
  _RAND_76 = {1{`RANDOM}};
  refCounter_61 = _RAND_76[6:0];
  _RAND_77 = {1{`RANDOM}};
  refCounter_62 = _RAND_77[6:0];
  _RAND_78 = {1{`RANDOM}};
  refCounter_63 = _RAND_78[6:0];
  _RAND_79 = {1{`RANDOM}};
  refCounter_64 = _RAND_79[6:0];
  _RAND_80 = {1{`RANDOM}};
  refCounter_65 = _RAND_80[6:0];
  _RAND_81 = {1{`RANDOM}};
  refCounter_66 = _RAND_81[6:0];
  _RAND_82 = {1{`RANDOM}};
  refCounter_67 = _RAND_82[6:0];
  _RAND_83 = {1{`RANDOM}};
  refCounter_68 = _RAND_83[6:0];
  _RAND_84 = {1{`RANDOM}};
  refCounter_69 = _RAND_84[6:0];
  _RAND_85 = {1{`RANDOM}};
  refCounter_70 = _RAND_85[6:0];
  _RAND_86 = {1{`RANDOM}};
  refCounter_71 = _RAND_86[6:0];
  _RAND_87 = {1{`RANDOM}};
  refCounter_72 = _RAND_87[6:0];
  _RAND_88 = {1{`RANDOM}};
  refCounter_73 = _RAND_88[6:0];
  _RAND_89 = {1{`RANDOM}};
  refCounter_74 = _RAND_89[6:0];
  _RAND_90 = {1{`RANDOM}};
  refCounter_75 = _RAND_90[6:0];
  _RAND_91 = {1{`RANDOM}};
  refCounter_76 = _RAND_91[6:0];
  _RAND_92 = {1{`RANDOM}};
  refCounter_77 = _RAND_92[6:0];
  _RAND_93 = {1{`RANDOM}};
  refCounter_78 = _RAND_93[6:0];
  _RAND_94 = {1{`RANDOM}};
  refCounter_79 = _RAND_94[6:0];
  _RAND_95 = {1{`RANDOM}};
  refCounter_80 = _RAND_95[6:0];
  _RAND_96 = {1{`RANDOM}};
  refCounter_81 = _RAND_96[6:0];
  _RAND_97 = {1{`RANDOM}};
  refCounter_82 = _RAND_97[6:0];
  _RAND_98 = {1{`RANDOM}};
  refCounter_83 = _RAND_98[6:0];
  _RAND_99 = {1{`RANDOM}};
  refCounter_84 = _RAND_99[6:0];
  _RAND_100 = {1{`RANDOM}};
  refCounter_85 = _RAND_100[6:0];
  _RAND_101 = {1{`RANDOM}};
  refCounter_86 = _RAND_101[6:0];
  _RAND_102 = {1{`RANDOM}};
  refCounter_87 = _RAND_102[6:0];
  _RAND_103 = {1{`RANDOM}};
  refCounter_88 = _RAND_103[6:0];
  _RAND_104 = {1{`RANDOM}};
  refCounter_89 = _RAND_104[6:0];
  _RAND_105 = {1{`RANDOM}};
  refCounter_90 = _RAND_105[6:0];
  _RAND_106 = {1{`RANDOM}};
  refCounter_91 = _RAND_106[6:0];
  _RAND_107 = {1{`RANDOM}};
  refCounter_92 = _RAND_107[6:0];
  _RAND_108 = {1{`RANDOM}};
  refCounter_93 = _RAND_108[6:0];
  _RAND_109 = {1{`RANDOM}};
  refCounter_94 = _RAND_109[6:0];
  _RAND_110 = {1{`RANDOM}};
  refCounter_95 = _RAND_110[6:0];
  _RAND_111 = {1{`RANDOM}};
  io_freeRegs_0_valid_REG = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  io_freeRegs_0_valid_REG_1 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  io_freeRegs_0_bits_REG = _RAND_113[6:0];
  _RAND_114 = {1{`RANDOM}};
  io_freeRegs_1_valid_REG = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  io_freeRegs_1_valid_REG_1 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  io_freeRegs_1_bits_REG = _RAND_116[6:0];
  _RAND_117 = {1{`RANDOM}};
  io_freeRegs_2_valid_REG = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  io_freeRegs_2_valid_REG_1 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  io_freeRegs_2_bits_REG = _RAND_119[6:0];
  _RAND_120 = {1{`RANDOM}};
  io_freeRegs_3_valid_REG = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  io_freeRegs_3_valid_REG_1 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  io_freeRegs_3_bits_REG = _RAND_122[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
