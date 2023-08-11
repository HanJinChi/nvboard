module Add(
  input  [3:0] io_x,
  input  [3:0] io_y,
  output [3:0] io_out,
  output       io_zeroflag,
  output       io_overflowflag,
  output       io_carryflag
);
  wire [4:0] _res_T = io_x + io_y; // @[three.scala 18:17]
  wire [5:0] _res_T_1 = {{1'd0}, _res_T}; // @[three.scala 18:25]
  wire [3:0] _io_out_T_4 = $signed(io_x) + $signed(io_y); // @[three.scala 19:28]
  wire [4:0] _io_out_T_6 = {{1{_io_out_T_4[3]}},_io_out_T_4}; // @[three.scala 19:42]
  wire [4:0] res = _res_T_1[4:0]; // @[three.scala 17:19 18:9]
  assign io_out = _io_out_T_6[3:0]; // @[three.scala 19:59]
  assign io_zeroflag = io_out == 4'h0; // @[three.scala 22:28]
  assign io_overflowflag = io_x[3] == io_y[3] & io_out[3] != io_x[3]; // @[three.scala 21:46]
  assign io_carryflag = res[4]; // @[three.scala 20:24]
endmodule
module top(
  input  [3:0] io_a,
  input  [3:0] io_b,
  input  [2:0] io_ch,
  output [3:0] io_out,
  output       io_zeroflag,
  output       io_overflowflag,
  output       io_carryflag
);
  wire [3:0] Add_io_x; // @[three.scala 35:39]
  wire [3:0] Add_io_y; // @[three.scala 35:39]
  wire [3:0] Add_io_out; // @[three.scala 35:39]
  wire  Add_io_zeroflag; // @[three.scala 35:39]
  wire  Add_io_overflowflag; // @[three.scala 35:39]
  wire  Add_io_carryflag; // @[three.scala 35:39]
  wire [3:0] Add_1_io_x; // @[three.scala 35:39]
  wire [3:0] Add_1_io_y; // @[three.scala 35:39]
  wire [3:0] Add_1_io_out; // @[three.scala 35:39]
  wire  Add_1_io_zeroflag; // @[three.scala 35:39]
  wire  Add_1_io_overflowflag; // @[three.scala 35:39]
  wire  Add_1_io_carryflag; // @[three.scala 35:39]
  wire [3:0] _m_1_y_T = ~io_b; // @[three.scala 45:15]
  wire [3:0] _io_out_T = ~io_a; // @[three.scala 58:19]
  wire [3:0] _io_out_T_1 = io_a & io_b; // @[three.scala 60:24]
  wire [3:0] _io_out_T_2 = io_a | io_b; // @[three.scala 62:24]
  wire [3:0] _io_out_T_3 = io_a ^ io_b; // @[three.scala 64:24]
  wire  _GEN_0 = io_ch == 3'h7 & io_a == io_b; // @[three.scala 37:12 67:30 68:16]
  wire  _GEN_1 = io_ch == 3'h6 ? $signed(io_a) < $signed(io_b) : _GEN_0; // @[three.scala 65:30 66:16]
  wire [3:0] _GEN_2 = io_ch == 3'h5 ? _io_out_T_3 : {{3'd0}, _GEN_1}; // @[three.scala 63:30 64:16]
  wire [3:0] _GEN_3 = io_ch == 3'h4 ? _io_out_T_2 : _GEN_2; // @[three.scala 61:30 62:16]
  wire [3:0] _GEN_4 = io_ch == 3'h3 ? _io_out_T_1 : _GEN_3; // @[three.scala 59:30 60:16]
  wire [3:0] _GEN_5 = io_ch == 3'h2 ? _io_out_T : _GEN_4; // @[three.scala 57:30 58:16]
  wire [3:0] m_1_out = Add_1_io_out; // @[three.scala 35:{20,20}]
  wire [3:0] _GEN_6 = io_ch == 3'h1 ? m_1_out : _GEN_5; // @[three.scala 52:30 53:16]
  wire  m_1_zeroflag = Add_1_io_zeroflag; // @[three.scala 35:{20,20}]
  wire  _GEN_7 = io_ch == 3'h1 & m_1_zeroflag; // @[three.scala 38:17 52:30 54:21]
  wire  m_1_overflowflag = Add_1_io_overflowflag; // @[three.scala 35:{20,20}]
  wire  _GEN_8 = io_ch == 3'h1 & m_1_overflowflag; // @[three.scala 39:21 52:30 55:25]
  wire  m_1_carryflag = Add_1_io_carryflag; // @[three.scala 35:{20,20}]
  wire  _GEN_9 = io_ch == 3'h1 & m_1_carryflag; // @[three.scala 40:18 52:30 56:22]
  wire [3:0] m_0_out = Add_io_out; // @[three.scala 35:{20,20}]
  wire  m_0_zeroflag = Add_io_zeroflag; // @[three.scala 35:{20,20}]
  wire  m_0_overflowflag = Add_io_overflowflag; // @[three.scala 35:{20,20}]
  wire  m_0_carryflag = Add_io_carryflag; // @[three.scala 35:{20,20}]
  Add Add ( // @[three.scala 35:39]
    .io_x(Add_io_x),
    .io_y(Add_io_y),
    .io_out(Add_io_out),
    .io_zeroflag(Add_io_zeroflag),
    .io_overflowflag(Add_io_overflowflag),
    .io_carryflag(Add_io_carryflag)
  );
  Add Add_1 ( // @[three.scala 35:39]
    .io_x(Add_1_io_x),
    .io_y(Add_1_io_y),
    .io_out(Add_1_io_out),
    .io_zeroflag(Add_1_io_zeroflag),
    .io_overflowflag(Add_1_io_overflowflag),
    .io_carryflag(Add_1_io_carryflag)
  );
  assign io_out = io_ch == 3'h0 ? m_0_out : _GEN_6; // @[three.scala 47:24 48:16]
  assign io_zeroflag = io_ch == 3'h0 ? m_0_zeroflag : _GEN_7; // @[three.scala 47:24 49:21]
  assign io_overflowflag = io_ch == 3'h0 ? m_0_overflowflag : _GEN_8; // @[three.scala 47:24 50:25]
  assign io_carryflag = io_ch == 3'h0 ? m_0_carryflag : _GEN_9; // @[three.scala 47:24 51:22]
  assign Add_io_x = io_a; // @[three.scala 35:20 41:12]
  assign Add_io_y = io_b; // @[three.scala 35:20 42:12]
  assign Add_1_io_x = io_a; // @[three.scala 35:20 44:12]
  assign Add_1_io_y = _m_1_y_T + 4'h1; // @[three.scala 45:22]
endmodule
