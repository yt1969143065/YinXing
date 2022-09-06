module DataSelect_4(
  input  [63:0] io_readData_0_0,
  input  [63:0] io_readData_1_0,
  input         io_enqBypass_0_0,
  input         io_enqBypass_0_1,
  input         io_enqBypass_1_0,
  input         io_enqBypass_1_1,
  input         io_enqData_0_0_valid,
  input  [63:0] io_enqData_0_0_bits,
  input         io_enqData_1_0_valid,
  input  [63:0] io_enqData_1_0_bits,
  output [63:0] io_deqData_0_0,
  output [63:0] io_deqData_1_0
);
  wire [63:0] _bypassData_T = io_enqBypass_0_0 ? io_enqData_0_0_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_1 = io_enqBypass_0_1 ? io_enqData_1_0_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] bypassData_0_bits = _bypassData_T | _bypassData_T_1; // @[Mux.scala 27:73]
  wire  bypassData_0_valid = io_enqBypass_0_0 & io_enqData_0_0_valid | io_enqBypass_0_1 & io_enqData_1_0_valid; // @[Mux.scala 27:73]
  wire [1:0] _T_1 = {io_enqBypass_0_1,io_enqBypass_0_0}; // @[ReservationStation.scala 510:47]
  wire [63:0] _bypassData_T_6 = io_enqBypass_1_0 ? io_enqData_0_0_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_7 = io_enqBypass_1_1 ? io_enqData_1_0_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] bypassData_1_0_bits = _bypassData_T_6 | _bypassData_T_7; // @[Mux.scala 27:73]
  wire  bypassData_1_0_valid = io_enqBypass_1_0 & io_enqData_0_0_valid | io_enqBypass_1_1 & io_enqData_1_0_valid; // @[Mux.scala 27:73]
  wire [1:0] _T_5 = {io_enqBypass_1_1,io_enqBypass_1_0}; // @[ReservationStation.scala 510:47]
  assign io_deqData_0_0 = bypassData_0_valid & |_T_1 ? bypassData_0_bits : io_readData_0_0; // @[ReservationStation.scala 506:11 510:59 511:15]
  assign io_deqData_1_0 = bypassData_1_0_valid & |_T_5 ? bypassData_1_0_bits : io_readData_1_0; // @[ReservationStation.scala 506:11 510:59 511:15]
endmodule
