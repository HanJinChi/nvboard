module FourToOneModule(
  input  [1:0] Y,
  input  [1:0] X0,
  input  [1:0] X1,
  input  [1:0] X2,
  input  [1:0] X3,
  output [1:0] F
);
  wire  _Result_T = Y == 2'h0; // @[one.scala 16:15]
  wire  _Result_T_1 = Y == 2'h1; // @[one.scala 17:15]
  wire  _Result_T_2 = Y == 2'h2; // @[one.scala 18:15]
  wire  _Result_T_3 = Y == 2'h3; // @[one.scala 19:15]
  wire [1:0] _Result_T_4 = _Result_T_3 ? X3 : 2'h0; // @[Mux.scala 101:16]
  wire [1:0] _Result_T_5 = _Result_T_2 ? X2 : _Result_T_4; // @[Mux.scala 101:16]
  wire [1:0] _Result_T_6 = _Result_T_1 ? X1 : _Result_T_5; // @[Mux.scala 101:16]
  assign F = _Result_T ? X0 : _Result_T_6; // @[Mux.scala 101:16]
endmodule
