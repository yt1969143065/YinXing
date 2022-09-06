module DataSelect_7(
  input  [63:0] io_readData_0_0,
  input  [63:0] io_readData_0_1,
  input  [63:0] io_readData_0_2,
  input  [63:0] io_readData_1_0,
  input  [63:0] io_readData_1_1,
  input  [63:0] io_readData_1_2,
  input         io_enqBypass_0_0,
  input         io_enqBypass_0_1,
  input         io_enqBypass_1_0,
  input         io_enqBypass_1_1,
  input         io_enqData_0_0_valid,
  input  [63:0] io_enqData_0_0_bits,
  input         io_enqData_0_1_valid,
  input  [63:0] io_enqData_0_1_bits,
  input         io_enqData_0_2_valid,
  input  [63:0] io_enqData_0_2_bits,
  input         io_enqData_1_0_valid,
  input  [63:0] io_enqData_1_0_bits,
  input         io_enqData_1_1_valid,
  input  [63:0] io_enqData_1_1_bits,
  input         io_enqData_1_2_valid,
  input  [63:0] io_enqData_1_2_bits,
  output [63:0] io_deqData_0_0,
  output [63:0] io_deqData_0_1,
  output [63:0] io_deqData_0_2,
  output [63:0] io_deqData_1_0,
  output [63:0] io_deqData_1_1,
  output [63:0] io_deqData_1_2
);
  wire [63:0] _bypassData_T = io_enqBypass_0_0 ? io_enqData_0_0_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_1 = io_enqBypass_0_1 ? io_enqData_1_0_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] bypassData__0_bits = _bypassData_T | _bypassData_T_1; // @[Mux.scala 27:73]
  wire  bypassData__0_valid = io_enqBypass_0_0 & io_enqData_0_0_valid | io_enqBypass_0_1 & io_enqData_1_0_valid; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_6 = io_enqBypass_0_0 ? io_enqData_0_1_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_7 = io_enqBypass_0_1 ? io_enqData_1_1_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] bypassData__1_bits = _bypassData_T_6 | _bypassData_T_7; // @[Mux.scala 27:73]
  wire  bypassData__1_valid = io_enqBypass_0_0 & io_enqData_0_1_valid | io_enqBypass_0_1 & io_enqData_1_1_valid; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_12 = io_enqBypass_0_0 ? io_enqData_0_2_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_13 = io_enqBypass_0_1 ? io_enqData_1_2_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] bypassData__2_bits = _bypassData_T_12 | _bypassData_T_13; // @[Mux.scala 27:73]
  wire  bypassData__2_valid = io_enqBypass_0_0 & io_enqData_0_2_valid | io_enqBypass_0_1 & io_enqData_1_2_valid; // @[Mux.scala 27:73]
  wire [1:0] _T_1 = {io_enqBypass_0_1,io_enqBypass_0_0}; // @[ReservationStation.scala 510:47]
  wire [63:0] _bypassData_T_18 = io_enqBypass_1_0 ? io_enqData_0_0_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_19 = io_enqBypass_1_1 ? io_enqData_1_0_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] bypassData_1_0_bits = _bypassData_T_18 | _bypassData_T_19; // @[Mux.scala 27:73]
  wire  bypassData_1_0_valid = io_enqBypass_1_0 & io_enqData_0_0_valid | io_enqBypass_1_1 & io_enqData_1_0_valid; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_24 = io_enqBypass_1_0 ? io_enqData_0_1_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_25 = io_enqBypass_1_1 ? io_enqData_1_1_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] bypassData_1_1_bits = _bypassData_T_24 | _bypassData_T_25; // @[Mux.scala 27:73]
  wire  bypassData_1_1_valid = io_enqBypass_1_0 & io_enqData_0_1_valid | io_enqBypass_1_1 & io_enqData_1_1_valid; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_30 = io_enqBypass_1_0 ? io_enqData_0_2_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _bypassData_T_31 = io_enqBypass_1_1 ? io_enqData_1_2_bits : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] bypassData_1_2_bits = _bypassData_T_30 | _bypassData_T_31; // @[Mux.scala 27:73]
  wire  bypassData_1_2_valid = io_enqBypass_1_0 & io_enqData_0_2_valid | io_enqBypass_1_1 & io_enqData_1_2_valid; // @[Mux.scala 27:73]
  wire [1:0] _T_11 = {io_enqBypass_1_1,io_enqBypass_1_0}; // @[ReservationStation.scala 510:47]
  assign io_deqData_0_0 = bypassData__0_valid & |_T_1 ? bypassData__0_bits : io_readData_0_0; // @[ReservationStation.scala 506:11 510:59 511:15]
  assign io_deqData_0_1 = bypassData__1_valid & |_T_1 ? bypassData__1_bits : io_readData_0_1; // @[ReservationStation.scala 506:11 510:59 511:15]
  assign io_deqData_0_2 = bypassData__2_valid & |_T_1 ? bypassData__2_bits : io_readData_0_2; // @[ReservationStation.scala 506:11 510:59 511:15]
  assign io_deqData_1_0 = bypassData_1_0_valid & |_T_11 ? bypassData_1_0_bits : io_readData_1_0; // @[ReservationStation.scala 506:11 510:59 511:15]
  assign io_deqData_1_1 = bypassData_1_1_valid & |_T_11 ? bypassData_1_1_bits : io_readData_1_1; // @[ReservationStation.scala 506:11 510:59 511:15]
  assign io_deqData_1_2 = bypassData_1_2_valid & |_T_11 ? bypassData_1_2_bits : io_readData_1_2; // @[ReservationStation.scala 506:11 510:59 511:15]
endmodule
