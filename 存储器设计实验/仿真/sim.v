`timescale 1ns / 1ps



module sim;
  reg clka;
  reg wea;
  reg [5:0] addra;
  reg [31:0] dina;
  wire [31:0] douta;

  RAM_B uut (
      .clka (clka),
      .wea  (wea),
      .addra(addra),
      .dina (dina),
      .douta(douta)
  );
  always begin
    #1 clka = ~clka;
  end

  initial begin
   clka = 0;
   wea  = 0;
   addra = 0; #3; 
   addra = 1; #3;
   addra = 2; #3;
   addra = 3; #3;
   addra = 4; #3;
   addra = 5; #3;
   addra = 6; #3;
   addra = 7; #3;
   addra = 8; #3;
   addra = 9; #3;
    #3 wea = 1;
	addra = 0; dina = 32'h1; #3;
	addra = 1; dina = 32'h2; #3;
	addra = 2; dina = 32'h3; #3;
	addra = 3; dina = 32'h4; #3;
	addra = 4; dina = 32'h5; #3;
	addra = 5; dina = 32'h6; #3;
	addra = 6; dina = 32'h7; #3;
	addra = 7; dina = 32'h8; #3;
	addra = 8; dina = 32'h9; #3;
	addra = 9; dina = 32'hA; #3;
	addra = 10; dina = 32'hB; #3;
	addra = 11; dina = 32'hC; #3;
	addra = 12; dina = 32'hD; #3;
	addra = 13; dina = 32'hE; #3;
	addra = 14; dina = 32'hF; #3;
	addra = 15; dina = 32'h10; #3;
    #3 wea = 0;
	addra = 0; #3;
	addra = 1; #3;
	addra = 2; #3;
	addra = 3; #3;
	addra = 4; #3;
	addra = 5; #3;
	addra = 6; #3;
	addra = 7; #3;
	addra = 8; #3;
	addra = 9; #3;
	addra = 10; #3;
	addra = 11; #3;
	addra = 12; #3;
	addra = 13; #3;
	addra = 14; #3;
	addra = 15; #3;
  end

endmodule