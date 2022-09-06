module WakeupQueue(
  input        io_in_valid,
  input        io_in_bits_cf_trigger_backendHit_0,
  input        io_in_bits_cf_trigger_backendHit_1,
  input        io_in_bits_cf_trigger_backendHit_2,
  input        io_in_bits_cf_trigger_backendHit_3,
  input        io_in_bits_cf_trigger_backendHit_4,
  input        io_in_bits_cf_trigger_backendHit_5,
  input        io_in_bits_ctrl_rfWen,
  input        io_in_bits_ctrl_fpWen,
  input  [6:0] io_in_bits_pdest,
  input        io_in_bits_robIdx_flag,
  input  [6:0] io_in_bits_robIdx_value,
  output       io_out_valid,
  output       io_out_bits_cf_trigger_backendHit_0,
  output       io_out_bits_cf_trigger_backendHit_1,
  output       io_out_bits_cf_trigger_backendHit_2,
  output       io_out_bits_cf_trigger_backendHit_3,
  output       io_out_bits_cf_trigger_backendHit_4,
  output       io_out_bits_cf_trigger_backendHit_5,
  output       io_out_bits_ctrl_rfWen,
  output       io_out_bits_ctrl_fpWen,
  output [6:0] io_out_bits_pdest,
  output       io_out_bits_robIdx_flag,
  output [6:0] io_out_bits_robIdx_value
);
  assign io_out_valid = io_in_valid; // @[WakeupQueue.scala 37:18]
  assign io_out_bits_cf_trigger_backendHit_0 = io_in_bits_cf_trigger_backendHit_0; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_cf_trigger_backendHit_1 = io_in_bits_cf_trigger_backendHit_1; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_cf_trigger_backendHit_2 = io_in_bits_cf_trigger_backendHit_2; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_cf_trigger_backendHit_3 = io_in_bits_cf_trigger_backendHit_3; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_cf_trigger_backendHit_4 = io_in_bits_cf_trigger_backendHit_4; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_cf_trigger_backendHit_5 = io_in_bits_cf_trigger_backendHit_5; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_ctrl_rfWen = io_in_bits_ctrl_rfWen; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_ctrl_fpWen = io_in_bits_ctrl_fpWen; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_pdest = io_in_bits_pdest; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_robIdx_flag = io_in_bits_robIdx_flag; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_robIdx_value = io_in_bits_robIdx_value; // @[WakeupQueue.scala 36:11]
endmodule
