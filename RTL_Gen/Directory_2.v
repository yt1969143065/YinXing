module Directory_2(
  input         clock,
  input         reset,
  output        io_read_ready,
  input         io_read_valid,
  input  [15:0] io_read_bits_idOH,
  input  [15:0] io_read_bits_tag,
  input  [11:0] io_read_bits_set,
  input  [2:0]  io_read_bits_replacerInfo_channel,
  input  [2:0]  io_read_bits_replacerInfo_opcode,
  input  [5:0]  io_read_bits_source,
  output        io_result_valid,
  output [15:0] io_result_bits_idOH,
  output        io_result_bits_self_dirty,
  output [1:0]  io_result_bits_self_state,
  output [1:0]  io_result_bits_self_clientStates_0,
  output        io_result_bits_self_hit,
  output [1:0]  io_result_bits_self_way,
  output [15:0] io_result_bits_self_tag,
  output        io_result_bits_self_error,
  output [1:0]  io_result_bits_clients_states_0_state,
  output        io_result_bits_clients_states_0_hit,
  output        io_result_bits_clients_tag_match,
  output [18:0] io_result_bits_clients_tag,
  output [2:0]  io_result_bits_clients_way,
  output        io_result_bits_clients_error,
  output [5:0]  io_result_bits_sourceId,
  output [11:0] io_result_bits_set,
  output [2:0]  io_result_bits_replacerInfo_channel,
  output [2:0]  io_result_bits_replacerInfo_opcode,
  input         io_dirWReq_valid,
  input  [11:0] io_dirWReq_bits_set,
  input  [1:0]  io_dirWReq_bits_way,
  input         io_dirWReq_bits_data_dirty,
  input  [1:0]  io_dirWReq_bits_data_state,
  input  [1:0]  io_dirWReq_bits_data_clientStates_0,
  input         io_tagWReq_valid,
  input  [11:0] io_tagWReq_bits_set,
  input  [1:0]  io_tagWReq_bits_way,
  input  [15:0] io_tagWReq_bits_tag,
  input         io_clientDirWReq_valid,
  input  [8:0]  io_clientDirWReq_bits_set,
  input  [2:0]  io_clientDirWReq_bits_way,
  input  [1:0]  io_clientDirWReq_bits_data_0_state,
  input         io_clientTagWreq_valid,
  input  [8:0]  io_clientTagWreq_bits_set,
  input  [2:0]  io_clientTagWreq_bits_way,
  input  [18:0] io_clientTagWreq_bits_tag
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  clientDir_clock; // @[Directory.scala 180:25]
  wire  clientDir_reset; // @[Directory.scala 180:25]
  wire  clientDir_io_read_ready; // @[Directory.scala 180:25]
  wire  clientDir_io_read_valid; // @[Directory.scala 180:25]
  wire [18:0] clientDir_io_read_bits_tag; // @[Directory.scala 180:25]
  wire [8:0] clientDir_io_read_bits_set; // @[Directory.scala 180:25]
  wire  clientDir_io_resp_bits_hit; // @[Directory.scala 180:25]
  wire [2:0] clientDir_io_resp_bits_way; // @[Directory.scala 180:25]
  wire [18:0] clientDir_io_resp_bits_tag; // @[Directory.scala 180:25]
  wire [1:0] clientDir_io_resp_bits_dir_0_state; // @[Directory.scala 180:25]
  wire  clientDir_io_resp_bits_error; // @[Directory.scala 180:25]
  wire  clientDir_io_tag_wready; // @[Directory.scala 180:25]
  wire  clientDir_io_tag_wvalid; // @[Directory.scala 180:25]
  wire [18:0] clientDir_io_tag_wtag; // @[Directory.scala 180:25]
  wire [8:0] clientDir_io_tag_wset; // @[Directory.scala 180:25]
  wire [2:0] clientDir_io_tag_wway; // @[Directory.scala 180:25]
  wire  clientDir_io_dir_wvalid; // @[Directory.scala 180:25]
  wire [8:0] clientDir_io_dir_wset; // @[Directory.scala 180:25]
  wire [2:0] clientDir_io_dir_wway; // @[Directory.scala 180:25]
  wire [1:0] clientDir_io_dir_wdir_0_state; // @[Directory.scala 180:25]
  wire  selfDir_clock; // @[Directory.scala 215:23]
  wire  selfDir_reset; // @[Directory.scala 215:23]
  wire  selfDir_io_read_ready; // @[Directory.scala 215:23]
  wire  selfDir_io_read_valid; // @[Directory.scala 215:23]
  wire [15:0] selfDir_io_read_bits_tag; // @[Directory.scala 215:23]
  wire [11:0] selfDir_io_read_bits_set; // @[Directory.scala 215:23]
  wire [2:0] selfDir_io_read_bits_replacerInfo_channel; // @[Directory.scala 215:23]
  wire [2:0] selfDir_io_read_bits_replacerInfo_opcode; // @[Directory.scala 215:23]
  wire  selfDir_io_resp_valid; // @[Directory.scala 215:23]
  wire  selfDir_io_resp_bits_hit; // @[Directory.scala 215:23]
  wire [1:0] selfDir_io_resp_bits_way; // @[Directory.scala 215:23]
  wire [15:0] selfDir_io_resp_bits_tag; // @[Directory.scala 215:23]
  wire  selfDir_io_resp_bits_dir_dirty; // @[Directory.scala 215:23]
  wire [1:0] selfDir_io_resp_bits_dir_state; // @[Directory.scala 215:23]
  wire [1:0] selfDir_io_resp_bits_dir_clientStates_0; // @[Directory.scala 215:23]
  wire  selfDir_io_resp_bits_error; // @[Directory.scala 215:23]
  wire  selfDir_io_tag_wready; // @[Directory.scala 215:23]
  wire  selfDir_io_tag_wvalid; // @[Directory.scala 215:23]
  wire [15:0] selfDir_io_tag_wtag; // @[Directory.scala 215:23]
  wire [11:0] selfDir_io_tag_wset; // @[Directory.scala 215:23]
  wire [1:0] selfDir_io_tag_wway; // @[Directory.scala 215:23]
  wire  selfDir_io_dir_wvalid; // @[Directory.scala 215:23]
  wire [11:0] selfDir_io_dir_wset; // @[Directory.scala 215:23]
  wire [1:0] selfDir_io_dir_wway; // @[Directory.scala 215:23]
  wire  selfDir_io_dir_wdir_dirty; // @[Directory.scala 215:23]
  wire [1:0] selfDir_io_dir_wdir_state; // @[Directory.scala 215:23]
  wire [1:0] selfDir_io_dir_wdir_clientStates_0; // @[Directory.scala 215:23]
  wire [27:0] addr = {io_read_bits_tag,io_read_bits_set}; // @[Cat.scala 31:58]
  wire  _T_4 = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _io_read_ready_T = {clientDir_io_read_ready,selfDir_io_read_ready}; // @[Cat.scala 31:58]
  reg [15:0] reqIdOHReg; // @[Reg.scala 16:16]
  reg [5:0] sourceIdReg; // @[Reg.scala 16:16]
  reg [11:0] setReg; // @[Reg.scala 16:16]
  reg [2:0] replacerInfoReg_channel; // @[Reg.scala 16:16]
  reg [2:0] replacerInfoReg_opcode; // @[Reg.scala 16:16]
  SubDirectory_2 clientDir ( // @[Directory.scala 180:25]
    .clock(clientDir_clock),
    .reset(clientDir_reset),
    .io_read_ready(clientDir_io_read_ready),
    .io_read_valid(clientDir_io_read_valid),
    .io_read_bits_tag(clientDir_io_read_bits_tag),
    .io_read_bits_set(clientDir_io_read_bits_set),
    .io_resp_bits_hit(clientDir_io_resp_bits_hit),
    .io_resp_bits_way(clientDir_io_resp_bits_way),
    .io_resp_bits_tag(clientDir_io_resp_bits_tag),
    .io_resp_bits_dir_0_state(clientDir_io_resp_bits_dir_0_state),
    .io_resp_bits_error(clientDir_io_resp_bits_error),
    .io_tag_wready(clientDir_io_tag_wready),
    .io_tag_wvalid(clientDir_io_tag_wvalid),
    .io_tag_wtag(clientDir_io_tag_wtag),
    .io_tag_wset(clientDir_io_tag_wset),
    .io_tag_wway(clientDir_io_tag_wway),
    .io_dir_wvalid(clientDir_io_dir_wvalid),
    .io_dir_wset(clientDir_io_dir_wset),
    .io_dir_wway(clientDir_io_dir_wway),
    .io_dir_wdir_0_state(clientDir_io_dir_wdir_0_state)
  );
  Directory_Anon_2 selfDir ( // @[Directory.scala 215:23]
    .clock(selfDir_clock),
    .reset(selfDir_reset),
    .io_read_ready(selfDir_io_read_ready),
    .io_read_valid(selfDir_io_read_valid),
    .io_read_bits_tag(selfDir_io_read_bits_tag),
    .io_read_bits_set(selfDir_io_read_bits_set),
    .io_read_bits_replacerInfo_channel(selfDir_io_read_bits_replacerInfo_channel),
    .io_read_bits_replacerInfo_opcode(selfDir_io_read_bits_replacerInfo_opcode),
    .io_resp_valid(selfDir_io_resp_valid),
    .io_resp_bits_hit(selfDir_io_resp_bits_hit),
    .io_resp_bits_way(selfDir_io_resp_bits_way),
    .io_resp_bits_tag(selfDir_io_resp_bits_tag),
    .io_resp_bits_dir_dirty(selfDir_io_resp_bits_dir_dirty),
    .io_resp_bits_dir_state(selfDir_io_resp_bits_dir_state),
    .io_resp_bits_dir_clientStates_0(selfDir_io_resp_bits_dir_clientStates_0),
    .io_resp_bits_error(selfDir_io_resp_bits_error),
    .io_tag_wready(selfDir_io_tag_wready),
    .io_tag_wvalid(selfDir_io_tag_wvalid),
    .io_tag_wtag(selfDir_io_tag_wtag),
    .io_tag_wset(selfDir_io_tag_wset),
    .io_tag_wway(selfDir_io_tag_wway),
    .io_dir_wvalid(selfDir_io_dir_wvalid),
    .io_dir_wset(selfDir_io_dir_wset),
    .io_dir_wway(selfDir_io_dir_wway),
    .io_dir_wdir_dirty(selfDir_io_dir_wdir_dirty),
    .io_dir_wdir_state(selfDir_io_dir_wdir_state),
    .io_dir_wdir_clientStates_0(selfDir_io_dir_wdir_clientStates_0)
  );
  assign io_read_ready = &_io_read_ready_T; // @[Directory.scala 252:45]
  assign io_result_valid = selfDir_io_resp_valid; // @[Directory.scala 260:14]
  assign io_result_bits_idOH = reqIdOHReg; // @[Directory.scala 263:18]
  assign io_result_bits_self_dirty = selfDir_io_resp_bits_dir_dirty; // @[Directory.scala 270:24]
  assign io_result_bits_self_state = selfDir_io_resp_bits_dir_state; // @[Directory.scala 271:24]
  assign io_result_bits_self_clientStates_0 = selfDir_io_resp_bits_dir_clientStates_0; // @[Directory.scala 273:31]
  assign io_result_bits_self_hit = selfDir_io_resp_bits_hit; // @[Directory.scala 267:22]
  assign io_result_bits_self_way = selfDir_io_resp_bits_way; // @[Directory.scala 268:22]
  assign io_result_bits_self_tag = selfDir_io_resp_bits_tag; // @[Directory.scala 269:22]
  assign io_result_bits_self_error = selfDir_io_resp_bits_error; // @[Directory.scala 272:24]
  assign io_result_bits_clients_states_0_state = clientDir_io_resp_bits_dir_0_state; // @[Directory.scala 280:15]
  assign io_result_bits_clients_states_0_hit = clientDir_io_resp_bits_hit & clientDir_io_resp_bits_dir_0_state != 2'h0; // @[Directory.scala 281:36]
  assign io_result_bits_clients_tag_match = clientDir_io_resp_bits_hit; // @[Directory.scala 284:31]
  assign io_result_bits_clients_tag = clientDir_io_resp_bits_tag; // @[Directory.scala 276:25]
  assign io_result_bits_clients_way = clientDir_io_resp_bits_way; // @[Directory.scala 275:25]
  assign io_result_bits_clients_error = |io_result_bits_clients_states_0_hit & clientDir_io_resp_bits_error; // @[Directory.scala 277:77]
  assign io_result_bits_sourceId = sourceIdReg; // @[Directory.scala 264:22]
  assign io_result_bits_set = setReg; // @[Directory.scala 265:17]
  assign io_result_bits_replacerInfo_channel = replacerInfoReg_channel; // @[Directory.scala 266:26]
  assign io_result_bits_replacerInfo_opcode = replacerInfoReg_opcode; // @[Directory.scala 266:26]
  assign clientDir_clock = clock;
  assign clientDir_reset = reset;
  assign clientDir_io_read_valid = io_read_valid; // @[Directory.scala 243:13]
  assign clientDir_io_read_bits_tag = addr[27:9]; // @[Directory.scala 237:22]
  assign clientDir_io_read_bits_set = addr[8:0]; // @[Directory.scala 236:22]
  assign clientDir_io_tag_wvalid = io_clientTagWreq_valid; // @[Directory.scala 293:28]
  assign clientDir_io_tag_wtag = io_clientTagWreq_bits_tag; // @[Directory.scala 294:31]
  assign clientDir_io_tag_wset = io_clientTagWreq_bits_set; // @[Directory.scala 295:31]
  assign clientDir_io_tag_wway = io_clientTagWreq_bits_way; // @[Directory.scala 296:31]
  assign clientDir_io_dir_wvalid = io_clientDirWReq_valid; // @[Directory.scala 306:28]
  assign clientDir_io_dir_wset = io_clientDirWReq_bits_set; // @[Directory.scala 307:31]
  assign clientDir_io_dir_wway = io_clientDirWReq_bits_way; // @[Directory.scala 308:31]
  assign clientDir_io_dir_wdir_0_state = io_clientDirWReq_bits_data_0_state; // @[Directory.scala 309:31]
  assign selfDir_clock = clock;
  assign selfDir_reset = reset;
  assign selfDir_io_read_valid = io_read_valid; // @[Directory.scala 243:13]
  assign selfDir_io_read_bits_tag = addr[27:12]; // @[Directory.scala 237:22]
  assign selfDir_io_read_bits_set = addr[11:0]; // @[Directory.scala 236:22]
  assign selfDir_io_read_bits_replacerInfo_channel = io_read_bits_replacerInfo_channel; // @[Directory.scala 245:25]
  assign selfDir_io_read_bits_replacerInfo_opcode = io_read_bits_replacerInfo_opcode; // @[Directory.scala 245:25]
  assign selfDir_io_tag_wvalid = io_tagWReq_valid; // @[Directory.scala 287:26]
  assign selfDir_io_tag_wtag = io_tagWReq_bits_tag; // @[Directory.scala 288:29]
  assign selfDir_io_tag_wset = io_tagWReq_bits_set; // @[Directory.scala 289:29]
  assign selfDir_io_tag_wway = io_tagWReq_bits_way; // @[Directory.scala 290:29]
  assign selfDir_io_dir_wvalid = io_dirWReq_valid; // @[Directory.scala 300:26]
  assign selfDir_io_dir_wset = io_dirWReq_bits_set; // @[Directory.scala 301:29]
  assign selfDir_io_dir_wway = io_dirWReq_bits_way; // @[Directory.scala 302:29]
  assign selfDir_io_dir_wdir_dirty = io_dirWReq_bits_data_dirty; // @[Directory.scala 303:29]
  assign selfDir_io_dir_wdir_state = io_dirWReq_bits_data_state; // @[Directory.scala 303:29]
  assign selfDir_io_dir_wdir_clientStates_0 = io_dirWReq_bits_data_clientStates_0; // @[Directory.scala 303:29]
  always @(posedge clock) begin
    if (_T_4) begin // @[Reg.scala 17:18]
      reqIdOHReg <= io_read_bits_idOH; // @[Reg.scala 17:22]
    end
    if (_T_4) begin // @[Reg.scala 17:18]
      sourceIdReg <= io_read_bits_source; // @[Reg.scala 17:22]
    end
    if (_T_4) begin // @[Reg.scala 17:18]
      setReg <= io_read_bits_set; // @[Reg.scala 17:22]
    end
    if (_T_4) begin // @[Reg.scala 17:18]
      replacerInfoReg_channel <= io_read_bits_replacerInfo_channel; // @[Reg.scala 17:22]
    end
    if (_T_4) begin // @[Reg.scala 17:18]
      replacerInfoReg_opcode <= io_read_bits_replacerInfo_opcode; // @[Reg.scala 17:22]
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
  reqIdOHReg = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  sourceIdReg = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  setReg = _RAND_2[11:0];
  _RAND_3 = {1{`RANDOM}};
  replacerInfoReg_channel = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  replacerInfoReg_opcode = _RAND_4[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
