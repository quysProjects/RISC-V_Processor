module inst_memory #(
  parameter int unsigned IMEM_W = 13

) (
  input  logic              clk_i   ,
  input  logic              rst_ni	,
  input  logic [IMEM_W-1:0] addr_i ,
  output logic [31:0]       instr_o
);
  logic [3:0][7:0] imem [2**(IMEM_W-2)-1:0];
  initial begin
    $readmemh("D:/altera/13.0sp1/single_cycle_debug/inst_memory.txt", imem);
  end
  always_comb begin : proc_data
	    instr_o = imem[addr_i[IMEM_W-1:2]][3:0];
  end
endmodule : inst_memory









