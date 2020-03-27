module BindsTo_0_imem( // @[:@1208.2]
  input         clock, // @[:@1209.4]
  input  [31:0] io_mem_addr, // @[:@1211.4]
  output [31:0] io_mem_out // @[:@1211.4]
);

initial begin
  $readmemh("tests/fib.x", imem.MEM);
end
                      endmodule

bind imem BindsTo_0_imem BindsTo_0_imem_Inst(.*);