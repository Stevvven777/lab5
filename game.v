module game(
    input [1:0] p1,
    input [1:0] p2,
    output wire [6:0] seg_out1,
    output wire [6:0] seg_out2,
    output wire [3:0] ans_out1,
    output wire [3:0] ans_out2,
    output wire [1:0] dp_out,
    output wire [2:0] o
);
    // Active-high selects: group 0 is BIT1..4, group 1 is BIT5..8.
    assign ans_out1 = 4'b0001; // Player 1 on BIT1.
    assign ans_out2 = 4'b1000; // Player 2 on BIT8.
    assign dp_out = 2'b00;
    display d1(
        .seg_out(seg_out1),
        .p(p1)
    );
    display d2(
        .seg_out(seg_out2),
        .p(p2)
    );
    comparator c1(
        .p1(p1),
        .p2(p2),
        .o(o)
    );
endmodule
