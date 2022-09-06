module StoreUnit_S3(
  input         io_in_valid,
  input         io_in_bits_uop_cf_exceptionVec_4,
  input         io_in_bits_uop_cf_exceptionVec_5,
  input         io_in_bits_uop_cf_exceptionVec_6,
  input         io_in_bits_uop_cf_exceptionVec_7,
  input         io_in_bits_uop_cf_exceptionVec_13,
  input         io_in_bits_uop_cf_exceptionVec_15,
  input         io_in_bits_uop_cf_trigger_backendEn_0,
  input         io_in_bits_uop_cf_trigger_backendHit_0,
  input         io_in_bits_uop_cf_trigger_backendHit_1,
  input         io_in_bits_uop_cf_trigger_backendHit_2,
  input         io_in_bits_uop_cf_trigger_backendHit_3,
  input         io_in_bits_uop_cf_trigger_backendHit_4,
  input         io_in_bits_uop_cf_trigger_backendHit_5,
  input         io_in_bits_uop_robIdx_flag,
  input  [6:0]  io_in_bits_uop_robIdx_value,
  input  [38:0] io_in_bits_vaddr,
  input         io_in_bits_mmio,
  output        io_stout_valid,
  output        io_stout_bits_uop_cf_exceptionVec_4,
  output        io_stout_bits_uop_cf_exceptionVec_5,
  output        io_stout_bits_uop_cf_exceptionVec_6,
  output        io_stout_bits_uop_cf_exceptionVec_7,
  output        io_stout_bits_uop_cf_exceptionVec_13,
  output        io_stout_bits_uop_cf_exceptionVec_15,
  output        io_stout_bits_uop_cf_trigger_backendEn_0,
  output        io_stout_bits_uop_cf_trigger_backendHit_0,
  output        io_stout_bits_uop_cf_trigger_backendHit_1,
  output        io_stout_bits_uop_cf_trigger_backendHit_2,
  output        io_stout_bits_uop_cf_trigger_backendHit_3,
  output        io_stout_bits_uop_cf_trigger_backendHit_4,
  output        io_stout_bits_uop_cf_trigger_backendHit_5,
  output        io_stout_bits_uop_robIdx_flag,
  output [6:0]  io_stout_bits_uop_robIdx_value,
  output        io_stout_bits_debug_isMMIO,
  output [38:0] io_stout_bits_debug_vaddr
);
  assign io_stout_valid = io_in_valid; // @[StoreUnit.scala 186:18]
  assign io_stout_bits_uop_cf_exceptionVec_4 = io_in_bits_uop_cf_exceptionVec_4; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_exceptionVec_5 = io_in_bits_uop_cf_exceptionVec_5; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_exceptionVec_6 = io_in_bits_uop_cf_exceptionVec_6; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_exceptionVec_7 = io_in_bits_uop_cf_exceptionVec_7; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_exceptionVec_13 = io_in_bits_uop_cf_exceptionVec_13; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_exceptionVec_15 = io_in_bits_uop_cf_exceptionVec_15; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_trigger_backendEn_0 = io_in_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_0 = io_in_bits_uop_cf_trigger_backendHit_0; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_1 = io_in_bits_uop_cf_trigger_backendHit_1; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_2 = io_in_bits_uop_cf_trigger_backendHit_2; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_3 = io_in_bits_uop_cf_trigger_backendHit_3; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_4 = io_in_bits_uop_cf_trigger_backendHit_4; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_cf_trigger_backendHit_5 = io_in_bits_uop_cf_trigger_backendHit_5; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_robIdx_flag = io_in_bits_uop_robIdx_flag; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_uop_robIdx_value = io_in_bits_uop_robIdx_value; // @[StoreUnit.scala 187:21]
  assign io_stout_bits_debug_isMMIO = io_in_bits_mmio; // @[StoreUnit.scala 191:30]
  assign io_stout_bits_debug_vaddr = io_in_bits_vaddr; // @[StoreUnit.scala 193:29]
endmodule
