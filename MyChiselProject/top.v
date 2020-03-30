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
  reg [31:0] rf [0:31]; // @[riscvSingle.scala 609:17:@72.4]
  reg [31:0] _RAND_0;
  wire [31:0] rf__T_39_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_39_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_40_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_40_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_45_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_45_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_46_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_46_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_54_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_54_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_64_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_64_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_74_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_74_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_84_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_84_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_94_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_94_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_104_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_104_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_114_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_114_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_124_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_124_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_134_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_134_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_144_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_144_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_154_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_154_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_164_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_164_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_174_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_174_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_184_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_184_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_194_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_194_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_204_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_204_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_214_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_214_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_224_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_224_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_234_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_234_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_244_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_244_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_254_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_254_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_264_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_264_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_274_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_274_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_284_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_284_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_294_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_294_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_304_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_304_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_314_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_314_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_324_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_324_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_334_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_334_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_344_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_344_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_354_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_354_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_364_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_364_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_32_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_32_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire  rf__T_32_mask; // @[riscvSingle.scala 609:17:@72.4]
  wire  rf__T_32_en; // @[riscvSingle.scala 609:17:@72.4]
  wire [31:0] rf__T_34_data; // @[riscvSingle.scala 609:17:@72.4]
  wire [4:0] rf__T_34_addr; // @[riscvSingle.scala 609:17:@72.4]
  wire  rf__T_34_mask; // @[riscvSingle.scala 609:17:@72.4]
  wire  rf__T_34_en; // @[riscvSingle.scala 609:17:@72.4]
  wire  _T_24; // @[riscvSingle.scala 612:17:@74.4]
  wire  _T_26; // @[riscvSingle.scala 612:17:@75.4]
  wire  _T_28; // @[riscvSingle.scala 612:34:@76.4]
  wire  _T_30; // @[riscvSingle.scala 612:25:@77.4]
  wire  _T_31; // @[riscvSingle.scala 612:22:@78.4]
  wire  _T_37; // @[riscvSingle.scala 618:27:@87.4]
  wire  _T_43; // @[riscvSingle.scala 619:27:@93.4]
  wire  _T_50; // @[riscvSingle.scala 630:11:@108.4]
  wire [31:0] _T_52; // @[riscvSingle.scala 632:26:@112.4 riscvSingle.scala 633:16:@114.4]
  wire [31:0] _T_62; // @[riscvSingle.scala 632:26:@125.4 riscvSingle.scala 633:16:@127.4]
  wire [31:0] _T_72; // @[riscvSingle.scala 632:26:@138.4 riscvSingle.scala 633:16:@140.4]
  wire [31:0] _T_82; // @[riscvSingle.scala 632:26:@151.4 riscvSingle.scala 633:16:@153.4]
  wire [31:0] _T_92; // @[riscvSingle.scala 632:26:@164.4 riscvSingle.scala 633:16:@166.4]
  wire [31:0] _T_102; // @[riscvSingle.scala 632:26:@177.4 riscvSingle.scala 633:16:@179.4]
  wire [31:0] _T_112; // @[riscvSingle.scala 632:26:@190.4 riscvSingle.scala 633:16:@192.4]
  wire [31:0] _T_122; // @[riscvSingle.scala 632:26:@203.4 riscvSingle.scala 633:16:@205.4]
  wire [31:0] _T_132; // @[riscvSingle.scala 632:26:@216.4 riscvSingle.scala 633:16:@218.4]
  wire [31:0] _T_142; // @[riscvSingle.scala 632:26:@229.4 riscvSingle.scala 633:16:@231.4]
  wire [31:0] _T_152; // @[riscvSingle.scala 632:26:@242.4 riscvSingle.scala 633:16:@244.4]
  wire [31:0] _T_162; // @[riscvSingle.scala 632:26:@255.4 riscvSingle.scala 633:16:@257.4]
  wire [31:0] _T_172; // @[riscvSingle.scala 632:26:@268.4 riscvSingle.scala 633:16:@270.4]
  wire [31:0] _T_182; // @[riscvSingle.scala 632:26:@281.4 riscvSingle.scala 633:16:@283.4]
  wire [31:0] _T_192; // @[riscvSingle.scala 632:26:@294.4 riscvSingle.scala 633:16:@296.4]
  wire [31:0] _T_202; // @[riscvSingle.scala 632:26:@307.4 riscvSingle.scala 633:16:@309.4]
  wire [31:0] _T_212; // @[riscvSingle.scala 632:26:@320.4 riscvSingle.scala 633:16:@322.4]
  wire [31:0] _T_222; // @[riscvSingle.scala 632:26:@333.4 riscvSingle.scala 633:16:@335.4]
  wire [31:0] _T_232; // @[riscvSingle.scala 632:26:@346.4 riscvSingle.scala 633:16:@348.4]
  wire [31:0] _T_242; // @[riscvSingle.scala 632:26:@359.4 riscvSingle.scala 633:16:@361.4]
  wire [31:0] _T_252; // @[riscvSingle.scala 632:26:@372.4 riscvSingle.scala 633:16:@374.4]
  wire [31:0] _T_262; // @[riscvSingle.scala 632:26:@385.4 riscvSingle.scala 633:16:@387.4]
  wire [31:0] _T_272; // @[riscvSingle.scala 632:26:@398.4 riscvSingle.scala 633:16:@400.4]
  wire [31:0] _T_282; // @[riscvSingle.scala 632:26:@411.4 riscvSingle.scala 633:16:@413.4]
  wire [31:0] _T_292; // @[riscvSingle.scala 632:26:@424.4 riscvSingle.scala 633:16:@426.4]
  wire [31:0] _T_302; // @[riscvSingle.scala 632:26:@437.4 riscvSingle.scala 633:16:@439.4]
  wire [31:0] _T_312; // @[riscvSingle.scala 632:26:@450.4 riscvSingle.scala 633:16:@452.4]
  wire [31:0] _T_322; // @[riscvSingle.scala 632:26:@463.4 riscvSingle.scala 633:16:@465.4]
  wire [31:0] _T_332; // @[riscvSingle.scala 632:26:@476.4 riscvSingle.scala 633:16:@478.4]
  wire [31:0] _T_342; // @[riscvSingle.scala 632:26:@489.4 riscvSingle.scala 633:16:@491.4]
  wire [31:0] _T_352; // @[riscvSingle.scala 632:26:@502.4 riscvSingle.scala 633:16:@504.4]
  wire [31:0] _T_362; // @[riscvSingle.scala 632:26:@515.4 riscvSingle.scala 633:16:@517.4]
  assign rf__T_39_addr = io_r31[4:0];
  assign rf__T_39_data = rf[rf__T_39_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_40_addr = io_ra1;
  assign rf__T_40_data = rf[rf__T_40_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_45_addr = io_r31[4:0];
  assign rf__T_45_data = rf[rf__T_45_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_46_addr = io_ra2;
  assign rf__T_46_data = rf[rf__T_46_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_54_addr = 5'h0;
  assign rf__T_54_data = rf[rf__T_54_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_64_addr = 5'h1;
  assign rf__T_64_data = rf[rf__T_64_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_74_addr = 5'h2;
  assign rf__T_74_data = rf[rf__T_74_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_84_addr = 5'h3;
  assign rf__T_84_data = rf[rf__T_84_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_94_addr = 5'h4;
  assign rf__T_94_data = rf[rf__T_94_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_104_addr = 5'h5;
  assign rf__T_104_data = rf[rf__T_104_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_114_addr = 5'h6;
  assign rf__T_114_data = rf[rf__T_114_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_124_addr = 5'h7;
  assign rf__T_124_data = rf[rf__T_124_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_134_addr = 5'h8;
  assign rf__T_134_data = rf[rf__T_134_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_144_addr = 5'h9;
  assign rf__T_144_data = rf[rf__T_144_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_154_addr = 5'ha;
  assign rf__T_154_data = rf[rf__T_154_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_164_addr = 5'hb;
  assign rf__T_164_data = rf[rf__T_164_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_174_addr = 5'hc;
  assign rf__T_174_data = rf[rf__T_174_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_184_addr = 5'hd;
  assign rf__T_184_data = rf[rf__T_184_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_194_addr = 5'he;
  assign rf__T_194_data = rf[rf__T_194_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_204_addr = 5'hf;
  assign rf__T_204_data = rf[rf__T_204_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_214_addr = 5'h10;
  assign rf__T_214_data = rf[rf__T_214_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_224_addr = 5'h11;
  assign rf__T_224_data = rf[rf__T_224_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_234_addr = 5'h12;
  assign rf__T_234_data = rf[rf__T_234_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_244_addr = 5'h13;
  assign rf__T_244_data = rf[rf__T_244_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_254_addr = 5'h14;
  assign rf__T_254_data = rf[rf__T_254_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_264_addr = 5'h15;
  assign rf__T_264_data = rf[rf__T_264_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_274_addr = 5'h16;
  assign rf__T_274_data = rf[rf__T_274_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_284_addr = 5'h17;
  assign rf__T_284_data = rf[rf__T_284_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_294_addr = 5'h18;
  assign rf__T_294_data = rf[rf__T_294_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_304_addr = 5'h19;
  assign rf__T_304_data = rf[rf__T_304_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_314_addr = 5'h1a;
  assign rf__T_314_data = rf[rf__T_314_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_324_addr = 5'h1b;
  assign rf__T_324_data = rf[rf__T_324_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_334_addr = 5'h1c;
  assign rf__T_334_data = rf[rf__T_334_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_344_addr = 5'h1d;
  assign rf__T_344_data = rf[rf__T_344_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_354_addr = 5'h1e;
  assign rf__T_354_data = rf[rf__T_354_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_364_addr = 5'h1f;
  assign rf__T_364_data = rf[rf__T_364_addr]; // @[riscvSingle.scala 609:17:@72.4]
  assign rf__T_32_data = io_wd3;
  assign rf__T_32_addr = io_wa3;
  assign rf__T_32_mask = 1'h1;
  assign rf__T_32_en = _T_26 & _T_30;
  assign rf__T_34_data = 32'h0;
  assign rf__T_34_addr = 5'h0;
  assign rf__T_34_mask = 1'h1;
  assign rf__T_34_en = _T_31 ? 1'h0 : 1'h1;
  assign _T_24 = ~ io_we3; // @[riscvSingle.scala 612:17:@74.4]
  assign _T_26 = _T_24 == 1'h0; // @[riscvSingle.scala 612:17:@75.4]
  assign _T_28 = io_wa3 == 5'h0; // @[riscvSingle.scala 612:34:@76.4]
  assign _T_30 = _T_28 == 1'h0; // @[riscvSingle.scala 612:25:@77.4]
  assign _T_31 = _T_26 & _T_30; // @[riscvSingle.scala 612:22:@78.4]
  assign _T_37 = io_ra1 == 5'h1f; // @[riscvSingle.scala 618:27:@87.4]
  assign _T_43 = io_ra2 == 5'h1f; // @[riscvSingle.scala 619:27:@93.4]
  assign _T_50 = reset == 1'h0; // @[riscvSingle.scala 630:11:@108.4]
  assign _T_52 = rf__T_54_data; // @[riscvSingle.scala 632:26:@112.4 riscvSingle.scala 633:16:@114.4]
  assign _T_62 = rf__T_64_data; // @[riscvSingle.scala 632:26:@125.4 riscvSingle.scala 633:16:@127.4]
  assign _T_72 = rf__T_74_data; // @[riscvSingle.scala 632:26:@138.4 riscvSingle.scala 633:16:@140.4]
  assign _T_82 = rf__T_84_data; // @[riscvSingle.scala 632:26:@151.4 riscvSingle.scala 633:16:@153.4]
  assign _T_92 = rf__T_94_data; // @[riscvSingle.scala 632:26:@164.4 riscvSingle.scala 633:16:@166.4]
  assign _T_102 = rf__T_104_data; // @[riscvSingle.scala 632:26:@177.4 riscvSingle.scala 633:16:@179.4]
  assign _T_112 = rf__T_114_data; // @[riscvSingle.scala 632:26:@190.4 riscvSingle.scala 633:16:@192.4]
  assign _T_122 = rf__T_124_data; // @[riscvSingle.scala 632:26:@203.4 riscvSingle.scala 633:16:@205.4]
  assign _T_132 = rf__T_134_data; // @[riscvSingle.scala 632:26:@216.4 riscvSingle.scala 633:16:@218.4]
  assign _T_142 = rf__T_144_data; // @[riscvSingle.scala 632:26:@229.4 riscvSingle.scala 633:16:@231.4]
  assign _T_152 = rf__T_154_data; // @[riscvSingle.scala 632:26:@242.4 riscvSingle.scala 633:16:@244.4]
  assign _T_162 = rf__T_164_data; // @[riscvSingle.scala 632:26:@255.4 riscvSingle.scala 633:16:@257.4]
  assign _T_172 = rf__T_174_data; // @[riscvSingle.scala 632:26:@268.4 riscvSingle.scala 633:16:@270.4]
  assign _T_182 = rf__T_184_data; // @[riscvSingle.scala 632:26:@281.4 riscvSingle.scala 633:16:@283.4]
  assign _T_192 = rf__T_194_data; // @[riscvSingle.scala 632:26:@294.4 riscvSingle.scala 633:16:@296.4]
  assign _T_202 = rf__T_204_data; // @[riscvSingle.scala 632:26:@307.4 riscvSingle.scala 633:16:@309.4]
  assign _T_212 = rf__T_214_data; // @[riscvSingle.scala 632:26:@320.4 riscvSingle.scala 633:16:@322.4]
  assign _T_222 = rf__T_224_data; // @[riscvSingle.scala 632:26:@333.4 riscvSingle.scala 633:16:@335.4]
  assign _T_232 = rf__T_234_data; // @[riscvSingle.scala 632:26:@346.4 riscvSingle.scala 633:16:@348.4]
  assign _T_242 = rf__T_244_data; // @[riscvSingle.scala 632:26:@359.4 riscvSingle.scala 633:16:@361.4]
  assign _T_252 = rf__T_254_data; // @[riscvSingle.scala 632:26:@372.4 riscvSingle.scala 633:16:@374.4]
  assign _T_262 = rf__T_264_data; // @[riscvSingle.scala 632:26:@385.4 riscvSingle.scala 633:16:@387.4]
  assign _T_272 = rf__T_274_data; // @[riscvSingle.scala 632:26:@398.4 riscvSingle.scala 633:16:@400.4]
  assign _T_282 = rf__T_284_data; // @[riscvSingle.scala 632:26:@411.4 riscvSingle.scala 633:16:@413.4]
  assign _T_292 = rf__T_294_data; // @[riscvSingle.scala 632:26:@424.4 riscvSingle.scala 633:16:@426.4]
  assign _T_302 = rf__T_304_data; // @[riscvSingle.scala 632:26:@437.4 riscvSingle.scala 633:16:@439.4]
  assign _T_312 = rf__T_314_data; // @[riscvSingle.scala 632:26:@450.4 riscvSingle.scala 633:16:@452.4]
  assign _T_322 = rf__T_324_data; // @[riscvSingle.scala 632:26:@463.4 riscvSingle.scala 633:16:@465.4]
  assign _T_332 = rf__T_334_data; // @[riscvSingle.scala 632:26:@476.4 riscvSingle.scala 633:16:@478.4]
  assign _T_342 = rf__T_344_data; // @[riscvSingle.scala 632:26:@489.4 riscvSingle.scala 633:16:@491.4]
  assign _T_352 = rf__T_354_data; // @[riscvSingle.scala 632:26:@502.4 riscvSingle.scala 633:16:@504.4]
  assign _T_362 = rf__T_364_data; // @[riscvSingle.scala 632:26:@515.4 riscvSingle.scala 633:16:@517.4]
  assign io_rd1 = _T_37 ? rf__T_39_data : rf__T_40_data; // @[riscvSingle.scala 618:12:@92.4]
  assign io_rd2 = _T_43 ? rf__T_45_data : rf__T_46_data; // @[riscvSingle.scala 619:12:@98.4]
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
      rf[rf__T_32_addr] <= rf__T_32_data; // @[riscvSingle.scala 609:17:@72.4]
    end
    if(rf__T_34_en & rf__T_34_mask) begin
      rf[rf__T_34_addr] <= rf__T_34_data; // @[riscvSingle.scala 609:17:@72.4]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n"); // @[riscvSingle.scala 630:11:@110.6]
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
          $fwrite(32'h80000002,"| rf(0) = "); // @[riscvSingle.scala 634:15:@118.6]
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
          $fwrite(32'h80000002,"%d\n",_T_52); // @[riscvSingle.scala 635:15:@123.6]
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
          $fwrite(32'h80000002,"| rf(1) = "); // @[riscvSingle.scala 634:15:@131.6]
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
          $fwrite(32'h80000002,"%d\n",_T_62); // @[riscvSingle.scala 635:15:@136.6]
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
          $fwrite(32'h80000002,"| rf(2) = "); // @[riscvSingle.scala 634:15:@144.6]
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
          $fwrite(32'h80000002,"%d\n",_T_72); // @[riscvSingle.scala 635:15:@149.6]
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
          $fwrite(32'h80000002,"| rf(3) = "); // @[riscvSingle.scala 634:15:@157.6]
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
          $fwrite(32'h80000002,"%d\n",_T_82); // @[riscvSingle.scala 635:15:@162.6]
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
          $fwrite(32'h80000002,"| rf(4) = "); // @[riscvSingle.scala 634:15:@170.6]
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
          $fwrite(32'h80000002,"%d\n",_T_92); // @[riscvSingle.scala 635:15:@175.6]
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
          $fwrite(32'h80000002,"| rf(5) = "); // @[riscvSingle.scala 634:15:@183.6]
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
          $fwrite(32'h80000002,"%d\n",_T_102); // @[riscvSingle.scala 635:15:@188.6]
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
          $fwrite(32'h80000002,"| rf(6) = "); // @[riscvSingle.scala 634:15:@196.6]
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
          $fwrite(32'h80000002,"%d\n",_T_112); // @[riscvSingle.scala 635:15:@201.6]
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
          $fwrite(32'h80000002,"| rf(7) = "); // @[riscvSingle.scala 634:15:@209.6]
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
          $fwrite(32'h80000002,"%d\n",_T_122); // @[riscvSingle.scala 635:15:@214.6]
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
          $fwrite(32'h80000002,"| rf(8) = "); // @[riscvSingle.scala 634:15:@222.6]
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
          $fwrite(32'h80000002,"%d\n",_T_132); // @[riscvSingle.scala 635:15:@227.6]
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
          $fwrite(32'h80000002,"| rf(9) = "); // @[riscvSingle.scala 634:15:@235.6]
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
          $fwrite(32'h80000002,"%d\n",_T_142); // @[riscvSingle.scala 635:15:@240.6]
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
          $fwrite(32'h80000002,"| rf(10) = "); // @[riscvSingle.scala 634:15:@248.6]
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
          $fwrite(32'h80000002,"%d\n",_T_152); // @[riscvSingle.scala 635:15:@253.6]
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
          $fwrite(32'h80000002,"| rf(11) = "); // @[riscvSingle.scala 634:15:@261.6]
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
          $fwrite(32'h80000002,"%d\n",_T_162); // @[riscvSingle.scala 635:15:@266.6]
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
          $fwrite(32'h80000002,"| rf(12) = "); // @[riscvSingle.scala 634:15:@274.6]
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
          $fwrite(32'h80000002,"%d\n",_T_172); // @[riscvSingle.scala 635:15:@279.6]
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
          $fwrite(32'h80000002,"| rf(13) = "); // @[riscvSingle.scala 634:15:@287.6]
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
          $fwrite(32'h80000002,"%d\n",_T_182); // @[riscvSingle.scala 635:15:@292.6]
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
          $fwrite(32'h80000002,"| rf(14) = "); // @[riscvSingle.scala 634:15:@300.6]
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
          $fwrite(32'h80000002,"%d\n",_T_192); // @[riscvSingle.scala 635:15:@305.6]
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
          $fwrite(32'h80000002,"| rf(15) = "); // @[riscvSingle.scala 634:15:@313.6]
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
          $fwrite(32'h80000002,"%d\n",_T_202); // @[riscvSingle.scala 635:15:@318.6]
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
          $fwrite(32'h80000002,"| rf(16) = "); // @[riscvSingle.scala 634:15:@326.6]
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
          $fwrite(32'h80000002,"%d\n",_T_212); // @[riscvSingle.scala 635:15:@331.6]
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
          $fwrite(32'h80000002,"| rf(17) = "); // @[riscvSingle.scala 634:15:@339.6]
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
          $fwrite(32'h80000002,"%d\n",_T_222); // @[riscvSingle.scala 635:15:@344.6]
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
          $fwrite(32'h80000002,"| rf(18) = "); // @[riscvSingle.scala 634:15:@352.6]
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
          $fwrite(32'h80000002,"%d\n",_T_232); // @[riscvSingle.scala 635:15:@357.6]
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
          $fwrite(32'h80000002,"| rf(19) = "); // @[riscvSingle.scala 634:15:@365.6]
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
          $fwrite(32'h80000002,"%d\n",_T_242); // @[riscvSingle.scala 635:15:@370.6]
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
          $fwrite(32'h80000002,"| rf(20) = "); // @[riscvSingle.scala 634:15:@378.6]
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
          $fwrite(32'h80000002,"%d\n",_T_252); // @[riscvSingle.scala 635:15:@383.6]
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
          $fwrite(32'h80000002,"| rf(21) = "); // @[riscvSingle.scala 634:15:@391.6]
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
          $fwrite(32'h80000002,"%d\n",_T_262); // @[riscvSingle.scala 635:15:@396.6]
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
          $fwrite(32'h80000002,"| rf(22) = "); // @[riscvSingle.scala 634:15:@404.6]
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
          $fwrite(32'h80000002,"%d\n",_T_272); // @[riscvSingle.scala 635:15:@409.6]
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
          $fwrite(32'h80000002,"| rf(23) = "); // @[riscvSingle.scala 634:15:@417.6]
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
          $fwrite(32'h80000002,"%d\n",_T_282); // @[riscvSingle.scala 635:15:@422.6]
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
          $fwrite(32'h80000002,"| rf(24) = "); // @[riscvSingle.scala 634:15:@430.6]
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
          $fwrite(32'h80000002,"%d\n",_T_292); // @[riscvSingle.scala 635:15:@435.6]
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
          $fwrite(32'h80000002,"| rf(25) = "); // @[riscvSingle.scala 634:15:@443.6]
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
          $fwrite(32'h80000002,"%d\n",_T_302); // @[riscvSingle.scala 635:15:@448.6]
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
          $fwrite(32'h80000002,"| rf(26) = "); // @[riscvSingle.scala 634:15:@456.6]
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
          $fwrite(32'h80000002,"%d\n",_T_312); // @[riscvSingle.scala 635:15:@461.6]
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
          $fwrite(32'h80000002,"| rf(27) = "); // @[riscvSingle.scala 634:15:@469.6]
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
          $fwrite(32'h80000002,"%d\n",_T_322); // @[riscvSingle.scala 635:15:@474.6]
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
          $fwrite(32'h80000002,"| rf(28) = "); // @[riscvSingle.scala 634:15:@482.6]
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
          $fwrite(32'h80000002,"%d\n",_T_332); // @[riscvSingle.scala 635:15:@487.6]
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
          $fwrite(32'h80000002,"| rf(29) = "); // @[riscvSingle.scala 634:15:@495.6]
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
          $fwrite(32'h80000002,"%d\n",_T_342); // @[riscvSingle.scala 635:15:@500.6]
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
          $fwrite(32'h80000002,"| rf(30) = "); // @[riscvSingle.scala 634:15:@508.6]
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
          $fwrite(32'h80000002,"%d\n",_T_352); // @[riscvSingle.scala 635:15:@513.6]
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
          $fwrite(32'h80000002,"| rf(31) = "); // @[riscvSingle.scala 634:15:@521.6]
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
          $fwrite(32'h80000002,"%d\n",_T_362); // @[riscvSingle.scala 635:15:@526.6]
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
          $fwrite(32'h80000002,"|___________________________\n"); // @[riscvSingle.scala 637:11:@531.6]
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
  wire  _T_23; // @[riscvSingle.scala 681:23:@605.4]
  wire [31:0] _T_26; // @[riscvSingle.scala 682:23:@608.6]
  wire [32:0] _T_27; // @[riscvSingle.scala 682:21:@609.6]
  wire [31:0] _T_28; // @[riscvSingle.scala 682:21:@610.6]
  wire [31:0] _GEN_16; // @[riscvSingle.scala 682:29:@612.6]
  wire [32:0] _T_30; // @[riscvSingle.scala 682:29:@612.6]
  wire [31:0] _T_31; // @[riscvSingle.scala 682:29:@613.6]
  wire [32:0] _T_32; // @[riscvSingle.scala 684:21:@617.6]
  wire [31:0] _T_33; // @[riscvSingle.scala 684:21:@618.6]
  wire [31:0] sum; // @[riscvSingle.scala 681:35:@607.4]
  wire  _T_35; // @[riscvSingle.scala 687:25:@621.4]
  wire [31:0] _T_36; // @[riscvSingle.scala 688:24:@623.6]
  wire  _T_38; // @[riscvSingle.scala 689:31:@627.6]
  wire [31:0] _T_39; // @[riscvSingle.scala 690:24:@629.8]
  wire  _T_41; // @[riscvSingle.scala 691:31:@633.8]
  wire  _T_43; // @[riscvSingle.scala 693:31:@638.10]
  wire  _T_44; // @[riscvSingle.scala 694:22:@640.12]
  wire  _T_46; // @[riscvSingle.scala 694:22:@641.12]
  wire [4:0] _T_47; // @[riscvSingle.scala 695:35:@643.14]
  wire [62:0] _GEN_17; // @[riscvSingle.scala 695:28:@644.14]
  wire [62:0] _T_48; // @[riscvSingle.scala 695:28:@644.14]
  wire [18:0] _T_49; // @[riscvSingle.scala 697:35:@648.14]
  wire [524318:0] _GEN_18; // @[riscvSingle.scala 697:28:@649.14]
  wire [524318:0] _T_50; // @[riscvSingle.scala 697:28:@649.14]
  wire [524318:0] _GEN_1; // @[riscvSingle.scala 694:28:@642.12]
  wire  _T_52; // @[riscvSingle.scala 699:31:@654.12]
  wire [31:0] _T_57; // @[riscvSingle.scala 701:28:@660.16]
  wire [31:0] _T_59; // @[riscvSingle.scala 703:28:@665.16]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 700:28:@658.14]
  wire  _T_61; // @[riscvSingle.scala 705:31:@670.14]
  wire [31:0] _T_62; // @[riscvSingle.scala 706:24:@672.16]
  wire  _T_64; // @[riscvSingle.scala 707:31:@676.16]
  wire  _T_73; // @[riscvSingle.scala 713:30:@692.18]
  wire [63:0] _T_74; // @[riscvSingle.scala 714:24:@694.20]
  wire  _T_76; // @[riscvSingle.scala 715:30:@698.20]
  wire [31:0] _T_77; // @[riscvSingle.scala 716:24:@700.22]
  wire  _T_79; // @[riscvSingle.scala 717:30:@704.22]
  wire  _T_80; // @[riscvSingle.scala 718:18:@706.24]
  wire  _T_81; // @[riscvSingle.scala 718:23:@707.24]
  wire  _T_83; // @[riscvSingle.scala 718:23:@708.24]
  wire  _GEN_5; // @[riscvSingle.scala 717:45:@705.22]
  wire [31:0] _GEN_6; // @[riscvSingle.scala 715:44:@699.20]
  wire [63:0] _GEN_7; // @[riscvSingle.scala 713:45:@693.18]
  wire [63:0] _GEN_8; // @[riscvSingle.scala 707:46:@677.16]
  wire [63:0] _GEN_9; // @[riscvSingle.scala 705:46:@671.14]
  wire [63:0] _GEN_10; // @[riscvSingle.scala 699:46:@655.12]
  wire [524318:0] _GEN_11; // @[riscvSingle.scala 693:46:@639.10]
  wire [524318:0] _GEN_12; // @[riscvSingle.scala 691:46:@634.8]
  wire [524318:0] _GEN_13; // @[riscvSingle.scala 689:46:@628.6]
  wire [524318:0] _GEN_14; // @[riscvSingle.scala 687:40:@622.4]
  wire [32:0] _T_87; // @[riscvSingle.scala 727:15:@719.4]
  wire [32:0] _T_88; // @[riscvSingle.scala 727:15:@720.4]
  wire [31:0] _T_89; // @[riscvSingle.scala 727:15:@721.4]
  wire  _T_98; // @[riscvSingle.scala 745:11:@742.4]
  assign _T_23 = io_aluControl[3]; // @[riscvSingle.scala 681:23:@605.4]
  assign _T_26 = ~ io_b; // @[riscvSingle.scala 682:23:@608.6]
  assign _T_27 = io_a + _T_26; // @[riscvSingle.scala 682:21:@609.6]
  assign _T_28 = io_a + _T_26; // @[riscvSingle.scala 682:21:@610.6]
  assign _GEN_16 = {{31'd0}, _T_23}; // @[riscvSingle.scala 682:29:@612.6]
  assign _T_30 = _T_28 + _GEN_16; // @[riscvSingle.scala 682:29:@612.6]
  assign _T_31 = _T_28 + _GEN_16; // @[riscvSingle.scala 682:29:@613.6]
  assign _T_32 = io_a + io_b; // @[riscvSingle.scala 684:21:@617.6]
  assign _T_33 = io_a + io_b; // @[riscvSingle.scala 684:21:@618.6]
  assign sum = _T_23 ? _T_31 : _T_33; // @[riscvSingle.scala 681:35:@607.4]
  assign _T_35 = io_aluControl == 4'h0; // @[riscvSingle.scala 687:25:@621.4]
  assign _T_36 = io_a & io_b; // @[riscvSingle.scala 688:24:@623.6]
  assign _T_38 = io_aluControl == 4'h1; // @[riscvSingle.scala 689:31:@627.6]
  assign _T_39 = io_a | io_b; // @[riscvSingle.scala 690:24:@629.8]
  assign _T_41 = io_aluControl == 4'h2; // @[riscvSingle.scala 691:31:@633.8]
  assign _T_43 = io_aluControl == 4'h3; // @[riscvSingle.scala 693:31:@638.10]
  assign _T_44 = ~ io_imm; // @[riscvSingle.scala 694:22:@640.12]
  assign _T_46 = _T_44 == 1'h0; // @[riscvSingle.scala 694:22:@641.12]
  assign _T_47 = io_b[4:0]; // @[riscvSingle.scala 695:35:@643.14]
  assign _GEN_17 = {{31'd0}, io_a}; // @[riscvSingle.scala 695:28:@644.14]
  assign _T_48 = _GEN_17 << _T_47; // @[riscvSingle.scala 695:28:@644.14]
  assign _T_49 = io_b[18:0]; // @[riscvSingle.scala 697:35:@648.14]
  assign _GEN_18 = {{524287'd0}, io_a}; // @[riscvSingle.scala 697:28:@649.14]
  assign _T_50 = _GEN_18 << _T_49; // @[riscvSingle.scala 697:28:@649.14]
  assign _GEN_1 = _T_46 ? {{524256'd0}, _T_48} : _T_50; // @[riscvSingle.scala 694:28:@642.12]
  assign _T_52 = io_aluControl == 4'h4; // @[riscvSingle.scala 699:31:@654.12]
  assign _T_57 = io_a >> _T_47; // @[riscvSingle.scala 701:28:@660.16]
  assign _T_59 = io_a >> _T_49; // @[riscvSingle.scala 703:28:@665.16]
  assign _GEN_2 = _T_46 ? _T_57 : _T_59; // @[riscvSingle.scala 700:28:@658.14]
  assign _T_61 = io_aluControl == 4'h6; // @[riscvSingle.scala 705:31:@670.14]
  assign _T_62 = io_a ^ io_b; // @[riscvSingle.scala 706:24:@672.16]
  assign _T_64 = io_aluControl == 4'h7; // @[riscvSingle.scala 707:31:@676.16]
  assign _T_73 = io_aluControl == 4'h8; // @[riscvSingle.scala 713:30:@692.18]
  assign _T_74 = io_a * io_b; // @[riscvSingle.scala 714:24:@694.20]
  assign _T_76 = io_aluControl == 4'ha; // @[riscvSingle.scala 715:30:@698.20]
  assign _T_77 = io_a / io_b; // @[riscvSingle.scala 716:24:@700.22]
  assign _T_79 = io_aluControl == 4'h9; // @[riscvSingle.scala 717:30:@704.22]
  assign _T_80 = sum[31]; // @[riscvSingle.scala 718:18:@706.24]
  assign _T_81 = ~ _T_80; // @[riscvSingle.scala 718:23:@707.24]
  assign _T_83 = _T_81 == 1'h0; // @[riscvSingle.scala 718:23:@708.24]
  assign _GEN_5 = _T_79 ? _T_83 : 1'h0; // @[riscvSingle.scala 717:45:@705.22]
  assign _GEN_6 = _T_76 ? _T_77 : {{31'd0}, _GEN_5}; // @[riscvSingle.scala 715:44:@699.20]
  assign _GEN_7 = _T_73 ? _T_74 : {{32'd0}, _GEN_6}; // @[riscvSingle.scala 713:45:@693.18]
  assign _GEN_8 = _T_64 ? {{32'd0}, _GEN_2} : _GEN_7; // @[riscvSingle.scala 707:46:@677.16]
  assign _GEN_9 = _T_61 ? {{32'd0}, _T_62} : _GEN_8; // @[riscvSingle.scala 705:46:@671.14]
  assign _GEN_10 = _T_52 ? {{32'd0}, _GEN_2} : _GEN_9; // @[riscvSingle.scala 699:46:@655.12]
  assign _GEN_11 = _T_43 ? _GEN_1 : {{524255'd0}, _GEN_10}; // @[riscvSingle.scala 693:46:@639.10]
  assign _GEN_12 = _T_41 ? {{524287'd0}, sum} : _GEN_11; // @[riscvSingle.scala 691:46:@634.8]
  assign _GEN_13 = _T_38 ? {{524287'd0}, _T_39} : _GEN_12; // @[riscvSingle.scala 689:46:@628.6]
  assign _GEN_14 = _T_35 ? {{524287'd0}, _T_36} : _GEN_13; // @[riscvSingle.scala 687:40:@622.4]
  assign _T_87 = io_a - io_b; // @[riscvSingle.scala 727:15:@719.4]
  assign _T_88 = $unsigned(_T_87); // @[riscvSingle.scala 727:15:@720.4]
  assign _T_89 = _T_88[31:0]; // @[riscvSingle.scala 727:15:@721.4]
  assign _T_98 = reset == 1'h0; // @[riscvSingle.scala 745:11:@742.4]
  assign io_out = _GEN_14[31:0]; // @[riscvSingle.scala 688:16:@624.6 riscvSingle.scala 690:16:@630.8 riscvSingle.scala 692:16:@635.10 riscvSingle.scala 695:20:@645.14 riscvSingle.scala 697:20:@650.14 riscvSingle.scala 701:20:@661.16 riscvSingle.scala 703:20:@666.16 riscvSingle.scala 706:16:@673.16 riscvSingle.scala 709:20:@683.20 riscvSingle.scala 711:20:@688.20 riscvSingle.scala 714:16:@695.20 riscvSingle.scala 716:16:@701.22 riscvSingle.scala 719:20:@710.26 riscvSingle.scala 721:20:@713.26 riscvSingle.scala 724:16:@717.24]
  assign io_zero = _T_89 == 32'h0; // @[riscvSingle.scala 729:17:@724.6 riscvSingle.scala 731:17:@727.6]
  assign io_lt = io_a < io_b; // @[riscvSingle.scala 734:11:@730.4]
  assign io_gt = io_a > io_b; // @[riscvSingle.scala 735:11:@732.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_98) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|alu Module:\n|  a           : 0x%x\n|  b           : 0x%x\n|  sum         : 0x%x\n|  out         : 0x%x\n|  aluControl  : b%b\n|  zero        : b%b\n|  lt          : b%b\n|  gt          : b%b\n|___________________________\n",io_a,io_b,sum,io_out,io_aluControl,io_zero,io_lt,io_gt); // @[riscvSingle.scala 745:11:@744.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module datapath( // @[:@747.2]
  input         clock, // @[:@748.4]
  input         reset, // @[:@749.4]
  input  [2:0]  io_regSrc, // @[:@750.4]
  input         io_regWrite, // @[:@750.4]
  input  [1:0]  io_immSrc, // @[:@750.4]
  input         io_aluSrc, // @[:@750.4]
  input         io_pcSrc, // @[:@750.4]
  input  [3:0]  io_aluControl, // @[:@750.4]
  input         io_memToReg, // @[:@750.4]
  input  [31:0] io_instr, // @[:@750.4]
  input  [31:0] io_readData, // @[:@750.4]
  input         io_branchSrc, // @[:@750.4]
  output [31:0] io_pc, // @[:@750.4]
  output [31:0] io_dataAdd, // @[:@750.4]
  output [31:0] io_writeData, // @[:@750.4]
  output        io_zero, // @[:@750.4]
  output        io_lt, // @[:@750.4]
  output        io_gt // @[:@750.4]
);
  wire  ext1_clock; // @[riscvSingle.scala 476:22:@753.4]
  wire  ext1_reset; // @[riscvSingle.scala 476:22:@753.4]
  wire [11:0] ext1_io_instr12; // @[riscvSingle.scala 476:22:@753.4]
  wire [19:0] ext1_io_instr20; // @[riscvSingle.scala 476:22:@753.4]
  wire [1:0] ext1_io_immSrc; // @[riscvSingle.scala 476:22:@753.4]
  wire [31:0] ext1_io_extImm; // @[riscvSingle.scala 476:22:@753.4]
  wire  rf_clock; // @[riscvSingle.scala 477:20:@756.4]
  wire  rf_reset; // @[riscvSingle.scala 477:20:@756.4]
  wire  rf_io_we3; // @[riscvSingle.scala 477:20:@756.4]
  wire [4:0] rf_io_ra1; // @[riscvSingle.scala 477:20:@756.4]
  wire [4:0] rf_io_ra2; // @[riscvSingle.scala 477:20:@756.4]
  wire [4:0] rf_io_wa3; // @[riscvSingle.scala 477:20:@756.4]
  wire [31:0] rf_io_wd3; // @[riscvSingle.scala 477:20:@756.4]
  wire [31:0] rf_io_r31; // @[riscvSingle.scala 477:20:@756.4]
  wire [31:0] rf_io_rd1; // @[riscvSingle.scala 477:20:@756.4]
  wire [31:0] rf_io_rd2; // @[riscvSingle.scala 477:20:@756.4]
  wire  ext2_clock; // @[riscvSingle.scala 478:22:@759.4]
  wire  ext2_reset; // @[riscvSingle.scala 478:22:@759.4]
  wire [11:0] ext2_io_instr12; // @[riscvSingle.scala 478:22:@759.4]
  wire [19:0] ext2_io_instr20; // @[riscvSingle.scala 478:22:@759.4]
  wire [1:0] ext2_io_immSrc; // @[riscvSingle.scala 478:22:@759.4]
  wire [31:0] ext2_io_extImm; // @[riscvSingle.scala 478:22:@759.4]
  wire  alu_clock; // @[riscvSingle.scala 479:21:@762.4]
  wire  alu_reset; // @[riscvSingle.scala 479:21:@762.4]
  wire [31:0] alu_io_a; // @[riscvSingle.scala 479:21:@762.4]
  wire [31:0] alu_io_b; // @[riscvSingle.scala 479:21:@762.4]
  wire [3:0] alu_io_aluControl; // @[riscvSingle.scala 479:21:@762.4]
  wire  alu_io_imm; // @[riscvSingle.scala 479:21:@762.4]
  wire [31:0] alu_io_out; // @[riscvSingle.scala 479:21:@762.4]
  wire  alu_io_zero; // @[riscvSingle.scala 479:21:@762.4]
  wire  alu_io_lt; // @[riscvSingle.scala 479:21:@762.4]
  wire  alu_io_gt; // @[riscvSingle.scala 479:21:@762.4]
  wire  _T_52; // @[riscvSingle.scala 494:30:@777.4]
  wire  _T_53; // @[riscvSingle.scala 494:44:@778.4]
  wire [5:0] _T_54; // @[riscvSingle.scala 494:57:@779.4]
  wire [3:0] _T_55; // @[riscvSingle.scala 494:74:@780.4]
  wire [9:0] _T_56; // @[Cat.scala 30:58:@781.4]
  wire [1:0] _T_57; // @[Cat.scala 30:58:@782.4]
  wire [7:0] _T_60; // @[riscvSingle.scala 495:42:@786.4]
  wire  _T_61; // @[riscvSingle.scala 495:59:@787.4]
  wire [9:0] _T_62; // @[riscvSingle.scala 495:73:@788.4]
  wire [19:0] _T_65; // @[Cat.scala 30:58:@791.4]
  wire [19:0] _T_66; // @[riscvSingle.scala 496:27:@793.4]
  wire [31:0] auiImm; // @[Cat.scala 30:58:@794.4]
  wire  _T_70; // @[riscvSingle.scala 504:28:@804.4]
  wire  _T_72; // @[riscvSingle.scala 504:28:@805.4]
  wire [31:0] extImm; // @[riscvSingle.scala 504:18:@806.4]
  reg [31:0] pcReg; // @[riscvSingle.scala 508:26:@808.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_81; // @[riscvSingle.scala 513:22:@813.4]
  wire [31:0] pcPlus4; // @[riscvSingle.scala 513:22:@814.4]
  wire [32:0] _T_84; // @[riscvSingle.scala 514:24:@816.4]
  wire [31:0] branchExtImm; // @[riscvSingle.scala 485:28:@770.4 riscvSingle.scala 503:18:@803.4]
  wire [32:0] _T_86; // @[riscvSingle.scala 515:30:@819.4]
  wire [31:0] pcBranch; // @[riscvSingle.scala 515:30:@820.4]
  wire  _T_88; // @[riscvSingle.scala 516:32:@822.4]
  wire  _T_90; // @[riscvSingle.scala 516:32:@823.4]
  wire [31:0] pcNext; // @[riscvSingle.scala 516:18:@824.4]
  wire [6:0] _T_92; // @[riscvSingle.scala 522:32:@828.4]
  wire [4:0] _T_93; // @[riscvSingle.scala 522:49:@829.4]
  wire [11:0] _T_94; // @[Cat.scala 30:58:@830.4]
  wire  _T_95; // @[riscvSingle.scala 523:31:@832.4]
  wire  _T_97; // @[riscvSingle.scala 523:31:@833.4]
  wire [31:0] memImmStore; // @[riscvSingle.scala 480:27:@765.4 riscvSingle.scala 522:17:@831.4]
  wire [31:0] memImm; // @[riscvSingle.scala 523:18:@834.4]
  wire [32:0] _T_99; // @[riscvSingle.scala 525:29:@837.4]
  wire [31:0] result; // @[riscvSingle.scala 528:18:@842.4]
  wire  _T_105; // @[riscvSingle.scala 531:25:@844.4]
  wire  _T_106; // @[riscvSingle.scala 531:29:@845.4]
  wire  _T_108; // @[riscvSingle.scala 531:29:@846.4]
  wire [4:0] _T_110; // @[riscvSingle.scala 531:55:@847.4]
  wire  _T_112; // @[riscvSingle.scala 532:25:@850.4]
  wire  _T_113; // @[riscvSingle.scala 532:29:@851.4]
  wire  _T_115; // @[riscvSingle.scala 532:29:@852.4]
  wire [4:0] _T_117; // @[riscvSingle.scala 532:59:@854.4]
  wire  _T_119; // @[riscvSingle.scala 533:25:@857.4]
  wire  _T_120; // @[riscvSingle.scala 533:29:@858.4]
  wire  _T_122; // @[riscvSingle.scala 533:29:@859.4]
  wire [31:0] ra4; // @[riscvSingle.scala 533:15:@860.4]
  wire  _T_125; // @[riscvSingle.scala 544:27:@870.4]
  wire  _T_127; // @[riscvSingle.scala 544:27:@871.4]
  wire  _T_135; // @[riscvSingle.scala 568:11:@898.4]
  wire [31:0] datapathMessage_aluOut; // @[riscvSingle.scala 475:31:@752.4 riscvSingle.scala 558:28:@887.4]
  wire [11:0] jumpImm; // @[riscvSingle.scala 483:23:@768.4 riscvSingle.scala 495:13:@792.4]
  extend ext1 ( // @[riscvSingle.scala 476:22:@753.4]
    .clock(ext1_clock),
    .reset(ext1_reset),
    .io_instr12(ext1_io_instr12),
    .io_instr20(ext1_io_instr20),
    .io_immSrc(ext1_io_immSrc),
    .io_extImm(ext1_io_extImm)
  );
  regfile rf ( // @[riscvSingle.scala 477:20:@756.4]
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
  extend ext2 ( // @[riscvSingle.scala 478:22:@759.4]
    .clock(ext2_clock),
    .reset(ext2_reset),
    .io_instr12(ext2_io_instr12),
    .io_instr20(ext2_io_instr20),
    .io_immSrc(ext2_io_immSrc),
    .io_extImm(ext2_io_extImm)
  );
  alu alu ( // @[riscvSingle.scala 479:21:@762.4]
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
  assign _T_52 = io_instr[31]; // @[riscvSingle.scala 494:30:@777.4]
  assign _T_53 = io_instr[7]; // @[riscvSingle.scala 494:44:@778.4]
  assign _T_54 = io_instr[30:25]; // @[riscvSingle.scala 494:57:@779.4]
  assign _T_55 = io_instr[11:8]; // @[riscvSingle.scala 494:74:@780.4]
  assign _T_56 = {_T_54,_T_55}; // @[Cat.scala 30:58:@781.4]
  assign _T_57 = {_T_52,_T_53}; // @[Cat.scala 30:58:@782.4]
  assign _T_60 = io_instr[19:12]; // @[riscvSingle.scala 495:42:@786.4]
  assign _T_61 = io_instr[20]; // @[riscvSingle.scala 495:59:@787.4]
  assign _T_62 = io_instr[30:21]; // @[riscvSingle.scala 495:73:@788.4]
  assign _T_65 = {_T_52,_T_60,_T_61,_T_62}; // @[Cat.scala 30:58:@791.4]
  assign _T_66 = io_instr[31:12]; // @[riscvSingle.scala 496:27:@793.4]
  assign auiImm = {_T_66,12'h0}; // @[Cat.scala 30:58:@794.4]
  assign _T_70 = ~ io_pcSrc; // @[riscvSingle.scala 504:28:@804.4]
  assign _T_72 = _T_70 == 1'h0; // @[riscvSingle.scala 504:28:@805.4]
  assign extImm = _T_72 ? auiImm : ext2_io_extImm; // @[riscvSingle.scala 504:18:@806.4]
  assign _T_81 = pcReg + 32'h4; // @[riscvSingle.scala 513:22:@813.4]
  assign pcPlus4 = pcReg + 32'h4; // @[riscvSingle.scala 513:22:@814.4]
  assign _T_84 = pcPlus4 + 32'h4; // @[riscvSingle.scala 514:24:@816.4]
  assign branchExtImm = ext1_io_extImm; // @[riscvSingle.scala 485:28:@770.4 riscvSingle.scala 503:18:@803.4]
  assign _T_86 = branchExtImm + pcReg; // @[riscvSingle.scala 515:30:@819.4]
  assign pcBranch = branchExtImm + pcReg; // @[riscvSingle.scala 515:30:@820.4]
  assign _T_88 = ~ io_branchSrc; // @[riscvSingle.scala 516:32:@822.4]
  assign _T_90 = _T_88 == 1'h0; // @[riscvSingle.scala 516:32:@823.4]
  assign pcNext = _T_90 ? pcBranch : pcPlus4; // @[riscvSingle.scala 516:18:@824.4]
  assign _T_92 = io_instr[31:25]; // @[riscvSingle.scala 522:32:@828.4]
  assign _T_93 = io_instr[11:7]; // @[riscvSingle.scala 522:49:@829.4]
  assign _T_94 = {_T_92,_T_93}; // @[Cat.scala 30:58:@830.4]
  assign _T_95 = ~ io_memToReg; // @[riscvSingle.scala 523:31:@832.4]
  assign _T_97 = _T_95 == 1'h0; // @[riscvSingle.scala 523:31:@833.4]
  assign memImmStore = {{20'd0}, _T_94}; // @[riscvSingle.scala 480:27:@765.4 riscvSingle.scala 522:17:@831.4]
  assign memImm = _T_97 ? extImm : memImmStore; // @[riscvSingle.scala 523:18:@834.4]
  assign _T_99 = rf_io_rd1 + memImm; // @[riscvSingle.scala 525:29:@837.4]
  assign result = _T_97 ? io_readData : alu_io_out; // @[riscvSingle.scala 528:18:@842.4]
  assign _T_105 = io_regSrc[0]; // @[riscvSingle.scala 531:25:@844.4]
  assign _T_106 = ~ _T_105; // @[riscvSingle.scala 531:29:@845.4]
  assign _T_108 = _T_106 == 1'h0; // @[riscvSingle.scala 531:29:@846.4]
  assign _T_110 = io_instr[19:15]; // @[riscvSingle.scala 531:55:@847.4]
  assign _T_112 = io_regSrc[1]; // @[riscvSingle.scala 532:25:@850.4]
  assign _T_113 = ~ _T_112; // @[riscvSingle.scala 532:29:@851.4]
  assign _T_115 = _T_113 == 1'h0; // @[riscvSingle.scala 532:29:@852.4]
  assign _T_117 = io_instr[24:20]; // @[riscvSingle.scala 532:59:@854.4]
  assign _T_119 = io_regSrc[2]; // @[riscvSingle.scala 533:25:@857.4]
  assign _T_120 = ~ _T_119; // @[riscvSingle.scala 533:29:@858.4]
  assign _T_122 = _T_120 == 1'h0; // @[riscvSingle.scala 533:29:@859.4]
  assign ra4 = _T_122 ? pcPlus4 : result; // @[riscvSingle.scala 533:15:@860.4]
  assign _T_125 = ~ io_aluSrc; // @[riscvSingle.scala 544:27:@870.4]
  assign _T_127 = _T_125 == 1'h0; // @[riscvSingle.scala 544:27:@871.4]
  assign _T_135 = reset == 1'h0; // @[riscvSingle.scala 568:11:@898.4]
  assign datapathMessage_aluOut = alu_io_out; // @[riscvSingle.scala 475:31:@752.4 riscvSingle.scala 558:28:@887.4]
  assign jumpImm = _T_65[11:0]; // @[riscvSingle.scala 483:23:@768.4 riscvSingle.scala 495:13:@792.4]
  assign io_pc = pcReg; // @[riscvSingle.scala 518:11:@827.4]
  assign io_dataAdd = rf_io_rd1 + memImm; // @[riscvSingle.scala 525:16:@839.4]
  assign io_writeData = rf_io_rd2; // @[riscvSingle.scala 541:18:@869.4]
  assign io_zero = alu_io_zero; // @[riscvSingle.scala 551:13:@881.4]
  assign io_lt = alu_io_lt; // @[riscvSingle.scala 552:11:@882.4]
  assign io_gt = alu_io_gt; // @[riscvSingle.scala 553:11:@883.4]
  assign ext1_clock = clock; // @[:@754.4]
  assign ext1_reset = reset; // @[:@755.4]
  assign ext1_io_instr12 = {_T_57,_T_56}; // @[riscvSingle.scala 497:21:@796.4]
  assign ext1_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 498:21:@797.4]
  assign ext1_io_immSrc = io_immSrc; // @[riscvSingle.scala 499:20:@798.4]
  assign rf_clock = clock; // @[:@757.4]
  assign rf_reset = reset; // @[:@758.4]
  assign rf_io_we3 = io_regWrite; // @[riscvSingle.scala 535:15:@862.4]
  assign rf_io_ra1 = _T_108 ? 5'h1f : _T_110; // @[riscvSingle.scala 536:15:@863.4]
  assign rf_io_ra2 = _T_115 ? _T_93 : _T_117; // @[riscvSingle.scala 537:15:@864.4]
  assign rf_io_wa3 = io_instr[11:7]; // @[riscvSingle.scala 538:15:@866.4]
  assign rf_io_wd3 = _T_122 ? pcPlus4 : result; // @[riscvSingle.scala 539:15:@867.4]
  assign rf_io_r31 = pcPlus4 + 32'h4; // @[riscvSingle.scala 540:15:@868.4]
  assign ext2_clock = clock; // @[:@760.4]
  assign ext2_reset = reset; // @[:@761.4]
  assign ext2_io_instr12 = io_instr[31:20]; // @[riscvSingle.scala 500:21:@800.4]
  assign ext2_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 501:21:@801.4]
  assign ext2_io_immSrc = io_immSrc; // @[riscvSingle.scala 502:20:@802.4]
  assign alu_clock = clock; // @[:@763.4]
  assign alu_reset = reset; // @[:@764.4]
  assign alu_io_a = _T_72 ? pcPlus4 : rf_io_rd1; // @[riscvSingle.scala 547:14:@877.4]
  assign alu_io_b = _T_127 ? extImm : rf_io_rd2; // @[riscvSingle.scala 548:14:@878.4]
  assign alu_io_aluControl = io_aluControl; // @[riscvSingle.scala 549:23:@879.4]
  assign alu_io_imm = io_aluSrc; // @[riscvSingle.scala 550:16:@880.4]
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
          $fwrite(32'h80000002,"\n\n\n___________________________\n|datapath Module:\n|  inst            : 0x%x\n|  memToReg        : b%b\n|  readData        : 0x%x\n|  aluOut          : 0x%x\n|  result          : 0x%x\n|  pcNext          : 0x%x\n|  branchExtImm    : 0x%x\n|  extImm          : b%x\n|  pcBranch        : 0x%x\n|  pcPlus4         : 0x%x\n|  branchSrc       : b%b\n|  ra4             : 0x%x\n|___________________________\n",io_instr,io_memToReg,io_readData,datapathMessage_aluOut,result,pcNext,branchExtImm,extImm,pcBranch,pcPlus4,io_branchSrc,ra4); // @[riscvSingle.scala 568:11:@900.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module decoder( // @[:@903.2]
  input        clock, // @[:@904.4]
  input        reset, // @[:@905.4]
  input  [6:0] io_opcode, // @[:@906.4]
  input  [6:0] io_funct7, // @[:@906.4]
  input  [2:0] io_funct3, // @[:@906.4]
  output [2:0] io_regSrc, // @[:@906.4]
  output       io_regW, // @[:@906.4]
  output [1:0] io_immSrc, // @[:@906.4]
  output       io_aluSrc, // @[:@906.4]
  output       io_pcSrc, // @[:@906.4]
  output [3:0] io_aluControl, // @[:@906.4]
  output       io_memW, // @[:@906.4]
  output       io_memToReg, // @[:@906.4]
  output       io_branchSrc, // @[:@906.4]
  input        io_zero, // @[:@906.4]
  input        io_lt, // @[:@906.4]
  input        io_gt // @[:@906.4]
);
  wire  _T_39; // @[riscvSingle.scala 247:20:@909.4]
  wire  _T_49; // @[riscvSingle.scala 257:24:@919.6]
  wire  _T_51; // @[riscvSingle.scala 258:28:@921.8]
  wire  _T_54; // @[riscvSingle.scala 260:34:@926.10]
  wire  _T_57; // @[riscvSingle.scala 262:34:@931.12]
  wire  _T_60; // @[riscvSingle.scala 264:34:@936.14]
  wire  _T_63; // @[riscvSingle.scala 266:34:@941.16]
  wire  _T_66; // @[riscvSingle.scala 268:34:@946.18]
  wire  _T_69; // @[riscvSingle.scala 270:34:@951.20]
  wire [2:0] _GEN_1; // @[riscvSingle.scala 268:48:@947.18]
  wire [2:0] _GEN_2; // @[riscvSingle.scala 266:48:@942.16]
  wire [2:0] _GEN_3; // @[riscvSingle.scala 264:48:@937.14]
  wire [3:0] _GEN_4; // @[riscvSingle.scala 262:48:@932.12]
  wire [3:0] _GEN_5; // @[riscvSingle.scala 260:48:@927.10]
  wire [3:0] _GEN_6; // @[riscvSingle.scala 258:42:@922.8]
  wire  _T_73; // @[riscvSingle.scala 275:30:@960.8]
  wire [3:0] _GEN_7; // @[riscvSingle.scala 278:47:@968.12]
  wire [3:0] _GEN_8; // @[riscvSingle.scala 276:41:@963.10]
  wire  _T_82; // @[riscvSingle.scala 283:30:@976.10]
  wire [2:0] _GEN_9; // @[riscvSingle.scala 283:47:@977.10]
  wire [3:0] _GEN_10; // @[riscvSingle.scala 275:47:@961.8]
  wire [3:0] _GEN_11; // @[riscvSingle.scala 257:42:@920.6]
  wire  _T_86; // @[riscvSingle.scala 288:26:@985.6]
  wire  _T_97; // @[riscvSingle.scala 298:26:@998.8]
  wire  _T_129; // @[riscvSingle.scala 325:26:@1047.10]
  wire  _T_140; // @[riscvSingle.scala 335:26:@1060.12]
  wire  _T_151; // @[riscvSingle.scala 345:26:@1073.14]
  wire  _T_164; // @[riscvSingle.scala 355:37:@1085.16]
  wire  _T_169; // @[riscvSingle.scala 357:53:@1091.18]
  wire  _T_170; // @[riscvSingle.scala 357:43:@1092.18]
  wire  _T_176; // @[riscvSingle.scala 359:43:@1099.20]
  wire  _T_182; // @[riscvSingle.scala 361:43:@1106.22]
  wire  _T_188; // @[riscvSingle.scala 363:43:@1113.24]
  wire  _T_191; // @[riscvSingle.scala 365:30:@1118.26]
  wire  _T_194; // @[riscvSingle.scala 365:43:@1120.26]
  wire  _GEN_20; // @[riscvSingle.scala 363:60:@1114.24]
  wire  _GEN_21; // @[riscvSingle.scala 361:60:@1107.22]
  wire  _GEN_22; // @[riscvSingle.scala 359:60:@1100.20]
  wire  _GEN_23; // @[riscvSingle.scala 357:62:@1093.18]
  wire  _GEN_24; // @[riscvSingle.scala 355:55:@1086.16]
  wire  _T_198; // @[riscvSingle.scala 371:26:@1129.16]
  wire [2:0] _GEN_26; // @[riscvSingle.scala 371:44:@1130.16]
  wire [1:0] _GEN_27; // @[riscvSingle.scala 371:44:@1130.16]
  wire [2:0] _GEN_30; // @[riscvSingle.scala 345:44:@1074.14]
  wire [1:0] _GEN_31; // @[riscvSingle.scala 345:44:@1074.14]
  wire  _GEN_32; // @[riscvSingle.scala 345:44:@1074.14]
  wire [2:0] _GEN_34; // @[riscvSingle.scala 345:44:@1074.14]
  wire  _GEN_35; // @[riscvSingle.scala 345:44:@1074.14]
  wire [2:0] _GEN_36; // @[riscvSingle.scala 335:44:@1061.12]
  wire [1:0] _GEN_37; // @[riscvSingle.scala 335:44:@1061.12]
  wire  _GEN_38; // @[riscvSingle.scala 335:44:@1061.12]
  wire  _GEN_40; // @[riscvSingle.scala 335:44:@1061.12]
  wire  _GEN_42; // @[riscvSingle.scala 335:44:@1061.12]
  wire [2:0] _GEN_43; // @[riscvSingle.scala 335:44:@1061.12]
  wire [2:0] _GEN_44; // @[riscvSingle.scala 325:44:@1048.10]
  wire [1:0] _GEN_45; // @[riscvSingle.scala 325:44:@1048.10]
  wire  _GEN_46; // @[riscvSingle.scala 325:44:@1048.10]
  wire  _GEN_49; // @[riscvSingle.scala 325:44:@1048.10]
  wire  _GEN_50; // @[riscvSingle.scala 325:44:@1048.10]
  wire  _GEN_51; // @[riscvSingle.scala 325:44:@1048.10]
  wire [2:0] _GEN_52; // @[riscvSingle.scala 325:44:@1048.10]
  wire [2:0] _GEN_53; // @[riscvSingle.scala 298:44:@999.8]
  wire [1:0] _GEN_54; // @[riscvSingle.scala 298:44:@999.8]
  wire  _GEN_55; // @[riscvSingle.scala 298:44:@999.8]
  wire  _GEN_57; // @[riscvSingle.scala 298:44:@999.8]
  wire  _GEN_58; // @[riscvSingle.scala 298:44:@999.8]
  wire  _GEN_59; // @[riscvSingle.scala 298:44:@999.8]
  wire  _GEN_60; // @[riscvSingle.scala 298:44:@999.8]
  wire [3:0] _GEN_61; // @[riscvSingle.scala 298:44:@999.8]
  wire [2:0] _GEN_62; // @[riscvSingle.scala 288:43:@986.6]
  wire [1:0] _GEN_63; // @[riscvSingle.scala 288:43:@986.6]
  wire  _GEN_64; // @[riscvSingle.scala 288:43:@986.6]
  wire  _GEN_66; // @[riscvSingle.scala 288:43:@986.6]
  wire  _GEN_67; // @[riscvSingle.scala 288:43:@986.6]
  wire  _GEN_68; // @[riscvSingle.scala 288:43:@986.6]
  wire  _GEN_69; // @[riscvSingle.scala 288:43:@986.6]
  wire [3:0] _GEN_70; // @[riscvSingle.scala 288:43:@986.6]
  wire  _T_230; // @[riscvSingle.scala 416:11:@1178.4]
  wire  decoderMessage_regSrc; // @[riscvSingle.scala 245:30:@908.4 riscvSingle.scala 407:27:@1168.4]
  assign _T_39 = io_opcode == 7'h33; // @[riscvSingle.scala 247:20:@909.4]
  assign _T_49 = io_funct7 == 7'h0; // @[riscvSingle.scala 257:24:@919.6]
  assign _T_51 = io_funct3 == 3'h0; // @[riscvSingle.scala 258:28:@921.8]
  assign _T_54 = io_funct3 == 3'h1; // @[riscvSingle.scala 260:34:@926.10]
  assign _T_57 = io_funct3 == 3'h2; // @[riscvSingle.scala 262:34:@931.12]
  assign _T_60 = io_funct3 == 3'h3; // @[riscvSingle.scala 264:34:@936.14]
  assign _T_63 = io_funct3 == 3'h4; // @[riscvSingle.scala 266:34:@941.16]
  assign _T_66 = io_funct3 == 3'h5; // @[riscvSingle.scala 268:34:@946.18]
  assign _T_69 = io_funct3 == 3'h6; // @[riscvSingle.scala 270:34:@951.20]
  assign _GEN_1 = _T_66 ? 3'h7 : {{2'd0}, _T_69}; // @[riscvSingle.scala 268:48:@947.18]
  assign _GEN_2 = _T_63 ? 3'h6 : _GEN_1; // @[riscvSingle.scala 266:48:@942.16]
  assign _GEN_3 = _T_60 ? 3'h5 : _GEN_2; // @[riscvSingle.scala 264:48:@937.14]
  assign _GEN_4 = _T_57 ? 4'h9 : {{1'd0}, _GEN_3}; // @[riscvSingle.scala 262:48:@932.12]
  assign _GEN_5 = _T_54 ? 4'h3 : _GEN_4; // @[riscvSingle.scala 260:48:@927.10]
  assign _GEN_6 = _T_51 ? 4'h2 : _GEN_5; // @[riscvSingle.scala 258:42:@922.8]
  assign _T_73 = io_funct7 == 7'h1; // @[riscvSingle.scala 275:30:@960.8]
  assign _GEN_7 = _T_66 ? 4'ha : 4'h0; // @[riscvSingle.scala 278:47:@968.12]
  assign _GEN_8 = _T_51 ? 4'h8 : _GEN_7; // @[riscvSingle.scala 276:41:@963.10]
  assign _T_82 = io_funct7 == 7'h20; // @[riscvSingle.scala 283:30:@976.10]
  assign _GEN_9 = _T_82 ? 3'h4 : 3'h0; // @[riscvSingle.scala 283:47:@977.10]
  assign _GEN_10 = _T_73 ? _GEN_8 : {{1'd0}, _GEN_9}; // @[riscvSingle.scala 275:47:@961.8]
  assign _GEN_11 = _T_49 ? _GEN_6 : _GEN_10; // @[riscvSingle.scala 257:42:@920.6]
  assign _T_86 = io_opcode == 7'h17; // @[riscvSingle.scala 288:26:@985.6]
  assign _T_97 = io_opcode == 7'h13; // @[riscvSingle.scala 298:26:@998.8]
  assign _T_129 = io_opcode == 7'h3; // @[riscvSingle.scala 325:26:@1047.10]
  assign _T_140 = io_opcode == 7'h23; // @[riscvSingle.scala 335:26:@1060.12]
  assign _T_151 = io_opcode == 7'h63; // @[riscvSingle.scala 345:26:@1073.14]
  assign _T_164 = _T_51 & io_zero; // @[riscvSingle.scala 355:37:@1085.16]
  assign _T_169 = io_zero == 1'h0; // @[riscvSingle.scala 357:53:@1091.18]
  assign _T_170 = _T_54 & _T_169; // @[riscvSingle.scala 357:43:@1092.18]
  assign _T_176 = _T_63 & io_lt; // @[riscvSingle.scala 359:43:@1099.20]
  assign _T_182 = _T_66 & io_gt; // @[riscvSingle.scala 361:43:@1106.22]
  assign _T_188 = _T_69 & io_lt; // @[riscvSingle.scala 363:43:@1113.24]
  assign _T_191 = io_funct3 == 3'h7; // @[riscvSingle.scala 365:30:@1118.26]
  assign _T_194 = _T_191 & io_gt; // @[riscvSingle.scala 365:43:@1120.26]
  assign _GEN_20 = _T_188 ? 1'h1 : _T_194; // @[riscvSingle.scala 363:60:@1114.24]
  assign _GEN_21 = _T_182 ? 1'h1 : _GEN_20; // @[riscvSingle.scala 361:60:@1107.22]
  assign _GEN_22 = _T_176 ? 1'h1 : _GEN_21; // @[riscvSingle.scala 359:60:@1100.20]
  assign _GEN_23 = _T_170 ? 1'h1 : _GEN_22; // @[riscvSingle.scala 357:62:@1093.18]
  assign _GEN_24 = _T_164 ? 1'h1 : _GEN_23; // @[riscvSingle.scala 355:55:@1086.16]
  assign _T_198 = io_opcode == 7'h6f; // @[riscvSingle.scala 371:26:@1129.16]
  assign _GEN_26 = _T_198 ? 3'h4 : 3'h0; // @[riscvSingle.scala 371:44:@1130.16]
  assign _GEN_27 = _T_198 ? 2'h2 : 2'h0; // @[riscvSingle.scala 371:44:@1130.16]
  assign _GEN_30 = _T_151 ? 3'h0 : _GEN_26; // @[riscvSingle.scala 345:44:@1074.14]
  assign _GEN_31 = _T_151 ? 2'h1 : _GEN_27; // @[riscvSingle.scala 345:44:@1074.14]
  assign _GEN_32 = _T_151 ? 1'h0 : _T_198; // @[riscvSingle.scala 345:44:@1074.14]
  assign _GEN_34 = _T_151 ? 3'h4 : 3'h0; // @[riscvSingle.scala 345:44:@1074.14]
  assign _GEN_35 = _T_151 ? _GEN_24 : _T_198; // @[riscvSingle.scala 345:44:@1074.14]
  assign _GEN_36 = _T_140 ? 3'h0 : _GEN_30; // @[riscvSingle.scala 335:44:@1061.12]
  assign _GEN_37 = _T_140 ? 2'h0 : _GEN_31; // @[riscvSingle.scala 335:44:@1061.12]
  assign _GEN_38 = _T_140 ? 1'h1 : _GEN_32; // @[riscvSingle.scala 335:44:@1061.12]
  assign _GEN_40 = _T_140 ? 1'h0 : _GEN_32; // @[riscvSingle.scala 335:44:@1061.12]
  assign _GEN_42 = _T_140 ? 1'h0 : _GEN_35; // @[riscvSingle.scala 335:44:@1061.12]
  assign _GEN_43 = _T_140 ? 3'h0 : _GEN_34; // @[riscvSingle.scala 335:44:@1061.12]
  assign _GEN_44 = _T_129 ? 3'h0 : _GEN_36; // @[riscvSingle.scala 325:44:@1048.10]
  assign _GEN_45 = _T_129 ? 2'h0 : _GEN_37; // @[riscvSingle.scala 325:44:@1048.10]
  assign _GEN_46 = _T_129 ? 1'h1 : _GEN_38; // @[riscvSingle.scala 325:44:@1048.10]
  assign _GEN_49 = _T_129 ? 1'h1 : _GEN_40; // @[riscvSingle.scala 325:44:@1048.10]
  assign _GEN_50 = _T_129 ? 1'h1 : _T_140; // @[riscvSingle.scala 325:44:@1048.10]
  assign _GEN_51 = _T_129 ? 1'h0 : _GEN_42; // @[riscvSingle.scala 325:44:@1048.10]
  assign _GEN_52 = _T_129 ? 3'h0 : _GEN_43; // @[riscvSingle.scala 325:44:@1048.10]
  assign _GEN_53 = _T_97 ? 3'h0 : _GEN_44; // @[riscvSingle.scala 298:44:@999.8]
  assign _GEN_54 = _T_97 ? 2'h0 : _GEN_45; // @[riscvSingle.scala 298:44:@999.8]
  assign _GEN_55 = _T_97 ? 1'h1 : _GEN_46; // @[riscvSingle.scala 298:44:@999.8]
  assign _GEN_57 = _T_97 ? 1'h0 : _T_129; // @[riscvSingle.scala 298:44:@999.8]
  assign _GEN_58 = _T_97 ? 1'h1 : _GEN_49; // @[riscvSingle.scala 298:44:@999.8]
  assign _GEN_59 = _T_97 ? 1'h0 : _GEN_50; // @[riscvSingle.scala 298:44:@999.8]
  assign _GEN_60 = _T_97 ? 1'h0 : _GEN_51; // @[riscvSingle.scala 298:44:@999.8]
  assign _GEN_61 = _T_97 ? _GEN_6 : {{1'd0}, _GEN_52}; // @[riscvSingle.scala 298:44:@999.8]
  assign _GEN_62 = _T_86 ? 3'h0 : _GEN_53; // @[riscvSingle.scala 288:43:@986.6]
  assign _GEN_63 = _T_86 ? 2'h3 : _GEN_54; // @[riscvSingle.scala 288:43:@986.6]
  assign _GEN_64 = _T_86 ? 1'h1 : _GEN_55; // @[riscvSingle.scala 288:43:@986.6]
  assign _GEN_66 = _T_86 ? 1'h0 : _GEN_57; // @[riscvSingle.scala 288:43:@986.6]
  assign _GEN_67 = _T_86 ? 1'h1 : _GEN_58; // @[riscvSingle.scala 288:43:@986.6]
  assign _GEN_68 = _T_86 ? 1'h0 : _GEN_59; // @[riscvSingle.scala 288:43:@986.6]
  assign _GEN_69 = _T_86 ? 1'h0 : _GEN_60; // @[riscvSingle.scala 288:43:@986.6]
  assign _GEN_70 = _T_86 ? 4'h2 : _GEN_61; // @[riscvSingle.scala 288:43:@986.6]
  assign _T_230 = reset == 1'h0; // @[riscvSingle.scala 416:11:@1178.4]
  assign decoderMessage_regSrc = io_regSrc[0]; // @[riscvSingle.scala 245:30:@908.4 riscvSingle.scala 407:27:@1168.4]
  assign io_regSrc = _T_39 ? 3'h0 : _GEN_62; // @[riscvSingle.scala 248:19:@911.6 riscvSingle.scala 289:19:@987.8 riscvSingle.scala 299:19:@1000.10 riscvSingle.scala 326:19:@1049.12 riscvSingle.scala 336:19:@1062.14 riscvSingle.scala 346:19:@1075.16 riscvSingle.scala 372:19:@1131.18 riscvSingle.scala 382:19:@1144.20 riscvSingle.scala 392:19:@1155.20]
  assign io_regW = _T_39 ? 1'h1 : _GEN_67; // @[riscvSingle.scala 253:17:@916.6 riscvSingle.scala 294:17:@992.8 riscvSingle.scala 304:17:@1005.10 riscvSingle.scala 331:17:@1054.12 riscvSingle.scala 341:17:@1067.14 riscvSingle.scala 351:17:@1080.16 riscvSingle.scala 377:17:@1136.18 riscvSingle.scala 387:17:@1149.20 riscvSingle.scala 397:17:@1160.20]
  assign io_immSrc = _T_39 ? 2'h0 : _GEN_63; // @[riscvSingle.scala 249:19:@912.6 riscvSingle.scala 290:19:@988.8 riscvSingle.scala 300:19:@1001.10 riscvSingle.scala 327:19:@1050.12 riscvSingle.scala 337:19:@1063.14 riscvSingle.scala 347:19:@1076.16 riscvSingle.scala 373:19:@1132.18 riscvSingle.scala 383:19:@1145.20 riscvSingle.scala 393:19:@1156.20]
  assign io_aluSrc = _T_39 ? 1'h0 : _GEN_64; // @[riscvSingle.scala 250:19:@913.6 riscvSingle.scala 291:19:@989.8 riscvSingle.scala 301:19:@1002.10 riscvSingle.scala 328:19:@1051.12 riscvSingle.scala 338:19:@1064.14 riscvSingle.scala 348:19:@1077.16 riscvSingle.scala 374:19:@1133.18 riscvSingle.scala 384:19:@1146.20 riscvSingle.scala 394:19:@1157.20]
  assign io_pcSrc = _T_39 ? 1'h0 : _T_86; // @[riscvSingle.scala 251:18:@914.6 riscvSingle.scala 292:18:@990.8 riscvSingle.scala 302:18:@1003.10 riscvSingle.scala 329:18:@1052.12 riscvSingle.scala 339:18:@1065.14 riscvSingle.scala 349:18:@1078.16 riscvSingle.scala 375:18:@1134.18 riscvSingle.scala 385:18:@1147.20 riscvSingle.scala 395:18:@1158.20]
  assign io_aluControl = _T_39 ? _GEN_11 : _GEN_70; // @[riscvSingle.scala 259:31:@923.10 riscvSingle.scala 261:31:@928.12 riscvSingle.scala 263:31:@933.14 riscvSingle.scala 265:31:@938.16 riscvSingle.scala 267:31:@943.18 riscvSingle.scala 269:31:@948.20 riscvSingle.scala 271:31:@953.22 riscvSingle.scala 273:31:@956.22 riscvSingle.scala 277:31:@964.12 riscvSingle.scala 279:31:@969.14 riscvSingle.scala 281:31:@972.14 riscvSingle.scala 284:27:@978.12 riscvSingle.scala 286:27:@981.12 riscvSingle.scala 297:23:@995.8 riscvSingle.scala 309:27:@1010.12 riscvSingle.scala 311:27:@1015.14 riscvSingle.scala 313:27:@1020.16 riscvSingle.scala 315:27:@1025.18 riscvSingle.scala 317:27:@1030.20 riscvSingle.scala 319:27:@1035.22 riscvSingle.scala 321:27:@1040.24 riscvSingle.scala 323:27:@1043.24 riscvSingle.scala 334:23:@1057.12 riscvSingle.scala 344:23:@1070.14 riscvSingle.scala 353:23:@1082.16 riscvSingle.scala 380:23:@1139.18 riscvSingle.scala 390:23:@1152.20 riscvSingle.scala 400:23:@1163.20]
  assign io_memW = _T_39 ? 1'h0 : _GEN_68; // @[riscvSingle.scala 254:17:@917.6 riscvSingle.scala 295:17:@993.8 riscvSingle.scala 305:17:@1006.10 riscvSingle.scala 332:17:@1055.12 riscvSingle.scala 342:17:@1068.14 riscvSingle.scala 352:17:@1081.16 riscvSingle.scala 378:17:@1137.18 riscvSingle.scala 388:17:@1150.20 riscvSingle.scala 398:17:@1161.20]
  assign io_memToReg = _T_39 ? 1'h0 : _GEN_66; // @[riscvSingle.scala 252:21:@915.6 riscvSingle.scala 293:21:@991.8 riscvSingle.scala 303:21:@1004.10 riscvSingle.scala 330:21:@1053.12 riscvSingle.scala 340:21:@1066.14 riscvSingle.scala 350:21:@1079.16 riscvSingle.scala 376:21:@1135.18 riscvSingle.scala 386:21:@1148.20 riscvSingle.scala 396:21:@1159.20]
  assign io_branchSrc = _T_39 ? 1'h0 : _GEN_69; // @[riscvSingle.scala 255:22:@918.6 riscvSingle.scala 296:22:@994.8 riscvSingle.scala 306:22:@1007.10 riscvSingle.scala 333:22:@1056.12 riscvSingle.scala 343:22:@1069.14 riscvSingle.scala 356:26:@1087.18 riscvSingle.scala 358:26:@1094.20 riscvSingle.scala 360:26:@1101.22 riscvSingle.scala 362:26:@1108.24 riscvSingle.scala 364:26:@1115.26 riscvSingle.scala 366:26:@1122.28 riscvSingle.scala 368:26:@1125.28 riscvSingle.scala 379:22:@1138.18 riscvSingle.scala 389:22:@1151.20 riscvSingle.scala 399:22:@1162.20]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_230) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|decoder Module:\n|  branchSrc   : b%b\n|  opcode      : b%b\n|  funct3      : b%b\n|  regSrc      : b%b\n|  immSrc      : b%b\n|  aluSrc      : b%b\n|  pcSrc       : b%b\n|  aluControl  : b%b\n|  memToReg    : b%b\n|  zero        : b%b\n|  lt          : b%b\n|  gt          : b%b\n|___________________________\n",io_branchSrc,io_opcode,io_funct3,decoderMessage_regSrc,io_immSrc,io_aluSrc,io_pcSrc,io_aluControl,io_memToReg,io_zero,io_lt,io_gt); // @[riscvSingle.scala 416:11:@1180.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module riscv( // @[:@1183.2]
  input         clock, // @[:@1184.4]
  input         reset, // @[:@1185.4]
  input  [31:0] io_instr, // @[:@1186.4]
  input  [31:0] io_readData, // @[:@1186.4]
  output [31:0] io_pc, // @[:@1186.4]
  output        io_memWrite, // @[:@1186.4]
  output [31:0] io_aluResult, // @[:@1186.4]
  output [31:0] io_writeData // @[:@1186.4]
);
  wire  dp_clock; // @[riscvSingle.scala 103:20:@1189.4]
  wire  dp_reset; // @[riscvSingle.scala 103:20:@1189.4]
  wire [2:0] dp_io_regSrc; // @[riscvSingle.scala 103:20:@1189.4]
  wire  dp_io_regWrite; // @[riscvSingle.scala 103:20:@1189.4]
  wire [1:0] dp_io_immSrc; // @[riscvSingle.scala 103:20:@1189.4]
  wire  dp_io_aluSrc; // @[riscvSingle.scala 103:20:@1189.4]
  wire  dp_io_pcSrc; // @[riscvSingle.scala 103:20:@1189.4]
  wire [3:0] dp_io_aluControl; // @[riscvSingle.scala 103:20:@1189.4]
  wire  dp_io_memToReg; // @[riscvSingle.scala 103:20:@1189.4]
  wire [31:0] dp_io_instr; // @[riscvSingle.scala 103:20:@1189.4]
  wire [31:0] dp_io_readData; // @[riscvSingle.scala 103:20:@1189.4]
  wire  dp_io_branchSrc; // @[riscvSingle.scala 103:20:@1189.4]
  wire [31:0] dp_io_pc; // @[riscvSingle.scala 103:20:@1189.4]
  wire [31:0] dp_io_dataAdd; // @[riscvSingle.scala 103:20:@1189.4]
  wire [31:0] dp_io_writeData; // @[riscvSingle.scala 103:20:@1189.4]
  wire  dp_io_zero; // @[riscvSingle.scala 103:20:@1189.4]
  wire  dp_io_lt; // @[riscvSingle.scala 103:20:@1189.4]
  wire  dp_io_gt; // @[riscvSingle.scala 103:20:@1189.4]
  wire  d_clock; // @[riscvSingle.scala 104:19:@1192.4]
  wire  d_reset; // @[riscvSingle.scala 104:19:@1192.4]
  wire [6:0] d_io_opcode; // @[riscvSingle.scala 104:19:@1192.4]
  wire [6:0] d_io_funct7; // @[riscvSingle.scala 104:19:@1192.4]
  wire [2:0] d_io_funct3; // @[riscvSingle.scala 104:19:@1192.4]
  wire [2:0] d_io_regSrc; // @[riscvSingle.scala 104:19:@1192.4]
  wire  d_io_regW; // @[riscvSingle.scala 104:19:@1192.4]
  wire [1:0] d_io_immSrc; // @[riscvSingle.scala 104:19:@1192.4]
  wire  d_io_aluSrc; // @[riscvSingle.scala 104:19:@1192.4]
  wire  d_io_pcSrc; // @[riscvSingle.scala 104:19:@1192.4]
  wire [3:0] d_io_aluControl; // @[riscvSingle.scala 104:19:@1192.4]
  wire  d_io_memW; // @[riscvSingle.scala 104:19:@1192.4]
  wire  d_io_memToReg; // @[riscvSingle.scala 104:19:@1192.4]
  wire  d_io_branchSrc; // @[riscvSingle.scala 104:19:@1192.4]
  wire  d_io_zero; // @[riscvSingle.scala 104:19:@1192.4]
  wire  d_io_lt; // @[riscvSingle.scala 104:19:@1192.4]
  wire  d_io_gt; // @[riscvSingle.scala 104:19:@1192.4]
  wire  _T_22; // @[riscvSingle.scala 110:11:@1198.4]
  datapath dp ( // @[riscvSingle.scala 103:20:@1189.4]
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
  decoder d ( // @[riscvSingle.scala 104:19:@1192.4]
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
  assign _T_22 = reset == 1'h0; // @[riscvSingle.scala 110:11:@1198.4]
  assign io_pc = dp_io_pc; // @[riscvSingle.scala 131:11:@1223.4]
  assign io_memWrite = d_io_memW; // @[riscvSingle.scala 132:17:@1224.4]
  assign io_aluResult = dp_io_dataAdd; // @[riscvSingle.scala 133:18:@1225.4]
  assign io_writeData = dp_io_writeData; // @[riscvSingle.scala 134:18:@1226.4]
  assign dp_clock = clock; // @[:@1190.4]
  assign dp_reset = reset; // @[:@1191.4]
  assign dp_io_regSrc = d_io_regSrc; // @[riscvSingle.scala 120:18:@1213.4]
  assign dp_io_regWrite = d_io_regW; // @[riscvSingle.scala 121:20:@1214.4]
  assign dp_io_immSrc = d_io_immSrc; // @[riscvSingle.scala 122:18:@1215.4]
  assign dp_io_aluSrc = d_io_aluSrc; // @[riscvSingle.scala 123:18:@1216.4]
  assign dp_io_pcSrc = d_io_pcSrc; // @[riscvSingle.scala 124:17:@1217.4]
  assign dp_io_aluControl = d_io_aluControl; // @[riscvSingle.scala 125:22:@1218.4]
  assign dp_io_memToReg = d_io_memW; // @[riscvSingle.scala 126:20:@1219.4]
  assign dp_io_instr = io_instr; // @[riscvSingle.scala 127:17:@1220.4]
  assign dp_io_readData = io_readData; // @[riscvSingle.scala 128:20:@1221.4]
  assign dp_io_branchSrc = d_io_branchSrc; // @[riscvSingle.scala 129:21:@1222.4]
  assign d_clock = clock; // @[:@1193.4]
  assign d_reset = reset; // @[:@1194.4]
  assign d_io_opcode = io_instr[6:0]; // @[riscvSingle.scala 112:17:@1203.4]
  assign d_io_funct7 = io_instr[31:25]; // @[riscvSingle.scala 113:17:@1205.4]
  assign d_io_funct3 = io_instr[14:12]; // @[riscvSingle.scala 114:17:@1207.4]
  assign d_io_zero = dp_io_zero; // @[riscvSingle.scala 116:15:@1210.4]
  assign d_io_lt = dp_io_lt; // @[riscvSingle.scala 117:13:@1211.4]
  assign d_io_gt = dp_io_gt; // @[riscvSingle.scala 118:13:@1212.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_22) begin
          $fwrite(32'h80000002,"___________________________\n|riscv Module:\n|  instr       : 0x%x\n|  readData    : 0x%x\n|___________________________\n",io_instr,io_readData); // @[riscvSingle.scala 110:11:@1200.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module imem( // @[:@1229.2]
  input         clock, // @[:@1230.4]
  input  [31:0] io_mem_addr, // @[:@1232.4]
  output [31:0] io_mem_out // @[:@1232.4]
);
  reg [31:0] MEM [0:1023]; // @[riscvSingle.scala 756:18:@1234.4]
  reg [31:0] _RAND_0;
  wire [31:0] MEM__T_12_data; // @[riscvSingle.scala 756:18:@1234.4]
  wire [9:0] MEM__T_12_addr; // @[riscvSingle.scala 756:18:@1234.4]
  assign MEM__T_12_addr = io_mem_addr[9:0];
  assign MEM__T_12_data = MEM[MEM__T_12_addr]; // @[riscvSingle.scala 756:18:@1234.4]
  assign io_mem_out = MEM__T_12_data; // @[riscvSingle.scala 759:16:@1237.4]
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
module dmem( // @[:@1239.2]
  input         clock, // @[:@1240.4]
  input  [31:0] io_mem_addr, // @[:@1242.4]
  input  [31:0] io_mem_in, // @[:@1242.4]
  input         io_enable, // @[:@1242.4]
  output [31:0] io_mem_out // @[:@1242.4]
);
  reg [31:0] mem [0:1023]; // @[riscvSingle.scala 770:26:@1244.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_25_data; // @[riscvSingle.scala 770:26:@1244.4]
  wire [9:0] mem__T_25_addr; // @[riscvSingle.scala 770:26:@1244.4]
  wire [31:0] mem__T_16_data; // @[riscvSingle.scala 770:26:@1244.4]
  wire [9:0] mem__T_16_addr; // @[riscvSingle.scala 770:26:@1244.4]
  wire  mem__T_16_mask; // @[riscvSingle.scala 770:26:@1244.4]
  wire  mem__T_16_en; // @[riscvSingle.scala 770:26:@1244.4]
  wire [9:0] _T_15; // @[:@1245.4]
  wire  _T_17; // @[riscvSingle.scala 772:51:@1248.4]
  wire  _T_19; // @[riscvSingle.scala 772:51:@1249.4]
  wire  _GEN_1; // @[riscvSingle.scala 772:27:@1252.4]
  reg [9:0] mem__T_25_addr_pipe_0;
  reg [31:0] _RAND_1;
  assign mem__T_25_addr = mem__T_25_addr_pipe_0;
  assign mem__T_25_data = mem[mem__T_25_addr]; // @[riscvSingle.scala 770:26:@1244.4]
  assign mem__T_16_data = io_mem_in;
  assign mem__T_16_addr = io_mem_addr[9:0];
  assign mem__T_16_mask = 1'h1;
  assign mem__T_16_en = 1'h1;
  assign _T_15 = io_mem_addr[9:0]; // @[:@1245.4]
  assign _T_17 = ~ io_enable; // @[riscvSingle.scala 772:51:@1248.4]
  assign _T_19 = _T_17 == 1'h0; // @[riscvSingle.scala 772:51:@1249.4]
  assign _GEN_1 = _T_19; // @[riscvSingle.scala 772:27:@1252.4]
  assign io_mem_out = mem__T_25_data; // @[riscvSingle.scala 772:16:@1258.4]
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
      mem[mem__T_16_addr] <= mem__T_16_data; // @[riscvSingle.scala 770:26:@1244.4]
    end
    if (_GEN_1) begin
      mem__T_25_addr_pipe_0 <= _T_15;
    end
  end
endmodule
module top( // @[:@1260.2]
  input   clock, // @[:@1261.4]
  input   reset, // @[:@1262.4]
  output  io_valid // @[:@1263.4]
);
  wire  r_clock; // @[riscvSingle.scala 31:19:@1266.4]
  wire  r_reset; // @[riscvSingle.scala 31:19:@1266.4]
  wire [31:0] r_io_instr; // @[riscvSingle.scala 31:19:@1266.4]
  wire [31:0] r_io_readData; // @[riscvSingle.scala 31:19:@1266.4]
  wire [31:0] r_io_pc; // @[riscvSingle.scala 31:19:@1266.4]
  wire  r_io_memWrite; // @[riscvSingle.scala 31:19:@1266.4]
  wire [31:0] r_io_aluResult; // @[riscvSingle.scala 31:19:@1266.4]
  wire [31:0] r_io_writeData; // @[riscvSingle.scala 31:19:@1266.4]
  wire  im_clock; // @[riscvSingle.scala 33:20:@1269.4]
  wire [31:0] im_io_mem_addr; // @[riscvSingle.scala 33:20:@1269.4]
  wire [31:0] im_io_mem_out; // @[riscvSingle.scala 33:20:@1269.4]
  wire  dm_clock; // @[riscvSingle.scala 35:20:@1272.4]
  wire [31:0] dm_io_mem_addr; // @[riscvSingle.scala 35:20:@1272.4]
  wire [31:0] dm_io_mem_in; // @[riscvSingle.scala 35:20:@1272.4]
  wire  dm_io_enable; // @[riscvSingle.scala 35:20:@1272.4]
  wire [31:0] dm_io_mem_out; // @[riscvSingle.scala 35:20:@1272.4]
  wire [31:0] pc_pulled; // @[riscvSingle.scala 44:26:@1280.4]
  wire  _T_16; // @[riscvSingle.scala 68:11:@1293.4]
  wire [31:0] instr_out; // @[riscvSingle.scala 37:25:@1275.4 riscvSingle.scala 42:15:@1279.4]
  wire [6:0] _T_19; // @[riscvSingle.scala 75:30:@1300.4]
  wire  _T_21; // @[riscvSingle.scala 75:37:@1301.4]
  wire [31:0] mem_inW; // @[riscvSingle.scala 39:23:@1277.4 riscvSingle.scala 56:13:@1287.4]
  wire [31:0] mem_outW; // @[riscvSingle.scala 40:24:@1278.4 riscvSingle.scala 54:14:@1286.4]
  riscv r ( // @[riscvSingle.scala 31:19:@1266.4]
    .clock(r_clock),
    .reset(r_reset),
    .io_instr(r_io_instr),
    .io_readData(r_io_readData),
    .io_pc(r_io_pc),
    .io_memWrite(r_io_memWrite),
    .io_aluResult(r_io_aluResult),
    .io_writeData(r_io_writeData)
  );
  imem im ( // @[riscvSingle.scala 33:20:@1269.4]
    .clock(im_clock),
    .io_mem_addr(im_io_mem_addr),
    .io_mem_out(im_io_mem_out)
  );
  dmem dm ( // @[riscvSingle.scala 35:20:@1272.4]
    .clock(dm_clock),
    .io_mem_addr(dm_io_mem_addr),
    .io_mem_in(dm_io_mem_in),
    .io_enable(dm_io_enable),
    .io_mem_out(dm_io_mem_out)
  );
  assign pc_pulled = r_io_pc / 32'h4; // @[riscvSingle.scala 44:26:@1280.4]
  assign _T_16 = reset == 1'h0; // @[riscvSingle.scala 68:11:@1293.4]
  assign instr_out = im_io_mem_out; // @[riscvSingle.scala 37:25:@1275.4 riscvSingle.scala 42:15:@1279.4]
  assign _T_19 = instr_out[6:0]; // @[riscvSingle.scala 75:30:@1300.4]
  assign _T_21 = _T_19 == 7'h73; // @[riscvSingle.scala 75:37:@1301.4]
  assign mem_inW = r_io_writeData; // @[riscvSingle.scala 39:23:@1277.4 riscvSingle.scala 56:13:@1287.4]
  assign mem_outW = dm_io_mem_out; // @[riscvSingle.scala 40:24:@1278.4 riscvSingle.scala 54:14:@1286.4]
  assign io_valid = _T_21 ? 1'h0 : 1'h1; // @[riscvSingle.scala 75:14:@1303.4]
  assign r_clock = clock; // @[:@1267.4]
  assign r_reset = reset; // @[:@1268.4]
  assign r_io_instr = im_io_mem_out; // @[riscvSingle.scala 73:16:@1299.4]
  assign r_io_readData = dm_io_mem_out; // @[riscvSingle.scala 52:19:@1285.4]
  assign im_clock = clock; // @[:@1270.4]
  assign im_io_mem_addr = r_io_pc / 32'h4; // @[riscvSingle.scala 71:20:@1298.4]
  assign dm_clock = clock; // @[:@1273.4]
  assign dm_io_mem_addr = r_io_aluResult; // @[riscvSingle.scala 46:20:@1282.4]
  assign dm_io_mem_in = r_io_writeData; // @[riscvSingle.scala 48:18:@1283.4]
  assign dm_io_enable = r_io_memWrite; // @[riscvSingle.scala 50:18:@1284.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_16) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|top Module:\n|  instr pulled: 0x%x\n|  pc pulled   : b%b\n|  mem in      : b%b\n|  mem out     : b%b\n|___________________________\n",instr_out,pc_pulled,mem_inW,mem_outW); // @[riscvSingle.scala 68:11:@1295.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
