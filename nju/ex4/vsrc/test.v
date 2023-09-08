//  `timescale 1ns/1ps
// module test;
//   wire  [15:0] out;
//   reg  clock;
//   top  top0(clock, out);

//   initial begin
//     clock = 0;
//     forever #5 clock = ~clock;
//   end

//   initial begin
//     $dumpfile("test.vcd");
//     $dumpvars(0);
//     #1000 $finish();
//   end
// endmodule
