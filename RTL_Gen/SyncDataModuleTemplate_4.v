module SyncDataModuleTemplate_4(
  input         clock,
  input  [5:0]  io_raddr_0,
  input  [5:0]  io_raddr_1,
  input  [5:0]  io_raddr_2,
  output [38:0] io_rdata_0,
  input         io_wen_0,
  input         io_wen_1,
  input  [5:0]  io_waddr_0,
  input  [5:0]  io_waddr_1,
  input  [38:0] io_wdata_0,
  input  [38:0] io_wdata_1
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [38:0] data [0:47]; // @[DataModuleTemplate.scala 64:17]
  wire  data_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [38:0] data_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  reg [5:0] raddr_0; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_1; // @[DataModuleTemplate.scala 67:35]
  reg [5:0] raddr_2; // @[DataModuleTemplate.scala 67:35]
  assign data_io_rdata_0_MPORT_en = 1'h1;
  assign data_io_rdata_0_MPORT_addr = raddr_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_io_rdata_0_MPORT_data = data[data_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_io_rdata_0_MPORT_data = data_io_rdata_0_MPORT_addr >= 6'h30 ? _RAND_1[38:0] :
    data[data_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_io_rdata_1_MPORT_en = 1'h1;
  assign data_io_rdata_1_MPORT_addr = raddr_1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_io_rdata_1_MPORT_data = data[data_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_io_rdata_1_MPORT_data = data_io_rdata_1_MPORT_addr >= 6'h30 ? _RAND_2[38:0] :
    data[data_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_io_rdata_2_MPORT_en = 1'h1;
  assign data_io_rdata_2_MPORT_addr = raddr_2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_io_rdata_2_MPORT_data = data[data_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `else
  assign data_io_rdata_2_MPORT_data = data_io_rdata_2_MPORT_addr >= 6'h30 ? _RAND_3[38:0] :
    data[data_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_MPORT_data = io_wdata_0;
  assign data_MPORT_addr = io_waddr_0;
  assign data_MPORT_mask = 1'h1;
  assign data_MPORT_en = io_wen_0;
  assign data_MPORT_1_data = io_wdata_1;
  assign data_MPORT_1_addr = io_waddr_1;
  assign data_MPORT_1_mask = 1'h1;
  assign data_MPORT_1_en = io_wen_1;
  assign io_rdata_0 = data_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  always @(posedge clock) begin
    if (data_MPORT_en & data_MPORT_mask) begin
      data[data_MPORT_addr] <= data_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_MPORT_1_en & data_MPORT_1_mask) begin
      data[data_MPORT_1_addr] <= data_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    raddr_0 <= io_raddr_0; // @[DataModuleTemplate.scala 67:35]
    raddr_1 <= io_raddr_1; // @[DataModuleTemplate.scala 67:35]
    raddr_2 <= io_raddr_2; // @[DataModuleTemplate.scala 67:35]
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {2{`RANDOM}};
  _RAND_2 = {2{`RANDOM}};
  _RAND_3 = {2{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {2{`RANDOM}};
  for (initvar = 0; initvar < 48; initvar = initvar+1)
    data[initvar] = _RAND_0[38:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  raddr_0 = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  raddr_1 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  raddr_2 = _RAND_6[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
