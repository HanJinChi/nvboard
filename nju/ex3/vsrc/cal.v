module Addt (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] res,
    output ZeroFlag,
    output OverflowFlag,
    output Carryflag 
);
    wire [3:0] t_no_Cin;
    assign  t_no_Cin = ({4{Cin}}^B) ;
    assign {Carryflag,res} = A+t_no_Cin+ {3'b0,Cin};
    assign ZeroFlag = ~(|res);
    assign OverflowFlag = (A[3] == t_no_Cin[3]) && (res[3] != A[3]);
    
endmodule


module  comparet (
    input [3:0] A,
    input [3:0] B,
    output [3:0] res
);
    wire [3:0] R;wire ZF; wire OF; wire CF;wire ch;
    assign ch = 1;
    Addt add(A, B, ch, R, ZF, OF, CF);

    assign res = {3'b0, R[3]^OF};
    
endmodule

module equalt (
    input [3:0] A,
    input [3:0] B,
    output [3:0] res
);
    wire [3:0] R ; wire ZF; wire OF; wire CF;wire ch;
    assign ch = 1;
    Addt add(A, B, ch ,R, ZF, OF, CF);

    assign res = {3'b0,ZF};
    
endmodule