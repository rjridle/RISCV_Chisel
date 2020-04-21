module extend( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [11:0] io_instr12, // @[:@6.4]
  input  [19:0] io_instr20, // @[:@6.4]
  input  [1:0]  io_immSrc, // @[:@6.4]
  output [31:0] io_extImm // @[:@6.4]
);
  wire  _T_15; // @[riscvSingle.scala 154:20:@9.4]
  wire [11:0] _T_16; // @[riscvSingle.scala 155:33:@11.6]
  wire  _T_18; // @[riscvSingle.scala 156:26:@15.6]
  wire [12:0] _T_20; // @[Cat.scala 30:58:@17.8]
  wire [12:0] _T_21; // @[riscvSingle.scala 157:50:@18.8]
  wire  _T_23; // @[riscvSingle.scala 158:26:@22.8]
  wire [20:0] _T_25; // @[Cat.scala 30:58:@24.10]
  wire [20:0] _T_26; // @[riscvSingle.scala 159:50:@25.10]
  wire [20:0] _GEN_0; // @[riscvSingle.scala 158:34:@23.8]
  wire [20:0] _GEN_1; // @[riscvSingle.scala 156:34:@16.6]
  wire [20:0] _GEN_2; // @[riscvSingle.scala 154:28:@10.4]
  wire  _T_30; // @[riscvSingle.scala 167:11:@36.4]
  assign _T_15 = io_immSrc == 2'h0; // @[riscvSingle.scala 154:20:@9.4]
  assign _T_16 = $signed(io_instr12); // @[riscvSingle.scala 155:33:@11.6]
  assign _T_18 = io_immSrc == 2'h1; // @[riscvSingle.scala 156:26:@15.6]
  assign _T_20 = {io_instr12,1'h0}; // @[Cat.scala 30:58:@17.8]
  assign _T_21 = $signed(_T_20); // @[riscvSingle.scala 157:50:@18.8]
  assign _T_23 = io_immSrc == 2'h2; // @[riscvSingle.scala 158:26:@22.8]
  assign _T_25 = {io_instr20,1'h0}; // @[Cat.scala 30:58:@24.10]
  assign _T_26 = $signed(_T_25); // @[riscvSingle.scala 159:50:@25.10]
  assign _GEN_0 = _T_23 ? $signed(_T_26) : $signed(21'sh0); // @[riscvSingle.scala 158:34:@23.8]
  assign _GEN_1 = _T_18 ? $signed({{8{_T_21[12]}},_T_21}) : $signed(_GEN_0); // @[riscvSingle.scala 156:34:@16.6]
  assign _GEN_2 = _T_15 ? $signed({{9{_T_16[11]}},_T_16}) : $signed(_GEN_1); // @[riscvSingle.scala 154:28:@10.4]
  assign _T_30 = reset == 1'h0; // @[riscvSingle.scala 167:11:@36.4]
  assign io_extImm = {{11{_GEN_2[20]}},_GEN_2}; // @[riscvSingle.scala 155:19:@12.6 riscvSingle.scala 157:19:@19.8 riscvSingle.scala 159:19:@26.10 riscvSingle.scala 161:19:@29.10]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_30) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|extend Module:\n|  instr12     : b%b\n|  instr20     : b%b\n|  immsrc      : b%b\n|  extImm      : 0x%x\n|___________________________\n",io_instr12,io_instr20,io_immSrc,io_extImm); // @[riscvSingle.scala 167:11:@38.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module regfile( // @[:@41.2]
  input         clock, // @[:@42.4]
  input         reset, // @[:@43.4]
  input         io_regWriteEnable, // @[:@44.4]
  input  [4:0]  io_regWriteAddress, // @[:@44.4]
  input  [31:0] io_regWriteData, // @[:@44.4]
  input  [31:0] io_r31, // @[:@44.4]
  input  [4:0]  io_regReadAddress1, // @[:@44.4]
  input  [4:0]  io_regReadAddress2, // @[:@44.4]
  output [31:0] io_regReadData1, // @[:@44.4]
  output [31:0] io_regReadData2 // @[:@44.4]
);
  reg [31:0] rf [0:31]; // @[riscvSingle.scala 625:17:@46.4]
  reg [31:0] _RAND_0;
  wire [31:0] rf__T_39_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_39_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_40_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_40_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_45_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_45_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_46_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_46_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_57_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_57_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_67_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_67_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_77_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_77_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_87_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_87_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_97_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_97_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_107_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_107_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_117_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_117_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_127_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_127_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_137_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_137_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_147_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_147_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_157_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_157_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_167_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_167_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_177_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_177_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_187_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_187_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_197_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_197_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_207_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_207_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_217_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_217_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_227_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_227_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_237_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_237_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_247_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_247_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_257_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_257_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_267_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_267_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_277_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_277_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_287_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_287_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_297_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_297_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_307_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_307_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_317_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_317_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_327_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_327_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_337_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_337_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_347_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_347_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_357_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_357_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_367_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_367_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_32_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_32_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire  rf__T_32_mask; // @[riscvSingle.scala 625:17:@46.4]
  wire  rf__T_32_en; // @[riscvSingle.scala 625:17:@46.4]
  wire [31:0] rf__T_34_data; // @[riscvSingle.scala 625:17:@46.4]
  wire [4:0] rf__T_34_addr; // @[riscvSingle.scala 625:17:@46.4]
  wire  rf__T_34_mask; // @[riscvSingle.scala 625:17:@46.4]
  wire  rf__T_34_en; // @[riscvSingle.scala 625:17:@46.4]
  wire  _T_24; // @[riscvSingle.scala 628:28:@48.4]
  wire  _T_26; // @[riscvSingle.scala 628:28:@49.4]
  wire  _T_28; // @[riscvSingle.scala 628:57:@50.4]
  wire  _T_30; // @[riscvSingle.scala 628:36:@51.4]
  wire  _T_31; // @[riscvSingle.scala 628:33:@52.4]
  wire  _T_37; // @[riscvSingle.scala 634:48:@61.4]
  wire  _T_43; // @[riscvSingle.scala 635:48:@67.4]
  wire  _T_50; // @[riscvSingle.scala 645:11:@82.4]
  wire [31:0] _T_55; // @[riscvSingle.scala 650:26:@91.4 riscvSingle.scala 651:16:@93.4]
  wire [31:0] _T_65; // @[riscvSingle.scala 650:26:@104.4 riscvSingle.scala 651:16:@106.4]
  wire [31:0] _T_75; // @[riscvSingle.scala 650:26:@117.4 riscvSingle.scala 651:16:@119.4]
  wire [31:0] _T_85; // @[riscvSingle.scala 650:26:@130.4 riscvSingle.scala 651:16:@132.4]
  wire [31:0] _T_95; // @[riscvSingle.scala 650:26:@143.4 riscvSingle.scala 651:16:@145.4]
  wire [31:0] _T_105; // @[riscvSingle.scala 650:26:@156.4 riscvSingle.scala 651:16:@158.4]
  wire [31:0] _T_115; // @[riscvSingle.scala 650:26:@169.4 riscvSingle.scala 651:16:@171.4]
  wire [31:0] _T_125; // @[riscvSingle.scala 650:26:@182.4 riscvSingle.scala 651:16:@184.4]
  wire [31:0] _T_135; // @[riscvSingle.scala 650:26:@195.4 riscvSingle.scala 651:16:@197.4]
  wire [31:0] _T_145; // @[riscvSingle.scala 650:26:@208.4 riscvSingle.scala 651:16:@210.4]
  wire [31:0] _T_155; // @[riscvSingle.scala 650:26:@221.4 riscvSingle.scala 651:16:@223.4]
  wire [31:0] _T_165; // @[riscvSingle.scala 650:26:@234.4 riscvSingle.scala 651:16:@236.4]
  wire [31:0] _T_175; // @[riscvSingle.scala 650:26:@247.4 riscvSingle.scala 651:16:@249.4]
  wire [31:0] _T_185; // @[riscvSingle.scala 650:26:@260.4 riscvSingle.scala 651:16:@262.4]
  wire [31:0] _T_195; // @[riscvSingle.scala 650:26:@273.4 riscvSingle.scala 651:16:@275.4]
  wire [31:0] _T_205; // @[riscvSingle.scala 650:26:@286.4 riscvSingle.scala 651:16:@288.4]
  wire [31:0] _T_215; // @[riscvSingle.scala 650:26:@299.4 riscvSingle.scala 651:16:@301.4]
  wire [31:0] _T_225; // @[riscvSingle.scala 650:26:@312.4 riscvSingle.scala 651:16:@314.4]
  wire [31:0] _T_235; // @[riscvSingle.scala 650:26:@325.4 riscvSingle.scala 651:16:@327.4]
  wire [31:0] _T_245; // @[riscvSingle.scala 650:26:@338.4 riscvSingle.scala 651:16:@340.4]
  wire [31:0] _T_255; // @[riscvSingle.scala 650:26:@351.4 riscvSingle.scala 651:16:@353.4]
  wire [31:0] _T_265; // @[riscvSingle.scala 650:26:@364.4 riscvSingle.scala 651:16:@366.4]
  wire [31:0] _T_275; // @[riscvSingle.scala 650:26:@377.4 riscvSingle.scala 651:16:@379.4]
  wire [31:0] _T_285; // @[riscvSingle.scala 650:26:@390.4 riscvSingle.scala 651:16:@392.4]
  wire [31:0] _T_295; // @[riscvSingle.scala 650:26:@403.4 riscvSingle.scala 651:16:@405.4]
  wire [31:0] _T_305; // @[riscvSingle.scala 650:26:@416.4 riscvSingle.scala 651:16:@418.4]
  wire [31:0] _T_315; // @[riscvSingle.scala 650:26:@429.4 riscvSingle.scala 651:16:@431.4]
  wire [31:0] _T_325; // @[riscvSingle.scala 650:26:@442.4 riscvSingle.scala 651:16:@444.4]
  wire [31:0] _T_335; // @[riscvSingle.scala 650:26:@455.4 riscvSingle.scala 651:16:@457.4]
  wire [31:0] _T_345; // @[riscvSingle.scala 650:26:@468.4 riscvSingle.scala 651:16:@470.4]
  wire [31:0] _T_355; // @[riscvSingle.scala 650:26:@481.4 riscvSingle.scala 651:16:@483.4]
  wire [31:0] _T_365; // @[riscvSingle.scala 650:26:@494.4 riscvSingle.scala 651:16:@496.4]
  assign rf__T_39_addr = io_r31[4:0];
  assign rf__T_39_data = rf[rf__T_39_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_40_addr = io_regReadAddress1;
  assign rf__T_40_data = rf[rf__T_40_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_45_addr = io_r31[4:0];
  assign rf__T_45_data = rf[rf__T_45_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_46_addr = io_regReadAddress2;
  assign rf__T_46_data = rf[rf__T_46_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_57_addr = 5'h0;
  assign rf__T_57_data = rf[rf__T_57_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_67_addr = 5'h1;
  assign rf__T_67_data = rf[rf__T_67_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_77_addr = 5'h2;
  assign rf__T_77_data = rf[rf__T_77_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_87_addr = 5'h3;
  assign rf__T_87_data = rf[rf__T_87_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_97_addr = 5'h4;
  assign rf__T_97_data = rf[rf__T_97_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_107_addr = 5'h5;
  assign rf__T_107_data = rf[rf__T_107_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_117_addr = 5'h6;
  assign rf__T_117_data = rf[rf__T_117_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_127_addr = 5'h7;
  assign rf__T_127_data = rf[rf__T_127_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_137_addr = 5'h8;
  assign rf__T_137_data = rf[rf__T_137_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_147_addr = 5'h9;
  assign rf__T_147_data = rf[rf__T_147_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_157_addr = 5'ha;
  assign rf__T_157_data = rf[rf__T_157_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_167_addr = 5'hb;
  assign rf__T_167_data = rf[rf__T_167_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_177_addr = 5'hc;
  assign rf__T_177_data = rf[rf__T_177_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_187_addr = 5'hd;
  assign rf__T_187_data = rf[rf__T_187_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_197_addr = 5'he;
  assign rf__T_197_data = rf[rf__T_197_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_207_addr = 5'hf;
  assign rf__T_207_data = rf[rf__T_207_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_217_addr = 5'h10;
  assign rf__T_217_data = rf[rf__T_217_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_227_addr = 5'h11;
  assign rf__T_227_data = rf[rf__T_227_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_237_addr = 5'h12;
  assign rf__T_237_data = rf[rf__T_237_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_247_addr = 5'h13;
  assign rf__T_247_data = rf[rf__T_247_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_257_addr = 5'h14;
  assign rf__T_257_data = rf[rf__T_257_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_267_addr = 5'h15;
  assign rf__T_267_data = rf[rf__T_267_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_277_addr = 5'h16;
  assign rf__T_277_data = rf[rf__T_277_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_287_addr = 5'h17;
  assign rf__T_287_data = rf[rf__T_287_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_297_addr = 5'h18;
  assign rf__T_297_data = rf[rf__T_297_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_307_addr = 5'h19;
  assign rf__T_307_data = rf[rf__T_307_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_317_addr = 5'h1a;
  assign rf__T_317_data = rf[rf__T_317_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_327_addr = 5'h1b;
  assign rf__T_327_data = rf[rf__T_327_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_337_addr = 5'h1c;
  assign rf__T_337_data = rf[rf__T_337_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_347_addr = 5'h1d;
  assign rf__T_347_data = rf[rf__T_347_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_357_addr = 5'h1e;
  assign rf__T_357_data = rf[rf__T_357_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_367_addr = 5'h1f;
  assign rf__T_367_data = rf[rf__T_367_addr]; // @[riscvSingle.scala 625:17:@46.4]
  assign rf__T_32_data = io_regWriteData;
  assign rf__T_32_addr = io_regWriteAddress;
  assign rf__T_32_mask = 1'h1;
  assign rf__T_32_en = _T_26 & _T_30;
  assign rf__T_34_data = 32'sh0;
  assign rf__T_34_addr = 5'h0;
  assign rf__T_34_mask = 1'h1;
  assign rf__T_34_en = _T_31 ? 1'h0 : 1'h1;
  assign _T_24 = ~ io_regWriteEnable; // @[riscvSingle.scala 628:28:@48.4]
  assign _T_26 = _T_24 == 1'h0; // @[riscvSingle.scala 628:28:@49.4]
  assign _T_28 = io_regWriteAddress == 5'h0; // @[riscvSingle.scala 628:57:@50.4]
  assign _T_30 = _T_28 == 1'h0; // @[riscvSingle.scala 628:36:@51.4]
  assign _T_31 = _T_26 & _T_30; // @[riscvSingle.scala 628:33:@52.4]
  assign _T_37 = io_regReadAddress1 == 5'h1f; // @[riscvSingle.scala 634:48:@61.4]
  assign _T_43 = io_regReadAddress2 == 5'h1f; // @[riscvSingle.scala 635:48:@67.4]
  assign _T_50 = reset == 1'h0; // @[riscvSingle.scala 645:11:@82.4]
  assign _T_55 = rf__T_57_data; // @[riscvSingle.scala 650:26:@91.4 riscvSingle.scala 651:16:@93.4]
  assign _T_65 = rf__T_67_data; // @[riscvSingle.scala 650:26:@104.4 riscvSingle.scala 651:16:@106.4]
  assign _T_75 = rf__T_77_data; // @[riscvSingle.scala 650:26:@117.4 riscvSingle.scala 651:16:@119.4]
  assign _T_85 = rf__T_87_data; // @[riscvSingle.scala 650:26:@130.4 riscvSingle.scala 651:16:@132.4]
  assign _T_95 = rf__T_97_data; // @[riscvSingle.scala 650:26:@143.4 riscvSingle.scala 651:16:@145.4]
  assign _T_105 = rf__T_107_data; // @[riscvSingle.scala 650:26:@156.4 riscvSingle.scala 651:16:@158.4]
  assign _T_115 = rf__T_117_data; // @[riscvSingle.scala 650:26:@169.4 riscvSingle.scala 651:16:@171.4]
  assign _T_125 = rf__T_127_data; // @[riscvSingle.scala 650:26:@182.4 riscvSingle.scala 651:16:@184.4]
  assign _T_135 = rf__T_137_data; // @[riscvSingle.scala 650:26:@195.4 riscvSingle.scala 651:16:@197.4]
  assign _T_145 = rf__T_147_data; // @[riscvSingle.scala 650:26:@208.4 riscvSingle.scala 651:16:@210.4]
  assign _T_155 = rf__T_157_data; // @[riscvSingle.scala 650:26:@221.4 riscvSingle.scala 651:16:@223.4]
  assign _T_165 = rf__T_167_data; // @[riscvSingle.scala 650:26:@234.4 riscvSingle.scala 651:16:@236.4]
  assign _T_175 = rf__T_177_data; // @[riscvSingle.scala 650:26:@247.4 riscvSingle.scala 651:16:@249.4]
  assign _T_185 = rf__T_187_data; // @[riscvSingle.scala 650:26:@260.4 riscvSingle.scala 651:16:@262.4]
  assign _T_195 = rf__T_197_data; // @[riscvSingle.scala 650:26:@273.4 riscvSingle.scala 651:16:@275.4]
  assign _T_205 = rf__T_207_data; // @[riscvSingle.scala 650:26:@286.4 riscvSingle.scala 651:16:@288.4]
  assign _T_215 = rf__T_217_data; // @[riscvSingle.scala 650:26:@299.4 riscvSingle.scala 651:16:@301.4]
  assign _T_225 = rf__T_227_data; // @[riscvSingle.scala 650:26:@312.4 riscvSingle.scala 651:16:@314.4]
  assign _T_235 = rf__T_237_data; // @[riscvSingle.scala 650:26:@325.4 riscvSingle.scala 651:16:@327.4]
  assign _T_245 = rf__T_247_data; // @[riscvSingle.scala 650:26:@338.4 riscvSingle.scala 651:16:@340.4]
  assign _T_255 = rf__T_257_data; // @[riscvSingle.scala 650:26:@351.4 riscvSingle.scala 651:16:@353.4]
  assign _T_265 = rf__T_267_data; // @[riscvSingle.scala 650:26:@364.4 riscvSingle.scala 651:16:@366.4]
  assign _T_275 = rf__T_277_data; // @[riscvSingle.scala 650:26:@377.4 riscvSingle.scala 651:16:@379.4]
  assign _T_285 = rf__T_287_data; // @[riscvSingle.scala 650:26:@390.4 riscvSingle.scala 651:16:@392.4]
  assign _T_295 = rf__T_297_data; // @[riscvSingle.scala 650:26:@403.4 riscvSingle.scala 651:16:@405.4]
  assign _T_305 = rf__T_307_data; // @[riscvSingle.scala 650:26:@416.4 riscvSingle.scala 651:16:@418.4]
  assign _T_315 = rf__T_317_data; // @[riscvSingle.scala 650:26:@429.4 riscvSingle.scala 651:16:@431.4]
  assign _T_325 = rf__T_327_data; // @[riscvSingle.scala 650:26:@442.4 riscvSingle.scala 651:16:@444.4]
  assign _T_335 = rf__T_337_data; // @[riscvSingle.scala 650:26:@455.4 riscvSingle.scala 651:16:@457.4]
  assign _T_345 = rf__T_347_data; // @[riscvSingle.scala 650:26:@468.4 riscvSingle.scala 651:16:@470.4]
  assign _T_355 = rf__T_357_data; // @[riscvSingle.scala 650:26:@481.4 riscvSingle.scala 651:16:@483.4]
  assign _T_365 = rf__T_367_data; // @[riscvSingle.scala 650:26:@494.4 riscvSingle.scala 651:16:@496.4]
  assign io_regReadData1 = _T_37 ? $signed(rf__T_39_data) : $signed(rf__T_40_data); // @[riscvSingle.scala 634:21:@66.4]
  assign io_regReadData2 = _T_43 ? $signed(rf__T_45_data) : $signed(rf__T_46_data); // @[riscvSingle.scala 635:21:@72.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    rf[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(rf__T_32_en & rf__T_32_mask) begin
      rf[rf__T_32_addr] <= rf__T_32_data; // @[riscvSingle.scala 625:17:@46.4]
    end
    if(rf__T_34_en & rf__T_34_mask) begin
      rf[rf__T_34_addr] <= rf__T_34_data; // @[riscvSingle.scala 625:17:@46.4]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|regfile Module:\n|  regWriteEnable  : b%b\n|  regReadAddress1 : b%b\n|  regReadAddress2 : b%b\n|  regWriteAddress : b%b\n|  regWriteData    : 0x%x\n|  r31             : 0x%x\n|  regReadData1    : 0x%x\n|  regReadData2    : 0x%x\n|___________________________\n",io_regWriteEnable,io_regReadAddress1,io_regReadAddress2,io_regWriteAddress,io_regWriteData,io_r31,io_regReadData1,io_regReadData2); // @[riscvSingle.scala 645:11:@84.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n"); // @[riscvSingle.scala 648:11:@89.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(0) = "); // @[riscvSingle.scala 652:15:@97.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_55); // @[riscvSingle.scala 653:15:@102.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(1) = "); // @[riscvSingle.scala 652:15:@110.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_65); // @[riscvSingle.scala 653:15:@115.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(2) = "); // @[riscvSingle.scala 652:15:@123.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_75); // @[riscvSingle.scala 653:15:@128.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(3) = "); // @[riscvSingle.scala 652:15:@136.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_85); // @[riscvSingle.scala 653:15:@141.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(4) = "); // @[riscvSingle.scala 652:15:@149.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_95); // @[riscvSingle.scala 653:15:@154.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(5) = "); // @[riscvSingle.scala 652:15:@162.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_105); // @[riscvSingle.scala 653:15:@167.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(6) = "); // @[riscvSingle.scala 652:15:@175.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_115); // @[riscvSingle.scala 653:15:@180.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(7) = "); // @[riscvSingle.scala 652:15:@188.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_125); // @[riscvSingle.scala 653:15:@193.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(8) = "); // @[riscvSingle.scala 652:15:@201.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_135); // @[riscvSingle.scala 653:15:@206.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(9) = "); // @[riscvSingle.scala 652:15:@214.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_145); // @[riscvSingle.scala 653:15:@219.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(10) = "); // @[riscvSingle.scala 652:15:@227.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_155); // @[riscvSingle.scala 653:15:@232.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(11) = "); // @[riscvSingle.scala 652:15:@240.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_165); // @[riscvSingle.scala 653:15:@245.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(12) = "); // @[riscvSingle.scala 652:15:@253.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_175); // @[riscvSingle.scala 653:15:@258.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(13) = "); // @[riscvSingle.scala 652:15:@266.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_185); // @[riscvSingle.scala 653:15:@271.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(14) = "); // @[riscvSingle.scala 652:15:@279.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_195); // @[riscvSingle.scala 653:15:@284.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(15) = "); // @[riscvSingle.scala 652:15:@292.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_205); // @[riscvSingle.scala 653:15:@297.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(16) = "); // @[riscvSingle.scala 652:15:@305.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_215); // @[riscvSingle.scala 653:15:@310.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(17) = "); // @[riscvSingle.scala 652:15:@318.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_225); // @[riscvSingle.scala 653:15:@323.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(18) = "); // @[riscvSingle.scala 652:15:@331.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_235); // @[riscvSingle.scala 653:15:@336.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(19) = "); // @[riscvSingle.scala 652:15:@344.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_245); // @[riscvSingle.scala 653:15:@349.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(20) = "); // @[riscvSingle.scala 652:15:@357.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_255); // @[riscvSingle.scala 653:15:@362.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(21) = "); // @[riscvSingle.scala 652:15:@370.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_265); // @[riscvSingle.scala 653:15:@375.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(22) = "); // @[riscvSingle.scala 652:15:@383.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_275); // @[riscvSingle.scala 653:15:@388.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(23) = "); // @[riscvSingle.scala 652:15:@396.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_285); // @[riscvSingle.scala 653:15:@401.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(24) = "); // @[riscvSingle.scala 652:15:@409.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_295); // @[riscvSingle.scala 653:15:@414.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(25) = "); // @[riscvSingle.scala 652:15:@422.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_305); // @[riscvSingle.scala 653:15:@427.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(26) = "); // @[riscvSingle.scala 652:15:@435.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_315); // @[riscvSingle.scala 653:15:@440.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(27) = "); // @[riscvSingle.scala 652:15:@448.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_325); // @[riscvSingle.scala 653:15:@453.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(28) = "); // @[riscvSingle.scala 652:15:@461.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_335); // @[riscvSingle.scala 653:15:@466.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(29) = "); // @[riscvSingle.scala 652:15:@474.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_345); // @[riscvSingle.scala 653:15:@479.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(30) = "); // @[riscvSingle.scala 652:15:@487.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_355); // @[riscvSingle.scala 653:15:@492.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"| rf(31) = "); // @[riscvSingle.scala 652:15:@500.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_365); // @[riscvSingle.scala 653:15:@505.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"|___________________________\n"); // @[riscvSingle.scala 655:11:@510.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module alu( // @[:@551.2]
  input         clock, // @[:@552.4]
  input         reset, // @[:@553.4]
  input  [31:0] io_a, // @[:@554.4]
  input  [31:0] io_b, // @[:@554.4]
  input  [3:0]  io_aluControl, // @[:@554.4]
  output [31:0] io_out, // @[:@554.4]
  output        io_zeroFlag, // @[:@554.4]
  output        io_lessThanFlag, // @[:@554.4]
  output        io_greaterThanFlag // @[:@554.4]
);
  wire [32:0] _T_23; // @[riscvSingle.scala 699:17:@558.4]
  wire [31:0] _T_24; // @[riscvSingle.scala 699:17:@559.4]
  wire [31:0] sum; // @[riscvSingle.scala 699:17:@560.4]
  wire  _T_27; // @[riscvSingle.scala 701:25:@562.4]
  wire [31:0] _T_28; // @[riscvSingle.scala 702:24:@564.6]
  wire [31:0] _T_29; // @[riscvSingle.scala 702:24:@565.6]
  wire  _T_31; // @[riscvSingle.scala 703:31:@569.6]
  wire [31:0] _T_32; // @[riscvSingle.scala 704:24:@571.8]
  wire [31:0] _T_33; // @[riscvSingle.scala 704:24:@572.8]
  wire  _T_35; // @[riscvSingle.scala 705:31:@576.8]
  wire  _T_40; // @[riscvSingle.scala 707:31:@584.10]
  wire [11:0] _T_41; // @[riscvSingle.scala 708:31:@586.12]
  wire [4126:0] _GEN_14; // @[riscvSingle.scala 708:24:@587.12]
  wire [4126:0] _T_42; // @[riscvSingle.scala 708:24:@587.12]
  wire  _T_44; // @[riscvSingle.scala 709:31:@591.12]
  wire [31:0] _T_46; // @[riscvSingle.scala 710:24:@594.14]
  wire  _T_48; // @[riscvSingle.scala 711:30:@598.14]
  wire [31:0] _T_49; // @[riscvSingle.scala 712:19:@600.16]
  wire [31:0] _T_50; // @[riscvSingle.scala 712:33:@601.16]
  wire  _T_51; // @[riscvSingle.scala 712:26:@602.16]
  wire [1:0] _GEN_0; // @[riscvSingle.scala 712:40:@603.16]
  wire  _T_55; // @[riscvSingle.scala 717:31:@611.16]
  wire [31:0] _T_56; // @[riscvSingle.scala 718:24:@613.18]
  wire [31:0] _T_57; // @[riscvSingle.scala 718:24:@614.18]
  wire  _T_59; // @[riscvSingle.scala 719:31:@618.18]
  wire  _T_63; // @[riscvSingle.scala 721:30:@625.20]
  wire [63:0] _T_64; // @[riscvSingle.scala 722:24:@627.22]
  wire  _T_66; // @[riscvSingle.scala 723:30:@631.22]
  wire  _T_67; // @[riscvSingle.scala 724:19:@633.24]
  wire [1:0] _GEN_1; // @[riscvSingle.scala 724:26:@634.24]
  wire  _T_71; // @[riscvSingle.scala 729:30:@642.24]
  wire [32:0] _T_72; // @[riscvSingle.scala 730:24:@644.26]
  wire  _T_74; // @[riscvSingle.scala 731:30:@648.26]
  wire [32:0] _T_75; // @[riscvSingle.scala 732:24:@650.28]
  wire [31:0] _T_76; // @[riscvSingle.scala 732:24:@651.28]
  wire [31:0] _T_77; // @[riscvSingle.scala 732:24:@652.28]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 731:39:@649.26]
  wire [32:0] _GEN_3; // @[riscvSingle.scala 729:39:@643.24]
  wire [32:0] _GEN_4; // @[riscvSingle.scala 723:39:@632.22]
  wire [63:0] _GEN_5; // @[riscvSingle.scala 721:39:@626.20]
  wire [63:0] _GEN_6; // @[riscvSingle.scala 719:40:@619.18]
  wire [63:0] _GEN_7; // @[riscvSingle.scala 717:40:@612.16]
  wire [63:0] _GEN_8; // @[riscvSingle.scala 711:38:@599.14]
  wire [63:0] _GEN_9; // @[riscvSingle.scala 709:40:@592.12]
  wire [4126:0] _GEN_10; // @[riscvSingle.scala 707:40:@585.10]
  wire [4126:0] _GEN_11; // @[riscvSingle.scala 705:40:@577.8]
  wire [4126:0] _GEN_12; // @[riscvSingle.scala 703:40:@570.6]
  wire [4126:0] _GEN_13; // @[riscvSingle.scala 701:34:@563.4]
  wire  _T_88; // @[riscvSingle.scala 751:11:@674.4]
  wire [31:0] _GEN_15; // @[riscvSingle.scala 702:16:@566.6 riscvSingle.scala 704:16:@573.8 riscvSingle.scala 706:16:@581.10 riscvSingle.scala 708:16:@588.12 riscvSingle.scala 710:16:@595.14 riscvSingle.scala 713:20:@604.18 riscvSingle.scala 715:20:@607.18 riscvSingle.scala 718:16:@615.18 riscvSingle.scala 720:16:@622.20 riscvSingle.scala 722:16:@628.22 riscvSingle.scala 725:20:@635.26 riscvSingle.scala 727:20:@638.26 riscvSingle.scala 730:16:@645.26 riscvSingle.scala 732:16:@653.28 riscvSingle.scala 734:16:@656.28]
  assign _T_23 = $signed(io_a) + $signed(io_b); // @[riscvSingle.scala 699:17:@558.4]
  assign _T_24 = $signed(io_a) + $signed(io_b); // @[riscvSingle.scala 699:17:@559.4]
  assign sum = $signed(_T_24); // @[riscvSingle.scala 699:17:@560.4]
  assign _T_27 = io_aluControl == 4'h0; // @[riscvSingle.scala 701:25:@562.4]
  assign _T_28 = $signed(io_a) & $signed(io_b); // @[riscvSingle.scala 702:24:@564.6]
  assign _T_29 = $signed(_T_28); // @[riscvSingle.scala 702:24:@565.6]
  assign _T_31 = io_aluControl == 4'h1; // @[riscvSingle.scala 703:31:@569.6]
  assign _T_32 = $signed(io_a) | $signed(io_b); // @[riscvSingle.scala 704:24:@571.8]
  assign _T_33 = $signed(_T_32); // @[riscvSingle.scala 704:24:@572.8]
  assign _T_35 = io_aluControl == 4'h2; // @[riscvSingle.scala 705:31:@576.8]
  assign _T_40 = io_aluControl == 4'h3; // @[riscvSingle.scala 707:31:@584.10]
  assign _T_41 = io_b[11:0]; // @[riscvSingle.scala 708:31:@586.12]
  assign _GEN_14 = {{4095{io_a[31]}},io_a}; // @[riscvSingle.scala 708:24:@587.12]
  assign _T_42 = $signed(_GEN_14) << _T_41; // @[riscvSingle.scala 708:24:@587.12]
  assign _T_44 = io_aluControl == 4'h4; // @[riscvSingle.scala 709:31:@591.12]
  assign _T_46 = $signed(io_a) >>> _T_41; // @[riscvSingle.scala 710:24:@594.14]
  assign _T_48 = io_aluControl == 4'h5; // @[riscvSingle.scala 711:30:@598.14]
  assign _T_49 = $unsigned(io_a); // @[riscvSingle.scala 712:19:@600.16]
  assign _T_50 = $unsigned(io_b); // @[riscvSingle.scala 712:33:@601.16]
  assign _T_51 = _T_49 < _T_50; // @[riscvSingle.scala 712:26:@602.16]
  assign _GEN_0 = _T_51 ? $signed(2'sh1) : $signed(2'sh0); // @[riscvSingle.scala 712:40:@603.16]
  assign _T_55 = io_aluControl == 4'h6; // @[riscvSingle.scala 717:31:@611.16]
  assign _T_56 = $signed(io_a) ^ $signed(io_b); // @[riscvSingle.scala 718:24:@613.18]
  assign _T_57 = $signed(_T_56); // @[riscvSingle.scala 718:24:@614.18]
  assign _T_59 = io_aluControl == 4'h7; // @[riscvSingle.scala 719:31:@618.18]
  assign _T_63 = io_aluControl == 4'h8; // @[riscvSingle.scala 721:30:@625.20]
  assign _T_64 = $signed(io_a) * $signed(io_b); // @[riscvSingle.scala 722:24:@627.22]
  assign _T_66 = io_aluControl == 4'h9; // @[riscvSingle.scala 723:30:@631.22]
  assign _T_67 = $signed(io_a) < $signed(io_b); // @[riscvSingle.scala 724:19:@633.24]
  assign _GEN_1 = _T_67 ? $signed(2'sh1) : $signed(2'sh0); // @[riscvSingle.scala 724:26:@634.24]
  assign _T_71 = io_aluControl == 4'ha; // @[riscvSingle.scala 729:30:@642.24]
  assign _T_72 = $signed(io_a) / $signed(io_b); // @[riscvSingle.scala 730:24:@644.26]
  assign _T_74 = io_aluControl == 4'hc; // @[riscvSingle.scala 731:30:@648.26]
  assign _T_75 = $signed(io_a) - $signed(io_b); // @[riscvSingle.scala 732:24:@650.28]
  assign _T_76 = $signed(io_a) - $signed(io_b); // @[riscvSingle.scala 732:24:@651.28]
  assign _T_77 = $signed(_T_76); // @[riscvSingle.scala 732:24:@652.28]
  assign _GEN_2 = _T_74 ? $signed(_T_77) : $signed(32'sh0); // @[riscvSingle.scala 731:39:@649.26]
  assign _GEN_3 = _T_71 ? $signed(_T_72) : $signed({{1{_GEN_2[31]}},_GEN_2}); // @[riscvSingle.scala 729:39:@643.24]
  assign _GEN_4 = _T_66 ? $signed({{31{_GEN_1[1]}},_GEN_1}) : $signed(_GEN_3); // @[riscvSingle.scala 723:39:@632.22]
  assign _GEN_5 = _T_63 ? $signed(_T_64) : $signed({{31{_GEN_4[32]}},_GEN_4}); // @[riscvSingle.scala 721:39:@626.20]
  assign _GEN_6 = _T_59 ? $signed({{32{_T_46[31]}},_T_46}) : $signed(_GEN_5); // @[riscvSingle.scala 719:40:@619.18]
  assign _GEN_7 = _T_55 ? $signed({{32{_T_57[31]}},_T_57}) : $signed(_GEN_6); // @[riscvSingle.scala 717:40:@612.16]
  assign _GEN_8 = _T_48 ? $signed({{62{_GEN_0[1]}},_GEN_0}) : $signed(_GEN_7); // @[riscvSingle.scala 711:38:@599.14]
  assign _GEN_9 = _T_44 ? $signed({{32{_T_46[31]}},_T_46}) : $signed(_GEN_8); // @[riscvSingle.scala 709:40:@592.12]
  assign _GEN_10 = _T_40 ? $signed(_T_42) : $signed({{4063{_GEN_9[63]}},_GEN_9}); // @[riscvSingle.scala 707:40:@585.10]
  assign _GEN_11 = _T_35 ? $signed({{4095{sum[31]}},sum}) : $signed(_GEN_10); // @[riscvSingle.scala 705:40:@577.8]
  assign _GEN_12 = _T_31 ? $signed({{4095{_T_33[31]}},_T_33}) : $signed(_GEN_11); // @[riscvSingle.scala 703:40:@570.6]
  assign _GEN_13 = _T_27 ? $signed({{4095{_T_29[31]}},_T_29}) : $signed(_GEN_12); // @[riscvSingle.scala 701:34:@563.4]
  assign _T_88 = reset == 1'h0; // @[riscvSingle.scala 751:11:@674.4]
  assign _GEN_15 = _GEN_13[31:0]; // @[riscvSingle.scala 702:16:@566.6 riscvSingle.scala 704:16:@573.8 riscvSingle.scala 706:16:@581.10 riscvSingle.scala 708:16:@588.12 riscvSingle.scala 710:16:@595.14 riscvSingle.scala 713:20:@604.18 riscvSingle.scala 715:20:@607.18 riscvSingle.scala 718:16:@615.18 riscvSingle.scala 720:16:@622.20 riscvSingle.scala 722:16:@628.22 riscvSingle.scala 725:20:@635.26 riscvSingle.scala 727:20:@638.26 riscvSingle.scala 730:16:@645.26 riscvSingle.scala 732:16:@653.28 riscvSingle.scala 734:16:@656.28]
  assign io_out = $signed(_GEN_15); // @[riscvSingle.scala 702:16:@566.6 riscvSingle.scala 704:16:@573.8 riscvSingle.scala 706:16:@581.10 riscvSingle.scala 708:16:@588.12 riscvSingle.scala 710:16:@595.14 riscvSingle.scala 713:20:@604.18 riscvSingle.scala 715:20:@607.18 riscvSingle.scala 718:16:@615.18 riscvSingle.scala 720:16:@622.20 riscvSingle.scala 722:16:@628.22 riscvSingle.scala 725:20:@635.26 riscvSingle.scala 727:20:@638.26 riscvSingle.scala 730:16:@645.26 riscvSingle.scala 732:16:@653.28 riscvSingle.scala 734:16:@656.28]
  assign io_zeroFlag = $signed(sum) == $signed(32'sh0); // @[riscvSingle.scala 738:17:@660.4]
  assign io_lessThanFlag = $signed(io_a) < $signed(io_b); // @[riscvSingle.scala 740:21:@662.4]
  assign io_greaterThanFlag = $signed(io_a) > $signed(io_b); // @[riscvSingle.scala 741:24:@664.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_88) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|alu Module:\n|  a               : 0x%x\n|  b               : 0x%x\n|  sum             : 0x%x\n|  out             : 0x%x\n|  aluControl      : b%b\n|  zeroFlag        : b%b\n|  lessThanFlag    : b%b\n|  greaterThanFlag : b%b\n|___________________________\n",io_a,io_b,sum,io_out,io_aluControl,io_zeroFlag,io_lessThanFlag,io_greaterThanFlag); // @[riscvSingle.scala 751:11:@676.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module datapath( // @[:@679.2]
  input         clock, // @[:@680.4]
  input         reset, // @[:@681.4]
  input  [2:0]  io_regSrc, // @[:@682.4]
  input         io_regWriteEnable, // @[:@682.4]
  input  [1:0]  io_immSrc, // @[:@682.4]
  input         io_aluSrc, // @[:@682.4]
  input         io_pcSrc, // @[:@682.4]
  input  [3:0]  io_aluControl, // @[:@682.4]
  input         io_memToReg, // @[:@682.4]
  input  [31:0] io_instr, // @[:@682.4]
  input  [31:0] io_memReadData, // @[:@682.4]
  input  [1:0]  io_branchSrc, // @[:@682.4]
  output [31:0] io_pc, // @[:@682.4]
  output [31:0] io_memAddress, // @[:@682.4]
  output [31:0] io_memWriteData, // @[:@682.4]
  output        io_zeroFlag, // @[:@682.4]
  output        io_lessThanFlag, // @[:@682.4]
  output        io_greaterThanFlag // @[:@682.4]
);
  wire  ext1_clock; // @[riscvSingle.scala 496:22:@685.4]
  wire  ext1_reset; // @[riscvSingle.scala 496:22:@685.4]
  wire [11:0] ext1_io_instr12; // @[riscvSingle.scala 496:22:@685.4]
  wire [19:0] ext1_io_instr20; // @[riscvSingle.scala 496:22:@685.4]
  wire [1:0] ext1_io_immSrc; // @[riscvSingle.scala 496:22:@685.4]
  wire [31:0] ext1_io_extImm; // @[riscvSingle.scala 496:22:@685.4]
  wire  rf_clock; // @[riscvSingle.scala 497:20:@688.4]
  wire  rf_reset; // @[riscvSingle.scala 497:20:@688.4]
  wire  rf_io_regWriteEnable; // @[riscvSingle.scala 497:20:@688.4]
  wire [4:0] rf_io_regWriteAddress; // @[riscvSingle.scala 497:20:@688.4]
  wire [31:0] rf_io_regWriteData; // @[riscvSingle.scala 497:20:@688.4]
  wire [31:0] rf_io_r31; // @[riscvSingle.scala 497:20:@688.4]
  wire [4:0] rf_io_regReadAddress1; // @[riscvSingle.scala 497:20:@688.4]
  wire [4:0] rf_io_regReadAddress2; // @[riscvSingle.scala 497:20:@688.4]
  wire [31:0] rf_io_regReadData1; // @[riscvSingle.scala 497:20:@688.4]
  wire [31:0] rf_io_regReadData2; // @[riscvSingle.scala 497:20:@688.4]
  wire  ext2_clock; // @[riscvSingle.scala 498:22:@691.4]
  wire  ext2_reset; // @[riscvSingle.scala 498:22:@691.4]
  wire [11:0] ext2_io_instr12; // @[riscvSingle.scala 498:22:@691.4]
  wire [19:0] ext2_io_instr20; // @[riscvSingle.scala 498:22:@691.4]
  wire [1:0] ext2_io_immSrc; // @[riscvSingle.scala 498:22:@691.4]
  wire [31:0] ext2_io_extImm; // @[riscvSingle.scala 498:22:@691.4]
  wire  alu_clock; // @[riscvSingle.scala 499:21:@694.4]
  wire  alu_reset; // @[riscvSingle.scala 499:21:@694.4]
  wire [31:0] alu_io_a; // @[riscvSingle.scala 499:21:@694.4]
  wire [31:0] alu_io_b; // @[riscvSingle.scala 499:21:@694.4]
  wire [3:0] alu_io_aluControl; // @[riscvSingle.scala 499:21:@694.4]
  wire [31:0] alu_io_out; // @[riscvSingle.scala 499:21:@694.4]
  wire  alu_io_zeroFlag; // @[riscvSingle.scala 499:21:@694.4]
  wire  alu_io_lessThanFlag; // @[riscvSingle.scala 499:21:@694.4]
  wire  alu_io_greaterThanFlag; // @[riscvSingle.scala 499:21:@694.4]
  wire  _T_48; // @[riscvSingle.scala 512:30:@707.4]
  wire  _T_49; // @[riscvSingle.scala 512:44:@708.4]
  wire [5:0] _T_50; // @[riscvSingle.scala 512:57:@709.4]
  wire [3:0] _T_51; // @[riscvSingle.scala 512:74:@710.4]
  wire [9:0] _T_52; // @[Cat.scala 30:58:@711.4]
  wire [1:0] _T_53; // @[Cat.scala 30:58:@712.4]
  wire [7:0] _T_56; // @[riscvSingle.scala 513:42:@716.4]
  wire  _T_57; // @[riscvSingle.scala 513:59:@717.4]
  wire [9:0] _T_58; // @[riscvSingle.scala 513:73:@718.4]
  wire [19:0] _T_61; // @[Cat.scala 30:58:@721.4]
  wire [19:0] _T_62; // @[riscvSingle.scala 515:28:@723.4]
  wire [31:0] _T_64; // @[Cat.scala 30:58:@724.4]
  wire [31:0] auiImm; // @[riscvSingle.scala 515:49:@725.4]
  wire  _T_67; // @[riscvSingle.scala 523:28:@735.4]
  wire  _T_69; // @[riscvSingle.scala 523:28:@736.4]
  wire [31:0] extImm; // @[riscvSingle.scala 523:18:@737.4]
  reg [31:0] pcReg; // @[riscvSingle.scala 527:25:@739.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_78; // @[riscvSingle.scala 532:22:@744.4]
  wire [31:0] pcPlus4; // @[riscvSingle.scala 532:22:@745.4]
  wire [32:0] _T_81; // @[riscvSingle.scala 533:24:@747.4]
  wire [31:0] _T_83; // @[riscvSingle.scala 534:40:@750.4]
  wire [31:0] branchExtImm; // @[riscvSingle.scala 504:28:@701.4 riscvSingle.scala 522:18:@734.4]
  wire [32:0] _T_84; // @[riscvSingle.scala 534:30:@751.4]
  wire [31:0] _T_85; // @[riscvSingle.scala 534:30:@752.4]
  wire [31:0] pcBranch; // @[riscvSingle.scala 534:30:@753.4]
  wire [31:0] _T_87; // @[riscvSingle.scala 535:31:@755.4]
  wire [31:0] pcRegBranch; // @[riscvSingle.scala 535:38:@756.4]
  wire  _T_90; // @[riscvSingle.scala 536:31:@758.4]
  wire  _T_91; // @[riscvSingle.scala 536:35:@759.4]
  wire  _T_93; // @[riscvSingle.scala 536:35:@760.4]
  wire  _T_94; // @[riscvSingle.scala 536:70:@761.4]
  wire  _T_95; // @[riscvSingle.scala 536:74:@762.4]
  wire  _T_97; // @[riscvSingle.scala 536:74:@763.4]
  wire [31:0] _T_98; // @[riscvSingle.scala 536:89:@764.4]
  wire [31:0] _T_99; // @[riscvSingle.scala 536:57:@765.4]
  wire [31:0] pcNext; // @[riscvSingle.scala 536:18:@766.4]
  wire [6:0] _T_101; // @[riscvSingle.scala 542:28:@770.4]
  wire [4:0] _T_102; // @[riscvSingle.scala 542:45:@771.4]
  wire [11:0] _T_103; // @[Cat.scala 30:58:@772.4]
  wire [11:0] _T_104; // @[riscvSingle.scala 542:54:@773.4]
  wire  _T_105; // @[riscvSingle.scala 543:40:@775.4]
  wire  _T_107; // @[riscvSingle.scala 543:40:@776.4]
  wire [31:0] memImm; // @[riscvSingle.scala 503:22:@700.4 riscvSingle.scala 542:12:@774.4]
  wire [31:0] _T_108; // @[riscvSingle.scala 543:27:@777.4]
  wire [32:0] _T_109; // @[riscvSingle.scala 543:70:@778.4]
  wire [31:0] _T_110; // @[riscvSingle.scala 543:70:@779.4]
  wire [31:0] _T_111; // @[riscvSingle.scala 543:70:@780.4]
  wire  _T_113; // @[riscvSingle.scala 546:37:@783.4]
  wire  _T_114; // @[riscvSingle.scala 546:41:@784.4]
  wire  _T_116; // @[riscvSingle.scala 546:41:@785.4]
  wire [4:0] _T_118; // @[riscvSingle.scala 546:67:@786.4]
  wire  _T_120; // @[riscvSingle.scala 547:37:@789.4]
  wire  _T_121; // @[riscvSingle.scala 547:41:@790.4]
  wire  _T_123; // @[riscvSingle.scala 547:41:@791.4]
  wire [4:0] _T_125; // @[riscvSingle.scala 547:71:@793.4]
  wire  _T_127; // @[riscvSingle.scala 548:34:@796.4]
  wire  _T_128; // @[riscvSingle.scala 548:38:@797.4]
  wire  _T_130; // @[riscvSingle.scala 548:38:@798.4]
  wire [31:0] _T_135; // @[riscvSingle.scala 548:63:@802.4]
  wire [31:0] regWriteData; // @[riscvSingle.scala 548:24:@803.4]
  wire  _T_143; // @[riscvSingle.scala 559:31:@818.4]
  wire  _T_145; // @[riscvSingle.scala 559:31:@819.4]
  wire  _T_149; // @[riscvSingle.scala 584:11:@846.4]
  wire [31:0] datapathMessage_aluOut; // @[riscvSingle.scala 495:31:@684.4 riscvSingle.scala 570:28:@831.4]
  wire [31:0] datapathMessage_regReadData2; // @[riscvSingle.scala 495:31:@684.4 riscvSingle.scala 574:34:@835.4]
  wire [1:0] datapathMessage_regSrc; // @[riscvSingle.scala 495:31:@684.4 riscvSingle.scala 583:28:@844.4]
  wire [11:0] jumpImm; // @[riscvSingle.scala 501:23:@698.4 riscvSingle.scala 513:13:@722.4]
  extend ext1 ( // @[riscvSingle.scala 496:22:@685.4]
    .clock(ext1_clock),
    .reset(ext1_reset),
    .io_instr12(ext1_io_instr12),
    .io_instr20(ext1_io_instr20),
    .io_immSrc(ext1_io_immSrc),
    .io_extImm(ext1_io_extImm)
  );
  regfile rf ( // @[riscvSingle.scala 497:20:@688.4]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_regWriteEnable(rf_io_regWriteEnable),
    .io_regWriteAddress(rf_io_regWriteAddress),
    .io_regWriteData(rf_io_regWriteData),
    .io_r31(rf_io_r31),
    .io_regReadAddress1(rf_io_regReadAddress1),
    .io_regReadAddress2(rf_io_regReadAddress2),
    .io_regReadData1(rf_io_regReadData1),
    .io_regReadData2(rf_io_regReadData2)
  );
  extend ext2 ( // @[riscvSingle.scala 498:22:@691.4]
    .clock(ext2_clock),
    .reset(ext2_reset),
    .io_instr12(ext2_io_instr12),
    .io_instr20(ext2_io_instr20),
    .io_immSrc(ext2_io_immSrc),
    .io_extImm(ext2_io_extImm)
  );
  alu alu ( // @[riscvSingle.scala 499:21:@694.4]
    .clock(alu_clock),
    .reset(alu_reset),
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_aluControl(alu_io_aluControl),
    .io_out(alu_io_out),
    .io_zeroFlag(alu_io_zeroFlag),
    .io_lessThanFlag(alu_io_lessThanFlag),
    .io_greaterThanFlag(alu_io_greaterThanFlag)
  );
  assign _T_48 = io_instr[31]; // @[riscvSingle.scala 512:30:@707.4]
  assign _T_49 = io_instr[7]; // @[riscvSingle.scala 512:44:@708.4]
  assign _T_50 = io_instr[30:25]; // @[riscvSingle.scala 512:57:@709.4]
  assign _T_51 = io_instr[11:8]; // @[riscvSingle.scala 512:74:@710.4]
  assign _T_52 = {_T_50,_T_51}; // @[Cat.scala 30:58:@711.4]
  assign _T_53 = {_T_48,_T_49}; // @[Cat.scala 30:58:@712.4]
  assign _T_56 = io_instr[19:12]; // @[riscvSingle.scala 513:42:@716.4]
  assign _T_57 = io_instr[20]; // @[riscvSingle.scala 513:59:@717.4]
  assign _T_58 = io_instr[30:21]; // @[riscvSingle.scala 513:73:@718.4]
  assign _T_61 = {_T_48,_T_56,_T_57,_T_58}; // @[Cat.scala 30:58:@721.4]
  assign _T_62 = io_instr[31:12]; // @[riscvSingle.scala 515:28:@723.4]
  assign _T_64 = {_T_62,12'h0}; // @[Cat.scala 30:58:@724.4]
  assign auiImm = $signed(_T_64); // @[riscvSingle.scala 515:49:@725.4]
  assign _T_67 = ~ io_pcSrc; // @[riscvSingle.scala 523:28:@735.4]
  assign _T_69 = _T_67 == 1'h0; // @[riscvSingle.scala 523:28:@736.4]
  assign extImm = _T_69 ? $signed(auiImm) : $signed(ext2_io_extImm); // @[riscvSingle.scala 523:18:@737.4]
  assign _T_78 = pcReg + 32'h4; // @[riscvSingle.scala 532:22:@744.4]
  assign pcPlus4 = pcReg + 32'h4; // @[riscvSingle.scala 532:22:@745.4]
  assign _T_81 = pcPlus4 + 32'h4; // @[riscvSingle.scala 533:24:@747.4]
  assign _T_83 = $signed(pcPlus4); // @[riscvSingle.scala 534:40:@750.4]
  assign branchExtImm = ext1_io_extImm; // @[riscvSingle.scala 504:28:@701.4 riscvSingle.scala 522:18:@734.4]
  assign _T_84 = $signed(branchExtImm) + $signed(_T_83); // @[riscvSingle.scala 534:30:@751.4]
  assign _T_85 = $signed(branchExtImm) + $signed(_T_83); // @[riscvSingle.scala 534:30:@752.4]
  assign pcBranch = $signed(_T_85); // @[riscvSingle.scala 534:30:@753.4]
  assign _T_87 = $unsigned(alu_io_out); // @[riscvSingle.scala 535:31:@755.4]
  assign pcRegBranch = _T_87 & 32'hfffffffe; // @[riscvSingle.scala 535:38:@756.4]
  assign _T_90 = io_branchSrc[1]; // @[riscvSingle.scala 536:31:@758.4]
  assign _T_91 = ~ _T_90; // @[riscvSingle.scala 536:35:@759.4]
  assign _T_93 = _T_91 == 1'h0; // @[riscvSingle.scala 536:35:@760.4]
  assign _T_94 = io_branchSrc[0]; // @[riscvSingle.scala 536:70:@761.4]
  assign _T_95 = ~ _T_94; // @[riscvSingle.scala 536:74:@762.4]
  assign _T_97 = _T_95 == 1'h0; // @[riscvSingle.scala 536:74:@763.4]
  assign _T_98 = $unsigned(pcBranch); // @[riscvSingle.scala 536:89:@764.4]
  assign _T_99 = _T_97 ? _T_98 : pcPlus4; // @[riscvSingle.scala 536:57:@765.4]
  assign pcNext = _T_93 ? pcRegBranch : _T_99; // @[riscvSingle.scala 536:18:@766.4]
  assign _T_101 = io_instr[31:25]; // @[riscvSingle.scala 542:28:@770.4]
  assign _T_102 = io_instr[11:7]; // @[riscvSingle.scala 542:45:@771.4]
  assign _T_103 = {_T_101,_T_102}; // @[Cat.scala 30:58:@772.4]
  assign _T_104 = $signed(_T_103); // @[riscvSingle.scala 542:54:@773.4]
  assign _T_105 = ~ io_memToReg; // @[riscvSingle.scala 543:40:@775.4]
  assign _T_107 = _T_105 == 1'h0; // @[riscvSingle.scala 543:40:@776.4]
  assign memImm = {{20{_T_104[11]}},_T_104}; // @[riscvSingle.scala 503:22:@700.4 riscvSingle.scala 542:12:@774.4]
  assign _T_108 = _T_107 ? $signed(extImm) : $signed(memImm); // @[riscvSingle.scala 543:27:@777.4]
  assign _T_109 = $signed(_T_108) + $signed(rf_io_regReadData1); // @[riscvSingle.scala 543:70:@778.4]
  assign _T_110 = $signed(_T_108) + $signed(rf_io_regReadData1); // @[riscvSingle.scala 543:70:@779.4]
  assign _T_111 = $signed(_T_110); // @[riscvSingle.scala 543:70:@780.4]
  assign _T_113 = io_regSrc[0]; // @[riscvSingle.scala 546:37:@783.4]
  assign _T_114 = ~ _T_113; // @[riscvSingle.scala 546:41:@784.4]
  assign _T_116 = _T_114 == 1'h0; // @[riscvSingle.scala 546:41:@785.4]
  assign _T_118 = io_instr[19:15]; // @[riscvSingle.scala 546:67:@786.4]
  assign _T_120 = io_regSrc[1]; // @[riscvSingle.scala 547:37:@789.4]
  assign _T_121 = ~ _T_120; // @[riscvSingle.scala 547:41:@790.4]
  assign _T_123 = _T_121 == 1'h0; // @[riscvSingle.scala 547:41:@791.4]
  assign _T_125 = io_instr[24:20]; // @[riscvSingle.scala 547:71:@793.4]
  assign _T_127 = io_regSrc[2]; // @[riscvSingle.scala 548:34:@796.4]
  assign _T_128 = ~ _T_127; // @[riscvSingle.scala 548:38:@797.4]
  assign _T_130 = _T_128 == 1'h0; // @[riscvSingle.scala 548:38:@798.4]
  assign _T_135 = _T_107 ? $signed(io_memReadData) : $signed(alu_io_out); // @[riscvSingle.scala 548:63:@802.4]
  assign regWriteData = _T_130 ? $signed(_T_83) : $signed(_T_135); // @[riscvSingle.scala 548:24:@803.4]
  assign _T_143 = ~ io_aluSrc; // @[riscvSingle.scala 559:31:@818.4]
  assign _T_145 = _T_143 == 1'h0; // @[riscvSingle.scala 559:31:@819.4]
  assign _T_149 = reset == 1'h0; // @[riscvSingle.scala 584:11:@846.4]
  assign datapathMessage_aluOut = alu_io_out; // @[riscvSingle.scala 495:31:@684.4 riscvSingle.scala 570:28:@831.4]
  assign datapathMessage_regReadData2 = rf_io_regReadData2; // @[riscvSingle.scala 495:31:@684.4 riscvSingle.scala 574:34:@835.4]
  assign datapathMessage_regSrc = io_regSrc[1:0]; // @[riscvSingle.scala 495:31:@684.4 riscvSingle.scala 583:28:@844.4]
  assign jumpImm = _T_61[11:0]; // @[riscvSingle.scala 501:23:@698.4 riscvSingle.scala 513:13:@722.4]
  assign io_pc = pcReg; // @[riscvSingle.scala 538:11:@769.4]
  assign io_memAddress = $unsigned(_T_111); // @[riscvSingle.scala 543:19:@782.4]
  assign io_memWriteData = rf_io_regReadData2; // @[riscvSingle.scala 556:21:@812.4]
  assign io_zeroFlag = alu_io_zeroFlag; // @[riscvSingle.scala 562:17:@824.4]
  assign io_lessThanFlag = alu_io_lessThanFlag; // @[riscvSingle.scala 563:21:@825.4]
  assign io_greaterThanFlag = alu_io_greaterThanFlag; // @[riscvSingle.scala 564:24:@826.4]
  assign ext1_clock = clock; // @[:@686.4]
  assign ext1_reset = reset; // @[:@687.4]
  assign ext1_io_instr12 = {_T_53,_T_52}; // @[riscvSingle.scala 516:21:@727.4]
  assign ext1_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 517:21:@728.4]
  assign ext1_io_immSrc = io_immSrc; // @[riscvSingle.scala 518:20:@729.4]
  assign rf_clock = clock; // @[:@689.4]
  assign rf_reset = reset; // @[:@690.4]
  assign rf_io_regWriteEnable = io_regWriteEnable; // @[riscvSingle.scala 550:26:@805.4]
  assign rf_io_regWriteAddress = io_instr[11:7]; // @[riscvSingle.scala 553:27:@809.4]
  assign rf_io_regWriteData = _T_130 ? $signed(_T_83) : $signed(_T_135); // @[riscvSingle.scala 554:24:@810.4]
  assign rf_io_r31 = pcPlus4 + 32'h4; // @[riscvSingle.scala 555:15:@811.4]
  assign rf_io_regReadAddress1 = _T_116 ? 5'h1f : _T_118; // @[riscvSingle.scala 551:27:@806.4]
  assign rf_io_regReadAddress2 = _T_123 ? _T_102 : _T_125; // @[riscvSingle.scala 552:27:@807.4]
  assign ext2_clock = clock; // @[:@692.4]
  assign ext2_reset = reset; // @[:@693.4]
  assign ext2_io_instr12 = io_instr[31:20]; // @[riscvSingle.scala 519:21:@731.4]
  assign ext2_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 520:21:@732.4]
  assign ext2_io_immSrc = io_immSrc; // @[riscvSingle.scala 521:20:@733.4]
  assign alu_clock = clock; // @[:@695.4]
  assign alu_reset = reset; // @[:@696.4]
  assign alu_io_a = _T_69 ? $signed(_T_83) : $signed(rf_io_regReadData1); // @[riscvSingle.scala 558:14:@817.4]
  assign alu_io_b = _T_145 ? $signed(extImm) : $signed(rf_io_regReadData2); // @[riscvSingle.scala 559:14:@821.4]
  assign alu_io_aluControl = io_aluControl; // @[riscvSingle.scala 560:23:@822.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pcReg = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      pcReg <= 32'h0;
    end else begin
      if (_T_93) begin
        pcReg <= pcRegBranch;
      end else begin
        if (_T_97) begin
          pcReg <= _T_98;
        end else begin
          pcReg <= pcPlus4;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_149) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|datapath Module:\n|  inst            : 0x%x\n|  memToReg        : b%b\n|  memImm          : b%b\n|  memAddress      : 0x%x\n|  memReadData     : 0x%x\n|  memWriteData    : 0x%x\n|  aluOut          : 0x%x\n|  pcNext          : 0x%x\n|  branchExtImm    : 0x%x\n|  extImm          : 0x%x\n|  regReadData2    : 0x%x\n|  regWriteData    : 0x%x\n|  regSrc          : 0x%x\n|  pcBranch        : 0x%x\n|  pcRegBranch     : 0x%x\n|  pcPlus4         : 0x%x\n|  branchSrc       : b%b\n|___________________________\n",io_instr,io_memToReg,memImm,io_memAddress,io_memReadData,io_memWriteData,datapathMessage_aluOut,pcNext,branchExtImm,extImm,datapathMessage_regReadData2,regWriteData,datapathMessage_regSrc,pcBranch,pcRegBranch,pcPlus4,io_branchSrc); // @[riscvSingle.scala 584:11:@848.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module decoder( // @[:@851.2]
  input        clock, // @[:@852.4]
  input        reset, // @[:@853.4]
  input  [6:0] io_opcode, // @[:@854.4]
  input  [6:0] io_funct7, // @[:@854.4]
  input  [2:0] io_funct3, // @[:@854.4]
  output [2:0] io_regSrc, // @[:@854.4]
  output       io_regWriteEnable, // @[:@854.4]
  output [1:0] io_immSrc, // @[:@854.4]
  output       io_aluSrc, // @[:@854.4]
  output       io_pcSrc, // @[:@854.4]
  output [3:0] io_aluControl, // @[:@854.4]
  output       io_memWriteEnable, // @[:@854.4]
  output       io_memToReg, // @[:@854.4]
  output [1:0] io_branchSrc, // @[:@854.4]
  input        io_zeroFlag, // @[:@854.4]
  input        io_lessThanFlag, // @[:@854.4]
  input        io_greaterThanFlag // @[:@854.4]
);
  wire  _T_39; // @[riscvSingle.scala 230:20:@857.4]
  wire  _T_49; // @[riscvSingle.scala 240:24:@867.6]
  wire  _T_51; // @[riscvSingle.scala 241:28:@869.8]
  wire  _T_54; // @[riscvSingle.scala 243:34:@874.10]
  wire  _T_57; // @[riscvSingle.scala 245:34:@879.12]
  wire  _T_60; // @[riscvSingle.scala 247:34:@884.14]
  wire  _T_63; // @[riscvSingle.scala 249:34:@889.16]
  wire  _T_66; // @[riscvSingle.scala 251:34:@894.18]
  wire  _T_69; // @[riscvSingle.scala 253:34:@899.20]
  wire  _T_72; // @[riscvSingle.scala 255:34:@904.22]
  wire [3:0] _GEN_0; // @[riscvSingle.scala 255:48:@905.22]
  wire [3:0] _GEN_1; // @[riscvSingle.scala 253:48:@900.20]
  wire [3:0] _GEN_2; // @[riscvSingle.scala 251:48:@895.18]
  wire [3:0] _GEN_3; // @[riscvSingle.scala 249:48:@890.16]
  wire [3:0] _GEN_4; // @[riscvSingle.scala 247:48:@885.14]
  wire [3:0] _GEN_5; // @[riscvSingle.scala 245:48:@880.12]
  wire [3:0] _GEN_6; // @[riscvSingle.scala 243:48:@875.10]
  wire [3:0] _GEN_7; // @[riscvSingle.scala 241:42:@870.8]
  wire  _T_76; // @[riscvSingle.scala 260:30:@913.8]
  wire [3:0] _GEN_8; // @[riscvSingle.scala 263:47:@921.12]
  wire [3:0] _GEN_9; // @[riscvSingle.scala 261:41:@916.10]
  wire  _T_85; // @[riscvSingle.scala 268:30:@929.10]
  wire [3:0] _GEN_10; // @[riscvSingle.scala 271:47:@937.14]
  wire [3:0] _GEN_11; // @[riscvSingle.scala 269:43:@932.12]
  wire [3:0] _GEN_12; // @[riscvSingle.scala 268:47:@930.10]
  wire [3:0] _GEN_13; // @[riscvSingle.scala 260:47:@914.8]
  wire [3:0] _GEN_14; // @[riscvSingle.scala 240:42:@868.6]
  wire  _T_95; // @[riscvSingle.scala 279:26:@949.6]
  wire  _T_106; // @[riscvSingle.scala 289:26:@962.8]
  wire [5:0] _T_115; // @[riscvSingle.scala 299:24:@972.10]
  wire  _T_117; // @[riscvSingle.scala 299:30:@973.10]
  wire [3:0] _GEN_15; // @[riscvSingle.scala 300:41:@976.12]
  wire [2:0] _GEN_17; // @[riscvSingle.scala 316:48:@1010.22]
  wire [2:0] _GEN_18; // @[riscvSingle.scala 314:48:@1005.20]
  wire [2:0] _GEN_19; // @[riscvSingle.scala 312:48:@1000.18]
  wire [3:0] _GEN_20; // @[riscvSingle.scala 310:48:@995.16]
  wire [3:0] _GEN_21; // @[riscvSingle.scala 308:48:@990.14]
  wire [3:0] _GEN_22; // @[riscvSingle.scala 306:42:@985.12]
  wire [3:0] _GEN_23; // @[riscvSingle.scala 299:46:@974.10]
  wire  _T_145; // @[riscvSingle.scala 324:26:@1024.10]
  wire  _T_156; // @[riscvSingle.scala 334:26:@1037.12]
  wire  _T_167; // @[riscvSingle.scala 344:26:@1050.14]
  wire  _T_180; // @[riscvSingle.scala 354:37:@1062.16]
  wire  _T_185; // @[riscvSingle.scala 356:57:@1068.18]
  wire  _T_186; // @[riscvSingle.scala 356:43:@1069.18]
  wire  _T_192; // @[riscvSingle.scala 358:43:@1076.20]
  wire  _T_198; // @[riscvSingle.scala 360:43:@1083.22]
  wire  _T_204; // @[riscvSingle.scala 362:43:@1090.24]
  wire  _T_210; // @[riscvSingle.scala 364:43:@1097.26]
  wire  _GEN_25; // @[riscvSingle.scala 362:70:@1091.24]
  wire  _GEN_26; // @[riscvSingle.scala 360:73:@1084.22]
  wire  _GEN_27; // @[riscvSingle.scala 358:70:@1077.20]
  wire  _GEN_28; // @[riscvSingle.scala 356:66:@1070.18]
  wire  _GEN_29; // @[riscvSingle.scala 354:59:@1063.16]
  wire  _T_214; // @[riscvSingle.scala 370:26:@1106.16]
  wire  _T_225; // @[riscvSingle.scala 380:26:@1119.18]
  wire [2:0] _GEN_31; // @[riscvSingle.scala 380:44:@1120.18]
  wire [1:0] _GEN_34; // @[riscvSingle.scala 380:44:@1120.18]
  wire [2:0] _GEN_35; // @[riscvSingle.scala 370:44:@1107.16]
  wire [1:0] _GEN_36; // @[riscvSingle.scala 370:44:@1107.16]
  wire  _GEN_37; // @[riscvSingle.scala 370:44:@1107.16]
  wire [1:0] _GEN_39; // @[riscvSingle.scala 370:44:@1107.16]
  wire [1:0] _GEN_40; // @[riscvSingle.scala 370:44:@1107.16]
  wire [2:0] _GEN_41; // @[riscvSingle.scala 344:44:@1051.14]
  wire [1:0] _GEN_42; // @[riscvSingle.scala 344:44:@1051.14]
  wire  _GEN_43; // @[riscvSingle.scala 344:44:@1051.14]
  wire [2:0] _GEN_45; // @[riscvSingle.scala 344:44:@1051.14]
  wire [1:0] _GEN_46; // @[riscvSingle.scala 344:44:@1051.14]
  wire [2:0] _GEN_47; // @[riscvSingle.scala 334:44:@1038.12]
  wire [1:0] _GEN_48; // @[riscvSingle.scala 334:44:@1038.12]
  wire  _GEN_49; // @[riscvSingle.scala 334:44:@1038.12]
  wire  _GEN_51; // @[riscvSingle.scala 334:44:@1038.12]
  wire [1:0] _GEN_53; // @[riscvSingle.scala 334:44:@1038.12]
  wire [2:0] _GEN_54; // @[riscvSingle.scala 334:44:@1038.12]
  wire [2:0] _GEN_55; // @[riscvSingle.scala 324:44:@1025.10]
  wire [1:0] _GEN_56; // @[riscvSingle.scala 324:44:@1025.10]
  wire  _GEN_57; // @[riscvSingle.scala 324:44:@1025.10]
  wire  _GEN_60; // @[riscvSingle.scala 324:44:@1025.10]
  wire  _GEN_61; // @[riscvSingle.scala 324:44:@1025.10]
  wire [1:0] _GEN_62; // @[riscvSingle.scala 324:44:@1025.10]
  wire [2:0] _GEN_63; // @[riscvSingle.scala 324:44:@1025.10]
  wire [2:0] _GEN_64; // @[riscvSingle.scala 289:44:@963.8]
  wire [1:0] _GEN_65; // @[riscvSingle.scala 289:44:@963.8]
  wire  _GEN_66; // @[riscvSingle.scala 289:44:@963.8]
  wire  _GEN_68; // @[riscvSingle.scala 289:44:@963.8]
  wire  _GEN_69; // @[riscvSingle.scala 289:44:@963.8]
  wire  _GEN_70; // @[riscvSingle.scala 289:44:@963.8]
  wire [1:0] _GEN_71; // @[riscvSingle.scala 289:44:@963.8]
  wire [3:0] _GEN_72; // @[riscvSingle.scala 289:44:@963.8]
  wire [2:0] _GEN_73; // @[riscvSingle.scala 279:43:@950.6]
  wire [1:0] _GEN_74; // @[riscvSingle.scala 279:43:@950.6]
  wire  _GEN_75; // @[riscvSingle.scala 279:43:@950.6]
  wire  _GEN_77; // @[riscvSingle.scala 279:43:@950.6]
  wire  _GEN_78; // @[riscvSingle.scala 279:43:@950.6]
  wire  _GEN_79; // @[riscvSingle.scala 279:43:@950.6]
  wire [1:0] _GEN_80; // @[riscvSingle.scala 279:43:@950.6]
  wire [3:0] _GEN_81; // @[riscvSingle.scala 279:43:@950.6]
  wire  _T_257; // @[riscvSingle.scala 427:11:@1170.4]
  wire  decoderMessage_regSrc; // @[riscvSingle.scala 228:30:@856.4 riscvSingle.scala 416:27:@1158.4]
  assign _T_39 = io_opcode == 7'h33; // @[riscvSingle.scala 230:20:@857.4]
  assign _T_49 = io_funct7 == 7'h0; // @[riscvSingle.scala 240:24:@867.6]
  assign _T_51 = io_funct3 == 3'h0; // @[riscvSingle.scala 241:28:@869.8]
  assign _T_54 = io_funct3 == 3'h1; // @[riscvSingle.scala 243:34:@874.10]
  assign _T_57 = io_funct3 == 3'h2; // @[riscvSingle.scala 245:34:@879.12]
  assign _T_60 = io_funct3 == 3'h3; // @[riscvSingle.scala 247:34:@884.14]
  assign _T_63 = io_funct3 == 3'h4; // @[riscvSingle.scala 249:34:@889.16]
  assign _T_66 = io_funct3 == 3'h5; // @[riscvSingle.scala 251:34:@894.18]
  assign _T_69 = io_funct3 == 3'h6; // @[riscvSingle.scala 253:34:@899.20]
  assign _T_72 = io_funct3 == 3'h7; // @[riscvSingle.scala 255:34:@904.22]
  assign _GEN_0 = _T_72 ? 4'h0 : 4'hf; // @[riscvSingle.scala 255:48:@905.22]
  assign _GEN_1 = _T_69 ? 4'h1 : _GEN_0; // @[riscvSingle.scala 253:48:@900.20]
  assign _GEN_2 = _T_66 ? 4'h7 : _GEN_1; // @[riscvSingle.scala 251:48:@895.18]
  assign _GEN_3 = _T_63 ? 4'h6 : _GEN_2; // @[riscvSingle.scala 249:48:@890.16]
  assign _GEN_4 = _T_60 ? 4'h5 : _GEN_3; // @[riscvSingle.scala 247:48:@885.14]
  assign _GEN_5 = _T_57 ? 4'h9 : _GEN_4; // @[riscvSingle.scala 245:48:@880.12]
  assign _GEN_6 = _T_54 ? 4'h3 : _GEN_5; // @[riscvSingle.scala 243:48:@875.10]
  assign _GEN_7 = _T_51 ? 4'h2 : _GEN_6; // @[riscvSingle.scala 241:42:@870.8]
  assign _T_76 = io_funct7 == 7'h1; // @[riscvSingle.scala 260:30:@913.8]
  assign _GEN_8 = _T_63 ? 4'ha : 4'hf; // @[riscvSingle.scala 263:47:@921.12]
  assign _GEN_9 = _T_51 ? 4'h8 : _GEN_8; // @[riscvSingle.scala 261:41:@916.10]
  assign _T_85 = io_funct7 == 7'h20; // @[riscvSingle.scala 268:30:@929.10]
  assign _GEN_10 = _T_51 ? 4'hc : 4'hf; // @[riscvSingle.scala 271:47:@937.14]
  assign _GEN_11 = _T_66 ? 4'h4 : _GEN_10; // @[riscvSingle.scala 269:43:@932.12]
  assign _GEN_12 = _T_85 ? _GEN_11 : 4'hf; // @[riscvSingle.scala 268:47:@930.10]
  assign _GEN_13 = _T_76 ? _GEN_9 : _GEN_12; // @[riscvSingle.scala 260:47:@914.8]
  assign _GEN_14 = _T_49 ? _GEN_7 : _GEN_13; // @[riscvSingle.scala 240:42:@868.6]
  assign _T_95 = io_opcode == 7'h17; // @[riscvSingle.scala 279:26:@949.6]
  assign _T_106 = io_opcode == 7'h13; // @[riscvSingle.scala 289:26:@962.8]
  assign _T_115 = io_funct7[6:1]; // @[riscvSingle.scala 299:24:@972.10]
  assign _T_117 = _T_115 == 6'h10; // @[riscvSingle.scala 299:30:@973.10]
  assign _GEN_15 = _T_66 ? 4'h4 : 4'hf; // @[riscvSingle.scala 300:41:@976.12]
  assign _GEN_17 = _T_66 ? 3'h7 : {{2'd0}, _T_69}; // @[riscvSingle.scala 316:48:@1010.22]
  assign _GEN_18 = _T_63 ? 3'h6 : _GEN_17; // @[riscvSingle.scala 314:48:@1005.20]
  assign _GEN_19 = _T_60 ? 3'h5 : _GEN_18; // @[riscvSingle.scala 312:48:@1000.18]
  assign _GEN_20 = _T_57 ? 4'h9 : {{1'd0}, _GEN_19}; // @[riscvSingle.scala 310:48:@995.16]
  assign _GEN_21 = _T_54 ? 4'h3 : _GEN_20; // @[riscvSingle.scala 308:48:@990.14]
  assign _GEN_22 = _T_51 ? 4'h2 : _GEN_21; // @[riscvSingle.scala 306:42:@985.12]
  assign _GEN_23 = _T_117 ? _GEN_15 : _GEN_22; // @[riscvSingle.scala 299:46:@974.10]
  assign _T_145 = io_opcode == 7'h3; // @[riscvSingle.scala 324:26:@1024.10]
  assign _T_156 = io_opcode == 7'h23; // @[riscvSingle.scala 334:26:@1037.12]
  assign _T_167 = io_opcode == 7'h63; // @[riscvSingle.scala 344:26:@1050.14]
  assign _T_180 = _T_51 & io_zeroFlag; // @[riscvSingle.scala 354:37:@1062.16]
  assign _T_185 = io_zeroFlag == 1'h0; // @[riscvSingle.scala 356:57:@1068.18]
  assign _T_186 = _T_54 & _T_185; // @[riscvSingle.scala 356:43:@1069.18]
  assign _T_192 = _T_63 & io_lessThanFlag; // @[riscvSingle.scala 358:43:@1076.20]
  assign _T_198 = _T_66 & io_greaterThanFlag; // @[riscvSingle.scala 360:43:@1083.22]
  assign _T_204 = _T_69 & io_lessThanFlag; // @[riscvSingle.scala 362:43:@1090.24]
  assign _T_210 = _T_72 & io_greaterThanFlag; // @[riscvSingle.scala 364:43:@1097.26]
  assign _GEN_25 = _T_204 ? 1'h1 : _T_210; // @[riscvSingle.scala 362:70:@1091.24]
  assign _GEN_26 = _T_198 ? 1'h1 : _GEN_25; // @[riscvSingle.scala 360:73:@1084.22]
  assign _GEN_27 = _T_192 ? 1'h1 : _GEN_26; // @[riscvSingle.scala 358:70:@1077.20]
  assign _GEN_28 = _T_186 ? 1'h1 : _GEN_27; // @[riscvSingle.scala 356:66:@1070.18]
  assign _GEN_29 = _T_180 ? 1'h1 : _GEN_28; // @[riscvSingle.scala 354:59:@1063.16]
  assign _T_214 = io_opcode == 7'h6f; // @[riscvSingle.scala 370:26:@1106.16]
  assign _T_225 = io_opcode == 7'h67; // @[riscvSingle.scala 380:26:@1119.18]
  assign _GEN_31 = _T_225 ? 3'h4 : 3'h0; // @[riscvSingle.scala 380:44:@1120.18]
  assign _GEN_34 = _T_225 ? 2'h2 : 2'h0; // @[riscvSingle.scala 380:44:@1120.18]
  assign _GEN_35 = _T_214 ? 3'h4 : _GEN_31; // @[riscvSingle.scala 370:44:@1107.16]
  assign _GEN_36 = _T_214 ? 2'h2 : 2'h0; // @[riscvSingle.scala 370:44:@1107.16]
  assign _GEN_37 = _T_214 ? 1'h1 : _T_225; // @[riscvSingle.scala 370:44:@1107.16]
  assign _GEN_39 = _T_214 ? 2'h1 : _GEN_34; // @[riscvSingle.scala 370:44:@1107.16]
  assign _GEN_40 = _T_214 ? 2'h0 : _GEN_34; // @[riscvSingle.scala 370:44:@1107.16]
  assign _GEN_41 = _T_167 ? 3'h0 : _GEN_35; // @[riscvSingle.scala 344:44:@1051.14]
  assign _GEN_42 = _T_167 ? 2'h1 : _GEN_36; // @[riscvSingle.scala 344:44:@1051.14]
  assign _GEN_43 = _T_167 ? 1'h0 : _GEN_37; // @[riscvSingle.scala 344:44:@1051.14]
  assign _GEN_45 = _T_167 ? 3'h4 : {{1'd0}, _GEN_40}; // @[riscvSingle.scala 344:44:@1051.14]
  assign _GEN_46 = _T_167 ? {{1'd0}, _GEN_29} : _GEN_39; // @[riscvSingle.scala 344:44:@1051.14]
  assign _GEN_47 = _T_156 ? 3'h0 : _GEN_41; // @[riscvSingle.scala 334:44:@1038.12]
  assign _GEN_48 = _T_156 ? 2'h0 : _GEN_42; // @[riscvSingle.scala 334:44:@1038.12]
  assign _GEN_49 = _T_156 ? 1'h1 : _GEN_43; // @[riscvSingle.scala 334:44:@1038.12]
  assign _GEN_51 = _T_156 ? 1'h0 : _GEN_43; // @[riscvSingle.scala 334:44:@1038.12]
  assign _GEN_53 = _T_156 ? 2'h0 : _GEN_46; // @[riscvSingle.scala 334:44:@1038.12]
  assign _GEN_54 = _T_156 ? 3'h0 : _GEN_45; // @[riscvSingle.scala 334:44:@1038.12]
  assign _GEN_55 = _T_145 ? 3'h0 : _GEN_47; // @[riscvSingle.scala 324:44:@1025.10]
  assign _GEN_56 = _T_145 ? 2'h0 : _GEN_48; // @[riscvSingle.scala 324:44:@1025.10]
  assign _GEN_57 = _T_145 ? 1'h1 : _GEN_49; // @[riscvSingle.scala 324:44:@1025.10]
  assign _GEN_60 = _T_145 ? 1'h1 : _GEN_51; // @[riscvSingle.scala 324:44:@1025.10]
  assign _GEN_61 = _T_145 ? 1'h0 : _T_156; // @[riscvSingle.scala 324:44:@1025.10]
  assign _GEN_62 = _T_145 ? 2'h0 : _GEN_53; // @[riscvSingle.scala 324:44:@1025.10]
  assign _GEN_63 = _T_145 ? 3'h2 : _GEN_54; // @[riscvSingle.scala 324:44:@1025.10]
  assign _GEN_64 = _T_106 ? 3'h0 : _GEN_55; // @[riscvSingle.scala 289:44:@963.8]
  assign _GEN_65 = _T_106 ? 2'h0 : _GEN_56; // @[riscvSingle.scala 289:44:@963.8]
  assign _GEN_66 = _T_106 ? 1'h1 : _GEN_57; // @[riscvSingle.scala 289:44:@963.8]
  assign _GEN_68 = _T_106 ? 1'h0 : _T_145; // @[riscvSingle.scala 289:44:@963.8]
  assign _GEN_69 = _T_106 ? 1'h1 : _GEN_60; // @[riscvSingle.scala 289:44:@963.8]
  assign _GEN_70 = _T_106 ? 1'h0 : _GEN_61; // @[riscvSingle.scala 289:44:@963.8]
  assign _GEN_71 = _T_106 ? 2'h0 : _GEN_62; // @[riscvSingle.scala 289:44:@963.8]
  assign _GEN_72 = _T_106 ? _GEN_23 : {{1'd0}, _GEN_63}; // @[riscvSingle.scala 289:44:@963.8]
  assign _GEN_73 = _T_95 ? 3'h0 : _GEN_64; // @[riscvSingle.scala 279:43:@950.6]
  assign _GEN_74 = _T_95 ? 2'h2 : _GEN_65; // @[riscvSingle.scala 279:43:@950.6]
  assign _GEN_75 = _T_95 ? 1'h1 : _GEN_66; // @[riscvSingle.scala 279:43:@950.6]
  assign _GEN_77 = _T_95 ? 1'h0 : _GEN_68; // @[riscvSingle.scala 279:43:@950.6]
  assign _GEN_78 = _T_95 ? 1'h1 : _GEN_69; // @[riscvSingle.scala 279:43:@950.6]
  assign _GEN_79 = _T_95 ? 1'h0 : _GEN_70; // @[riscvSingle.scala 279:43:@950.6]
  assign _GEN_80 = _T_95 ? 2'h0 : _GEN_71; // @[riscvSingle.scala 279:43:@950.6]
  assign _GEN_81 = _T_95 ? 4'h2 : _GEN_72; // @[riscvSingle.scala 279:43:@950.6]
  assign _T_257 = reset == 1'h0; // @[riscvSingle.scala 427:11:@1170.4]
  assign decoderMessage_regSrc = io_regSrc[0]; // @[riscvSingle.scala 228:30:@856.4 riscvSingle.scala 416:27:@1158.4]
  assign io_regSrc = _T_39 ? 3'h0 : _GEN_73; // @[riscvSingle.scala 231:19:@859.6 riscvSingle.scala 280:19:@951.8 riscvSingle.scala 290:19:@964.10 riscvSingle.scala 325:19:@1026.12 riscvSingle.scala 335:19:@1039.14 riscvSingle.scala 345:19:@1052.16 riscvSingle.scala 371:19:@1108.18 riscvSingle.scala 381:19:@1121.20 riscvSingle.scala 391:19:@1134.22 riscvSingle.scala 401:19:@1145.22]
  assign io_regWriteEnable = _T_39 ? 1'h1 : _GEN_78; // @[riscvSingle.scala 236:27:@864.6 riscvSingle.scala 285:27:@956.8 riscvSingle.scala 295:27:@969.10 riscvSingle.scala 330:27:@1031.12 riscvSingle.scala 340:27:@1044.14 riscvSingle.scala 350:27:@1057.16 riscvSingle.scala 376:27:@1113.18 riscvSingle.scala 386:27:@1126.20 riscvSingle.scala 396:27:@1139.22 riscvSingle.scala 406:27:@1150.22]
  assign io_immSrc = _T_39 ? 2'h0 : _GEN_74; // @[riscvSingle.scala 232:19:@860.6 riscvSingle.scala 281:19:@952.8 riscvSingle.scala 291:19:@965.10 riscvSingle.scala 326:19:@1027.12 riscvSingle.scala 336:19:@1040.14 riscvSingle.scala 346:19:@1053.16 riscvSingle.scala 372:19:@1109.18 riscvSingle.scala 382:19:@1122.20 riscvSingle.scala 392:19:@1135.22 riscvSingle.scala 402:19:@1146.22]
  assign io_aluSrc = _T_39 ? 1'h0 : _GEN_75; // @[riscvSingle.scala 233:19:@861.6 riscvSingle.scala 282:19:@953.8 riscvSingle.scala 292:19:@966.10 riscvSingle.scala 327:19:@1028.12 riscvSingle.scala 337:19:@1041.14 riscvSingle.scala 347:19:@1054.16 riscvSingle.scala 373:19:@1110.18 riscvSingle.scala 383:19:@1123.20 riscvSingle.scala 393:19:@1136.22 riscvSingle.scala 403:19:@1147.22]
  assign io_pcSrc = _T_39 ? 1'h0 : _T_95; // @[riscvSingle.scala 234:18:@862.6 riscvSingle.scala 283:18:@954.8 riscvSingle.scala 293:18:@967.10 riscvSingle.scala 328:18:@1029.12 riscvSingle.scala 338:18:@1042.14 riscvSingle.scala 348:18:@1055.16 riscvSingle.scala 374:18:@1111.18 riscvSingle.scala 384:18:@1124.20 riscvSingle.scala 394:18:@1137.22 riscvSingle.scala 404:18:@1148.22]
  assign io_aluControl = _T_39 ? _GEN_14 : _GEN_81; // @[riscvSingle.scala 242:31:@871.10 riscvSingle.scala 244:31:@876.12 riscvSingle.scala 246:31:@881.14 riscvSingle.scala 248:31:@886.16 riscvSingle.scala 250:31:@891.18 riscvSingle.scala 252:31:@896.20 riscvSingle.scala 254:31:@901.22 riscvSingle.scala 256:31:@906.24 riscvSingle.scala 258:31:@909.24 riscvSingle.scala 262:31:@917.12 riscvSingle.scala 264:31:@922.14 riscvSingle.scala 266:31:@925.14 riscvSingle.scala 270:31:@933.14 riscvSingle.scala 272:31:@938.16 riscvSingle.scala 274:31:@941.16 riscvSingle.scala 277:27:@945.12 riscvSingle.scala 288:23:@959.8 riscvSingle.scala 301:31:@977.14 riscvSingle.scala 303:31:@980.14 riscvSingle.scala 307:31:@986.14 riscvSingle.scala 309:31:@991.16 riscvSingle.scala 311:31:@996.18 riscvSingle.scala 313:31:@1001.20 riscvSingle.scala 315:31:@1006.22 riscvSingle.scala 317:31:@1011.24 riscvSingle.scala 319:31:@1016.26 riscvSingle.scala 321:31:@1019.26 riscvSingle.scala 333:23:@1034.12 riscvSingle.scala 343:23:@1047.14 riscvSingle.scala 352:23:@1059.16 riscvSingle.scala 379:23:@1116.18 riscvSingle.scala 389:23:@1129.20 riscvSingle.scala 399:23:@1142.22 riscvSingle.scala 409:23:@1153.22]
  assign io_memWriteEnable = _T_39 ? 1'h0 : _GEN_79; // @[riscvSingle.scala 237:27:@865.6 riscvSingle.scala 286:27:@957.8 riscvSingle.scala 296:27:@970.10 riscvSingle.scala 331:27:@1032.12 riscvSingle.scala 341:27:@1045.14 riscvSingle.scala 351:27:@1058.16 riscvSingle.scala 377:27:@1114.18 riscvSingle.scala 387:27:@1127.20 riscvSingle.scala 397:27:@1140.22 riscvSingle.scala 407:27:@1151.22]
  assign io_memToReg = _T_39 ? 1'h0 : _GEN_77; // @[riscvSingle.scala 235:21:@863.6 riscvSingle.scala 284:21:@955.8 riscvSingle.scala 294:21:@968.10 riscvSingle.scala 329:21:@1030.12 riscvSingle.scala 339:21:@1043.14 riscvSingle.scala 349:21:@1056.16 riscvSingle.scala 375:21:@1112.18 riscvSingle.scala 385:21:@1125.20 riscvSingle.scala 395:21:@1138.22 riscvSingle.scala 405:21:@1149.22]
  assign io_branchSrc = _T_39 ? 2'h0 : _GEN_80; // @[riscvSingle.scala 238:22:@866.6 riscvSingle.scala 287:22:@958.8 riscvSingle.scala 297:22:@971.10 riscvSingle.scala 332:22:@1033.12 riscvSingle.scala 342:22:@1046.14 riscvSingle.scala 355:26:@1064.18 riscvSingle.scala 357:26:@1071.20 riscvSingle.scala 359:26:@1078.22 riscvSingle.scala 361:26:@1085.24 riscvSingle.scala 363:26:@1092.26 riscvSingle.scala 365:26:@1099.28 riscvSingle.scala 367:26:@1102.28 riscvSingle.scala 378:22:@1115.18 riscvSingle.scala 388:22:@1128.20 riscvSingle.scala 398:22:@1141.22 riscvSingle.scala 408:22:@1152.22]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_257) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|decoder Module:\n|  branchSrc          : b%b\n|  opcode             : b%b\n|  funct3             : b%b\n|  regSrc             : b%b\n|  immSrc             : b%b\n|  aluSrc             : b%b\n|  pcSrc              : b%b\n|  regWriteEnable     : b%b\n|  aluControl         : b%b\n|  memToReg           : b%b\n|  memWriteEnable     : b%b\n|  zeroFlag           : b%b\n|  lessThanFlag       : b%b\n|  greaterThanFlag    : b%b\n|___________________________\n",io_branchSrc,io_opcode,io_funct3,decoderMessage_regSrc,io_immSrc,io_aluSrc,io_pcSrc,io_regWriteEnable,io_aluControl,io_memToReg,io_memWriteEnable,io_zeroFlag,io_lessThanFlag,io_greaterThanFlag); // @[riscvSingle.scala 427:11:@1172.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module riscv( // @[:@1175.2]
  input         clock, // @[:@1176.4]
  input         reset, // @[:@1177.4]
  input  [31:0] io_instr, // @[:@1178.4]
  input  [31:0] io_memReadData, // @[:@1178.4]
  output [31:0] io_pc, // @[:@1178.4]
  output        io_memWriteEnable, // @[:@1178.4]
  output [31:0] io_memAddress, // @[:@1178.4]
  output [31:0] io_memWriteData // @[:@1178.4]
);
  wire  dp_clock; // @[riscvSingle.scala 91:20:@1181.4]
  wire  dp_reset; // @[riscvSingle.scala 91:20:@1181.4]
  wire [2:0] dp_io_regSrc; // @[riscvSingle.scala 91:20:@1181.4]
  wire  dp_io_regWriteEnable; // @[riscvSingle.scala 91:20:@1181.4]
  wire [1:0] dp_io_immSrc; // @[riscvSingle.scala 91:20:@1181.4]
  wire  dp_io_aluSrc; // @[riscvSingle.scala 91:20:@1181.4]
  wire  dp_io_pcSrc; // @[riscvSingle.scala 91:20:@1181.4]
  wire [3:0] dp_io_aluControl; // @[riscvSingle.scala 91:20:@1181.4]
  wire  dp_io_memToReg; // @[riscvSingle.scala 91:20:@1181.4]
  wire [31:0] dp_io_instr; // @[riscvSingle.scala 91:20:@1181.4]
  wire [31:0] dp_io_memReadData; // @[riscvSingle.scala 91:20:@1181.4]
  wire [1:0] dp_io_branchSrc; // @[riscvSingle.scala 91:20:@1181.4]
  wire [31:0] dp_io_pc; // @[riscvSingle.scala 91:20:@1181.4]
  wire [31:0] dp_io_memAddress; // @[riscvSingle.scala 91:20:@1181.4]
  wire [31:0] dp_io_memWriteData; // @[riscvSingle.scala 91:20:@1181.4]
  wire  dp_io_zeroFlag; // @[riscvSingle.scala 91:20:@1181.4]
  wire  dp_io_lessThanFlag; // @[riscvSingle.scala 91:20:@1181.4]
  wire  dp_io_greaterThanFlag; // @[riscvSingle.scala 91:20:@1181.4]
  wire  d_clock; // @[riscvSingle.scala 92:19:@1184.4]
  wire  d_reset; // @[riscvSingle.scala 92:19:@1184.4]
  wire [6:0] d_io_opcode; // @[riscvSingle.scala 92:19:@1184.4]
  wire [6:0] d_io_funct7; // @[riscvSingle.scala 92:19:@1184.4]
  wire [2:0] d_io_funct3; // @[riscvSingle.scala 92:19:@1184.4]
  wire [2:0] d_io_regSrc; // @[riscvSingle.scala 92:19:@1184.4]
  wire  d_io_regWriteEnable; // @[riscvSingle.scala 92:19:@1184.4]
  wire [1:0] d_io_immSrc; // @[riscvSingle.scala 92:19:@1184.4]
  wire  d_io_aluSrc; // @[riscvSingle.scala 92:19:@1184.4]
  wire  d_io_pcSrc; // @[riscvSingle.scala 92:19:@1184.4]
  wire [3:0] d_io_aluControl; // @[riscvSingle.scala 92:19:@1184.4]
  wire  d_io_memWriteEnable; // @[riscvSingle.scala 92:19:@1184.4]
  wire  d_io_memToReg; // @[riscvSingle.scala 92:19:@1184.4]
  wire [1:0] d_io_branchSrc; // @[riscvSingle.scala 92:19:@1184.4]
  wire  d_io_zeroFlag; // @[riscvSingle.scala 92:19:@1184.4]
  wire  d_io_lessThanFlag; // @[riscvSingle.scala 92:19:@1184.4]
  wire  d_io_greaterThanFlag; // @[riscvSingle.scala 92:19:@1184.4]
  wire  _T_20; // @[riscvSingle.scala 101:11:@1193.4]
  datapath dp ( // @[riscvSingle.scala 91:20:@1181.4]
    .clock(dp_clock),
    .reset(dp_reset),
    .io_regSrc(dp_io_regSrc),
    .io_regWriteEnable(dp_io_regWriteEnable),
    .io_immSrc(dp_io_immSrc),
    .io_aluSrc(dp_io_aluSrc),
    .io_pcSrc(dp_io_pcSrc),
    .io_aluControl(dp_io_aluControl),
    .io_memToReg(dp_io_memToReg),
    .io_instr(dp_io_instr),
    .io_memReadData(dp_io_memReadData),
    .io_branchSrc(dp_io_branchSrc),
    .io_pc(dp_io_pc),
    .io_memAddress(dp_io_memAddress),
    .io_memWriteData(dp_io_memWriteData),
    .io_zeroFlag(dp_io_zeroFlag),
    .io_lessThanFlag(dp_io_lessThanFlag),
    .io_greaterThanFlag(dp_io_greaterThanFlag)
  );
  decoder d ( // @[riscvSingle.scala 92:19:@1184.4]
    .clock(d_clock),
    .reset(d_reset),
    .io_opcode(d_io_opcode),
    .io_funct7(d_io_funct7),
    .io_funct3(d_io_funct3),
    .io_regSrc(d_io_regSrc),
    .io_regWriteEnable(d_io_regWriteEnable),
    .io_immSrc(d_io_immSrc),
    .io_aluSrc(d_io_aluSrc),
    .io_pcSrc(d_io_pcSrc),
    .io_aluControl(d_io_aluControl),
    .io_memWriteEnable(d_io_memWriteEnable),
    .io_memToReg(d_io_memToReg),
    .io_branchSrc(d_io_branchSrc),
    .io_zeroFlag(d_io_zeroFlag),
    .io_lessThanFlag(d_io_lessThanFlag),
    .io_greaterThanFlag(d_io_greaterThanFlag)
  );
  assign _T_20 = reset == 1'h0; // @[riscvSingle.scala 101:11:@1193.4]
  assign io_pc = dp_io_pc; // @[riscvSingle.scala 122:11:@1218.4]
  assign io_memWriteEnable = d_io_memWriteEnable; // @[riscvSingle.scala 123:23:@1219.4]
  assign io_memAddress = dp_io_memAddress; // @[riscvSingle.scala 124:19:@1220.4]
  assign io_memWriteData = dp_io_memWriteData; // @[riscvSingle.scala 125:21:@1221.4]
  assign dp_clock = clock; // @[:@1182.4]
  assign dp_reset = reset; // @[:@1183.4]
  assign dp_io_regSrc = d_io_regSrc; // @[riscvSingle.scala 111:18:@1208.4]
  assign dp_io_regWriteEnable = d_io_regWriteEnable; // @[riscvSingle.scala 112:26:@1209.4]
  assign dp_io_immSrc = d_io_immSrc; // @[riscvSingle.scala 113:18:@1210.4]
  assign dp_io_aluSrc = d_io_aluSrc; // @[riscvSingle.scala 114:18:@1211.4]
  assign dp_io_pcSrc = d_io_pcSrc; // @[riscvSingle.scala 115:17:@1212.4]
  assign dp_io_aluControl = d_io_aluControl; // @[riscvSingle.scala 116:22:@1213.4]
  assign dp_io_memToReg = d_io_memToReg; // @[riscvSingle.scala 117:20:@1214.4]
  assign dp_io_instr = io_instr; // @[riscvSingle.scala 118:17:@1215.4]
  assign dp_io_memReadData = io_memReadData; // @[riscvSingle.scala 119:23:@1216.4]
  assign dp_io_branchSrc = d_io_branchSrc; // @[riscvSingle.scala 120:21:@1217.4]
  assign d_clock = clock; // @[:@1185.4]
  assign d_reset = reset; // @[:@1186.4]
  assign d_io_opcode = io_instr[6:0]; // @[riscvSingle.scala 103:17:@1198.4]
  assign d_io_funct7 = io_instr[31:25]; // @[riscvSingle.scala 104:17:@1200.4]
  assign d_io_funct3 = io_instr[14:12]; // @[riscvSingle.scala 105:17:@1202.4]
  assign d_io_zeroFlag = dp_io_zeroFlag; // @[riscvSingle.scala 107:19:@1205.4]
  assign d_io_lessThanFlag = dp_io_lessThanFlag; // @[riscvSingle.scala 108:23:@1206.4]
  assign d_io_greaterThanFlag = dp_io_greaterThanFlag; // @[riscvSingle.scala 109:26:@1207.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_20) begin
          $fwrite(32'h80000002,"___________________________\n|riscv Module:\n|  instr          : 0x%x\n|  memWriteEnable : b%b\n|  memWriteData   : b%b\n|  memAddress     : b%b\n|  memReadData    : 0x%x\n|___________________________\n",io_instr,io_memWriteEnable,io_memWriteData,io_memAddress,io_memReadData); // @[riscvSingle.scala 101:11:@1195.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module imem( // @[:@1223.2]
  input         clock, // @[:@1224.4]
  input  [31:0] io_instAddress, // @[:@1226.4]
  output [31:0] io_inst // @[:@1226.4]
);
  reg [31:0] MEM [0:1023]; // @[riscvSingle.scala 761:18:@1228.4]
  reg [31:0] _RAND_0;
  wire [31:0] MEM__T_12_data; // @[riscvSingle.scala 761:18:@1228.4]
  wire [9:0] MEM__T_12_addr; // @[riscvSingle.scala 761:18:@1228.4]
  assign MEM__T_12_addr = io_instAddress[9:0];
  assign MEM__T_12_data = MEM[MEM__T_12_addr]; // @[riscvSingle.scala 761:18:@1228.4]
  assign io_inst = MEM__T_12_data; // @[riscvSingle.scala 764:13:@1231.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    MEM[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  end
`endif // RANDOMIZE
endmodule
module dmem( // @[:@1233.2]
  input         clock, // @[:@1234.4]
  input         reset, // @[:@1235.4]
  input  [31:0] io_memAddress, // @[:@1236.4]
  input  [31:0] io_memWriteData, // @[:@1236.4]
  input         io_memWriteEnable, // @[:@1236.4]
  output [31:0] io_memReadData // @[:@1236.4]
);
  reg [31:0] mem [0:1023]; // @[riscvSingle.scala 792:26:@1239.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_22_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_22_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem_dat_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem_dat_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_33_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_33_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_43_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_43_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_53_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_53_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_63_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_63_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_73_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_73_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_83_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_83_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_93_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_93_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_103_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_103_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_113_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_113_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_123_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_123_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_133_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_133_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_143_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_143_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_153_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_153_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_163_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_163_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_173_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_173_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_183_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_183_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_193_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_193_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_203_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_203_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_213_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_213_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_223_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_223_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_233_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_233_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_243_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_243_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_253_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_253_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_263_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_263_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_273_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_273_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_283_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_283_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_293_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_293_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_303_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_303_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_313_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_313_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_323_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_323_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_333_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_333_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_343_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_343_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire [31:0] mem__T_20_data; // @[riscvSingle.scala 792:26:@1239.4]
  wire [9:0] mem__T_20_addr; // @[riscvSingle.scala 792:26:@1239.4]
  wire  mem__T_20_mask; // @[riscvSingle.scala 792:26:@1239.4]
  wire  mem__T_20_en; // @[riscvSingle.scala 792:26:@1239.4]
  wire  _T_16; // @[riscvSingle.scala 793:28:@1240.4]
  wire [9:0] _T_19; // @[:@1243.6]
  wire  _GEN_3; // @[riscvSingle.scala 793:33:@1242.4]
  wire  _T_26; // @[riscvSingle.scala 800:11:@1253.4]
  wire [31:0] dmemMessage_memWriteEnable; // @[riscvSingle.scala 791:27:@1238.4 riscvSingle.scala 813:32:@1685.4]
  wire [31:0] _T_31; // @[riscvSingle.scala 804:26:@1262.4 riscvSingle.scala 805:16:@1264.4]
  wire [31:0] _T_41; // @[riscvSingle.scala 804:26:@1275.4 riscvSingle.scala 805:16:@1277.4]
  wire [31:0] _T_51; // @[riscvSingle.scala 804:26:@1288.4 riscvSingle.scala 805:16:@1290.4]
  wire [31:0] _T_61; // @[riscvSingle.scala 804:26:@1301.4 riscvSingle.scala 805:16:@1303.4]
  wire [31:0] _T_71; // @[riscvSingle.scala 804:26:@1314.4 riscvSingle.scala 805:16:@1316.4]
  wire [31:0] _T_81; // @[riscvSingle.scala 804:26:@1327.4 riscvSingle.scala 805:16:@1329.4]
  wire [31:0] _T_91; // @[riscvSingle.scala 804:26:@1340.4 riscvSingle.scala 805:16:@1342.4]
  wire [31:0] _T_101; // @[riscvSingle.scala 804:26:@1353.4 riscvSingle.scala 805:16:@1355.4]
  wire [31:0] _T_111; // @[riscvSingle.scala 804:26:@1366.4 riscvSingle.scala 805:16:@1368.4]
  wire [31:0] _T_121; // @[riscvSingle.scala 804:26:@1379.4 riscvSingle.scala 805:16:@1381.4]
  wire [31:0] _T_131; // @[riscvSingle.scala 804:26:@1392.4 riscvSingle.scala 805:16:@1394.4]
  wire [31:0] _T_141; // @[riscvSingle.scala 804:26:@1405.4 riscvSingle.scala 805:16:@1407.4]
  wire [31:0] _T_151; // @[riscvSingle.scala 804:26:@1418.4 riscvSingle.scala 805:16:@1420.4]
  wire [31:0] _T_161; // @[riscvSingle.scala 804:26:@1431.4 riscvSingle.scala 805:16:@1433.4]
  wire [31:0] _T_171; // @[riscvSingle.scala 804:26:@1444.4 riscvSingle.scala 805:16:@1446.4]
  wire [31:0] _T_181; // @[riscvSingle.scala 804:26:@1457.4 riscvSingle.scala 805:16:@1459.4]
  wire [31:0] _T_191; // @[riscvSingle.scala 804:26:@1470.4 riscvSingle.scala 805:16:@1472.4]
  wire [31:0] _T_201; // @[riscvSingle.scala 804:26:@1483.4 riscvSingle.scala 805:16:@1485.4]
  wire [31:0] _T_211; // @[riscvSingle.scala 804:26:@1496.4 riscvSingle.scala 805:16:@1498.4]
  wire [31:0] _T_221; // @[riscvSingle.scala 804:26:@1509.4 riscvSingle.scala 805:16:@1511.4]
  wire [31:0] _T_231; // @[riscvSingle.scala 804:26:@1522.4 riscvSingle.scala 805:16:@1524.4]
  wire [31:0] _T_241; // @[riscvSingle.scala 804:26:@1535.4 riscvSingle.scala 805:16:@1537.4]
  wire [31:0] _T_251; // @[riscvSingle.scala 804:26:@1548.4 riscvSingle.scala 805:16:@1550.4]
  wire [31:0] _T_261; // @[riscvSingle.scala 804:26:@1561.4 riscvSingle.scala 805:16:@1563.4]
  wire [31:0] _T_271; // @[riscvSingle.scala 804:26:@1574.4 riscvSingle.scala 805:16:@1576.4]
  wire [31:0] _T_281; // @[riscvSingle.scala 804:26:@1587.4 riscvSingle.scala 805:16:@1589.4]
  wire [31:0] _T_291; // @[riscvSingle.scala 804:26:@1600.4 riscvSingle.scala 805:16:@1602.4]
  wire [31:0] _T_301; // @[riscvSingle.scala 804:26:@1613.4 riscvSingle.scala 805:16:@1615.4]
  wire [31:0] _T_311; // @[riscvSingle.scala 804:26:@1626.4 riscvSingle.scala 805:16:@1628.4]
  wire [31:0] _T_321; // @[riscvSingle.scala 804:26:@1639.4 riscvSingle.scala 805:16:@1641.4]
  wire [31:0] _T_331; // @[riscvSingle.scala 804:26:@1652.4 riscvSingle.scala 805:16:@1654.4]
  wire [31:0] _T_341; // @[riscvSingle.scala 804:26:@1665.4 riscvSingle.scala 805:16:@1667.4]
  reg [9:0] mem__T_22_addr_pipe_0;
  reg [31:0] _RAND_1;
  reg [9:0] mem_dat_addr_pipe_0;
  reg [31:0] _RAND_2;
  reg [9:0] mem__T_33_addr_pipe_0;
  reg [31:0] _RAND_3;
  reg [9:0] mem__T_43_addr_pipe_0;
  reg [31:0] _RAND_4;
  reg [9:0] mem__T_53_addr_pipe_0;
  reg [31:0] _RAND_5;
  reg [9:0] mem__T_63_addr_pipe_0;
  reg [31:0] _RAND_6;
  reg [9:0] mem__T_73_addr_pipe_0;
  reg [31:0] _RAND_7;
  reg [9:0] mem__T_83_addr_pipe_0;
  reg [31:0] _RAND_8;
  reg [9:0] mem__T_93_addr_pipe_0;
  reg [31:0] _RAND_9;
  reg [9:0] mem__T_103_addr_pipe_0;
  reg [31:0] _RAND_10;
  reg [9:0] mem__T_113_addr_pipe_0;
  reg [31:0] _RAND_11;
  reg [9:0] mem__T_123_addr_pipe_0;
  reg [31:0] _RAND_12;
  reg [9:0] mem__T_133_addr_pipe_0;
  reg [31:0] _RAND_13;
  reg [9:0] mem__T_143_addr_pipe_0;
  reg [31:0] _RAND_14;
  reg [9:0] mem__T_153_addr_pipe_0;
  reg [31:0] _RAND_15;
  reg [9:0] mem__T_163_addr_pipe_0;
  reg [31:0] _RAND_16;
  reg [9:0] mem__T_173_addr_pipe_0;
  reg [31:0] _RAND_17;
  reg [9:0] mem__T_183_addr_pipe_0;
  reg [31:0] _RAND_18;
  reg [9:0] mem__T_193_addr_pipe_0;
  reg [31:0] _RAND_19;
  reg [9:0] mem__T_203_addr_pipe_0;
  reg [31:0] _RAND_20;
  reg [9:0] mem__T_213_addr_pipe_0;
  reg [31:0] _RAND_21;
  reg [9:0] mem__T_223_addr_pipe_0;
  reg [31:0] _RAND_22;
  reg [9:0] mem__T_233_addr_pipe_0;
  reg [31:0] _RAND_23;
  reg [9:0] mem__T_243_addr_pipe_0;
  reg [31:0] _RAND_24;
  reg [9:0] mem__T_253_addr_pipe_0;
  reg [31:0] _RAND_25;
  reg [9:0] mem__T_263_addr_pipe_0;
  reg [31:0] _RAND_26;
  reg [9:0] mem__T_273_addr_pipe_0;
  reg [31:0] _RAND_27;
  reg [9:0] mem__T_283_addr_pipe_0;
  reg [31:0] _RAND_28;
  reg [9:0] mem__T_293_addr_pipe_0;
  reg [31:0] _RAND_29;
  reg [9:0] mem__T_303_addr_pipe_0;
  reg [31:0] _RAND_30;
  reg [9:0] mem__T_313_addr_pipe_0;
  reg [31:0] _RAND_31;
  reg [9:0] mem__T_323_addr_pipe_0;
  reg [31:0] _RAND_32;
  reg [9:0] mem__T_333_addr_pipe_0;
  reg [31:0] _RAND_33;
  reg [9:0] mem__T_343_addr_pipe_0;
  reg [31:0] _RAND_34;
  assign mem__T_22_addr = mem__T_22_addr_pipe_0;
  assign mem__T_22_data = mem[mem__T_22_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem_dat_addr = mem_dat_addr_pipe_0;
  assign mem_dat_data = mem[mem_dat_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_33_addr = mem__T_33_addr_pipe_0;
  assign mem__T_33_data = mem[mem__T_33_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_43_addr = mem__T_43_addr_pipe_0;
  assign mem__T_43_data = mem[mem__T_43_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_53_addr = mem__T_53_addr_pipe_0;
  assign mem__T_53_data = mem[mem__T_53_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_63_addr = mem__T_63_addr_pipe_0;
  assign mem__T_63_data = mem[mem__T_63_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_73_addr = mem__T_73_addr_pipe_0;
  assign mem__T_73_data = mem[mem__T_73_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_83_addr = mem__T_83_addr_pipe_0;
  assign mem__T_83_data = mem[mem__T_83_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_93_addr = mem__T_93_addr_pipe_0;
  assign mem__T_93_data = mem[mem__T_93_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_103_addr = mem__T_103_addr_pipe_0;
  assign mem__T_103_data = mem[mem__T_103_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_113_addr = mem__T_113_addr_pipe_0;
  assign mem__T_113_data = mem[mem__T_113_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_123_addr = mem__T_123_addr_pipe_0;
  assign mem__T_123_data = mem[mem__T_123_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_133_addr = mem__T_133_addr_pipe_0;
  assign mem__T_133_data = mem[mem__T_133_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_143_addr = mem__T_143_addr_pipe_0;
  assign mem__T_143_data = mem[mem__T_143_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_153_addr = mem__T_153_addr_pipe_0;
  assign mem__T_153_data = mem[mem__T_153_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_163_addr = mem__T_163_addr_pipe_0;
  assign mem__T_163_data = mem[mem__T_163_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_173_addr = mem__T_173_addr_pipe_0;
  assign mem__T_173_data = mem[mem__T_173_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_183_addr = mem__T_183_addr_pipe_0;
  assign mem__T_183_data = mem[mem__T_183_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_193_addr = mem__T_193_addr_pipe_0;
  assign mem__T_193_data = mem[mem__T_193_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_203_addr = mem__T_203_addr_pipe_0;
  assign mem__T_203_data = mem[mem__T_203_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_213_addr = mem__T_213_addr_pipe_0;
  assign mem__T_213_data = mem[mem__T_213_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_223_addr = mem__T_223_addr_pipe_0;
  assign mem__T_223_data = mem[mem__T_223_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_233_addr = mem__T_233_addr_pipe_0;
  assign mem__T_233_data = mem[mem__T_233_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_243_addr = mem__T_243_addr_pipe_0;
  assign mem__T_243_data = mem[mem__T_243_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_253_addr = mem__T_253_addr_pipe_0;
  assign mem__T_253_data = mem[mem__T_253_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_263_addr = mem__T_263_addr_pipe_0;
  assign mem__T_263_data = mem[mem__T_263_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_273_addr = mem__T_273_addr_pipe_0;
  assign mem__T_273_data = mem[mem__T_273_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_283_addr = mem__T_283_addr_pipe_0;
  assign mem__T_283_data = mem[mem__T_283_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_293_addr = mem__T_293_addr_pipe_0;
  assign mem__T_293_data = mem[mem__T_293_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_303_addr = mem__T_303_addr_pipe_0;
  assign mem__T_303_data = mem[mem__T_303_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_313_addr = mem__T_313_addr_pipe_0;
  assign mem__T_313_data = mem[mem__T_313_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_323_addr = mem__T_323_addr_pipe_0;
  assign mem__T_323_data = mem[mem__T_323_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_333_addr = mem__T_333_addr_pipe_0;
  assign mem__T_333_data = mem[mem__T_333_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_343_addr = mem__T_343_addr_pipe_0;
  assign mem__T_343_data = mem[mem__T_343_addr]; // @[riscvSingle.scala 792:26:@1239.4]
  assign mem__T_20_data = io_memWriteData;
  assign mem__T_20_addr = io_memAddress[9:0];
  assign mem__T_20_mask = 1'h1;
  assign mem__T_20_en = _T_16 == 1'h0;
  assign _T_16 = ~ io_memWriteEnable; // @[riscvSingle.scala 793:28:@1240.4]
  assign _T_19 = io_memAddress[9:0]; // @[:@1243.6]
  assign _GEN_3 = 1'h1; // @[riscvSingle.scala 793:33:@1242.4]
  assign _T_26 = reset == 1'h0; // @[riscvSingle.scala 800:11:@1253.4]
  assign dmemMessage_memWriteEnable = {{31'd0}, io_memWriteEnable}; // @[riscvSingle.scala 791:27:@1238.4 riscvSingle.scala 813:32:@1685.4]
  assign _T_31 = mem__T_33_data; // @[riscvSingle.scala 804:26:@1262.4 riscvSingle.scala 805:16:@1264.4]
  assign _T_41 = mem__T_43_data; // @[riscvSingle.scala 804:26:@1275.4 riscvSingle.scala 805:16:@1277.4]
  assign _T_51 = mem__T_53_data; // @[riscvSingle.scala 804:26:@1288.4 riscvSingle.scala 805:16:@1290.4]
  assign _T_61 = mem__T_63_data; // @[riscvSingle.scala 804:26:@1301.4 riscvSingle.scala 805:16:@1303.4]
  assign _T_71 = mem__T_73_data; // @[riscvSingle.scala 804:26:@1314.4 riscvSingle.scala 805:16:@1316.4]
  assign _T_81 = mem__T_83_data; // @[riscvSingle.scala 804:26:@1327.4 riscvSingle.scala 805:16:@1329.4]
  assign _T_91 = mem__T_93_data; // @[riscvSingle.scala 804:26:@1340.4 riscvSingle.scala 805:16:@1342.4]
  assign _T_101 = mem__T_103_data; // @[riscvSingle.scala 804:26:@1353.4 riscvSingle.scala 805:16:@1355.4]
  assign _T_111 = mem__T_113_data; // @[riscvSingle.scala 804:26:@1366.4 riscvSingle.scala 805:16:@1368.4]
  assign _T_121 = mem__T_123_data; // @[riscvSingle.scala 804:26:@1379.4 riscvSingle.scala 805:16:@1381.4]
  assign _T_131 = mem__T_133_data; // @[riscvSingle.scala 804:26:@1392.4 riscvSingle.scala 805:16:@1394.4]
  assign _T_141 = mem__T_143_data; // @[riscvSingle.scala 804:26:@1405.4 riscvSingle.scala 805:16:@1407.4]
  assign _T_151 = mem__T_153_data; // @[riscvSingle.scala 804:26:@1418.4 riscvSingle.scala 805:16:@1420.4]
  assign _T_161 = mem__T_163_data; // @[riscvSingle.scala 804:26:@1431.4 riscvSingle.scala 805:16:@1433.4]
  assign _T_171 = mem__T_173_data; // @[riscvSingle.scala 804:26:@1444.4 riscvSingle.scala 805:16:@1446.4]
  assign _T_181 = mem__T_183_data; // @[riscvSingle.scala 804:26:@1457.4 riscvSingle.scala 805:16:@1459.4]
  assign _T_191 = mem__T_193_data; // @[riscvSingle.scala 804:26:@1470.4 riscvSingle.scala 805:16:@1472.4]
  assign _T_201 = mem__T_203_data; // @[riscvSingle.scala 804:26:@1483.4 riscvSingle.scala 805:16:@1485.4]
  assign _T_211 = mem__T_213_data; // @[riscvSingle.scala 804:26:@1496.4 riscvSingle.scala 805:16:@1498.4]
  assign _T_221 = mem__T_223_data; // @[riscvSingle.scala 804:26:@1509.4 riscvSingle.scala 805:16:@1511.4]
  assign _T_231 = mem__T_233_data; // @[riscvSingle.scala 804:26:@1522.4 riscvSingle.scala 805:16:@1524.4]
  assign _T_241 = mem__T_243_data; // @[riscvSingle.scala 804:26:@1535.4 riscvSingle.scala 805:16:@1537.4]
  assign _T_251 = mem__T_253_data; // @[riscvSingle.scala 804:26:@1548.4 riscvSingle.scala 805:16:@1550.4]
  assign _T_261 = mem__T_263_data; // @[riscvSingle.scala 804:26:@1561.4 riscvSingle.scala 805:16:@1563.4]
  assign _T_271 = mem__T_273_data; // @[riscvSingle.scala 804:26:@1574.4 riscvSingle.scala 805:16:@1576.4]
  assign _T_281 = mem__T_283_data; // @[riscvSingle.scala 804:26:@1587.4 riscvSingle.scala 805:16:@1589.4]
  assign _T_291 = mem__T_293_data; // @[riscvSingle.scala 804:26:@1600.4 riscvSingle.scala 805:16:@1602.4]
  assign _T_301 = mem__T_303_data; // @[riscvSingle.scala 804:26:@1613.4 riscvSingle.scala 805:16:@1615.4]
  assign _T_311 = mem__T_313_data; // @[riscvSingle.scala 804:26:@1626.4 riscvSingle.scala 805:16:@1628.4]
  assign _T_321 = mem__T_323_data; // @[riscvSingle.scala 804:26:@1639.4 riscvSingle.scala 805:16:@1641.4]
  assign _T_331 = mem__T_333_data; // @[riscvSingle.scala 804:26:@1652.4 riscvSingle.scala 805:16:@1654.4]
  assign _T_341 = mem__T_343_data; // @[riscvSingle.scala 804:26:@1665.4 riscvSingle.scala 805:16:@1667.4]
  assign io_memReadData = mem__T_22_data; // @[riscvSingle.scala 797:20:@1249.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem__T_22_addr_pipe_0 = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mem_dat_addr_pipe_0 = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  mem__T_33_addr_pipe_0 = _RAND_3[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  mem__T_43_addr_pipe_0 = _RAND_4[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  mem__T_53_addr_pipe_0 = _RAND_5[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  mem__T_63_addr_pipe_0 = _RAND_6[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  mem__T_73_addr_pipe_0 = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  mem__T_83_addr_pipe_0 = _RAND_8[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  mem__T_93_addr_pipe_0 = _RAND_9[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  mem__T_103_addr_pipe_0 = _RAND_10[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  mem__T_113_addr_pipe_0 = _RAND_11[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  mem__T_123_addr_pipe_0 = _RAND_12[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  mem__T_133_addr_pipe_0 = _RAND_13[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  mem__T_143_addr_pipe_0 = _RAND_14[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  mem__T_153_addr_pipe_0 = _RAND_15[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  mem__T_163_addr_pipe_0 = _RAND_16[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  mem__T_173_addr_pipe_0 = _RAND_17[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  mem__T_183_addr_pipe_0 = _RAND_18[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  mem__T_193_addr_pipe_0 = _RAND_19[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  mem__T_203_addr_pipe_0 = _RAND_20[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  mem__T_213_addr_pipe_0 = _RAND_21[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  mem__T_223_addr_pipe_0 = _RAND_22[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  mem__T_233_addr_pipe_0 = _RAND_23[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  mem__T_243_addr_pipe_0 = _RAND_24[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  mem__T_253_addr_pipe_0 = _RAND_25[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mem__T_263_addr_pipe_0 = _RAND_26[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  mem__T_273_addr_pipe_0 = _RAND_27[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  mem__T_283_addr_pipe_0 = _RAND_28[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  mem__T_293_addr_pipe_0 = _RAND_29[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  mem__T_303_addr_pipe_0 = _RAND_30[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  mem__T_313_addr_pipe_0 = _RAND_31[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  mem__T_323_addr_pipe_0 = _RAND_32[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  mem__T_333_addr_pipe_0 = _RAND_33[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  mem__T_343_addr_pipe_0 = _RAND_34[9:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_20_en & mem__T_20_mask) begin
      mem[mem__T_20_addr] <= mem__T_20_data; // @[riscvSingle.scala 792:26:@1239.4]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"mem(%d) = %d",io_memAddress,mem_dat_data); // @[riscvSingle.scala 800:11:@1255.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"\n\n\nMemory___________________________\n"); // @[riscvSingle.scala 802:11:@1260.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(0) = "); // @[riscvSingle.scala 806:15:@1268.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_31); // @[riscvSingle.scala 807:15:@1273.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(1) = "); // @[riscvSingle.scala 806:15:@1281.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_41); // @[riscvSingle.scala 807:15:@1286.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(2) = "); // @[riscvSingle.scala 806:15:@1294.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_51); // @[riscvSingle.scala 807:15:@1299.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(3) = "); // @[riscvSingle.scala 806:15:@1307.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_61); // @[riscvSingle.scala 807:15:@1312.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(4) = "); // @[riscvSingle.scala 806:15:@1320.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_71); // @[riscvSingle.scala 807:15:@1325.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(5) = "); // @[riscvSingle.scala 806:15:@1333.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_81); // @[riscvSingle.scala 807:15:@1338.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(6) = "); // @[riscvSingle.scala 806:15:@1346.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_91); // @[riscvSingle.scala 807:15:@1351.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(7) = "); // @[riscvSingle.scala 806:15:@1359.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_101); // @[riscvSingle.scala 807:15:@1364.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(8) = "); // @[riscvSingle.scala 806:15:@1372.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_111); // @[riscvSingle.scala 807:15:@1377.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(9) = "); // @[riscvSingle.scala 806:15:@1385.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_121); // @[riscvSingle.scala 807:15:@1390.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(10) = "); // @[riscvSingle.scala 806:15:@1398.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_131); // @[riscvSingle.scala 807:15:@1403.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(11) = "); // @[riscvSingle.scala 806:15:@1411.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_141); // @[riscvSingle.scala 807:15:@1416.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(12) = "); // @[riscvSingle.scala 806:15:@1424.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_151); // @[riscvSingle.scala 807:15:@1429.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(13) = "); // @[riscvSingle.scala 806:15:@1437.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_161); // @[riscvSingle.scala 807:15:@1442.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(14) = "); // @[riscvSingle.scala 806:15:@1450.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_171); // @[riscvSingle.scala 807:15:@1455.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(15) = "); // @[riscvSingle.scala 806:15:@1463.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_181); // @[riscvSingle.scala 807:15:@1468.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(16) = "); // @[riscvSingle.scala 806:15:@1476.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_191); // @[riscvSingle.scala 807:15:@1481.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(17) = "); // @[riscvSingle.scala 806:15:@1489.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_201); // @[riscvSingle.scala 807:15:@1494.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(18) = "); // @[riscvSingle.scala 806:15:@1502.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_211); // @[riscvSingle.scala 807:15:@1507.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(19) = "); // @[riscvSingle.scala 806:15:@1515.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_221); // @[riscvSingle.scala 807:15:@1520.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(20) = "); // @[riscvSingle.scala 806:15:@1528.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_231); // @[riscvSingle.scala 807:15:@1533.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(21) = "); // @[riscvSingle.scala 806:15:@1541.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_241); // @[riscvSingle.scala 807:15:@1546.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(22) = "); // @[riscvSingle.scala 806:15:@1554.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_251); // @[riscvSingle.scala 807:15:@1559.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(23) = "); // @[riscvSingle.scala 806:15:@1567.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_261); // @[riscvSingle.scala 807:15:@1572.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(24) = "); // @[riscvSingle.scala 806:15:@1580.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_271); // @[riscvSingle.scala 807:15:@1585.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(25) = "); // @[riscvSingle.scala 806:15:@1593.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_281); // @[riscvSingle.scala 807:15:@1598.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(26) = "); // @[riscvSingle.scala 806:15:@1606.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_291); // @[riscvSingle.scala 807:15:@1611.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(27) = "); // @[riscvSingle.scala 806:15:@1619.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_301); // @[riscvSingle.scala 807:15:@1624.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(28) = "); // @[riscvSingle.scala 806:15:@1632.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_311); // @[riscvSingle.scala 807:15:@1637.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(29) = "); // @[riscvSingle.scala 806:15:@1645.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_321); // @[riscvSingle.scala 807:15:@1650.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(30) = "); // @[riscvSingle.scala 806:15:@1658.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_331); // @[riscvSingle.scala 807:15:@1663.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"| mem(31) = "); // @[riscvSingle.scala 806:15:@1671.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"%d\n",_T_341); // @[riscvSingle.scala 807:15:@1676.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"|________________________________\n"); // @[riscvSingle.scala 809:11:@1681.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_26) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|dmem Module:\n|  memAddress      : 0x%x\n|  memWriteData    : 0x%x\n|  memWriteEnable  : b%b\n|  memReadData     : 0x%x\n|___________________________\n",io_memAddress,io_memWriteData,dmemMessage_memWriteEnable,io_memReadData); // @[riscvSingle.scala 815:11:@1690.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    if (_GEN_3) begin
      mem__T_22_addr_pipe_0 <= _T_19;
    end
    if (_GEN_3) begin
      mem_dat_addr_pipe_0 <= _T_19;
    end
    if (_GEN_3) begin
      mem__T_33_addr_pipe_0 <= 10'h0;
    end
    if (_GEN_3) begin
      mem__T_43_addr_pipe_0 <= 10'h1;
    end
    if (_GEN_3) begin
      mem__T_53_addr_pipe_0 <= 10'h2;
    end
    if (_GEN_3) begin
      mem__T_63_addr_pipe_0 <= 10'h3;
    end
    if (_GEN_3) begin
      mem__T_73_addr_pipe_0 <= 10'h4;
    end
    if (_GEN_3) begin
      mem__T_83_addr_pipe_0 <= 10'h5;
    end
    if (_GEN_3) begin
      mem__T_93_addr_pipe_0 <= 10'h6;
    end
    if (_GEN_3) begin
      mem__T_103_addr_pipe_0 <= 10'h7;
    end
    if (_GEN_3) begin
      mem__T_113_addr_pipe_0 <= 10'h8;
    end
    if (_GEN_3) begin
      mem__T_123_addr_pipe_0 <= 10'h9;
    end
    if (_GEN_3) begin
      mem__T_133_addr_pipe_0 <= 10'ha;
    end
    if (_GEN_3) begin
      mem__T_143_addr_pipe_0 <= 10'hb;
    end
    if (_GEN_3) begin
      mem__T_153_addr_pipe_0 <= 10'hc;
    end
    if (_GEN_3) begin
      mem__T_163_addr_pipe_0 <= 10'hd;
    end
    if (_GEN_3) begin
      mem__T_173_addr_pipe_0 <= 10'he;
    end
    if (_GEN_3) begin
      mem__T_183_addr_pipe_0 <= 10'hf;
    end
    if (_GEN_3) begin
      mem__T_193_addr_pipe_0 <= 10'h10;
    end
    if (_GEN_3) begin
      mem__T_203_addr_pipe_0 <= 10'h11;
    end
    if (_GEN_3) begin
      mem__T_213_addr_pipe_0 <= 10'h12;
    end
    if (_GEN_3) begin
      mem__T_223_addr_pipe_0 <= 10'h13;
    end
    if (_GEN_3) begin
      mem__T_233_addr_pipe_0 <= 10'h14;
    end
    if (_GEN_3) begin
      mem__T_243_addr_pipe_0 <= 10'h15;
    end
    if (_GEN_3) begin
      mem__T_253_addr_pipe_0 <= 10'h16;
    end
    if (_GEN_3) begin
      mem__T_263_addr_pipe_0 <= 10'h17;
    end
    if (_GEN_3) begin
      mem__T_273_addr_pipe_0 <= 10'h18;
    end
    if (_GEN_3) begin
      mem__T_283_addr_pipe_0 <= 10'h19;
    end
    if (_GEN_3) begin
      mem__T_293_addr_pipe_0 <= 10'h1a;
    end
    if (_GEN_3) begin
      mem__T_303_addr_pipe_0 <= 10'h1b;
    end
    if (_GEN_3) begin
      mem__T_313_addr_pipe_0 <= 10'h1c;
    end
    if (_GEN_3) begin
      mem__T_323_addr_pipe_0 <= 10'h1d;
    end
    if (_GEN_3) begin
      mem__T_333_addr_pipe_0 <= 10'h1e;
    end
    if (_GEN_3) begin
      mem__T_343_addr_pipe_0 <= 10'h1f;
    end
  end
endmodule
module top( // @[:@1693.2]
  input   clock, // @[:@1694.4]
  input   reset, // @[:@1695.4]
  output  io_valid // @[:@1696.4]
);
  wire  r_clock; // @[riscvSingle.scala 34:19:@1699.4]
  wire  r_reset; // @[riscvSingle.scala 34:19:@1699.4]
  wire [31:0] r_io_instr; // @[riscvSingle.scala 34:19:@1699.4]
  wire [31:0] r_io_memReadData; // @[riscvSingle.scala 34:19:@1699.4]
  wire [31:0] r_io_pc; // @[riscvSingle.scala 34:19:@1699.4]
  wire  r_io_memWriteEnable; // @[riscvSingle.scala 34:19:@1699.4]
  wire [31:0] r_io_memAddress; // @[riscvSingle.scala 34:19:@1699.4]
  wire [31:0] r_io_memWriteData; // @[riscvSingle.scala 34:19:@1699.4]
  wire  im_clock; // @[riscvSingle.scala 35:20:@1702.4]
  wire [31:0] im_io_instAddress; // @[riscvSingle.scala 35:20:@1702.4]
  wire [31:0] im_io_inst; // @[riscvSingle.scala 35:20:@1702.4]
  wire  dm_clock; // @[riscvSingle.scala 36:20:@1705.4]
  wire  dm_reset; // @[riscvSingle.scala 36:20:@1705.4]
  wire [31:0] dm_io_memAddress; // @[riscvSingle.scala 36:20:@1705.4]
  wire [31:0] dm_io_memWriteData; // @[riscvSingle.scala 36:20:@1705.4]
  wire  dm_io_memWriteEnable; // @[riscvSingle.scala 36:20:@1705.4]
  wire [31:0] dm_io_memReadData; // @[riscvSingle.scala 36:20:@1705.4]
  wire [31:0] topMessage_pc_pulled; // @[riscvSingle.scala 46:37:@1713.4]
  wire  _T_12; // @[riscvSingle.scala 51:11:@1720.4]
  wire [6:0] _T_15; // @[riscvSingle.scala 57:31:@1727.4]
  wire  _T_17; // @[riscvSingle.scala 57:38:@1728.4]
  wire [31:0] topMessage_instr_pulled; // @[riscvSingle.scala 33:26:@1698.4 riscvSingle.scala 45:29:@1712.4]
  wire  topMessage_memWriteEnable; // @[riscvSingle.scala 33:26:@1698.4 riscvSingle.scala 48:31:@1716.4]
  wire [31:0] topMessage_memWriteData; // @[riscvSingle.scala 33:26:@1698.4 riscvSingle.scala 47:29:@1715.4]
  wire [31:0] topMessage_memAddress; // @[riscvSingle.scala 33:26:@1698.4 riscvSingle.scala 49:27:@1717.4]
  wire [31:0] topMessage_memReadData; // @[riscvSingle.scala 33:26:@1698.4 riscvSingle.scala 50:28:@1718.4]
  riscv r ( // @[riscvSingle.scala 34:19:@1699.4]
    .clock(r_clock),
    .reset(r_reset),
    .io_instr(r_io_instr),
    .io_memReadData(r_io_memReadData),
    .io_pc(r_io_pc),
    .io_memWriteEnable(r_io_memWriteEnable),
    .io_memAddress(r_io_memAddress),
    .io_memWriteData(r_io_memWriteData)
  );
  imem im ( // @[riscvSingle.scala 35:20:@1702.4]
    .clock(im_clock),
    .io_instAddress(im_io_instAddress),
    .io_inst(im_io_inst)
  );
  dmem dm ( // @[riscvSingle.scala 36:20:@1705.4]
    .clock(dm_clock),
    .reset(dm_reset),
    .io_memAddress(dm_io_memAddress),
    .io_memWriteData(dm_io_memWriteData),
    .io_memWriteEnable(dm_io_memWriteEnable),
    .io_memReadData(dm_io_memReadData)
  );
  assign topMessage_pc_pulled = r_io_pc / 32'h4; // @[riscvSingle.scala 46:37:@1713.4]
  assign _T_12 = reset == 1'h0; // @[riscvSingle.scala 51:11:@1720.4]
  assign _T_15 = im_io_inst[6:0]; // @[riscvSingle.scala 57:31:@1727.4]
  assign _T_17 = _T_15 == 7'h73; // @[riscvSingle.scala 57:38:@1728.4]
  assign topMessage_instr_pulled = im_io_inst; // @[riscvSingle.scala 33:26:@1698.4 riscvSingle.scala 45:29:@1712.4]
  assign topMessage_memWriteEnable = r_io_memWriteEnable; // @[riscvSingle.scala 33:26:@1698.4 riscvSingle.scala 48:31:@1716.4]
  assign topMessage_memWriteData = r_io_memWriteData; // @[riscvSingle.scala 33:26:@1698.4 riscvSingle.scala 47:29:@1715.4]
  assign topMessage_memAddress = r_io_memAddress; // @[riscvSingle.scala 33:26:@1698.4 riscvSingle.scala 49:27:@1717.4]
  assign topMessage_memReadData = dm_io_memReadData; // @[riscvSingle.scala 33:26:@1698.4 riscvSingle.scala 50:28:@1718.4]
  assign io_valid = _T_17 ? 1'h0 : 1'h1; // @[riscvSingle.scala 57:14:@1730.4]
  assign r_clock = clock; // @[:@1700.4]
  assign r_reset = reset; // @[:@1701.4]
  assign r_io_instr = im_io_inst; // @[riscvSingle.scala 55:16:@1726.4]
  assign r_io_memReadData = dm_io_memReadData; // @[riscvSingle.scala 42:22:@1711.4]
  assign im_clock = clock; // @[:@1703.4]
  assign im_io_instAddress = r_io_pc / 32'h4; // @[riscvSingle.scala 53:23:@1725.4]
  assign dm_clock = clock; // @[:@1706.4]
  assign dm_reset = reset; // @[:@1707.4]
  assign dm_io_memAddress = r_io_memAddress; // @[riscvSingle.scala 38:22:@1708.4]
  assign dm_io_memWriteData = r_io_memWriteData; // @[riscvSingle.scala 39:24:@1709.4]
  assign dm_io_memWriteEnable = r_io_memWriteEnable; // @[riscvSingle.scala 40:26:@1710.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_12) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|top Module:\n|  instr pulled       : 0x%x\n|  pc pulled          : b%b\n|  memWriteEnable     : b%b\n|  memWriteData       : 0x%x\n|  memAddress         : 0x%x\n|  memReadData        : 0x%x\n|___________________________\n",topMessage_instr_pulled,topMessage_pc_pulled,topMessage_memWriteEnable,topMessage_memWriteData,topMessage_memAddress,topMessage_memReadData); // @[riscvSingle.scala 51:11:@1722.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
