`timescale 1ns/1ps
module game_tb;
    reg [1:0] p1, p2;
    wire [6:0] seg_out1, seg_out2;
    wire [3:0] ans_out1, ans_out2;
    wire [1:0] dp_out;
    wire [2:0] o;
    reg [2:0] expected [0:15];
    integer i, j;

    game dut(.p1(p1), .p2(p2), .seg_out1(seg_out1), .seg_out2(seg_out2),
             .ans_out1(ans_out1), .ans_out2(ans_out2), .dp_out(dp_out), .o(o));

    // Independent character oracle: named segments instead of copied bit strings.
    function [6:0] glyph(input [1:0] move);
        reg a, b, c, d, e, f, g;
        begin
            a=0; b=0; c=0; d=0; e=0; f=0; g=0;
            case (move)
                0: begin a=1; d=1; e=1; f=1; g=1; end // E
                1: begin e=1; g=1; end                // r
                2: begin a=1; c=1; d=1; f=1; g=1; end // S
                3: begin a=1; b=1; e=1; f=1; g=1; end // P
            endcase
            glyph={a,b,c,d,e,f,g};
        end
    endfunction

    initial begin
        $dumpfile("lab5.vcd");
        $dumpvars(0, game_tb);
        // Rows: player 1 = none, stone, scissors, paper.
        // Columns: player 2 = none, stone, scissors, paper.
        expected[0]=0;  expected[1]=0;  expected[2]=0;  expected[3]=0;
        expected[4]=0;  expected[5]=2;  expected[6]=4;  expected[7]=1;
        expected[8]=0;  expected[9]=1;  expected[10]=2; expected[11]=4;
        expected[12]=0; expected[13]=4; expected[14]=1; expected[15]=2;
        for (i=0; i<4; i=i+1) begin
            for (j=0; j<4; j=j+1) begin
                p1=i[1:0]; p2=j[1:0]; #10;
                if (o !== expected[i*4+j])
                    $fatal(1, "Result mismatch p1=%b p2=%b o=%b", p1, p2, o);
                if (seg_out1 !== glyph(p1) || seg_out2 !== glyph(p2))
                    $fatal(1, "Display mismatch p1=%b p2=%b", p1, p2);
                if (ans_out1 !== 4'b0001 || ans_out2 !== 4'b1000 || dp_out !== 2'b00)
                    $fatal(1, "Digit selection or decimal point mismatch");
            end
        end
        $display("PASS: all 16 move pairs, both display decoders, BIT1/BIT8 selects and decimal points");
        $finish;
    end
endmodule
