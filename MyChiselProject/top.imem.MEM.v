module BindsTo_0_imem( // @[:@1223.2]
  input         clock, // @[:@1224.4]
  input  [31:0] io_instAddress, // @[:@1226.4]
  output [31:0] io_inst // @[:@1226.4]
);

initial begin
  $readmemh("tests/arithtest.x", imem.MEM);
end
                      endmodule

bind imem BindsTo_0_imem BindsTo_0_imem_Inst(.*);