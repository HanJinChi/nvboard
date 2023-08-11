`timescale 1ns/1ps

module test;
  reg  [3:0] a, b;
  reg  [2:0] ch;
  wire [3:0] c;
  wire zero, carry, over;
  Add  ADD0(a, b, c, zero, over, carry);

  initial begin
    a = 0;
    b = 0;
    #10 a = -1;
    #10;
    $finish();
  end

  initial begin
    $dumpfile("test.vcd");
    $dumpvars(0);
  end
endmodule
