module tb;
    reg a, b;
    wire out_and, out_or, out_not, out_nand, out_nor, out_xor, out_xnor;

    // Instantiate Design
    basic_gates dut (
        .a(a),
        .b(b),
        .out_and(out_and),
     	  .out_or(out_or),
      	.out_not(out_not),
      	.out_nand(out_nand),
     	  .out_nor(out_nor),
      	.out_xor(out_xor),
        .out_xnor(out_xnor)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
