module top0(
    input en,
    input [7:0] x,
    output [2:0] led,
    output reg lead,
    output [7:0] sed
);
    reg [3:0] l;
    always @(x or en) begin
        if(en) begin
            lead = 1;
            casez (x) 
                8'b1???????: l = 4'b0111;
                8'b01??????: l = 4'b0110;
                8'b001?????: l = 4'b0101;
                8'b0001????: l = 4'b0100;
                8'b00001???: l = 4'b0011;
                8'b000001??: l = 4'b0010;
                8'b0000001?: l = 4'b0001;
                8'b00000001: l = 4'b0000;
                default: l = 4'b0000;
            endcase
        end
        else lead = 0;
    end
    assign led = l[2:0];
    bcd7seg s(l, sed);
 
endmodule