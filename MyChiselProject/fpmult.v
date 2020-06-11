module fpmult( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [31:0] io_a, // @[:@6.4]
  input  [31:0] io_b, // @[:@6.4]
  output [31:0] io_m // @[:@6.4]
);
  wire [7:0] exp_a; // @[fpmult.scala 26:18:@16.4]
  wire [22:0] _T_21; // @[fpmult.scala 27:28:@18.4]
  wire [23:0] mant_a; // @[Cat.scala 30:58:@19.4]
  wire [7:0] exp_b; // @[fpmult.scala 28:18:@21.4]
  wire [22:0] _T_25; // @[fpmult.scala 29:28:@23.4]
  wire [23:0] mant_b; // @[Cat.scala 30:58:@24.4]
  wire [47:0] result; // @[fpmult.scala 30:22:@26.4]
  wire  _T_28; // @[fpmult.scala 31:24:@28.4]
  wire  _T_29; // @[fpmult.scala 31:29:@29.4]
  wire  _T_31; // @[fpmult.scala 31:29:@30.4]
  wire [22:0] _T_32; // @[fpmult.scala 31:41:@31.4]
  wire [22:0] _T_33; // @[fpmult.scala 31:56:@32.4]
  wire [22:0] fract; // @[fpmult.scala 31:17:@33.4]
  wire [8:0] _T_39; // @[fpmult.scala 32:46:@38.4]
  wire [7:0] _T_40; // @[fpmult.scala 32:46:@39.4]
  wire [8:0] _T_42; // @[fpmult.scala 32:55:@40.4]
  wire [8:0] _T_43; // @[fpmult.scala 32:55:@41.4]
  wire [7:0] _T_44; // @[fpmult.scala 32:55:@42.4]
  wire [8:0] _T_48; // @[fpmult.scala 32:82:@45.4]
  wire [8:0] _T_49; // @[fpmult.scala 32:82:@46.4]
  wire [7:0] _T_50; // @[fpmult.scala 32:82:@47.4]
  wire [7:0] exponent; // @[fpmult.scala 32:20:@48.4]
  wire [8:0] _T_53; // @[Cat.scala 30:58:@50.4]
  wire  _T_57; // @[fpmult.scala 45:11:@64.4]
  assign exp_a = io_a[30:23]; // @[fpmult.scala 26:18:@16.4]
  assign _T_21 = io_a[22:0]; // @[fpmult.scala 27:28:@18.4]
  assign mant_a = {1'h1,_T_21}; // @[Cat.scala 30:58:@19.4]
  assign exp_b = io_b[30:23]; // @[fpmult.scala 28:18:@21.4]
  assign _T_25 = io_b[22:0]; // @[fpmult.scala 29:28:@23.4]
  assign mant_b = {1'h1,_T_25}; // @[Cat.scala 30:58:@24.4]
  assign result = mant_a * mant_b; // @[fpmult.scala 30:22:@26.4]
  assign _T_28 = result[47]; // @[fpmult.scala 31:24:@28.4]
  assign _T_29 = ~ _T_28; // @[fpmult.scala 31:29:@29.4]
  assign _T_31 = _T_29 == 1'h0; // @[fpmult.scala 31:29:@30.4]
  assign _T_32 = result[46:24]; // @[fpmult.scala 31:41:@31.4]
  assign _T_33 = result[45:23]; // @[fpmult.scala 31:56:@32.4]
  assign fract = _T_31 ? _T_32 : _T_33; // @[fpmult.scala 31:17:@33.4]
  assign _T_39 = exp_a + exp_b; // @[fpmult.scala 32:46:@38.4]
  assign _T_40 = exp_a + exp_b; // @[fpmult.scala 32:46:@39.4]
  assign _T_42 = _T_40 - 8'h7e; // @[fpmult.scala 32:55:@40.4]
  assign _T_43 = $unsigned(_T_42); // @[fpmult.scala 32:55:@41.4]
  assign _T_44 = _T_43[7:0]; // @[fpmult.scala 32:55:@42.4]
  assign _T_48 = _T_40 - 8'h7f; // @[fpmult.scala 32:82:@45.4]
  assign _T_49 = $unsigned(_T_48); // @[fpmult.scala 32:82:@46.4]
  assign _T_50 = _T_49[7:0]; // @[fpmult.scala 32:82:@47.4]
  assign exponent = _T_31 ? _T_44 : _T_50; // @[fpmult.scala 32:20:@48.4]
  assign _T_53 = {1'h0,exponent}; // @[Cat.scala 30:58:@50.4]
  assign _T_57 = reset == 1'h0; // @[fpmult.scala 45:11:@64.4]
  assign io_m = {_T_53,fract}; // @[fpmult.scala 33:10:@52.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_57) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|fpmult Module:\n|  a          : 0x%x\n|  b          : 0x%x\n|  mant_a     : 0x%x\n|  mant_b     : 0x%x\n|  exp_a      : 0x%x\n|  exp_b      : 0x%x\n|  result     : 0x%x\n|  exponent   : 0x%x\n|  fract      : 0x%x\n|  m          : 0x%x\n|___________________________\n",io_a,io_b,mant_a,mant_b,exp_a,exp_b,result,exponent,fract,io_m); // @[fpmult.scala 45:11:@66.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
