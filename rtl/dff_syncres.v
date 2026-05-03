module dff_syncres (input clk, input sync_reset, input d, output reg q);
  always @ (posedge clk)
  begin
    if (sync_reset)
      q <= 1'b0;      // Reset only on the next clock edge
    else
      q <= d;
  end
endmodule
