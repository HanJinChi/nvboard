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


module top (
    input clock,
    output [15:0] out
);
    wire [3:0] bcd_in [1:0];
    wire  [7:0] bcd_out [1:0];
    reg [7:0] p;
    always @(posedge clock) begin
        if(p != 8'b00000000) begin
            p <= {p[3]^p[2]^p[1]^p[0],p[7:1]};
        end
        else begin
            p <= 8'b10101010;
        end
    end
    assign bcd_in[0] = p[3:0];
    assign bcd_in[1] = p[7:4];

    bcd7 bcd7_0 (.io_in(bcd_in[0]), .io_out(bcd_out[0]));
    bcd7 bcd7_1 (.io_in(bcd_in[1]), .io_out(bcd_out[1]));

    assign out = {bcd_out[1], bcd_out[0]};

    initial begin
        p = 8'b01010100;
    end
    
endmodule 