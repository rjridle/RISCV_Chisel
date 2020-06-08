module printingExample( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [31:0] io_a, // @[:@6.4]
  input  [31:0] io_b, // @[:@6.4]
  output [31:0] io_out // @[:@6.4]
);
  wire [31:0] and$; // @[printingExample.scala 13:17:@10.4]
  wire [32:0] _T_14; // @[printingExample.scala 14:20:@12.4]
  wire  _T_18; // @[printingExample.scala 17:11:@17.4]
  assign and$ = io_a & io_b; // @[printingExample.scala 13:17:@10.4]
  assign _T_14 = io_a + io_b; // @[printingExample.scala 14:20:@12.4]
  assign _T_18 = reset == 1'h0; // @[printingExample.scala 17:11:@17.4]
  assign io_out = io_a + io_b; // @[printingExample.scala 14:12:@14.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_18) begin
          $fwrite(32'h80000002,"and = 0x%x\n",and$); // @[printingExample.scala 17:11:@19.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
