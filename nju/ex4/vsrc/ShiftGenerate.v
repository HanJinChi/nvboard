// module bcd71(
//   input  [3:0] io_in,
//   output [7:0] io_out
// );
//   wire  _result_T = io_in == 4'h0; // @[two.scala 27:16]
//   wire  _result_T_1 = io_in == 4'h1; // @[two.scala 28:16]
//   wire  _result_T_2 = io_in == 4'h2; // @[two.scala 29:16]
//   wire  _result_T_3 = io_in == 4'h3; // @[two.scala 30:16]
//   wire  _result_T_4 = io_in == 4'h4; // @[two.scala 31:16]
//   wire  _result_T_5 = io_in == 4'h5; // @[two.scala 32:16]
//   wire  _result_T_6 = io_in == 4'h6; // @[two.scala 33:16]
//   wire  _result_T_7 = io_in == 4'h7; // @[two.scala 34:16]
//   wire  _result_T_8 = io_in == 4'h8; // @[two.scala 35:16]
//   wire  _result_T_9 = io_in == 4'h9; // @[two.scala 36:16]
//   wire  _result_T_10 = io_in == 4'ha; // @[two.scala 37:16]
//   wire  _result_T_11 = io_in == 4'hb; // @[two.scala 38:16]
//   wire  _result_T_12 = io_in == 4'hc; // @[two.scala 39:16]
//   wire  _result_T_13 = io_in == 4'hd; // @[two.scala 40:16]
//   wire  _result_T_14 = io_in == 4'he; // @[two.scala 41:16]
//   wire  _result_T_15 = io_in == 4'hf; // @[two.scala 42:16]
//   wire [6:0] _result_T_16 = _result_T_15 ? 7'h71 : 7'h0; // @[Mux.scala 101:16]
//   wire [6:0] _result_T_17 = _result_T_14 ? 7'h61 : _result_T_16; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_18 = _result_T_13 ? 8'h85 : {{1'd0}, _result_T_17}; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_19 = _result_T_12 ? 8'h62 : _result_T_18; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_20 = _result_T_11 ? 8'hc1 : _result_T_19; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_21 = _result_T_10 ? 8'h11 : _result_T_20; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_22 = _result_T_9 ? 8'h9 : _result_T_21; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_23 = _result_T_8 ? 8'h1 : _result_T_22; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_24 = _result_T_7 ? 8'h1f : _result_T_23; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_25 = _result_T_6 ? 8'h41 : _result_T_24; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_26 = _result_T_5 ? 8'h49 : _result_T_25; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_27 = _result_T_4 ? 8'h99 : _result_T_26; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_28 = _result_T_3 ? 8'hd : _result_T_27; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_29 = _result_T_2 ? 8'h25 : _result_T_28; // @[Mux.scala 101:16]
//   wire [7:0] _result_T_30 = _result_T_1 ? 8'h9f : _result_T_29; // @[Mux.scala 101:16]
//   assign io_out = _result_T ? 8'h3 : _result_T_30; // @[Mux.scala 101:16]
// endmodule
// module topx(
//   input         clock,
//   input         reset,
//   output [15:0] io_out
// );
//   wire [3:0] bcd7_io_in; // @[four.scala 22:45]
//   wire [7:0] bcd7_io_out; // @[four.scala 22:45]
//   wire [3:0] bcd7_1_io_in; // @[four.scala 22:45]
//   wire [7:0] bcd7_1_io_out; // @[four.scala 22:45]
//   reg  VecReg_0; // @[four.scala 12:25]
//   reg  VecReg_1; // @[four.scala 12:25]
//   reg  VecReg_2; // @[four.scala 12:25]
//   reg  VecReg_3; // @[four.scala 12:25]
//   reg  VecReg_4; // @[four.scala 12:25]
//   reg  VecReg_5; // @[four.scala 12:25]
//   reg  VecReg_6; // @[four.scala 12:25]
//   reg  VecReg_7; // @[four.scala 12:25]
//   reg  VecReg_0_REG; // @[four.scala 14:25]
//   reg  VecReg_7_REG; // @[four.scala 16:31]
//   reg  VecReg_6_REG; // @[four.scala 16:31]
//   reg  VecReg_5_REG; // @[four.scala 16:31]
//   reg  VecReg_4_REG; // @[four.scala 16:31]
//   reg  VecReg_3_REG; // @[four.scala 16:31]
//   reg  VecReg_2_REG; // @[four.scala 16:31]
//   reg  VecReg_1_REG; // @[four.scala 16:31]
//   wire  _GEN_0 = ~VecReg_0 & ~VecReg_1 & ~VecReg_2 & ~VecReg_3 & ~VecReg_4 & ~VecReg_5 & ~VecReg_6 & ~VecReg_7 ? 1'h0 :
//     VecReg_0_REG; // @[four.scala 14:15 18:175 19:16]
//   wire  _GEN_1 = ~VecReg_0 & ~VecReg_1 & ~VecReg_2 & ~VecReg_3 & ~VecReg_4 & ~VecReg_5 & ~VecReg_6 & ~VecReg_7 |
//     VecReg_1_REG; // @[four.scala 18:175 19:16 16:21]
//   wire  _GEN_3 = ~VecReg_0 & ~VecReg_1 & ~VecReg_2 & ~VecReg_3 & ~VecReg_4 & ~VecReg_5 & ~VecReg_6 & ~VecReg_7 |
//     VecReg_3_REG; // @[four.scala 18:175 19:16 16:21]
//   wire  _GEN_5 = ~VecReg_0 & ~VecReg_1 & ~VecReg_2 & ~VecReg_3 & ~VecReg_4 & ~VecReg_5 & ~VecReg_6 & ~VecReg_7 |
//     VecReg_5_REG; // @[four.scala 18:175 19:16 16:21]
//   wire  _GEN_6 = ~VecReg_0 & ~VecReg_1 & ~VecReg_2 & ~VecReg_3 & ~VecReg_4 & ~VecReg_5 & ~VecReg_6 & ~VecReg_7 |
//     VecReg_6_REG; // @[four.scala 18:175 19:16 16:21]
//   wire  _GEN_7 = ~VecReg_0 & ~VecReg_1 & ~VecReg_2 & ~VecReg_3 & ~VecReg_4 & ~VecReg_5 & ~VecReg_6 & ~VecReg_7 |
//     VecReg_7_REG; // @[four.scala 18:175 19:16 16:21]
//   wire [1:0] bcdVec_0_in_lo = {VecReg_6,VecReg_7}; // @[Cat.scala 33:92]
//   wire [1:0] bcdVec_0_in_hi = {VecReg_4,VecReg_5}; // @[Cat.scala 33:92]
//   wire [1:0] bcdVec_1_in_lo = {VecReg_2,VecReg_3}; // @[Cat.scala 33:92]
//   wire [1:0] bcdVec_1_in_hi = {VecReg_0,VecReg_1}; // @[Cat.scala 33:92]
//   wire [7:0] bcdVec_1_out = bcd7_1_io_out; // @[four.scala 22:{25,25}]
//   wire [7:0] bcdVec_0_out = bcd7_io_out; // @[four.scala 22:{25,25}]
//   bcd7 bcd7 ( // @[four.scala 22:45]
//     .io_in(bcd7_io_in),
//     .io_out(bcd7_io_out)
//   );
//   bcd7 bcd7_1 ( // @[four.scala 22:45]
//     .io_in(bcd7_1_io_in),
//     .io_out(bcd7_1_io_out)
//   );
//   assign io_out = {bcdVec_1_out,bcdVec_0_out}; // @[Cat.scala 33:92]
//   assign bcd7_io_in = {bcdVec_0_in_hi,bcdVec_0_in_lo}; // @[Cat.scala 33:92]
//   assign bcd7_1_io_in = {bcdVec_1_in_hi,bcdVec_1_in_lo}; // @[Cat.scala 33:92]
//   always @(posedge clock) begin
//     VecReg_0 <= reset | _GEN_0; // @[four.scala 12:{25,25}]
//     VecReg_1 <= reset | _GEN_1; // @[four.scala 12:{25,25}]
//     if (reset) begin // @[four.scala 12:25]
//       VecReg_2 <= 1'h0; // @[four.scala 12:25]
//     end else if (~VecReg_0 & ~VecReg_1 & ~VecReg_2 & ~VecReg_3 & ~VecReg_4 & ~VecReg_5 & ~VecReg_6 & ~VecReg_7) begin // @[four.scala 18:175]
//       VecReg_2 <= 1'h0; // @[four.scala 19:16]
//     end else begin
//       VecReg_2 <= VecReg_2_REG; // @[four.scala 16:21]
//     end
//     VecReg_3 <= reset | _GEN_3; // @[four.scala 12:{25,25}]
//     if (reset) begin // @[four.scala 12:25]
//       VecReg_4 <= 1'h0; // @[four.scala 12:25]
//     end else if (~VecReg_0 & ~VecReg_1 & ~VecReg_2 & ~VecReg_3 & ~VecReg_4 & ~VecReg_5 & ~VecReg_6 & ~VecReg_7) begin // @[four.scala 18:175]
//       VecReg_4 <= 1'h0; // @[four.scala 19:16]
//     end else begin
//       VecReg_4 <= VecReg_4_REG; // @[four.scala 16:21]
//     end
//     VecReg_5 <= reset | _GEN_5; // @[four.scala 12:{25,25}]
//     VecReg_6 <= reset | _GEN_6; // @[four.scala 12:{25,25}]
//     VecReg_7 <= reset | _GEN_7; // @[four.scala 12:{25,25}]
//     VecReg_0_REG <= VecReg_7 ^ VecReg_6 ^ VecReg_5 ^ VecReg_4; // @[four.scala 14:55]
//     VecReg_7_REG <= VecReg_6; // @[four.scala 16:31]
//     VecReg_6_REG <= VecReg_5; // @[four.scala 16:31]
//     VecReg_5_REG <= VecReg_4; // @[four.scala 16:31]
//     VecReg_4_REG <= VecReg_3; // @[four.scala 16:31]
//     VecReg_3_REG <= VecReg_2; // @[four.scala 16:31]
//     VecReg_2_REG <= VecReg_1; // @[four.scala 16:31]
//     VecReg_1_REG <= VecReg_0; // @[four.scala 16:31]
//   end
//   initial begin
//     VecReg_0 = 0;
//     VecReg_1 = 1;
//     VecReg_2 = 0;
//     VecReg_3 = 0;
//     VecReg_4 = 0;
//     VecReg_5 = 0;
//     VecReg_6 = 0;
//     VecReg_7 = 0;
//     VecReg_0_REG = 0;
//     VecReg_1_REG = 0;
//     VecReg_2_REG = 1;
//     VecReg_3_REG = 0;
//     VecReg_4_REG = 0;
//     VecReg_5_REG = 0;
//     VecReg_6_REG = 0;
//     VecReg_7_REG = 0;
//   end
// endmodule
