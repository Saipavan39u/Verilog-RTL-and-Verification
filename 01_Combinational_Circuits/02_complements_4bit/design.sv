module complements_4bit(
  input	 [3:0] a,
  output [3:0] ones_comp,
  output [3:0] twos_comp
);
  
  assign ones_comp = ~a;
  assign twos_comp = ~a + 1'b1;
  
endmodule
