module Queue_347(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [7:0]  io_enq_bits_cmd,
  input  [63:0] io_enq_bits_data_0,
  input  [63:0] io_enq_bits_data_1,
  input  [63:0] io_enq_bits_data_2,
  input  [63:0] io_enq_bits_data_3,
  input  [63:0] io_enq_bits_data_4,
  input  [63:0] io_enq_bits_data_5,
  input  [63:0] io_enq_bits_data_6,
  input  [63:0] io_enq_bits_data_7,
  input  [63:0] io_enq_bits_set,
  input  [63:0] io_enq_bits_tag,
  input  [63:0] io_enq_bits_way,
  input  [63:0] io_enq_bits_dir,
  input         io_deq_ready,
  output        io_deq_valid,
  output [7:0]  io_deq_bits_cmd,
  output [63:0] io_deq_bits_data_0,
  output [63:0] io_deq_bits_data_1,
  output [63:0] io_deq_bits_data_2,
  output [63:0] io_deq_bits_data_3,
  output [63:0] io_deq_bits_data_4,
  output [63:0] io_deq_bits_data_5,
  output [63:0] io_deq_bits_data_6,
  output [63:0] io_deq_bits_data_7,
  output [63:0] io_deq_bits_set,
  output [63:0] io_deq_bits_tag,
  output [63:0] io_deq_bits_way,
  output [63:0] io_deq_bits_dir
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_13;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] ram_cmd [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_cmd_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_cmd_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [7:0] ram_cmd_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [7:0] ram_cmd_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_cmd_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_cmd_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_cmd_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_data_0 [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_0_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_0_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_0_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_0_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_data_1 [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_1_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_1_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_1_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_1_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_data_2 [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_2_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_2_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_2_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_2_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_data_3 [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_3_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_3_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_3_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_3_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_data_4 [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_4_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_4_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_4_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_4_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_data_5 [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_5_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_5_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_5_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_5_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_5_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_5_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_data_6 [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_6_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_6_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_6_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_6_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_6_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_6_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_6_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_data_7 [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_7_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_7_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_7_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_7_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_7_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_7_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_7_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_set [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_set_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_set_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_set_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_set_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_tag [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_tag_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_tag_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_tag_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_tag_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_way [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_way_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_way_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_way_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_way_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_way_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_way_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_way_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_dir [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_dir_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_dir_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_dir_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_dir_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_dir_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_dir_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_dir_MPORT_en; // @[Decoupled.scala 259:95]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  empty = ~maybe_full; // @[Decoupled.scala 264:28]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  assign ram_cmd_io_deq_bits_MPORT_en = 1'h1;
  assign ram_cmd_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_cmd_io_deq_bits_MPORT_data = ram_cmd[ram_cmd_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_cmd_MPORT_data = io_enq_bits_cmd;
  assign ram_cmd_MPORT_addr = 1'h0;
  assign ram_cmd_MPORT_mask = 1'h1;
  assign ram_cmd_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_0_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_0_io_deq_bits_MPORT_data = ram_data_0[ram_data_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_0_MPORT_data = io_enq_bits_data_0;
  assign ram_data_0_MPORT_addr = 1'h0;
  assign ram_data_0_MPORT_mask = 1'h1;
  assign ram_data_0_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_1_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_1_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_1_io_deq_bits_MPORT_data = ram_data_1[ram_data_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_1_MPORT_data = io_enq_bits_data_1;
  assign ram_data_1_MPORT_addr = 1'h0;
  assign ram_data_1_MPORT_mask = 1'h1;
  assign ram_data_1_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_2_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_2_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_2_io_deq_bits_MPORT_data = ram_data_2[ram_data_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_2_MPORT_data = io_enq_bits_data_2;
  assign ram_data_2_MPORT_addr = 1'h0;
  assign ram_data_2_MPORT_mask = 1'h1;
  assign ram_data_2_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_3_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_3_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_3_io_deq_bits_MPORT_data = ram_data_3[ram_data_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_3_MPORT_data = io_enq_bits_data_3;
  assign ram_data_3_MPORT_addr = 1'h0;
  assign ram_data_3_MPORT_mask = 1'h1;
  assign ram_data_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_4_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_4_io_deq_bits_MPORT_data = ram_data_4[ram_data_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_4_MPORT_data = io_enq_bits_data_4;
  assign ram_data_4_MPORT_addr = 1'h0;
  assign ram_data_4_MPORT_mask = 1'h1;
  assign ram_data_4_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_5_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_5_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_5_io_deq_bits_MPORT_data = ram_data_5[ram_data_5_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_5_MPORT_data = io_enq_bits_data_5;
  assign ram_data_5_MPORT_addr = 1'h0;
  assign ram_data_5_MPORT_mask = 1'h1;
  assign ram_data_5_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_6_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_6_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_6_io_deq_bits_MPORT_data = ram_data_6[ram_data_6_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_6_MPORT_data = io_enq_bits_data_6;
  assign ram_data_6_MPORT_addr = 1'h0;
  assign ram_data_6_MPORT_mask = 1'h1;
  assign ram_data_6_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_7_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_7_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_7_io_deq_bits_MPORT_data = ram_data_7[ram_data_7_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_7_MPORT_data = io_enq_bits_data_7;
  assign ram_data_7_MPORT_addr = 1'h0;
  assign ram_data_7_MPORT_mask = 1'h1;
  assign ram_data_7_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_set_io_deq_bits_MPORT_en = 1'h1;
  assign ram_set_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_set_io_deq_bits_MPORT_data = ram_set[ram_set_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_set_MPORT_data = io_enq_bits_set;
  assign ram_set_MPORT_addr = 1'h0;
  assign ram_set_MPORT_mask = 1'h1;
  assign ram_set_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_tag_io_deq_bits_MPORT_en = 1'h1;
  assign ram_tag_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_tag_io_deq_bits_MPORT_data = ram_tag[ram_tag_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_tag_MPORT_data = io_enq_bits_tag;
  assign ram_tag_MPORT_addr = 1'h0;
  assign ram_tag_MPORT_mask = 1'h1;
  assign ram_tag_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_way_io_deq_bits_MPORT_en = 1'h1;
  assign ram_way_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_way_io_deq_bits_MPORT_data = ram_way[ram_way_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_way_MPORT_data = io_enq_bits_way;
  assign ram_way_MPORT_addr = 1'h0;
  assign ram_way_MPORT_mask = 1'h1;
  assign ram_way_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_dir_io_deq_bits_MPORT_en = 1'h1;
  assign ram_dir_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_dir_io_deq_bits_MPORT_data = ram_dir[ram_dir_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_dir_MPORT_data = io_enq_bits_dir;
  assign ram_dir_MPORT_addr = 1'h0;
  assign ram_dir_MPORT_mask = 1'h1;
  assign ram_dir_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_cmd = ram_cmd_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_0 = ram_data_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_1 = ram_data_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_2 = ram_data_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_3 = ram_data_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_4 = ram_data_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_5 = ram_data_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_6 = ram_data_6_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data_7 = ram_data_7_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_set = ram_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_tag = ram_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_way = ram_way_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_dir = ram_dir_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_cmd_MPORT_en & ram_cmd_MPORT_mask) begin
      ram_cmd[ram_cmd_MPORT_addr] <= ram_cmd_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_0_MPORT_en & ram_data_0_MPORT_mask) begin
      ram_data_0[ram_data_0_MPORT_addr] <= ram_data_0_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_1_MPORT_en & ram_data_1_MPORT_mask) begin
      ram_data_1[ram_data_1_MPORT_addr] <= ram_data_1_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_2_MPORT_en & ram_data_2_MPORT_mask) begin
      ram_data_2[ram_data_2_MPORT_addr] <= ram_data_2_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_3_MPORT_en & ram_data_3_MPORT_mask) begin
      ram_data_3[ram_data_3_MPORT_addr] <= ram_data_3_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_4_MPORT_en & ram_data_4_MPORT_mask) begin
      ram_data_4[ram_data_4_MPORT_addr] <= ram_data_4_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_5_MPORT_en & ram_data_5_MPORT_mask) begin
      ram_data_5[ram_data_5_MPORT_addr] <= ram_data_5_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_6_MPORT_en & ram_data_6_MPORT_mask) begin
      ram_data_6[ram_data_6_MPORT_addr] <= ram_data_6_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_7_MPORT_en & ram_data_7_MPORT_mask) begin
      ram_data_7[ram_data_7_MPORT_addr] <= ram_data_7_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_set_MPORT_en & ram_set_MPORT_mask) begin
      ram_set[ram_set_MPORT_addr] <= ram_set_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_tag_MPORT_en & ram_tag_MPORT_mask) begin
      ram_tag[ram_tag_MPORT_addr] <= ram_tag_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_way_MPORT_en & ram_way_MPORT_mask) begin
      ram_way[ram_way_MPORT_addr] <= ram_way_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_dir_MPORT_en & ram_dir_MPORT_mask) begin
      ram_dir[ram_dir_MPORT_addr] <= ram_dir_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 279:27]
      maybe_full <= do_enq; // @[Decoupled.scala 280:16]
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
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_cmd[initvar] = _RAND_0[7:0];
  _RAND_1 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_0[initvar] = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_1[initvar] = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_2[initvar] = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_3[initvar] = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_4[initvar] = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_5[initvar] = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_6[initvar] = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_7[initvar] = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_set[initvar] = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_tag[initvar] = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_way[initvar] = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_dir[initvar] = _RAND_12[63:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  maybe_full = _RAND_13[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
