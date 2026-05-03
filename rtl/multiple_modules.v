module sub_module2 (input a, input b, output y);
  assign y = a | b;          // OR gate
endmodule

module sub_module1 (input a, input b, output y);
  assign y = a & b;          // AND gate
endmodule

module multiple_modules (input a, input b, input c, output y);
  wire net1;
  sub_module1 u1 (.a(a), .b(b), .y(net1));   // net1 = a & b
  sub_module2 u2 (.a(net1), .b(c), .y(y));   // y = net1 | c = (a & b) | c
endmodule
