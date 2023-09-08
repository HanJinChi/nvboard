module top (
    input [3:0] A,
    input [3:0] B,
    input [2:0] ch,
    output [3:0] res,
    output ZeroFlag,
    output OverflowFlag,
    output Carryflag
);
    wire [3:0] r[7:0]; wire ZF[7:0]; wire OF[7:0]; wire CF[7:0];
    Addt add(A, B, ch[0], r[0], ZF[0], OF[0], CF[0]);
    Addt sub(A, B, ch[0], r[1], ZF[1], OF[1], CF[1]);
    comparet cp(A, B, r[2]);
    equalt eq(A, B, r[3]);
    
    assign res = {4{ch == 3'b000}} & r[0]  |
                 {4{ch == 3'b001}} & r[1]  |
                 {4{ch == 3'b010}} & (~A)  |
                 {4{ch == 3'b011}} & (A&B) |
                 {4{ch == 3'b100}} & (A|B) |
                 {4{ch == 3'b101}} & (A^B) |
                 {4{ch == 3'b110}} & r[2]  |
                 {4{ch == 3'b111}} & r[3]  ;
    assign ZeroFlag = {{ch == 3'b000}} & ZF[0] |
                      {{ch == 3'b001}} & ZF[1] |
                      {{ch == 3'b010}} & 0     |
                      {{ch == 3'b011}} & 0     |
                      {{ch == 3'b100}} & 0     |
                      {{ch == 3'b101}} & 0     |
                      {{ch == 3'b110}} & 0     |
                      {{ch == 3'b111}} & 0     ;

    assign OverflowFlag = {{ch == 3'b000}} & OF[0] |
                          {{ch == 3'b001}} & OF[1] |
                          {{ch == 3'b010}} & 0     |
                          {{ch == 3'b011}} & 0     |
                          {{ch == 3'b100}} & 0     |
                          {{ch == 3'b101}} & 0     |
                          {{ch == 3'b110}} & 0     |
                          {{ch == 3'b111}} & 0     ;
    assign Carryflag = {{ch == 3'b000}} & CF[0] |
                       {{ch == 3'b001}} & CF[1] |
                       {{ch == 3'b010}} & 0     |
                       {{ch == 3'b011}} & 0     |
                       {{ch == 3'b100}} & 0     |
                       {{ch == 3'b101}} & 0     |
                       {{ch == 3'b110}} & 0     |
                       {{ch == 3'b111}} & 0     ;

endmodule