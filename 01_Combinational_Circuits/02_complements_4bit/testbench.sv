module tb;
  reg [3:0] a;
  wire [3:0] ones_comp;
  wire [3:0] twos_comp;
  
  complements_4bit dut(
    .a(a),
    .ones_comp(ones_comp),
    .twos_comp(twos_comp)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
    
    a = 4'b0101; #10; // Decimal 5  -> 1's: 1010 (10), 2's: 1011 (11)
    a = 4'b1100; #10; // Decimal 12 -> 1's: 0011 (3),  2's: 0100 (4)
    a = 4'b0001; #10; // Decimal 1  -> 1's: 1110 (14), 2's: 1111 (15)
    
  $finish;
  end
endmodule
