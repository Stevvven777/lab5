module comparator(
    input wire [1:0] p1,
    input wire [1:0] p2,
    output reg [2:0] o
);
    // 01: stone, 10: scissors, 11: paper; 00: no selection.
    // o[2]: player 1 wins, o[1]: draw, o[0]: player 2 wins.
    always @(*) begin
        o = 3'b000;
        case ({p1, p2})
            4'b01_10, 4'b10_11, 4'b11_01: o = 3'b100;
            4'b01_01, 4'b10_10, 4'b11_11: o = 3'b010;
            4'b10_01, 4'b11_10, 4'b01_11: o = 3'b001;
            default: o = 3'b000;
        endcase
    end
endmodule
