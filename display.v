module display(
    input [1:0] p,
    output reg [6:0] seg_out
);
    always @* begin
        case(p)
            2'd1 : seg_out=7'b0000101;
            2'd2 : seg_out=7'b1011011;
            2'd3 : seg_out=7'b1100111;
            default: seg_out =7'b1001111;
            endcase
        end

    endmodule
