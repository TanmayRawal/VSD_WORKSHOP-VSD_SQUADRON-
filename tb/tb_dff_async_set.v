`timescale 1ns / 1ps
module tb_dff_async_set;
  reg clk, async_set, d;
  wire q;

  // Instantiate the Unit Under Test (UUT)
  dff_async_set uut (
    .clk(clk), .async_set(async_set), .d(d), .q(q)
  );

  initial begin
    $dumpfile("tb_dff_async_set.vcd");
    $dumpvars(0, tb_dff_async_set);

    // Initialize Inputs
    clk = 0; async_set = 1; d = 0;
    #3000 $finish;
  end

  always #10  clk       = ~clk;         // 20 ns clock period
  always #23  d         = ~d;           // data changes asynchronously
  always #547 async_set = ~async_set;   // long set pulses
endmodule
