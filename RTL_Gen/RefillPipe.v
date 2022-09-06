module RefillPipe(
  output        io_req_ready,
  input         io_req_valid,
  input  [1:0]  io_req_bits_source,
  input  [35:0] io_req_bits_addr,
  input  [3:0]  io_req_bits_way_en,
  input  [7:0]  io_req_bits_wmask,
  input  [63:0] io_req_bits_data_0,
  input  [63:0] io_req_bits_data_1,
  input  [63:0] io_req_bits_data_2,
  input  [63:0] io_req_bits_data_3,
  input  [63:0] io_req_bits_data_4,
  input  [63:0] io_req_bits_data_5,
  input  [63:0] io_req_bits_data_6,
  input  [63:0] io_req_bits_data_7,
  input  [1:0]  io_req_bits_meta_coh_state,
  input  [1:0]  io_req_bits_alias,
  input  [2:0]  io_req_bits_miss_id,
  input  [63:0] io_req_bits_id,
  input         io_req_bits_error,
  output        io_resp_valid,
  output [2:0]  io_resp_bits,
  output        io_data_write_valid,
  output [3:0]  io_data_write_bits_way_en,
  output [35:0] io_data_write_bits_addr,
  output [7:0]  io_data_write_bits_wmask,
  output [63:0] io_data_write_bits_data_0,
  output [63:0] io_data_write_bits_data_1,
  output [63:0] io_data_write_bits_data_2,
  output [63:0] io_data_write_bits_data_3,
  output [63:0] io_data_write_bits_data_4,
  output [63:0] io_data_write_bits_data_5,
  output [63:0] io_data_write_bits_data_6,
  output [63:0] io_data_write_bits_data_7,
  output        io_meta_write_valid,
  output [7:0]  io_meta_write_bits_idx,
  output [3:0]  io_meta_write_bits_way_en,
  output [1:0]  io_meta_write_bits_meta_coh_state,
  output        io_error_flag_write_valid,
  output [7:0]  io_error_flag_write_bits_idx,
  output [3:0]  io_error_flag_write_bits_way_en,
  output        io_error_flag_write_bits_error,
  output        io_tag_write_valid,
  output [7:0]  io_tag_write_bits_idx,
  output [3:0]  io_tag_write_bits_way_en,
  output [23:0] io_tag_write_bits_tag,
  output        io_store_resp_valid,
  output [63:0] io_store_resp_bits_id,
  output        io_release_wakeup_valid,
  output [2:0]  io_release_wakeup_bits,
  output        io_replace_access_valid,
  output [7:0]  io_replace_access_bits_set,
  output [1:0]  io_replace_access_bits_way
);
  wire [13:0] _idx_T_1 = {io_req_bits_alias,io_req_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire [1:0] io_replace_access_bits_way_hi = io_req_bits_way_en[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_replace_access_bits_way_lo = io_req_bits_way_en[1:0]; // @[OneHot.scala 31:18]
  wire  _io_replace_access_bits_way_T = |io_replace_access_bits_way_hi; // @[OneHot.scala 32:14]
  wire [1:0] _io_replace_access_bits_way_T_1 = io_replace_access_bits_way_hi | io_replace_access_bits_way_lo; // @[OneHot.scala 32:28]
  assign io_req_ready = 1'h1; // @[RefillPipe.scala 66:16]
  assign io_resp_valid = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  assign io_resp_bits = io_req_bits_miss_id; // @[RefillPipe.scala 68:16]
  assign io_data_write_valid = io_req_valid; // @[RefillPipe.scala 73:23]
  assign io_data_write_bits_way_en = io_req_bits_way_en; // @[RefillPipe.scala 75:29]
  assign io_data_write_bits_addr = {{22'd0}, _idx_T_1}; // @[RefillPipe.scala 74:27]
  assign io_data_write_bits_wmask = io_req_bits_wmask; // @[RefillPipe.scala 76:28]
  assign io_data_write_bits_data_0 = io_req_bits_data_0; // @[RefillPipe.scala 77:27]
  assign io_data_write_bits_data_1 = io_req_bits_data_1; // @[RefillPipe.scala 77:27]
  assign io_data_write_bits_data_2 = io_req_bits_data_2; // @[RefillPipe.scala 77:27]
  assign io_data_write_bits_data_3 = io_req_bits_data_3; // @[RefillPipe.scala 77:27]
  assign io_data_write_bits_data_4 = io_req_bits_data_4; // @[RefillPipe.scala 77:27]
  assign io_data_write_bits_data_5 = io_req_bits_data_5; // @[RefillPipe.scala 77:27]
  assign io_data_write_bits_data_6 = io_req_bits_data_6; // @[RefillPipe.scala 77:27]
  assign io_data_write_bits_data_7 = io_req_bits_data_7; // @[RefillPipe.scala 77:27]
  assign io_meta_write_valid = io_req_valid; // @[RefillPipe.scala 79:23]
  assign io_meta_write_bits_idx = _idx_T_1[13:6]; // @[L1Cache.scala 82:33]
  assign io_meta_write_bits_way_en = io_req_bits_way_en; // @[RefillPipe.scala 81:29]
  assign io_meta_write_bits_meta_coh_state = io_req_bits_meta_coh_state; // @[RefillPipe.scala 82:27]
  assign io_error_flag_write_valid = io_req_valid; // @[RefillPipe.scala 84:29]
  assign io_error_flag_write_bits_idx = _idx_T_1[13:6]; // @[L1Cache.scala 82:33]
  assign io_error_flag_write_bits_way_en = io_req_bits_way_en; // @[RefillPipe.scala 86:35]
  assign io_error_flag_write_bits_error = io_req_bits_error; // @[RefillPipe.scala 87:34]
  assign io_tag_write_valid = io_req_valid; // @[RefillPipe.scala 89:22]
  assign io_tag_write_bits_idx = _idx_T_1[13:6]; // @[L1Cache.scala 82:33]
  assign io_tag_write_bits_way_en = io_req_bits_way_en; // @[RefillPipe.scala 91:28]
  assign io_tag_write_bits_tag = io_req_bits_addr[35:12]; // @[L1Cache.scala 80:41]
  assign io_store_resp_valid = io_req_valid & io_req_bits_source == 2'h1; // @[RefillPipe.scala 94:41]
  assign io_store_resp_bits_id = io_req_bits_id; // @[RefillPipe.scala 98:25]
  assign io_release_wakeup_valid = io_req_valid; // @[RefillPipe.scala 100:27]
  assign io_release_wakeup_bits = io_req_bits_miss_id; // @[RefillPipe.scala 101:26]
  assign io_replace_access_valid = io_req_valid; // @[RefillPipe.scala 103:27]
  assign io_replace_access_bits_set = _idx_T_1[13:6]; // @[L1Cache.scala 82:33]
  assign io_replace_access_bits_way = {_io_replace_access_bits_way_T,_io_replace_access_bits_way_T_1[1]}; // @[Cat.scala 31:58]
endmodule
