`timescale 1ns / 1ps
module tb_dff_asyncres;
  reg clk, async_reset, d;
  wire q;

  // Instantiate the Unit Under Test (UUT)
  dff_asyncres uut (
    .clk(clk), .async_reset(async_reset), .d(d), .q(q)
  );

  initial begin
    $dumpfile("tb_dff_asyncres.vcd");
    $dumpvars(0, tb_dff_asyncres);

    // Initialize Inputs
    clk = 0; async_reset = 1; d = 0;
    #3000 $finish;
  end

  always #10  clk         = ~clk;         // 20 ns clock period
  always #23  d           = ~d;           // data changes asynchronously
  always #547 async_reset = ~async_reset; // long reset pulses
endmodule
