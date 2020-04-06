module extend( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [11:0] io_instr12, // @[:@6.4]
  input  [19:0] io_instr20, // @[:@6.4]
  input  [1:0]  io_immSrc, // @[:@6.4]
  output [31:0] io_extImm // @[:@6.4]
);
  wire  _T_15; // @[riscvSingle.scala 168:20:@9.4]
  wire  _T_16; // @[riscvSingle.scala 169:24:@11.6]
  wire [31:0] _T_20; // @[Cat.scala 30:58:@14.8]
  wire [12:0] _T_22; // @[Cat.scala 30:58:@18.8]
  wire [31:0] _GEN_0; // @[riscvSingle.scala 169:37:@13.6]
  wire  _T_24; // @[riscvSingle.scala 174:26:@23.6]
  wire [31:0] _T_31; // @[Cat.scala 30:58:@29.10]
  wire [13:0] _T_35; // @[Cat.scala 30:58:@34.10]
  wire [31:0] _GEN_1; // @[riscvSingle.scala 175:37:@27.8]
  wire  _T_37; // @[riscvSingle.scala 180:26:@39.8]
  wire  _T_38; // @[riscvSingle.scala 181:24:@41.10]
  wire [31:0] _T_44; // @[Cat.scala 30:58:@45.12]
  wire [21:0] _T_48; // @[Cat.scala 30:58:@50.12]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 181:37:@43.10]
  wire [31:0] _GEN_3; // @[riscvSingle.scala 180:34:@40.8]
  wire [31:0] _GEN_4; // @[riscvSingle.scala 174:34:@24.6]
  wire  _T_52; // @[riscvSingle.scala 193:11:@62.4]
  assign _T_15 = io_immSrc == 2'h0; // @[riscvSingle.scala 168:20:@9.4]
  assign _T_16 = io_instr12[11]; // @[riscvSingle.scala 169:24:@11.6]
  assign _T_20 = {20'hfffff,io_instr12}; // @[Cat.scala 30:58:@14.8]
  assign _T_22 = {1'h0,io_instr12}; // @[Cat.scala 30:58:@18.8]
  assign _GEN_0 = _T_16 ? _T_20 : {{19'd0}, _T_22}; // @[riscvSingle.scala 169:37:@13.6]
  assign _T_24 = io_immSrc == 2'h1; // @[riscvSingle.scala 174:26:@23.6]
  assign _T_31 = {19'h7ffff,io_instr12,1'h0}; // @[Cat.scala 30:58:@29.10]
  assign _T_35 = {1'h0,io_instr12,1'h0}; // @[Cat.scala 30:58:@34.10]
  assign _GEN_1 = _T_16 ? _T_31 : {{18'd0}, _T_35}; // @[riscvSingle.scala 175:37:@27.8]
  assign _T_37 = io_immSrc == 2'h2; // @[riscvSingle.scala 180:26:@39.8]
  assign _T_38 = io_instr20[19]; // @[riscvSingle.scala 181:24:@41.10]
  assign _T_44 = {11'h7ff,io_instr20,1'h0}; // @[Cat.scala 30:58:@45.12]
  assign _T_48 = {1'h0,io_instr20,1'h0}; // @[Cat.scala 30:58:@50.12]
  assign _GEN_2 = _T_38 ? _T_44 : {{10'd0}, _T_48}; // @[riscvSingle.scala 181:37:@43.10]
  assign _GEN_3 = _T_37 ? _GEN_2 : 32'h0; // @[riscvSingle.scala 180:34:@40.8]
  assign _GEN_4 = _T_24 ? _GEN_1 : _GEN_3; // @[riscvSingle.scala 174:34:@24.6]
  assign _T_52 = reset == 1'h0; // @[riscvSingle.scala 193:11:@62.4]
  assign io_extImm = _T_15 ? _GEN_0 : _GEN_4; // @[riscvSingle.scala 170:23:@15.8 riscvSingle.scala 172:23:@19.8 riscvSingle.scala 176:23:@30.10 riscvSingle.scala 178:23:@35.10 riscvSingle.scala 182:23:@46.12 riscvSingle.scala 184:23:@51.12 riscvSingle.scala 187:19:@55.10]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_52) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|extend Module:\n|  instr12     : b%b\n|  instr20     : b%b\n|  immsrc      : b%b\n|  extImm      : 0x%x\n|___________________________\n",io_instr12,io_instr20,io_immSrc,io_extImm); // @[riscvSingle.scala 193:11:@64.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module regfile( // @[:@67.2]
  input         clock, // @[:@68.4]
  input         reset, // @[:@69.4]
  input         io_we3, // @[:@70.4]
  input  [4:0]  io_ra1, // @[:@70.4]
  input  [4:0]  io_ra2, // @[:@70.4]
  input  [4:0]  io_wa3, // @[:@70.4]
  input  [31:0] io_wd3, // @[:@70.4]
  input  [31:0] io_r31, // @[:@70.4]
  output [31:0] io_rd1, // @[:@70.4]
  output [31:0] io_rd2 // @[:@70.4]
);
  reg [31:0] rf [0:31]; // @[riscvSingle.scala 663:17:@72.4]
  reg [31:0] _RAND_0;
  wire [31:0] rf__T_39_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_39_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_40_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_40_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_45_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_45_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_46_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_46_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_57_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_57_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_67_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_67_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_77_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_77_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_87_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_87_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_97_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_97_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_107_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_107_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_117_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_117_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_127_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_127_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_137_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_137_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_147_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_147_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_157_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_157_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_167_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_167_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_177_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_177_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_187_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_187_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_197_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_197_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_207_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_207_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_217_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_217_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_227_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_227_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_237_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_237_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_247_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_247_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_257_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_257_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_267_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_267_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_277_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_277_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_287_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_287_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_297_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_297_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_307_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_307_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_317_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_317_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_327_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_327_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_337_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_337_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_347_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_347_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_357_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_357_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_367_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_367_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_32_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_32_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire  rf__T_32_mask; // @[riscvSingle.scala 663:17:@72.4]
  wire  rf__T_32_en; // @[riscvSingle.scala 663:17:@72.4]
  wire [31:0] rf__T_34_data; // @[riscvSingle.scala 663:17:@72.4]
  wire [4:0] rf__T_34_addr; // @[riscvSingle.scala 663:17:@72.4]
  wire  rf__T_34_mask; // @[riscvSingle.scala 663:17:@72.4]
  wire  rf__T_34_en; // @[riscvSingle.scala 663:17:@72.4]
  wire  _T_24; // @[riscvSingle.scala 666:17:@74.4]
  wire  _T_26; // @[riscvSingle.scala 666:17:@75.4]
  wire  _T_28; // @[riscvSingle.scala 666:34:@76.4]
  wire  _T_30; // @[riscvSingle.scala 666:25:@77.4]
  wire  _T_31; // @[riscvSingle.scala 666:22:@78.4]
  wire  _T_37; // @[riscvSingle.scala 672:27:@87.4]
  wire  _T_43; // @[riscvSingle.scala 673:27:@93.4]
  wire  _T_50; // @[riscvSingle.scala 683:11:@108.4]
  wire [31:0] _T_55; // @[riscvSingle.scala 688:26:@117.4 riscvSingle.scala 689:16:@119.4]
  wire [31:0] _T_65; // @[riscvSingle.scala 688:26:@130.4 riscvSingle.scala 689:16:@132.4]
  wire [31:0] _T_75; // @[riscvSingle.scala 688:26:@143.4 riscvSingle.scala 689:16:@145.4]
  wire [31:0] _T_85; // @[riscvSingle.scala 688:26:@156.4 riscvSingle.scala 689:16:@158.4]
  wire [31:0] _T_95; // @[riscvSingle.scala 688:26:@169.4 riscvSingle.scala 689:16:@171.4]
  wire [31:0] _T_105; // @[riscvSingle.scala 688:26:@182.4 riscvSingle.scala 689:16:@184.4]
  wire [31:0] _T_115; // @[riscvSingle.scala 688:26:@195.4 riscvSingle.scala 689:16:@197.4]
  wire [31:0] _T_125; // @[riscvSingle.scala 688:26:@208.4 riscvSingle.scala 689:16:@210.4]
  wire [31:0] _T_135; // @[riscvSingle.scala 688:26:@221.4 riscvSingle.scala 689:16:@223.4]
  wire [31:0] _T_145; // @[riscvSingle.scala 688:26:@234.4 riscvSingle.scala 689:16:@236.4]
  wire [31:0] _T_155; // @[riscvSingle.scala 688:26:@247.4 riscvSingle.scala 689:16:@249.4]
  wire [31:0] _T_165; // @[riscvSingle.scala 688:26:@260.4 riscvSingle.scala 689:16:@262.4]
  wire [31:0] _T_175; // @[riscvSingle.scala 688:26:@273.4 riscvSingle.scala 689:16:@275.4]
  wire [31:0] _T_185; // @[riscvSingle.scala 688:26:@286.4 riscvSingle.scala 689:16:@288.4]
  wire [31:0] _T_195; // @[riscvSingle.scala 688:26:@299.4 riscvSingle.scala 689:16:@301.4]
  wire [31:0] _T_205; // @[riscvSingle.scala 688:26:@312.4 riscvSingle.scala 689:16:@314.4]
  wire [31:0] _T_215; // @[riscvSingle.scala 688:26:@325.4 riscvSingle.scala 689:16:@327.4]
  wire [31:0] _T_225; // @[riscvSingle.scala 688:26:@338.4 riscvSingle.scala 689:16:@340.4]
  wire [31:0] _T_235; // @[riscvSingle.scala 688:26:@351.4 riscvSingle.scala 689:16:@353.4]
  wire [31:0] _T_245; // @[riscvSingle.scala 688:26:@364.4 riscvSingle.scala 689:16:@366.4]
  wire [31:0] _T_255; // @[riscvSingle.scala 688:26:@377.4 riscvSingle.scala 689:16:@379.4]
  wire [31:0] _T_265; // @[riscvSingle.scala 688:26:@390.4 riscvSingle.scala 689:16:@392.4]
  wire [31:0] _T_275; // @[riscvSingle.scala 688:26:@403.4 riscvSingle.scala 689:16:@405.4]
  wire [31:0] _T_285; // @[riscvSingle.scala 688:26:@416.4 riscvSingle.scala 689:16:@418.4]
  wire [31:0] _T_295; // @[riscvSingle.scala 688:26:@429.4 riscvSingle.scala 689:16:@431.4]
  wire [31:0] _T_305; // @[riscvSingle.scala 688:26:@442.4 riscvSingle.scala 689:16:@444.4]
  wire [31:0] _T_315; // @[riscvSingle.scala 688:26:@455.4 riscvSingle.scala 689:16:@457.4]
  wire [31:0] _T_325; // @[riscvSingle.scala 688:26:@468.4 riscvSingle.scala 689:16:@470.4]
  wire [31:0] _T_335; // @[riscvSingle.scala 688:26:@481.4 riscvSingle.scala 689:16:@483.4]
  wire [31:0] _T_345; // @[riscvSingle.scala 688:26:@494.4 riscvSingle.scala 689:16:@496.4]
  wire [31:0] _T_355; // @[riscvSingle.scala 688:26:@507.4 riscvSingle.scala 689:16:@509.4]
  wire [31:0] _T_365; // @[riscvSingle.scala 688:26:@520.4 riscvSingle.scala 689:16:@522.4]
  assign rf__T_39_addr = io_r31[4:0];
  assign rf__T_39_data = rf[rf__T_39_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_40_addr = io_ra1;
  assign rf__T_40_data = rf[rf__T_40_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_45_addr = io_r31[4:0];
  assign rf__T_45_data = rf[rf__T_45_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_46_addr = io_ra2;
  assign rf__T_46_data = rf[rf__T_46_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_57_addr = 5'h0;
  assign rf__T_57_data = rf[rf__T_57_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_67_addr = 5'h1;
  assign rf__T_67_data = rf[rf__T_67_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_77_addr = 5'h2;
  assign rf__T_77_data = rf[rf__T_77_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_87_addr = 5'h3;
  assign rf__T_87_data = rf[rf__T_87_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_97_addr = 5'h4;
  assign rf__T_97_data = rf[rf__T_97_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_107_addr = 5'h5;
  assign rf__T_107_data = rf[rf__T_107_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_117_addr = 5'h6;
  assign rf__T_117_data = rf[rf__T_117_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_127_addr = 5'h7;
  assign rf__T_127_data = rf[rf__T_127_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_137_addr = 5'h8;
  assign rf__T_137_data = rf[rf__T_137_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_147_addr = 5'h9;
  assign rf__T_147_data = rf[rf__T_147_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_157_addr = 5'ha;
  assign rf__T_157_data = rf[rf__T_157_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_167_addr = 5'hb;
  assign rf__T_167_data = rf[rf__T_167_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_177_addr = 5'hc;
  assign rf__T_177_data = rf[rf__T_177_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_187_addr = 5'hd;
  assign rf__T_187_data = rf[rf__T_187_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_197_addr = 5'he;
  assign rf__T_197_data = rf[rf__T_197_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_207_addr = 5'hf;
  assign rf__T_207_data = rf[rf__T_207_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_217_addr = 5'h10;
  assign rf__T_217_data = rf[rf__T_217_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_227_addr = 5'h11;
  assign rf__T_227_data = rf[rf__T_227_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_237_addr = 5'h12;
  assign rf__T_237_data = rf[rf__T_237_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_247_addr = 5'h13;
  assign rf__T_247_data = rf[rf__T_247_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_257_addr = 5'h14;
  assign rf__T_257_data = rf[rf__T_257_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_267_addr = 5'h15;
  assign rf__T_267_data = rf[rf__T_267_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_277_addr = 5'h16;
  assign rf__T_277_data = rf[rf__T_277_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_287_addr = 5'h17;
  assign rf__T_287_data = rf[rf__T_287_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_297_addr = 5'h18;
  assign rf__T_297_data = rf[rf__T_297_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_307_addr = 5'h19;
  assign rf__T_307_data = rf[rf__T_307_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_317_addr = 5'h1a;
  assign rf__T_317_data = rf[rf__T_317_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_327_addr = 5'h1b;
  assign rf__T_327_data = rf[rf__T_327_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_337_addr = 5'h1c;
  assign rf__T_337_data = rf[rf__T_337_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_347_addr = 5'h1d;
  assign rf__T_347_data = rf[rf__T_347_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_357_addr = 5'h1e;
  assign rf__T_357_data = rf[rf__T_357_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_367_addr = 5'h1f;
  assign rf__T_367_data = rf[rf__T_367_addr]; // @[riscvSingle.scala 663:17:@72.4]
  assign rf__T_32_data = io_wd3;
  assign rf__T_32_addr = io_wa3;
  assign rf__T_32_mask = 1'h1;
  assign rf__T_32_en = _T_26 & _T_30;
  assign rf__T_34_data = 32'h0;
  assign rf__T_34_addr = 5'h0;
  assign rf__T_34_mask = 1'h1;
  assign rf__T_34_en = _T_31 ? 1'h0 : 1'h1;
  assign _T_24 = ~ io_we3; // @[riscvSingle.scala 666:17:@74.4]
  assign _T_26 = _T_24 == 1'h0; // @[riscvSingle.scala 666:17:@75.4]
  assign _T_28 = io_wa3 == 5'h0; // @[riscvSingle.scala 666:34:@76.4]
  assign _T_30 = _T_28 == 1'h0; // @[riscvSingle.scala 666:25:@77.4]
  assign _T_31 = _T_26 & _T_30; // @[riscvSingle.scala 666:22:@78.4]
  assign _T_37 = io_ra1 == 5'h1f; // @[riscvSingle.scala 672:27:@87.4]
  assign _T_43 = io_ra2 == 5'h1f; // @[riscvSingle.scala 673:27:@93.4]
  assign _T_50 = reset == 1'h0; // @[riscvSingle.scala 683:11:@108.4]
  assign _T_55 = rf__T_57_data; // @[riscvSingle.scala 688:26:@117.4 riscvSingle.scala 689:16:@119.4]
  assign _T_65 = rf__T_67_data; // @[riscvSingle.scala 688:26:@130.4 riscvSingle.scala 689:16:@132.4]
  assign _T_75 = rf__T_77_data; // @[riscvSingle.scala 688:26:@143.4 riscvSingle.scala 689:16:@145.4]
  assign _T_85 = rf__T_87_data; // @[riscvSingle.scala 688:26:@156.4 riscvSingle.scala 689:16:@158.4]
  assign _T_95 = rf__T_97_data; // @[riscvSingle.scala 688:26:@169.4 riscvSingle.scala 689:16:@171.4]
  assign _T_105 = rf__T_107_data; // @[riscvSingle.scala 688:26:@182.4 riscvSingle.scala 689:16:@184.4]
  assign _T_115 = rf__T_117_data; // @[riscvSingle.scala 688:26:@195.4 riscvSingle.scala 689:16:@197.4]
  assign _T_125 = rf__T_127_data; // @[riscvSingle.scala 688:26:@208.4 riscvSingle.scala 689:16:@210.4]
  assign _T_135 = rf__T_137_data; // @[riscvSingle.scala 688:26:@221.4 riscvSingle.scala 689:16:@223.4]
  assign _T_145 = rf__T_147_data; // @[riscvSingle.scala 688:26:@234.4 riscvSingle.scala 689:16:@236.4]
  assign _T_155 = rf__T_157_data; // @[riscvSingle.scala 688:26:@247.4 riscvSingle.scala 689:16:@249.4]
  assign _T_165 = rf__T_167_data; // @[riscvSingle.scala 688:26:@260.4 riscvSingle.scala 689:16:@262.4]
  assign _T_175 = rf__T_177_data; // @[riscvSingle.scala 688:26:@273.4 riscvSingle.scala 689:16:@275.4]
  assign _T_185 = rf__T_187_data; // @[riscvSingle.scala 688:26:@286.4 riscvSingle.scala 689:16:@288.4]
  assign _T_195 = rf__T_197_data; // @[riscvSingle.scala 688:26:@299.4 riscvSingle.scala 689:16:@301.4]
  assign _T_205 = rf__T_207_data; // @[riscvSingle.scala 688:26:@312.4 riscvSingle.scala 689:16:@314.4]
  assign _T_215 = rf__T_217_data; // @[riscvSingle.scala 688:26:@325.4 riscvSingle.scala 689:16:@327.4]
  assign _T_225 = rf__T_227_data; // @[riscvSingle.scala 688:26:@338.4 riscvSingle.scala 689:16:@340.4]
  assign _T_235 = rf__T_237_data; // @[riscvSingle.scala 688:26:@351.4 riscvSingle.scala 689:16:@353.4]
  assign _T_245 = rf__T_247_data; // @[riscvSingle.scala 688:26:@364.4 riscvSingle.scala 689:16:@366.4]
  assign _T_255 = rf__T_257_data; // @[riscvSingle.scala 688:26:@377.4 riscvSingle.scala 689:16:@379.4]
  assign _T_265 = rf__T_267_data; // @[riscvSingle.scala 688:26:@390.4 riscvSingle.scala 689:16:@392.4]
  assign _T_275 = rf__T_277_data; // @[riscvSingle.scala 688:26:@403.4 riscvSingle.scala 689:16:@405.4]
  assign _T_285 = rf__T_287_data; // @[riscvSingle.scala 688:26:@416.4 riscvSingle.scala 689:16:@418.4]
  assign _T_295 = rf__T_297_data; // @[riscvSingle.scala 688:26:@429.4 riscvSingle.scala 689:16:@431.4]
  assign _T_305 = rf__T_307_data; // @[riscvSingle.scala 688:26:@442.4 riscvSingle.scala 689:16:@444.4]
  assign _T_315 = rf__T_317_data; // @[riscvSingle.scala 688:26:@455.4 riscvSingle.scala 689:16:@457.4]
  assign _T_325 = rf__T_327_data; // @[riscvSingle.scala 688:26:@468.4 riscvSingle.scala 689:16:@470.4]
  assign _T_335 = rf__T_337_data; // @[riscvSingle.scala 688:26:@481.4 riscvSingle.scala 689:16:@483.4]
  assign _T_345 = rf__T_347_data; // @[riscvSingle.scala 688:26:@494.4 riscvSingle.scala 689:16:@496.4]
  assign _T_355 = rf__T_357_data; // @[riscvSingle.scala 688:26:@507.4 riscvSingle.scala 689:16:@509.4]
  assign _T_365 = rf__T_367_data; // @[riscvSingle.scala 688:26:@520.4 riscvSingle.scala 689:16:@522.4]
  assign io_rd1 = _T_37 ? rf__T_39_data : rf__T_40_data; // @[riscvSingle.scala 672:12:@92.4]
  assign io_rd2 = _T_43 ? rf__T_45_data : rf__T_46_data; // @[riscvSingle.scala 673:12:@98.4]
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
      rf[rf__T_32_addr] <= rf__T_32_data; // @[riscvSingle.scala 663:17:@72.4]
    end
    if(rf__T_34_en & rf__T_34_mask) begin
      rf[rf__T_34_addr] <= rf__T_34_data; // @[riscvSingle.scala 663:17:@72.4]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|regfile Module:\n|  we3 : b%b\n|  ra1 : b%b\n|  ra2 : b%b\n|  wa3 : b%b\n|  wd3 : 0x%x\n|  r31 : 0x%x\n|  rd1 : 0x%x\n|  rd2 : 0x%x\n|___________________________\n",io_we3,io_ra1,io_ra2,io_wa3,io_wd3,io_r31,io_rd1,io_rd2); // @[riscvSingle.scala 683:11:@110.6]
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
          $fwrite(32'h80000002,"\n\n\n___________________________\n"); // @[riscvSingle.scala 686:11:@115.6]
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
          $fwrite(32'h80000002,"| rf(0) = "); // @[riscvSingle.scala 690:15:@123.6]
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
          $fwrite(32'h80000002,"%d\n",_T_55); // @[riscvSingle.scala 691:15:@128.6]
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
          $fwrite(32'h80000002,"| rf(1) = "); // @[riscvSingle.scala 690:15:@136.6]
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
          $fwrite(32'h80000002,"%d\n",_T_65); // @[riscvSingle.scala 691:15:@141.6]
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
          $fwrite(32'h80000002,"| rf(2) = "); // @[riscvSingle.scala 690:15:@149.6]
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
          $fwrite(32'h80000002,"%d\n",_T_75); // @[riscvSingle.scala 691:15:@154.6]
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
          $fwrite(32'h80000002,"| rf(3) = "); // @[riscvSingle.scala 690:15:@162.6]
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
          $fwrite(32'h80000002,"%d\n",_T_85); // @[riscvSingle.scala 691:15:@167.6]
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
          $fwrite(32'h80000002,"| rf(4) = "); // @[riscvSingle.scala 690:15:@175.6]
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
          $fwrite(32'h80000002,"%d\n",_T_95); // @[riscvSingle.scala 691:15:@180.6]
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
          $fwrite(32'h80000002,"| rf(5) = "); // @[riscvSingle.scala 690:15:@188.6]
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
          $fwrite(32'h80000002,"%d\n",_T_105); // @[riscvSingle.scala 691:15:@193.6]
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
          $fwrite(32'h80000002,"| rf(6) = "); // @[riscvSingle.scala 690:15:@201.6]
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
          $fwrite(32'h80000002,"%d\n",_T_115); // @[riscvSingle.scala 691:15:@206.6]
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
          $fwrite(32'h80000002,"| rf(7) = "); // @[riscvSingle.scala 690:15:@214.6]
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
          $fwrite(32'h80000002,"%d\n",_T_125); // @[riscvSingle.scala 691:15:@219.6]
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
          $fwrite(32'h80000002,"| rf(8) = "); // @[riscvSingle.scala 690:15:@227.6]
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
          $fwrite(32'h80000002,"%d\n",_T_135); // @[riscvSingle.scala 691:15:@232.6]
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
          $fwrite(32'h80000002,"| rf(9) = "); // @[riscvSingle.scala 690:15:@240.6]
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
          $fwrite(32'h80000002,"%d\n",_T_145); // @[riscvSingle.scala 691:15:@245.6]
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
          $fwrite(32'h80000002,"| rf(10) = "); // @[riscvSingle.scala 690:15:@253.6]
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
          $fwrite(32'h80000002,"%d\n",_T_155); // @[riscvSingle.scala 691:15:@258.6]
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
          $fwrite(32'h80000002,"| rf(11) = "); // @[riscvSingle.scala 690:15:@266.6]
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
          $fwrite(32'h80000002,"%d\n",_T_165); // @[riscvSingle.scala 691:15:@271.6]
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
          $fwrite(32'h80000002,"| rf(12) = "); // @[riscvSingle.scala 690:15:@279.6]
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
          $fwrite(32'h80000002,"%d\n",_T_175); // @[riscvSingle.scala 691:15:@284.6]
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
          $fwrite(32'h80000002,"| rf(13) = "); // @[riscvSingle.scala 690:15:@292.6]
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
          $fwrite(32'h80000002,"%d\n",_T_185); // @[riscvSingle.scala 691:15:@297.6]
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
          $fwrite(32'h80000002,"| rf(14) = "); // @[riscvSingle.scala 690:15:@305.6]
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
          $fwrite(32'h80000002,"%d\n",_T_195); // @[riscvSingle.scala 691:15:@310.6]
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
          $fwrite(32'h80000002,"| rf(15) = "); // @[riscvSingle.scala 690:15:@318.6]
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
          $fwrite(32'h80000002,"%d\n",_T_205); // @[riscvSingle.scala 691:15:@323.6]
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
          $fwrite(32'h80000002,"| rf(16) = "); // @[riscvSingle.scala 690:15:@331.6]
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
          $fwrite(32'h80000002,"%d\n",_T_215); // @[riscvSingle.scala 691:15:@336.6]
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
          $fwrite(32'h80000002,"| rf(17) = "); // @[riscvSingle.scala 690:15:@344.6]
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
          $fwrite(32'h80000002,"%d\n",_T_225); // @[riscvSingle.scala 691:15:@349.6]
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
          $fwrite(32'h80000002,"| rf(18) = "); // @[riscvSingle.scala 690:15:@357.6]
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
          $fwrite(32'h80000002,"%d\n",_T_235); // @[riscvSingle.scala 691:15:@362.6]
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
          $fwrite(32'h80000002,"| rf(19) = "); // @[riscvSingle.scala 690:15:@370.6]
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
          $fwrite(32'h80000002,"%d\n",_T_245); // @[riscvSingle.scala 691:15:@375.6]
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
          $fwrite(32'h80000002,"| rf(20) = "); // @[riscvSingle.scala 690:15:@383.6]
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
          $fwrite(32'h80000002,"%d\n",_T_255); // @[riscvSingle.scala 691:15:@388.6]
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
          $fwrite(32'h80000002,"| rf(21) = "); // @[riscvSingle.scala 690:15:@396.6]
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
          $fwrite(32'h80000002,"%d\n",_T_265); // @[riscvSingle.scala 691:15:@401.6]
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
          $fwrite(32'h80000002,"| rf(22) = "); // @[riscvSingle.scala 690:15:@409.6]
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
          $fwrite(32'h80000002,"%d\n",_T_275); // @[riscvSingle.scala 691:15:@414.6]
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
          $fwrite(32'h80000002,"| rf(23) = "); // @[riscvSingle.scala 690:15:@422.6]
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
          $fwrite(32'h80000002,"%d\n",_T_285); // @[riscvSingle.scala 691:15:@427.6]
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
          $fwrite(32'h80000002,"| rf(24) = "); // @[riscvSingle.scala 690:15:@435.6]
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
          $fwrite(32'h80000002,"%d\n",_T_295); // @[riscvSingle.scala 691:15:@440.6]
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
          $fwrite(32'h80000002,"| rf(25) = "); // @[riscvSingle.scala 690:15:@448.6]
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
          $fwrite(32'h80000002,"%d\n",_T_305); // @[riscvSingle.scala 691:15:@453.6]
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
          $fwrite(32'h80000002,"| rf(26) = "); // @[riscvSingle.scala 690:15:@461.6]
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
          $fwrite(32'h80000002,"%d\n",_T_315); // @[riscvSingle.scala 691:15:@466.6]
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
          $fwrite(32'h80000002,"| rf(27) = "); // @[riscvSingle.scala 690:15:@474.6]
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
          $fwrite(32'h80000002,"%d\n",_T_325); // @[riscvSingle.scala 691:15:@479.6]
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
          $fwrite(32'h80000002,"| rf(28) = "); // @[riscvSingle.scala 690:15:@487.6]
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
          $fwrite(32'h80000002,"%d\n",_T_335); // @[riscvSingle.scala 691:15:@492.6]
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
          $fwrite(32'h80000002,"| rf(29) = "); // @[riscvSingle.scala 690:15:@500.6]
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
          $fwrite(32'h80000002,"%d\n",_T_345); // @[riscvSingle.scala 691:15:@505.6]
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
          $fwrite(32'h80000002,"| rf(30) = "); // @[riscvSingle.scala 690:15:@513.6]
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
          $fwrite(32'h80000002,"%d\n",_T_355); // @[riscvSingle.scala 691:15:@518.6]
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
          $fwrite(32'h80000002,"| rf(31) = "); // @[riscvSingle.scala 690:15:@526.6]
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
          $fwrite(32'h80000002,"%d\n",_T_365); // @[riscvSingle.scala 691:15:@531.6]
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
          $fwrite(32'h80000002,"|___________________________\n"); // @[riscvSingle.scala 693:11:@536.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module alu( // @[:@603.2]
  input         clock, // @[:@604.4]
  input         reset, // @[:@605.4]
  input  [31:0] io_a, // @[:@606.4]
  input  [31:0] io_b, // @[:@606.4]
  input  [3:0]  io_aluControl, // @[:@606.4]
  input         io_imm, // @[:@606.4]
  output [31:0] io_out, // @[:@606.4]
  output        io_zero, // @[:@606.4]
  output        io_lt, // @[:@606.4]
  output        io_gt // @[:@606.4]
);
  wire  _T_23; // @[riscvSingle.scala 737:23:@610.4]
  wire [31:0] _T_26; // @[riscvSingle.scala 738:23:@613.6]
  wire [32:0] _T_27; // @[riscvSingle.scala 738:21:@614.6]
  wire [31:0] _T_28; // @[riscvSingle.scala 738:21:@615.6]
  wire [31:0] _GEN_16; // @[riscvSingle.scala 738:29:@617.6]
  wire [32:0] _T_30; // @[riscvSingle.scala 738:29:@617.6]
  wire [31:0] _T_31; // @[riscvSingle.scala 738:29:@618.6]
  wire [32:0] _T_32; // @[riscvSingle.scala 740:21:@622.6]
  wire [31:0] _T_33; // @[riscvSingle.scala 740:21:@623.6]
  wire [31:0] sum; // @[riscvSingle.scala 737:35:@612.4]
  wire  _T_35; // @[riscvSingle.scala 743:25:@626.4]
  wire [31:0] _T_36; // @[riscvSingle.scala 744:24:@628.6]
  wire  _T_38; // @[riscvSingle.scala 745:31:@632.6]
  wire [31:0] _T_39; // @[riscvSingle.scala 746:24:@634.8]
  wire  _T_41; // @[riscvSingle.scala 747:31:@638.8]
  wire  _T_45; // @[riscvSingle.scala 749:31:@645.10]
  wire  _T_46; // @[riscvSingle.scala 750:22:@647.12]
  wire  _T_48; // @[riscvSingle.scala 750:22:@648.12]
  wire [4:0] _T_49; // @[riscvSingle.scala 751:35:@650.14]
  wire [62:0] _GEN_17; // @[riscvSingle.scala 751:28:@651.14]
  wire [62:0] _T_50; // @[riscvSingle.scala 751:28:@651.14]
  wire [18:0] _T_51; // @[riscvSingle.scala 753:35:@655.14]
  wire [524318:0] _GEN_18; // @[riscvSingle.scala 753:28:@656.14]
  wire [524318:0] _T_52; // @[riscvSingle.scala 753:28:@656.14]
  wire [524318:0] _GEN_1; // @[riscvSingle.scala 750:28:@649.12]
  wire  _T_54; // @[riscvSingle.scala 755:31:@661.12]
  wire [31:0] _T_59; // @[riscvSingle.scala 757:28:@667.16]
  wire [31:0] _T_61; // @[riscvSingle.scala 759:28:@672.16]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 756:28:@665.14]
  wire  _T_63; // @[riscvSingle.scala 761:31:@677.14]
  wire [31:0] _T_64; // @[riscvSingle.scala 762:24:@679.16]
  wire  _T_66; // @[riscvSingle.scala 763:31:@683.16]
  wire  _T_75; // @[riscvSingle.scala 769:30:@699.18]
  wire [63:0] _T_76; // @[riscvSingle.scala 770:24:@701.20]
  wire  _T_78; // @[riscvSingle.scala 771:30:@705.20]
  wire [31:0] _T_79; // @[riscvSingle.scala 772:24:@707.22]
  wire  _T_81; // @[riscvSingle.scala 773:30:@711.22]
  wire  _T_82; // @[riscvSingle.scala 774:24:@713.24]
  wire  _T_84; // @[riscvSingle.scala 775:30:@717.24]
  wire [32:0] _T_85; // @[riscvSingle.scala 776:24:@719.26]
  wire [32:0] _T_86; // @[riscvSingle.scala 776:24:@720.26]
  wire [31:0] _T_87; // @[riscvSingle.scala 776:24:@721.26]
  wire [31:0] _GEN_4; // @[riscvSingle.scala 775:39:@718.24]
  wire [31:0] _GEN_5; // @[riscvSingle.scala 773:39:@712.22]
  wire [31:0] _GEN_6; // @[riscvSingle.scala 771:39:@706.20]
  wire [63:0] _GEN_7; // @[riscvSingle.scala 769:39:@700.18]
  wire [63:0] _GEN_8; // @[riscvSingle.scala 763:40:@684.16]
  wire [63:0] _GEN_9; // @[riscvSingle.scala 761:40:@678.14]
  wire [63:0] _GEN_10; // @[riscvSingle.scala 755:40:@662.12]
  wire [524318:0] _GEN_11; // @[riscvSingle.scala 749:40:@646.10]
  wire [524318:0] _GEN_12; // @[riscvSingle.scala 747:40:@639.8]
  wire [524318:0] _GEN_13; // @[riscvSingle.scala 745:40:@633.6]
  wire [524318:0] _GEN_14; // @[riscvSingle.scala 743:34:@627.4]
  wire  _T_100; // @[riscvSingle.scala 799:11:@750.4]
  assign _T_23 = io_aluControl[3]; // @[riscvSingle.scala 737:23:@610.4]
  assign _T_26 = ~ io_b; // @[riscvSingle.scala 738:23:@613.6]
  assign _T_27 = io_a + _T_26; // @[riscvSingle.scala 738:21:@614.6]
  assign _T_28 = io_a + _T_26; // @[riscvSingle.scala 738:21:@615.6]
  assign _GEN_16 = {{31'd0}, _T_23}; // @[riscvSingle.scala 738:29:@617.6]
  assign _T_30 = _T_28 + _GEN_16; // @[riscvSingle.scala 738:29:@617.6]
  assign _T_31 = _T_28 + _GEN_16; // @[riscvSingle.scala 738:29:@618.6]
  assign _T_32 = io_a + io_b; // @[riscvSingle.scala 740:21:@622.6]
  assign _T_33 = io_a + io_b; // @[riscvSingle.scala 740:21:@623.6]
  assign sum = _T_23 ? _T_31 : _T_33; // @[riscvSingle.scala 737:35:@612.4]
  assign _T_35 = io_aluControl == 4'h0; // @[riscvSingle.scala 743:25:@626.4]
  assign _T_36 = io_a & io_b; // @[riscvSingle.scala 744:24:@628.6]
  assign _T_38 = io_aluControl == 4'h1; // @[riscvSingle.scala 745:31:@632.6]
  assign _T_39 = io_a | io_b; // @[riscvSingle.scala 746:24:@634.8]
  assign _T_41 = io_aluControl == 4'h2; // @[riscvSingle.scala 747:31:@638.8]
  assign _T_45 = io_aluControl == 4'h3; // @[riscvSingle.scala 749:31:@645.10]
  assign _T_46 = ~ io_imm; // @[riscvSingle.scala 750:22:@647.12]
  assign _T_48 = _T_46 == 1'h0; // @[riscvSingle.scala 750:22:@648.12]
  assign _T_49 = io_b[4:0]; // @[riscvSingle.scala 751:35:@650.14]
  assign _GEN_17 = {{31'd0}, io_a}; // @[riscvSingle.scala 751:28:@651.14]
  assign _T_50 = _GEN_17 << _T_49; // @[riscvSingle.scala 751:28:@651.14]
  assign _T_51 = io_b[18:0]; // @[riscvSingle.scala 753:35:@655.14]
  assign _GEN_18 = {{524287'd0}, io_a}; // @[riscvSingle.scala 753:28:@656.14]
  assign _T_52 = _GEN_18 << _T_51; // @[riscvSingle.scala 753:28:@656.14]
  assign _GEN_1 = _T_48 ? {{524256'd0}, _T_50} : _T_52; // @[riscvSingle.scala 750:28:@649.12]
  assign _T_54 = io_aluControl == 4'h4; // @[riscvSingle.scala 755:31:@661.12]
  assign _T_59 = io_a >> _T_49; // @[riscvSingle.scala 757:28:@667.16]
  assign _T_61 = io_a >> _T_51; // @[riscvSingle.scala 759:28:@672.16]
  assign _GEN_2 = _T_48 ? _T_59 : _T_61; // @[riscvSingle.scala 756:28:@665.14]
  assign _T_63 = io_aluControl == 4'h6; // @[riscvSingle.scala 761:31:@677.14]
  assign _T_64 = io_a ^ io_b; // @[riscvSingle.scala 762:24:@679.16]
  assign _T_66 = io_aluControl == 4'h7; // @[riscvSingle.scala 763:31:@683.16]
  assign _T_75 = io_aluControl == 4'h8; // @[riscvSingle.scala 769:30:@699.18]
  assign _T_76 = io_a * io_b; // @[riscvSingle.scala 770:24:@701.20]
  assign _T_78 = io_aluControl == 4'ha; // @[riscvSingle.scala 771:30:@705.20]
  assign _T_79 = io_a / io_b; // @[riscvSingle.scala 772:24:@707.22]
  assign _T_81 = io_aluControl == 4'h9; // @[riscvSingle.scala 773:30:@711.22]
  assign _T_82 = io_a < io_b; // @[riscvSingle.scala 774:24:@713.24]
  assign _T_84 = io_aluControl == 4'hc; // @[riscvSingle.scala 775:30:@717.24]
  assign _T_85 = io_a - io_b; // @[riscvSingle.scala 776:24:@719.26]
  assign _T_86 = $unsigned(_T_85); // @[riscvSingle.scala 776:24:@720.26]
  assign _T_87 = _T_86[31:0]; // @[riscvSingle.scala 776:24:@721.26]
  assign _GEN_4 = _T_84 ? _T_87 : 32'h0; // @[riscvSingle.scala 775:39:@718.24]
  assign _GEN_5 = _T_81 ? {{31'd0}, _T_82} : _GEN_4; // @[riscvSingle.scala 773:39:@712.22]
  assign _GEN_6 = _T_78 ? _T_79 : _GEN_5; // @[riscvSingle.scala 771:39:@706.20]
  assign _GEN_7 = _T_75 ? _T_76 : {{32'd0}, _GEN_6}; // @[riscvSingle.scala 769:39:@700.18]
  assign _GEN_8 = _T_66 ? {{32'd0}, _GEN_2} : _GEN_7; // @[riscvSingle.scala 763:40:@684.16]
  assign _GEN_9 = _T_63 ? {{32'd0}, _T_64} : _GEN_8; // @[riscvSingle.scala 761:40:@678.14]
  assign _GEN_10 = _T_54 ? {{32'd0}, _GEN_2} : _GEN_9; // @[riscvSingle.scala 755:40:@662.12]
  assign _GEN_11 = _T_45 ? _GEN_1 : {{524255'd0}, _GEN_10}; // @[riscvSingle.scala 749:40:@646.10]
  assign _GEN_12 = _T_41 ? {{524287'd0}, _T_33} : _GEN_11; // @[riscvSingle.scala 747:40:@639.8]
  assign _GEN_13 = _T_38 ? {{524287'd0}, _T_39} : _GEN_12; // @[riscvSingle.scala 745:40:@633.6]
  assign _GEN_14 = _T_35 ? {{524287'd0}, _T_36} : _GEN_13; // @[riscvSingle.scala 743:34:@627.4]
  assign _T_100 = reset == 1'h0; // @[riscvSingle.scala 799:11:@750.4]
  assign io_out = _GEN_14[31:0]; // @[riscvSingle.scala 744:16:@629.6 riscvSingle.scala 746:16:@635.8 riscvSingle.scala 748:16:@642.10 riscvSingle.scala 751:20:@652.14 riscvSingle.scala 753:20:@657.14 riscvSingle.scala 757:20:@668.16 riscvSingle.scala 759:20:@673.16 riscvSingle.scala 762:16:@680.16 riscvSingle.scala 765:20:@690.20 riscvSingle.scala 767:20:@695.20 riscvSingle.scala 770:16:@702.20 riscvSingle.scala 772:16:@708.22 riscvSingle.scala 774:16:@714.24 riscvSingle.scala 776:16:@722.26 riscvSingle.scala 778:16:@725.26]
  assign io_zero = _T_87 == 32'h0; // @[riscvSingle.scala 783:17:@732.6 riscvSingle.scala 785:17:@735.6]
  assign io_lt = io_a < io_b; // @[riscvSingle.scala 788:11:@738.4]
  assign io_gt = io_a > io_b; // @[riscvSingle.scala 789:11:@740.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_100) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|alu Module:\n|  a           : 0x%x\n|  b           : 0x%x\n|  sum         : 0x%x\n|  out         : 0x%x\n|  aluControl  : b%b\n|  zero        : b%b\n|  lt          : b%b\n|  gt          : b%b\n|___________________________\n",io_a,io_b,sum,io_out,io_aluControl,io_zero,io_lt,io_gt); // @[riscvSingle.scala 799:11:@752.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module datapath( // @[:@755.2]
  input         clock, // @[:@756.4]
  input         reset, // @[:@757.4]
  input  [2:0]  io_regSrc, // @[:@758.4]
  input         io_regWrite, // @[:@758.4]
  input  [1:0]  io_immSrc, // @[:@758.4]
  input         io_aluSrc, // @[:@758.4]
  input         io_pcSrc, // @[:@758.4]
  input  [3:0]  io_aluControl, // @[:@758.4]
  input         io_memToReg, // @[:@758.4]
  input  [31:0] io_instr, // @[:@758.4]
  input  [31:0] io_readData, // @[:@758.4]
  input  [1:0]  io_branchSrc, // @[:@758.4]
  output [31:0] io_pc, // @[:@758.4]
  output [31:0] io_memAdd, // @[:@758.4]
  output [31:0] io_writeData, // @[:@758.4]
  output        io_zero, // @[:@758.4]
  output        io_lt, // @[:@758.4]
  output        io_gt // @[:@758.4]
);
  wire  ext1_clock; // @[riscvSingle.scala 531:22:@761.4]
  wire  ext1_reset; // @[riscvSingle.scala 531:22:@761.4]
  wire [11:0] ext1_io_instr12; // @[riscvSingle.scala 531:22:@761.4]
  wire [19:0] ext1_io_instr20; // @[riscvSingle.scala 531:22:@761.4]
  wire [1:0] ext1_io_immSrc; // @[riscvSingle.scala 531:22:@761.4]
  wire [31:0] ext1_io_extImm; // @[riscvSingle.scala 531:22:@761.4]
  wire  rf_clock; // @[riscvSingle.scala 532:20:@764.4]
  wire  rf_reset; // @[riscvSingle.scala 532:20:@764.4]
  wire  rf_io_we3; // @[riscvSingle.scala 532:20:@764.4]
  wire [4:0] rf_io_ra1; // @[riscvSingle.scala 532:20:@764.4]
  wire [4:0] rf_io_ra2; // @[riscvSingle.scala 532:20:@764.4]
  wire [4:0] rf_io_wa3; // @[riscvSingle.scala 532:20:@764.4]
  wire [31:0] rf_io_wd3; // @[riscvSingle.scala 532:20:@764.4]
  wire [31:0] rf_io_r31; // @[riscvSingle.scala 532:20:@764.4]
  wire [31:0] rf_io_rd1; // @[riscvSingle.scala 532:20:@764.4]
  wire [31:0] rf_io_rd2; // @[riscvSingle.scala 532:20:@764.4]
  wire  ext2_clock; // @[riscvSingle.scala 533:22:@767.4]
  wire  ext2_reset; // @[riscvSingle.scala 533:22:@767.4]
  wire [11:0] ext2_io_instr12; // @[riscvSingle.scala 533:22:@767.4]
  wire [19:0] ext2_io_instr20; // @[riscvSingle.scala 533:22:@767.4]
  wire [1:0] ext2_io_immSrc; // @[riscvSingle.scala 533:22:@767.4]
  wire [31:0] ext2_io_extImm; // @[riscvSingle.scala 533:22:@767.4]
  wire  alu_clock; // @[riscvSingle.scala 534:21:@770.4]
  wire  alu_reset; // @[riscvSingle.scala 534:21:@770.4]
  wire [31:0] alu_io_a; // @[riscvSingle.scala 534:21:@770.4]
  wire [31:0] alu_io_b; // @[riscvSingle.scala 534:21:@770.4]
  wire [3:0] alu_io_aluControl; // @[riscvSingle.scala 534:21:@770.4]
  wire  alu_io_imm; // @[riscvSingle.scala 534:21:@770.4]
  wire [31:0] alu_io_out; // @[riscvSingle.scala 534:21:@770.4]
  wire  alu_io_zero; // @[riscvSingle.scala 534:21:@770.4]
  wire  alu_io_lt; // @[riscvSingle.scala 534:21:@770.4]
  wire  alu_io_gt; // @[riscvSingle.scala 534:21:@770.4]
  wire  _T_49; // @[riscvSingle.scala 548:30:@784.4]
  wire  _T_50; // @[riscvSingle.scala 548:44:@785.4]
  wire [5:0] _T_51; // @[riscvSingle.scala 548:57:@786.4]
  wire [3:0] _T_52; // @[riscvSingle.scala 548:74:@787.4]
  wire [9:0] _T_53; // @[Cat.scala 30:58:@788.4]
  wire [1:0] _T_54; // @[Cat.scala 30:58:@789.4]
  wire [7:0] _T_57; // @[riscvSingle.scala 549:42:@793.4]
  wire  _T_58; // @[riscvSingle.scala 549:59:@794.4]
  wire [9:0] _T_59; // @[riscvSingle.scala 549:73:@795.4]
  wire [19:0] _T_62; // @[Cat.scala 30:58:@798.4]
  wire [19:0] _T_63; // @[riscvSingle.scala 551:27:@800.4]
  wire [31:0] auiImm; // @[Cat.scala 30:58:@801.4]
  wire  _T_67; // @[riscvSingle.scala 559:28:@811.4]
  wire  _T_69; // @[riscvSingle.scala 559:28:@812.4]
  wire [31:0] extImm; // @[riscvSingle.scala 559:18:@813.4]
  reg [31:0] pcReg; // @[riscvSingle.scala 563:26:@815.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_78; // @[riscvSingle.scala 568:22:@820.4]
  wire [31:0] pcPlus4; // @[riscvSingle.scala 568:22:@821.4]
  wire [32:0] _T_81; // @[riscvSingle.scala 569:24:@823.4]
  wire [31:0] branchExtImm; // @[riscvSingle.scala 539:28:@777.4 riscvSingle.scala 558:18:@810.4]
  wire [32:0] _T_83; // @[riscvSingle.scala 570:30:@826.4]
  wire [31:0] pcBranch; // @[riscvSingle.scala 570:30:@827.4]
  wire [31:0] pcRegBranch; // @[riscvSingle.scala 571:31:@829.4]
  wire  _T_87; // @[riscvSingle.scala 572:31:@831.4]
  wire  _T_88; // @[riscvSingle.scala 572:35:@832.4]
  wire  _T_90; // @[riscvSingle.scala 572:35:@833.4]
  wire  _T_91; // @[riscvSingle.scala 572:70:@834.4]
  wire  _T_92; // @[riscvSingle.scala 572:74:@835.4]
  wire  _T_94; // @[riscvSingle.scala 572:74:@836.4]
  wire [31:0] _T_95; // @[riscvSingle.scala 572:57:@837.4]
  wire [31:0] pcNext; // @[riscvSingle.scala 572:18:@838.4]
  wire [6:0] _T_97; // @[riscvSingle.scala 578:27:@842.4]
  wire [4:0] _T_98; // @[riscvSingle.scala 578:44:@843.4]
  wire [11:0] memImm; // @[Cat.scala 30:58:@844.4]
  wire [31:0] _GEN_0; // @[riscvSingle.scala 579:25:@846.4]
  wire [32:0] _T_100; // @[riscvSingle.scala 579:25:@846.4]
  wire  _T_102; // @[riscvSingle.scala 582:31:@849.4]
  wire  _T_104; // @[riscvSingle.scala 582:31:@850.4]
  wire [31:0] result; // @[riscvSingle.scala 582:18:@851.4]
  wire  _T_106; // @[riscvSingle.scala 585:25:@853.4]
  wire  _T_107; // @[riscvSingle.scala 585:29:@854.4]
  wire  _T_109; // @[riscvSingle.scala 585:29:@855.4]
  wire [4:0] _T_111; // @[riscvSingle.scala 585:55:@856.4]
  wire  _T_113; // @[riscvSingle.scala 586:25:@859.4]
  wire  _T_114; // @[riscvSingle.scala 586:29:@860.4]
  wire  _T_116; // @[riscvSingle.scala 586:29:@861.4]
  wire [4:0] _T_118; // @[riscvSingle.scala 586:59:@863.4]
  wire  _T_120; // @[riscvSingle.scala 587:25:@866.4]
  wire  _T_121; // @[riscvSingle.scala 587:29:@867.4]
  wire  _T_123; // @[riscvSingle.scala 587:29:@868.4]
  wire [31:0] ra4; // @[riscvSingle.scala 587:15:@869.4]
  wire  _T_130; // @[riscvSingle.scala 598:31:@883.4]
  wire  _T_132; // @[riscvSingle.scala 598:31:@884.4]
  wire  _T_136; // @[riscvSingle.scala 622:11:@910.4]
  wire [31:0] datapathMessage_aluOut; // @[riscvSingle.scala 530:31:@760.4 riscvSingle.scala 608:28:@895.4]
  wire [31:0] datapathMessage_rd2; // @[riscvSingle.scala 530:31:@760.4 riscvSingle.scala 613:25:@900.4]
  wire [11:0] jumpImm; // @[riscvSingle.scala 536:23:@774.4 riscvSingle.scala 549:13:@799.4]
  extend ext1 ( // @[riscvSingle.scala 531:22:@761.4]
    .clock(ext1_clock),
    .reset(ext1_reset),
    .io_instr12(ext1_io_instr12),
    .io_instr20(ext1_io_instr20),
    .io_immSrc(ext1_io_immSrc),
    .io_extImm(ext1_io_extImm)
  );
  regfile rf ( // @[riscvSingle.scala 532:20:@764.4]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_we3(rf_io_we3),
    .io_ra1(rf_io_ra1),
    .io_ra2(rf_io_ra2),
    .io_wa3(rf_io_wa3),
    .io_wd3(rf_io_wd3),
    .io_r31(rf_io_r31),
    .io_rd1(rf_io_rd1),
    .io_rd2(rf_io_rd2)
  );
  extend ext2 ( // @[riscvSingle.scala 533:22:@767.4]
    .clock(ext2_clock),
    .reset(ext2_reset),
    .io_instr12(ext2_io_instr12),
    .io_instr20(ext2_io_instr20),
    .io_immSrc(ext2_io_immSrc),
    .io_extImm(ext2_io_extImm)
  );
  alu alu ( // @[riscvSingle.scala 534:21:@770.4]
    .clock(alu_clock),
    .reset(alu_reset),
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_aluControl(alu_io_aluControl),
    .io_imm(alu_io_imm),
    .io_out(alu_io_out),
    .io_zero(alu_io_zero),
    .io_lt(alu_io_lt),
    .io_gt(alu_io_gt)
  );
  assign _T_49 = io_instr[31]; // @[riscvSingle.scala 548:30:@784.4]
  assign _T_50 = io_instr[7]; // @[riscvSingle.scala 548:44:@785.4]
  assign _T_51 = io_instr[30:25]; // @[riscvSingle.scala 548:57:@786.4]
  assign _T_52 = io_instr[11:8]; // @[riscvSingle.scala 548:74:@787.4]
  assign _T_53 = {_T_51,_T_52}; // @[Cat.scala 30:58:@788.4]
  assign _T_54 = {_T_49,_T_50}; // @[Cat.scala 30:58:@789.4]
  assign _T_57 = io_instr[19:12]; // @[riscvSingle.scala 549:42:@793.4]
  assign _T_58 = io_instr[20]; // @[riscvSingle.scala 549:59:@794.4]
  assign _T_59 = io_instr[30:21]; // @[riscvSingle.scala 549:73:@795.4]
  assign _T_62 = {_T_49,_T_57,_T_58,_T_59}; // @[Cat.scala 30:58:@798.4]
  assign _T_63 = io_instr[31:12]; // @[riscvSingle.scala 551:27:@800.4]
  assign auiImm = {_T_63,12'h0}; // @[Cat.scala 30:58:@801.4]
  assign _T_67 = ~ io_pcSrc; // @[riscvSingle.scala 559:28:@811.4]
  assign _T_69 = _T_67 == 1'h0; // @[riscvSingle.scala 559:28:@812.4]
  assign extImm = _T_69 ? auiImm : ext2_io_extImm; // @[riscvSingle.scala 559:18:@813.4]
  assign _T_78 = pcReg + 32'h4; // @[riscvSingle.scala 568:22:@820.4]
  assign pcPlus4 = pcReg + 32'h4; // @[riscvSingle.scala 568:22:@821.4]
  assign _T_81 = pcPlus4 + 32'h4; // @[riscvSingle.scala 569:24:@823.4]
  assign branchExtImm = ext1_io_extImm; // @[riscvSingle.scala 539:28:@777.4 riscvSingle.scala 558:18:@810.4]
  assign _T_83 = branchExtImm + pcReg; // @[riscvSingle.scala 570:30:@826.4]
  assign pcBranch = branchExtImm + pcReg; // @[riscvSingle.scala 570:30:@827.4]
  assign pcRegBranch = alu_io_out & 32'hfffffffe; // @[riscvSingle.scala 571:31:@829.4]
  assign _T_87 = io_branchSrc[1]; // @[riscvSingle.scala 572:31:@831.4]
  assign _T_88 = ~ _T_87; // @[riscvSingle.scala 572:35:@832.4]
  assign _T_90 = _T_88 == 1'h0; // @[riscvSingle.scala 572:35:@833.4]
  assign _T_91 = io_branchSrc[0]; // @[riscvSingle.scala 572:70:@834.4]
  assign _T_92 = ~ _T_91; // @[riscvSingle.scala 572:74:@835.4]
  assign _T_94 = _T_92 == 1'h0; // @[riscvSingle.scala 572:74:@836.4]
  assign _T_95 = _T_94 ? pcBranch : pcPlus4; // @[riscvSingle.scala 572:57:@837.4]
  assign pcNext = _T_90 ? pcRegBranch : _T_95; // @[riscvSingle.scala 572:18:@838.4]
  assign _T_97 = io_instr[31:25]; // @[riscvSingle.scala 578:27:@842.4]
  assign _T_98 = io_instr[11:7]; // @[riscvSingle.scala 578:44:@843.4]
  assign memImm = {_T_97,_T_98}; // @[Cat.scala 30:58:@844.4]
  assign _GEN_0 = {{20'd0}, memImm}; // @[riscvSingle.scala 579:25:@846.4]
  assign _T_100 = _GEN_0 + rf_io_rd1; // @[riscvSingle.scala 579:25:@846.4]
  assign _T_102 = ~ io_memToReg; // @[riscvSingle.scala 582:31:@849.4]
  assign _T_104 = _T_102 == 1'h0; // @[riscvSingle.scala 582:31:@850.4]
  assign result = _T_104 ? io_readData : alu_io_out; // @[riscvSingle.scala 582:18:@851.4]
  assign _T_106 = io_regSrc[0]; // @[riscvSingle.scala 585:25:@853.4]
  assign _T_107 = ~ _T_106; // @[riscvSingle.scala 585:29:@854.4]
  assign _T_109 = _T_107 == 1'h0; // @[riscvSingle.scala 585:29:@855.4]
  assign _T_111 = io_instr[19:15]; // @[riscvSingle.scala 585:55:@856.4]
  assign _T_113 = io_regSrc[1]; // @[riscvSingle.scala 586:25:@859.4]
  assign _T_114 = ~ _T_113; // @[riscvSingle.scala 586:29:@860.4]
  assign _T_116 = _T_114 == 1'h0; // @[riscvSingle.scala 586:29:@861.4]
  assign _T_118 = io_instr[24:20]; // @[riscvSingle.scala 586:59:@863.4]
  assign _T_120 = io_regSrc[2]; // @[riscvSingle.scala 587:25:@866.4]
  assign _T_121 = ~ _T_120; // @[riscvSingle.scala 587:29:@867.4]
  assign _T_123 = _T_121 == 1'h0; // @[riscvSingle.scala 587:29:@868.4]
  assign ra4 = _T_123 ? pcPlus4 : result; // @[riscvSingle.scala 587:15:@869.4]
  assign _T_130 = ~ io_aluSrc; // @[riscvSingle.scala 598:31:@883.4]
  assign _T_132 = _T_130 == 1'h0; // @[riscvSingle.scala 598:31:@884.4]
  assign _T_136 = reset == 1'h0; // @[riscvSingle.scala 622:11:@910.4]
  assign datapathMessage_aluOut = alu_io_out; // @[riscvSingle.scala 530:31:@760.4 riscvSingle.scala 608:28:@895.4]
  assign datapathMessage_rd2 = rf_io_rd2; // @[riscvSingle.scala 530:31:@760.4 riscvSingle.scala 613:25:@900.4]
  assign jumpImm = _T_62[11:0]; // @[riscvSingle.scala 536:23:@774.4 riscvSingle.scala 549:13:@799.4]
  assign io_pc = pcReg; // @[riscvSingle.scala 574:11:@841.4]
  assign io_memAdd = _GEN_0 + rf_io_rd1; // @[riscvSingle.scala 579:15:@848.4]
  assign io_writeData = rf_io_rd2; // @[riscvSingle.scala 595:18:@878.4]
  assign io_zero = alu_io_zero; // @[riscvSingle.scala 601:13:@889.4]
  assign io_lt = alu_io_lt; // @[riscvSingle.scala 602:11:@890.4]
  assign io_gt = alu_io_gt; // @[riscvSingle.scala 603:11:@891.4]
  assign ext1_clock = clock; // @[:@762.4]
  assign ext1_reset = reset; // @[:@763.4]
  assign ext1_io_instr12 = {_T_54,_T_53}; // @[riscvSingle.scala 552:21:@803.4]
  assign ext1_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 553:21:@804.4]
  assign ext1_io_immSrc = io_immSrc; // @[riscvSingle.scala 554:20:@805.4]
  assign rf_clock = clock; // @[:@765.4]
  assign rf_reset = reset; // @[:@766.4]
  assign rf_io_we3 = io_regWrite; // @[riscvSingle.scala 589:15:@871.4]
  assign rf_io_ra1 = _T_109 ? 5'h1f : _T_111; // @[riscvSingle.scala 590:15:@872.4]
  assign rf_io_ra2 = _T_116 ? _T_98 : _T_118; // @[riscvSingle.scala 591:15:@873.4]
  assign rf_io_wa3 = io_instr[11:7]; // @[riscvSingle.scala 592:15:@875.4]
  assign rf_io_wd3 = _T_123 ? pcPlus4 : result; // @[riscvSingle.scala 593:15:@876.4]
  assign rf_io_r31 = pcPlus4 + 32'h4; // @[riscvSingle.scala 594:15:@877.4]
  assign ext2_clock = clock; // @[:@768.4]
  assign ext2_reset = reset; // @[:@769.4]
  assign ext2_io_instr12 = io_instr[31:20]; // @[riscvSingle.scala 555:21:@807.4]
  assign ext2_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 556:21:@808.4]
  assign ext2_io_immSrc = io_immSrc; // @[riscvSingle.scala 557:20:@809.4]
  assign alu_clock = clock; // @[:@771.4]
  assign alu_reset = reset; // @[:@772.4]
  assign alu_io_a = _T_69 ? pcPlus4 : rf_io_rd1; // @[riscvSingle.scala 597:14:@882.4]
  assign alu_io_b = _T_132 ? extImm : rf_io_rd2; // @[riscvSingle.scala 598:14:@886.4]
  assign alu_io_aluControl = io_aluControl; // @[riscvSingle.scala 599:23:@887.4]
  assign alu_io_imm = io_aluSrc; // @[riscvSingle.scala 600:16:@888.4]
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
      if (_T_90) begin
        pcReg <= pcRegBranch;
      end else begin
        if (_T_94) begin
          pcReg <= pcBranch;
        end else begin
          pcReg <= pcPlus4;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_136) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|datapath Module:\n|  inst            : 0x%x\n|  memToReg        : b%b\n|  readData        : 0x%x\n|  aluOut          : 0x%x\n|  result          : 0x%x\n|  pcNext          : 0x%x\n|  branchExtImm    : 0x%x\n|  extImm          : b%x\n|  rd2             : b%x\n|  writeData       : b%x\n|  memAdd          : b%x\n|  pcBranch        : 0x%x\n|  pcRegBranch     : 0x%x\n|  pcPlus4         : 0x%x\n|  branchSrc       : b%b\n|  ra4             : 0x%x\n|___________________________\n",io_instr,io_memToReg,io_readData,datapathMessage_aluOut,result,pcNext,branchExtImm,extImm,datapathMessage_rd2,io_writeData,io_memAdd,pcBranch,pcRegBranch,pcPlus4,io_branchSrc,ra4); // @[riscvSingle.scala 622:11:@912.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module decoder( // @[:@915.2]
  input        clock, // @[:@916.4]
  input        reset, // @[:@917.4]
  input  [6:0] io_opcode, // @[:@918.4]
  input  [6:0] io_funct7, // @[:@918.4]
  input  [2:0] io_funct3, // @[:@918.4]
  output [2:0] io_regSrc, // @[:@918.4]
  output       io_regW, // @[:@918.4]
  output [1:0] io_immSrc, // @[:@918.4]
  output       io_aluSrc, // @[:@918.4]
  output       io_pcSrc, // @[:@918.4]
  output [3:0] io_aluControl, // @[:@918.4]
  output       io_writeEn, // @[:@918.4]
  output       io_readEn, // @[:@918.4]
  output       io_memToReg, // @[:@918.4]
  output [1:0] io_branchSrc, // @[:@918.4]
  input        io_zero, // @[:@918.4]
  input        io_lt, // @[:@918.4]
  input        io_gt // @[:@918.4]
);
  wire  _T_41; // @[riscvSingle.scala 257:20:@921.4]
  wire  _T_52; // @[riscvSingle.scala 268:24:@932.6]
  wire  _T_54; // @[riscvSingle.scala 269:28:@934.8]
  wire  _T_57; // @[riscvSingle.scala 271:34:@939.10]
  wire  _T_60; // @[riscvSingle.scala 273:34:@944.12]
  wire  _T_63; // @[riscvSingle.scala 275:34:@949.14]
  wire  _T_66; // @[riscvSingle.scala 277:34:@954.16]
  wire  _T_69; // @[riscvSingle.scala 279:34:@959.18]
  wire  _T_72; // @[riscvSingle.scala 281:34:@964.20]
  wire  _T_75; // @[riscvSingle.scala 283:34:@969.22]
  wire [3:0] _GEN_0; // @[riscvSingle.scala 283:48:@970.22]
  wire [3:0] _GEN_1; // @[riscvSingle.scala 281:48:@965.20]
  wire [3:0] _GEN_2; // @[riscvSingle.scala 279:48:@960.18]
  wire [3:0] _GEN_3; // @[riscvSingle.scala 277:48:@955.16]
  wire [3:0] _GEN_4; // @[riscvSingle.scala 275:48:@950.14]
  wire [3:0] _GEN_5; // @[riscvSingle.scala 273:48:@945.12]
  wire [3:0] _GEN_6; // @[riscvSingle.scala 271:48:@940.10]
  wire [3:0] _GEN_7; // @[riscvSingle.scala 269:42:@935.8]
  wire  _T_79; // @[riscvSingle.scala 288:30:@978.8]
  wire [3:0] _GEN_8; // @[riscvSingle.scala 291:47:@986.12]
  wire [3:0] _GEN_9; // @[riscvSingle.scala 289:41:@981.10]
  wire  _T_88; // @[riscvSingle.scala 296:30:@994.10]
  wire [3:0] _GEN_10; // @[riscvSingle.scala 299:47:@1002.14]
  wire [3:0] _GEN_11; // @[riscvSingle.scala 297:43:@997.12]
  wire [3:0] _GEN_12; // @[riscvSingle.scala 296:47:@995.10]
  wire [3:0] _GEN_13; // @[riscvSingle.scala 288:47:@979.8]
  wire [3:0] _GEN_14; // @[riscvSingle.scala 268:42:@933.6]
  wire  _T_98; // @[riscvSingle.scala 307:26:@1014.6]
  wire  _T_110; // @[riscvSingle.scala 318:26:@1028.8]
  wire [5:0] _T_120; // @[riscvSingle.scala 329:24:@1039.10]
  wire  _T_122; // @[riscvSingle.scala 329:30:@1040.10]
  wire [3:0] _GEN_15; // @[riscvSingle.scala 330:41:@1043.12]
  wire [2:0] _GEN_17; // @[riscvSingle.scala 346:48:@1077.22]
  wire [2:0] _GEN_18; // @[riscvSingle.scala 344:48:@1072.20]
  wire [2:0] _GEN_19; // @[riscvSingle.scala 342:48:@1067.18]
  wire [3:0] _GEN_20; // @[riscvSingle.scala 340:48:@1062.16]
  wire [3:0] _GEN_21; // @[riscvSingle.scala 338:48:@1057.14]
  wire [3:0] _GEN_22; // @[riscvSingle.scala 336:42:@1052.12]
  wire [3:0] _GEN_23; // @[riscvSingle.scala 329:46:@1041.10]
  wire  _T_150; // @[riscvSingle.scala 354:26:@1091.10]
  wire  _T_162; // @[riscvSingle.scala 365:26:@1105.12]
  wire  _T_174; // @[riscvSingle.scala 376:26:@1119.14]
  wire  _T_188; // @[riscvSingle.scala 387:37:@1132.16]
  wire  _T_193; // @[riscvSingle.scala 389:53:@1138.18]
  wire  _T_194; // @[riscvSingle.scala 389:43:@1139.18]
  wire  _T_200; // @[riscvSingle.scala 391:43:@1146.20]
  wire  _T_206; // @[riscvSingle.scala 393:43:@1153.22]
  wire  _T_212; // @[riscvSingle.scala 395:43:@1160.24]
  wire  _T_218; // @[riscvSingle.scala 397:43:@1167.26]
  wire  _GEN_25; // @[riscvSingle.scala 395:60:@1161.24]
  wire  _GEN_26; // @[riscvSingle.scala 393:60:@1154.22]
  wire  _GEN_27; // @[riscvSingle.scala 391:60:@1147.20]
  wire  _GEN_28; // @[riscvSingle.scala 389:62:@1140.18]
  wire  _GEN_29; // @[riscvSingle.scala 387:55:@1133.16]
  wire  _T_222; // @[riscvSingle.scala 403:26:@1176.16]
  wire  _T_234; // @[riscvSingle.scala 414:26:@1190.18]
  wire [2:0] _GEN_31; // @[riscvSingle.scala 414:44:@1191.18]
  wire [1:0] _GEN_34; // @[riscvSingle.scala 414:44:@1191.18]
  wire [2:0] _GEN_35; // @[riscvSingle.scala 403:44:@1177.16]
  wire [1:0] _GEN_36; // @[riscvSingle.scala 403:44:@1177.16]
  wire  _GEN_37; // @[riscvSingle.scala 403:44:@1177.16]
  wire [1:0] _GEN_39; // @[riscvSingle.scala 403:44:@1177.16]
  wire [1:0] _GEN_40; // @[riscvSingle.scala 403:44:@1177.16]
  wire [2:0] _GEN_41; // @[riscvSingle.scala 376:44:@1120.14]
  wire [1:0] _GEN_42; // @[riscvSingle.scala 376:44:@1120.14]
  wire  _GEN_43; // @[riscvSingle.scala 376:44:@1120.14]
  wire [2:0] _GEN_45; // @[riscvSingle.scala 376:44:@1120.14]
  wire [1:0] _GEN_46; // @[riscvSingle.scala 376:44:@1120.14]
  wire [2:0] _GEN_47; // @[riscvSingle.scala 365:44:@1106.12]
  wire [1:0] _GEN_48; // @[riscvSingle.scala 365:44:@1106.12]
  wire  _GEN_49; // @[riscvSingle.scala 365:44:@1106.12]
  wire  _GEN_51; // @[riscvSingle.scala 365:44:@1106.12]
  wire [1:0] _GEN_53; // @[riscvSingle.scala 365:44:@1106.12]
  wire [2:0] _GEN_54; // @[riscvSingle.scala 365:44:@1106.12]
  wire [2:0] _GEN_55; // @[riscvSingle.scala 354:44:@1092.10]
  wire [1:0] _GEN_56; // @[riscvSingle.scala 354:44:@1092.10]
  wire  _GEN_57; // @[riscvSingle.scala 354:44:@1092.10]
  wire  _GEN_60; // @[riscvSingle.scala 354:44:@1092.10]
  wire  _GEN_61; // @[riscvSingle.scala 354:44:@1092.10]
  wire [1:0] _GEN_62; // @[riscvSingle.scala 354:44:@1092.10]
  wire [2:0] _GEN_63; // @[riscvSingle.scala 354:44:@1092.10]
  wire [2:0] _GEN_64; // @[riscvSingle.scala 318:44:@1029.8]
  wire [1:0] _GEN_65; // @[riscvSingle.scala 318:44:@1029.8]
  wire  _GEN_66; // @[riscvSingle.scala 318:44:@1029.8]
  wire  _GEN_68; // @[riscvSingle.scala 318:44:@1029.8]
  wire  _GEN_69; // @[riscvSingle.scala 318:44:@1029.8]
  wire  _GEN_70; // @[riscvSingle.scala 318:44:@1029.8]
  wire [1:0] _GEN_71; // @[riscvSingle.scala 318:44:@1029.8]
  wire [3:0] _GEN_72; // @[riscvSingle.scala 318:44:@1029.8]
  wire [2:0] _GEN_73; // @[riscvSingle.scala 307:43:@1015.6]
  wire [1:0] _GEN_74; // @[riscvSingle.scala 307:43:@1015.6]
  wire  _GEN_75; // @[riscvSingle.scala 307:43:@1015.6]
  wire  _GEN_77; // @[riscvSingle.scala 307:43:@1015.6]
  wire  _GEN_78; // @[riscvSingle.scala 307:43:@1015.6]
  wire  _GEN_79; // @[riscvSingle.scala 307:43:@1015.6]
  wire [1:0] _GEN_80; // @[riscvSingle.scala 307:43:@1015.6]
  wire [3:0] _GEN_81; // @[riscvSingle.scala 307:43:@1015.6]
  wire  _T_269; // @[riscvSingle.scala 464:11:@1244.4]
  wire  decoderMessage_regSrc; // @[riscvSingle.scala 255:30:@920.4 riscvSingle.scala 453:27:@1232.4]
  assign _T_41 = io_opcode == 7'h33; // @[riscvSingle.scala 257:20:@921.4]
  assign _T_52 = io_funct7 == 7'h0; // @[riscvSingle.scala 268:24:@932.6]
  assign _T_54 = io_funct3 == 3'h0; // @[riscvSingle.scala 269:28:@934.8]
  assign _T_57 = io_funct3 == 3'h1; // @[riscvSingle.scala 271:34:@939.10]
  assign _T_60 = io_funct3 == 3'h2; // @[riscvSingle.scala 273:34:@944.12]
  assign _T_63 = io_funct3 == 3'h3; // @[riscvSingle.scala 275:34:@949.14]
  assign _T_66 = io_funct3 == 3'h4; // @[riscvSingle.scala 277:34:@954.16]
  assign _T_69 = io_funct3 == 3'h5; // @[riscvSingle.scala 279:34:@959.18]
  assign _T_72 = io_funct3 == 3'h6; // @[riscvSingle.scala 281:34:@964.20]
  assign _T_75 = io_funct3 == 3'h7; // @[riscvSingle.scala 283:34:@969.22]
  assign _GEN_0 = _T_75 ? 4'h0 : 4'hf; // @[riscvSingle.scala 283:48:@970.22]
  assign _GEN_1 = _T_72 ? 4'h1 : _GEN_0; // @[riscvSingle.scala 281:48:@965.20]
  assign _GEN_2 = _T_69 ? 4'h7 : _GEN_1; // @[riscvSingle.scala 279:48:@960.18]
  assign _GEN_3 = _T_66 ? 4'h6 : _GEN_2; // @[riscvSingle.scala 277:48:@955.16]
  assign _GEN_4 = _T_63 ? 4'h5 : _GEN_3; // @[riscvSingle.scala 275:48:@950.14]
  assign _GEN_5 = _T_60 ? 4'h9 : _GEN_4; // @[riscvSingle.scala 273:48:@945.12]
  assign _GEN_6 = _T_57 ? 4'h3 : _GEN_5; // @[riscvSingle.scala 271:48:@940.10]
  assign _GEN_7 = _T_54 ? 4'h2 : _GEN_6; // @[riscvSingle.scala 269:42:@935.8]
  assign _T_79 = io_funct7 == 7'h1; // @[riscvSingle.scala 288:30:@978.8]
  assign _GEN_8 = _T_66 ? 4'ha : 4'hf; // @[riscvSingle.scala 291:47:@986.12]
  assign _GEN_9 = _T_54 ? 4'h8 : _GEN_8; // @[riscvSingle.scala 289:41:@981.10]
  assign _T_88 = io_funct7 == 7'h20; // @[riscvSingle.scala 296:30:@994.10]
  assign _GEN_10 = _T_54 ? 4'hc : 4'hf; // @[riscvSingle.scala 299:47:@1002.14]
  assign _GEN_11 = _T_69 ? 4'h4 : _GEN_10; // @[riscvSingle.scala 297:43:@997.12]
  assign _GEN_12 = _T_88 ? _GEN_11 : 4'hf; // @[riscvSingle.scala 296:47:@995.10]
  assign _GEN_13 = _T_79 ? _GEN_9 : _GEN_12; // @[riscvSingle.scala 288:47:@979.8]
  assign _GEN_14 = _T_52 ? _GEN_7 : _GEN_13; // @[riscvSingle.scala 268:42:@933.6]
  assign _T_98 = io_opcode == 7'h17; // @[riscvSingle.scala 307:26:@1014.6]
  assign _T_110 = io_opcode == 7'h13; // @[riscvSingle.scala 318:26:@1028.8]
  assign _T_120 = io_funct7[6:1]; // @[riscvSingle.scala 329:24:@1039.10]
  assign _T_122 = _T_120 == 6'h10; // @[riscvSingle.scala 329:30:@1040.10]
  assign _GEN_15 = _T_69 ? 4'h4 : 4'hf; // @[riscvSingle.scala 330:41:@1043.12]
  assign _GEN_17 = _T_69 ? 3'h7 : {{2'd0}, _T_72}; // @[riscvSingle.scala 346:48:@1077.22]
  assign _GEN_18 = _T_66 ? 3'h6 : _GEN_17; // @[riscvSingle.scala 344:48:@1072.20]
  assign _GEN_19 = _T_63 ? 3'h5 : _GEN_18; // @[riscvSingle.scala 342:48:@1067.18]
  assign _GEN_20 = _T_60 ? 4'h9 : {{1'd0}, _GEN_19}; // @[riscvSingle.scala 340:48:@1062.16]
  assign _GEN_21 = _T_57 ? 4'h3 : _GEN_20; // @[riscvSingle.scala 338:48:@1057.14]
  assign _GEN_22 = _T_54 ? 4'h2 : _GEN_21; // @[riscvSingle.scala 336:42:@1052.12]
  assign _GEN_23 = _T_122 ? _GEN_15 : _GEN_22; // @[riscvSingle.scala 329:46:@1041.10]
  assign _T_150 = io_opcode == 7'h3; // @[riscvSingle.scala 354:26:@1091.10]
  assign _T_162 = io_opcode == 7'h23; // @[riscvSingle.scala 365:26:@1105.12]
  assign _T_174 = io_opcode == 7'h63; // @[riscvSingle.scala 376:26:@1119.14]
  assign _T_188 = _T_54 & io_zero; // @[riscvSingle.scala 387:37:@1132.16]
  assign _T_193 = io_zero == 1'h0; // @[riscvSingle.scala 389:53:@1138.18]
  assign _T_194 = _T_57 & _T_193; // @[riscvSingle.scala 389:43:@1139.18]
  assign _T_200 = _T_66 & io_lt; // @[riscvSingle.scala 391:43:@1146.20]
  assign _T_206 = _T_69 & io_gt; // @[riscvSingle.scala 393:43:@1153.22]
  assign _T_212 = _T_72 & io_lt; // @[riscvSingle.scala 395:43:@1160.24]
  assign _T_218 = _T_75 & io_gt; // @[riscvSingle.scala 397:43:@1167.26]
  assign _GEN_25 = _T_212 ? 1'h1 : _T_218; // @[riscvSingle.scala 395:60:@1161.24]
  assign _GEN_26 = _T_206 ? 1'h1 : _GEN_25; // @[riscvSingle.scala 393:60:@1154.22]
  assign _GEN_27 = _T_200 ? 1'h1 : _GEN_26; // @[riscvSingle.scala 391:60:@1147.20]
  assign _GEN_28 = _T_194 ? 1'h1 : _GEN_27; // @[riscvSingle.scala 389:62:@1140.18]
  assign _GEN_29 = _T_188 ? 1'h1 : _GEN_28; // @[riscvSingle.scala 387:55:@1133.16]
  assign _T_222 = io_opcode == 7'h6f; // @[riscvSingle.scala 403:26:@1176.16]
  assign _T_234 = io_opcode == 7'h67; // @[riscvSingle.scala 414:26:@1190.18]
  assign _GEN_31 = _T_234 ? 3'h4 : 3'h0; // @[riscvSingle.scala 414:44:@1191.18]
  assign _GEN_34 = _T_234 ? 2'h2 : 2'h0; // @[riscvSingle.scala 414:44:@1191.18]
  assign _GEN_35 = _T_222 ? 3'h4 : _GEN_31; // @[riscvSingle.scala 403:44:@1177.16]
  assign _GEN_36 = _T_222 ? 2'h2 : 2'h0; // @[riscvSingle.scala 403:44:@1177.16]
  assign _GEN_37 = _T_222 ? 1'h1 : _T_234; // @[riscvSingle.scala 403:44:@1177.16]
  assign _GEN_39 = _T_222 ? 2'h1 : _GEN_34; // @[riscvSingle.scala 403:44:@1177.16]
  assign _GEN_40 = _T_222 ? 2'h0 : _GEN_34; // @[riscvSingle.scala 403:44:@1177.16]
  assign _GEN_41 = _T_174 ? 3'h0 : _GEN_35; // @[riscvSingle.scala 376:44:@1120.14]
  assign _GEN_42 = _T_174 ? 2'h1 : _GEN_36; // @[riscvSingle.scala 376:44:@1120.14]
  assign _GEN_43 = _T_174 ? 1'h0 : _GEN_37; // @[riscvSingle.scala 376:44:@1120.14]
  assign _GEN_45 = _T_174 ? 3'h4 : {{1'd0}, _GEN_40}; // @[riscvSingle.scala 376:44:@1120.14]
  assign _GEN_46 = _T_174 ? {{1'd0}, _GEN_29} : _GEN_39; // @[riscvSingle.scala 376:44:@1120.14]
  assign _GEN_47 = _T_162 ? 3'h0 : _GEN_41; // @[riscvSingle.scala 365:44:@1106.12]
  assign _GEN_48 = _T_162 ? 2'h0 : _GEN_42; // @[riscvSingle.scala 365:44:@1106.12]
  assign _GEN_49 = _T_162 ? 1'h1 : _GEN_43; // @[riscvSingle.scala 365:44:@1106.12]
  assign _GEN_51 = _T_162 ? 1'h0 : _GEN_43; // @[riscvSingle.scala 365:44:@1106.12]
  assign _GEN_53 = _T_162 ? 2'h0 : _GEN_46; // @[riscvSingle.scala 365:44:@1106.12]
  assign _GEN_54 = _T_162 ? 3'h0 : _GEN_45; // @[riscvSingle.scala 365:44:@1106.12]
  assign _GEN_55 = _T_150 ? 3'h0 : _GEN_47; // @[riscvSingle.scala 354:44:@1092.10]
  assign _GEN_56 = _T_150 ? 2'h0 : _GEN_48; // @[riscvSingle.scala 354:44:@1092.10]
  assign _GEN_57 = _T_150 ? 1'h1 : _GEN_49; // @[riscvSingle.scala 354:44:@1092.10]
  assign _GEN_60 = _T_150 ? 1'h1 : _GEN_51; // @[riscvSingle.scala 354:44:@1092.10]
  assign _GEN_61 = _T_150 ? 1'h0 : _T_162; // @[riscvSingle.scala 354:44:@1092.10]
  assign _GEN_62 = _T_150 ? 2'h0 : _GEN_53; // @[riscvSingle.scala 354:44:@1092.10]
  assign _GEN_63 = _T_150 ? 3'h0 : _GEN_54; // @[riscvSingle.scala 354:44:@1092.10]
  assign _GEN_64 = _T_110 ? 3'h0 : _GEN_55; // @[riscvSingle.scala 318:44:@1029.8]
  assign _GEN_65 = _T_110 ? 2'h0 : _GEN_56; // @[riscvSingle.scala 318:44:@1029.8]
  assign _GEN_66 = _T_110 ? 1'h1 : _GEN_57; // @[riscvSingle.scala 318:44:@1029.8]
  assign _GEN_68 = _T_110 ? 1'h0 : _T_150; // @[riscvSingle.scala 318:44:@1029.8]
  assign _GEN_69 = _T_110 ? 1'h1 : _GEN_60; // @[riscvSingle.scala 318:44:@1029.8]
  assign _GEN_70 = _T_110 ? 1'h0 : _GEN_61; // @[riscvSingle.scala 318:44:@1029.8]
  assign _GEN_71 = _T_110 ? 2'h0 : _GEN_62; // @[riscvSingle.scala 318:44:@1029.8]
  assign _GEN_72 = _T_110 ? _GEN_23 : {{1'd0}, _GEN_63}; // @[riscvSingle.scala 318:44:@1029.8]
  assign _GEN_73 = _T_98 ? 3'h0 : _GEN_64; // @[riscvSingle.scala 307:43:@1015.6]
  assign _GEN_74 = _T_98 ? 2'h3 : _GEN_65; // @[riscvSingle.scala 307:43:@1015.6]
  assign _GEN_75 = _T_98 ? 1'h1 : _GEN_66; // @[riscvSingle.scala 307:43:@1015.6]
  assign _GEN_77 = _T_98 ? 1'h0 : _GEN_68; // @[riscvSingle.scala 307:43:@1015.6]
  assign _GEN_78 = _T_98 ? 1'h1 : _GEN_69; // @[riscvSingle.scala 307:43:@1015.6]
  assign _GEN_79 = _T_98 ? 1'h0 : _GEN_70; // @[riscvSingle.scala 307:43:@1015.6]
  assign _GEN_80 = _T_98 ? 2'h0 : _GEN_71; // @[riscvSingle.scala 307:43:@1015.6]
  assign _GEN_81 = _T_98 ? 4'h2 : _GEN_72; // @[riscvSingle.scala 307:43:@1015.6]
  assign _T_269 = reset == 1'h0; // @[riscvSingle.scala 464:11:@1244.4]
  assign decoderMessage_regSrc = io_regSrc[0]; // @[riscvSingle.scala 255:30:@920.4 riscvSingle.scala 453:27:@1232.4]
  assign io_regSrc = _T_41 ? 3'h0 : _GEN_73; // @[riscvSingle.scala 258:19:@923.6 riscvSingle.scala 308:19:@1016.8 riscvSingle.scala 319:19:@1030.10 riscvSingle.scala 355:19:@1093.12 riscvSingle.scala 366:19:@1107.14 riscvSingle.scala 377:19:@1121.16 riscvSingle.scala 404:19:@1178.18 riscvSingle.scala 415:19:@1192.20 riscvSingle.scala 426:19:@1206.22 riscvSingle.scala 437:19:@1218.22]
  assign io_regW = _T_41 ? 1'h1 : _GEN_78; // @[riscvSingle.scala 263:17:@928.6 riscvSingle.scala 313:17:@1021.8 riscvSingle.scala 324:17:@1035.10 riscvSingle.scala 360:17:@1098.12 riscvSingle.scala 371:17:@1112.14 riscvSingle.scala 382:17:@1126.16 riscvSingle.scala 409:17:@1183.18 riscvSingle.scala 420:17:@1197.20 riscvSingle.scala 431:17:@1211.22 riscvSingle.scala 442:17:@1223.22]
  assign io_immSrc = _T_41 ? 2'h0 : _GEN_74; // @[riscvSingle.scala 259:19:@924.6 riscvSingle.scala 309:19:@1017.8 riscvSingle.scala 320:19:@1031.10 riscvSingle.scala 356:19:@1094.12 riscvSingle.scala 367:19:@1108.14 riscvSingle.scala 378:19:@1122.16 riscvSingle.scala 405:19:@1179.18 riscvSingle.scala 416:19:@1193.20 riscvSingle.scala 427:19:@1207.22 riscvSingle.scala 438:19:@1219.22]
  assign io_aluSrc = _T_41 ? 1'h0 : _GEN_75; // @[riscvSingle.scala 260:19:@925.6 riscvSingle.scala 310:19:@1018.8 riscvSingle.scala 321:19:@1032.10 riscvSingle.scala 357:19:@1095.12 riscvSingle.scala 368:19:@1109.14 riscvSingle.scala 379:19:@1123.16 riscvSingle.scala 406:19:@1180.18 riscvSingle.scala 417:19:@1194.20 riscvSingle.scala 428:19:@1208.22 riscvSingle.scala 439:19:@1220.22]
  assign io_pcSrc = _T_41 ? 1'h0 : _T_98; // @[riscvSingle.scala 261:18:@926.6 riscvSingle.scala 311:18:@1019.8 riscvSingle.scala 322:18:@1033.10 riscvSingle.scala 358:18:@1096.12 riscvSingle.scala 369:18:@1110.14 riscvSingle.scala 380:18:@1124.16 riscvSingle.scala 407:18:@1181.18 riscvSingle.scala 418:18:@1195.20 riscvSingle.scala 429:18:@1209.22 riscvSingle.scala 440:18:@1221.22]
  assign io_aluControl = _T_41 ? _GEN_14 : _GEN_81; // @[riscvSingle.scala 270:31:@936.10 riscvSingle.scala 272:31:@941.12 riscvSingle.scala 274:31:@946.14 riscvSingle.scala 276:31:@951.16 riscvSingle.scala 278:31:@956.18 riscvSingle.scala 280:31:@961.20 riscvSingle.scala 282:31:@966.22 riscvSingle.scala 284:31:@971.24 riscvSingle.scala 286:31:@974.24 riscvSingle.scala 290:31:@982.12 riscvSingle.scala 292:31:@987.14 riscvSingle.scala 294:31:@990.14 riscvSingle.scala 298:31:@998.14 riscvSingle.scala 300:31:@1003.16 riscvSingle.scala 302:31:@1006.16 riscvSingle.scala 305:27:@1010.12 riscvSingle.scala 317:23:@1025.8 riscvSingle.scala 331:31:@1044.14 riscvSingle.scala 333:31:@1047.14 riscvSingle.scala 337:31:@1053.14 riscvSingle.scala 339:31:@1058.16 riscvSingle.scala 341:31:@1063.18 riscvSingle.scala 343:31:@1068.20 riscvSingle.scala 345:31:@1073.22 riscvSingle.scala 347:31:@1078.24 riscvSingle.scala 349:31:@1083.26 riscvSingle.scala 351:31:@1086.26 riscvSingle.scala 364:23:@1102.12 riscvSingle.scala 375:23:@1116.14 riscvSingle.scala 385:23:@1129.16 riscvSingle.scala 413:23:@1187.18 riscvSingle.scala 424:23:@1201.20 riscvSingle.scala 435:23:@1215.22 riscvSingle.scala 446:23:@1227.22]
  assign io_writeEn = _T_41 ? 1'h0 : _GEN_79; // @[riscvSingle.scala 264:20:@929.6 riscvSingle.scala 314:20:@1022.8 riscvSingle.scala 325:20:@1036.10 riscvSingle.scala 361:20:@1099.12 riscvSingle.scala 372:20:@1113.14 riscvSingle.scala 383:20:@1127.16 riscvSingle.scala 410:20:@1184.18 riscvSingle.scala 421:20:@1198.20 riscvSingle.scala 432:20:@1212.22 riscvSingle.scala 443:20:@1224.22]
  assign io_readEn = _T_41 ? 1'h0 : _GEN_77; // @[riscvSingle.scala 265:19:@930.6 riscvSingle.scala 315:19:@1023.8 riscvSingle.scala 326:19:@1037.10 riscvSingle.scala 362:19:@1100.12 riscvSingle.scala 373:19:@1114.14 riscvSingle.scala 384:19:@1128.16 riscvSingle.scala 411:19:@1185.18 riscvSingle.scala 422:19:@1199.20 riscvSingle.scala 433:19:@1213.22 riscvSingle.scala 444:19:@1225.22]
  assign io_memToReg = _T_41 ? 1'h0 : _GEN_77; // @[riscvSingle.scala 262:21:@927.6 riscvSingle.scala 312:21:@1020.8 riscvSingle.scala 323:21:@1034.10 riscvSingle.scala 359:21:@1097.12 riscvSingle.scala 370:21:@1111.14 riscvSingle.scala 381:21:@1125.16 riscvSingle.scala 408:21:@1182.18 riscvSingle.scala 419:21:@1196.20 riscvSingle.scala 430:21:@1210.22 riscvSingle.scala 441:21:@1222.22]
  assign io_branchSrc = _T_41 ? 2'h0 : _GEN_80; // @[riscvSingle.scala 266:22:@931.6 riscvSingle.scala 316:22:@1024.8 riscvSingle.scala 327:22:@1038.10 riscvSingle.scala 363:22:@1101.12 riscvSingle.scala 374:22:@1115.14 riscvSingle.scala 388:26:@1134.18 riscvSingle.scala 390:26:@1141.20 riscvSingle.scala 392:26:@1148.22 riscvSingle.scala 394:26:@1155.24 riscvSingle.scala 396:26:@1162.26 riscvSingle.scala 398:26:@1169.28 riscvSingle.scala 400:26:@1172.28 riscvSingle.scala 412:22:@1186.18 riscvSingle.scala 423:22:@1200.20 riscvSingle.scala 434:22:@1214.22 riscvSingle.scala 445:22:@1226.22]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_269) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|decoder Module:\n|  branchSrc   : b%b\n|  opcode      : b%b\n|  funct3      : b%b\n|  regSrc      : b%b\n|  immSrc      : b%b\n|  aluSrc      : b%b\n|  pcSrc       : b%b\n|  aluControl  : b%b\n|  memToReg    : b%b\n|  writeEn     : b%b\n|  readEn     : b%b\n|  zero        : b%b\n|  lt          : b%b\n|  gt          : b%b\n|___________________________\n",io_branchSrc,io_opcode,io_funct3,decoderMessage_regSrc,io_immSrc,io_aluSrc,io_pcSrc,io_aluControl,io_memToReg,io_writeEn,io_readEn,io_zero,io_lt,io_gt); // @[riscvSingle.scala 464:11:@1246.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module riscv( // @[:@1249.2]
  input         clock, // @[:@1250.4]
  input         reset, // @[:@1251.4]
  input  [31:0] io_instr, // @[:@1252.4]
  input  [31:0] io_readData, // @[:@1252.4]
  output [31:0] io_pc, // @[:@1252.4]
  output        io_writeEn, // @[:@1252.4]
  output        io_readEn, // @[:@1252.4]
  output [31:0] io_memAdd, // @[:@1252.4]
  output [31:0] io_writeData // @[:@1252.4]
);
  wire  dp_clock; // @[riscvSingle.scala 103:20:@1255.4]
  wire  dp_reset; // @[riscvSingle.scala 103:20:@1255.4]
  wire [2:0] dp_io_regSrc; // @[riscvSingle.scala 103:20:@1255.4]
  wire  dp_io_regWrite; // @[riscvSingle.scala 103:20:@1255.4]
  wire [1:0] dp_io_immSrc; // @[riscvSingle.scala 103:20:@1255.4]
  wire  dp_io_aluSrc; // @[riscvSingle.scala 103:20:@1255.4]
  wire  dp_io_pcSrc; // @[riscvSingle.scala 103:20:@1255.4]
  wire [3:0] dp_io_aluControl; // @[riscvSingle.scala 103:20:@1255.4]
  wire  dp_io_memToReg; // @[riscvSingle.scala 103:20:@1255.4]
  wire [31:0] dp_io_instr; // @[riscvSingle.scala 103:20:@1255.4]
  wire [31:0] dp_io_readData; // @[riscvSingle.scala 103:20:@1255.4]
  wire [1:0] dp_io_branchSrc; // @[riscvSingle.scala 103:20:@1255.4]
  wire [31:0] dp_io_pc; // @[riscvSingle.scala 103:20:@1255.4]
  wire [31:0] dp_io_memAdd; // @[riscvSingle.scala 103:20:@1255.4]
  wire [31:0] dp_io_writeData; // @[riscvSingle.scala 103:20:@1255.4]
  wire  dp_io_zero; // @[riscvSingle.scala 103:20:@1255.4]
  wire  dp_io_lt; // @[riscvSingle.scala 103:20:@1255.4]
  wire  dp_io_gt; // @[riscvSingle.scala 103:20:@1255.4]
  wire  d_clock; // @[riscvSingle.scala 104:19:@1258.4]
  wire  d_reset; // @[riscvSingle.scala 104:19:@1258.4]
  wire [6:0] d_io_opcode; // @[riscvSingle.scala 104:19:@1258.4]
  wire [6:0] d_io_funct7; // @[riscvSingle.scala 104:19:@1258.4]
  wire [2:0] d_io_funct3; // @[riscvSingle.scala 104:19:@1258.4]
  wire [2:0] d_io_regSrc; // @[riscvSingle.scala 104:19:@1258.4]
  wire  d_io_regW; // @[riscvSingle.scala 104:19:@1258.4]
  wire [1:0] d_io_immSrc; // @[riscvSingle.scala 104:19:@1258.4]
  wire  d_io_aluSrc; // @[riscvSingle.scala 104:19:@1258.4]
  wire  d_io_pcSrc; // @[riscvSingle.scala 104:19:@1258.4]
  wire [3:0] d_io_aluControl; // @[riscvSingle.scala 104:19:@1258.4]
  wire  d_io_writeEn; // @[riscvSingle.scala 104:19:@1258.4]
  wire  d_io_readEn; // @[riscvSingle.scala 104:19:@1258.4]
  wire  d_io_memToReg; // @[riscvSingle.scala 104:19:@1258.4]
  wire [1:0] d_io_branchSrc; // @[riscvSingle.scala 104:19:@1258.4]
  wire  d_io_zero; // @[riscvSingle.scala 104:19:@1258.4]
  wire  d_io_lt; // @[riscvSingle.scala 104:19:@1258.4]
  wire  d_io_gt; // @[riscvSingle.scala 104:19:@1258.4]
  wire  _T_22; // @[riscvSingle.scala 114:11:@1268.4]
  datapath dp ( // @[riscvSingle.scala 103:20:@1255.4]
    .clock(dp_clock),
    .reset(dp_reset),
    .io_regSrc(dp_io_regSrc),
    .io_regWrite(dp_io_regWrite),
    .io_immSrc(dp_io_immSrc),
    .io_aluSrc(dp_io_aluSrc),
    .io_pcSrc(dp_io_pcSrc),
    .io_aluControl(dp_io_aluControl),
    .io_memToReg(dp_io_memToReg),
    .io_instr(dp_io_instr),
    .io_readData(dp_io_readData),
    .io_branchSrc(dp_io_branchSrc),
    .io_pc(dp_io_pc),
    .io_memAdd(dp_io_memAdd),
    .io_writeData(dp_io_writeData),
    .io_zero(dp_io_zero),
    .io_lt(dp_io_lt),
    .io_gt(dp_io_gt)
  );
  decoder d ( // @[riscvSingle.scala 104:19:@1258.4]
    .clock(d_clock),
    .reset(d_reset),
    .io_opcode(d_io_opcode),
    .io_funct7(d_io_funct7),
    .io_funct3(d_io_funct3),
    .io_regSrc(d_io_regSrc),
    .io_regW(d_io_regW),
    .io_immSrc(d_io_immSrc),
    .io_aluSrc(d_io_aluSrc),
    .io_pcSrc(d_io_pcSrc),
    .io_aluControl(d_io_aluControl),
    .io_writeEn(d_io_writeEn),
    .io_readEn(d_io_readEn),
    .io_memToReg(d_io_memToReg),
    .io_branchSrc(d_io_branchSrc),
    .io_zero(d_io_zero),
    .io_lt(d_io_lt),
    .io_gt(d_io_gt)
  );
  assign _T_22 = reset == 1'h0; // @[riscvSingle.scala 114:11:@1268.4]
  assign io_pc = dp_io_pc; // @[riscvSingle.scala 135:11:@1293.4]
  assign io_writeEn = d_io_writeEn; // @[riscvSingle.scala 136:16:@1294.4]
  assign io_readEn = d_io_readEn; // @[riscvSingle.scala 137:15:@1295.4]
  assign io_memAdd = dp_io_memAdd; // @[riscvSingle.scala 138:15:@1296.4]
  assign io_writeData = dp_io_writeData; // @[riscvSingle.scala 139:18:@1297.4]
  assign dp_clock = clock; // @[:@1256.4]
  assign dp_reset = reset; // @[:@1257.4]
  assign dp_io_regSrc = d_io_regSrc; // @[riscvSingle.scala 124:18:@1283.4]
  assign dp_io_regWrite = d_io_regW; // @[riscvSingle.scala 125:20:@1284.4]
  assign dp_io_immSrc = d_io_immSrc; // @[riscvSingle.scala 126:18:@1285.4]
  assign dp_io_aluSrc = d_io_aluSrc; // @[riscvSingle.scala 127:18:@1286.4]
  assign dp_io_pcSrc = d_io_pcSrc; // @[riscvSingle.scala 128:17:@1287.4]
  assign dp_io_aluControl = d_io_aluControl; // @[riscvSingle.scala 129:22:@1288.4]
  assign dp_io_memToReg = d_io_writeEn; // @[riscvSingle.scala 130:20:@1289.4]
  assign dp_io_instr = io_instr; // @[riscvSingle.scala 131:17:@1290.4]
  assign dp_io_readData = io_readData; // @[riscvSingle.scala 132:20:@1291.4]
  assign dp_io_branchSrc = d_io_branchSrc; // @[riscvSingle.scala 133:21:@1292.4]
  assign d_clock = clock; // @[:@1259.4]
  assign d_reset = reset; // @[:@1260.4]
  assign d_io_opcode = io_instr[6:0]; // @[riscvSingle.scala 116:17:@1273.4]
  assign d_io_funct7 = io_instr[31:25]; // @[riscvSingle.scala 117:17:@1275.4]
  assign d_io_funct3 = io_instr[14:12]; // @[riscvSingle.scala 118:17:@1277.4]
  assign d_io_zero = dp_io_zero; // @[riscvSingle.scala 120:15:@1280.4]
  assign d_io_lt = dp_io_lt; // @[riscvSingle.scala 121:13:@1281.4]
  assign d_io_gt = dp_io_gt; // @[riscvSingle.scala 122:13:@1282.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_22) begin
          $fwrite(32'h80000002,"___________________________\n|riscv Module:\n|  instr       : 0x%x\n|  writeEn    : b%b\n|  readEn    : b%b\n|  writeData   : b%b\n|  memAdd      : b%b\n|  readData    : 0x%x\n|___________________________\n",io_instr,io_writeEn,io_readEn,io_writeData,io_memAdd,io_readData); // @[riscvSingle.scala 114:11:@1270.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module imem( // @[:@1299.2]
  input         clock, // @[:@1300.4]
  input  [31:0] io_mem_addr, // @[:@1302.4]
  output [31:0] io_mem_out // @[:@1302.4]
);
  reg [31:0] MEM [0:1023]; // @[riscvSingle.scala 810:18:@1304.4]
  reg [31:0] _RAND_0;
  wire [31:0] MEM__T_12_data; // @[riscvSingle.scala 810:18:@1304.4]
  wire [9:0] MEM__T_12_addr; // @[riscvSingle.scala 810:18:@1304.4]
  assign MEM__T_12_addr = io_mem_addr[9:0];
  assign MEM__T_12_data = MEM[MEM__T_12_addr]; // @[riscvSingle.scala 810:18:@1304.4]
  assign io_mem_out = MEM__T_12_data; // @[riscvSingle.scala 813:16:@1307.4]
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
module dmem( // @[:@1309.2]
  input         clock, // @[:@1310.4]
  input         reset, // @[:@1311.4]
  input  [31:0] io_mem_addr, // @[:@1312.4]
  input  [31:0] io_mem_in, // @[:@1312.4]
  input         io_writeEn, // @[:@1312.4]
  output [31:0] io_mem_out, // @[:@1312.4]
  input         io_readEn // @[:@1312.4]
);
  reg [31:0] mem [0:1023]; // @[riscvSingle.scala 825:26:@1314.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_28_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_28_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_38_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_38_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_48_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_48_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_58_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_58_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_68_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_68_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_78_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_78_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_88_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_88_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_98_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_98_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_108_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_108_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_118_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_118_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_128_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_128_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_138_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_138_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_148_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_148_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_158_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_158_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_168_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_168_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_178_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_178_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_188_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_188_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_198_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_198_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_208_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_208_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_218_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_218_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_228_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_228_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_238_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_238_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_248_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_248_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_258_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_258_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_268_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_268_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_278_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_278_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_288_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_288_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_298_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_298_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_308_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_308_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_318_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_318_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_328_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_328_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_338_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_338_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_356_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_356_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire [31:0] mem__T_21_data; // @[riscvSingle.scala 825:26:@1314.4]
  wire [9:0] mem__T_21_addr; // @[riscvSingle.scala 825:26:@1314.4]
  wire  mem__T_21_mask; // @[riscvSingle.scala 825:26:@1314.4]
  wire  mem__T_21_en; // @[riscvSingle.scala 825:26:@1314.4]
  wire  _T_17; // @[riscvSingle.scala 826:21:@1315.4]
  wire [9:0] _T_20; // @[:@1318.6]
  wire  _GEN_3; // @[riscvSingle.scala 826:26:@1317.4]
  wire  _T_24; // @[riscvSingle.scala 830:11:@1323.4]
  wire  _T_348; // @[riscvSingle.scala 839:51:@1748.4]
  wire  _T_350; // @[riscvSingle.scala 839:51:@1749.4]
  wire  _GEN_6; // @[riscvSingle.scala 839:27:@1752.4]
  wire [31:0] _T_26; // @[riscvSingle.scala 832:26:@1327.4 riscvSingle.scala 833:16:@1329.4]
  wire [31:0] _T_36; // @[riscvSingle.scala 832:26:@1340.4 riscvSingle.scala 833:16:@1342.4]
  wire [31:0] _T_46; // @[riscvSingle.scala 832:26:@1353.4 riscvSingle.scala 833:16:@1355.4]
  wire [31:0] _T_56; // @[riscvSingle.scala 832:26:@1366.4 riscvSingle.scala 833:16:@1368.4]
  wire [31:0] _T_66; // @[riscvSingle.scala 832:26:@1379.4 riscvSingle.scala 833:16:@1381.4]
  wire [31:0] _T_76; // @[riscvSingle.scala 832:26:@1392.4 riscvSingle.scala 833:16:@1394.4]
  wire [31:0] _T_86; // @[riscvSingle.scala 832:26:@1405.4 riscvSingle.scala 833:16:@1407.4]
  wire [31:0] _T_96; // @[riscvSingle.scala 832:26:@1418.4 riscvSingle.scala 833:16:@1420.4]
  wire [31:0] _T_106; // @[riscvSingle.scala 832:26:@1431.4 riscvSingle.scala 833:16:@1433.4]
  wire [31:0] _T_116; // @[riscvSingle.scala 832:26:@1444.4 riscvSingle.scala 833:16:@1446.4]
  wire [31:0] _T_126; // @[riscvSingle.scala 832:26:@1457.4 riscvSingle.scala 833:16:@1459.4]
  wire [31:0] _T_136; // @[riscvSingle.scala 832:26:@1470.4 riscvSingle.scala 833:16:@1472.4]
  wire [31:0] _T_146; // @[riscvSingle.scala 832:26:@1483.4 riscvSingle.scala 833:16:@1485.4]
  wire [31:0] _T_156; // @[riscvSingle.scala 832:26:@1496.4 riscvSingle.scala 833:16:@1498.4]
  wire [31:0] _T_166; // @[riscvSingle.scala 832:26:@1509.4 riscvSingle.scala 833:16:@1511.4]
  wire [31:0] _T_176; // @[riscvSingle.scala 832:26:@1522.4 riscvSingle.scala 833:16:@1524.4]
  wire [31:0] _T_186; // @[riscvSingle.scala 832:26:@1535.4 riscvSingle.scala 833:16:@1537.4]
  wire [31:0] _T_196; // @[riscvSingle.scala 832:26:@1548.4 riscvSingle.scala 833:16:@1550.4]
  wire [31:0] _T_206; // @[riscvSingle.scala 832:26:@1561.4 riscvSingle.scala 833:16:@1563.4]
  wire [31:0] _T_216; // @[riscvSingle.scala 832:26:@1574.4 riscvSingle.scala 833:16:@1576.4]
  wire [31:0] _T_226; // @[riscvSingle.scala 832:26:@1587.4 riscvSingle.scala 833:16:@1589.4]
  wire [31:0] _T_236; // @[riscvSingle.scala 832:26:@1600.4 riscvSingle.scala 833:16:@1602.4]
  wire [31:0] _T_246; // @[riscvSingle.scala 832:26:@1613.4 riscvSingle.scala 833:16:@1615.4]
  wire [31:0] _T_256; // @[riscvSingle.scala 832:26:@1626.4 riscvSingle.scala 833:16:@1628.4]
  wire [31:0] _T_266; // @[riscvSingle.scala 832:26:@1639.4 riscvSingle.scala 833:16:@1641.4]
  wire [31:0] _T_276; // @[riscvSingle.scala 832:26:@1652.4 riscvSingle.scala 833:16:@1654.4]
  wire [31:0] _T_286; // @[riscvSingle.scala 832:26:@1665.4 riscvSingle.scala 833:16:@1667.4]
  wire [31:0] _T_296; // @[riscvSingle.scala 832:26:@1678.4 riscvSingle.scala 833:16:@1680.4]
  wire [31:0] _T_306; // @[riscvSingle.scala 832:26:@1691.4 riscvSingle.scala 833:16:@1693.4]
  wire [31:0] _T_316; // @[riscvSingle.scala 832:26:@1704.4 riscvSingle.scala 833:16:@1706.4]
  wire [31:0] _T_326; // @[riscvSingle.scala 832:26:@1717.4 riscvSingle.scala 833:16:@1719.4]
  wire [31:0] _T_336; // @[riscvSingle.scala 832:26:@1730.4 riscvSingle.scala 833:16:@1732.4]
  reg [9:0] mem__T_28_addr_pipe_0;
  reg [31:0] _RAND_1;
  reg [9:0] mem__T_38_addr_pipe_0;
  reg [31:0] _RAND_2;
  reg [9:0] mem__T_48_addr_pipe_0;
  reg [31:0] _RAND_3;
  reg [9:0] mem__T_58_addr_pipe_0;
  reg [31:0] _RAND_4;
  reg [9:0] mem__T_68_addr_pipe_0;
  reg [31:0] _RAND_5;
  reg [9:0] mem__T_78_addr_pipe_0;
  reg [31:0] _RAND_6;
  reg [9:0] mem__T_88_addr_pipe_0;
  reg [31:0] _RAND_7;
  reg [9:0] mem__T_98_addr_pipe_0;
  reg [31:0] _RAND_8;
  reg [9:0] mem__T_108_addr_pipe_0;
  reg [31:0] _RAND_9;
  reg [9:0] mem__T_118_addr_pipe_0;
  reg [31:0] _RAND_10;
  reg [9:0] mem__T_128_addr_pipe_0;
  reg [31:0] _RAND_11;
  reg [9:0] mem__T_138_addr_pipe_0;
  reg [31:0] _RAND_12;
  reg [9:0] mem__T_148_addr_pipe_0;
  reg [31:0] _RAND_13;
  reg [9:0] mem__T_158_addr_pipe_0;
  reg [31:0] _RAND_14;
  reg [9:0] mem__T_168_addr_pipe_0;
  reg [31:0] _RAND_15;
  reg [9:0] mem__T_178_addr_pipe_0;
  reg [31:0] _RAND_16;
  reg [9:0] mem__T_188_addr_pipe_0;
  reg [31:0] _RAND_17;
  reg [9:0] mem__T_198_addr_pipe_0;
  reg [31:0] _RAND_18;
  reg [9:0] mem__T_208_addr_pipe_0;
  reg [31:0] _RAND_19;
  reg [9:0] mem__T_218_addr_pipe_0;
  reg [31:0] _RAND_20;
  reg [9:0] mem__T_228_addr_pipe_0;
  reg [31:0] _RAND_21;
  reg [9:0] mem__T_238_addr_pipe_0;
  reg [31:0] _RAND_22;
  reg [9:0] mem__T_248_addr_pipe_0;
  reg [31:0] _RAND_23;
  reg [9:0] mem__T_258_addr_pipe_0;
  reg [31:0] _RAND_24;
  reg [9:0] mem__T_268_addr_pipe_0;
  reg [31:0] _RAND_25;
  reg [9:0] mem__T_278_addr_pipe_0;
  reg [31:0] _RAND_26;
  reg [9:0] mem__T_288_addr_pipe_0;
  reg [31:0] _RAND_27;
  reg [9:0] mem__T_298_addr_pipe_0;
  reg [31:0] _RAND_28;
  reg [9:0] mem__T_308_addr_pipe_0;
  reg [31:0] _RAND_29;
  reg [9:0] mem__T_318_addr_pipe_0;
  reg [31:0] _RAND_30;
  reg [9:0] mem__T_328_addr_pipe_0;
  reg [31:0] _RAND_31;
  reg [9:0] mem__T_338_addr_pipe_0;
  reg [31:0] _RAND_32;
  reg [9:0] mem__T_356_addr_pipe_0;
  reg [31:0] _RAND_33;
  assign mem__T_28_addr = mem__T_28_addr_pipe_0;
  assign mem__T_28_data = mem[mem__T_28_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_38_addr = mem__T_38_addr_pipe_0;
  assign mem__T_38_data = mem[mem__T_38_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_48_addr = mem__T_48_addr_pipe_0;
  assign mem__T_48_data = mem[mem__T_48_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_58_addr = mem__T_58_addr_pipe_0;
  assign mem__T_58_data = mem[mem__T_58_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_68_addr = mem__T_68_addr_pipe_0;
  assign mem__T_68_data = mem[mem__T_68_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_78_addr = mem__T_78_addr_pipe_0;
  assign mem__T_78_data = mem[mem__T_78_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_88_addr = mem__T_88_addr_pipe_0;
  assign mem__T_88_data = mem[mem__T_88_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_98_addr = mem__T_98_addr_pipe_0;
  assign mem__T_98_data = mem[mem__T_98_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_108_addr = mem__T_108_addr_pipe_0;
  assign mem__T_108_data = mem[mem__T_108_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_118_addr = mem__T_118_addr_pipe_0;
  assign mem__T_118_data = mem[mem__T_118_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_128_addr = mem__T_128_addr_pipe_0;
  assign mem__T_128_data = mem[mem__T_128_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_138_addr = mem__T_138_addr_pipe_0;
  assign mem__T_138_data = mem[mem__T_138_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_148_addr = mem__T_148_addr_pipe_0;
  assign mem__T_148_data = mem[mem__T_148_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_158_addr = mem__T_158_addr_pipe_0;
  assign mem__T_158_data = mem[mem__T_158_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_168_addr = mem__T_168_addr_pipe_0;
  assign mem__T_168_data = mem[mem__T_168_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_178_addr = mem__T_178_addr_pipe_0;
  assign mem__T_178_data = mem[mem__T_178_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_188_addr = mem__T_188_addr_pipe_0;
  assign mem__T_188_data = mem[mem__T_188_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_198_addr = mem__T_198_addr_pipe_0;
  assign mem__T_198_data = mem[mem__T_198_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_208_addr = mem__T_208_addr_pipe_0;
  assign mem__T_208_data = mem[mem__T_208_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_218_addr = mem__T_218_addr_pipe_0;
  assign mem__T_218_data = mem[mem__T_218_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_228_addr = mem__T_228_addr_pipe_0;
  assign mem__T_228_data = mem[mem__T_228_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_238_addr = mem__T_238_addr_pipe_0;
  assign mem__T_238_data = mem[mem__T_238_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_248_addr = mem__T_248_addr_pipe_0;
  assign mem__T_248_data = mem[mem__T_248_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_258_addr = mem__T_258_addr_pipe_0;
  assign mem__T_258_data = mem[mem__T_258_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_268_addr = mem__T_268_addr_pipe_0;
  assign mem__T_268_data = mem[mem__T_268_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_278_addr = mem__T_278_addr_pipe_0;
  assign mem__T_278_data = mem[mem__T_278_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_288_addr = mem__T_288_addr_pipe_0;
  assign mem__T_288_data = mem[mem__T_288_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_298_addr = mem__T_298_addr_pipe_0;
  assign mem__T_298_data = mem[mem__T_298_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_308_addr = mem__T_308_addr_pipe_0;
  assign mem__T_308_data = mem[mem__T_308_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_318_addr = mem__T_318_addr_pipe_0;
  assign mem__T_318_data = mem[mem__T_318_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_328_addr = mem__T_328_addr_pipe_0;
  assign mem__T_328_data = mem[mem__T_328_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_338_addr = mem__T_338_addr_pipe_0;
  assign mem__T_338_data = mem[mem__T_338_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_356_addr = mem__T_356_addr_pipe_0;
  assign mem__T_356_data = mem[mem__T_356_addr]; // @[riscvSingle.scala 825:26:@1314.4]
  assign mem__T_21_data = io_mem_in;
  assign mem__T_21_addr = io_mem_addr[9:0];
  assign mem__T_21_mask = 1'h1;
  assign mem__T_21_en = _T_17 == 1'h0;
  assign _T_17 = ~ io_writeEn; // @[riscvSingle.scala 826:21:@1315.4]
  assign _T_20 = io_mem_addr[9:0]; // @[:@1318.6]
  assign _GEN_3 = 1'h1; // @[riscvSingle.scala 826:26:@1317.4]
  assign _T_24 = reset == 1'h0; // @[riscvSingle.scala 830:11:@1323.4]
  assign _T_348 = ~ io_readEn; // @[riscvSingle.scala 839:51:@1748.4]
  assign _T_350 = _T_348 == 1'h0; // @[riscvSingle.scala 839:51:@1749.4]
  assign _GEN_6 = _T_350; // @[riscvSingle.scala 839:27:@1752.4]
  assign _T_26 = mem__T_28_data; // @[riscvSingle.scala 832:26:@1327.4 riscvSingle.scala 833:16:@1329.4]
  assign _T_36 = mem__T_38_data; // @[riscvSingle.scala 832:26:@1340.4 riscvSingle.scala 833:16:@1342.4]
  assign _T_46 = mem__T_48_data; // @[riscvSingle.scala 832:26:@1353.4 riscvSingle.scala 833:16:@1355.4]
  assign _T_56 = mem__T_58_data; // @[riscvSingle.scala 832:26:@1366.4 riscvSingle.scala 833:16:@1368.4]
  assign _T_66 = mem__T_68_data; // @[riscvSingle.scala 832:26:@1379.4 riscvSingle.scala 833:16:@1381.4]
  assign _T_76 = mem__T_78_data; // @[riscvSingle.scala 832:26:@1392.4 riscvSingle.scala 833:16:@1394.4]
  assign _T_86 = mem__T_88_data; // @[riscvSingle.scala 832:26:@1405.4 riscvSingle.scala 833:16:@1407.4]
  assign _T_96 = mem__T_98_data; // @[riscvSingle.scala 832:26:@1418.4 riscvSingle.scala 833:16:@1420.4]
  assign _T_106 = mem__T_108_data; // @[riscvSingle.scala 832:26:@1431.4 riscvSingle.scala 833:16:@1433.4]
  assign _T_116 = mem__T_118_data; // @[riscvSingle.scala 832:26:@1444.4 riscvSingle.scala 833:16:@1446.4]
  assign _T_126 = mem__T_128_data; // @[riscvSingle.scala 832:26:@1457.4 riscvSingle.scala 833:16:@1459.4]
  assign _T_136 = mem__T_138_data; // @[riscvSingle.scala 832:26:@1470.4 riscvSingle.scala 833:16:@1472.4]
  assign _T_146 = mem__T_148_data; // @[riscvSingle.scala 832:26:@1483.4 riscvSingle.scala 833:16:@1485.4]
  assign _T_156 = mem__T_158_data; // @[riscvSingle.scala 832:26:@1496.4 riscvSingle.scala 833:16:@1498.4]
  assign _T_166 = mem__T_168_data; // @[riscvSingle.scala 832:26:@1509.4 riscvSingle.scala 833:16:@1511.4]
  assign _T_176 = mem__T_178_data; // @[riscvSingle.scala 832:26:@1522.4 riscvSingle.scala 833:16:@1524.4]
  assign _T_186 = mem__T_188_data; // @[riscvSingle.scala 832:26:@1535.4 riscvSingle.scala 833:16:@1537.4]
  assign _T_196 = mem__T_198_data; // @[riscvSingle.scala 832:26:@1548.4 riscvSingle.scala 833:16:@1550.4]
  assign _T_206 = mem__T_208_data; // @[riscvSingle.scala 832:26:@1561.4 riscvSingle.scala 833:16:@1563.4]
  assign _T_216 = mem__T_218_data; // @[riscvSingle.scala 832:26:@1574.4 riscvSingle.scala 833:16:@1576.4]
  assign _T_226 = mem__T_228_data; // @[riscvSingle.scala 832:26:@1587.4 riscvSingle.scala 833:16:@1589.4]
  assign _T_236 = mem__T_238_data; // @[riscvSingle.scala 832:26:@1600.4 riscvSingle.scala 833:16:@1602.4]
  assign _T_246 = mem__T_248_data; // @[riscvSingle.scala 832:26:@1613.4 riscvSingle.scala 833:16:@1615.4]
  assign _T_256 = mem__T_258_data; // @[riscvSingle.scala 832:26:@1626.4 riscvSingle.scala 833:16:@1628.4]
  assign _T_266 = mem__T_268_data; // @[riscvSingle.scala 832:26:@1639.4 riscvSingle.scala 833:16:@1641.4]
  assign _T_276 = mem__T_278_data; // @[riscvSingle.scala 832:26:@1652.4 riscvSingle.scala 833:16:@1654.4]
  assign _T_286 = mem__T_288_data; // @[riscvSingle.scala 832:26:@1665.4 riscvSingle.scala 833:16:@1667.4]
  assign _T_296 = mem__T_298_data; // @[riscvSingle.scala 832:26:@1678.4 riscvSingle.scala 833:16:@1680.4]
  assign _T_306 = mem__T_308_data; // @[riscvSingle.scala 832:26:@1691.4 riscvSingle.scala 833:16:@1693.4]
  assign _T_316 = mem__T_318_data; // @[riscvSingle.scala 832:26:@1704.4 riscvSingle.scala 833:16:@1706.4]
  assign _T_326 = mem__T_328_data; // @[riscvSingle.scala 832:26:@1717.4 riscvSingle.scala 833:16:@1719.4]
  assign _T_336 = mem__T_338_data; // @[riscvSingle.scala 832:26:@1730.4 riscvSingle.scala 833:16:@1732.4]
  assign io_mem_out = mem__T_356_data; // @[riscvSingle.scala 839:16:@1758.4]
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
  mem__T_28_addr_pipe_0 = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mem__T_38_addr_pipe_0 = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  mem__T_48_addr_pipe_0 = _RAND_3[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  mem__T_58_addr_pipe_0 = _RAND_4[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  mem__T_68_addr_pipe_0 = _RAND_5[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  mem__T_78_addr_pipe_0 = _RAND_6[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  mem__T_88_addr_pipe_0 = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  mem__T_98_addr_pipe_0 = _RAND_8[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  mem__T_108_addr_pipe_0 = _RAND_9[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  mem__T_118_addr_pipe_0 = _RAND_10[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  mem__T_128_addr_pipe_0 = _RAND_11[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  mem__T_138_addr_pipe_0 = _RAND_12[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  mem__T_148_addr_pipe_0 = _RAND_13[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  mem__T_158_addr_pipe_0 = _RAND_14[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  mem__T_168_addr_pipe_0 = _RAND_15[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  mem__T_178_addr_pipe_0 = _RAND_16[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  mem__T_188_addr_pipe_0 = _RAND_17[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  mem__T_198_addr_pipe_0 = _RAND_18[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  mem__T_208_addr_pipe_0 = _RAND_19[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  mem__T_218_addr_pipe_0 = _RAND_20[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  mem__T_228_addr_pipe_0 = _RAND_21[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  mem__T_238_addr_pipe_0 = _RAND_22[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  mem__T_248_addr_pipe_0 = _RAND_23[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  mem__T_258_addr_pipe_0 = _RAND_24[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  mem__T_268_addr_pipe_0 = _RAND_25[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mem__T_278_addr_pipe_0 = _RAND_26[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  mem__T_288_addr_pipe_0 = _RAND_27[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  mem__T_298_addr_pipe_0 = _RAND_28[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  mem__T_308_addr_pipe_0 = _RAND_29[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  mem__T_318_addr_pipe_0 = _RAND_30[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  mem__T_328_addr_pipe_0 = _RAND_31[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  mem__T_338_addr_pipe_0 = _RAND_32[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  mem__T_356_addr_pipe_0 = _RAND_33[9:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_21_en & mem__T_21_mask) begin
      mem[mem__T_21_addr] <= mem__T_21_data; // @[riscvSingle.scala 825:26:@1314.4]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"\n\n\nMemory___________________________\n"); // @[riscvSingle.scala 830:11:@1325.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(0) = "); // @[riscvSingle.scala 834:15:@1333.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_26); // @[riscvSingle.scala 835:15:@1338.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(1) = "); // @[riscvSingle.scala 834:15:@1346.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_36); // @[riscvSingle.scala 835:15:@1351.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(2) = "); // @[riscvSingle.scala 834:15:@1359.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_46); // @[riscvSingle.scala 835:15:@1364.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(3) = "); // @[riscvSingle.scala 834:15:@1372.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_56); // @[riscvSingle.scala 835:15:@1377.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(4) = "); // @[riscvSingle.scala 834:15:@1385.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_66); // @[riscvSingle.scala 835:15:@1390.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(5) = "); // @[riscvSingle.scala 834:15:@1398.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_76); // @[riscvSingle.scala 835:15:@1403.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(6) = "); // @[riscvSingle.scala 834:15:@1411.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_86); // @[riscvSingle.scala 835:15:@1416.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(7) = "); // @[riscvSingle.scala 834:15:@1424.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_96); // @[riscvSingle.scala 835:15:@1429.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(8) = "); // @[riscvSingle.scala 834:15:@1437.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_106); // @[riscvSingle.scala 835:15:@1442.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(9) = "); // @[riscvSingle.scala 834:15:@1450.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_116); // @[riscvSingle.scala 835:15:@1455.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(10) = "); // @[riscvSingle.scala 834:15:@1463.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_126); // @[riscvSingle.scala 835:15:@1468.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(11) = "); // @[riscvSingle.scala 834:15:@1476.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_136); // @[riscvSingle.scala 835:15:@1481.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(12) = "); // @[riscvSingle.scala 834:15:@1489.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_146); // @[riscvSingle.scala 835:15:@1494.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(13) = "); // @[riscvSingle.scala 834:15:@1502.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_156); // @[riscvSingle.scala 835:15:@1507.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(14) = "); // @[riscvSingle.scala 834:15:@1515.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_166); // @[riscvSingle.scala 835:15:@1520.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(15) = "); // @[riscvSingle.scala 834:15:@1528.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_176); // @[riscvSingle.scala 835:15:@1533.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(16) = "); // @[riscvSingle.scala 834:15:@1541.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_186); // @[riscvSingle.scala 835:15:@1546.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(17) = "); // @[riscvSingle.scala 834:15:@1554.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_196); // @[riscvSingle.scala 835:15:@1559.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(18) = "); // @[riscvSingle.scala 834:15:@1567.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_206); // @[riscvSingle.scala 835:15:@1572.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(19) = "); // @[riscvSingle.scala 834:15:@1580.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_216); // @[riscvSingle.scala 835:15:@1585.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(20) = "); // @[riscvSingle.scala 834:15:@1593.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_226); // @[riscvSingle.scala 835:15:@1598.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(21) = "); // @[riscvSingle.scala 834:15:@1606.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_236); // @[riscvSingle.scala 835:15:@1611.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(22) = "); // @[riscvSingle.scala 834:15:@1619.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_246); // @[riscvSingle.scala 835:15:@1624.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(23) = "); // @[riscvSingle.scala 834:15:@1632.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_256); // @[riscvSingle.scala 835:15:@1637.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(24) = "); // @[riscvSingle.scala 834:15:@1645.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_266); // @[riscvSingle.scala 835:15:@1650.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(25) = "); // @[riscvSingle.scala 834:15:@1658.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_276); // @[riscvSingle.scala 835:15:@1663.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(26) = "); // @[riscvSingle.scala 834:15:@1671.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_286); // @[riscvSingle.scala 835:15:@1676.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(27) = "); // @[riscvSingle.scala 834:15:@1684.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_296); // @[riscvSingle.scala 835:15:@1689.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(28) = "); // @[riscvSingle.scala 834:15:@1697.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_306); // @[riscvSingle.scala 835:15:@1702.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(29) = "); // @[riscvSingle.scala 834:15:@1710.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_316); // @[riscvSingle.scala 835:15:@1715.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(30) = "); // @[riscvSingle.scala 834:15:@1723.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_326); // @[riscvSingle.scala 835:15:@1728.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"| mem(31) = "); // @[riscvSingle.scala 834:15:@1736.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"%d\n",_T_336); // @[riscvSingle.scala 835:15:@1741.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_24) begin
          $fwrite(32'h80000002,"|________________________________\n"); // @[riscvSingle.scala 837:11:@1746.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    if (_GEN_3) begin
      mem__T_28_addr_pipe_0 <= 10'h0;
    end
    if (_GEN_3) begin
      mem__T_38_addr_pipe_0 <= 10'h1;
    end
    if (_GEN_3) begin
      mem__T_48_addr_pipe_0 <= 10'h2;
    end
    if (_GEN_3) begin
      mem__T_58_addr_pipe_0 <= 10'h3;
    end
    if (_GEN_3) begin
      mem__T_68_addr_pipe_0 <= 10'h4;
    end
    if (_GEN_3) begin
      mem__T_78_addr_pipe_0 <= 10'h5;
    end
    if (_GEN_3) begin
      mem__T_88_addr_pipe_0 <= 10'h6;
    end
    if (_GEN_3) begin
      mem__T_98_addr_pipe_0 <= 10'h7;
    end
    if (_GEN_3) begin
      mem__T_108_addr_pipe_0 <= 10'h8;
    end
    if (_GEN_3) begin
      mem__T_118_addr_pipe_0 <= 10'h9;
    end
    if (_GEN_3) begin
      mem__T_128_addr_pipe_0 <= 10'ha;
    end
    if (_GEN_3) begin
      mem__T_138_addr_pipe_0 <= 10'hb;
    end
    if (_GEN_3) begin
      mem__T_148_addr_pipe_0 <= 10'hc;
    end
    if (_GEN_3) begin
      mem__T_158_addr_pipe_0 <= 10'hd;
    end
    if (_GEN_3) begin
      mem__T_168_addr_pipe_0 <= 10'he;
    end
    if (_GEN_3) begin
      mem__T_178_addr_pipe_0 <= 10'hf;
    end
    if (_GEN_3) begin
      mem__T_188_addr_pipe_0 <= 10'h10;
    end
    if (_GEN_3) begin
      mem__T_198_addr_pipe_0 <= 10'h11;
    end
    if (_GEN_3) begin
      mem__T_208_addr_pipe_0 <= 10'h12;
    end
    if (_GEN_3) begin
      mem__T_218_addr_pipe_0 <= 10'h13;
    end
    if (_GEN_3) begin
      mem__T_228_addr_pipe_0 <= 10'h14;
    end
    if (_GEN_3) begin
      mem__T_238_addr_pipe_0 <= 10'h15;
    end
    if (_GEN_3) begin
      mem__T_248_addr_pipe_0 <= 10'h16;
    end
    if (_GEN_3) begin
      mem__T_258_addr_pipe_0 <= 10'h17;
    end
    if (_GEN_3) begin
      mem__T_268_addr_pipe_0 <= 10'h18;
    end
    if (_GEN_3) begin
      mem__T_278_addr_pipe_0 <= 10'h19;
    end
    if (_GEN_3) begin
      mem__T_288_addr_pipe_0 <= 10'h1a;
    end
    if (_GEN_3) begin
      mem__T_298_addr_pipe_0 <= 10'h1b;
    end
    if (_GEN_3) begin
      mem__T_308_addr_pipe_0 <= 10'h1c;
    end
    if (_GEN_3) begin
      mem__T_318_addr_pipe_0 <= 10'h1d;
    end
    if (_GEN_3) begin
      mem__T_328_addr_pipe_0 <= 10'h1e;
    end
    if (_GEN_3) begin
      mem__T_338_addr_pipe_0 <= 10'h1f;
    end
    if (_GEN_6) begin
      mem__T_356_addr_pipe_0 <= _T_20;
    end
  end
endmodule
module top( // @[:@1760.2]
  input   clock, // @[:@1761.4]
  input   reset, // @[:@1762.4]
  output  io_valid // @[:@1763.4]
);
  wire  r_clock; // @[riscvSingle.scala 36:19:@1766.4]
  wire  r_reset; // @[riscvSingle.scala 36:19:@1766.4]
  wire [31:0] r_io_instr; // @[riscvSingle.scala 36:19:@1766.4]
  wire [31:0] r_io_readData; // @[riscvSingle.scala 36:19:@1766.4]
  wire [31:0] r_io_pc; // @[riscvSingle.scala 36:19:@1766.4]
  wire  r_io_writeEn; // @[riscvSingle.scala 36:19:@1766.4]
  wire  r_io_readEn; // @[riscvSingle.scala 36:19:@1766.4]
  wire [31:0] r_io_memAdd; // @[riscvSingle.scala 36:19:@1766.4]
  wire [31:0] r_io_writeData; // @[riscvSingle.scala 36:19:@1766.4]
  wire  im_clock; // @[riscvSingle.scala 37:20:@1769.4]
  wire [31:0] im_io_mem_addr; // @[riscvSingle.scala 37:20:@1769.4]
  wire [31:0] im_io_mem_out; // @[riscvSingle.scala 37:20:@1769.4]
  wire  dm_clock; // @[riscvSingle.scala 38:20:@1772.4]
  wire  dm_reset; // @[riscvSingle.scala 38:20:@1772.4]
  wire [31:0] dm_io_mem_addr; // @[riscvSingle.scala 38:20:@1772.4]
  wire [31:0] dm_io_mem_in; // @[riscvSingle.scala 38:20:@1772.4]
  wire  dm_io_writeEn; // @[riscvSingle.scala 38:20:@1772.4]
  wire [31:0] dm_io_mem_out; // @[riscvSingle.scala 38:20:@1772.4]
  wire  dm_io_readEn; // @[riscvSingle.scala 38:20:@1772.4]
  wire [31:0] pc_pulled; // @[riscvSingle.scala 43:26:@1778.4]
  wire  _T_14; // @[riscvSingle.scala 60:11:@1793.4]
  wire [31:0] instr_out; // @[riscvSingle.scala 39:25:@1775.4 riscvSingle.scala 42:15:@1777.4]
  wire [6:0] _T_17; // @[riscvSingle.scala 66:30:@1800.4]
  wire  _T_19; // @[riscvSingle.scala 66:37:@1801.4]
  wire  topMessage_writeEn; // @[riscvSingle.scala 35:26:@1765.4 riscvSingle.scala 56:24:@1788.4]
  wire  topMessage_readEn; // @[riscvSingle.scala 35:26:@1765.4 riscvSingle.scala 57:23:@1789.4]
  wire [31:0] topMessage_memIn; // @[riscvSingle.scala 35:26:@1765.4 riscvSingle.scala 55:22:@1787.4]
  wire [31:0] topMessage_memAdd; // @[riscvSingle.scala 35:26:@1765.4 riscvSingle.scala 58:23:@1790.4]
  wire [31:0] topMessage_memOut; // @[riscvSingle.scala 35:26:@1765.4 riscvSingle.scala 59:23:@1791.4]
  riscv r ( // @[riscvSingle.scala 36:19:@1766.4]
    .clock(r_clock),
    .reset(r_reset),
    .io_instr(r_io_instr),
    .io_readData(r_io_readData),
    .io_pc(r_io_pc),
    .io_writeEn(r_io_writeEn),
    .io_readEn(r_io_readEn),
    .io_memAdd(r_io_memAdd),
    .io_writeData(r_io_writeData)
  );
  imem im ( // @[riscvSingle.scala 37:20:@1769.4]
    .clock(im_clock),
    .io_mem_addr(im_io_mem_addr),
    .io_mem_out(im_io_mem_out)
  );
  dmem dm ( // @[riscvSingle.scala 38:20:@1772.4]
    .clock(dm_clock),
    .reset(dm_reset),
    .io_mem_addr(dm_io_mem_addr),
    .io_mem_in(dm_io_mem_in),
    .io_writeEn(dm_io_writeEn),
    .io_mem_out(dm_io_mem_out),
    .io_readEn(dm_io_readEn)
  );
  assign pc_pulled = r_io_pc / 32'h4; // @[riscvSingle.scala 43:26:@1778.4]
  assign _T_14 = reset == 1'h0; // @[riscvSingle.scala 60:11:@1793.4]
  assign instr_out = im_io_mem_out; // @[riscvSingle.scala 39:25:@1775.4 riscvSingle.scala 42:15:@1777.4]
  assign _T_17 = instr_out[6:0]; // @[riscvSingle.scala 66:30:@1800.4]
  assign _T_19 = _T_17 == 7'h73; // @[riscvSingle.scala 66:37:@1801.4]
  assign topMessage_writeEn = r_io_writeEn; // @[riscvSingle.scala 35:26:@1765.4 riscvSingle.scala 56:24:@1788.4]
  assign topMessage_readEn = r_io_readEn; // @[riscvSingle.scala 35:26:@1765.4 riscvSingle.scala 57:23:@1789.4]
  assign topMessage_memIn = r_io_writeData; // @[riscvSingle.scala 35:26:@1765.4 riscvSingle.scala 55:22:@1787.4]
  assign topMessage_memAdd = r_io_memAdd; // @[riscvSingle.scala 35:26:@1765.4 riscvSingle.scala 58:23:@1790.4]
  assign topMessage_memOut = dm_io_mem_out; // @[riscvSingle.scala 35:26:@1765.4 riscvSingle.scala 59:23:@1791.4]
  assign io_valid = _T_19 ? 1'h0 : 1'h1; // @[riscvSingle.scala 66:14:@1803.4]
  assign r_clock = clock; // @[:@1767.4]
  assign r_reset = reset; // @[:@1768.4]
  assign r_io_instr = im_io_mem_out; // @[riscvSingle.scala 64:16:@1799.4]
  assign r_io_readData = dm_io_mem_out; // @[riscvSingle.scala 50:19:@1784.4]
  assign im_clock = clock; // @[:@1770.4]
  assign im_io_mem_addr = r_io_pc / 32'h4; // @[riscvSingle.scala 62:20:@1798.4]
  assign dm_clock = clock; // @[:@1773.4]
  assign dm_reset = reset; // @[:@1774.4]
  assign dm_io_mem_addr = r_io_memAdd; // @[riscvSingle.scala 45:20:@1780.4]
  assign dm_io_mem_in = r_io_writeData; // @[riscvSingle.scala 46:18:@1781.4]
  assign dm_io_writeEn = r_io_writeEn; // @[riscvSingle.scala 47:19:@1782.4]
  assign dm_io_readEn = r_io_readEn; // @[riscvSingle.scala 48:18:@1783.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_14) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|top Module:\n|  instr pulled: 0x%x\n|  pc pulled   : b%b\n|  writeEn     : b%b\n|  readEn      : b%b\n|  mem in      : b%b\n|  mem add     : b%b\n|  mem out     : b%b\n|___________________________\n",instr_out,pc_pulled,topMessage_writeEn,topMessage_readEn,topMessage_memIn,topMessage_memAdd,topMessage_memOut); // @[riscvSingle.scala 60:11:@1795.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
