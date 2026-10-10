module game(
    input [1:0] p1,
    input [1:0] p2,
    output wire [6:0] seg_out1,
    output wire [6:0] seg_out2,
    output wire [7:0] ans_out1,
    output wire [7:0] ans_out2,
    output wire [2:0] o
);
    assign ans_out1 = 8'b1000_0000;
    assign ans_out2 = 8'b0000_0001;
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
