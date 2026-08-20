module tb;
    reg  [3:0] a;
    reg  [3:0] b;
    reg        sel;
    wire [3:0] out;

    mux2to1_4bit dut (
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);

        // Test Case 1: sel = 0 -> out = a (4'b1010)
        a = 4'b1010; b = 4'b1100; sel = 0;
        #10;

        // Test Case 2: sel = 1 -> out = b (4'b1100)
        sel = 1;
        #10;

        // Test Case 3: change inputs with sel = 0
        a = 4'b0001; b = 4'b1111; sel = 0;
        #10;

        // Test Case 4: sel = 1 with new inputs
        sel = 1;
        #10;

        $finish;
    end
endmodule
