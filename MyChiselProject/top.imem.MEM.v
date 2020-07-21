module BindsTo_0_imem( // @[:@917.2]
  input         clock, // @[:@918.4]
  input  [31:0] io_instAddress, // @[:@920.4]
  output [31:0] io_inst // @[:@920.4]
);

initial begin
  $readmemh("tests/RV32I_test.x", imem.MEM);
end
                      endmodule

bind imem BindsTo_0_imem BindsTo_0_imem_Inst(.*);