//multiplexer module
//takes two 32 bits input wires
//one wire is a other is b
//1 output wire, which is also 32 bit
module mux(
output wire [31:0] y, //output of multiplexer
input wire [31:0] a, //input 1 of multiplexer
b, //input 0 of multiplexer
input wire sel //select input
);
//ternary operator, y is either set to a or b
//if true y would be equal to a, if false then b
assign y = sel ? a : b;
endmodule //mux
