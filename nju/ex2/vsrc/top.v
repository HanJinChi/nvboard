module bcd7(
  input  [3:0] io_in,
  output [7:0] io_out
);
  wire  _result_T = io_in == 4'h0; // @[two.scala 27:16]
  wire  _result_T_1 = io_in == 4'h1; // @[two.scala 28:16]
  wire  _result_T_2 = io_in == 4'h2; // @[two.scala 29:16]
  wire  _result_T_3 = io_in == 4'h3; // @[two.scala 30:16]
  wire  _result_T_4 = io_in == 4'h4; // @[two.scala 31:16]
  wire  _result_T_5 = io_in == 4'h5; // @[two.scala 32:16]
  wire  _result_T_6 = io_in == 4'h6; // @[two.scala 33:16]
  wire  _result_T_7 = io_in == 4'h7; // @[two.scala 34:16]
  wire  _result_T_8 = io_in == 4'h8; // @[two.scala 35:16]
  wire  _result_T_9 = io_in == 4'h9; // @[two.scala 36:16]
  wire  _result_T_10 = io_in == 4'ha; // @[two.scala 37:16]
  wire  _result_T_11 = io_in == 4'hb; // @[two.scala 38:16]
  wire  _result_T_12 = io_in == 4'hc; // @[two.scala 39:16]
  wire  _result_T_13 = io_in == 4'hd; // @[two.scala 40:16]
  wire  _result_T_14 = io_in == 4'he; // @[two.scala 41:16]
  wire  _result_T_15 = io_in == 4'hf; // @[two.scala 42:16]
  wire [6:0] _result_T_16 = _result_T_15 ? 7'h71 : 7'h0; // @[Mux.scala 101:16]
  wire [6:0] _result_T_17 = _result_T_14 ? 7'h61 : _result_T_16; // @[Mux.scala 101:16]
  wire [7:0] _result_T_18 = _result_T_13 ? 8'h85 : {{1'd0}, _result_T_17}; // @[Mux.scala 101:16]
  wire [7:0] _result_T_19 = _result_T_12 ? 8'h62 : _result_T_18; // @[Mux.scala 101:16]
  wire [7:0] _result_T_20 = _result_T_11 ? 8'hc1 : _result_T_19; // @[Mux.scala 101:16]
  wire [7:0] _result_T_21 = _result_T_10 ? 8'h11 : _result_T_20; // @[Mux.scala 101:16]
  wire [7:0] _result_T_22 = _result_T_9 ? 8'h9 : _result_T_21; // @[Mux.scala 101:16]
  wire [7:0] _result_T_23 = _result_T_8 ? 8'h1 : _result_T_22; // @[Mux.scala 101:16]
  wire [7:0] _result_T_24 = _result_T_7 ? 8'h1f : _result_T_23; // @[Mux.scala 101:16]
  wire [7:0] _result_T_25 = _result_T_6 ? 8'h41 : _result_T_24; // @[Mux.scala 101:16]
  wire [7:0] _result_T_26 = _result_T_5 ? 8'h49 : _result_T_25; // @[Mux.scala 101:16]
  wire [7:0] _result_T_27 = _result_T_4 ? 8'h99 : _result_T_26; // @[Mux.scala 101:16]
  wire [7:0] _result_T_28 = _result_T_3 ? 8'hd : _result_T_27; // @[Mux.scala 101:16]
  wire [7:0] _result_T_29 = _result_T_2 ? 8'h25 : _result_T_28; // @[Mux.scala 101:16]
  wire [7:0] _result_T_30 = _result_T_1 ? 8'h9f : _result_T_29; // @[Mux.scala 101:16]
  assign io_out = _result_T ? 8'h3 : _result_T_30; // @[Mux.scala 101:16]
endmodule
module priority_(
  input  [7:0] io_in,
  output [2:0] io_out
);
  wire [1:0] _GEN_2 = io_in[2] ? 2'h2 : {{1'd0}, io_in[1]}; // @[two.scala 13:31 14:20]
  wire [1:0] _GEN_3 = io_in[3] ? 2'h3 : _GEN_2; // @[two.scala 13:31 14:20]
  wire [2:0] _GEN_4 = io_in[4] ? 3'h4 : {{1'd0}, _GEN_3}; // @[two.scala 13:31 14:20]
  wire [2:0] _GEN_5 = io_in[5] ? 3'h5 : _GEN_4; // @[two.scala 13:31 14:20]
  wire [2:0] _GEN_6 = io_in[6] ? 3'h6 : _GEN_5; // @[two.scala 13:31 14:20]
  assign io_out = io_in[7] ? 3'h7 : _GEN_6; // @[two.scala 13:31 14:20]
endmodule
module top(
  input        io_enable,
  input  [7:0] io_in,
  output [2:0] io_out,
  output       io_enableout,
  output [7:0] io_led
);
  wire [3:0] bcdmodule_io_in; // @[two.scala 55:27]
  wire [7:0] bcdmodule_io_out; // @[two.scala 55:27]
  wire [7:0] prioritymodule_io_in; // @[two.scala 56:32]
  wire [2:0] prioritymodule_io_out; // @[two.scala 56:32]
  wire [2:0] res = prioritymodule_io_out; // @[two.scala 57:19 62:9]
  bcd7 bcdmodule ( // @[two.scala 55:27]
    .io_in(bcdmodule_io_in),
    .io_out(bcdmodule_io_out)
  );
  priority_ prioritymodule ( // @[two.scala 56:32]
    .io_in(prioritymodule_io_in),
    .io_out(prioritymodule_io_out)
  );
  assign io_out = prioritymodule_io_out; // @[two.scala 57:19 62:9]
  assign io_enableout = io_enable; // @[two.scala 59:18]
  assign io_led = ~io_enableout ? 8'h0 : bcdmodule_io_out; // @[two.scala 65:32 66:16 68:16]
  assign bcdmodule_io_in = {{1'd0}, res}; // @[two.scala 63:21]
  assign prioritymodule_io_in = io_in; // @[two.scala 61:26]
endmodule
