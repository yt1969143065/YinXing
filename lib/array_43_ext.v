// name:array_43_ext depth:4096 width:64 masked:true maskGran:16 maskSeg:4
module array_43_ext(
  input RW0_clk,
  input [11:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [3:0] RW0_wmask,
  input [63:0] RW0_wdata,
  output [63:0] RW0_rdata
);


  reg reg_RW0_ren;
  reg [11:0] reg_RW0_addr;
  reg [63:0] ram [4095:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 4096; initvar = initvar+1)
        ram[initvar] = {2 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  always @(posedge RW0_clk)
    reg_RW0_ren <= RW0_en && !RW0_wmode;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      if (RW0_wmask[0]) ram[RW0_addr][15:0] <= RW0_wdata[15:0];
      if (RW0_wmask[1]) ram[RW0_addr][31:16] <= RW0_wdata[31:16];
      if (RW0_wmask[2]) ram[RW0_addr][47:32] <= RW0_wdata[47:32];
      if (RW0_wmask[3]) ram[RW0_addr][63:48] <= RW0_wdata[63:48];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [63:0] RW0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      RW0_random = {$random, $random};
      reg_RW0_ren = RW0_random[0];
    end
  `endif
  always @(posedge RW0_clk) RW0_random <= {$random, $random};
  assign RW0_rdata = reg_RW0_ren ? ram[reg_RW0_addr] : RW0_random[63:0];
  `else
  assign RW0_rdata = ram[reg_RW0_addr];
  `endif

endmodule