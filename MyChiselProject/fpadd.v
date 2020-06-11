module fpadd( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [31:0] io_a, // @[:@6.4]
  input  [31:0] io_b, // @[:@6.4]
  output [23:0] io_mant_a, // @[:@6.4]
  output [23:0] io_mant_b, // @[:@6.4]
  output [7:0]  io_exp_a, // @[:@6.4]
  output [7:0]  io_exp_b, // @[:@6.4]
  output [7:0]  io_exponent, // @[:@6.4]
  output [22:0] io_fract, // @[:@6.4]
  output [31:0] io_s // @[:@6.4]
);
  wire [22:0] _T_33; // @[fpadd.scala 73:31:@18.4]
  wire [22:0] _T_37; // @[fpadd.scala 75:31:@23.4]
  wire [8:0] _T_39; // @[fpadd.scala 79:28:@26.4]
  wire [8:0] _T_40; // @[fpadd.scala 79:28:@27.4]
  wire [7:0] aminusb; // @[fpadd.scala 79:28:@28.4]
  wire [8:0] _T_41; // @[fpadd.scala 80:28:@29.4]
  wire [8:0] _T_42; // @[fpadd.scala 80:28:@30.4]
  wire [7:0] bminusa; // @[fpadd.scala 80:28:@31.4]
  wire  alessb; // @[fpadd.scala 83:17:@33.4]
  wire  _T_49; // @[fpadd.scala 89:27:@41.4]
  wire  _T_51; // @[fpadd.scala 89:27:@42.4]
  wire [7:0] exp_pre; // @[fpadd.scala 89:19:@43.4]
  wire [7:0] shamt; // @[fpadd.scala 90:17:@47.4]
  wire [23:0] _T_60; // @[fpadd.scala 95:47:@51.4]
  wire [23:0] _T_61; // @[fpadd.scala 95:69:@52.4]
  wire [23:0] _T_62; // @[fpadd.scala 95:22:@53.4]
  wire  _T_63; // @[fpadd.scala 96:18:@55.4]
  wire  _T_64; // @[fpadd.scala 96:29:@56.4]
  wire  _T_65; // @[fpadd.scala 96:22:@57.4]
  wire  _T_66; // @[fpadd.scala 96:40:@58.4]
  wire  _T_67; // @[fpadd.scala 96:33:@59.4]
  wire  _T_68; // @[fpadd.scala 96:52:@60.4]
  wire  _T_69; // @[fpadd.scala 96:63:@61.4]
  wire  _T_70; // @[fpadd.scala 96:56:@62.4]
  wire  ovf; // @[fpadd.scala 96:44:@63.4]
  wire  _T_72; // @[fpadd.scala 97:23:@65.4]
  wire  _T_74; // @[fpadd.scala 97:23:@66.4]
  wire [24:0] shiftedval; // @[fpadd.scala 64:26:@10.4 fpadd.scala 95:16:@54.4]
  wire [24:0] shmant; // @[fpadd.scala 97:18:@67.4]
  wire [23:0] _T_80; // @[fpadd.scala 101:18:@71.4]
  wire [24:0] addval; // @[fpadd.scala 65:22:@11.4 fpadd.scala 101:12:@72.4]
  wire [25:0] _T_81; // @[fpadd.scala 102:25:@73.4]
  wire [24:0] addresult; // @[fpadd.scala 102:25:@74.4]
  wire  _T_83; // @[fpadd.scala 103:30:@76.4]
  wire  _T_84; // @[fpadd.scala 103:35:@77.4]
  wire  _T_86; // @[fpadd.scala 103:35:@78.4]
  wire [22:0] _T_87; // @[fpadd.scala 103:50:@79.4]
  wire [22:0] _T_88; // @[fpadd.scala 103:68:@80.4]
  wire [8:0] _T_95; // @[fpadd.scala 104:53:@86.4]
  wire [7:0] _T_96; // @[fpadd.scala 104:53:@87.4]
  wire [8:0] _T_99; // @[Cat.scala 30:58:@90.4]
  wire  _T_103; // @[fpadd.scala 129:11:@113.4]
  wire [23:0] fpaddMessage_shmant; // @[fpadd.scala 69:28:@15.4 fpadd.scala 119:25:@102.4]
  wire [23:0] fpaddMessage_shiftedval; // @[fpadd.scala 69:28:@15.4 fpadd.scala 121:29:@104.4]
  wire [23:0] fpaddMessage_addval; // @[fpadd.scala 69:28:@15.4 fpadd.scala 122:25:@105.4]
  assign _T_33 = io_a[22:0]; // @[fpadd.scala 73:31:@18.4]
  assign _T_37 = io_b[22:0]; // @[fpadd.scala 75:31:@23.4]
  assign _T_39 = io_exp_a - io_exp_b; // @[fpadd.scala 79:28:@26.4]
  assign _T_40 = $unsigned(_T_39); // @[fpadd.scala 79:28:@27.4]
  assign aminusb = _T_40[7:0]; // @[fpadd.scala 79:28:@28.4]
  assign _T_41 = io_exp_b - io_exp_a; // @[fpadd.scala 80:28:@29.4]
  assign _T_42 = $unsigned(_T_41); // @[fpadd.scala 80:28:@30.4]
  assign bminusa = _T_42[7:0]; // @[fpadd.scala 80:28:@31.4]
  assign alessb = aminusb[7]; // @[fpadd.scala 83:17:@33.4]
  assign _T_49 = ~ alessb; // @[fpadd.scala 89:27:@41.4]
  assign _T_51 = _T_49 == 1'h0; // @[fpadd.scala 89:27:@42.4]
  assign exp_pre = _T_51 ? io_exp_b : io_exp_a; // @[fpadd.scala 89:19:@43.4]
  assign shamt = _T_51 ? bminusa : aminusb; // @[fpadd.scala 90:17:@47.4]
  assign _T_60 = io_mant_a >> shamt; // @[fpadd.scala 95:47:@51.4]
  assign _T_61 = io_mant_b >> shamt; // @[fpadd.scala 95:69:@52.4]
  assign _T_62 = _T_51 ? _T_60 : _T_61; // @[fpadd.scala 95:22:@53.4]
  assign _T_63 = shamt[7]; // @[fpadd.scala 96:18:@55.4]
  assign _T_64 = shamt[6]; // @[fpadd.scala 96:29:@56.4]
  assign _T_65 = _T_63 | _T_64; // @[fpadd.scala 96:22:@57.4]
  assign _T_66 = shamt[5]; // @[fpadd.scala 96:40:@58.4]
  assign _T_67 = _T_65 | _T_66; // @[fpadd.scala 96:33:@59.4]
  assign _T_68 = shamt[4]; // @[fpadd.scala 96:52:@60.4]
  assign _T_69 = shamt[3]; // @[fpadd.scala 96:63:@61.4]
  assign _T_70 = _T_68 & _T_69; // @[fpadd.scala 96:56:@62.4]
  assign ovf = _T_67 | _T_70; // @[fpadd.scala 96:44:@63.4]
  assign _T_72 = ~ ovf; // @[fpadd.scala 97:23:@65.4]
  assign _T_74 = _T_72 == 1'h0; // @[fpadd.scala 97:23:@66.4]
  assign shiftedval = {{1'd0}, _T_62}; // @[fpadd.scala 64:26:@10.4 fpadd.scala 95:16:@54.4]
  assign shmant = _T_74 ? 25'h0 : shiftedval; // @[fpadd.scala 97:18:@67.4]
  assign _T_80 = _T_51 ? io_mant_b : io_mant_a; // @[fpadd.scala 101:18:@71.4]
  assign addval = {{1'd0}, _T_80}; // @[fpadd.scala 65:22:@11.4 fpadd.scala 101:12:@72.4]
  assign _T_81 = shmant + addval; // @[fpadd.scala 102:25:@73.4]
  assign addresult = shmant + addval; // @[fpadd.scala 102:25:@74.4]
  assign _T_83 = addresult[24]; // @[fpadd.scala 103:30:@76.4]
  assign _T_84 = ~ _T_83; // @[fpadd.scala 103:35:@77.4]
  assign _T_86 = _T_84 == 1'h0; // @[fpadd.scala 103:35:@78.4]
  assign _T_87 = addresult[23:1]; // @[fpadd.scala 103:50:@79.4]
  assign _T_88 = addresult[22:0]; // @[fpadd.scala 103:68:@80.4]
  assign _T_95 = exp_pre + 8'h1; // @[fpadd.scala 104:53:@86.4]
  assign _T_96 = exp_pre + 8'h1; // @[fpadd.scala 104:53:@87.4]
  assign _T_99 = {1'h0,io_exponent}; // @[Cat.scala 30:58:@90.4]
  assign _T_103 = reset == 1'h0; // @[fpadd.scala 129:11:@113.4]
  assign fpaddMessage_shmant = shmant[23:0]; // @[fpadd.scala 69:28:@15.4 fpadd.scala 119:25:@102.4]
  assign fpaddMessage_shiftedval = shiftedval[23:0]; // @[fpadd.scala 69:28:@15.4 fpadd.scala 121:29:@104.4]
  assign fpaddMessage_addval = addval[23:0]; // @[fpadd.scala 69:28:@15.4 fpadd.scala 122:25:@105.4]
  assign io_mant_a = {1'h1,_T_33}; // @[fpadd.scala 73:15:@20.4]
  assign io_mant_b = {1'h1,_T_37}; // @[fpadd.scala 75:15:@25.4]
  assign io_exp_a = io_a[30:23]; // @[fpadd.scala 72:14:@17.4]
  assign io_exp_b = io_b[30:23]; // @[fpadd.scala 74:14:@22.4]
  assign io_exponent = _T_86 ? _T_96 : exp_pre; // @[fpadd.scala 104:17:@89.4]
  assign io_fract = _T_86 ? _T_87 : _T_88; // @[fpadd.scala 103:14:@82.4]
  assign io_s = {_T_99,io_fract}; // @[fpadd.scala 108:10:@92.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_103) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|fpadd Module:\n|  a          : 0x%x\n|  b          : 0x%x\n|  mant_a     : b%b\n|  mant_b     : b%b\n|  exp_a      : b%b\n|  exp_b      : b%b\n|  aminusb    : b%b\n|  bminusa    : b%b\n|  alessb     : b%b\n|  exp_pre    : b%b\n|  shamt      : b%b\n|  shiftedval : b%b\n|  ovf        : b%b\n|  shmant     : 0x%x\n|  addval     : 0x%x\n|  addresult  : 0x%x\n|  exponent   : b%b\n|  fract      : b%b\n|  s          : 0x%x\n|___________________________\n",io_a,io_b,io_mant_a,io_mant_b,io_exp_a,io_exp_b,fpaddMessage_shmant,shamt,alessb,exp_pre,shamt,fpaddMessage_shiftedval,ovf,fpaddMessage_shmant,fpaddMessage_addval,addresult,io_exponent,io_fract,io_s); // @[fpadd.scala 129:11:@115.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
