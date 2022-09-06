module DataSel(
  input         clock,
  input         reset,
  input         io_err_in_0,
  input         io_err_in_1,
  input  [63:0] io_in_0,
  input  [63:0] io_in_1,
  input  [1:0]  io_sel_0,
  input  [1:0]  io_sel_1,
  input         io_en_0,
  input         io_en_1,
  output [63:0] io_out_0,
  output [63:0] io_out_1,
  output        io_err_out_0,
  output        io_err_out_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] sel_r; // @[Pipeline.scala 42:31]
  wire [63:0] _odata_T_2 = sel_r[0] ? io_in_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _odata_T_3 = sel_r[1] ? io_in_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] odata = _odata_T_2 | _odata_T_3; // @[Mux.scala 27:73]
  wire  oerrs = sel_r[0] & io_err_in_0 | sel_r[1] & io_err_in_1; // @[Mux.scala 27:73]
  reg  en; // @[Pipeline.scala 42:31]
  reg [63:0] io_out_0_r; // @[Reg.scala 16:16]
  reg [63:0] io_out_0_REG; // @[DataStorage.scala 273:25]
  wire  _io_err_out_0_T = |oerrs; // @[DataStorage.scala 274:49]
  reg  io_err_out_0_r; // @[Reg.scala 28:20]
  reg  io_err_out_0_REG; // @[DataStorage.scala 274:29]
  reg [1:0] sel_r1; // @[Pipeline.scala 42:31]
  wire [63:0] _odata_T_7 = sel_r1[0] ? io_in_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _odata_T_8 = sel_r1[1] ? io_in_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] odata_1 = _odata_T_7 | _odata_T_8; // @[Mux.scala 27:73]
  wire  oerrs_1 = sel_r1[0] & io_err_in_0 | sel_r1[1] & io_err_in_1; // @[Mux.scala 27:73]
  reg  en_1; // @[Pipeline.scala 42:31]
  reg [63:0] io_out_1_r; // @[Reg.scala 16:16]
  reg [63:0] io_out_1_REG; // @[DataStorage.scala 273:25]
  wire  _io_err_out_1_T = |oerrs_1; // @[DataStorage.scala 274:49]
  reg  io_err_out_1_r; // @[Reg.scala 28:20]
  reg  io_err_out_1_REG; // @[DataStorage.scala 274:29]
  assign io_out_0 = io_out_0_REG; // @[DataStorage.scala 273:15]
  assign io_out_1 = io_out_1_REG; // @[DataStorage.scala 273:15]
  assign io_err_out_0 = io_err_out_0_REG; // @[DataStorage.scala 274:19]
  assign io_err_out_1 = io_err_out_1_REG; // @[DataStorage.scala 274:19]
  always @(posedge clock) begin
    sel_r <= io_sel_0; // @[Pipeline.scala 42:31]
    en <= io_en_0; // @[Pipeline.scala 42:31]
    if (en) begin // @[Reg.scala 17:18]
      io_out_0_r <= odata; // @[Reg.scala 17:22]
    end
    io_out_0_REG <= io_out_0_r; // @[DataStorage.scala 273:25]
    if (reset) begin // @[Reg.scala 28:20]
      io_err_out_0_r <= 1'h0; // @[Reg.scala 28:20]
    end else if (en) begin // @[Reg.scala 29:18]
      io_err_out_0_r <= _io_err_out_0_T; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[DataStorage.scala 274:29]
      io_err_out_0_REG <= 1'h0; // @[DataStorage.scala 274:29]
    end else begin
      io_err_out_0_REG <= io_err_out_0_r; // @[DataStorage.scala 274:29]
    end
    sel_r1 <= io_sel_1; // @[Pipeline.scala 42:31]
    en_1 <= io_en_1; // @[Pipeline.scala 42:31]
    if (en_1) begin // @[Reg.scala 17:18]
      io_out_1_r <= odata_1; // @[Reg.scala 17:22]
    end
    io_out_1_REG <= io_out_1_r; // @[DataStorage.scala 273:25]
    if (reset) begin // @[Reg.scala 28:20]
      io_err_out_1_r <= 1'h0; // @[Reg.scala 28:20]
    end else if (en_1) begin // @[Reg.scala 29:18]
      io_err_out_1_r <= _io_err_out_1_T; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[DataStorage.scala 274:29]
      io_err_out_1_REG <= 1'h0; // @[DataStorage.scala 274:29]
    end else begin
      io_err_out_1_REG <= io_err_out_1_r; // @[DataStorage.scala 274:29]
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
  sel_r = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  en = _RAND_1[0:0];
  _RAND_2 = {2{`RANDOM}};
  io_out_0_r = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  io_out_0_REG = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  io_err_out_0_r = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_err_out_0_REG = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  sel_r1 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  en_1 = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  io_out_1_r = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  io_out_1_REG = _RAND_9[63:0];
  _RAND_10 = {1{`RANDOM}};
  io_err_out_1_r = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_err_out_1_REG = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
