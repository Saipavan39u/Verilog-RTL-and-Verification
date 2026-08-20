module mux2to1_4bit (
    input  [3:0] a,
    input  [3:0] b,
    input        sel,
    output [3:0] out
);

    assign out = sel ? b : a;

endmodule
