module SyncDataModuleTemplate_8(
  input        clock,
  input  [9:0] io_raddr_0,
  input  [9:0] io_raddr_1,
  input  [9:0] io_raddr_2,
  input  [9:0] io_raddr_3,
  output       io_rdata_0,
  output       io_rdata_1,
  output       io_rdata_2,
  output       io_rdata_3,
  input        io_wen_0,
  input        io_wen_1,
  input  [9:0] io_waddr_0,
  input  [9:0] io_waddr_1,
  input        io_wdata_0
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg  data [0:1023]; // @[DataModuleTemplate.scala 64:17]
  wire  data_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [9:0] data_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  reg [9:0] raddr_0; // @[DataModuleTemplate.scala 67:35]
  reg [9:0] raddr_1; // @[DataModuleTemplate.scala 67:35]
  reg [9:0] raddr_2; // @[DataModuleTemplate.scala 67:35]
  reg [9:0] raddr_3; // @[DataModuleTemplate.scala 67:35]
  assign data_io_rdata_0_MPORT_en = 1'h1;
  assign data_io_rdata_0_MPORT_addr = raddr_0;
  assign data_io_rdata_0_MPORT_data = data[data_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_io_rdata_1_MPORT_en = 1'h1;
  assign data_io_rdata_1_MPORT_addr = raddr_1;
  assign data_io_rdata_1_MPORT_data = data[data_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_io_rdata_2_MPORT_en = 1'h1;
  assign data_io_rdata_2_MPORT_addr = raddr_2;
  assign data_io_rdata_2_MPORT_data = data[data_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_io_rdata_3_MPORT_en = 1'h1;
  assign data_io_rdata_3_MPORT_addr = raddr_3;
  assign data_io_rdata_3_MPORT_data = data[data_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_MPORT_data = io_wdata_0;
  assign data_MPORT_addr = io_waddr_0;
  assign data_MPORT_mask = 1'h1;
  assign data_MPORT_en = io_wen_0;
  assign data_MPORT_1_data = 1'h1;
  assign data_MPORT_1_addr = io_waddr_1;
  assign data_MPORT_1_mask = 1'h1;
  assign data_MPORT_1_en = io_wen_1;
  assign io_rdata_0 = data_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1 = data_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2 = data_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3 = data_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
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
    raddr_3 <= io_raddr_3; // @[DataModuleTemplate.scala 67:35]
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
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    data[initvar] = _RAND_0[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  raddr_0 = _RAND_1[9:0];
  _RAND_2 = {1{`RANDOM}};
  raddr_1 = _RAND_2[9:0];
  _RAND_3 = {1{`RANDOM}};
  raddr_2 = _RAND_3[9:0];
  _RAND_4 = {1{`RANDOM}};
  raddr_3 = _RAND_4[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
