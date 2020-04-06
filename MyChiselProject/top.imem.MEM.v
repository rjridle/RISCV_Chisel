module BindsTo_0_imem( // @[:@1299.2]
  input         clock, // @[:@1300.4]
  input  [31:0] io_mem_addr, // @[:@1302.4]
  output [31:0] io_mem_out // @[:@1302.4]
);

initial begin
  $readmemh("tests/arithtest.x", imem.MEM);
end
                      endmodule

bind imem BindsTo_0_imem BindsTo_0_imem_Inst(.*);