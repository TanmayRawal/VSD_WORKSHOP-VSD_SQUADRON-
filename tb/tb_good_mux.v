`timescale 1ns / 1ps
module tb_good_mux;
  reg i0, i1, sel;
  wire y;

  // Instantiate the Unit Under Test (UUT)
  good_mux uut (
    .sel(sel), .i0(i0), .i1(i1), .y(y)
  );

  initial begin
    $dumpfile("tb_good_mux.vcd");
    $dumpvars(0, tb_good_mux);

    // Initialize Inputs
    sel = 0; i0 = 0; i1 = 0;
    #300 $finish;
  end

  always #75  sel = ~sel;   // sel toggles every 75 ns
  always #10  i0  = ~i0;   // i0 toggles every 10 ns
  always #55  i1  = ~i1;   // i1 toggles every 55 ns
endmodule
