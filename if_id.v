//if_id module
//this part of decision making process, determines if instructions are r type or
i type
module if_id (
output reg [31:0] instrout, //output of IF/ID instruction register
npcout, //output of IF/ID NPC register
input wire [31:0] instr, //input of IF/ID instruction register
npc //input of IF/ID NPC register
);
initial begin
instrout <= 0;
npcout <=0;
end
always @* begin
#1 instrout <= instr;
npcout <= npc;
end
endmodule //if_id
