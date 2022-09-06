module StdFreeList(
  input        clock,
  input        reset,
  input        io_redirect,
  input        io_walk,
  input        io_allocateReq_0,
  input        io_allocateReq_1,
  input        io_allocateReq_2,
  input        io_allocateReq_3,
  output [6:0] io_allocatePhyReg_0,
  output [6:0] io_allocatePhyReg_1,
  output [6:0] io_allocatePhyReg_2,
  output [6:0] io_allocatePhyReg_3,
  output       io_canAllocate,
  input        io_doAllocate,
  input        io_freeReq_0,
  input        io_freeReq_1,
  input        io_freeReq_2,
  input        io_freeReq_3,
  input  [6:0] io_freePhyReg_0,
  input  [6:0] io_freePhyReg_1,
  input  [6:0] io_freePhyReg_2,
  input  [6:0] io_freePhyReg_3,
  input  [2:0] io_stepBack,
  output [5:0] io_perf_0_value,
  output [5:0] io_perf_1_value,
  output [5:0] io_perf_2_value,
  output [5:0] io_perf_3_value
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
`endif // RANDOMIZE_REG_INIT
  reg [6:0] freeList_0; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_1; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_2; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_3; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_4; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_5; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_6; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_7; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_8; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_9; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_10; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_11; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_12; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_13; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_14; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_15; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_16; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_17; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_18; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_19; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_20; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_21; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_22; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_23; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_24; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_25; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_26; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_27; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_28; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_29; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_30; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_31; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_32; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_33; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_34; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_35; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_36; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_37; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_38; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_39; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_40; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_41; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_42; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_43; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_44; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_45; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_46; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_47; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_48; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_49; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_50; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_51; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_52; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_53; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_54; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_55; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_56; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_57; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_58; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_59; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_60; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_61; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_62; // @[StdFreeList.scala 29:25]
  reg [6:0] freeList_63; // @[StdFreeList.scala 29:25]
  reg  headPtr_flag; // @[StdFreeList.scala 30:25]
  reg [5:0] headPtr_value; // @[StdFreeList.scala 30:25]
  reg  tailPtr_flag; // @[StdFreeList.scala 31:25]
  reg [5:0] tailPtr_value; // @[StdFreeList.scala 31:25]
  wire [6:0] _ptr_new_ptr_T = {tailPtr_flag,tailPtr_value}; // @[Cat.scala 31:58]
  wire [7:0] _ptr_new_ptr_T_1 = {{1'd0}, _ptr_new_ptr_T}; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] ptr_value = _ptr_new_ptr_T_1[5:0]; // @[CircularQueuePtr.scala 40:59]
  wire [6:0] _GEN_0 = 6'h0 == ptr_value ? io_freePhyReg_0 : freeList_0; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_1 = 6'h1 == ptr_value ? io_freePhyReg_0 : freeList_1; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_2 = 6'h2 == ptr_value ? io_freePhyReg_0 : freeList_2; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_3 = 6'h3 == ptr_value ? io_freePhyReg_0 : freeList_3; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_4 = 6'h4 == ptr_value ? io_freePhyReg_0 : freeList_4; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_5 = 6'h5 == ptr_value ? io_freePhyReg_0 : freeList_5; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_6 = 6'h6 == ptr_value ? io_freePhyReg_0 : freeList_6; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_7 = 6'h7 == ptr_value ? io_freePhyReg_0 : freeList_7; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_8 = 6'h8 == ptr_value ? io_freePhyReg_0 : freeList_8; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_9 = 6'h9 == ptr_value ? io_freePhyReg_0 : freeList_9; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_10 = 6'ha == ptr_value ? io_freePhyReg_0 : freeList_10; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_11 = 6'hb == ptr_value ? io_freePhyReg_0 : freeList_11; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_12 = 6'hc == ptr_value ? io_freePhyReg_0 : freeList_12; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_13 = 6'hd == ptr_value ? io_freePhyReg_0 : freeList_13; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_14 = 6'he == ptr_value ? io_freePhyReg_0 : freeList_14; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_15 = 6'hf == ptr_value ? io_freePhyReg_0 : freeList_15; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_16 = 6'h10 == ptr_value ? io_freePhyReg_0 : freeList_16; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_17 = 6'h11 == ptr_value ? io_freePhyReg_0 : freeList_17; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_18 = 6'h12 == ptr_value ? io_freePhyReg_0 : freeList_18; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_19 = 6'h13 == ptr_value ? io_freePhyReg_0 : freeList_19; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_20 = 6'h14 == ptr_value ? io_freePhyReg_0 : freeList_20; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_21 = 6'h15 == ptr_value ? io_freePhyReg_0 : freeList_21; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_22 = 6'h16 == ptr_value ? io_freePhyReg_0 : freeList_22; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_23 = 6'h17 == ptr_value ? io_freePhyReg_0 : freeList_23; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_24 = 6'h18 == ptr_value ? io_freePhyReg_0 : freeList_24; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_25 = 6'h19 == ptr_value ? io_freePhyReg_0 : freeList_25; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_26 = 6'h1a == ptr_value ? io_freePhyReg_0 : freeList_26; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_27 = 6'h1b == ptr_value ? io_freePhyReg_0 : freeList_27; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_28 = 6'h1c == ptr_value ? io_freePhyReg_0 : freeList_28; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_29 = 6'h1d == ptr_value ? io_freePhyReg_0 : freeList_29; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_30 = 6'h1e == ptr_value ? io_freePhyReg_0 : freeList_30; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_31 = 6'h1f == ptr_value ? io_freePhyReg_0 : freeList_31; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_32 = 6'h20 == ptr_value ? io_freePhyReg_0 : freeList_32; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_33 = 6'h21 == ptr_value ? io_freePhyReg_0 : freeList_33; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_34 = 6'h22 == ptr_value ? io_freePhyReg_0 : freeList_34; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_35 = 6'h23 == ptr_value ? io_freePhyReg_0 : freeList_35; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_36 = 6'h24 == ptr_value ? io_freePhyReg_0 : freeList_36; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_37 = 6'h25 == ptr_value ? io_freePhyReg_0 : freeList_37; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_38 = 6'h26 == ptr_value ? io_freePhyReg_0 : freeList_38; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_39 = 6'h27 == ptr_value ? io_freePhyReg_0 : freeList_39; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_40 = 6'h28 == ptr_value ? io_freePhyReg_0 : freeList_40; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_41 = 6'h29 == ptr_value ? io_freePhyReg_0 : freeList_41; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_42 = 6'h2a == ptr_value ? io_freePhyReg_0 : freeList_42; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_43 = 6'h2b == ptr_value ? io_freePhyReg_0 : freeList_43; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_44 = 6'h2c == ptr_value ? io_freePhyReg_0 : freeList_44; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_45 = 6'h2d == ptr_value ? io_freePhyReg_0 : freeList_45; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_46 = 6'h2e == ptr_value ? io_freePhyReg_0 : freeList_46; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_47 = 6'h2f == ptr_value ? io_freePhyReg_0 : freeList_47; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_48 = 6'h30 == ptr_value ? io_freePhyReg_0 : freeList_48; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_49 = 6'h31 == ptr_value ? io_freePhyReg_0 : freeList_49; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_50 = 6'h32 == ptr_value ? io_freePhyReg_0 : freeList_50; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_51 = 6'h33 == ptr_value ? io_freePhyReg_0 : freeList_51; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_52 = 6'h34 == ptr_value ? io_freePhyReg_0 : freeList_52; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_53 = 6'h35 == ptr_value ? io_freePhyReg_0 : freeList_53; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_54 = 6'h36 == ptr_value ? io_freePhyReg_0 : freeList_54; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_55 = 6'h37 == ptr_value ? io_freePhyReg_0 : freeList_55; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_56 = 6'h38 == ptr_value ? io_freePhyReg_0 : freeList_56; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_57 = 6'h39 == ptr_value ? io_freePhyReg_0 : freeList_57; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_58 = 6'h3a == ptr_value ? io_freePhyReg_0 : freeList_58; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_59 = 6'h3b == ptr_value ? io_freePhyReg_0 : freeList_59; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_60 = 6'h3c == ptr_value ? io_freePhyReg_0 : freeList_60; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_61 = 6'h3d == ptr_value ? io_freePhyReg_0 : freeList_61; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_62 = 6'h3e == ptr_value ? io_freePhyReg_0 : freeList_62; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_63 = 6'h3f == ptr_value ? io_freePhyReg_0 : freeList_63; // @[StdFreeList.scala 42:{21,21} 29:25]
  wire [6:0] _GEN_64 = io_freeReq_0 ? _GEN_0 : freeList_0; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_65 = io_freeReq_0 ? _GEN_1 : freeList_1; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_66 = io_freeReq_0 ? _GEN_2 : freeList_2; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_67 = io_freeReq_0 ? _GEN_3 : freeList_3; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_68 = io_freeReq_0 ? _GEN_4 : freeList_4; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_69 = io_freeReq_0 ? _GEN_5 : freeList_5; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_70 = io_freeReq_0 ? _GEN_6 : freeList_6; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_71 = io_freeReq_0 ? _GEN_7 : freeList_7; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_72 = io_freeReq_0 ? _GEN_8 : freeList_8; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_73 = io_freeReq_0 ? _GEN_9 : freeList_9; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_74 = io_freeReq_0 ? _GEN_10 : freeList_10; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_75 = io_freeReq_0 ? _GEN_11 : freeList_11; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_76 = io_freeReq_0 ? _GEN_12 : freeList_12; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_77 = io_freeReq_0 ? _GEN_13 : freeList_13; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_78 = io_freeReq_0 ? _GEN_14 : freeList_14; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_79 = io_freeReq_0 ? _GEN_15 : freeList_15; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_80 = io_freeReq_0 ? _GEN_16 : freeList_16; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_81 = io_freeReq_0 ? _GEN_17 : freeList_17; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_82 = io_freeReq_0 ? _GEN_18 : freeList_18; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_83 = io_freeReq_0 ? _GEN_19 : freeList_19; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_84 = io_freeReq_0 ? _GEN_20 : freeList_20; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_85 = io_freeReq_0 ? _GEN_21 : freeList_21; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_86 = io_freeReq_0 ? _GEN_22 : freeList_22; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_87 = io_freeReq_0 ? _GEN_23 : freeList_23; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_88 = io_freeReq_0 ? _GEN_24 : freeList_24; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_89 = io_freeReq_0 ? _GEN_25 : freeList_25; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_90 = io_freeReq_0 ? _GEN_26 : freeList_26; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_91 = io_freeReq_0 ? _GEN_27 : freeList_27; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_92 = io_freeReq_0 ? _GEN_28 : freeList_28; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_93 = io_freeReq_0 ? _GEN_29 : freeList_29; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_94 = io_freeReq_0 ? _GEN_30 : freeList_30; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_95 = io_freeReq_0 ? _GEN_31 : freeList_31; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_96 = io_freeReq_0 ? _GEN_32 : freeList_32; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_97 = io_freeReq_0 ? _GEN_33 : freeList_33; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_98 = io_freeReq_0 ? _GEN_34 : freeList_34; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_99 = io_freeReq_0 ? _GEN_35 : freeList_35; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_100 = io_freeReq_0 ? _GEN_36 : freeList_36; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_101 = io_freeReq_0 ? _GEN_37 : freeList_37; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_102 = io_freeReq_0 ? _GEN_38 : freeList_38; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_103 = io_freeReq_0 ? _GEN_39 : freeList_39; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_104 = io_freeReq_0 ? _GEN_40 : freeList_40; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_105 = io_freeReq_0 ? _GEN_41 : freeList_41; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_106 = io_freeReq_0 ? _GEN_42 : freeList_42; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_107 = io_freeReq_0 ? _GEN_43 : freeList_43; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_108 = io_freeReq_0 ? _GEN_44 : freeList_44; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_109 = io_freeReq_0 ? _GEN_45 : freeList_45; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_110 = io_freeReq_0 ? _GEN_46 : freeList_46; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_111 = io_freeReq_0 ? _GEN_47 : freeList_47; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_112 = io_freeReq_0 ? _GEN_48 : freeList_48; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_113 = io_freeReq_0 ? _GEN_49 : freeList_49; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_114 = io_freeReq_0 ? _GEN_50 : freeList_50; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_115 = io_freeReq_0 ? _GEN_51 : freeList_51; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_116 = io_freeReq_0 ? _GEN_52 : freeList_52; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_117 = io_freeReq_0 ? _GEN_53 : freeList_53; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_118 = io_freeReq_0 ? _GEN_54 : freeList_54; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_119 = io_freeReq_0 ? _GEN_55 : freeList_55; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_120 = io_freeReq_0 ? _GEN_56 : freeList_56; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_121 = io_freeReq_0 ? _GEN_57 : freeList_57; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_122 = io_freeReq_0 ? _GEN_58 : freeList_58; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_123 = io_freeReq_0 ? _GEN_59 : freeList_59; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_124 = io_freeReq_0 ? _GEN_60 : freeList_60; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_125 = io_freeReq_0 ? _GEN_61 : freeList_61; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_126 = io_freeReq_0 ? _GEN_62 : freeList_62; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_127 = io_freeReq_0 ? _GEN_63 : freeList_63; // @[StdFreeList.scala 29:25 41:26]
  wire [6:0] _GEN_780 = {{6'd0}, io_freeReq_0}; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] _ptr_new_ptr_T_7 = _ptr_new_ptr_T + _GEN_780; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] ptr_1_value = _ptr_new_ptr_T_7[5:0]; // @[CircularQueuePtr.scala 40:59]
  wire [6:0] _GEN_128 = 6'h0 == ptr_1_value ? io_freePhyReg_1 : _GEN_64; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_129 = 6'h1 == ptr_1_value ? io_freePhyReg_1 : _GEN_65; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_130 = 6'h2 == ptr_1_value ? io_freePhyReg_1 : _GEN_66; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_131 = 6'h3 == ptr_1_value ? io_freePhyReg_1 : _GEN_67; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_132 = 6'h4 == ptr_1_value ? io_freePhyReg_1 : _GEN_68; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_133 = 6'h5 == ptr_1_value ? io_freePhyReg_1 : _GEN_69; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_134 = 6'h6 == ptr_1_value ? io_freePhyReg_1 : _GEN_70; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_135 = 6'h7 == ptr_1_value ? io_freePhyReg_1 : _GEN_71; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_136 = 6'h8 == ptr_1_value ? io_freePhyReg_1 : _GEN_72; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_137 = 6'h9 == ptr_1_value ? io_freePhyReg_1 : _GEN_73; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_138 = 6'ha == ptr_1_value ? io_freePhyReg_1 : _GEN_74; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_139 = 6'hb == ptr_1_value ? io_freePhyReg_1 : _GEN_75; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_140 = 6'hc == ptr_1_value ? io_freePhyReg_1 : _GEN_76; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_141 = 6'hd == ptr_1_value ? io_freePhyReg_1 : _GEN_77; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_142 = 6'he == ptr_1_value ? io_freePhyReg_1 : _GEN_78; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_143 = 6'hf == ptr_1_value ? io_freePhyReg_1 : _GEN_79; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_144 = 6'h10 == ptr_1_value ? io_freePhyReg_1 : _GEN_80; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_145 = 6'h11 == ptr_1_value ? io_freePhyReg_1 : _GEN_81; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_146 = 6'h12 == ptr_1_value ? io_freePhyReg_1 : _GEN_82; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_147 = 6'h13 == ptr_1_value ? io_freePhyReg_1 : _GEN_83; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_148 = 6'h14 == ptr_1_value ? io_freePhyReg_1 : _GEN_84; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_149 = 6'h15 == ptr_1_value ? io_freePhyReg_1 : _GEN_85; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_150 = 6'h16 == ptr_1_value ? io_freePhyReg_1 : _GEN_86; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_151 = 6'h17 == ptr_1_value ? io_freePhyReg_1 : _GEN_87; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_152 = 6'h18 == ptr_1_value ? io_freePhyReg_1 : _GEN_88; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_153 = 6'h19 == ptr_1_value ? io_freePhyReg_1 : _GEN_89; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_154 = 6'h1a == ptr_1_value ? io_freePhyReg_1 : _GEN_90; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_155 = 6'h1b == ptr_1_value ? io_freePhyReg_1 : _GEN_91; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_156 = 6'h1c == ptr_1_value ? io_freePhyReg_1 : _GEN_92; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_157 = 6'h1d == ptr_1_value ? io_freePhyReg_1 : _GEN_93; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_158 = 6'h1e == ptr_1_value ? io_freePhyReg_1 : _GEN_94; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_159 = 6'h1f == ptr_1_value ? io_freePhyReg_1 : _GEN_95; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_160 = 6'h20 == ptr_1_value ? io_freePhyReg_1 : _GEN_96; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_161 = 6'h21 == ptr_1_value ? io_freePhyReg_1 : _GEN_97; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_162 = 6'h22 == ptr_1_value ? io_freePhyReg_1 : _GEN_98; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_163 = 6'h23 == ptr_1_value ? io_freePhyReg_1 : _GEN_99; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_164 = 6'h24 == ptr_1_value ? io_freePhyReg_1 : _GEN_100; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_165 = 6'h25 == ptr_1_value ? io_freePhyReg_1 : _GEN_101; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_166 = 6'h26 == ptr_1_value ? io_freePhyReg_1 : _GEN_102; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_167 = 6'h27 == ptr_1_value ? io_freePhyReg_1 : _GEN_103; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_168 = 6'h28 == ptr_1_value ? io_freePhyReg_1 : _GEN_104; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_169 = 6'h29 == ptr_1_value ? io_freePhyReg_1 : _GEN_105; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_170 = 6'h2a == ptr_1_value ? io_freePhyReg_1 : _GEN_106; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_171 = 6'h2b == ptr_1_value ? io_freePhyReg_1 : _GEN_107; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_172 = 6'h2c == ptr_1_value ? io_freePhyReg_1 : _GEN_108; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_173 = 6'h2d == ptr_1_value ? io_freePhyReg_1 : _GEN_109; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_174 = 6'h2e == ptr_1_value ? io_freePhyReg_1 : _GEN_110; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_175 = 6'h2f == ptr_1_value ? io_freePhyReg_1 : _GEN_111; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_176 = 6'h30 == ptr_1_value ? io_freePhyReg_1 : _GEN_112; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_177 = 6'h31 == ptr_1_value ? io_freePhyReg_1 : _GEN_113; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_178 = 6'h32 == ptr_1_value ? io_freePhyReg_1 : _GEN_114; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_179 = 6'h33 == ptr_1_value ? io_freePhyReg_1 : _GEN_115; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_180 = 6'h34 == ptr_1_value ? io_freePhyReg_1 : _GEN_116; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_181 = 6'h35 == ptr_1_value ? io_freePhyReg_1 : _GEN_117; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_182 = 6'h36 == ptr_1_value ? io_freePhyReg_1 : _GEN_118; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_183 = 6'h37 == ptr_1_value ? io_freePhyReg_1 : _GEN_119; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_184 = 6'h38 == ptr_1_value ? io_freePhyReg_1 : _GEN_120; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_185 = 6'h39 == ptr_1_value ? io_freePhyReg_1 : _GEN_121; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_186 = 6'h3a == ptr_1_value ? io_freePhyReg_1 : _GEN_122; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_187 = 6'h3b == ptr_1_value ? io_freePhyReg_1 : _GEN_123; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_188 = 6'h3c == ptr_1_value ? io_freePhyReg_1 : _GEN_124; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_189 = 6'h3d == ptr_1_value ? io_freePhyReg_1 : _GEN_125; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_190 = 6'h3e == ptr_1_value ? io_freePhyReg_1 : _GEN_126; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_191 = 6'h3f == ptr_1_value ? io_freePhyReg_1 : _GEN_127; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_192 = io_freeReq_1 ? _GEN_128 : _GEN_64; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_193 = io_freeReq_1 ? _GEN_129 : _GEN_65; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_194 = io_freeReq_1 ? _GEN_130 : _GEN_66; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_195 = io_freeReq_1 ? _GEN_131 : _GEN_67; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_196 = io_freeReq_1 ? _GEN_132 : _GEN_68; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_197 = io_freeReq_1 ? _GEN_133 : _GEN_69; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_198 = io_freeReq_1 ? _GEN_134 : _GEN_70; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_199 = io_freeReq_1 ? _GEN_135 : _GEN_71; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_200 = io_freeReq_1 ? _GEN_136 : _GEN_72; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_201 = io_freeReq_1 ? _GEN_137 : _GEN_73; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_202 = io_freeReq_1 ? _GEN_138 : _GEN_74; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_203 = io_freeReq_1 ? _GEN_139 : _GEN_75; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_204 = io_freeReq_1 ? _GEN_140 : _GEN_76; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_205 = io_freeReq_1 ? _GEN_141 : _GEN_77; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_206 = io_freeReq_1 ? _GEN_142 : _GEN_78; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_207 = io_freeReq_1 ? _GEN_143 : _GEN_79; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_208 = io_freeReq_1 ? _GEN_144 : _GEN_80; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_209 = io_freeReq_1 ? _GEN_145 : _GEN_81; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_210 = io_freeReq_1 ? _GEN_146 : _GEN_82; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_211 = io_freeReq_1 ? _GEN_147 : _GEN_83; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_212 = io_freeReq_1 ? _GEN_148 : _GEN_84; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_213 = io_freeReq_1 ? _GEN_149 : _GEN_85; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_214 = io_freeReq_1 ? _GEN_150 : _GEN_86; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_215 = io_freeReq_1 ? _GEN_151 : _GEN_87; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_216 = io_freeReq_1 ? _GEN_152 : _GEN_88; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_217 = io_freeReq_1 ? _GEN_153 : _GEN_89; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_218 = io_freeReq_1 ? _GEN_154 : _GEN_90; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_219 = io_freeReq_1 ? _GEN_155 : _GEN_91; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_220 = io_freeReq_1 ? _GEN_156 : _GEN_92; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_221 = io_freeReq_1 ? _GEN_157 : _GEN_93; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_222 = io_freeReq_1 ? _GEN_158 : _GEN_94; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_223 = io_freeReq_1 ? _GEN_159 : _GEN_95; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_224 = io_freeReq_1 ? _GEN_160 : _GEN_96; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_225 = io_freeReq_1 ? _GEN_161 : _GEN_97; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_226 = io_freeReq_1 ? _GEN_162 : _GEN_98; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_227 = io_freeReq_1 ? _GEN_163 : _GEN_99; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_228 = io_freeReq_1 ? _GEN_164 : _GEN_100; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_229 = io_freeReq_1 ? _GEN_165 : _GEN_101; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_230 = io_freeReq_1 ? _GEN_166 : _GEN_102; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_231 = io_freeReq_1 ? _GEN_167 : _GEN_103; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_232 = io_freeReq_1 ? _GEN_168 : _GEN_104; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_233 = io_freeReq_1 ? _GEN_169 : _GEN_105; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_234 = io_freeReq_1 ? _GEN_170 : _GEN_106; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_235 = io_freeReq_1 ? _GEN_171 : _GEN_107; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_236 = io_freeReq_1 ? _GEN_172 : _GEN_108; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_237 = io_freeReq_1 ? _GEN_173 : _GEN_109; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_238 = io_freeReq_1 ? _GEN_174 : _GEN_110; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_239 = io_freeReq_1 ? _GEN_175 : _GEN_111; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_240 = io_freeReq_1 ? _GEN_176 : _GEN_112; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_241 = io_freeReq_1 ? _GEN_177 : _GEN_113; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_242 = io_freeReq_1 ? _GEN_178 : _GEN_114; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_243 = io_freeReq_1 ? _GEN_179 : _GEN_115; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_244 = io_freeReq_1 ? _GEN_180 : _GEN_116; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_245 = io_freeReq_1 ? _GEN_181 : _GEN_117; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_246 = io_freeReq_1 ? _GEN_182 : _GEN_118; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_247 = io_freeReq_1 ? _GEN_183 : _GEN_119; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_248 = io_freeReq_1 ? _GEN_184 : _GEN_120; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_249 = io_freeReq_1 ? _GEN_185 : _GEN_121; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_250 = io_freeReq_1 ? _GEN_186 : _GEN_122; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_251 = io_freeReq_1 ? _GEN_187 : _GEN_123; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_252 = io_freeReq_1 ? _GEN_188 : _GEN_124; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_253 = io_freeReq_1 ? _GEN_189 : _GEN_125; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_254 = io_freeReq_1 ? _GEN_190 : _GEN_126; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_255 = io_freeReq_1 ? _GEN_191 : _GEN_127; // @[StdFreeList.scala 41:26]
  wire [1:0] offset = io_freeReq_0 + io_freeReq_1; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_781 = {{5'd0}, offset}; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] _ptr_new_ptr_T_12 = _ptr_new_ptr_T + _GEN_781; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] ptr_2_value = _ptr_new_ptr_T_12[5:0]; // @[CircularQueuePtr.scala 40:59]
  wire [6:0] _GEN_256 = 6'h0 == ptr_2_value ? io_freePhyReg_2 : _GEN_192; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_257 = 6'h1 == ptr_2_value ? io_freePhyReg_2 : _GEN_193; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_258 = 6'h2 == ptr_2_value ? io_freePhyReg_2 : _GEN_194; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_259 = 6'h3 == ptr_2_value ? io_freePhyReg_2 : _GEN_195; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_260 = 6'h4 == ptr_2_value ? io_freePhyReg_2 : _GEN_196; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_261 = 6'h5 == ptr_2_value ? io_freePhyReg_2 : _GEN_197; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_262 = 6'h6 == ptr_2_value ? io_freePhyReg_2 : _GEN_198; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_263 = 6'h7 == ptr_2_value ? io_freePhyReg_2 : _GEN_199; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_264 = 6'h8 == ptr_2_value ? io_freePhyReg_2 : _GEN_200; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_265 = 6'h9 == ptr_2_value ? io_freePhyReg_2 : _GEN_201; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_266 = 6'ha == ptr_2_value ? io_freePhyReg_2 : _GEN_202; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_267 = 6'hb == ptr_2_value ? io_freePhyReg_2 : _GEN_203; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_268 = 6'hc == ptr_2_value ? io_freePhyReg_2 : _GEN_204; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_269 = 6'hd == ptr_2_value ? io_freePhyReg_2 : _GEN_205; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_270 = 6'he == ptr_2_value ? io_freePhyReg_2 : _GEN_206; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_271 = 6'hf == ptr_2_value ? io_freePhyReg_2 : _GEN_207; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_272 = 6'h10 == ptr_2_value ? io_freePhyReg_2 : _GEN_208; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_273 = 6'h11 == ptr_2_value ? io_freePhyReg_2 : _GEN_209; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_274 = 6'h12 == ptr_2_value ? io_freePhyReg_2 : _GEN_210; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_275 = 6'h13 == ptr_2_value ? io_freePhyReg_2 : _GEN_211; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_276 = 6'h14 == ptr_2_value ? io_freePhyReg_2 : _GEN_212; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_277 = 6'h15 == ptr_2_value ? io_freePhyReg_2 : _GEN_213; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_278 = 6'h16 == ptr_2_value ? io_freePhyReg_2 : _GEN_214; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_279 = 6'h17 == ptr_2_value ? io_freePhyReg_2 : _GEN_215; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_280 = 6'h18 == ptr_2_value ? io_freePhyReg_2 : _GEN_216; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_281 = 6'h19 == ptr_2_value ? io_freePhyReg_2 : _GEN_217; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_282 = 6'h1a == ptr_2_value ? io_freePhyReg_2 : _GEN_218; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_283 = 6'h1b == ptr_2_value ? io_freePhyReg_2 : _GEN_219; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_284 = 6'h1c == ptr_2_value ? io_freePhyReg_2 : _GEN_220; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_285 = 6'h1d == ptr_2_value ? io_freePhyReg_2 : _GEN_221; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_286 = 6'h1e == ptr_2_value ? io_freePhyReg_2 : _GEN_222; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_287 = 6'h1f == ptr_2_value ? io_freePhyReg_2 : _GEN_223; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_288 = 6'h20 == ptr_2_value ? io_freePhyReg_2 : _GEN_224; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_289 = 6'h21 == ptr_2_value ? io_freePhyReg_2 : _GEN_225; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_290 = 6'h22 == ptr_2_value ? io_freePhyReg_2 : _GEN_226; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_291 = 6'h23 == ptr_2_value ? io_freePhyReg_2 : _GEN_227; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_292 = 6'h24 == ptr_2_value ? io_freePhyReg_2 : _GEN_228; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_293 = 6'h25 == ptr_2_value ? io_freePhyReg_2 : _GEN_229; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_294 = 6'h26 == ptr_2_value ? io_freePhyReg_2 : _GEN_230; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_295 = 6'h27 == ptr_2_value ? io_freePhyReg_2 : _GEN_231; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_296 = 6'h28 == ptr_2_value ? io_freePhyReg_2 : _GEN_232; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_297 = 6'h29 == ptr_2_value ? io_freePhyReg_2 : _GEN_233; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_298 = 6'h2a == ptr_2_value ? io_freePhyReg_2 : _GEN_234; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_299 = 6'h2b == ptr_2_value ? io_freePhyReg_2 : _GEN_235; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_300 = 6'h2c == ptr_2_value ? io_freePhyReg_2 : _GEN_236; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_301 = 6'h2d == ptr_2_value ? io_freePhyReg_2 : _GEN_237; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_302 = 6'h2e == ptr_2_value ? io_freePhyReg_2 : _GEN_238; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_303 = 6'h2f == ptr_2_value ? io_freePhyReg_2 : _GEN_239; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_304 = 6'h30 == ptr_2_value ? io_freePhyReg_2 : _GEN_240; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_305 = 6'h31 == ptr_2_value ? io_freePhyReg_2 : _GEN_241; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_306 = 6'h32 == ptr_2_value ? io_freePhyReg_2 : _GEN_242; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_307 = 6'h33 == ptr_2_value ? io_freePhyReg_2 : _GEN_243; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_308 = 6'h34 == ptr_2_value ? io_freePhyReg_2 : _GEN_244; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_309 = 6'h35 == ptr_2_value ? io_freePhyReg_2 : _GEN_245; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_310 = 6'h36 == ptr_2_value ? io_freePhyReg_2 : _GEN_246; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_311 = 6'h37 == ptr_2_value ? io_freePhyReg_2 : _GEN_247; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_312 = 6'h38 == ptr_2_value ? io_freePhyReg_2 : _GEN_248; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_313 = 6'h39 == ptr_2_value ? io_freePhyReg_2 : _GEN_249; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_314 = 6'h3a == ptr_2_value ? io_freePhyReg_2 : _GEN_250; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_315 = 6'h3b == ptr_2_value ? io_freePhyReg_2 : _GEN_251; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_316 = 6'h3c == ptr_2_value ? io_freePhyReg_2 : _GEN_252; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_317 = 6'h3d == ptr_2_value ? io_freePhyReg_2 : _GEN_253; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_318 = 6'h3e == ptr_2_value ? io_freePhyReg_2 : _GEN_254; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_319 = 6'h3f == ptr_2_value ? io_freePhyReg_2 : _GEN_255; // @[StdFreeList.scala 42:{21,21}]
  wire [6:0] _GEN_320 = io_freeReq_2 ? _GEN_256 : _GEN_192; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_321 = io_freeReq_2 ? _GEN_257 : _GEN_193; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_322 = io_freeReq_2 ? _GEN_258 : _GEN_194; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_323 = io_freeReq_2 ? _GEN_259 : _GEN_195; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_324 = io_freeReq_2 ? _GEN_260 : _GEN_196; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_325 = io_freeReq_2 ? _GEN_261 : _GEN_197; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_326 = io_freeReq_2 ? _GEN_262 : _GEN_198; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_327 = io_freeReq_2 ? _GEN_263 : _GEN_199; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_328 = io_freeReq_2 ? _GEN_264 : _GEN_200; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_329 = io_freeReq_2 ? _GEN_265 : _GEN_201; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_330 = io_freeReq_2 ? _GEN_266 : _GEN_202; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_331 = io_freeReq_2 ? _GEN_267 : _GEN_203; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_332 = io_freeReq_2 ? _GEN_268 : _GEN_204; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_333 = io_freeReq_2 ? _GEN_269 : _GEN_205; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_334 = io_freeReq_2 ? _GEN_270 : _GEN_206; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_335 = io_freeReq_2 ? _GEN_271 : _GEN_207; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_336 = io_freeReq_2 ? _GEN_272 : _GEN_208; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_337 = io_freeReq_2 ? _GEN_273 : _GEN_209; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_338 = io_freeReq_2 ? _GEN_274 : _GEN_210; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_339 = io_freeReq_2 ? _GEN_275 : _GEN_211; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_340 = io_freeReq_2 ? _GEN_276 : _GEN_212; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_341 = io_freeReq_2 ? _GEN_277 : _GEN_213; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_342 = io_freeReq_2 ? _GEN_278 : _GEN_214; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_343 = io_freeReq_2 ? _GEN_279 : _GEN_215; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_344 = io_freeReq_2 ? _GEN_280 : _GEN_216; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_345 = io_freeReq_2 ? _GEN_281 : _GEN_217; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_346 = io_freeReq_2 ? _GEN_282 : _GEN_218; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_347 = io_freeReq_2 ? _GEN_283 : _GEN_219; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_348 = io_freeReq_2 ? _GEN_284 : _GEN_220; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_349 = io_freeReq_2 ? _GEN_285 : _GEN_221; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_350 = io_freeReq_2 ? _GEN_286 : _GEN_222; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_351 = io_freeReq_2 ? _GEN_287 : _GEN_223; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_352 = io_freeReq_2 ? _GEN_288 : _GEN_224; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_353 = io_freeReq_2 ? _GEN_289 : _GEN_225; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_354 = io_freeReq_2 ? _GEN_290 : _GEN_226; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_355 = io_freeReq_2 ? _GEN_291 : _GEN_227; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_356 = io_freeReq_2 ? _GEN_292 : _GEN_228; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_357 = io_freeReq_2 ? _GEN_293 : _GEN_229; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_358 = io_freeReq_2 ? _GEN_294 : _GEN_230; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_359 = io_freeReq_2 ? _GEN_295 : _GEN_231; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_360 = io_freeReq_2 ? _GEN_296 : _GEN_232; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_361 = io_freeReq_2 ? _GEN_297 : _GEN_233; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_362 = io_freeReq_2 ? _GEN_298 : _GEN_234; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_363 = io_freeReq_2 ? _GEN_299 : _GEN_235; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_364 = io_freeReq_2 ? _GEN_300 : _GEN_236; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_365 = io_freeReq_2 ? _GEN_301 : _GEN_237; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_366 = io_freeReq_2 ? _GEN_302 : _GEN_238; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_367 = io_freeReq_2 ? _GEN_303 : _GEN_239; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_368 = io_freeReq_2 ? _GEN_304 : _GEN_240; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_369 = io_freeReq_2 ? _GEN_305 : _GEN_241; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_370 = io_freeReq_2 ? _GEN_306 : _GEN_242; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_371 = io_freeReq_2 ? _GEN_307 : _GEN_243; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_372 = io_freeReq_2 ? _GEN_308 : _GEN_244; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_373 = io_freeReq_2 ? _GEN_309 : _GEN_245; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_374 = io_freeReq_2 ? _GEN_310 : _GEN_246; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_375 = io_freeReq_2 ? _GEN_311 : _GEN_247; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_376 = io_freeReq_2 ? _GEN_312 : _GEN_248; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_377 = io_freeReq_2 ? _GEN_313 : _GEN_249; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_378 = io_freeReq_2 ? _GEN_314 : _GEN_250; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_379 = io_freeReq_2 ? _GEN_315 : _GEN_251; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_380 = io_freeReq_2 ? _GEN_316 : _GEN_252; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_381 = io_freeReq_2 ? _GEN_317 : _GEN_253; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_382 = io_freeReq_2 ? _GEN_318 : _GEN_254; // @[StdFreeList.scala 41:26]
  wire [6:0] _GEN_383 = io_freeReq_2 ? _GEN_319 : _GEN_255; // @[StdFreeList.scala 41:26]
  wire [1:0] _offset_T_1 = io_freeReq_1 + io_freeReq_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_782 = {{1'd0}, io_freeReq_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _offset_T_3 = _GEN_782 + _offset_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] offset_1 = _offset_T_3[1:0]; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_783 = {{5'd0}, offset_1}; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] _ptr_new_ptr_T_17 = _ptr_new_ptr_T + _GEN_783; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] ptr_3_value = _ptr_new_ptr_T_17[5:0]; // @[CircularQueuePtr.scala 40:59]
  wire [1:0] _tailPtrNext_T_2 = io_freeReq_2 + io_freeReq_3; // @[Bitwise.scala 48:55]
  wire [2:0] _tailPtrNext_T_4 = offset + _tailPtrNext_T_2; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_784 = {{4'd0}, _tailPtrNext_T_4}; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] _tailPtrNext_new_ptr_T_2 = _ptr_new_ptr_T + _GEN_784; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] tailPtrNext_value = _tailPtrNext_new_ptr_T_2[5:0]; // @[CircularQueuePtr.scala 40:59]
  wire  tailPtrNext_flag = _tailPtrNext_new_ptr_T_2[6]; // @[CircularQueuePtr.scala 40:59]
  wire [6:0] _headPtrAllocate_new_ptr_T = {headPtr_flag,headPtr_value}; // @[Cat.scala 31:58]
  wire [1:0] _headPtrAllocate_T = io_allocateReq_0 + io_allocateReq_1; // @[Bitwise.scala 48:55]
  wire [1:0] _headPtrAllocate_T_2 = io_allocateReq_2 + io_allocateReq_3; // @[Bitwise.scala 48:55]
  wire [2:0] _headPtrAllocate_T_4 = _headPtrAllocate_T + _headPtrAllocate_T_2; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_785 = {{4'd0}, _headPtrAllocate_T_4}; // @[CircularQueuePtr.scala 40:46]
  wire [6:0] _headPtrAllocate_new_ptr_T_2 = _headPtrAllocate_new_ptr_T + _GEN_785; // @[CircularQueuePtr.scala 40:46]
  wire  headPtrAllocate_flag = _headPtrAllocate_new_ptr_T_2[6]; // @[CircularQueuePtr.scala 40:59]
  wire  headPtrNext_flag = io_canAllocate & io_doAllocate ? headPtrAllocate_flag : headPtr_flag; // @[StdFreeList.scala 65:24]
  wire [5:0] headPtrAllocate_value = _headPtrAllocate_new_ptr_T_2[5:0]; // @[CircularQueuePtr.scala 40:59]
  wire [5:0] headPtrNext_value = io_canAllocate & io_doAllocate ? headPtrAllocate_value : headPtr_value; // @[StdFreeList.scala 65:24]
  wire [5:0] _freeRegCnt_T_2 = tailPtr_value - headPtrNext_value; // @[CircularQueuePtr.scala 80:21]
  wire [6:0] _GEN_786 = {{1'd0}, tailPtr_value}; // @[CircularQueuePtr.scala 81:25]
  wire [6:0] _freeRegCnt_T_4 = 7'h40 + _GEN_786; // @[CircularQueuePtr.scala 81:25]
  wire [6:0] _GEN_787 = {{1'd0}, headPtrNext_value}; // @[CircularQueuePtr.scala 81:41]
  wire [6:0] _freeRegCnt_T_6 = _freeRegCnt_T_4 - _GEN_787; // @[CircularQueuePtr.scala 81:41]
  wire [6:0] freeRegCnt = tailPtr_flag == headPtrNext_flag ? {{1'd0}, _freeRegCnt_T_2} : _freeRegCnt_T_6; // @[CircularQueuePtr.scala 79:8]
  reg  io_canAllocate_REG; // @[StdFreeList.scala 54:28]
  wire [7:0] _allocatePtr_new_ptr_T_1 = {{1'd0}, _headPtrAllocate_new_ptr_T}; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] allocatePtr_0_value = _allocatePtr_new_ptr_T_1[5:0]; // @[CircularQueuePtr.scala 40:59]
  wire [6:0] _allocatePtr_new_ptr_T_7 = _headPtrAllocate_new_ptr_T + 7'h1; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] allocatePtr_1_value = _allocatePtr_new_ptr_T_7[5:0]; // @[CircularQueuePtr.scala 40:59]
  wire [6:0] _allocatePtr_new_ptr_T_12 = _headPtrAllocate_new_ptr_T + 7'h2; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] allocatePtr_2_value = _allocatePtr_new_ptr_T_12[5:0]; // @[CircularQueuePtr.scala 40:59]
  wire [6:0] _allocatePtr_new_ptr_T_17 = _headPtrAllocate_new_ptr_T + 7'h3; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] allocatePtr_3_value = _allocatePtr_new_ptr_T_17[5:0]; // @[CircularQueuePtr.scala 40:59]
  wire [6:0] _GEN_513 = 6'h1 == allocatePtr_0_value ? freeList_1 : freeList_0; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_514 = 6'h2 == allocatePtr_0_value ? freeList_2 : _GEN_513; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_515 = 6'h3 == allocatePtr_0_value ? freeList_3 : _GEN_514; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_516 = 6'h4 == allocatePtr_0_value ? freeList_4 : _GEN_515; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_517 = 6'h5 == allocatePtr_0_value ? freeList_5 : _GEN_516; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_518 = 6'h6 == allocatePtr_0_value ? freeList_6 : _GEN_517; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_519 = 6'h7 == allocatePtr_0_value ? freeList_7 : _GEN_518; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_520 = 6'h8 == allocatePtr_0_value ? freeList_8 : _GEN_519; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_521 = 6'h9 == allocatePtr_0_value ? freeList_9 : _GEN_520; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_522 = 6'ha == allocatePtr_0_value ? freeList_10 : _GEN_521; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_523 = 6'hb == allocatePtr_0_value ? freeList_11 : _GEN_522; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_524 = 6'hc == allocatePtr_0_value ? freeList_12 : _GEN_523; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_525 = 6'hd == allocatePtr_0_value ? freeList_13 : _GEN_524; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_526 = 6'he == allocatePtr_0_value ? freeList_14 : _GEN_525; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_527 = 6'hf == allocatePtr_0_value ? freeList_15 : _GEN_526; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_528 = 6'h10 == allocatePtr_0_value ? freeList_16 : _GEN_527; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_529 = 6'h11 == allocatePtr_0_value ? freeList_17 : _GEN_528; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_530 = 6'h12 == allocatePtr_0_value ? freeList_18 : _GEN_529; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_531 = 6'h13 == allocatePtr_0_value ? freeList_19 : _GEN_530; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_532 = 6'h14 == allocatePtr_0_value ? freeList_20 : _GEN_531; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_533 = 6'h15 == allocatePtr_0_value ? freeList_21 : _GEN_532; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_534 = 6'h16 == allocatePtr_0_value ? freeList_22 : _GEN_533; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_535 = 6'h17 == allocatePtr_0_value ? freeList_23 : _GEN_534; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_536 = 6'h18 == allocatePtr_0_value ? freeList_24 : _GEN_535; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_537 = 6'h19 == allocatePtr_0_value ? freeList_25 : _GEN_536; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_538 = 6'h1a == allocatePtr_0_value ? freeList_26 : _GEN_537; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_539 = 6'h1b == allocatePtr_0_value ? freeList_27 : _GEN_538; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_540 = 6'h1c == allocatePtr_0_value ? freeList_28 : _GEN_539; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_541 = 6'h1d == allocatePtr_0_value ? freeList_29 : _GEN_540; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_542 = 6'h1e == allocatePtr_0_value ? freeList_30 : _GEN_541; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_543 = 6'h1f == allocatePtr_0_value ? freeList_31 : _GEN_542; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_544 = 6'h20 == allocatePtr_0_value ? freeList_32 : _GEN_543; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_545 = 6'h21 == allocatePtr_0_value ? freeList_33 : _GEN_544; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_546 = 6'h22 == allocatePtr_0_value ? freeList_34 : _GEN_545; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_547 = 6'h23 == allocatePtr_0_value ? freeList_35 : _GEN_546; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_548 = 6'h24 == allocatePtr_0_value ? freeList_36 : _GEN_547; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_549 = 6'h25 == allocatePtr_0_value ? freeList_37 : _GEN_548; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_550 = 6'h26 == allocatePtr_0_value ? freeList_38 : _GEN_549; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_551 = 6'h27 == allocatePtr_0_value ? freeList_39 : _GEN_550; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_552 = 6'h28 == allocatePtr_0_value ? freeList_40 : _GEN_551; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_553 = 6'h29 == allocatePtr_0_value ? freeList_41 : _GEN_552; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_554 = 6'h2a == allocatePtr_0_value ? freeList_42 : _GEN_553; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_555 = 6'h2b == allocatePtr_0_value ? freeList_43 : _GEN_554; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_556 = 6'h2c == allocatePtr_0_value ? freeList_44 : _GEN_555; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_557 = 6'h2d == allocatePtr_0_value ? freeList_45 : _GEN_556; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_558 = 6'h2e == allocatePtr_0_value ? freeList_46 : _GEN_557; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_559 = 6'h2f == allocatePtr_0_value ? freeList_47 : _GEN_558; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_560 = 6'h30 == allocatePtr_0_value ? freeList_48 : _GEN_559; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_561 = 6'h31 == allocatePtr_0_value ? freeList_49 : _GEN_560; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_562 = 6'h32 == allocatePtr_0_value ? freeList_50 : _GEN_561; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_563 = 6'h33 == allocatePtr_0_value ? freeList_51 : _GEN_562; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_564 = 6'h34 == allocatePtr_0_value ? freeList_52 : _GEN_563; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_565 = 6'h35 == allocatePtr_0_value ? freeList_53 : _GEN_564; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_566 = 6'h36 == allocatePtr_0_value ? freeList_54 : _GEN_565; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_567 = 6'h37 == allocatePtr_0_value ? freeList_55 : _GEN_566; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_568 = 6'h38 == allocatePtr_0_value ? freeList_56 : _GEN_567; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_569 = 6'h39 == allocatePtr_0_value ? freeList_57 : _GEN_568; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_570 = 6'h3a == allocatePtr_0_value ? freeList_58 : _GEN_569; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_571 = 6'h3b == allocatePtr_0_value ? freeList_59 : _GEN_570; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_572 = 6'h3c == allocatePtr_0_value ? freeList_60 : _GEN_571; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_573 = 6'h3d == allocatePtr_0_value ? freeList_61 : _GEN_572; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_574 = 6'h3e == allocatePtr_0_value ? freeList_62 : _GEN_573; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] phyRegCandidates_0 = 6'h3f == allocatePtr_0_value ? freeList_63 : _GEN_574; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_577 = 6'h1 == allocatePtr_1_value ? freeList_1 : freeList_0; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_578 = 6'h2 == allocatePtr_1_value ? freeList_2 : _GEN_577; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_579 = 6'h3 == allocatePtr_1_value ? freeList_3 : _GEN_578; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_580 = 6'h4 == allocatePtr_1_value ? freeList_4 : _GEN_579; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_581 = 6'h5 == allocatePtr_1_value ? freeList_5 : _GEN_580; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_582 = 6'h6 == allocatePtr_1_value ? freeList_6 : _GEN_581; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_583 = 6'h7 == allocatePtr_1_value ? freeList_7 : _GEN_582; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_584 = 6'h8 == allocatePtr_1_value ? freeList_8 : _GEN_583; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_585 = 6'h9 == allocatePtr_1_value ? freeList_9 : _GEN_584; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_586 = 6'ha == allocatePtr_1_value ? freeList_10 : _GEN_585; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_587 = 6'hb == allocatePtr_1_value ? freeList_11 : _GEN_586; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_588 = 6'hc == allocatePtr_1_value ? freeList_12 : _GEN_587; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_589 = 6'hd == allocatePtr_1_value ? freeList_13 : _GEN_588; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_590 = 6'he == allocatePtr_1_value ? freeList_14 : _GEN_589; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_591 = 6'hf == allocatePtr_1_value ? freeList_15 : _GEN_590; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_592 = 6'h10 == allocatePtr_1_value ? freeList_16 : _GEN_591; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_593 = 6'h11 == allocatePtr_1_value ? freeList_17 : _GEN_592; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_594 = 6'h12 == allocatePtr_1_value ? freeList_18 : _GEN_593; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_595 = 6'h13 == allocatePtr_1_value ? freeList_19 : _GEN_594; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_596 = 6'h14 == allocatePtr_1_value ? freeList_20 : _GEN_595; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_597 = 6'h15 == allocatePtr_1_value ? freeList_21 : _GEN_596; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_598 = 6'h16 == allocatePtr_1_value ? freeList_22 : _GEN_597; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_599 = 6'h17 == allocatePtr_1_value ? freeList_23 : _GEN_598; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_600 = 6'h18 == allocatePtr_1_value ? freeList_24 : _GEN_599; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_601 = 6'h19 == allocatePtr_1_value ? freeList_25 : _GEN_600; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_602 = 6'h1a == allocatePtr_1_value ? freeList_26 : _GEN_601; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_603 = 6'h1b == allocatePtr_1_value ? freeList_27 : _GEN_602; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_604 = 6'h1c == allocatePtr_1_value ? freeList_28 : _GEN_603; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_605 = 6'h1d == allocatePtr_1_value ? freeList_29 : _GEN_604; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_606 = 6'h1e == allocatePtr_1_value ? freeList_30 : _GEN_605; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_607 = 6'h1f == allocatePtr_1_value ? freeList_31 : _GEN_606; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_608 = 6'h20 == allocatePtr_1_value ? freeList_32 : _GEN_607; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_609 = 6'h21 == allocatePtr_1_value ? freeList_33 : _GEN_608; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_610 = 6'h22 == allocatePtr_1_value ? freeList_34 : _GEN_609; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_611 = 6'h23 == allocatePtr_1_value ? freeList_35 : _GEN_610; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_612 = 6'h24 == allocatePtr_1_value ? freeList_36 : _GEN_611; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_613 = 6'h25 == allocatePtr_1_value ? freeList_37 : _GEN_612; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_614 = 6'h26 == allocatePtr_1_value ? freeList_38 : _GEN_613; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_615 = 6'h27 == allocatePtr_1_value ? freeList_39 : _GEN_614; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_616 = 6'h28 == allocatePtr_1_value ? freeList_40 : _GEN_615; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_617 = 6'h29 == allocatePtr_1_value ? freeList_41 : _GEN_616; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_618 = 6'h2a == allocatePtr_1_value ? freeList_42 : _GEN_617; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_619 = 6'h2b == allocatePtr_1_value ? freeList_43 : _GEN_618; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_620 = 6'h2c == allocatePtr_1_value ? freeList_44 : _GEN_619; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_621 = 6'h2d == allocatePtr_1_value ? freeList_45 : _GEN_620; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_622 = 6'h2e == allocatePtr_1_value ? freeList_46 : _GEN_621; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_623 = 6'h2f == allocatePtr_1_value ? freeList_47 : _GEN_622; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_624 = 6'h30 == allocatePtr_1_value ? freeList_48 : _GEN_623; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_625 = 6'h31 == allocatePtr_1_value ? freeList_49 : _GEN_624; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_626 = 6'h32 == allocatePtr_1_value ? freeList_50 : _GEN_625; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_627 = 6'h33 == allocatePtr_1_value ? freeList_51 : _GEN_626; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_628 = 6'h34 == allocatePtr_1_value ? freeList_52 : _GEN_627; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_629 = 6'h35 == allocatePtr_1_value ? freeList_53 : _GEN_628; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_630 = 6'h36 == allocatePtr_1_value ? freeList_54 : _GEN_629; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_631 = 6'h37 == allocatePtr_1_value ? freeList_55 : _GEN_630; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_632 = 6'h38 == allocatePtr_1_value ? freeList_56 : _GEN_631; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_633 = 6'h39 == allocatePtr_1_value ? freeList_57 : _GEN_632; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_634 = 6'h3a == allocatePtr_1_value ? freeList_58 : _GEN_633; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_635 = 6'h3b == allocatePtr_1_value ? freeList_59 : _GEN_634; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_636 = 6'h3c == allocatePtr_1_value ? freeList_60 : _GEN_635; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_637 = 6'h3d == allocatePtr_1_value ? freeList_61 : _GEN_636; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_638 = 6'h3e == allocatePtr_1_value ? freeList_62 : _GEN_637; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] phyRegCandidates_1 = 6'h3f == allocatePtr_1_value ? freeList_63 : _GEN_638; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_641 = 6'h1 == allocatePtr_2_value ? freeList_1 : freeList_0; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_642 = 6'h2 == allocatePtr_2_value ? freeList_2 : _GEN_641; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_643 = 6'h3 == allocatePtr_2_value ? freeList_3 : _GEN_642; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_644 = 6'h4 == allocatePtr_2_value ? freeList_4 : _GEN_643; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_645 = 6'h5 == allocatePtr_2_value ? freeList_5 : _GEN_644; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_646 = 6'h6 == allocatePtr_2_value ? freeList_6 : _GEN_645; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_647 = 6'h7 == allocatePtr_2_value ? freeList_7 : _GEN_646; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_648 = 6'h8 == allocatePtr_2_value ? freeList_8 : _GEN_647; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_649 = 6'h9 == allocatePtr_2_value ? freeList_9 : _GEN_648; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_650 = 6'ha == allocatePtr_2_value ? freeList_10 : _GEN_649; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_651 = 6'hb == allocatePtr_2_value ? freeList_11 : _GEN_650; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_652 = 6'hc == allocatePtr_2_value ? freeList_12 : _GEN_651; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_653 = 6'hd == allocatePtr_2_value ? freeList_13 : _GEN_652; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_654 = 6'he == allocatePtr_2_value ? freeList_14 : _GEN_653; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_655 = 6'hf == allocatePtr_2_value ? freeList_15 : _GEN_654; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_656 = 6'h10 == allocatePtr_2_value ? freeList_16 : _GEN_655; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_657 = 6'h11 == allocatePtr_2_value ? freeList_17 : _GEN_656; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_658 = 6'h12 == allocatePtr_2_value ? freeList_18 : _GEN_657; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_659 = 6'h13 == allocatePtr_2_value ? freeList_19 : _GEN_658; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_660 = 6'h14 == allocatePtr_2_value ? freeList_20 : _GEN_659; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_661 = 6'h15 == allocatePtr_2_value ? freeList_21 : _GEN_660; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_662 = 6'h16 == allocatePtr_2_value ? freeList_22 : _GEN_661; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_663 = 6'h17 == allocatePtr_2_value ? freeList_23 : _GEN_662; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_664 = 6'h18 == allocatePtr_2_value ? freeList_24 : _GEN_663; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_665 = 6'h19 == allocatePtr_2_value ? freeList_25 : _GEN_664; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_666 = 6'h1a == allocatePtr_2_value ? freeList_26 : _GEN_665; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_667 = 6'h1b == allocatePtr_2_value ? freeList_27 : _GEN_666; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_668 = 6'h1c == allocatePtr_2_value ? freeList_28 : _GEN_667; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_669 = 6'h1d == allocatePtr_2_value ? freeList_29 : _GEN_668; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_670 = 6'h1e == allocatePtr_2_value ? freeList_30 : _GEN_669; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_671 = 6'h1f == allocatePtr_2_value ? freeList_31 : _GEN_670; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_672 = 6'h20 == allocatePtr_2_value ? freeList_32 : _GEN_671; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_673 = 6'h21 == allocatePtr_2_value ? freeList_33 : _GEN_672; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_674 = 6'h22 == allocatePtr_2_value ? freeList_34 : _GEN_673; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_675 = 6'h23 == allocatePtr_2_value ? freeList_35 : _GEN_674; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_676 = 6'h24 == allocatePtr_2_value ? freeList_36 : _GEN_675; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_677 = 6'h25 == allocatePtr_2_value ? freeList_37 : _GEN_676; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_678 = 6'h26 == allocatePtr_2_value ? freeList_38 : _GEN_677; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_679 = 6'h27 == allocatePtr_2_value ? freeList_39 : _GEN_678; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_680 = 6'h28 == allocatePtr_2_value ? freeList_40 : _GEN_679; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_681 = 6'h29 == allocatePtr_2_value ? freeList_41 : _GEN_680; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_682 = 6'h2a == allocatePtr_2_value ? freeList_42 : _GEN_681; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_683 = 6'h2b == allocatePtr_2_value ? freeList_43 : _GEN_682; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_684 = 6'h2c == allocatePtr_2_value ? freeList_44 : _GEN_683; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_685 = 6'h2d == allocatePtr_2_value ? freeList_45 : _GEN_684; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_686 = 6'h2e == allocatePtr_2_value ? freeList_46 : _GEN_685; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_687 = 6'h2f == allocatePtr_2_value ? freeList_47 : _GEN_686; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_688 = 6'h30 == allocatePtr_2_value ? freeList_48 : _GEN_687; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_689 = 6'h31 == allocatePtr_2_value ? freeList_49 : _GEN_688; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_690 = 6'h32 == allocatePtr_2_value ? freeList_50 : _GEN_689; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_691 = 6'h33 == allocatePtr_2_value ? freeList_51 : _GEN_690; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_692 = 6'h34 == allocatePtr_2_value ? freeList_52 : _GEN_691; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_693 = 6'h35 == allocatePtr_2_value ? freeList_53 : _GEN_692; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_694 = 6'h36 == allocatePtr_2_value ? freeList_54 : _GEN_693; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_695 = 6'h37 == allocatePtr_2_value ? freeList_55 : _GEN_694; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_696 = 6'h38 == allocatePtr_2_value ? freeList_56 : _GEN_695; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_697 = 6'h39 == allocatePtr_2_value ? freeList_57 : _GEN_696; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_698 = 6'h3a == allocatePtr_2_value ? freeList_58 : _GEN_697; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_699 = 6'h3b == allocatePtr_2_value ? freeList_59 : _GEN_698; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_700 = 6'h3c == allocatePtr_2_value ? freeList_60 : _GEN_699; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_701 = 6'h3d == allocatePtr_2_value ? freeList_61 : _GEN_700; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_702 = 6'h3e == allocatePtr_2_value ? freeList_62 : _GEN_701; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] phyRegCandidates_2 = 6'h3f == allocatePtr_2_value ? freeList_63 : _GEN_702; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_705 = 6'h1 == allocatePtr_3_value ? freeList_1 : freeList_0; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_706 = 6'h2 == allocatePtr_3_value ? freeList_2 : _GEN_705; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_707 = 6'h3 == allocatePtr_3_value ? freeList_3 : _GEN_706; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_708 = 6'h4 == allocatePtr_3_value ? freeList_4 : _GEN_707; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_709 = 6'h5 == allocatePtr_3_value ? freeList_5 : _GEN_708; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_710 = 6'h6 == allocatePtr_3_value ? freeList_6 : _GEN_709; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_711 = 6'h7 == allocatePtr_3_value ? freeList_7 : _GEN_710; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_712 = 6'h8 == allocatePtr_3_value ? freeList_8 : _GEN_711; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_713 = 6'h9 == allocatePtr_3_value ? freeList_9 : _GEN_712; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_714 = 6'ha == allocatePtr_3_value ? freeList_10 : _GEN_713; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_715 = 6'hb == allocatePtr_3_value ? freeList_11 : _GEN_714; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_716 = 6'hc == allocatePtr_3_value ? freeList_12 : _GEN_715; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_717 = 6'hd == allocatePtr_3_value ? freeList_13 : _GEN_716; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_718 = 6'he == allocatePtr_3_value ? freeList_14 : _GEN_717; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_719 = 6'hf == allocatePtr_3_value ? freeList_15 : _GEN_718; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_720 = 6'h10 == allocatePtr_3_value ? freeList_16 : _GEN_719; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_721 = 6'h11 == allocatePtr_3_value ? freeList_17 : _GEN_720; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_722 = 6'h12 == allocatePtr_3_value ? freeList_18 : _GEN_721; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_723 = 6'h13 == allocatePtr_3_value ? freeList_19 : _GEN_722; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_724 = 6'h14 == allocatePtr_3_value ? freeList_20 : _GEN_723; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_725 = 6'h15 == allocatePtr_3_value ? freeList_21 : _GEN_724; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_726 = 6'h16 == allocatePtr_3_value ? freeList_22 : _GEN_725; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_727 = 6'h17 == allocatePtr_3_value ? freeList_23 : _GEN_726; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_728 = 6'h18 == allocatePtr_3_value ? freeList_24 : _GEN_727; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_729 = 6'h19 == allocatePtr_3_value ? freeList_25 : _GEN_728; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_730 = 6'h1a == allocatePtr_3_value ? freeList_26 : _GEN_729; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_731 = 6'h1b == allocatePtr_3_value ? freeList_27 : _GEN_730; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_732 = 6'h1c == allocatePtr_3_value ? freeList_28 : _GEN_731; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_733 = 6'h1d == allocatePtr_3_value ? freeList_29 : _GEN_732; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_734 = 6'h1e == allocatePtr_3_value ? freeList_30 : _GEN_733; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_735 = 6'h1f == allocatePtr_3_value ? freeList_31 : _GEN_734; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_736 = 6'h20 == allocatePtr_3_value ? freeList_32 : _GEN_735; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_737 = 6'h21 == allocatePtr_3_value ? freeList_33 : _GEN_736; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_738 = 6'h22 == allocatePtr_3_value ? freeList_34 : _GEN_737; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_739 = 6'h23 == allocatePtr_3_value ? freeList_35 : _GEN_738; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_740 = 6'h24 == allocatePtr_3_value ? freeList_36 : _GEN_739; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_741 = 6'h25 == allocatePtr_3_value ? freeList_37 : _GEN_740; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_742 = 6'h26 == allocatePtr_3_value ? freeList_38 : _GEN_741; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_743 = 6'h27 == allocatePtr_3_value ? freeList_39 : _GEN_742; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_744 = 6'h28 == allocatePtr_3_value ? freeList_40 : _GEN_743; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_745 = 6'h29 == allocatePtr_3_value ? freeList_41 : _GEN_744; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_746 = 6'h2a == allocatePtr_3_value ? freeList_42 : _GEN_745; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_747 = 6'h2b == allocatePtr_3_value ? freeList_43 : _GEN_746; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_748 = 6'h2c == allocatePtr_3_value ? freeList_44 : _GEN_747; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_749 = 6'h2d == allocatePtr_3_value ? freeList_45 : _GEN_748; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_750 = 6'h2e == allocatePtr_3_value ? freeList_46 : _GEN_749; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_751 = 6'h2f == allocatePtr_3_value ? freeList_47 : _GEN_750; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_752 = 6'h30 == allocatePtr_3_value ? freeList_48 : _GEN_751; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_753 = 6'h31 == allocatePtr_3_value ? freeList_49 : _GEN_752; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_754 = 6'h32 == allocatePtr_3_value ? freeList_50 : _GEN_753; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_755 = 6'h33 == allocatePtr_3_value ? freeList_51 : _GEN_754; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_756 = 6'h34 == allocatePtr_3_value ? freeList_52 : _GEN_755; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_757 = 6'h35 == allocatePtr_3_value ? freeList_53 : _GEN_756; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_758 = 6'h36 == allocatePtr_3_value ? freeList_54 : _GEN_757; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_759 = 6'h37 == allocatePtr_3_value ? freeList_55 : _GEN_758; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_760 = 6'h38 == allocatePtr_3_value ? freeList_56 : _GEN_759; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_761 = 6'h39 == allocatePtr_3_value ? freeList_57 : _GEN_760; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_762 = 6'h3a == allocatePtr_3_value ? freeList_58 : _GEN_761; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_763 = 6'h3b == allocatePtr_3_value ? freeList_59 : _GEN_762; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_764 = 6'h3c == allocatePtr_3_value ? freeList_60 : _GEN_763; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_765 = 6'h3d == allocatePtr_3_value ? freeList_61 : _GEN_764; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_766 = 6'h3e == allocatePtr_3_value ? freeList_62 : _GEN_765; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] phyRegCandidates_3 = 6'h3f == allocatePtr_3_value ? freeList_63 : _GEN_766; // @[StdFreeList.scala 58:{33,33}]
  wire [6:0] _GEN_769 = io_allocateReq_0 ? phyRegCandidates_1 : phyRegCandidates_0; // @[StdFreeList.scala 61:{26,26}]
  wire [1:0] _GEN_788 = {{1'd0}, io_allocateReq_0}; // @[StdFreeList.scala 61:{26,26}]
  wire [6:0] _GEN_770 = 2'h2 == _GEN_788 ? phyRegCandidates_2 : _GEN_769; // @[StdFreeList.scala 61:{26,26}]
  wire [6:0] _GEN_773 = 2'h1 == _headPtrAllocate_T ? phyRegCandidates_1 : phyRegCandidates_0; // @[StdFreeList.scala 61:{26,26}]
  wire [6:0] _GEN_774 = 2'h2 == _headPtrAllocate_T ? phyRegCandidates_2 : _GEN_773; // @[StdFreeList.scala 61:{26,26}]
  wire [1:0] _io_allocatePhyReg_3_T = io_allocateReq_1 + io_allocateReq_2; // @[Bitwise.scala 48:55]
  wire [2:0] _io_allocatePhyReg_3_T_2 = _GEN_788 + _io_allocatePhyReg_3_T; // @[Bitwise.scala 48:55]
  wire [6:0] _GEN_777 = 2'h1 == _io_allocatePhyReg_3_T_2[1:0] ? phyRegCandidates_1 : phyRegCandidates_0; // @[StdFreeList.scala 61:{26,26}]
  wire [6:0] _GEN_778 = 2'h2 == _io_allocatePhyReg_3_T_2[1:0] ? phyRegCandidates_2 : _GEN_777; // @[StdFreeList.scala 61:{26,26}]
  wire [6:0] _GEN_791 = {{4'd0}, io_stepBack}; // @[CircularQueuePtr.scala 55:50]
  wire [6:0] _headPtr_flipped_new_ptr_T_1 = 7'h40 - _GEN_791; // @[CircularQueuePtr.scala 55:50]
  wire [6:0] _headPtr_flipped_new_ptr_new_ptr_T_2 = _headPtrAllocate_new_ptr_T + _headPtr_flipped_new_ptr_T_1; // @[CircularQueuePtr.scala 40:46]
  wire [5:0] headPtr_flipped_new_ptr_value = _headPtr_flipped_new_ptr_new_ptr_T_2[5:0]; // @[CircularQueuePtr.scala 40:59]
  wire  headPtr_flipped_new_ptr_flag = _headPtr_flipped_new_ptr_new_ptr_T_2[6]; // @[CircularQueuePtr.scala 40:59]
  wire  headPtr_new_ptr_flag = ~headPtr_flipped_new_ptr_flag; // @[CircularQueuePtr.scala 57:21]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  assign io_allocatePhyReg_0 = 6'h3f == allocatePtr_0_value ? freeList_63 : _GEN_574; // @[StdFreeList.scala 58:{33,33}]
  assign io_allocatePhyReg_1 = 2'h3 == _GEN_788 ? phyRegCandidates_3 : _GEN_770; // @[StdFreeList.scala 61:{26,26}]
  assign io_allocatePhyReg_2 = 2'h3 == _headPtrAllocate_T ? phyRegCandidates_3 : _GEN_774; // @[StdFreeList.scala 61:{26,26}]
  assign io_allocatePhyReg_3 = 2'h3 == _io_allocatePhyReg_3_T_2[1:0] ? phyRegCandidates_3 : _GEN_778; // @[StdFreeList.scala 61:{26,26}]
  assign io_canAllocate = io_canAllocate_REG; // @[StdFreeList.scala 54:18]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  always @(posedge clock) begin
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_0 <= 7'h20; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h0 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_0 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_0 <= _GEN_320;
      end
    end else begin
      freeList_0 <= _GEN_320;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_1 <= 7'h21; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h1 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_1 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_1 <= _GEN_321;
      end
    end else begin
      freeList_1 <= _GEN_321;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_2 <= 7'h22; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h2 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_2 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_2 <= _GEN_322;
      end
    end else begin
      freeList_2 <= _GEN_322;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_3 <= 7'h23; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h3 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_3 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_3 <= _GEN_323;
      end
    end else begin
      freeList_3 <= _GEN_323;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_4 <= 7'h24; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h4 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_4 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_4 <= _GEN_324;
      end
    end else begin
      freeList_4 <= _GEN_324;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_5 <= 7'h25; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h5 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_5 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_5 <= _GEN_325;
      end
    end else begin
      freeList_5 <= _GEN_325;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_6 <= 7'h26; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h6 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_6 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_6 <= _GEN_326;
      end
    end else begin
      freeList_6 <= _GEN_326;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_7 <= 7'h27; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h7 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_7 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_7 <= _GEN_327;
      end
    end else begin
      freeList_7 <= _GEN_327;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_8 <= 7'h28; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h8 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_8 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_8 <= _GEN_328;
      end
    end else begin
      freeList_8 <= _GEN_328;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_9 <= 7'h29; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h9 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_9 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_9 <= _GEN_329;
      end
    end else begin
      freeList_9 <= _GEN_329;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_10 <= 7'h2a; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'ha == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_10 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_10 <= _GEN_330;
      end
    end else begin
      freeList_10 <= _GEN_330;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_11 <= 7'h2b; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'hb == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_11 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_11 <= _GEN_331;
      end
    end else begin
      freeList_11 <= _GEN_331;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_12 <= 7'h2c; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'hc == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_12 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_12 <= _GEN_332;
      end
    end else begin
      freeList_12 <= _GEN_332;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_13 <= 7'h2d; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'hd == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_13 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_13 <= _GEN_333;
      end
    end else begin
      freeList_13 <= _GEN_333;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_14 <= 7'h2e; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'he == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_14 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_14 <= _GEN_334;
      end
    end else begin
      freeList_14 <= _GEN_334;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_15 <= 7'h2f; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'hf == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_15 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_15 <= _GEN_335;
      end
    end else begin
      freeList_15 <= _GEN_335;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_16 <= 7'h30; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h10 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_16 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_16 <= _GEN_336;
      end
    end else begin
      freeList_16 <= _GEN_336;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_17 <= 7'h31; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h11 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_17 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_17 <= _GEN_337;
      end
    end else begin
      freeList_17 <= _GEN_337;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_18 <= 7'h32; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h12 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_18 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_18 <= _GEN_338;
      end
    end else begin
      freeList_18 <= _GEN_338;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_19 <= 7'h33; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h13 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_19 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_19 <= _GEN_339;
      end
    end else begin
      freeList_19 <= _GEN_339;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_20 <= 7'h34; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h14 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_20 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_20 <= _GEN_340;
      end
    end else begin
      freeList_20 <= _GEN_340;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_21 <= 7'h35; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h15 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_21 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_21 <= _GEN_341;
      end
    end else begin
      freeList_21 <= _GEN_341;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_22 <= 7'h36; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h16 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_22 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_22 <= _GEN_342;
      end
    end else begin
      freeList_22 <= _GEN_342;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_23 <= 7'h37; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h17 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_23 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_23 <= _GEN_343;
      end
    end else begin
      freeList_23 <= _GEN_343;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_24 <= 7'h38; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h18 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_24 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_24 <= _GEN_344;
      end
    end else begin
      freeList_24 <= _GEN_344;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_25 <= 7'h39; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h19 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_25 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_25 <= _GEN_345;
      end
    end else begin
      freeList_25 <= _GEN_345;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_26 <= 7'h3a; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h1a == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_26 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_26 <= _GEN_346;
      end
    end else begin
      freeList_26 <= _GEN_346;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_27 <= 7'h3b; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h1b == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_27 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_27 <= _GEN_347;
      end
    end else begin
      freeList_27 <= _GEN_347;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_28 <= 7'h3c; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h1c == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_28 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_28 <= _GEN_348;
      end
    end else begin
      freeList_28 <= _GEN_348;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_29 <= 7'h3d; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h1d == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_29 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_29 <= _GEN_349;
      end
    end else begin
      freeList_29 <= _GEN_349;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_30 <= 7'h3e; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h1e == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_30 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_30 <= _GEN_350;
      end
    end else begin
      freeList_30 <= _GEN_350;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_31 <= 7'h3f; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h1f == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_31 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_31 <= _GEN_351;
      end
    end else begin
      freeList_31 <= _GEN_351;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_32 <= 7'h40; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h20 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_32 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_32 <= _GEN_352;
      end
    end else begin
      freeList_32 <= _GEN_352;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_33 <= 7'h41; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h21 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_33 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_33 <= _GEN_353;
      end
    end else begin
      freeList_33 <= _GEN_353;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_34 <= 7'h42; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h22 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_34 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_34 <= _GEN_354;
      end
    end else begin
      freeList_34 <= _GEN_354;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_35 <= 7'h43; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h23 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_35 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_35 <= _GEN_355;
      end
    end else begin
      freeList_35 <= _GEN_355;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_36 <= 7'h44; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h24 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_36 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_36 <= _GEN_356;
      end
    end else begin
      freeList_36 <= _GEN_356;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_37 <= 7'h45; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h25 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_37 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_37 <= _GEN_357;
      end
    end else begin
      freeList_37 <= _GEN_357;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_38 <= 7'h46; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h26 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_38 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_38 <= _GEN_358;
      end
    end else begin
      freeList_38 <= _GEN_358;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_39 <= 7'h47; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h27 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_39 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_39 <= _GEN_359;
      end
    end else begin
      freeList_39 <= _GEN_359;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_40 <= 7'h48; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h28 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_40 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_40 <= _GEN_360;
      end
    end else begin
      freeList_40 <= _GEN_360;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_41 <= 7'h49; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h29 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_41 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_41 <= _GEN_361;
      end
    end else begin
      freeList_41 <= _GEN_361;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_42 <= 7'h4a; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h2a == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_42 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_42 <= _GEN_362;
      end
    end else begin
      freeList_42 <= _GEN_362;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_43 <= 7'h4b; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h2b == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_43 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_43 <= _GEN_363;
      end
    end else begin
      freeList_43 <= _GEN_363;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_44 <= 7'h4c; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h2c == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_44 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_44 <= _GEN_364;
      end
    end else begin
      freeList_44 <= _GEN_364;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_45 <= 7'h4d; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h2d == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_45 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_45 <= _GEN_365;
      end
    end else begin
      freeList_45 <= _GEN_365;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_46 <= 7'h4e; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h2e == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_46 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_46 <= _GEN_366;
      end
    end else begin
      freeList_46 <= _GEN_366;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_47 <= 7'h4f; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h2f == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_47 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_47 <= _GEN_367;
      end
    end else begin
      freeList_47 <= _GEN_367;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_48 <= 7'h50; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h30 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_48 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_48 <= _GEN_368;
      end
    end else begin
      freeList_48 <= _GEN_368;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_49 <= 7'h51; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h31 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_49 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_49 <= _GEN_369;
      end
    end else begin
      freeList_49 <= _GEN_369;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_50 <= 7'h52; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h32 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_50 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_50 <= _GEN_370;
      end
    end else begin
      freeList_50 <= _GEN_370;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_51 <= 7'h53; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h33 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_51 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_51 <= _GEN_371;
      end
    end else begin
      freeList_51 <= _GEN_371;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_52 <= 7'h54; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h34 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_52 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_52 <= _GEN_372;
      end
    end else begin
      freeList_52 <= _GEN_372;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_53 <= 7'h55; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h35 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_53 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_53 <= _GEN_373;
      end
    end else begin
      freeList_53 <= _GEN_373;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_54 <= 7'h56; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h36 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_54 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_54 <= _GEN_374;
      end
    end else begin
      freeList_54 <= _GEN_374;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_55 <= 7'h57; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h37 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_55 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_55 <= _GEN_375;
      end
    end else begin
      freeList_55 <= _GEN_375;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_56 <= 7'h58; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h38 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_56 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_56 <= _GEN_376;
      end
    end else begin
      freeList_56 <= _GEN_376;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_57 <= 7'h59; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h39 == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_57 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_57 <= _GEN_377;
      end
    end else begin
      freeList_57 <= _GEN_377;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_58 <= 7'h5a; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h3a == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_58 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_58 <= _GEN_378;
      end
    end else begin
      freeList_58 <= _GEN_378;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_59 <= 7'h5b; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h3b == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_59 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_59 <= _GEN_379;
      end
    end else begin
      freeList_59 <= _GEN_379;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_60 <= 7'h5c; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h3c == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_60 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_60 <= _GEN_380;
      end
    end else begin
      freeList_60 <= _GEN_380;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_61 <= 7'h5d; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h3d == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_61 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_61 <= _GEN_381;
      end
    end else begin
      freeList_61 <= _GEN_381;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_62 <= 7'h5e; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h3e == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_62 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_62 <= _GEN_382;
      end
    end else begin
      freeList_62 <= _GEN_382;
    end
    if (reset) begin // @[StdFreeList.scala 29:25]
      freeList_63 <= 7'h5f; // @[StdFreeList.scala 29:25]
    end else if (io_freeReq_3) begin // @[StdFreeList.scala 41:26]
      if (6'h3f == ptr_3_value) begin // @[StdFreeList.scala 42:21]
        freeList_63 <= io_freePhyReg_3; // @[StdFreeList.scala 42:21]
      end else begin
        freeList_63 <= _GEN_383;
      end
    end else begin
      freeList_63 <= _GEN_383;
    end
    if (reset) begin // @[StdFreeList.scala 30:25]
      headPtr_flag <= 1'h0; // @[StdFreeList.scala 30:25]
    end else if (io_walk) begin // @[StdFreeList.scala 69:17]
      headPtr_flag <= headPtr_new_ptr_flag;
    end else if (!(io_redirect)) begin // @[StdFreeList.scala 71:8]
      if (io_canAllocate & io_doAllocate) begin // @[StdFreeList.scala 65:24]
        headPtr_flag <= headPtrAllocate_flag;
      end
    end
    if (reset) begin // @[StdFreeList.scala 30:25]
      headPtr_value <= 6'h0; // @[StdFreeList.scala 30:25]
    end else if (io_walk) begin // @[StdFreeList.scala 69:17]
      headPtr_value <= headPtr_flipped_new_ptr_value;
    end else if (!(io_redirect)) begin // @[StdFreeList.scala 71:8]
      if (io_canAllocate & io_doAllocate) begin // @[StdFreeList.scala 65:24]
        headPtr_value <= headPtrAllocate_value;
      end
    end
    tailPtr_flag <= reset | tailPtrNext_flag; // @[StdFreeList.scala 31:{25,25} 48:11]
    if (reset) begin // @[StdFreeList.scala 31:25]
      tailPtr_value <= 6'h0; // @[StdFreeList.scala 31:25]
    end else begin
      tailPtr_value <= tailPtrNext_value; // @[StdFreeList.scala 48:11]
    end
    io_canAllocate_REG <= freeRegCnt >= 7'h4; // @[StdFreeList.scala 54:40]
    io_perf_0_value_REG <= freeRegCnt < 7'h10; // @[StdFreeList.scala 90:44]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= freeRegCnt > 7'h10 & freeRegCnt <= 7'h20; // @[StdFreeList.scala 91:60]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= freeRegCnt > 7'h20 & freeRegCnt <= 7'h30; // @[StdFreeList.scala 92:60]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= freeRegCnt > 7'h30; // @[StdFreeList.scala 93:44]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  freeList_0 = _RAND_0[6:0];
  _RAND_1 = {1{`RANDOM}};
  freeList_1 = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  freeList_2 = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  freeList_3 = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  freeList_4 = _RAND_4[6:0];
  _RAND_5 = {1{`RANDOM}};
  freeList_5 = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  freeList_6 = _RAND_6[6:0];
  _RAND_7 = {1{`RANDOM}};
  freeList_7 = _RAND_7[6:0];
  _RAND_8 = {1{`RANDOM}};
  freeList_8 = _RAND_8[6:0];
  _RAND_9 = {1{`RANDOM}};
  freeList_9 = _RAND_9[6:0];
  _RAND_10 = {1{`RANDOM}};
  freeList_10 = _RAND_10[6:0];
  _RAND_11 = {1{`RANDOM}};
  freeList_11 = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  freeList_12 = _RAND_12[6:0];
  _RAND_13 = {1{`RANDOM}};
  freeList_13 = _RAND_13[6:0];
  _RAND_14 = {1{`RANDOM}};
  freeList_14 = _RAND_14[6:0];
  _RAND_15 = {1{`RANDOM}};
  freeList_15 = _RAND_15[6:0];
  _RAND_16 = {1{`RANDOM}};
  freeList_16 = _RAND_16[6:0];
  _RAND_17 = {1{`RANDOM}};
  freeList_17 = _RAND_17[6:0];
  _RAND_18 = {1{`RANDOM}};
  freeList_18 = _RAND_18[6:0];
  _RAND_19 = {1{`RANDOM}};
  freeList_19 = _RAND_19[6:0];
  _RAND_20 = {1{`RANDOM}};
  freeList_20 = _RAND_20[6:0];
  _RAND_21 = {1{`RANDOM}};
  freeList_21 = _RAND_21[6:0];
  _RAND_22 = {1{`RANDOM}};
  freeList_22 = _RAND_22[6:0];
  _RAND_23 = {1{`RANDOM}};
  freeList_23 = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  freeList_24 = _RAND_24[6:0];
  _RAND_25 = {1{`RANDOM}};
  freeList_25 = _RAND_25[6:0];
  _RAND_26 = {1{`RANDOM}};
  freeList_26 = _RAND_26[6:0];
  _RAND_27 = {1{`RANDOM}};
  freeList_27 = _RAND_27[6:0];
  _RAND_28 = {1{`RANDOM}};
  freeList_28 = _RAND_28[6:0];
  _RAND_29 = {1{`RANDOM}};
  freeList_29 = _RAND_29[6:0];
  _RAND_30 = {1{`RANDOM}};
  freeList_30 = _RAND_30[6:0];
  _RAND_31 = {1{`RANDOM}};
  freeList_31 = _RAND_31[6:0];
  _RAND_32 = {1{`RANDOM}};
  freeList_32 = _RAND_32[6:0];
  _RAND_33 = {1{`RANDOM}};
  freeList_33 = _RAND_33[6:0];
  _RAND_34 = {1{`RANDOM}};
  freeList_34 = _RAND_34[6:0];
  _RAND_35 = {1{`RANDOM}};
  freeList_35 = _RAND_35[6:0];
  _RAND_36 = {1{`RANDOM}};
  freeList_36 = _RAND_36[6:0];
  _RAND_37 = {1{`RANDOM}};
  freeList_37 = _RAND_37[6:0];
  _RAND_38 = {1{`RANDOM}};
  freeList_38 = _RAND_38[6:0];
  _RAND_39 = {1{`RANDOM}};
  freeList_39 = _RAND_39[6:0];
  _RAND_40 = {1{`RANDOM}};
  freeList_40 = _RAND_40[6:0];
  _RAND_41 = {1{`RANDOM}};
  freeList_41 = _RAND_41[6:0];
  _RAND_42 = {1{`RANDOM}};
  freeList_42 = _RAND_42[6:0];
  _RAND_43 = {1{`RANDOM}};
  freeList_43 = _RAND_43[6:0];
  _RAND_44 = {1{`RANDOM}};
  freeList_44 = _RAND_44[6:0];
  _RAND_45 = {1{`RANDOM}};
  freeList_45 = _RAND_45[6:0];
  _RAND_46 = {1{`RANDOM}};
  freeList_46 = _RAND_46[6:0];
  _RAND_47 = {1{`RANDOM}};
  freeList_47 = _RAND_47[6:0];
  _RAND_48 = {1{`RANDOM}};
  freeList_48 = _RAND_48[6:0];
  _RAND_49 = {1{`RANDOM}};
  freeList_49 = _RAND_49[6:0];
  _RAND_50 = {1{`RANDOM}};
  freeList_50 = _RAND_50[6:0];
  _RAND_51 = {1{`RANDOM}};
  freeList_51 = _RAND_51[6:0];
  _RAND_52 = {1{`RANDOM}};
  freeList_52 = _RAND_52[6:0];
  _RAND_53 = {1{`RANDOM}};
  freeList_53 = _RAND_53[6:0];
  _RAND_54 = {1{`RANDOM}};
  freeList_54 = _RAND_54[6:0];
  _RAND_55 = {1{`RANDOM}};
  freeList_55 = _RAND_55[6:0];
  _RAND_56 = {1{`RANDOM}};
  freeList_56 = _RAND_56[6:0];
  _RAND_57 = {1{`RANDOM}};
  freeList_57 = _RAND_57[6:0];
  _RAND_58 = {1{`RANDOM}};
  freeList_58 = _RAND_58[6:0];
  _RAND_59 = {1{`RANDOM}};
  freeList_59 = _RAND_59[6:0];
  _RAND_60 = {1{`RANDOM}};
  freeList_60 = _RAND_60[6:0];
  _RAND_61 = {1{`RANDOM}};
  freeList_61 = _RAND_61[6:0];
  _RAND_62 = {1{`RANDOM}};
  freeList_62 = _RAND_62[6:0];
  _RAND_63 = {1{`RANDOM}};
  freeList_63 = _RAND_63[6:0];
  _RAND_64 = {1{`RANDOM}};
  headPtr_flag = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  headPtr_value = _RAND_65[5:0];
  _RAND_66 = {1{`RANDOM}};
  tailPtr_flag = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  tailPtr_value = _RAND_67[5:0];
  _RAND_68 = {1{`RANDOM}};
  io_canAllocate_REG = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_76[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
