module tablelook (
    input [7:0] data,
    output [7:0] asiic
);

    reg [7:0] lpt [7'h50:0];
    
    assign asiic = lpt[data[6:0]];

    initial begin
        lpt[7'h45] = 8'h30; // 0
        lpt[7'h16] = 8'h31; // 1
        lpt[7'h1E] = 8'h32; // 2
        lpt[7'h26] = 8'h33; // 3
        lpt[7'h25] = 8'h34; // 4
        lpt[7'h2E] = 8'h35; // 5
        lpt[7'h36] = 8'h36; // 6
        lpt[7'h3D] = 8'h37; // 7
        lpt[7'h3E] = 8'h38; // 8
        lpt[7'h46] = 8'h39; // 9

        lpt[7'h1C] = 8'h41; // a
        lpt[7'h32] = 8'h42; // b
        lpt[7'h21] = 8'h43; // c
        lpt[7'h23] = 8'h44; // d
        lpt[7'h24] = 8'h45; // e
        lpt[7'h2B] = 8'h46; // f
        lpt[7'h34] = 8'h47; // g
        lpt[7'h33] = 8'h48; // h
        lpt[7'h43] = 8'h49; // i
        lpt[7'h3B] = 8'h4a; // j
        lpt[7'h42] = 8'h4b; // k
        lpt[7'h4B] = 8'h4c; // l
        lpt[7'h3A] = 8'h4c; // m
        lpt[7'h31] = 8'h4c; // n
        lpt[7'h44] = 8'h4c; // o
        lpt[7'h4D] = 8'h4c; // p
        lpt[7'h15] = 8'h4c; // q
        lpt[7'h2d] = 8'h4c; // r
        lpt[7'h1B] = 8'h4c; // s
        lpt[7'h2c] = 8'h4c; // t
        lpt[7'h3c] = 8'h4c; // u
        lpt[7'h2a] = 8'h4c; // v
        lpt[7'h1D] = 8'h4c; // w
        lpt[7'h22] = 8'h4c; // x
        lpt[7'h35] = 8'h4c; // y
        lpt[7'h1A] = 8'h4c; // z
    end
    
endmodule