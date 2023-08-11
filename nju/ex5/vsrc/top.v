module top(
    input clock,
    input rst,
    input ps2_clk,
    input ps2_data,
    output [15:0] key,
    output [15:0] asiic,
    output [15:0] count_led,
    output ready,
    output overflow
);
    wire r;
    wire [7:0] data;
    reg [7:0] key_data;
    reg [7:0] prev_data [2:0];
    reg [7:0] count;
    wire [7:0] count_wire;
    wire [7:0] asiic_data;
    wire [7:0] led_key [1:0];
    wire [7:0] led_asiic [1:0];
    wire stop_type;
    reg nextdata_n;
    ps2_keyboard inst(
    .clk(clock),
    .clrn(~rst),
    .ps2_clk(ps2_clk),
    .ps2_data(ps2_data),
    .data(data),
    .ready(r),
    .nextdata_n(nextdata_n),
    .overflow(overflow)
    );

    tablelook t_0(
        .data(key_data),
        .asiic(asiic_data)
    );
    bcd7seg bcd_0(
        .b(key_data[3:0]),
        .h(led_key[0])
    );
    bcd7seg bcd_1(
        .b(key_data[7:4]),
        .h(led_key[1])
    );
    bcd7seg bcd_2(
        .b(asiic_data[3:0]),
        .h(led_asiic[0])
    );
    bcd7seg bcd_3(
        .b(asiic_data[7:4]),
        .h(led_asiic[1])
    );

    bcd7seg bcd4(
        .b(count_wire[3:0]),
        .h(count_led[7:0]) 
    );

    bcd7seg bcd5(
        .b(count_wire[7:4]),
        .h(count_led[15:8]) 
    );

    assign key = stop_type == 1'b1 ? 16'hFFFF : { led_key[1], led_key[0] };
    assign asiic = stop_type == 1'b1 ? 16'hFFFF : { led_asiic[1], led_asiic[0] };
    assign ready = r;
    assign count_wire = count;

    always @(posedge clock) begin
        if(rst) begin
            key_data <= 0;
            nextdata_n <= 1;
            prev_data[0] <= 8'b0; prev_data[1] <= 8'b0; prev_data[2] <= 8'b0;
            count <= 0;
        end
        if(ready) begin
            $display("key receive %x", data);
            key_data <= data;
            prev_data[2] <= prev_data[1];
            prev_data[1] <= prev_data[0];
            prev_data[0] <= data;
            nextdata_n <= 0;
            if((prev_data[2] == prev_data[0]) && (prev_data[1] == 8'hF0)) begin
                count <= count+1;
            end
        end
    end
    assign stop_type = (prev_data[2] == prev_data[0]) && (prev_data[1] == 8'hF0);

endmodule