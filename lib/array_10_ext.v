// name:array_10_ext depth:8 width:28 masked:true maskGran:14 maskSeg:2
module array_10_ext(
  input RW0_clk,
  input [2:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [1:0] RW0_wmask,
  input [27:0] RW0_wdata,
  output [27:0] RW0_rdata
);


  reg reg_RW0_ren;
  reg [2:0] reg_RW0_addr;
  reg [27:0] ram [7:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 8; initvar = initvar+1)
        ram[initvar] = {1 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  always @(posedge RW0_clk)
    reg_RW0_ren <= RW0_en && !RW0_wmode;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      if (RW0_wmask[0]) ram[RW0_addr][13:0] <= RW0_wdata[13:0];
      if (RW0_wmask[1]) ram[RW0_addr][27:14] <= RW0_wdata[27:14];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] RW0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      RW0_random = {$random};
      reg_RW0_ren = RW0_random[0];
    end
  `endif
  always @(posedge RW0_clk) RW0_random <= {$random};
  assign RW0_rdata = reg_RW0_ren ? ram[reg_RW0_addr] : RW0_random[27:0];
  `else
  assign RW0_rdata = ram[reg_RW0_addr];
  `endif

endmodule