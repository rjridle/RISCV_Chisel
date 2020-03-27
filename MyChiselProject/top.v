module extend( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [11:0] io_instr12, // @[:@6.4]
  input  [19:0] io_instr20, // @[:@6.4]
  input  [1:0]  io_immSrc, // @[:@6.4]
  output [31:0] io_extImm // @[:@6.4]
);
  wire  _T_15; // @[riscvSingle.scala 164:20:@9.4]
  wire  _T_16; // @[riscvSingle.scala 165:24:@11.6]
  wire [31:0] _T_20; // @[Cat.scala 30:58:@14.8]
  wire [12:0] _T_22; // @[Cat.scala 30:58:@18.8]
  wire [31:0] _GEN_0; // @[riscvSingle.scala 165:37:@13.6]
  wire  _T_24; // @[riscvSingle.scala 170:26:@23.6]
  wire [31:0] _T_31; // @[Cat.scala 30:58:@29.10]
  wire [13:0] _T_35; // @[Cat.scala 30:58:@34.10]
  wire [31:0] _GEN_1; // @[riscvSingle.scala 171:37:@27.8]
  wire  _T_37; // @[riscvSingle.scala 176:26:@39.8]
  wire  _T_38; // @[riscvSingle.scala 177:24:@41.10]
  wire [31:0] _T_44; // @[Cat.scala 30:58:@45.12]
  wire [21:0] _T_48; // @[Cat.scala 30:58:@50.12]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 177:37:@43.10]
  wire [31:0] _GEN_3; // @[riscvSingle.scala 176:34:@40.8]
  wire [31:0] _GEN_4; // @[riscvSingle.scala 170:34:@24.6]
  wire  _T_52; // @[riscvSingle.scala 189:11:@62.4]
  assign _T_15 = io_immSrc == 2'h0; // @[riscvSingle.scala 164:20:@9.4]
  assign _T_16 = io_instr12[11]; // @[riscvSingle.scala 165:24:@11.6]
  assign _T_20 = {20'hfffff,io_instr12}; // @[Cat.scala 30:58:@14.8]
  assign _T_22 = {1'h0,io_instr12}; // @[Cat.scala 30:58:@18.8]
  assign _GEN_0 = _T_16 ? _T_20 : {{19'd0}, _T_22}; // @[riscvSingle.scala 165:37:@13.6]
  assign _T_24 = io_immSrc == 2'h1; // @[riscvSingle.scala 170:26:@23.6]
  assign _T_31 = {19'h7ffff,io_instr12,1'h0}; // @[Cat.scala 30:58:@29.10]
  assign _T_35 = {1'h0,io_instr12,1'h0}; // @[Cat.scala 30:58:@34.10]
  assign _GEN_1 = _T_16 ? _T_31 : {{18'd0}, _T_35}; // @[riscvSingle.scala 171:37:@27.8]
  assign _T_37 = io_immSrc == 2'h2; // @[riscvSingle.scala 176:26:@39.8]
  assign _T_38 = io_instr20[19]; // @[riscvSingle.scala 177:24:@41.10]
  assign _T_44 = {11'h7ff,io_instr20,1'h0}; // @[Cat.scala 30:58:@45.12]
  assign _T_48 = {1'h0,io_instr20,1'h0}; // @[Cat.scala 30:58:@50.12]
  assign _GEN_2 = _T_38 ? _T_44 : {{10'd0}, _T_48}; // @[riscvSingle.scala 177:37:@43.10]
  assign _GEN_3 = _T_37 ? _GEN_2 : 32'h0; // @[riscvSingle.scala 176:34:@40.8]
  assign _GEN_4 = _T_24 ? _GEN_1 : _GEN_3; // @[riscvSingle.scala 170:34:@24.6]
  assign _T_52 = reset == 1'h0; // @[riscvSingle.scala 189:11:@62.4]
  assign io_extImm = _T_15 ? _GEN_0 : _GEN_4; // @[riscvSingle.scala 166:23:@15.8 riscvSingle.scala 168:23:@19.8 riscvSingle.scala 172:23:@30.10 riscvSingle.scala 174:23:@35.10 riscvSingle.scala 178:23:@46.12 riscvSingle.scala 180:23:@51.12 riscvSingle.scala 183:19:@55.10]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_52) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|extend Module:\n|  instr12     : b%b\n|  instr20     : b%b\n|  immsrc      : b%b\n|  extImm      : 0x%x\n|___________________________\n",io_instr12,io_instr20,io_immSrc,io_extImm); // @[riscvSingle.scala 189:11:@64.6]
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
  reg [31:0] rf [0:31]; // @[riscvSingle.scala 603:17:@72.4]
  reg [31:0] _RAND_0;
  wire [31:0] rf__T_39_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_39_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_40_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_40_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_45_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_45_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_46_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_46_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_54_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_54_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_64_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_64_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_74_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_74_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_84_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_84_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_94_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_94_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_104_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_104_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_114_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_114_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_124_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_124_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_134_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_134_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_144_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_144_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_154_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_154_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_164_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_164_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_174_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_174_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_184_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_184_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_194_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_194_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_204_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_204_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_214_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_214_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_224_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_224_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_234_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_234_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_244_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_244_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_254_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_254_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_264_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_264_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_274_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_274_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_284_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_284_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_294_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_294_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_304_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_304_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_314_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_314_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_324_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_324_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_334_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_334_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_344_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_344_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_354_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_354_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_364_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_364_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_32_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_32_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire  rf__T_32_mask; // @[riscvSingle.scala 603:17:@72.4]
  wire  rf__T_32_en; // @[riscvSingle.scala 603:17:@72.4]
  wire [31:0] rf__T_34_data; // @[riscvSingle.scala 603:17:@72.4]
  wire [4:0] rf__T_34_addr; // @[riscvSingle.scala 603:17:@72.4]
  wire  rf__T_34_mask; // @[riscvSingle.scala 603:17:@72.4]
  wire  rf__T_34_en; // @[riscvSingle.scala 603:17:@72.4]
  wire  _T_24; // @[riscvSingle.scala 606:17:@74.4]
  wire  _T_26; // @[riscvSingle.scala 606:17:@75.4]
  wire  _T_28; // @[riscvSingle.scala 606:34:@76.4]
  wire  _T_30; // @[riscvSingle.scala 606:25:@77.4]
  wire  _T_31; // @[riscvSingle.scala 606:22:@78.4]
  wire  _T_37; // @[riscvSingle.scala 612:27:@87.4]
  wire  _T_43; // @[riscvSingle.scala 613:27:@93.4]
  wire  _T_50; // @[riscvSingle.scala 624:11:@108.4]
  wire [31:0] _T_52; // @[riscvSingle.scala 626:26:@112.4 riscvSingle.scala 627:16:@114.4]
  wire [31:0] _T_62; // @[riscvSingle.scala 626:26:@125.4 riscvSingle.scala 627:16:@127.4]
  wire [31:0] _T_72; // @[riscvSingle.scala 626:26:@138.4 riscvSingle.scala 627:16:@140.4]
  wire [31:0] _T_82; // @[riscvSingle.scala 626:26:@151.4 riscvSingle.scala 627:16:@153.4]
  wire [31:0] _T_92; // @[riscvSingle.scala 626:26:@164.4 riscvSingle.scala 627:16:@166.4]
  wire [31:0] _T_102; // @[riscvSingle.scala 626:26:@177.4 riscvSingle.scala 627:16:@179.4]
  wire [31:0] _T_112; // @[riscvSingle.scala 626:26:@190.4 riscvSingle.scala 627:16:@192.4]
  wire [31:0] _T_122; // @[riscvSingle.scala 626:26:@203.4 riscvSingle.scala 627:16:@205.4]
  wire [31:0] _T_132; // @[riscvSingle.scala 626:26:@216.4 riscvSingle.scala 627:16:@218.4]
  wire [31:0] _T_142; // @[riscvSingle.scala 626:26:@229.4 riscvSingle.scala 627:16:@231.4]
  wire [31:0] _T_152; // @[riscvSingle.scala 626:26:@242.4 riscvSingle.scala 627:16:@244.4]
  wire [31:0] _T_162; // @[riscvSingle.scala 626:26:@255.4 riscvSingle.scala 627:16:@257.4]
  wire [31:0] _T_172; // @[riscvSingle.scala 626:26:@268.4 riscvSingle.scala 627:16:@270.4]
  wire [31:0] _T_182; // @[riscvSingle.scala 626:26:@281.4 riscvSingle.scala 627:16:@283.4]
  wire [31:0] _T_192; // @[riscvSingle.scala 626:26:@294.4 riscvSingle.scala 627:16:@296.4]
  wire [31:0] _T_202; // @[riscvSingle.scala 626:26:@307.4 riscvSingle.scala 627:16:@309.4]
  wire [31:0] _T_212; // @[riscvSingle.scala 626:26:@320.4 riscvSingle.scala 627:16:@322.4]
  wire [31:0] _T_222; // @[riscvSingle.scala 626:26:@333.4 riscvSingle.scala 627:16:@335.4]
  wire [31:0] _T_232; // @[riscvSingle.scala 626:26:@346.4 riscvSingle.scala 627:16:@348.4]
  wire [31:0] _T_242; // @[riscvSingle.scala 626:26:@359.4 riscvSingle.scala 627:16:@361.4]
  wire [31:0] _T_252; // @[riscvSingle.scala 626:26:@372.4 riscvSingle.scala 627:16:@374.4]
  wire [31:0] _T_262; // @[riscvSingle.scala 626:26:@385.4 riscvSingle.scala 627:16:@387.4]
  wire [31:0] _T_272; // @[riscvSingle.scala 626:26:@398.4 riscvSingle.scala 627:16:@400.4]
  wire [31:0] _T_282; // @[riscvSingle.scala 626:26:@411.4 riscvSingle.scala 627:16:@413.4]
  wire [31:0] _T_292; // @[riscvSingle.scala 626:26:@424.4 riscvSingle.scala 627:16:@426.4]
  wire [31:0] _T_302; // @[riscvSingle.scala 626:26:@437.4 riscvSingle.scala 627:16:@439.4]
  wire [31:0] _T_312; // @[riscvSingle.scala 626:26:@450.4 riscvSingle.scala 627:16:@452.4]
  wire [31:0] _T_322; // @[riscvSingle.scala 626:26:@463.4 riscvSingle.scala 627:16:@465.4]
  wire [31:0] _T_332; // @[riscvSingle.scala 626:26:@476.4 riscvSingle.scala 627:16:@478.4]
  wire [31:0] _T_342; // @[riscvSingle.scala 626:26:@489.4 riscvSingle.scala 627:16:@491.4]
  wire [31:0] _T_352; // @[riscvSingle.scala 626:26:@502.4 riscvSingle.scala 627:16:@504.4]
  wire [31:0] _T_362; // @[riscvSingle.scala 626:26:@515.4 riscvSingle.scala 627:16:@517.4]
  assign rf__T_39_addr = io_r31[4:0];
  assign rf__T_39_data = rf[rf__T_39_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_40_addr = io_ra1;
  assign rf__T_40_data = rf[rf__T_40_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_45_addr = io_r31[4:0];
  assign rf__T_45_data = rf[rf__T_45_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_46_addr = io_ra2;
  assign rf__T_46_data = rf[rf__T_46_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_54_addr = 5'h0;
  assign rf__T_54_data = rf[rf__T_54_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_64_addr = 5'h1;
  assign rf__T_64_data = rf[rf__T_64_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_74_addr = 5'h2;
  assign rf__T_74_data = rf[rf__T_74_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_84_addr = 5'h3;
  assign rf__T_84_data = rf[rf__T_84_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_94_addr = 5'h4;
  assign rf__T_94_data = rf[rf__T_94_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_104_addr = 5'h5;
  assign rf__T_104_data = rf[rf__T_104_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_114_addr = 5'h6;
  assign rf__T_114_data = rf[rf__T_114_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_124_addr = 5'h7;
  assign rf__T_124_data = rf[rf__T_124_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_134_addr = 5'h8;
  assign rf__T_134_data = rf[rf__T_134_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_144_addr = 5'h9;
  assign rf__T_144_data = rf[rf__T_144_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_154_addr = 5'ha;
  assign rf__T_154_data = rf[rf__T_154_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_164_addr = 5'hb;
  assign rf__T_164_data = rf[rf__T_164_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_174_addr = 5'hc;
  assign rf__T_174_data = rf[rf__T_174_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_184_addr = 5'hd;
  assign rf__T_184_data = rf[rf__T_184_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_194_addr = 5'he;
  assign rf__T_194_data = rf[rf__T_194_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_204_addr = 5'hf;
  assign rf__T_204_data = rf[rf__T_204_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_214_addr = 5'h10;
  assign rf__T_214_data = rf[rf__T_214_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_224_addr = 5'h11;
  assign rf__T_224_data = rf[rf__T_224_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_234_addr = 5'h12;
  assign rf__T_234_data = rf[rf__T_234_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_244_addr = 5'h13;
  assign rf__T_244_data = rf[rf__T_244_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_254_addr = 5'h14;
  assign rf__T_254_data = rf[rf__T_254_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_264_addr = 5'h15;
  assign rf__T_264_data = rf[rf__T_264_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_274_addr = 5'h16;
  assign rf__T_274_data = rf[rf__T_274_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_284_addr = 5'h17;
  assign rf__T_284_data = rf[rf__T_284_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_294_addr = 5'h18;
  assign rf__T_294_data = rf[rf__T_294_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_304_addr = 5'h19;
  assign rf__T_304_data = rf[rf__T_304_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_314_addr = 5'h1a;
  assign rf__T_314_data = rf[rf__T_314_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_324_addr = 5'h1b;
  assign rf__T_324_data = rf[rf__T_324_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_334_addr = 5'h1c;
  assign rf__T_334_data = rf[rf__T_334_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_344_addr = 5'h1d;
  assign rf__T_344_data = rf[rf__T_344_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_354_addr = 5'h1e;
  assign rf__T_354_data = rf[rf__T_354_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_364_addr = 5'h1f;
  assign rf__T_364_data = rf[rf__T_364_addr]; // @[riscvSingle.scala 603:17:@72.4]
  assign rf__T_32_data = io_wd3;
  assign rf__T_32_addr = io_wa3;
  assign rf__T_32_mask = 1'h1;
  assign rf__T_32_en = _T_26 & _T_30;
  assign rf__T_34_data = 32'h0;
  assign rf__T_34_addr = 5'h0;
  assign rf__T_34_mask = 1'h1;
  assign rf__T_34_en = _T_31 ? 1'h0 : 1'h1;
  assign _T_24 = ~ io_we3; // @[riscvSingle.scala 606:17:@74.4]
  assign _T_26 = _T_24 == 1'h0; // @[riscvSingle.scala 606:17:@75.4]
  assign _T_28 = io_wa3 == 5'h0; // @[riscvSingle.scala 606:34:@76.4]
  assign _T_30 = _T_28 == 1'h0; // @[riscvSingle.scala 606:25:@77.4]
  assign _T_31 = _T_26 & _T_30; // @[riscvSingle.scala 606:22:@78.4]
  assign _T_37 = io_ra1 == 5'h1f; // @[riscvSingle.scala 612:27:@87.4]
  assign _T_43 = io_ra2 == 5'h1f; // @[riscvSingle.scala 613:27:@93.4]
  assign _T_50 = reset == 1'h0; // @[riscvSingle.scala 624:11:@108.4]
  assign _T_52 = rf__T_54_data; // @[riscvSingle.scala 626:26:@112.4 riscvSingle.scala 627:16:@114.4]
  assign _T_62 = rf__T_64_data; // @[riscvSingle.scala 626:26:@125.4 riscvSingle.scala 627:16:@127.4]
  assign _T_72 = rf__T_74_data; // @[riscvSingle.scala 626:26:@138.4 riscvSingle.scala 627:16:@140.4]
  assign _T_82 = rf__T_84_data; // @[riscvSingle.scala 626:26:@151.4 riscvSingle.scala 627:16:@153.4]
  assign _T_92 = rf__T_94_data; // @[riscvSingle.scala 626:26:@164.4 riscvSingle.scala 627:16:@166.4]
  assign _T_102 = rf__T_104_data; // @[riscvSingle.scala 626:26:@177.4 riscvSingle.scala 627:16:@179.4]
  assign _T_112 = rf__T_114_data; // @[riscvSingle.scala 626:26:@190.4 riscvSingle.scala 627:16:@192.4]
  assign _T_122 = rf__T_124_data; // @[riscvSingle.scala 626:26:@203.4 riscvSingle.scala 627:16:@205.4]
  assign _T_132 = rf__T_134_data; // @[riscvSingle.scala 626:26:@216.4 riscvSingle.scala 627:16:@218.4]
  assign _T_142 = rf__T_144_data; // @[riscvSingle.scala 626:26:@229.4 riscvSingle.scala 627:16:@231.4]
  assign _T_152 = rf__T_154_data; // @[riscvSingle.scala 626:26:@242.4 riscvSingle.scala 627:16:@244.4]
  assign _T_162 = rf__T_164_data; // @[riscvSingle.scala 626:26:@255.4 riscvSingle.scala 627:16:@257.4]
  assign _T_172 = rf__T_174_data; // @[riscvSingle.scala 626:26:@268.4 riscvSingle.scala 627:16:@270.4]
  assign _T_182 = rf__T_184_data; // @[riscvSingle.scala 626:26:@281.4 riscvSingle.scala 627:16:@283.4]
  assign _T_192 = rf__T_194_data; // @[riscvSingle.scala 626:26:@294.4 riscvSingle.scala 627:16:@296.4]
  assign _T_202 = rf__T_204_data; // @[riscvSingle.scala 626:26:@307.4 riscvSingle.scala 627:16:@309.4]
  assign _T_212 = rf__T_214_data; // @[riscvSingle.scala 626:26:@320.4 riscvSingle.scala 627:16:@322.4]
  assign _T_222 = rf__T_224_data; // @[riscvSingle.scala 626:26:@333.4 riscvSingle.scala 627:16:@335.4]
  assign _T_232 = rf__T_234_data; // @[riscvSingle.scala 626:26:@346.4 riscvSingle.scala 627:16:@348.4]
  assign _T_242 = rf__T_244_data; // @[riscvSingle.scala 626:26:@359.4 riscvSingle.scala 627:16:@361.4]
  assign _T_252 = rf__T_254_data; // @[riscvSingle.scala 626:26:@372.4 riscvSingle.scala 627:16:@374.4]
  assign _T_262 = rf__T_264_data; // @[riscvSingle.scala 626:26:@385.4 riscvSingle.scala 627:16:@387.4]
  assign _T_272 = rf__T_274_data; // @[riscvSingle.scala 626:26:@398.4 riscvSingle.scala 627:16:@400.4]
  assign _T_282 = rf__T_284_data; // @[riscvSingle.scala 626:26:@411.4 riscvSingle.scala 627:16:@413.4]
  assign _T_292 = rf__T_294_data; // @[riscvSingle.scala 626:26:@424.4 riscvSingle.scala 627:16:@426.4]
  assign _T_302 = rf__T_304_data; // @[riscvSingle.scala 626:26:@437.4 riscvSingle.scala 627:16:@439.4]
  assign _T_312 = rf__T_314_data; // @[riscvSingle.scala 626:26:@450.4 riscvSingle.scala 627:16:@452.4]
  assign _T_322 = rf__T_324_data; // @[riscvSingle.scala 626:26:@463.4 riscvSingle.scala 627:16:@465.4]
  assign _T_332 = rf__T_334_data; // @[riscvSingle.scala 626:26:@476.4 riscvSingle.scala 627:16:@478.4]
  assign _T_342 = rf__T_344_data; // @[riscvSingle.scala 626:26:@489.4 riscvSingle.scala 627:16:@491.4]
  assign _T_352 = rf__T_354_data; // @[riscvSingle.scala 626:26:@502.4 riscvSingle.scala 627:16:@504.4]
  assign _T_362 = rf__T_364_data; // @[riscvSingle.scala 626:26:@515.4 riscvSingle.scala 627:16:@517.4]
  assign io_rd1 = _T_37 ? rf__T_39_data : rf__T_40_data; // @[riscvSingle.scala 612:12:@92.4]
  assign io_rd2 = _T_43 ? rf__T_45_data : rf__T_46_data; // @[riscvSingle.scala 613:12:@98.4]
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
      rf[rf__T_32_addr] <= rf__T_32_data; // @[riscvSingle.scala 603:17:@72.4]
    end
    if(rf__T_34_en & rf__T_34_mask) begin
      rf[rf__T_34_addr] <= rf__T_34_data; // @[riscvSingle.scala 603:17:@72.4]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n"); // @[riscvSingle.scala 624:11:@110.6]
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
          $fwrite(32'h80000002,"| rf(0) = "); // @[riscvSingle.scala 628:15:@118.6]
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
          $fwrite(32'h80000002,"%d\n",_T_52); // @[riscvSingle.scala 629:15:@123.6]
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
          $fwrite(32'h80000002,"| rf(1) = "); // @[riscvSingle.scala 628:15:@131.6]
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
          $fwrite(32'h80000002,"%d\n",_T_62); // @[riscvSingle.scala 629:15:@136.6]
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
          $fwrite(32'h80000002,"| rf(2) = "); // @[riscvSingle.scala 628:15:@144.6]
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
          $fwrite(32'h80000002,"%d\n",_T_72); // @[riscvSingle.scala 629:15:@149.6]
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
          $fwrite(32'h80000002,"| rf(3) = "); // @[riscvSingle.scala 628:15:@157.6]
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
          $fwrite(32'h80000002,"%d\n",_T_82); // @[riscvSingle.scala 629:15:@162.6]
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
          $fwrite(32'h80000002,"| rf(4) = "); // @[riscvSingle.scala 628:15:@170.6]
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
          $fwrite(32'h80000002,"%d\n",_T_92); // @[riscvSingle.scala 629:15:@175.6]
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
          $fwrite(32'h80000002,"| rf(5) = "); // @[riscvSingle.scala 628:15:@183.6]
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
          $fwrite(32'h80000002,"%d\n",_T_102); // @[riscvSingle.scala 629:15:@188.6]
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
          $fwrite(32'h80000002,"| rf(6) = "); // @[riscvSingle.scala 628:15:@196.6]
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
          $fwrite(32'h80000002,"%d\n",_T_112); // @[riscvSingle.scala 629:15:@201.6]
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
          $fwrite(32'h80000002,"| rf(7) = "); // @[riscvSingle.scala 628:15:@209.6]
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
          $fwrite(32'h80000002,"%d\n",_T_122); // @[riscvSingle.scala 629:15:@214.6]
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
          $fwrite(32'h80000002,"| rf(8) = "); // @[riscvSingle.scala 628:15:@222.6]
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
          $fwrite(32'h80000002,"%d\n",_T_132); // @[riscvSingle.scala 629:15:@227.6]
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
          $fwrite(32'h80000002,"| rf(9) = "); // @[riscvSingle.scala 628:15:@235.6]
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
          $fwrite(32'h80000002,"%d\n",_T_142); // @[riscvSingle.scala 629:15:@240.6]
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
          $fwrite(32'h80000002,"| rf(10) = "); // @[riscvSingle.scala 628:15:@248.6]
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
          $fwrite(32'h80000002,"%d\n",_T_152); // @[riscvSingle.scala 629:15:@253.6]
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
          $fwrite(32'h80000002,"| rf(11) = "); // @[riscvSingle.scala 628:15:@261.6]
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
          $fwrite(32'h80000002,"%d\n",_T_162); // @[riscvSingle.scala 629:15:@266.6]
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
          $fwrite(32'h80000002,"| rf(12) = "); // @[riscvSingle.scala 628:15:@274.6]
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
          $fwrite(32'h80000002,"%d\n",_T_172); // @[riscvSingle.scala 629:15:@279.6]
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
          $fwrite(32'h80000002,"| rf(13) = "); // @[riscvSingle.scala 628:15:@287.6]
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
          $fwrite(32'h80000002,"%d\n",_T_182); // @[riscvSingle.scala 629:15:@292.6]
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
          $fwrite(32'h80000002,"| rf(14) = "); // @[riscvSingle.scala 628:15:@300.6]
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
          $fwrite(32'h80000002,"%d\n",_T_192); // @[riscvSingle.scala 629:15:@305.6]
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
          $fwrite(32'h80000002,"| rf(15) = "); // @[riscvSingle.scala 628:15:@313.6]
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
          $fwrite(32'h80000002,"%d\n",_T_202); // @[riscvSingle.scala 629:15:@318.6]
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
          $fwrite(32'h80000002,"| rf(16) = "); // @[riscvSingle.scala 628:15:@326.6]
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
          $fwrite(32'h80000002,"%d\n",_T_212); // @[riscvSingle.scala 629:15:@331.6]
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
          $fwrite(32'h80000002,"| rf(17) = "); // @[riscvSingle.scala 628:15:@339.6]
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
          $fwrite(32'h80000002,"%d\n",_T_222); // @[riscvSingle.scala 629:15:@344.6]
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
          $fwrite(32'h80000002,"| rf(18) = "); // @[riscvSingle.scala 628:15:@352.6]
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
          $fwrite(32'h80000002,"%d\n",_T_232); // @[riscvSingle.scala 629:15:@357.6]
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
          $fwrite(32'h80000002,"| rf(19) = "); // @[riscvSingle.scala 628:15:@365.6]
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
          $fwrite(32'h80000002,"%d\n",_T_242); // @[riscvSingle.scala 629:15:@370.6]
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
          $fwrite(32'h80000002,"| rf(20) = "); // @[riscvSingle.scala 628:15:@378.6]
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
          $fwrite(32'h80000002,"%d\n",_T_252); // @[riscvSingle.scala 629:15:@383.6]
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
          $fwrite(32'h80000002,"| rf(21) = "); // @[riscvSingle.scala 628:15:@391.6]
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
          $fwrite(32'h80000002,"%d\n",_T_262); // @[riscvSingle.scala 629:15:@396.6]
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
          $fwrite(32'h80000002,"| rf(22) = "); // @[riscvSingle.scala 628:15:@404.6]
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
          $fwrite(32'h80000002,"%d\n",_T_272); // @[riscvSingle.scala 629:15:@409.6]
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
          $fwrite(32'h80000002,"| rf(23) = "); // @[riscvSingle.scala 628:15:@417.6]
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
          $fwrite(32'h80000002,"%d\n",_T_282); // @[riscvSingle.scala 629:15:@422.6]
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
          $fwrite(32'h80000002,"| rf(24) = "); // @[riscvSingle.scala 628:15:@430.6]
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
          $fwrite(32'h80000002,"%d\n",_T_292); // @[riscvSingle.scala 629:15:@435.6]
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
          $fwrite(32'h80000002,"| rf(25) = "); // @[riscvSingle.scala 628:15:@443.6]
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
          $fwrite(32'h80000002,"%d\n",_T_302); // @[riscvSingle.scala 629:15:@448.6]
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
          $fwrite(32'h80000002,"| rf(26) = "); // @[riscvSingle.scala 628:15:@456.6]
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
          $fwrite(32'h80000002,"%d\n",_T_312); // @[riscvSingle.scala 629:15:@461.6]
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
          $fwrite(32'h80000002,"| rf(27) = "); // @[riscvSingle.scala 628:15:@469.6]
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
          $fwrite(32'h80000002,"%d\n",_T_322); // @[riscvSingle.scala 629:15:@474.6]
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
          $fwrite(32'h80000002,"| rf(28) = "); // @[riscvSingle.scala 628:15:@482.6]
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
          $fwrite(32'h80000002,"%d\n",_T_332); // @[riscvSingle.scala 629:15:@487.6]
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
          $fwrite(32'h80000002,"| rf(29) = "); // @[riscvSingle.scala 628:15:@495.6]
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
          $fwrite(32'h80000002,"%d\n",_T_342); // @[riscvSingle.scala 629:15:@500.6]
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
          $fwrite(32'h80000002,"| rf(30) = "); // @[riscvSingle.scala 628:15:@508.6]
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
          $fwrite(32'h80000002,"%d\n",_T_352); // @[riscvSingle.scala 629:15:@513.6]
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
          $fwrite(32'h80000002,"| rf(31) = "); // @[riscvSingle.scala 628:15:@521.6]
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
          $fwrite(32'h80000002,"%d\n",_T_362); // @[riscvSingle.scala 629:15:@526.6]
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
          $fwrite(32'h80000002,"|___________________________\n"); // @[riscvSingle.scala 631:11:@531.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module alu( // @[:@598.2]
  input         clock, // @[:@599.4]
  input         reset, // @[:@600.4]
  input  [31:0] io_a, // @[:@601.4]
  input  [31:0] io_b, // @[:@601.4]
  input  [3:0]  io_aluControl, // @[:@601.4]
  input         io_imm, // @[:@601.4]
  output [31:0] io_out, // @[:@601.4]
  output        io_zero, // @[:@601.4]
  output        io_lt, // @[:@601.4]
  output        io_gt // @[:@601.4]
);
  wire  _T_23; // @[riscvSingle.scala 675:23:@605.4]
  wire [31:0] _T_26; // @[riscvSingle.scala 676:23:@608.6]
  wire [32:0] _T_27; // @[riscvSingle.scala 676:21:@609.6]
  wire [31:0] _T_28; // @[riscvSingle.scala 676:21:@610.6]
  wire [31:0] _GEN_15; // @[riscvSingle.scala 676:29:@612.6]
  wire [32:0] _T_30; // @[riscvSingle.scala 676:29:@612.6]
  wire [31:0] _T_31; // @[riscvSingle.scala 676:29:@613.6]
  wire [32:0] _T_32; // @[riscvSingle.scala 678:21:@617.6]
  wire [31:0] _T_33; // @[riscvSingle.scala 678:21:@618.6]
  wire [31:0] sum; // @[riscvSingle.scala 675:35:@607.4]
  wire  _T_35; // @[riscvSingle.scala 681:25:@621.4]
  wire [31:0] _T_36; // @[riscvSingle.scala 682:24:@623.6]
  wire  _T_38; // @[riscvSingle.scala 683:31:@627.6]
  wire [31:0] _T_39; // @[riscvSingle.scala 684:24:@629.8]
  wire  _T_41; // @[riscvSingle.scala 685:31:@633.8]
  wire  _T_43; // @[riscvSingle.scala 687:31:@638.10]
  wire  _T_44; // @[riscvSingle.scala 688:22:@640.12]
  wire  _T_46; // @[riscvSingle.scala 688:22:@641.12]
  wire [4:0] _T_47; // @[riscvSingle.scala 689:35:@643.14]
  wire [62:0] _GEN_16; // @[riscvSingle.scala 689:28:@644.14]
  wire [62:0] _T_48; // @[riscvSingle.scala 689:28:@644.14]
  wire [18:0] _T_49; // @[riscvSingle.scala 691:35:@648.14]
  wire [524318:0] _GEN_17; // @[riscvSingle.scala 691:28:@649.14]
  wire [524318:0] _T_50; // @[riscvSingle.scala 691:28:@649.14]
  wire [524318:0] _GEN_1; // @[riscvSingle.scala 688:28:@642.12]
  wire  _T_52; // @[riscvSingle.scala 693:31:@654.12]
  wire [31:0] _T_57; // @[riscvSingle.scala 695:28:@660.16]
  wire [31:0] _T_59; // @[riscvSingle.scala 697:28:@665.16]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 694:28:@658.14]
  wire  _T_61; // @[riscvSingle.scala 699:31:@670.14]
  wire [31:0] _T_62; // @[riscvSingle.scala 700:24:@672.16]
  wire  _T_64; // @[riscvSingle.scala 701:31:@676.16]
  wire  _T_73; // @[riscvSingle.scala 707:30:@692.18]
  wire [63:0] _T_74; // @[riscvSingle.scala 708:24:@694.20]
  wire  _T_76; // @[riscvSingle.scala 709:30:@698.20]
  wire  _T_77; // @[riscvSingle.scala 710:18:@700.22]
  wire  _T_78; // @[riscvSingle.scala 710:23:@701.22]
  wire  _T_80; // @[riscvSingle.scala 710:23:@702.22]
  wire  _GEN_5; // @[riscvSingle.scala 709:45:@699.20]
  wire [63:0] _GEN_6; // @[riscvSingle.scala 707:45:@693.18]
  wire [63:0] _GEN_7; // @[riscvSingle.scala 701:46:@677.16]
  wire [63:0] _GEN_8; // @[riscvSingle.scala 699:46:@671.14]
  wire [63:0] _GEN_9; // @[riscvSingle.scala 693:46:@655.12]
  wire [524318:0] _GEN_10; // @[riscvSingle.scala 687:46:@639.10]
  wire [524318:0] _GEN_11; // @[riscvSingle.scala 685:46:@634.8]
  wire [524318:0] _GEN_12; // @[riscvSingle.scala 683:46:@628.6]
  wire [524318:0] _GEN_13; // @[riscvSingle.scala 681:40:@622.4]
  wire [32:0] _T_84; // @[riscvSingle.scala 719:15:@713.4]
  wire [32:0] _T_85; // @[riscvSingle.scala 719:15:@714.4]
  wire [31:0] _T_86; // @[riscvSingle.scala 719:15:@715.4]
  wire  _T_95; // @[riscvSingle.scala 737:11:@736.4]
  assign _T_23 = io_aluControl[3]; // @[riscvSingle.scala 675:23:@605.4]
  assign _T_26 = ~ io_b; // @[riscvSingle.scala 676:23:@608.6]
  assign _T_27 = io_a + _T_26; // @[riscvSingle.scala 676:21:@609.6]
  assign _T_28 = io_a + _T_26; // @[riscvSingle.scala 676:21:@610.6]
  assign _GEN_15 = {{31'd0}, _T_23}; // @[riscvSingle.scala 676:29:@612.6]
  assign _T_30 = _T_28 + _GEN_15; // @[riscvSingle.scala 676:29:@612.6]
  assign _T_31 = _T_28 + _GEN_15; // @[riscvSingle.scala 676:29:@613.6]
  assign _T_32 = io_a + io_b; // @[riscvSingle.scala 678:21:@617.6]
  assign _T_33 = io_a + io_b; // @[riscvSingle.scala 678:21:@618.6]
  assign sum = _T_23 ? _T_31 : _T_33; // @[riscvSingle.scala 675:35:@607.4]
  assign _T_35 = io_aluControl == 4'h0; // @[riscvSingle.scala 681:25:@621.4]
  assign _T_36 = io_a & io_b; // @[riscvSingle.scala 682:24:@623.6]
  assign _T_38 = io_aluControl == 4'h1; // @[riscvSingle.scala 683:31:@627.6]
  assign _T_39 = io_a | io_b; // @[riscvSingle.scala 684:24:@629.8]
  assign _T_41 = io_aluControl == 4'h2; // @[riscvSingle.scala 685:31:@633.8]
  assign _T_43 = io_aluControl == 4'h3; // @[riscvSingle.scala 687:31:@638.10]
  assign _T_44 = ~ io_imm; // @[riscvSingle.scala 688:22:@640.12]
  assign _T_46 = _T_44 == 1'h0; // @[riscvSingle.scala 688:22:@641.12]
  assign _T_47 = io_b[4:0]; // @[riscvSingle.scala 689:35:@643.14]
  assign _GEN_16 = {{31'd0}, io_a}; // @[riscvSingle.scala 689:28:@644.14]
  assign _T_48 = _GEN_16 << _T_47; // @[riscvSingle.scala 689:28:@644.14]
  assign _T_49 = io_b[18:0]; // @[riscvSingle.scala 691:35:@648.14]
  assign _GEN_17 = {{524287'd0}, io_a}; // @[riscvSingle.scala 691:28:@649.14]
  assign _T_50 = _GEN_17 << _T_49; // @[riscvSingle.scala 691:28:@649.14]
  assign _GEN_1 = _T_46 ? {{524256'd0}, _T_48} : _T_50; // @[riscvSingle.scala 688:28:@642.12]
  assign _T_52 = io_aluControl == 4'h4; // @[riscvSingle.scala 693:31:@654.12]
  assign _T_57 = io_a >> _T_47; // @[riscvSingle.scala 695:28:@660.16]
  assign _T_59 = io_a >> _T_49; // @[riscvSingle.scala 697:28:@665.16]
  assign _GEN_2 = _T_46 ? _T_57 : _T_59; // @[riscvSingle.scala 694:28:@658.14]
  assign _T_61 = io_aluControl == 4'h6; // @[riscvSingle.scala 699:31:@670.14]
  assign _T_62 = io_a ^ io_b; // @[riscvSingle.scala 700:24:@672.16]
  assign _T_64 = io_aluControl == 4'h7; // @[riscvSingle.scala 701:31:@676.16]
  assign _T_73 = io_aluControl == 4'h8; // @[riscvSingle.scala 707:30:@692.18]
  assign _T_74 = io_a * io_b; // @[riscvSingle.scala 708:24:@694.20]
  assign _T_76 = io_aluControl == 4'h9; // @[riscvSingle.scala 709:30:@698.20]
  assign _T_77 = sum[31]; // @[riscvSingle.scala 710:18:@700.22]
  assign _T_78 = ~ _T_77; // @[riscvSingle.scala 710:23:@701.22]
  assign _T_80 = _T_78 == 1'h0; // @[riscvSingle.scala 710:23:@702.22]
  assign _GEN_5 = _T_76 ? _T_80 : 1'h0; // @[riscvSingle.scala 709:45:@699.20]
  assign _GEN_6 = _T_73 ? _T_74 : {{63'd0}, _GEN_5}; // @[riscvSingle.scala 707:45:@693.18]
  assign _GEN_7 = _T_64 ? {{32'd0}, _GEN_2} : _GEN_6; // @[riscvSingle.scala 701:46:@677.16]
  assign _GEN_8 = _T_61 ? {{32'd0}, _T_62} : _GEN_7; // @[riscvSingle.scala 699:46:@671.14]
  assign _GEN_9 = _T_52 ? {{32'd0}, _GEN_2} : _GEN_8; // @[riscvSingle.scala 693:46:@655.12]
  assign _GEN_10 = _T_43 ? _GEN_1 : {{524255'd0}, _GEN_9}; // @[riscvSingle.scala 687:46:@639.10]
  assign _GEN_11 = _T_41 ? {{524287'd0}, sum} : _GEN_10; // @[riscvSingle.scala 685:46:@634.8]
  assign _GEN_12 = _T_38 ? {{524287'd0}, _T_39} : _GEN_11; // @[riscvSingle.scala 683:46:@628.6]
  assign _GEN_13 = _T_35 ? {{524287'd0}, _T_36} : _GEN_12; // @[riscvSingle.scala 681:40:@622.4]
  assign _T_84 = io_a - io_b; // @[riscvSingle.scala 719:15:@713.4]
  assign _T_85 = $unsigned(_T_84); // @[riscvSingle.scala 719:15:@714.4]
  assign _T_86 = _T_85[31:0]; // @[riscvSingle.scala 719:15:@715.4]
  assign _T_95 = reset == 1'h0; // @[riscvSingle.scala 737:11:@736.4]
  assign io_out = _GEN_13[31:0]; // @[riscvSingle.scala 682:16:@624.6 riscvSingle.scala 684:16:@630.8 riscvSingle.scala 686:16:@635.10 riscvSingle.scala 689:20:@645.14 riscvSingle.scala 691:20:@650.14 riscvSingle.scala 695:20:@661.16 riscvSingle.scala 697:20:@666.16 riscvSingle.scala 700:16:@673.16 riscvSingle.scala 703:20:@683.20 riscvSingle.scala 705:20:@688.20 riscvSingle.scala 708:16:@695.20 riscvSingle.scala 711:20:@704.24 riscvSingle.scala 713:20:@707.24 riscvSingle.scala 716:16:@711.22]
  assign io_zero = _T_86 == 32'h0; // @[riscvSingle.scala 721:17:@718.6 riscvSingle.scala 723:17:@721.6]
  assign io_lt = io_a < io_b; // @[riscvSingle.scala 726:11:@724.4]
  assign io_gt = io_a > io_b; // @[riscvSingle.scala 727:11:@726.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_95) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|alu Module:\n|  a           : 0x%x\n|  b           : 0x%x\n|  sum         : 0x%x\n|  out         : 0x%x\n|  aluControl  : b%b\n|  zero        : b%b\n|  lt          : b%b\n|  gt          : b%b\n|___________________________\n",io_a,io_b,sum,io_out,io_aluControl,io_zero,io_lt,io_gt); // @[riscvSingle.scala 737:11:@738.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module datapath( // @[:@741.2]
  input         clock, // @[:@742.4]
  input         reset, // @[:@743.4]
  input  [2:0]  io_regSrc, // @[:@744.4]
  input         io_regWrite, // @[:@744.4]
  input  [1:0]  io_immSrc, // @[:@744.4]
  input         io_aluSrc, // @[:@744.4]
  input         io_pcSrc, // @[:@744.4]
  input  [3:0]  io_aluControl, // @[:@744.4]
  input         io_memToReg, // @[:@744.4]
  input  [31:0] io_instr, // @[:@744.4]
  input  [31:0] io_readData, // @[:@744.4]
  input         io_branchSrc, // @[:@744.4]
  output [31:0] io_pc, // @[:@744.4]
  output [31:0] io_dataAdd, // @[:@744.4]
  output [31:0] io_writeData, // @[:@744.4]
  output        io_zero, // @[:@744.4]
  output        io_lt, // @[:@744.4]
  output        io_gt // @[:@744.4]
);
  wire  ext1_clock; // @[riscvSingle.scala 470:22:@747.4]
  wire  ext1_reset; // @[riscvSingle.scala 470:22:@747.4]
  wire [11:0] ext1_io_instr12; // @[riscvSingle.scala 470:22:@747.4]
  wire [19:0] ext1_io_instr20; // @[riscvSingle.scala 470:22:@747.4]
  wire [1:0] ext1_io_immSrc; // @[riscvSingle.scala 470:22:@747.4]
  wire [31:0] ext1_io_extImm; // @[riscvSingle.scala 470:22:@747.4]
  wire  rf_clock; // @[riscvSingle.scala 471:20:@750.4]
  wire  rf_reset; // @[riscvSingle.scala 471:20:@750.4]
  wire  rf_io_we3; // @[riscvSingle.scala 471:20:@750.4]
  wire [4:0] rf_io_ra1; // @[riscvSingle.scala 471:20:@750.4]
  wire [4:0] rf_io_ra2; // @[riscvSingle.scala 471:20:@750.4]
  wire [4:0] rf_io_wa3; // @[riscvSingle.scala 471:20:@750.4]
  wire [31:0] rf_io_wd3; // @[riscvSingle.scala 471:20:@750.4]
  wire [31:0] rf_io_r31; // @[riscvSingle.scala 471:20:@750.4]
  wire [31:0] rf_io_rd1; // @[riscvSingle.scala 471:20:@750.4]
  wire [31:0] rf_io_rd2; // @[riscvSingle.scala 471:20:@750.4]
  wire  ext2_clock; // @[riscvSingle.scala 472:22:@753.4]
  wire  ext2_reset; // @[riscvSingle.scala 472:22:@753.4]
  wire [11:0] ext2_io_instr12; // @[riscvSingle.scala 472:22:@753.4]
  wire [19:0] ext2_io_instr20; // @[riscvSingle.scala 472:22:@753.4]
  wire [1:0] ext2_io_immSrc; // @[riscvSingle.scala 472:22:@753.4]
  wire [31:0] ext2_io_extImm; // @[riscvSingle.scala 472:22:@753.4]
  wire  alu_clock; // @[riscvSingle.scala 473:21:@756.4]
  wire  alu_reset; // @[riscvSingle.scala 473:21:@756.4]
  wire [31:0] alu_io_a; // @[riscvSingle.scala 473:21:@756.4]
  wire [31:0] alu_io_b; // @[riscvSingle.scala 473:21:@756.4]
  wire [3:0] alu_io_aluControl; // @[riscvSingle.scala 473:21:@756.4]
  wire  alu_io_imm; // @[riscvSingle.scala 473:21:@756.4]
  wire [31:0] alu_io_out; // @[riscvSingle.scala 473:21:@756.4]
  wire  alu_io_zero; // @[riscvSingle.scala 473:21:@756.4]
  wire  alu_io_lt; // @[riscvSingle.scala 473:21:@756.4]
  wire  alu_io_gt; // @[riscvSingle.scala 473:21:@756.4]
  wire  _T_52; // @[riscvSingle.scala 488:30:@771.4]
  wire  _T_53; // @[riscvSingle.scala 488:44:@772.4]
  wire [5:0] _T_54; // @[riscvSingle.scala 488:57:@773.4]
  wire [3:0] _T_55; // @[riscvSingle.scala 488:74:@774.4]
  wire [9:0] _T_56; // @[Cat.scala 30:58:@775.4]
  wire [1:0] _T_57; // @[Cat.scala 30:58:@776.4]
  wire [7:0] _T_60; // @[riscvSingle.scala 489:42:@780.4]
  wire  _T_61; // @[riscvSingle.scala 489:59:@781.4]
  wire [9:0] _T_62; // @[riscvSingle.scala 489:73:@782.4]
  wire [19:0] _T_65; // @[Cat.scala 30:58:@785.4]
  wire [19:0] _T_66; // @[riscvSingle.scala 490:27:@787.4]
  wire [31:0] auiImm; // @[Cat.scala 30:58:@788.4]
  wire  _T_70; // @[riscvSingle.scala 498:28:@798.4]
  wire  _T_72; // @[riscvSingle.scala 498:28:@799.4]
  wire [31:0] extImm; // @[riscvSingle.scala 498:18:@800.4]
  reg [31:0] pcReg; // @[riscvSingle.scala 502:26:@802.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_81; // @[riscvSingle.scala 507:22:@807.4]
  wire [31:0] pcPlus4; // @[riscvSingle.scala 507:22:@808.4]
  wire [32:0] _T_84; // @[riscvSingle.scala 508:24:@810.4]
  wire [31:0] branchExtImm; // @[riscvSingle.scala 479:28:@764.4 riscvSingle.scala 497:18:@797.4]
  wire [32:0] _T_86; // @[riscvSingle.scala 509:30:@813.4]
  wire [31:0] pcBranch; // @[riscvSingle.scala 509:30:@814.4]
  wire  _T_88; // @[riscvSingle.scala 510:32:@816.4]
  wire  _T_90; // @[riscvSingle.scala 510:32:@817.4]
  wire [31:0] pcNext; // @[riscvSingle.scala 510:18:@818.4]
  wire [6:0] _T_92; // @[riscvSingle.scala 516:32:@822.4]
  wire [4:0] _T_93; // @[riscvSingle.scala 516:49:@823.4]
  wire [11:0] _T_94; // @[Cat.scala 30:58:@824.4]
  wire  _T_95; // @[riscvSingle.scala 517:31:@826.4]
  wire  _T_97; // @[riscvSingle.scala 517:31:@827.4]
  wire [31:0] memImmStore; // @[riscvSingle.scala 474:27:@759.4 riscvSingle.scala 516:17:@825.4]
  wire [31:0] memImm; // @[riscvSingle.scala 517:18:@828.4]
  wire [32:0] _T_99; // @[riscvSingle.scala 519:29:@831.4]
  wire [31:0] result; // @[riscvSingle.scala 522:18:@836.4]
  wire  _T_105; // @[riscvSingle.scala 525:25:@838.4]
  wire  _T_106; // @[riscvSingle.scala 525:29:@839.4]
  wire  _T_108; // @[riscvSingle.scala 525:29:@840.4]
  wire [4:0] _T_110; // @[riscvSingle.scala 525:55:@841.4]
  wire  _T_112; // @[riscvSingle.scala 526:25:@844.4]
  wire  _T_113; // @[riscvSingle.scala 526:29:@845.4]
  wire  _T_115; // @[riscvSingle.scala 526:29:@846.4]
  wire [4:0] _T_117; // @[riscvSingle.scala 526:59:@848.4]
  wire  _T_119; // @[riscvSingle.scala 527:25:@851.4]
  wire  _T_120; // @[riscvSingle.scala 527:29:@852.4]
  wire  _T_122; // @[riscvSingle.scala 527:29:@853.4]
  wire [31:0] ra4; // @[riscvSingle.scala 527:15:@854.4]
  wire  _T_125; // @[riscvSingle.scala 538:27:@864.4]
  wire  _T_127; // @[riscvSingle.scala 538:27:@865.4]
  wire  _T_135; // @[riscvSingle.scala 562:11:@892.4]
  wire [31:0] datapathMessage_aluOut; // @[riscvSingle.scala 469:31:@746.4 riscvSingle.scala 552:28:@881.4]
  wire [11:0] jumpImm; // @[riscvSingle.scala 477:23:@762.4 riscvSingle.scala 489:13:@786.4]
  extend ext1 ( // @[riscvSingle.scala 470:22:@747.4]
    .clock(ext1_clock),
    .reset(ext1_reset),
    .io_instr12(ext1_io_instr12),
    .io_instr20(ext1_io_instr20),
    .io_immSrc(ext1_io_immSrc),
    .io_extImm(ext1_io_extImm)
  );
  regfile rf ( // @[riscvSingle.scala 471:20:@750.4]
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
  extend ext2 ( // @[riscvSingle.scala 472:22:@753.4]
    .clock(ext2_clock),
    .reset(ext2_reset),
    .io_instr12(ext2_io_instr12),
    .io_instr20(ext2_io_instr20),
    .io_immSrc(ext2_io_immSrc),
    .io_extImm(ext2_io_extImm)
  );
  alu alu ( // @[riscvSingle.scala 473:21:@756.4]
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
  assign _T_52 = io_instr[31]; // @[riscvSingle.scala 488:30:@771.4]
  assign _T_53 = io_instr[7]; // @[riscvSingle.scala 488:44:@772.4]
  assign _T_54 = io_instr[30:25]; // @[riscvSingle.scala 488:57:@773.4]
  assign _T_55 = io_instr[11:8]; // @[riscvSingle.scala 488:74:@774.4]
  assign _T_56 = {_T_54,_T_55}; // @[Cat.scala 30:58:@775.4]
  assign _T_57 = {_T_52,_T_53}; // @[Cat.scala 30:58:@776.4]
  assign _T_60 = io_instr[19:12]; // @[riscvSingle.scala 489:42:@780.4]
  assign _T_61 = io_instr[20]; // @[riscvSingle.scala 489:59:@781.4]
  assign _T_62 = io_instr[30:21]; // @[riscvSingle.scala 489:73:@782.4]
  assign _T_65 = {_T_52,_T_60,_T_61,_T_62}; // @[Cat.scala 30:58:@785.4]
  assign _T_66 = io_instr[31:12]; // @[riscvSingle.scala 490:27:@787.4]
  assign auiImm = {_T_66,12'h0}; // @[Cat.scala 30:58:@788.4]
  assign _T_70 = ~ io_pcSrc; // @[riscvSingle.scala 498:28:@798.4]
  assign _T_72 = _T_70 == 1'h0; // @[riscvSingle.scala 498:28:@799.4]
  assign extImm = _T_72 ? auiImm : ext2_io_extImm; // @[riscvSingle.scala 498:18:@800.4]
  assign _T_81 = pcReg + 32'h4; // @[riscvSingle.scala 507:22:@807.4]
  assign pcPlus4 = pcReg + 32'h4; // @[riscvSingle.scala 507:22:@808.4]
  assign _T_84 = pcPlus4 + 32'h4; // @[riscvSingle.scala 508:24:@810.4]
  assign branchExtImm = ext1_io_extImm; // @[riscvSingle.scala 479:28:@764.4 riscvSingle.scala 497:18:@797.4]
  assign _T_86 = branchExtImm + pcReg; // @[riscvSingle.scala 509:30:@813.4]
  assign pcBranch = branchExtImm + pcReg; // @[riscvSingle.scala 509:30:@814.4]
  assign _T_88 = ~ io_branchSrc; // @[riscvSingle.scala 510:32:@816.4]
  assign _T_90 = _T_88 == 1'h0; // @[riscvSingle.scala 510:32:@817.4]
  assign pcNext = _T_90 ? pcBranch : pcPlus4; // @[riscvSingle.scala 510:18:@818.4]
  assign _T_92 = io_instr[31:25]; // @[riscvSingle.scala 516:32:@822.4]
  assign _T_93 = io_instr[11:7]; // @[riscvSingle.scala 516:49:@823.4]
  assign _T_94 = {_T_92,_T_93}; // @[Cat.scala 30:58:@824.4]
  assign _T_95 = ~ io_memToReg; // @[riscvSingle.scala 517:31:@826.4]
  assign _T_97 = _T_95 == 1'h0; // @[riscvSingle.scala 517:31:@827.4]
  assign memImmStore = {{20'd0}, _T_94}; // @[riscvSingle.scala 474:27:@759.4 riscvSingle.scala 516:17:@825.4]
  assign memImm = _T_97 ? extImm : memImmStore; // @[riscvSingle.scala 517:18:@828.4]
  assign _T_99 = rf_io_rd1 + memImm; // @[riscvSingle.scala 519:29:@831.4]
  assign result = _T_97 ? io_readData : alu_io_out; // @[riscvSingle.scala 522:18:@836.4]
  assign _T_105 = io_regSrc[0]; // @[riscvSingle.scala 525:25:@838.4]
  assign _T_106 = ~ _T_105; // @[riscvSingle.scala 525:29:@839.4]
  assign _T_108 = _T_106 == 1'h0; // @[riscvSingle.scala 525:29:@840.4]
  assign _T_110 = io_instr[19:15]; // @[riscvSingle.scala 525:55:@841.4]
  assign _T_112 = io_regSrc[1]; // @[riscvSingle.scala 526:25:@844.4]
  assign _T_113 = ~ _T_112; // @[riscvSingle.scala 526:29:@845.4]
  assign _T_115 = _T_113 == 1'h0; // @[riscvSingle.scala 526:29:@846.4]
  assign _T_117 = io_instr[24:20]; // @[riscvSingle.scala 526:59:@848.4]
  assign _T_119 = io_regSrc[2]; // @[riscvSingle.scala 527:25:@851.4]
  assign _T_120 = ~ _T_119; // @[riscvSingle.scala 527:29:@852.4]
  assign _T_122 = _T_120 == 1'h0; // @[riscvSingle.scala 527:29:@853.4]
  assign ra4 = _T_122 ? pcPlus4 : result; // @[riscvSingle.scala 527:15:@854.4]
  assign _T_125 = ~ io_aluSrc; // @[riscvSingle.scala 538:27:@864.4]
  assign _T_127 = _T_125 == 1'h0; // @[riscvSingle.scala 538:27:@865.4]
  assign _T_135 = reset == 1'h0; // @[riscvSingle.scala 562:11:@892.4]
  assign datapathMessage_aluOut = alu_io_out; // @[riscvSingle.scala 469:31:@746.4 riscvSingle.scala 552:28:@881.4]
  assign jumpImm = _T_65[11:0]; // @[riscvSingle.scala 477:23:@762.4 riscvSingle.scala 489:13:@786.4]
  assign io_pc = pcReg; // @[riscvSingle.scala 512:11:@821.4]
  assign io_dataAdd = rf_io_rd1 + memImm; // @[riscvSingle.scala 519:16:@833.4]
  assign io_writeData = rf_io_rd2; // @[riscvSingle.scala 535:18:@863.4]
  assign io_zero = alu_io_zero; // @[riscvSingle.scala 545:13:@875.4]
  assign io_lt = alu_io_lt; // @[riscvSingle.scala 546:11:@876.4]
  assign io_gt = alu_io_gt; // @[riscvSingle.scala 547:11:@877.4]
  assign ext1_clock = clock; // @[:@748.4]
  assign ext1_reset = reset; // @[:@749.4]
  assign ext1_io_instr12 = {_T_57,_T_56}; // @[riscvSingle.scala 491:21:@790.4]
  assign ext1_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 492:21:@791.4]
  assign ext1_io_immSrc = io_immSrc; // @[riscvSingle.scala 493:20:@792.4]
  assign rf_clock = clock; // @[:@751.4]
  assign rf_reset = reset; // @[:@752.4]
  assign rf_io_we3 = io_regWrite; // @[riscvSingle.scala 529:15:@856.4]
  assign rf_io_ra1 = _T_108 ? 5'h1f : _T_110; // @[riscvSingle.scala 530:15:@857.4]
  assign rf_io_ra2 = _T_115 ? _T_93 : _T_117; // @[riscvSingle.scala 531:15:@858.4]
  assign rf_io_wa3 = io_instr[11:7]; // @[riscvSingle.scala 532:15:@860.4]
  assign rf_io_wd3 = _T_122 ? pcPlus4 : result; // @[riscvSingle.scala 533:15:@861.4]
  assign rf_io_r31 = pcPlus4 + 32'h4; // @[riscvSingle.scala 534:15:@862.4]
  assign ext2_clock = clock; // @[:@754.4]
  assign ext2_reset = reset; // @[:@755.4]
  assign ext2_io_instr12 = io_instr[31:20]; // @[riscvSingle.scala 494:21:@794.4]
  assign ext2_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 495:21:@795.4]
  assign ext2_io_immSrc = io_immSrc; // @[riscvSingle.scala 496:20:@796.4]
  assign alu_clock = clock; // @[:@757.4]
  assign alu_reset = reset; // @[:@758.4]
  assign alu_io_a = _T_72 ? pcPlus4 : rf_io_rd1; // @[riscvSingle.scala 541:14:@871.4]
  assign alu_io_b = _T_127 ? extImm : rf_io_rd2; // @[riscvSingle.scala 542:14:@872.4]
  assign alu_io_aluControl = io_aluControl; // @[riscvSingle.scala 543:23:@873.4]
  assign alu_io_imm = io_aluSrc; // @[riscvSingle.scala 544:16:@874.4]
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
        pcReg <= pcBranch;
      end else begin
        pcReg <= pcPlus4;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_135) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|datapath Module:\n|  inst            : 0x%x\n|  memToReg        : b%b\n|  readData        : 0x%x\n|  aluOut          : 0x%x\n|  result          : 0x%x\n|  pcNext          : 0x%x\n|  branchExtImm    : 0x%x\n|  extImm          : b%x\n|  pcBranch        : 0x%x\n|  pcPlus4         : 0x%x\n|  branchSrc       : b%b\n|  ra4             : 0x%x\n|___________________________\n",io_instr,io_memToReg,io_readData,datapathMessage_aluOut,result,pcNext,branchExtImm,extImm,pcBranch,pcPlus4,io_branchSrc,ra4); // @[riscvSingle.scala 562:11:@894.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module decoder( // @[:@897.2]
  input        clock, // @[:@898.4]
  input        reset, // @[:@899.4]
  input  [6:0] io_opcode, // @[:@900.4]
  input  [6:0] io_funct7, // @[:@900.4]
  input  [2:0] io_funct3, // @[:@900.4]
  output [2:0] io_regSrc, // @[:@900.4]
  output       io_regW, // @[:@900.4]
  output [1:0] io_immSrc, // @[:@900.4]
  output       io_aluSrc, // @[:@900.4]
  output       io_pcSrc, // @[:@900.4]
  output [3:0] io_aluControl, // @[:@900.4]
  output       io_memW, // @[:@900.4]
  output       io_memToReg, // @[:@900.4]
  output       io_branchSrc, // @[:@900.4]
  input        io_zero, // @[:@900.4]
  input        io_lt, // @[:@900.4]
  input        io_gt // @[:@900.4]
);
  wire  _T_39; // @[riscvSingle.scala 247:20:@903.4]
  wire  _T_49; // @[riscvSingle.scala 257:24:@913.6]
  wire  _T_51; // @[riscvSingle.scala 258:28:@915.8]
  wire  _T_54; // @[riscvSingle.scala 260:34:@920.10]
  wire  _T_57; // @[riscvSingle.scala 262:34:@925.12]
  wire  _T_60; // @[riscvSingle.scala 264:34:@930.14]
  wire  _T_63; // @[riscvSingle.scala 266:34:@935.16]
  wire  _T_66; // @[riscvSingle.scala 268:34:@940.18]
  wire  _T_69; // @[riscvSingle.scala 270:34:@945.20]
  wire [2:0] _GEN_1; // @[riscvSingle.scala 268:48:@941.18]
  wire [2:0] _GEN_2; // @[riscvSingle.scala 266:48:@936.16]
  wire [2:0] _GEN_3; // @[riscvSingle.scala 264:48:@931.14]
  wire [3:0] _GEN_4; // @[riscvSingle.scala 262:48:@926.12]
  wire [3:0] _GEN_5; // @[riscvSingle.scala 260:48:@921.10]
  wire [3:0] _GEN_6; // @[riscvSingle.scala 258:42:@916.8]
  wire [3:0] _GEN_7; // @[riscvSingle.scala 276:42:@955.8]
  wire [3:0] _GEN_8; // @[riscvSingle.scala 257:42:@914.6]
  wire  _T_77; // @[riscvSingle.scala 282:27:@964.6]
  wire  _T_88; // @[riscvSingle.scala 292:27:@977.8]
  wire  _T_120; // @[riscvSingle.scala 319:27:@1026.10]
  wire  _T_131; // @[riscvSingle.scala 329:27:@1039.12]
  wire  _T_142; // @[riscvSingle.scala 339:27:@1052.14]
  wire  _T_155; // @[riscvSingle.scala 349:37:@1064.16]
  wire  _T_160; // @[riscvSingle.scala 351:53:@1070.18]
  wire  _T_161; // @[riscvSingle.scala 351:43:@1071.18]
  wire  _T_167; // @[riscvSingle.scala 353:43:@1078.20]
  wire  _T_173; // @[riscvSingle.scala 355:43:@1085.22]
  wire  _T_179; // @[riscvSingle.scala 357:43:@1092.24]
  wire  _T_182; // @[riscvSingle.scala 359:30:@1097.26]
  wire  _T_185; // @[riscvSingle.scala 359:43:@1099.26]
  wire  _GEN_17; // @[riscvSingle.scala 357:60:@1093.24]
  wire  _GEN_18; // @[riscvSingle.scala 355:60:@1086.22]
  wire  _GEN_19; // @[riscvSingle.scala 353:60:@1079.20]
  wire  _GEN_20; // @[riscvSingle.scala 351:62:@1072.18]
  wire  _GEN_21; // @[riscvSingle.scala 349:55:@1065.16]
  wire  _T_189; // @[riscvSingle.scala 365:27:@1108.16]
  wire [2:0] _GEN_23; // @[riscvSingle.scala 365:45:@1109.16]
  wire [1:0] _GEN_24; // @[riscvSingle.scala 365:45:@1109.16]
  wire [2:0] _GEN_27; // @[riscvSingle.scala 339:45:@1053.14]
  wire [1:0] _GEN_28; // @[riscvSingle.scala 339:45:@1053.14]
  wire  _GEN_29; // @[riscvSingle.scala 339:45:@1053.14]
  wire [2:0] _GEN_31; // @[riscvSingle.scala 339:45:@1053.14]
  wire  _GEN_32; // @[riscvSingle.scala 339:45:@1053.14]
  wire [2:0] _GEN_33; // @[riscvSingle.scala 329:45:@1040.12]
  wire [1:0] _GEN_34; // @[riscvSingle.scala 329:45:@1040.12]
  wire  _GEN_35; // @[riscvSingle.scala 329:45:@1040.12]
  wire  _GEN_37; // @[riscvSingle.scala 329:45:@1040.12]
  wire  _GEN_39; // @[riscvSingle.scala 329:45:@1040.12]
  wire [2:0] _GEN_40; // @[riscvSingle.scala 329:45:@1040.12]
  wire [2:0] _GEN_41; // @[riscvSingle.scala 319:45:@1027.10]
  wire [1:0] _GEN_42; // @[riscvSingle.scala 319:45:@1027.10]
  wire  _GEN_43; // @[riscvSingle.scala 319:45:@1027.10]
  wire  _GEN_46; // @[riscvSingle.scala 319:45:@1027.10]
  wire  _GEN_47; // @[riscvSingle.scala 319:45:@1027.10]
  wire  _GEN_48; // @[riscvSingle.scala 319:45:@1027.10]
  wire [2:0] _GEN_49; // @[riscvSingle.scala 319:45:@1027.10]
  wire [2:0] _GEN_50; // @[riscvSingle.scala 292:45:@978.8]
  wire [1:0] _GEN_51; // @[riscvSingle.scala 292:45:@978.8]
  wire  _GEN_52; // @[riscvSingle.scala 292:45:@978.8]
  wire  _GEN_54; // @[riscvSingle.scala 292:45:@978.8]
  wire  _GEN_55; // @[riscvSingle.scala 292:45:@978.8]
  wire  _GEN_56; // @[riscvSingle.scala 292:45:@978.8]
  wire  _GEN_57; // @[riscvSingle.scala 292:45:@978.8]
  wire [3:0] _GEN_58; // @[riscvSingle.scala 292:45:@978.8]
  wire [2:0] _GEN_59; // @[riscvSingle.scala 282:44:@965.6]
  wire [1:0] _GEN_60; // @[riscvSingle.scala 282:44:@965.6]
  wire  _GEN_61; // @[riscvSingle.scala 282:44:@965.6]
  wire  _GEN_63; // @[riscvSingle.scala 282:44:@965.6]
  wire  _GEN_64; // @[riscvSingle.scala 282:44:@965.6]
  wire  _GEN_65; // @[riscvSingle.scala 282:44:@965.6]
  wire  _GEN_66; // @[riscvSingle.scala 282:44:@965.6]
  wire [3:0] _GEN_67; // @[riscvSingle.scala 282:44:@965.6]
  wire  _T_221; // @[riscvSingle.scala 410:11:@1157.4]
  wire  decoderMessage_regSrc; // @[riscvSingle.scala 245:30:@902.4 riscvSingle.scala 401:27:@1147.4]
  assign _T_39 = io_opcode == 7'h33; // @[riscvSingle.scala 247:20:@903.4]
  assign _T_49 = io_funct7 == 7'h0; // @[riscvSingle.scala 257:24:@913.6]
  assign _T_51 = io_funct3 == 3'h0; // @[riscvSingle.scala 258:28:@915.8]
  assign _T_54 = io_funct3 == 3'h1; // @[riscvSingle.scala 260:34:@920.10]
  assign _T_57 = io_funct3 == 3'h2; // @[riscvSingle.scala 262:34:@925.12]
  assign _T_60 = io_funct3 == 3'h3; // @[riscvSingle.scala 264:34:@930.14]
  assign _T_63 = io_funct3 == 3'h4; // @[riscvSingle.scala 266:34:@935.16]
  assign _T_66 = io_funct3 == 3'h5; // @[riscvSingle.scala 268:34:@940.18]
  assign _T_69 = io_funct3 == 3'h6; // @[riscvSingle.scala 270:34:@945.20]
  assign _GEN_1 = _T_66 ? 3'h7 : {{2'd0}, _T_69}; // @[riscvSingle.scala 268:48:@941.18]
  assign _GEN_2 = _T_63 ? 3'h6 : _GEN_1; // @[riscvSingle.scala 266:48:@936.16]
  assign _GEN_3 = _T_60 ? 3'h5 : _GEN_2; // @[riscvSingle.scala 264:48:@931.14]
  assign _GEN_4 = _T_57 ? 4'h9 : {{1'd0}, _GEN_3}; // @[riscvSingle.scala 262:48:@926.12]
  assign _GEN_5 = _T_54 ? 4'h3 : _GEN_4; // @[riscvSingle.scala 260:48:@921.10]
  assign _GEN_6 = _T_51 ? 4'h2 : _GEN_5; // @[riscvSingle.scala 258:42:@916.8]
  assign _GEN_7 = _T_51 ? 4'h8 : 4'h4; // @[riscvSingle.scala 276:42:@955.8]
  assign _GEN_8 = _T_49 ? _GEN_6 : _GEN_7; // @[riscvSingle.scala 257:42:@914.6]
  assign _T_77 = io_opcode == 7'h17; // @[riscvSingle.scala 282:27:@964.6]
  assign _T_88 = io_opcode == 7'h13; // @[riscvSingle.scala 292:27:@977.8]
  assign _T_120 = io_opcode == 7'h3; // @[riscvSingle.scala 319:27:@1026.10]
  assign _T_131 = io_opcode == 7'h23; // @[riscvSingle.scala 329:27:@1039.12]
  assign _T_142 = io_opcode == 7'h63; // @[riscvSingle.scala 339:27:@1052.14]
  assign _T_155 = _T_51 & io_zero; // @[riscvSingle.scala 349:37:@1064.16]
  assign _T_160 = io_zero == 1'h0; // @[riscvSingle.scala 351:53:@1070.18]
  assign _T_161 = _T_54 & _T_160; // @[riscvSingle.scala 351:43:@1071.18]
  assign _T_167 = _T_63 & io_lt; // @[riscvSingle.scala 353:43:@1078.20]
  assign _T_173 = _T_66 & io_gt; // @[riscvSingle.scala 355:43:@1085.22]
  assign _T_179 = _T_69 & io_lt; // @[riscvSingle.scala 357:43:@1092.24]
  assign _T_182 = io_funct3 == 3'h7; // @[riscvSingle.scala 359:30:@1097.26]
  assign _T_185 = _T_182 & io_gt; // @[riscvSingle.scala 359:43:@1099.26]
  assign _GEN_17 = _T_179 ? 1'h1 : _T_185; // @[riscvSingle.scala 357:60:@1093.24]
  assign _GEN_18 = _T_173 ? 1'h1 : _GEN_17; // @[riscvSingle.scala 355:60:@1086.22]
  assign _GEN_19 = _T_167 ? 1'h1 : _GEN_18; // @[riscvSingle.scala 353:60:@1079.20]
  assign _GEN_20 = _T_161 ? 1'h1 : _GEN_19; // @[riscvSingle.scala 351:62:@1072.18]
  assign _GEN_21 = _T_155 ? 1'h1 : _GEN_20; // @[riscvSingle.scala 349:55:@1065.16]
  assign _T_189 = io_opcode == 7'h6f; // @[riscvSingle.scala 365:27:@1108.16]
  assign _GEN_23 = _T_189 ? 3'h4 : 3'h0; // @[riscvSingle.scala 365:45:@1109.16]
  assign _GEN_24 = _T_189 ? 2'h2 : 2'h0; // @[riscvSingle.scala 365:45:@1109.16]
  assign _GEN_27 = _T_142 ? 3'h0 : _GEN_23; // @[riscvSingle.scala 339:45:@1053.14]
  assign _GEN_28 = _T_142 ? 2'h1 : _GEN_24; // @[riscvSingle.scala 339:45:@1053.14]
  assign _GEN_29 = _T_142 ? 1'h0 : _T_189; // @[riscvSingle.scala 339:45:@1053.14]
  assign _GEN_31 = _T_142 ? 3'h4 : 3'h0; // @[riscvSingle.scala 339:45:@1053.14]
  assign _GEN_32 = _T_142 ? _GEN_21 : _T_189; // @[riscvSingle.scala 339:45:@1053.14]
  assign _GEN_33 = _T_131 ? 3'h0 : _GEN_27; // @[riscvSingle.scala 329:45:@1040.12]
  assign _GEN_34 = _T_131 ? 2'h0 : _GEN_28; // @[riscvSingle.scala 329:45:@1040.12]
  assign _GEN_35 = _T_131 ? 1'h1 : _GEN_29; // @[riscvSingle.scala 329:45:@1040.12]
  assign _GEN_37 = _T_131 ? 1'h0 : _GEN_29; // @[riscvSingle.scala 329:45:@1040.12]
  assign _GEN_39 = _T_131 ? 1'h0 : _GEN_32; // @[riscvSingle.scala 329:45:@1040.12]
  assign _GEN_40 = _T_131 ? 3'h0 : _GEN_31; // @[riscvSingle.scala 329:45:@1040.12]
  assign _GEN_41 = _T_120 ? 3'h0 : _GEN_33; // @[riscvSingle.scala 319:45:@1027.10]
  assign _GEN_42 = _T_120 ? 2'h0 : _GEN_34; // @[riscvSingle.scala 319:45:@1027.10]
  assign _GEN_43 = _T_120 ? 1'h1 : _GEN_35; // @[riscvSingle.scala 319:45:@1027.10]
  assign _GEN_46 = _T_120 ? 1'h1 : _GEN_37; // @[riscvSingle.scala 319:45:@1027.10]
  assign _GEN_47 = _T_120 ? 1'h1 : _T_131; // @[riscvSingle.scala 319:45:@1027.10]
  assign _GEN_48 = _T_120 ? 1'h0 : _GEN_39; // @[riscvSingle.scala 319:45:@1027.10]
  assign _GEN_49 = _T_120 ? 3'h0 : _GEN_40; // @[riscvSingle.scala 319:45:@1027.10]
  assign _GEN_50 = _T_88 ? 3'h0 : _GEN_41; // @[riscvSingle.scala 292:45:@978.8]
  assign _GEN_51 = _T_88 ? 2'h0 : _GEN_42; // @[riscvSingle.scala 292:45:@978.8]
  assign _GEN_52 = _T_88 ? 1'h1 : _GEN_43; // @[riscvSingle.scala 292:45:@978.8]
  assign _GEN_54 = _T_88 ? 1'h0 : _T_120; // @[riscvSingle.scala 292:45:@978.8]
  assign _GEN_55 = _T_88 ? 1'h1 : _GEN_46; // @[riscvSingle.scala 292:45:@978.8]
  assign _GEN_56 = _T_88 ? 1'h0 : _GEN_47; // @[riscvSingle.scala 292:45:@978.8]
  assign _GEN_57 = _T_88 ? 1'h0 : _GEN_48; // @[riscvSingle.scala 292:45:@978.8]
  assign _GEN_58 = _T_88 ? _GEN_6 : {{1'd0}, _GEN_49}; // @[riscvSingle.scala 292:45:@978.8]
  assign _GEN_59 = _T_77 ? 3'h0 : _GEN_50; // @[riscvSingle.scala 282:44:@965.6]
  assign _GEN_60 = _T_77 ? 2'h3 : _GEN_51; // @[riscvSingle.scala 282:44:@965.6]
  assign _GEN_61 = _T_77 ? 1'h1 : _GEN_52; // @[riscvSingle.scala 282:44:@965.6]
  assign _GEN_63 = _T_77 ? 1'h0 : _GEN_54; // @[riscvSingle.scala 282:44:@965.6]
  assign _GEN_64 = _T_77 ? 1'h1 : _GEN_55; // @[riscvSingle.scala 282:44:@965.6]
  assign _GEN_65 = _T_77 ? 1'h0 : _GEN_56; // @[riscvSingle.scala 282:44:@965.6]
  assign _GEN_66 = _T_77 ? 1'h0 : _GEN_57; // @[riscvSingle.scala 282:44:@965.6]
  assign _GEN_67 = _T_77 ? 4'h2 : _GEN_58; // @[riscvSingle.scala 282:44:@965.6]
  assign _T_221 = reset == 1'h0; // @[riscvSingle.scala 410:11:@1157.4]
  assign decoderMessage_regSrc = io_regSrc[0]; // @[riscvSingle.scala 245:30:@902.4 riscvSingle.scala 401:27:@1147.4]
  assign io_regSrc = _T_39 ? 3'h0 : _GEN_59; // @[riscvSingle.scala 248:19:@905.6 riscvSingle.scala 283:19:@966.8 riscvSingle.scala 293:19:@979.10 riscvSingle.scala 320:19:@1028.12 riscvSingle.scala 330:19:@1041.14 riscvSingle.scala 340:19:@1054.16 riscvSingle.scala 366:19:@1110.18 riscvSingle.scala 376:19:@1123.20 riscvSingle.scala 386:19:@1134.20]
  assign io_regW = _T_39 ? 1'h1 : _GEN_64; // @[riscvSingle.scala 253:17:@910.6 riscvSingle.scala 288:17:@971.8 riscvSingle.scala 298:17:@984.10 riscvSingle.scala 325:17:@1033.12 riscvSingle.scala 335:17:@1046.14 riscvSingle.scala 345:17:@1059.16 riscvSingle.scala 371:17:@1115.18 riscvSingle.scala 381:17:@1128.20 riscvSingle.scala 391:17:@1139.20]
  assign io_immSrc = _T_39 ? 2'h0 : _GEN_60; // @[riscvSingle.scala 249:19:@906.6 riscvSingle.scala 284:19:@967.8 riscvSingle.scala 294:19:@980.10 riscvSingle.scala 321:19:@1029.12 riscvSingle.scala 331:19:@1042.14 riscvSingle.scala 341:19:@1055.16 riscvSingle.scala 367:19:@1111.18 riscvSingle.scala 377:19:@1124.20 riscvSingle.scala 387:19:@1135.20]
  assign io_aluSrc = _T_39 ? 1'h0 : _GEN_61; // @[riscvSingle.scala 250:19:@907.6 riscvSingle.scala 285:19:@968.8 riscvSingle.scala 295:19:@981.10 riscvSingle.scala 322:19:@1030.12 riscvSingle.scala 332:19:@1043.14 riscvSingle.scala 342:19:@1056.16 riscvSingle.scala 368:19:@1112.18 riscvSingle.scala 378:19:@1125.20 riscvSingle.scala 388:19:@1136.20]
  assign io_pcSrc = _T_39 ? 1'h0 : _T_77; // @[riscvSingle.scala 251:18:@908.6 riscvSingle.scala 286:18:@969.8 riscvSingle.scala 296:18:@982.10 riscvSingle.scala 323:18:@1031.12 riscvSingle.scala 333:18:@1044.14 riscvSingle.scala 343:18:@1057.16 riscvSingle.scala 369:18:@1113.18 riscvSingle.scala 379:18:@1126.20 riscvSingle.scala 389:18:@1137.20]
  assign io_aluControl = _T_39 ? _GEN_8 : _GEN_67; // @[riscvSingle.scala 259:31:@917.10 riscvSingle.scala 261:31:@922.12 riscvSingle.scala 263:31:@927.14 riscvSingle.scala 265:31:@932.16 riscvSingle.scala 267:31:@937.18 riscvSingle.scala 269:31:@942.20 riscvSingle.scala 271:31:@947.22 riscvSingle.scala 273:31:@950.22 riscvSingle.scala 277:31:@956.10 riscvSingle.scala 279:31:@959.10 riscvSingle.scala 291:23:@974.8 riscvSingle.scala 303:27:@989.12 riscvSingle.scala 305:27:@994.14 riscvSingle.scala 307:27:@999.16 riscvSingle.scala 309:27:@1004.18 riscvSingle.scala 311:27:@1009.20 riscvSingle.scala 313:27:@1014.22 riscvSingle.scala 315:27:@1019.24 riscvSingle.scala 317:27:@1022.24 riscvSingle.scala 328:23:@1036.12 riscvSingle.scala 338:23:@1049.14 riscvSingle.scala 347:23:@1061.16 riscvSingle.scala 374:23:@1118.18 riscvSingle.scala 384:23:@1131.20 riscvSingle.scala 394:23:@1142.20]
  assign io_memW = _T_39 ? 1'h0 : _GEN_65; // @[riscvSingle.scala 254:17:@911.6 riscvSingle.scala 289:17:@972.8 riscvSingle.scala 299:17:@985.10 riscvSingle.scala 326:17:@1034.12 riscvSingle.scala 336:17:@1047.14 riscvSingle.scala 346:17:@1060.16 riscvSingle.scala 372:17:@1116.18 riscvSingle.scala 382:17:@1129.20 riscvSingle.scala 392:17:@1140.20]
  assign io_memToReg = _T_39 ? 1'h0 : _GEN_63; // @[riscvSingle.scala 252:21:@909.6 riscvSingle.scala 287:21:@970.8 riscvSingle.scala 297:21:@983.10 riscvSingle.scala 324:21:@1032.12 riscvSingle.scala 334:21:@1045.14 riscvSingle.scala 344:21:@1058.16 riscvSingle.scala 370:21:@1114.18 riscvSingle.scala 380:21:@1127.20 riscvSingle.scala 390:21:@1138.20]
  assign io_branchSrc = _T_39 ? 1'h0 : _GEN_66; // @[riscvSingle.scala 255:22:@912.6 riscvSingle.scala 290:22:@973.8 riscvSingle.scala 300:22:@986.10 riscvSingle.scala 327:22:@1035.12 riscvSingle.scala 337:22:@1048.14 riscvSingle.scala 350:26:@1066.18 riscvSingle.scala 352:26:@1073.20 riscvSingle.scala 354:26:@1080.22 riscvSingle.scala 356:26:@1087.24 riscvSingle.scala 358:26:@1094.26 riscvSingle.scala 360:26:@1101.28 riscvSingle.scala 362:26:@1104.28 riscvSingle.scala 373:22:@1117.18 riscvSingle.scala 383:22:@1130.20 riscvSingle.scala 393:22:@1141.20]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_221) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|decoder Module:\n|  branchSrc   : b%b\n|  opcode      : b%b\n|  funct3      : b%b\n|  regSrc      : b%b\n|  immSrc      : b%b\n|  aluSrc      : b%b\n|  pcSrc       : b%b\n|  aluControl  : b%b\n|  memToReg    : b%b\n|  zero        : b%b\n|  lt          : b%b\n|  gt          : b%b\n|___________________________\n",io_branchSrc,io_opcode,io_funct3,decoderMessage_regSrc,io_immSrc,io_aluSrc,io_pcSrc,io_aluControl,io_memToReg,io_zero,io_lt,io_gt); // @[riscvSingle.scala 410:11:@1159.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module riscv( // @[:@1162.2]
  input         clock, // @[:@1163.4]
  input         reset, // @[:@1164.4]
  input  [31:0] io_instr, // @[:@1165.4]
  input  [31:0] io_readData, // @[:@1165.4]
  output [31:0] io_pc, // @[:@1165.4]
  output        io_memWrite, // @[:@1165.4]
  output [31:0] io_aluResult, // @[:@1165.4]
  output [31:0] io_writeData // @[:@1165.4]
);
  wire  dp_clock; // @[riscvSingle.scala 103:20:@1168.4]
  wire  dp_reset; // @[riscvSingle.scala 103:20:@1168.4]
  wire [2:0] dp_io_regSrc; // @[riscvSingle.scala 103:20:@1168.4]
  wire  dp_io_regWrite; // @[riscvSingle.scala 103:20:@1168.4]
  wire [1:0] dp_io_immSrc; // @[riscvSingle.scala 103:20:@1168.4]
  wire  dp_io_aluSrc; // @[riscvSingle.scala 103:20:@1168.4]
  wire  dp_io_pcSrc; // @[riscvSingle.scala 103:20:@1168.4]
  wire [3:0] dp_io_aluControl; // @[riscvSingle.scala 103:20:@1168.4]
  wire  dp_io_memToReg; // @[riscvSingle.scala 103:20:@1168.4]
  wire [31:0] dp_io_instr; // @[riscvSingle.scala 103:20:@1168.4]
  wire [31:0] dp_io_readData; // @[riscvSingle.scala 103:20:@1168.4]
  wire  dp_io_branchSrc; // @[riscvSingle.scala 103:20:@1168.4]
  wire [31:0] dp_io_pc; // @[riscvSingle.scala 103:20:@1168.4]
  wire [31:0] dp_io_dataAdd; // @[riscvSingle.scala 103:20:@1168.4]
  wire [31:0] dp_io_writeData; // @[riscvSingle.scala 103:20:@1168.4]
  wire  dp_io_zero; // @[riscvSingle.scala 103:20:@1168.4]
  wire  dp_io_lt; // @[riscvSingle.scala 103:20:@1168.4]
  wire  dp_io_gt; // @[riscvSingle.scala 103:20:@1168.4]
  wire  d_clock; // @[riscvSingle.scala 104:19:@1171.4]
  wire  d_reset; // @[riscvSingle.scala 104:19:@1171.4]
  wire [6:0] d_io_opcode; // @[riscvSingle.scala 104:19:@1171.4]
  wire [6:0] d_io_funct7; // @[riscvSingle.scala 104:19:@1171.4]
  wire [2:0] d_io_funct3; // @[riscvSingle.scala 104:19:@1171.4]
  wire [2:0] d_io_regSrc; // @[riscvSingle.scala 104:19:@1171.4]
  wire  d_io_regW; // @[riscvSingle.scala 104:19:@1171.4]
  wire [1:0] d_io_immSrc; // @[riscvSingle.scala 104:19:@1171.4]
  wire  d_io_aluSrc; // @[riscvSingle.scala 104:19:@1171.4]
  wire  d_io_pcSrc; // @[riscvSingle.scala 104:19:@1171.4]
  wire [3:0] d_io_aluControl; // @[riscvSingle.scala 104:19:@1171.4]
  wire  d_io_memW; // @[riscvSingle.scala 104:19:@1171.4]
  wire  d_io_memToReg; // @[riscvSingle.scala 104:19:@1171.4]
  wire  d_io_branchSrc; // @[riscvSingle.scala 104:19:@1171.4]
  wire  d_io_zero; // @[riscvSingle.scala 104:19:@1171.4]
  wire  d_io_lt; // @[riscvSingle.scala 104:19:@1171.4]
  wire  d_io_gt; // @[riscvSingle.scala 104:19:@1171.4]
  wire  _T_22; // @[riscvSingle.scala 110:11:@1177.4]
  datapath dp ( // @[riscvSingle.scala 103:20:@1168.4]
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
    .io_dataAdd(dp_io_dataAdd),
    .io_writeData(dp_io_writeData),
    .io_zero(dp_io_zero),
    .io_lt(dp_io_lt),
    .io_gt(dp_io_gt)
  );
  decoder d ( // @[riscvSingle.scala 104:19:@1171.4]
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
    .io_memW(d_io_memW),
    .io_memToReg(d_io_memToReg),
    .io_branchSrc(d_io_branchSrc),
    .io_zero(d_io_zero),
    .io_lt(d_io_lt),
    .io_gt(d_io_gt)
  );
  assign _T_22 = reset == 1'h0; // @[riscvSingle.scala 110:11:@1177.4]
  assign io_pc = dp_io_pc; // @[riscvSingle.scala 131:11:@1202.4]
  assign io_memWrite = d_io_memW; // @[riscvSingle.scala 132:17:@1203.4]
  assign io_aluResult = dp_io_dataAdd; // @[riscvSingle.scala 133:18:@1204.4]
  assign io_writeData = dp_io_writeData; // @[riscvSingle.scala 134:18:@1205.4]
  assign dp_clock = clock; // @[:@1169.4]
  assign dp_reset = reset; // @[:@1170.4]
  assign dp_io_regSrc = d_io_regSrc; // @[riscvSingle.scala 120:18:@1192.4]
  assign dp_io_regWrite = d_io_regW; // @[riscvSingle.scala 121:20:@1193.4]
  assign dp_io_immSrc = d_io_immSrc; // @[riscvSingle.scala 122:18:@1194.4]
  assign dp_io_aluSrc = d_io_aluSrc; // @[riscvSingle.scala 123:18:@1195.4]
  assign dp_io_pcSrc = d_io_pcSrc; // @[riscvSingle.scala 124:17:@1196.4]
  assign dp_io_aluControl = d_io_aluControl; // @[riscvSingle.scala 125:22:@1197.4]
  assign dp_io_memToReg = d_io_memW; // @[riscvSingle.scala 126:20:@1198.4]
  assign dp_io_instr = io_instr; // @[riscvSingle.scala 127:17:@1199.4]
  assign dp_io_readData = io_readData; // @[riscvSingle.scala 128:20:@1200.4]
  assign dp_io_branchSrc = d_io_branchSrc; // @[riscvSingle.scala 129:21:@1201.4]
  assign d_clock = clock; // @[:@1172.4]
  assign d_reset = reset; // @[:@1173.4]
  assign d_io_opcode = io_instr[6:0]; // @[riscvSingle.scala 112:17:@1182.4]
  assign d_io_funct7 = io_instr[31:25]; // @[riscvSingle.scala 113:17:@1184.4]
  assign d_io_funct3 = io_instr[14:12]; // @[riscvSingle.scala 114:17:@1186.4]
  assign d_io_zero = dp_io_zero; // @[riscvSingle.scala 116:15:@1189.4]
  assign d_io_lt = dp_io_lt; // @[riscvSingle.scala 117:13:@1190.4]
  assign d_io_gt = dp_io_gt; // @[riscvSingle.scala 118:13:@1191.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_22) begin
          $fwrite(32'h80000002,"___________________________\n|riscv Module:\n|  instr       : 0x%x\n|  readData    : 0x%x\n|___________________________\n",io_instr,io_readData); // @[riscvSingle.scala 110:11:@1179.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module imem( // @[:@1208.2]
  input         clock, // @[:@1209.4]
  input  [31:0] io_mem_addr, // @[:@1211.4]
  output [31:0] io_mem_out // @[:@1211.4]
);
  reg [31:0] MEM [0:1023]; // @[riscvSingle.scala 748:18:@1213.4]
  reg [31:0] _RAND_0;
  wire [31:0] MEM__T_12_data; // @[riscvSingle.scala 748:18:@1213.4]
  wire [9:0] MEM__T_12_addr; // @[riscvSingle.scala 748:18:@1213.4]
  assign MEM__T_12_addr = io_mem_addr[9:0];
  assign MEM__T_12_data = MEM[MEM__T_12_addr]; // @[riscvSingle.scala 748:18:@1213.4]
  assign io_mem_out = MEM__T_12_data; // @[riscvSingle.scala 751:16:@1216.4]
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
module dmem( // @[:@1218.2]
  input         clock, // @[:@1219.4]
  input  [31:0] io_mem_addr, // @[:@1221.4]
  input  [31:0] io_mem_in, // @[:@1221.4]
  input         io_enable, // @[:@1221.4]
  output [31:0] io_mem_out // @[:@1221.4]
);
  reg [31:0] mem [0:1023]; // @[riscvSingle.scala 762:26:@1223.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_25_data; // @[riscvSingle.scala 762:26:@1223.4]
  wire [9:0] mem__T_25_addr; // @[riscvSingle.scala 762:26:@1223.4]
  wire [31:0] mem__T_16_data; // @[riscvSingle.scala 762:26:@1223.4]
  wire [9:0] mem__T_16_addr; // @[riscvSingle.scala 762:26:@1223.4]
  wire  mem__T_16_mask; // @[riscvSingle.scala 762:26:@1223.4]
  wire  mem__T_16_en; // @[riscvSingle.scala 762:26:@1223.4]
  wire [9:0] _T_15; // @[:@1224.4]
  wire  _T_17; // @[riscvSingle.scala 764:51:@1227.4]
  wire  _T_19; // @[riscvSingle.scala 764:51:@1228.4]
  wire  _GEN_1; // @[riscvSingle.scala 764:27:@1231.4]
  reg [9:0] mem__T_25_addr_pipe_0;
  reg [31:0] _RAND_1;
  assign mem__T_25_addr = mem__T_25_addr_pipe_0;
  assign mem__T_25_data = mem[mem__T_25_addr]; // @[riscvSingle.scala 762:26:@1223.4]
  assign mem__T_16_data = io_mem_in;
  assign mem__T_16_addr = io_mem_addr[9:0];
  assign mem__T_16_mask = 1'h1;
  assign mem__T_16_en = 1'h1;
  assign _T_15 = io_mem_addr[9:0]; // @[:@1224.4]
  assign _T_17 = ~ io_enable; // @[riscvSingle.scala 764:51:@1227.4]
  assign _T_19 = _T_17 == 1'h0; // @[riscvSingle.scala 764:51:@1228.4]
  assign _GEN_1 = _T_19; // @[riscvSingle.scala 764:27:@1231.4]
  assign io_mem_out = mem__T_25_data; // @[riscvSingle.scala 764:16:@1237.4]
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
  mem__T_25_addr_pipe_0 = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_16_en & mem__T_16_mask) begin
      mem[mem__T_16_addr] <= mem__T_16_data; // @[riscvSingle.scala 762:26:@1223.4]
    end
    if (_GEN_1) begin
      mem__T_25_addr_pipe_0 <= _T_15;
    end
  end
endmodule
module top( // @[:@1239.2]
  input   clock, // @[:@1240.4]
  input   reset, // @[:@1241.4]
  output  io_valid // @[:@1242.4]
);
  wire  r_clock; // @[riscvSingle.scala 31:19:@1245.4]
  wire  r_reset; // @[riscvSingle.scala 31:19:@1245.4]
  wire [31:0] r_io_instr; // @[riscvSingle.scala 31:19:@1245.4]
  wire [31:0] r_io_readData; // @[riscvSingle.scala 31:19:@1245.4]
  wire [31:0] r_io_pc; // @[riscvSingle.scala 31:19:@1245.4]
  wire  r_io_memWrite; // @[riscvSingle.scala 31:19:@1245.4]
  wire [31:0] r_io_aluResult; // @[riscvSingle.scala 31:19:@1245.4]
  wire [31:0] r_io_writeData; // @[riscvSingle.scala 31:19:@1245.4]
  wire  im_clock; // @[riscvSingle.scala 33:20:@1248.4]
  wire [31:0] im_io_mem_addr; // @[riscvSingle.scala 33:20:@1248.4]
  wire [31:0] im_io_mem_out; // @[riscvSingle.scala 33:20:@1248.4]
  wire  dm_clock; // @[riscvSingle.scala 35:20:@1251.4]
  wire [31:0] dm_io_mem_addr; // @[riscvSingle.scala 35:20:@1251.4]
  wire [31:0] dm_io_mem_in; // @[riscvSingle.scala 35:20:@1251.4]
  wire  dm_io_enable; // @[riscvSingle.scala 35:20:@1251.4]
  wire [31:0] dm_io_mem_out; // @[riscvSingle.scala 35:20:@1251.4]
  wire [31:0] pc_pulled; // @[riscvSingle.scala 44:26:@1259.4]
  wire  _T_16; // @[riscvSingle.scala 68:11:@1272.4]
  wire [31:0] instr_out; // @[riscvSingle.scala 37:25:@1254.4 riscvSingle.scala 42:15:@1258.4]
  wire [6:0] _T_19; // @[riscvSingle.scala 75:30:@1279.4]
  wire  _T_21; // @[riscvSingle.scala 75:37:@1280.4]
  wire [31:0] mem_inW; // @[riscvSingle.scala 39:23:@1256.4 riscvSingle.scala 56:13:@1266.4]
  wire [31:0] mem_outW; // @[riscvSingle.scala 40:24:@1257.4 riscvSingle.scala 54:14:@1265.4]
  riscv r ( // @[riscvSingle.scala 31:19:@1245.4]
    .clock(r_clock),
    .reset(r_reset),
    .io_instr(r_io_instr),
    .io_readData(r_io_readData),
    .io_pc(r_io_pc),
    .io_memWrite(r_io_memWrite),
    .io_aluResult(r_io_aluResult),
    .io_writeData(r_io_writeData)
  );
  imem im ( // @[riscvSingle.scala 33:20:@1248.4]
    .clock(im_clock),
    .io_mem_addr(im_io_mem_addr),
    .io_mem_out(im_io_mem_out)
  );
  dmem dm ( // @[riscvSingle.scala 35:20:@1251.4]
    .clock(dm_clock),
    .io_mem_addr(dm_io_mem_addr),
    .io_mem_in(dm_io_mem_in),
    .io_enable(dm_io_enable),
    .io_mem_out(dm_io_mem_out)
  );
  assign pc_pulled = r_io_pc / 32'h4; // @[riscvSingle.scala 44:26:@1259.4]
  assign _T_16 = reset == 1'h0; // @[riscvSingle.scala 68:11:@1272.4]
  assign instr_out = im_io_mem_out; // @[riscvSingle.scala 37:25:@1254.4 riscvSingle.scala 42:15:@1258.4]
  assign _T_19 = instr_out[6:0]; // @[riscvSingle.scala 75:30:@1279.4]
  assign _T_21 = _T_19 == 7'h73; // @[riscvSingle.scala 75:37:@1280.4]
  assign mem_inW = r_io_writeData; // @[riscvSingle.scala 39:23:@1256.4 riscvSingle.scala 56:13:@1266.4]
  assign mem_outW = dm_io_mem_out; // @[riscvSingle.scala 40:24:@1257.4 riscvSingle.scala 54:14:@1265.4]
  assign io_valid = _T_21 ? 1'h0 : 1'h1; // @[riscvSingle.scala 75:14:@1282.4]
  assign r_clock = clock; // @[:@1246.4]
  assign r_reset = reset; // @[:@1247.4]
  assign r_io_instr = im_io_mem_out; // @[riscvSingle.scala 73:16:@1278.4]
  assign r_io_readData = dm_io_mem_out; // @[riscvSingle.scala 52:19:@1264.4]
  assign im_clock = clock; // @[:@1249.4]
  assign im_io_mem_addr = r_io_pc / 32'h4; // @[riscvSingle.scala 71:20:@1277.4]
  assign dm_clock = clock; // @[:@1252.4]
  assign dm_io_mem_addr = r_io_aluResult; // @[riscvSingle.scala 46:20:@1261.4]
  assign dm_io_mem_in = r_io_writeData; // @[riscvSingle.scala 48:18:@1262.4]
  assign dm_io_enable = r_io_memWrite; // @[riscvSingle.scala 50:18:@1263.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_16) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|top Module:\n|  instr pulled: 0x%x\n|  pc pulled   : b%b\n|  mem in      : b%b\n|  mem out     : b%b\n|___________________________\n",instr_out,pc_pulled,mem_inW,mem_outW); // @[riscvSingle.scala 68:11:@1274.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
