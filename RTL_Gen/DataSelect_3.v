module DataSelect_3(
  input  [63:0] io_readData_0_0,
  input  [63:0] io_readData_0_1,
  input         io_enqBypass_0_0,
  input         io_enqData_0_0_valid,
  input  [63:0] io_enqData_0_0_bits,
  input         io_enqData_0_1_valid,
  input  [63:0] io_enqData_0_1_bits,
  output [63:0] io_deqData_0_0,
  output [63:0] io_deqData_0_1
);
  assign io_deqData_0_0 = io_enqData_0_0_valid & |io_enqBypass_0_0 ? io_enqData_0_0_bits : io_readData_0_0; // @[ReservationStation.scala 506:11 510:59 511:15]
  assign io_deqData_0_1 = io_enqData_0_1_valid & |io_enqBypass_0_0 ? io_enqData_0_1_bits : io_readData_0_1; // @[ReservationStation.scala 506:11 510:59 511:15]
endmodule
