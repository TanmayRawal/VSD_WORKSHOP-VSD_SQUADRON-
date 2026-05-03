module dff_asyncres (input clk, input async_reset, input d, output reg q);
  always @ (posedge clk, posedge async_reset)
  begin
    if (async_reset)
      q <= 1'b0;      // Reset immediately, regardless of clock
    else
      q <= d;
  end
endmodule
