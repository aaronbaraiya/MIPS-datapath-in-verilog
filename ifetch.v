//including other files
`include "mux.v"
`include "mem.v"
`include "incr.v"
`include "if_id.v"
`include "pc_mod.v"
//I_fetch module
//this module brings all modules together
//instantions of modules are declared
//declare instance of I fetch module
module I_FETCH (
output wire [31:0] IF_ID_instr, //output wire, 32 bits
output wire [31:0] IF_ID_npc, //output wire, 32 bits
input wire EX_MEM_PCSrc, //input wire 32 bits
input wire [31:0] EX_MEM_NPC //input wire 32 bits
);
//signals
wire [31:0] PC; //program counter
wire [31:0] dataout; //32 bit signal
wire [31:0] npc, npc_mux; //also 32 bit signals
//instantiations
//constructing circuit from wires
//instantiation of multiplexer
mux mux1 (.y(npc_mux), //first input
.a(EX_MEM_NPC), //2nd input
.b(npc), //selection input
.sel(EX_MEM_PCSrc)); //output wire
//instance of program counter
pc_mod pc_mod1 (.PC(PC), //wire
.npc(npc_mux)); //wire
//instance of memory
memory memory1 (.data(dataout), //
.addr(PC));
//instance of if_id
if_id if_id1 (.instrout(IF_ID_instr),
.npcout(IF_ID_npc),
.instr(dataout),
.npc(npc));
//instance of incrementer
incrementer incrementer1 (.pcout(npc),
.pcin(PC));
//circuit
initial begin
$display("|ime\t PC\t npc\t dataout ot MEM\t +_ID_instr\t IF_ID_npc");
$monitor("%0d\t %0d\t %0d\t %h\t %h\t %0d", $time, PC, npc, dataout,
IF_ID_instr, IF_ID_npc);
#20 $finish;
end
endmodule// I_FETCH
