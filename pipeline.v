`include "ifetch.v"
//pipeline module
module pipeline();
wire [31:0] IF_ID_instr, IF_ID_npc; //input wire
reg EX_MEM_PCSrc; //output wire
reg [31:0] EX_MEM_NPC; //output wire
I_FETCH I_FETCH1(.IF_ID_instr(IF_ID_instr),
.IF_ID_npc(IF_ID_npc),
.EX_MEM_PCSrc(EX_MEM_PCSrc),
.EX_MEM_NPC(EX_MEM_NPC) );
initial begin
EX_MEM_PCSrc <= 0;
EX_MEM_NPC <= 0;
end
//here you will add I_DECODE. You will have to declare wires to makes
//the connections between the I_FETCH and I_DECODE modules
endmodule //pipelin
