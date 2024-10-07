//pc module
//pc is program counter, it points to next instruction to be performed
//the pc is being incremented each time
module pc_mod (
output reg [31:0] PC, //output of pc_mod
input wire [31:0] npc //input of pc_mod
);
//circuit
initial begin
PC <= 0;
end
always @ (npc) begin
#1 PC <= npc;
end
endmodule //pc_mo
