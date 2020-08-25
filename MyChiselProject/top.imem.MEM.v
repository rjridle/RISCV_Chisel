module BindsTo_0_imem( // @[:@1120.2]
  input         clock, // @[:@1121.4]
  input  [31:0] io_instAddress, // @[:@1123.4]
  output [31:0] io_inst // @[:@1123.4]
);

initial begin
  $readmemh("tests/RV32I_test.x", imem.MEM);
end
                      endmodule

bind imem BindsTo_0_imem BindsTo_0_imem_Inst(.*);