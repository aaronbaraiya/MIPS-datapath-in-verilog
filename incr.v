//incrementer module
//32bit is equal to 4 words
module incrementer (
input wire [31:0] pcin, //input of incrementer
output wire [31:0] pcout //output of incrementer
);
assign pcout = pcin + 1; //increment PC by 1; though 4 would be ideal
endmodule //incrementer
