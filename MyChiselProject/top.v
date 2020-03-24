module extend( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [11:0] io_instr12, // @[:@6.4]
  input  [19:0] io_instr20, // @[:@6.4]
  input  [1:0]  io_immSrc, // @[:@6.4]
  output [31:0] io_extImm // @[:@6.4]
);
  wire  _T_15; // @[riscvSingle.scala 141:20:@9.4]
  wire  _T_16; // @[riscvSingle.scala 142:24:@11.6]
  wire [31:0] _T_20; // @[Cat.scala 30:58:@14.8]
  wire [12:0] _T_22; // @[Cat.scala 30:58:@18.8]
  wire [31:0] _GEN_0; // @[riscvSingle.scala 142:37:@13.6]
  wire  _T_24; // @[riscvSingle.scala 147:26:@23.6]
  wire [31:0] _T_31; // @[Cat.scala 30:58:@29.10]
  wire [13:0] _T_35; // @[Cat.scala 30:58:@34.10]
  wire [31:0] _GEN_1; // @[riscvSingle.scala 148:37:@27.8]
  wire  _T_37; // @[riscvSingle.scala 153:26:@39.8]
  wire  _T_38; // @[riscvSingle.scala 154:24:@41.10]
  wire [31:0] _T_44; // @[Cat.scala 30:58:@45.12]
  wire [21:0] _T_48; // @[Cat.scala 30:58:@50.12]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 154:37:@43.10]
  wire [31:0] _GEN_3; // @[riscvSingle.scala 153:34:@40.8]
  wire [31:0] _GEN_4; // @[riscvSingle.scala 147:34:@24.6]
  wire  _T_52; // @[riscvSingle.scala 166:11:@62.4]
  assign _T_15 = io_immSrc == 2'h0; // @[riscvSingle.scala 141:20:@9.4]
  assign _T_16 = io_instr12[11]; // @[riscvSingle.scala 142:24:@11.6]
  assign _T_20 = {20'hfffff,io_instr12}; // @[Cat.scala 30:58:@14.8]
  assign _T_22 = {1'h0,io_instr12}; // @[Cat.scala 30:58:@18.8]
  assign _GEN_0 = _T_16 ? _T_20 : {{19'd0}, _T_22}; // @[riscvSingle.scala 142:37:@13.6]
  assign _T_24 = io_immSrc == 2'h1; // @[riscvSingle.scala 147:26:@23.6]
  assign _T_31 = {19'h7ffff,io_instr12,1'h0}; // @[Cat.scala 30:58:@29.10]
  assign _T_35 = {1'h0,io_instr12,1'h0}; // @[Cat.scala 30:58:@34.10]
  assign _GEN_1 = _T_16 ? _T_31 : {{18'd0}, _T_35}; // @[riscvSingle.scala 148:37:@27.8]
  assign _T_37 = io_immSrc == 2'h2; // @[riscvSingle.scala 153:26:@39.8]
  assign _T_38 = io_instr20[19]; // @[riscvSingle.scala 154:24:@41.10]
  assign _T_44 = {11'h7ff,io_instr20,1'h0}; // @[Cat.scala 30:58:@45.12]
  assign _T_48 = {1'h0,io_instr20,1'h0}; // @[Cat.scala 30:58:@50.12]
  assign _GEN_2 = _T_38 ? _T_44 : {{10'd0}, _T_48}; // @[riscvSingle.scala 154:37:@43.10]
  assign _GEN_3 = _T_37 ? _GEN_2 : 32'h0; // @[riscvSingle.scala 153:34:@40.8]
  assign _GEN_4 = _T_24 ? _GEN_1 : _GEN_3; // @[riscvSingle.scala 147:34:@24.6]
  assign _T_52 = reset == 1'h0; // @[riscvSingle.scala 166:11:@62.4]
  assign io_extImm = _T_15 ? _GEN_0 : _GEN_4; // @[riscvSingle.scala 143:23:@15.8 riscvSingle.scala 145:23:@19.8 riscvSingle.scala 149:23:@30.10 riscvSingle.scala 151:23:@35.10 riscvSingle.scala 155:23:@46.12 riscvSingle.scala 157:23:@51.12 riscvSingle.scala 160:19:@55.10]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_52) begin
          $fwrite(32'h80000002,"\n\n\nriscv Module:\n  instr12     : %b\n  instr20     : %b\n  immsrc      : %b\n  instr20     : 0x%x\n///////////////////////////////////////////////////\n",io_instr12,io_instr20,io_immSrc,io_extImm); // @[riscvSingle.scala 166:11:@64.6]
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
  reg [31:0] rf [0:31]; // @[riscvSingle.scala 539:17:@72.4]
  reg [31:0] _RAND_0;
  wire [31:0] rf__T_39_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_39_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_40_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_40_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_45_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_45_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_46_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_46_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_54_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_54_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_64_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_64_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_74_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_74_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_84_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_84_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_94_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_94_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_104_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_104_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_114_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_114_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_124_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_124_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_134_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_134_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_144_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_144_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_154_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_154_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_164_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_164_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_174_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_174_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_184_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_184_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_194_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_194_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_204_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_204_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_214_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_214_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_224_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_224_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_234_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_234_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_244_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_244_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_254_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_254_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_264_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_264_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_274_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_274_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_284_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_284_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_294_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_294_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_304_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_304_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_314_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_314_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_324_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_324_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_334_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_334_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_344_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_344_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_354_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_354_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_364_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_364_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_32_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_32_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire  rf__T_32_mask; // @[riscvSingle.scala 539:17:@72.4]
  wire  rf__T_32_en; // @[riscvSingle.scala 539:17:@72.4]
  wire [31:0] rf__T_34_data; // @[riscvSingle.scala 539:17:@72.4]
  wire [4:0] rf__T_34_addr; // @[riscvSingle.scala 539:17:@72.4]
  wire  rf__T_34_mask; // @[riscvSingle.scala 539:17:@72.4]
  wire  rf__T_34_en; // @[riscvSingle.scala 539:17:@72.4]
  wire  _T_24; // @[riscvSingle.scala 542:17:@74.4]
  wire  _T_26; // @[riscvSingle.scala 542:17:@75.4]
  wire  _T_28; // @[riscvSingle.scala 542:34:@76.4]
  wire  _T_30; // @[riscvSingle.scala 542:25:@77.4]
  wire  _T_31; // @[riscvSingle.scala 542:22:@78.4]
  wire  _T_37; // @[riscvSingle.scala 548:27:@87.4]
  wire  _T_43; // @[riscvSingle.scala 549:27:@93.4]
  wire  _T_50; // @[riscvSingle.scala 560:11:@108.4]
  wire [31:0] _T_52; // @[riscvSingle.scala 562:26:@112.4 riscvSingle.scala 563:16:@114.4]
  wire [31:0] _T_62; // @[riscvSingle.scala 562:26:@125.4 riscvSingle.scala 563:16:@127.4]
  wire [31:0] _T_72; // @[riscvSingle.scala 562:26:@138.4 riscvSingle.scala 563:16:@140.4]
  wire [31:0] _T_82; // @[riscvSingle.scala 562:26:@151.4 riscvSingle.scala 563:16:@153.4]
  wire [31:0] _T_92; // @[riscvSingle.scala 562:26:@164.4 riscvSingle.scala 563:16:@166.4]
  wire [31:0] _T_102; // @[riscvSingle.scala 562:26:@177.4 riscvSingle.scala 563:16:@179.4]
  wire [31:0] _T_112; // @[riscvSingle.scala 562:26:@190.4 riscvSingle.scala 563:16:@192.4]
  wire [31:0] _T_122; // @[riscvSingle.scala 562:26:@203.4 riscvSingle.scala 563:16:@205.4]
  wire [31:0] _T_132; // @[riscvSingle.scala 562:26:@216.4 riscvSingle.scala 563:16:@218.4]
  wire [31:0] _T_142; // @[riscvSingle.scala 562:26:@229.4 riscvSingle.scala 563:16:@231.4]
  wire [31:0] _T_152; // @[riscvSingle.scala 562:26:@242.4 riscvSingle.scala 563:16:@244.4]
  wire [31:0] _T_162; // @[riscvSingle.scala 562:26:@255.4 riscvSingle.scala 563:16:@257.4]
  wire [31:0] _T_172; // @[riscvSingle.scala 562:26:@268.4 riscvSingle.scala 563:16:@270.4]
  wire [31:0] _T_182; // @[riscvSingle.scala 562:26:@281.4 riscvSingle.scala 563:16:@283.4]
  wire [31:0] _T_192; // @[riscvSingle.scala 562:26:@294.4 riscvSingle.scala 563:16:@296.4]
  wire [31:0] _T_202; // @[riscvSingle.scala 562:26:@307.4 riscvSingle.scala 563:16:@309.4]
  wire [31:0] _T_212; // @[riscvSingle.scala 562:26:@320.4 riscvSingle.scala 563:16:@322.4]
  wire [31:0] _T_222; // @[riscvSingle.scala 562:26:@333.4 riscvSingle.scala 563:16:@335.4]
  wire [31:0] _T_232; // @[riscvSingle.scala 562:26:@346.4 riscvSingle.scala 563:16:@348.4]
  wire [31:0] _T_242; // @[riscvSingle.scala 562:26:@359.4 riscvSingle.scala 563:16:@361.4]
  wire [31:0] _T_252; // @[riscvSingle.scala 562:26:@372.4 riscvSingle.scala 563:16:@374.4]
  wire [31:0] _T_262; // @[riscvSingle.scala 562:26:@385.4 riscvSingle.scala 563:16:@387.4]
  wire [31:0] _T_272; // @[riscvSingle.scala 562:26:@398.4 riscvSingle.scala 563:16:@400.4]
  wire [31:0] _T_282; // @[riscvSingle.scala 562:26:@411.4 riscvSingle.scala 563:16:@413.4]
  wire [31:0] _T_292; // @[riscvSingle.scala 562:26:@424.4 riscvSingle.scala 563:16:@426.4]
  wire [31:0] _T_302; // @[riscvSingle.scala 562:26:@437.4 riscvSingle.scala 563:16:@439.4]
  wire [31:0] _T_312; // @[riscvSingle.scala 562:26:@450.4 riscvSingle.scala 563:16:@452.4]
  wire [31:0] _T_322; // @[riscvSingle.scala 562:26:@463.4 riscvSingle.scala 563:16:@465.4]
  wire [31:0] _T_332; // @[riscvSingle.scala 562:26:@476.4 riscvSingle.scala 563:16:@478.4]
  wire [31:0] _T_342; // @[riscvSingle.scala 562:26:@489.4 riscvSingle.scala 563:16:@491.4]
  wire [31:0] _T_352; // @[riscvSingle.scala 562:26:@502.4 riscvSingle.scala 563:16:@504.4]
  wire [31:0] _T_362; // @[riscvSingle.scala 562:26:@515.4 riscvSingle.scala 563:16:@517.4]
  assign rf__T_39_addr = io_r31[4:0];
  assign rf__T_39_data = rf[rf__T_39_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_40_addr = io_ra1;
  assign rf__T_40_data = rf[rf__T_40_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_45_addr = io_r31[4:0];
  assign rf__T_45_data = rf[rf__T_45_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_46_addr = io_ra2;
  assign rf__T_46_data = rf[rf__T_46_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_54_addr = 5'h0;
  assign rf__T_54_data = rf[rf__T_54_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_64_addr = 5'h1;
  assign rf__T_64_data = rf[rf__T_64_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_74_addr = 5'h2;
  assign rf__T_74_data = rf[rf__T_74_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_84_addr = 5'h3;
  assign rf__T_84_data = rf[rf__T_84_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_94_addr = 5'h4;
  assign rf__T_94_data = rf[rf__T_94_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_104_addr = 5'h5;
  assign rf__T_104_data = rf[rf__T_104_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_114_addr = 5'h6;
  assign rf__T_114_data = rf[rf__T_114_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_124_addr = 5'h7;
  assign rf__T_124_data = rf[rf__T_124_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_134_addr = 5'h8;
  assign rf__T_134_data = rf[rf__T_134_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_144_addr = 5'h9;
  assign rf__T_144_data = rf[rf__T_144_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_154_addr = 5'ha;
  assign rf__T_154_data = rf[rf__T_154_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_164_addr = 5'hb;
  assign rf__T_164_data = rf[rf__T_164_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_174_addr = 5'hc;
  assign rf__T_174_data = rf[rf__T_174_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_184_addr = 5'hd;
  assign rf__T_184_data = rf[rf__T_184_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_194_addr = 5'he;
  assign rf__T_194_data = rf[rf__T_194_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_204_addr = 5'hf;
  assign rf__T_204_data = rf[rf__T_204_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_214_addr = 5'h10;
  assign rf__T_214_data = rf[rf__T_214_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_224_addr = 5'h11;
  assign rf__T_224_data = rf[rf__T_224_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_234_addr = 5'h12;
  assign rf__T_234_data = rf[rf__T_234_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_244_addr = 5'h13;
  assign rf__T_244_data = rf[rf__T_244_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_254_addr = 5'h14;
  assign rf__T_254_data = rf[rf__T_254_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_264_addr = 5'h15;
  assign rf__T_264_data = rf[rf__T_264_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_274_addr = 5'h16;
  assign rf__T_274_data = rf[rf__T_274_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_284_addr = 5'h17;
  assign rf__T_284_data = rf[rf__T_284_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_294_addr = 5'h18;
  assign rf__T_294_data = rf[rf__T_294_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_304_addr = 5'h19;
  assign rf__T_304_data = rf[rf__T_304_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_314_addr = 5'h1a;
  assign rf__T_314_data = rf[rf__T_314_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_324_addr = 5'h1b;
  assign rf__T_324_data = rf[rf__T_324_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_334_addr = 5'h1c;
  assign rf__T_334_data = rf[rf__T_334_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_344_addr = 5'h1d;
  assign rf__T_344_data = rf[rf__T_344_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_354_addr = 5'h1e;
  assign rf__T_354_data = rf[rf__T_354_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_364_addr = 5'h1f;
  assign rf__T_364_data = rf[rf__T_364_addr]; // @[riscvSingle.scala 539:17:@72.4]
  assign rf__T_32_data = io_wd3;
  assign rf__T_32_addr = io_wa3;
  assign rf__T_32_mask = 1'h1;
  assign rf__T_32_en = _T_26 & _T_30;
  assign rf__T_34_data = 32'h0;
  assign rf__T_34_addr = 5'h0;
  assign rf__T_34_mask = 1'h1;
  assign rf__T_34_en = _T_31 ? 1'h0 : 1'h1;
  assign _T_24 = ~ io_we3; // @[riscvSingle.scala 542:17:@74.4]
  assign _T_26 = _T_24 == 1'h0; // @[riscvSingle.scala 542:17:@75.4]
  assign _T_28 = io_wa3 == 5'h0; // @[riscvSingle.scala 542:34:@76.4]
  assign _T_30 = _T_28 == 1'h0; // @[riscvSingle.scala 542:25:@77.4]
  assign _T_31 = _T_26 & _T_30; // @[riscvSingle.scala 542:22:@78.4]
  assign _T_37 = io_ra1 == 5'h1f; // @[riscvSingle.scala 548:27:@87.4]
  assign _T_43 = io_ra2 == 5'h1f; // @[riscvSingle.scala 549:27:@93.4]
  assign _T_50 = reset == 1'h0; // @[riscvSingle.scala 560:11:@108.4]
  assign _T_52 = rf__T_54_data; // @[riscvSingle.scala 562:26:@112.4 riscvSingle.scala 563:16:@114.4]
  assign _T_62 = rf__T_64_data; // @[riscvSingle.scala 562:26:@125.4 riscvSingle.scala 563:16:@127.4]
  assign _T_72 = rf__T_74_data; // @[riscvSingle.scala 562:26:@138.4 riscvSingle.scala 563:16:@140.4]
  assign _T_82 = rf__T_84_data; // @[riscvSingle.scala 562:26:@151.4 riscvSingle.scala 563:16:@153.4]
  assign _T_92 = rf__T_94_data; // @[riscvSingle.scala 562:26:@164.4 riscvSingle.scala 563:16:@166.4]
  assign _T_102 = rf__T_104_data; // @[riscvSingle.scala 562:26:@177.4 riscvSingle.scala 563:16:@179.4]
  assign _T_112 = rf__T_114_data; // @[riscvSingle.scala 562:26:@190.4 riscvSingle.scala 563:16:@192.4]
  assign _T_122 = rf__T_124_data; // @[riscvSingle.scala 562:26:@203.4 riscvSingle.scala 563:16:@205.4]
  assign _T_132 = rf__T_134_data; // @[riscvSingle.scala 562:26:@216.4 riscvSingle.scala 563:16:@218.4]
  assign _T_142 = rf__T_144_data; // @[riscvSingle.scala 562:26:@229.4 riscvSingle.scala 563:16:@231.4]
  assign _T_152 = rf__T_154_data; // @[riscvSingle.scala 562:26:@242.4 riscvSingle.scala 563:16:@244.4]
  assign _T_162 = rf__T_164_data; // @[riscvSingle.scala 562:26:@255.4 riscvSingle.scala 563:16:@257.4]
  assign _T_172 = rf__T_174_data; // @[riscvSingle.scala 562:26:@268.4 riscvSingle.scala 563:16:@270.4]
  assign _T_182 = rf__T_184_data; // @[riscvSingle.scala 562:26:@281.4 riscvSingle.scala 563:16:@283.4]
  assign _T_192 = rf__T_194_data; // @[riscvSingle.scala 562:26:@294.4 riscvSingle.scala 563:16:@296.4]
  assign _T_202 = rf__T_204_data; // @[riscvSingle.scala 562:26:@307.4 riscvSingle.scala 563:16:@309.4]
  assign _T_212 = rf__T_214_data; // @[riscvSingle.scala 562:26:@320.4 riscvSingle.scala 563:16:@322.4]
  assign _T_222 = rf__T_224_data; // @[riscvSingle.scala 562:26:@333.4 riscvSingle.scala 563:16:@335.4]
  assign _T_232 = rf__T_234_data; // @[riscvSingle.scala 562:26:@346.4 riscvSingle.scala 563:16:@348.4]
  assign _T_242 = rf__T_244_data; // @[riscvSingle.scala 562:26:@359.4 riscvSingle.scala 563:16:@361.4]
  assign _T_252 = rf__T_254_data; // @[riscvSingle.scala 562:26:@372.4 riscvSingle.scala 563:16:@374.4]
  assign _T_262 = rf__T_264_data; // @[riscvSingle.scala 562:26:@385.4 riscvSingle.scala 563:16:@387.4]
  assign _T_272 = rf__T_274_data; // @[riscvSingle.scala 562:26:@398.4 riscvSingle.scala 563:16:@400.4]
  assign _T_282 = rf__T_284_data; // @[riscvSingle.scala 562:26:@411.4 riscvSingle.scala 563:16:@413.4]
  assign _T_292 = rf__T_294_data; // @[riscvSingle.scala 562:26:@424.4 riscvSingle.scala 563:16:@426.4]
  assign _T_302 = rf__T_304_data; // @[riscvSingle.scala 562:26:@437.4 riscvSingle.scala 563:16:@439.4]
  assign _T_312 = rf__T_314_data; // @[riscvSingle.scala 562:26:@450.4 riscvSingle.scala 563:16:@452.4]
  assign _T_322 = rf__T_324_data; // @[riscvSingle.scala 562:26:@463.4 riscvSingle.scala 563:16:@465.4]
  assign _T_332 = rf__T_334_data; // @[riscvSingle.scala 562:26:@476.4 riscvSingle.scala 563:16:@478.4]
  assign _T_342 = rf__T_344_data; // @[riscvSingle.scala 562:26:@489.4 riscvSingle.scala 563:16:@491.4]
  assign _T_352 = rf__T_354_data; // @[riscvSingle.scala 562:26:@502.4 riscvSingle.scala 563:16:@504.4]
  assign _T_362 = rf__T_364_data; // @[riscvSingle.scala 562:26:@515.4 riscvSingle.scala 563:16:@517.4]
  assign io_rd1 = _T_37 ? rf__T_39_data : rf__T_40_data; // @[riscvSingle.scala 548:12:@92.4]
  assign io_rd2 = _T_43 ? rf__T_45_data : rf__T_46_data; // @[riscvSingle.scala 549:12:@98.4]
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
      rf[rf__T_32_addr] <= rf__T_32_data; // @[riscvSingle.scala 539:17:@72.4]
    end
    if(rf__T_34_en & rf__T_34_mask) begin
      rf[rf__T_34_addr] <= rf__T_34_data; // @[riscvSingle.scala 539:17:@72.4]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"*********REGFILE*********\n"); // @[riscvSingle.scala 560:11:@110.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(0) = "); // @[riscvSingle.scala 564:15:@118.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_52); // @[riscvSingle.scala 565:15:@123.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(1) = "); // @[riscvSingle.scala 564:15:@131.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_62); // @[riscvSingle.scala 565:15:@136.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(2) = "); // @[riscvSingle.scala 564:15:@144.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_72); // @[riscvSingle.scala 565:15:@149.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(3) = "); // @[riscvSingle.scala 564:15:@157.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_82); // @[riscvSingle.scala 565:15:@162.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(4) = "); // @[riscvSingle.scala 564:15:@170.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_92); // @[riscvSingle.scala 565:15:@175.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(5) = "); // @[riscvSingle.scala 564:15:@183.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_102); // @[riscvSingle.scala 565:15:@188.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(6) = "); // @[riscvSingle.scala 564:15:@196.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_112); // @[riscvSingle.scala 565:15:@201.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(7) = "); // @[riscvSingle.scala 564:15:@209.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_122); // @[riscvSingle.scala 565:15:@214.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(8) = "); // @[riscvSingle.scala 564:15:@222.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_132); // @[riscvSingle.scala 565:15:@227.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(9) = "); // @[riscvSingle.scala 564:15:@235.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_142); // @[riscvSingle.scala 565:15:@240.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(10) = "); // @[riscvSingle.scala 564:15:@248.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_152); // @[riscvSingle.scala 565:15:@253.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(11) = "); // @[riscvSingle.scala 564:15:@261.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_162); // @[riscvSingle.scala 565:15:@266.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(12) = "); // @[riscvSingle.scala 564:15:@274.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_172); // @[riscvSingle.scala 565:15:@279.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(13) = "); // @[riscvSingle.scala 564:15:@287.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_182); // @[riscvSingle.scala 565:15:@292.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(14) = "); // @[riscvSingle.scala 564:15:@300.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_192); // @[riscvSingle.scala 565:15:@305.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(15) = "); // @[riscvSingle.scala 564:15:@313.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_202); // @[riscvSingle.scala 565:15:@318.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(16) = "); // @[riscvSingle.scala 564:15:@326.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_212); // @[riscvSingle.scala 565:15:@331.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(17) = "); // @[riscvSingle.scala 564:15:@339.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_222); // @[riscvSingle.scala 565:15:@344.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(18) = "); // @[riscvSingle.scala 564:15:@352.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_232); // @[riscvSingle.scala 565:15:@357.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(19) = "); // @[riscvSingle.scala 564:15:@365.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_242); // @[riscvSingle.scala 565:15:@370.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(20) = "); // @[riscvSingle.scala 564:15:@378.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_252); // @[riscvSingle.scala 565:15:@383.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(21) = "); // @[riscvSingle.scala 564:15:@391.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_262); // @[riscvSingle.scala 565:15:@396.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(22) = "); // @[riscvSingle.scala 564:15:@404.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_272); // @[riscvSingle.scala 565:15:@409.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(23) = "); // @[riscvSingle.scala 564:15:@417.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_282); // @[riscvSingle.scala 565:15:@422.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(24) = "); // @[riscvSingle.scala 564:15:@430.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_292); // @[riscvSingle.scala 565:15:@435.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(25) = "); // @[riscvSingle.scala 564:15:@443.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_302); // @[riscvSingle.scala 565:15:@448.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(26) = "); // @[riscvSingle.scala 564:15:@456.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_312); // @[riscvSingle.scala 565:15:@461.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(27) = "); // @[riscvSingle.scala 564:15:@469.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_322); // @[riscvSingle.scala 565:15:@474.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(28) = "); // @[riscvSingle.scala 564:15:@482.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_332); // @[riscvSingle.scala 565:15:@487.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(29) = "); // @[riscvSingle.scala 564:15:@495.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_342); // @[riscvSingle.scala 565:15:@500.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(30) = "); // @[riscvSingle.scala 564:15:@508.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_352); // @[riscvSingle.scala 565:15:@513.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"rf(31) = "); // @[riscvSingle.scala 564:15:@521.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_50) begin
          $fwrite(32'h80000002,"%d\n",_T_362); // @[riscvSingle.scala 565:15:@526.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module alu( // @[:@593.2]
  input         clock, // @[:@594.4]
  input         reset, // @[:@595.4]
  input  [31:0] io_a, // @[:@596.4]
  input  [31:0] io_b, // @[:@596.4]
  input  [3:0]  io_aluControl, // @[:@596.4]
  input         io_imm, // @[:@596.4]
  output [31:0] io_out, // @[:@596.4]
  output        io_zero, // @[:@596.4]
  output        io_lt, // @[:@596.4]
  output        io_gt // @[:@596.4]
);
  wire  _T_23; // @[riscvSingle.scala 609:23:@600.4]
  wire [31:0] _T_26; // @[riscvSingle.scala 610:23:@603.6]
  wire [32:0] _T_27; // @[riscvSingle.scala 610:21:@604.6]
  wire [31:0] _T_28; // @[riscvSingle.scala 610:21:@605.6]
  wire [31:0] _GEN_15; // @[riscvSingle.scala 610:29:@607.6]
  wire [32:0] _T_30; // @[riscvSingle.scala 610:29:@607.6]
  wire [31:0] _T_31; // @[riscvSingle.scala 610:29:@608.6]
  wire [32:0] _T_32; // @[riscvSingle.scala 612:21:@612.6]
  wire [31:0] _T_33; // @[riscvSingle.scala 612:21:@613.6]
  wire [31:0] sum; // @[riscvSingle.scala 609:35:@602.4]
  wire  _T_35; // @[riscvSingle.scala 615:25:@616.4]
  wire [31:0] _T_36; // @[riscvSingle.scala 616:24:@618.6]
  wire  _T_38; // @[riscvSingle.scala 617:31:@622.6]
  wire [31:0] _T_39; // @[riscvSingle.scala 618:24:@624.8]
  wire  _T_41; // @[riscvSingle.scala 619:31:@628.8]
  wire  _T_43; // @[riscvSingle.scala 621:31:@633.10]
  wire  _T_44; // @[riscvSingle.scala 622:22:@635.12]
  wire  _T_46; // @[riscvSingle.scala 622:22:@636.12]
  wire [4:0] _T_47; // @[riscvSingle.scala 623:35:@638.14]
  wire [62:0] _GEN_16; // @[riscvSingle.scala 623:28:@639.14]
  wire [62:0] _T_48; // @[riscvSingle.scala 623:28:@639.14]
  wire [18:0] _T_49; // @[riscvSingle.scala 625:35:@643.14]
  wire [524318:0] _GEN_17; // @[riscvSingle.scala 625:28:@644.14]
  wire [524318:0] _T_50; // @[riscvSingle.scala 625:28:@644.14]
  wire [524318:0] _GEN_1; // @[riscvSingle.scala 622:28:@637.12]
  wire  _T_52; // @[riscvSingle.scala 627:31:@649.12]
  wire [31:0] _T_57; // @[riscvSingle.scala 629:28:@655.16]
  wire [31:0] _T_59; // @[riscvSingle.scala 631:28:@660.16]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 628:28:@653.14]
  wire  _T_61; // @[riscvSingle.scala 633:31:@665.14]
  wire [31:0] _T_62; // @[riscvSingle.scala 634:24:@667.16]
  wire  _T_64; // @[riscvSingle.scala 635:31:@671.16]
  wire  _T_73; // @[riscvSingle.scala 641:30:@687.18]
  wire [63:0] _T_74; // @[riscvSingle.scala 642:24:@689.20]
  wire  _T_76; // @[riscvSingle.scala 643:30:@693.20]
  wire  _T_77; // @[riscvSingle.scala 644:18:@695.22]
  wire  _T_78; // @[riscvSingle.scala 644:23:@696.22]
  wire  _T_80; // @[riscvSingle.scala 644:23:@697.22]
  wire  _GEN_5; // @[riscvSingle.scala 643:45:@694.20]
  wire [63:0] _GEN_6; // @[riscvSingle.scala 641:45:@688.18]
  wire [63:0] _GEN_7; // @[riscvSingle.scala 635:46:@672.16]
  wire [63:0] _GEN_8; // @[riscvSingle.scala 633:46:@666.14]
  wire [63:0] _GEN_9; // @[riscvSingle.scala 627:46:@650.12]
  wire [524318:0] _GEN_10; // @[riscvSingle.scala 621:46:@634.10]
  wire [524318:0] _GEN_11; // @[riscvSingle.scala 619:46:@629.8]
  wire [524318:0] _GEN_12; // @[riscvSingle.scala 617:46:@623.6]
  wire [524318:0] _GEN_13; // @[riscvSingle.scala 615:40:@617.4]
  wire [32:0] _T_84; // @[riscvSingle.scala 653:15:@708.4]
  wire [32:0] _T_85; // @[riscvSingle.scala 653:15:@709.4]
  wire [31:0] _T_86; // @[riscvSingle.scala 653:15:@710.4]
  wire  _T_95; // @[riscvSingle.scala 671:11:@731.4]
  assign _T_23 = io_aluControl[3]; // @[riscvSingle.scala 609:23:@600.4]
  assign _T_26 = ~ io_b; // @[riscvSingle.scala 610:23:@603.6]
  assign _T_27 = io_a + _T_26; // @[riscvSingle.scala 610:21:@604.6]
  assign _T_28 = io_a + _T_26; // @[riscvSingle.scala 610:21:@605.6]
  assign _GEN_15 = {{31'd0}, _T_23}; // @[riscvSingle.scala 610:29:@607.6]
  assign _T_30 = _T_28 + _GEN_15; // @[riscvSingle.scala 610:29:@607.6]
  assign _T_31 = _T_28 + _GEN_15; // @[riscvSingle.scala 610:29:@608.6]
  assign _T_32 = io_a + io_b; // @[riscvSingle.scala 612:21:@612.6]
  assign _T_33 = io_a + io_b; // @[riscvSingle.scala 612:21:@613.6]
  assign sum = _T_23 ? _T_31 : _T_33; // @[riscvSingle.scala 609:35:@602.4]
  assign _T_35 = io_aluControl == 4'h0; // @[riscvSingle.scala 615:25:@616.4]
  assign _T_36 = io_a & io_b; // @[riscvSingle.scala 616:24:@618.6]
  assign _T_38 = io_aluControl == 4'h1; // @[riscvSingle.scala 617:31:@622.6]
  assign _T_39 = io_a | io_b; // @[riscvSingle.scala 618:24:@624.8]
  assign _T_41 = io_aluControl == 4'h2; // @[riscvSingle.scala 619:31:@628.8]
  assign _T_43 = io_aluControl == 4'h3; // @[riscvSingle.scala 621:31:@633.10]
  assign _T_44 = ~ io_imm; // @[riscvSingle.scala 622:22:@635.12]
  assign _T_46 = _T_44 == 1'h0; // @[riscvSingle.scala 622:22:@636.12]
  assign _T_47 = io_b[4:0]; // @[riscvSingle.scala 623:35:@638.14]
  assign _GEN_16 = {{31'd0}, io_a}; // @[riscvSingle.scala 623:28:@639.14]
  assign _T_48 = _GEN_16 << _T_47; // @[riscvSingle.scala 623:28:@639.14]
  assign _T_49 = io_b[18:0]; // @[riscvSingle.scala 625:35:@643.14]
  assign _GEN_17 = {{524287'd0}, io_a}; // @[riscvSingle.scala 625:28:@644.14]
  assign _T_50 = _GEN_17 << _T_49; // @[riscvSingle.scala 625:28:@644.14]
  assign _GEN_1 = _T_46 ? {{524256'd0}, _T_48} : _T_50; // @[riscvSingle.scala 622:28:@637.12]
  assign _T_52 = io_aluControl == 4'h4; // @[riscvSingle.scala 627:31:@649.12]
  assign _T_57 = io_a >> _T_47; // @[riscvSingle.scala 629:28:@655.16]
  assign _T_59 = io_a >> _T_49; // @[riscvSingle.scala 631:28:@660.16]
  assign _GEN_2 = _T_46 ? _T_57 : _T_59; // @[riscvSingle.scala 628:28:@653.14]
  assign _T_61 = io_aluControl == 4'h6; // @[riscvSingle.scala 633:31:@665.14]
  assign _T_62 = io_a ^ io_b; // @[riscvSingle.scala 634:24:@667.16]
  assign _T_64 = io_aluControl == 4'h7; // @[riscvSingle.scala 635:31:@671.16]
  assign _T_73 = io_aluControl == 4'h8; // @[riscvSingle.scala 641:30:@687.18]
  assign _T_74 = io_a * io_b; // @[riscvSingle.scala 642:24:@689.20]
  assign _T_76 = io_aluControl == 4'h9; // @[riscvSingle.scala 643:30:@693.20]
  assign _T_77 = sum[31]; // @[riscvSingle.scala 644:18:@695.22]
  assign _T_78 = ~ _T_77; // @[riscvSingle.scala 644:23:@696.22]
  assign _T_80 = _T_78 == 1'h0; // @[riscvSingle.scala 644:23:@697.22]
  assign _GEN_5 = _T_76 ? _T_80 : 1'h0; // @[riscvSingle.scala 643:45:@694.20]
  assign _GEN_6 = _T_73 ? _T_74 : {{63'd0}, _GEN_5}; // @[riscvSingle.scala 641:45:@688.18]
  assign _GEN_7 = _T_64 ? {{32'd0}, _GEN_2} : _GEN_6; // @[riscvSingle.scala 635:46:@672.16]
  assign _GEN_8 = _T_61 ? {{32'd0}, _T_62} : _GEN_7; // @[riscvSingle.scala 633:46:@666.14]
  assign _GEN_9 = _T_52 ? {{32'd0}, _GEN_2} : _GEN_8; // @[riscvSingle.scala 627:46:@650.12]
  assign _GEN_10 = _T_43 ? _GEN_1 : {{524255'd0}, _GEN_9}; // @[riscvSingle.scala 621:46:@634.10]
  assign _GEN_11 = _T_41 ? {{524287'd0}, sum} : _GEN_10; // @[riscvSingle.scala 619:46:@629.8]
  assign _GEN_12 = _T_38 ? {{524287'd0}, _T_39} : _GEN_11; // @[riscvSingle.scala 617:46:@623.6]
  assign _GEN_13 = _T_35 ? {{524287'd0}, _T_36} : _GEN_12; // @[riscvSingle.scala 615:40:@617.4]
  assign _T_84 = io_a - io_b; // @[riscvSingle.scala 653:15:@708.4]
  assign _T_85 = $unsigned(_T_84); // @[riscvSingle.scala 653:15:@709.4]
  assign _T_86 = _T_85[31:0]; // @[riscvSingle.scala 653:15:@710.4]
  assign _T_95 = reset == 1'h0; // @[riscvSingle.scala 671:11:@731.4]
  assign io_out = _GEN_13[31:0]; // @[riscvSingle.scala 616:16:@619.6 riscvSingle.scala 618:16:@625.8 riscvSingle.scala 620:16:@630.10 riscvSingle.scala 623:20:@640.14 riscvSingle.scala 625:20:@645.14 riscvSingle.scala 629:20:@656.16 riscvSingle.scala 631:20:@661.16 riscvSingle.scala 634:16:@668.16 riscvSingle.scala 637:20:@678.20 riscvSingle.scala 639:20:@683.20 riscvSingle.scala 642:16:@690.20 riscvSingle.scala 645:20:@699.24 riscvSingle.scala 647:20:@702.24 riscvSingle.scala 650:16:@706.22]
  assign io_zero = _T_86 == 32'h0; // @[riscvSingle.scala 655:17:@713.6 riscvSingle.scala 657:17:@716.6]
  assign io_lt = io_a < io_b; // @[riscvSingle.scala 660:11:@719.4]
  assign io_gt = io_a > io_b; // @[riscvSingle.scala 661:11:@721.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_95) begin
          $fwrite(32'h80000002,"\n\n\nalu Module:\n  a           : %x\n  b           : %x\n  sum         : %x\n  out         : %x\n  aluControl  : %b\n  zero        : %b\n  lt          : %b\n  gt          : %b\n///////////////////////////////////////////////////\n",io_a,io_b,sum,io_out,io_aluControl,io_zero,io_lt,io_gt); // @[riscvSingle.scala 671:11:@733.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module datapath( // @[:@736.2]
  input         clock, // @[:@737.4]
  input         reset, // @[:@738.4]
  input  [2:0]  io_regSrc, // @[:@739.4]
  input         io_regWrite, // @[:@739.4]
  input  [1:0]  io_immSrc, // @[:@739.4]
  input         io_aluSrc, // @[:@739.4]
  input  [3:0]  io_aluControl, // @[:@739.4]
  input         io_memToReg, // @[:@739.4]
  input  [31:0] io_instr, // @[:@739.4]
  input  [31:0] io_readData, // @[:@739.4]
  input         io_branchSrc, // @[:@739.4]
  output [31:0] io_pc, // @[:@739.4]
  output [31:0] io_dataAdd, // @[:@739.4]
  output [31:0] io_writeData, // @[:@739.4]
  output        io_zero, // @[:@739.4]
  output        io_lt, // @[:@739.4]
  output        io_gt // @[:@739.4]
);
  wire  ext1_clock; // @[riscvSingle.scala 401:22:@742.4]
  wire  ext1_reset; // @[riscvSingle.scala 401:22:@742.4]
  wire [11:0] ext1_io_instr12; // @[riscvSingle.scala 401:22:@742.4]
  wire [19:0] ext1_io_instr20; // @[riscvSingle.scala 401:22:@742.4]
  wire [1:0] ext1_io_immSrc; // @[riscvSingle.scala 401:22:@742.4]
  wire [31:0] ext1_io_extImm; // @[riscvSingle.scala 401:22:@742.4]
  wire  rf_clock; // @[riscvSingle.scala 402:20:@745.4]
  wire  rf_reset; // @[riscvSingle.scala 402:20:@745.4]
  wire  rf_io_we3; // @[riscvSingle.scala 402:20:@745.4]
  wire [4:0] rf_io_ra1; // @[riscvSingle.scala 402:20:@745.4]
  wire [4:0] rf_io_ra2; // @[riscvSingle.scala 402:20:@745.4]
  wire [4:0] rf_io_wa3; // @[riscvSingle.scala 402:20:@745.4]
  wire [31:0] rf_io_wd3; // @[riscvSingle.scala 402:20:@745.4]
  wire [31:0] rf_io_r31; // @[riscvSingle.scala 402:20:@745.4]
  wire [31:0] rf_io_rd1; // @[riscvSingle.scala 402:20:@745.4]
  wire [31:0] rf_io_rd2; // @[riscvSingle.scala 402:20:@745.4]
  wire  ext2_clock; // @[riscvSingle.scala 403:22:@748.4]
  wire  ext2_reset; // @[riscvSingle.scala 403:22:@748.4]
  wire [11:0] ext2_io_instr12; // @[riscvSingle.scala 403:22:@748.4]
  wire [19:0] ext2_io_instr20; // @[riscvSingle.scala 403:22:@748.4]
  wire [1:0] ext2_io_immSrc; // @[riscvSingle.scala 403:22:@748.4]
  wire [31:0] ext2_io_extImm; // @[riscvSingle.scala 403:22:@748.4]
  wire  alu_clock; // @[riscvSingle.scala 404:21:@751.4]
  wire  alu_reset; // @[riscvSingle.scala 404:21:@751.4]
  wire [31:0] alu_io_a; // @[riscvSingle.scala 404:21:@751.4]
  wire [31:0] alu_io_b; // @[riscvSingle.scala 404:21:@751.4]
  wire [3:0] alu_io_aluControl; // @[riscvSingle.scala 404:21:@751.4]
  wire  alu_io_imm; // @[riscvSingle.scala 404:21:@751.4]
  wire [31:0] alu_io_out; // @[riscvSingle.scala 404:21:@751.4]
  wire  alu_io_zero; // @[riscvSingle.scala 404:21:@751.4]
  wire  alu_io_lt; // @[riscvSingle.scala 404:21:@751.4]
  wire  alu_io_gt; // @[riscvSingle.scala 404:21:@751.4]
  wire  _T_52; // @[riscvSingle.scala 422:30:@768.4]
  wire  _T_53; // @[riscvSingle.scala 422:44:@769.4]
  wire [5:0] _T_54; // @[riscvSingle.scala 422:57:@770.4]
  wire [3:0] _T_55; // @[riscvSingle.scala 422:74:@771.4]
  wire [11:0] _T_58; // @[Cat.scala 30:58:@774.4]
  wire [7:0] _T_60; // @[riscvSingle.scala 423:42:@777.4]
  wire  _T_61; // @[riscvSingle.scala 423:59:@778.4]
  wire [9:0] _T_62; // @[riscvSingle.scala 423:73:@779.4]
  wire [19:0] _T_65; // @[Cat.scala 30:58:@782.4]
  reg [31:0] pcReg; // @[riscvSingle.scala 442:26:@796.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_74; // @[riscvSingle.scala 447:22:@801.4]
  wire [31:0] pcPlus4; // @[riscvSingle.scala 447:22:@802.4]
  wire [32:0] _T_77; // @[riscvSingle.scala 448:24:@804.4]
  wire [31:0] branchExtImm; // @[riscvSingle.scala 410:28:@758.4 riscvSingle.scala 430:18:@791.4]
  wire [32:0] _T_79; // @[riscvSingle.scala 449:30:@807.4]
  wire [31:0] pcBranch; // @[riscvSingle.scala 449:30:@808.4]
  wire  _T_81; // @[riscvSingle.scala 450:32:@810.4]
  wire  _T_83; // @[riscvSingle.scala 450:32:@811.4]
  wire [31:0] pcNext; // @[riscvSingle.scala 450:18:@812.4]
  wire [6:0] _T_85; // @[riscvSingle.scala 456:32:@816.4]
  wire [4:0] _T_86; // @[riscvSingle.scala 456:49:@817.4]
  wire [11:0] _T_87; // @[Cat.scala 30:58:@818.4]
  wire  _T_88; // @[riscvSingle.scala 457:31:@820.4]
  wire  _T_90; // @[riscvSingle.scala 457:31:@821.4]
  wire [31:0] extImm; // @[riscvSingle.scala 411:22:@759.4 riscvSingle.scala 431:12:@792.4]
  wire [31:0] memImmStore; // @[riscvSingle.scala 406:27:@754.4 riscvSingle.scala 456:17:@819.4]
  wire [31:0] memImm; // @[riscvSingle.scala 457:18:@822.4]
  wire [32:0] _T_92; // @[riscvSingle.scala 459:29:@825.4]
  wire [31:0] result; // @[riscvSingle.scala 462:18:@830.4]
  wire  _T_98; // @[riscvSingle.scala 465:25:@832.4]
  wire  _T_99; // @[riscvSingle.scala 465:29:@833.4]
  wire  _T_101; // @[riscvSingle.scala 465:29:@834.4]
  wire [4:0] _T_103; // @[riscvSingle.scala 465:55:@835.4]
  wire  _T_105; // @[riscvSingle.scala 466:25:@838.4]
  wire  _T_106; // @[riscvSingle.scala 466:29:@839.4]
  wire  _T_108; // @[riscvSingle.scala 466:29:@840.4]
  wire [4:0] _T_110; // @[riscvSingle.scala 466:59:@842.4]
  wire  _T_112; // @[riscvSingle.scala 467:25:@845.4]
  wire  _T_113; // @[riscvSingle.scala 467:29:@846.4]
  wire  _T_115; // @[riscvSingle.scala 467:29:@847.4]
  wire [31:0] ra4; // @[riscvSingle.scala 467:15:@848.4]
  wire  _T_118; // @[riscvSingle.scala 478:27:@858.4]
  wire  _T_120; // @[riscvSingle.scala 478:27:@859.4]
  wire  _T_124; // @[riscvSingle.scala 499:11:@880.4]
  wire [31:0] datapathMessage_aluOut; // @[riscvSingle.scala 400:31:@741.4 riscvSingle.scala 491:28:@871.4]
  wire [31:0] branchImm; // @[riscvSingle.scala 408:25:@756.4 riscvSingle.scala 422:15:@775.4]
  wire [31:0] jumpImm; // @[riscvSingle.scala 409:23:@757.4 riscvSingle.scala 423:13:@783.4]
  extend ext1 ( // @[riscvSingle.scala 401:22:@742.4]
    .clock(ext1_clock),
    .reset(ext1_reset),
    .io_instr12(ext1_io_instr12),
    .io_instr20(ext1_io_instr20),
    .io_immSrc(ext1_io_immSrc),
    .io_extImm(ext1_io_extImm)
  );
  regfile rf ( // @[riscvSingle.scala 402:20:@745.4]
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
  extend ext2 ( // @[riscvSingle.scala 403:22:@748.4]
    .clock(ext2_clock),
    .reset(ext2_reset),
    .io_instr12(ext2_io_instr12),
    .io_instr20(ext2_io_instr20),
    .io_immSrc(ext2_io_immSrc),
    .io_extImm(ext2_io_extImm)
  );
  alu alu ( // @[riscvSingle.scala 404:21:@751.4]
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
  assign _T_52 = io_instr[31]; // @[riscvSingle.scala 422:30:@768.4]
  assign _T_53 = io_instr[7]; // @[riscvSingle.scala 422:44:@769.4]
  assign _T_54 = io_instr[30:25]; // @[riscvSingle.scala 422:57:@770.4]
  assign _T_55 = io_instr[11:8]; // @[riscvSingle.scala 422:74:@771.4]
  assign _T_58 = {_T_52,_T_53,_T_54,_T_55}; // @[Cat.scala 30:58:@774.4]
  assign _T_60 = io_instr[19:12]; // @[riscvSingle.scala 423:42:@777.4]
  assign _T_61 = io_instr[20]; // @[riscvSingle.scala 423:59:@778.4]
  assign _T_62 = io_instr[30:21]; // @[riscvSingle.scala 423:73:@779.4]
  assign _T_65 = {_T_52,_T_60,_T_61,_T_62}; // @[Cat.scala 30:58:@782.4]
  assign _T_74 = pcReg + 32'h4; // @[riscvSingle.scala 447:22:@801.4]
  assign pcPlus4 = pcReg + 32'h4; // @[riscvSingle.scala 447:22:@802.4]
  assign _T_77 = pcPlus4 + 32'h4; // @[riscvSingle.scala 448:24:@804.4]
  assign branchExtImm = ext1_io_extImm; // @[riscvSingle.scala 410:28:@758.4 riscvSingle.scala 430:18:@791.4]
  assign _T_79 = branchExtImm + pcReg; // @[riscvSingle.scala 449:30:@807.4]
  assign pcBranch = branchExtImm + pcReg; // @[riscvSingle.scala 449:30:@808.4]
  assign _T_81 = ~ io_branchSrc; // @[riscvSingle.scala 450:32:@810.4]
  assign _T_83 = _T_81 == 1'h0; // @[riscvSingle.scala 450:32:@811.4]
  assign pcNext = _T_83 ? pcBranch : pcPlus4; // @[riscvSingle.scala 450:18:@812.4]
  assign _T_85 = io_instr[31:25]; // @[riscvSingle.scala 456:32:@816.4]
  assign _T_86 = io_instr[11:7]; // @[riscvSingle.scala 456:49:@817.4]
  assign _T_87 = {_T_85,_T_86}; // @[Cat.scala 30:58:@818.4]
  assign _T_88 = ~ io_memToReg; // @[riscvSingle.scala 457:31:@820.4]
  assign _T_90 = _T_88 == 1'h0; // @[riscvSingle.scala 457:31:@821.4]
  assign extImm = ext2_io_extImm; // @[riscvSingle.scala 411:22:@759.4 riscvSingle.scala 431:12:@792.4]
  assign memImmStore = {{20'd0}, _T_87}; // @[riscvSingle.scala 406:27:@754.4 riscvSingle.scala 456:17:@819.4]
  assign memImm = _T_90 ? extImm : memImmStore; // @[riscvSingle.scala 457:18:@822.4]
  assign _T_92 = rf_io_rd1 + memImm; // @[riscvSingle.scala 459:29:@825.4]
  assign result = _T_90 ? io_readData : alu_io_out; // @[riscvSingle.scala 462:18:@830.4]
  assign _T_98 = io_regSrc[0]; // @[riscvSingle.scala 465:25:@832.4]
  assign _T_99 = ~ _T_98; // @[riscvSingle.scala 465:29:@833.4]
  assign _T_101 = _T_99 == 1'h0; // @[riscvSingle.scala 465:29:@834.4]
  assign _T_103 = io_instr[19:15]; // @[riscvSingle.scala 465:55:@835.4]
  assign _T_105 = io_regSrc[1]; // @[riscvSingle.scala 466:25:@838.4]
  assign _T_106 = ~ _T_105; // @[riscvSingle.scala 466:29:@839.4]
  assign _T_108 = _T_106 == 1'h0; // @[riscvSingle.scala 466:29:@840.4]
  assign _T_110 = io_instr[24:20]; // @[riscvSingle.scala 466:59:@842.4]
  assign _T_112 = io_regSrc[2]; // @[riscvSingle.scala 467:25:@845.4]
  assign _T_113 = ~ _T_112; // @[riscvSingle.scala 467:29:@846.4]
  assign _T_115 = _T_113 == 1'h0; // @[riscvSingle.scala 467:29:@847.4]
  assign ra4 = _T_115 ? pcPlus4 : result; // @[riscvSingle.scala 467:15:@848.4]
  assign _T_118 = ~ io_aluSrc; // @[riscvSingle.scala 478:27:@858.4]
  assign _T_120 = _T_118 == 1'h0; // @[riscvSingle.scala 478:27:@859.4]
  assign _T_124 = reset == 1'h0; // @[riscvSingle.scala 499:11:@880.4]
  assign datapathMessage_aluOut = alu_io_out; // @[riscvSingle.scala 400:31:@741.4 riscvSingle.scala 491:28:@871.4]
  assign branchImm = {{20'd0}, _T_58}; // @[riscvSingle.scala 408:25:@756.4 riscvSingle.scala 422:15:@775.4]
  assign jumpImm = {{12'd0}, _T_65}; // @[riscvSingle.scala 409:23:@757.4 riscvSingle.scala 423:13:@783.4]
  assign io_pc = pcReg; // @[riscvSingle.scala 452:11:@815.4]
  assign io_dataAdd = rf_io_rd1 + memImm; // @[riscvSingle.scala 459:16:@827.4]
  assign io_writeData = rf_io_rd2; // @[riscvSingle.scala 475:18:@857.4]
  assign io_zero = alu_io_zero; // @[riscvSingle.scala 485:13:@866.4]
  assign io_lt = alu_io_lt; // @[riscvSingle.scala 486:11:@867.4]
  assign io_gt = alu_io_gt; // @[riscvSingle.scala 487:11:@868.4]
  assign ext1_clock = clock; // @[:@743.4]
  assign ext1_reset = reset; // @[:@744.4]
  assign ext1_io_instr12 = branchImm[11:0]; // @[riscvSingle.scala 424:21:@784.4]
  assign ext1_io_instr20 = jumpImm[19:0]; // @[riscvSingle.scala 425:21:@785.4]
  assign ext1_io_immSrc = io_immSrc; // @[riscvSingle.scala 426:20:@786.4]
  assign rf_clock = clock; // @[:@746.4]
  assign rf_reset = reset; // @[:@747.4]
  assign rf_io_we3 = io_regWrite; // @[riscvSingle.scala 469:15:@850.4]
  assign rf_io_ra1 = _T_101 ? 5'h1f : _T_103; // @[riscvSingle.scala 470:15:@851.4]
  assign rf_io_ra2 = _T_108 ? _T_86 : _T_110; // @[riscvSingle.scala 471:15:@852.4]
  assign rf_io_wa3 = io_instr[11:7]; // @[riscvSingle.scala 472:15:@854.4]
  assign rf_io_wd3 = _T_115 ? pcPlus4 : result; // @[riscvSingle.scala 473:15:@855.4]
  assign rf_io_r31 = pcPlus4 + 32'h4; // @[riscvSingle.scala 474:15:@856.4]
  assign ext2_clock = clock; // @[:@749.4]
  assign ext2_reset = reset; // @[:@750.4]
  assign ext2_io_instr12 = io_instr[31:20]; // @[riscvSingle.scala 427:21:@788.4]
  assign ext2_io_instr20 = jumpImm[19:0]; // @[riscvSingle.scala 428:21:@789.4]
  assign ext2_io_immSrc = io_immSrc; // @[riscvSingle.scala 429:20:@790.4]
  assign alu_clock = clock; // @[:@752.4]
  assign alu_reset = reset; // @[:@753.4]
  assign alu_io_a = rf_io_rd1; // @[riscvSingle.scala 481:14:@862.4]
  assign alu_io_b = _T_120 ? extImm : rf_io_rd2; // @[riscvSingle.scala 482:14:@863.4]
  assign alu_io_aluControl = io_aluControl; // @[riscvSingle.scala 483:23:@864.4]
  assign alu_io_imm = io_aluSrc; // @[riscvSingle.scala 484:16:@865.4]
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
      if (_T_83) begin
        pcReg <= pcBranch;
      end else begin
        pcReg <= pcPlus4;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_124) begin
          $fwrite(32'h80000002,"\n\n\ndatapath Module:\n  memToReg        : %b\n  readData        : %x\n  aluOut          : %x\n  result          : %x\n  pcNext          : %x\n  branchExtImm    : %x\n  pcBranch        : %x\n  pcPlus4         : %x\n  branchSrc       : %b\n  ra4             : %x\n///////////////////////////////////////////////////\n",io_memToReg,io_readData,datapathMessage_aluOut,result,pcNext,branchExtImm,pcBranch,pcPlus4,io_branchSrc,ra4); // @[riscvSingle.scala 499:11:@882.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module decoder( // @[:@885.2]
  input        clock, // @[:@886.4]
  input        reset, // @[:@887.4]
  input  [6:0] io_opcode, // @[:@888.4]
  input  [6:0] io_funct7, // @[:@888.4]
  input  [2:0] io_funct3, // @[:@888.4]
  output [2:0] io_regSrc, // @[:@888.4]
  output       io_regW, // @[:@888.4]
  output [1:0] io_immSrc, // @[:@888.4]
  output       io_aluSrc, // @[:@888.4]
  output [3:0] io_aluControl, // @[:@888.4]
  output       io_memW, // @[:@888.4]
  output       io_branchSrc, // @[:@888.4]
  input        io_zero, // @[:@888.4]
  input        io_lt, // @[:@888.4]
  input        io_gt // @[:@888.4]
);
  wire  _T_37; // @[riscvSingle.scala 209:20:@891.4]
  wire  _T_46; // @[riscvSingle.scala 218:24:@900.6]
  wire  _T_48; // @[riscvSingle.scala 219:28:@902.8]
  wire  _T_51; // @[riscvSingle.scala 221:34:@907.10]
  wire  _T_54; // @[riscvSingle.scala 223:34:@912.12]
  wire  _T_57; // @[riscvSingle.scala 225:34:@917.14]
  wire  _T_60; // @[riscvSingle.scala 227:34:@922.16]
  wire  _T_63; // @[riscvSingle.scala 229:34:@927.18]
  wire  _T_66; // @[riscvSingle.scala 231:34:@932.20]
  wire [2:0] _GEN_1; // @[riscvSingle.scala 229:48:@928.18]
  wire [2:0] _GEN_2; // @[riscvSingle.scala 227:48:@923.16]
  wire [2:0] _GEN_3; // @[riscvSingle.scala 225:48:@918.14]
  wire [3:0] _GEN_4; // @[riscvSingle.scala 223:48:@913.12]
  wire [3:0] _GEN_5; // @[riscvSingle.scala 221:48:@908.10]
  wire [3:0] _GEN_6; // @[riscvSingle.scala 219:42:@903.8]
  wire [3:0] _GEN_7; // @[riscvSingle.scala 237:42:@942.8]
  wire [3:0] _GEN_8; // @[riscvSingle.scala 218:42:@901.6]
  wire  _T_74; // @[riscvSingle.scala 243:27:@951.6]
  wire  _T_105; // @[riscvSingle.scala 269:27:@999.8]
  wire  _T_115; // @[riscvSingle.scala 278:27:@1011.10]
  wire  _T_125; // @[riscvSingle.scala 287:27:@1023.12]
  wire  _T_137; // @[riscvSingle.scala 296:37:@1034.14]
  wire  _T_142; // @[riscvSingle.scala 298:53:@1040.16]
  wire  _T_143; // @[riscvSingle.scala 298:43:@1041.16]
  wire  _T_149; // @[riscvSingle.scala 300:43:@1048.18]
  wire  _T_155; // @[riscvSingle.scala 302:43:@1055.20]
  wire  _T_161; // @[riscvSingle.scala 304:43:@1062.22]
  wire  _T_164; // @[riscvSingle.scala 306:30:@1067.24]
  wire  _T_167; // @[riscvSingle.scala 306:43:@1069.24]
  wire  _GEN_17; // @[riscvSingle.scala 304:60:@1063.22]
  wire  _GEN_18; // @[riscvSingle.scala 302:60:@1056.20]
  wire  _GEN_19; // @[riscvSingle.scala 300:60:@1049.18]
  wire  _GEN_20; // @[riscvSingle.scala 298:62:@1042.16]
  wire  _GEN_21; // @[riscvSingle.scala 296:55:@1035.14]
  wire  _T_171; // @[riscvSingle.scala 312:27:@1078.14]
  wire [2:0] _GEN_23; // @[riscvSingle.scala 312:45:@1079.14]
  wire [1:0] _GEN_24; // @[riscvSingle.scala 312:45:@1079.14]
  wire [2:0] _GEN_27; // @[riscvSingle.scala 287:45:@1024.12]
  wire [1:0] _GEN_28; // @[riscvSingle.scala 287:45:@1024.12]
  wire  _GEN_29; // @[riscvSingle.scala 287:45:@1024.12]
  wire [2:0] _GEN_31; // @[riscvSingle.scala 287:45:@1024.12]
  wire  _GEN_32; // @[riscvSingle.scala 287:45:@1024.12]
  wire [2:0] _GEN_33; // @[riscvSingle.scala 278:45:@1012.10]
  wire [1:0] _GEN_34; // @[riscvSingle.scala 278:45:@1012.10]
  wire  _GEN_35; // @[riscvSingle.scala 278:45:@1012.10]
  wire  _GEN_37; // @[riscvSingle.scala 278:45:@1012.10]
  wire  _GEN_39; // @[riscvSingle.scala 278:45:@1012.10]
  wire [2:0] _GEN_40; // @[riscvSingle.scala 278:45:@1012.10]
  wire [2:0] _GEN_41; // @[riscvSingle.scala 269:45:@1000.8]
  wire [1:0] _GEN_42; // @[riscvSingle.scala 269:45:@1000.8]
  wire  _GEN_43; // @[riscvSingle.scala 269:45:@1000.8]
  wire  _GEN_45; // @[riscvSingle.scala 269:45:@1000.8]
  wire  _GEN_46; // @[riscvSingle.scala 269:45:@1000.8]
  wire  _GEN_47; // @[riscvSingle.scala 269:45:@1000.8]
  wire [2:0] _GEN_48; // @[riscvSingle.scala 269:45:@1000.8]
  wire [2:0] _GEN_49; // @[riscvSingle.scala 243:45:@952.6]
  wire [1:0] _GEN_50; // @[riscvSingle.scala 243:45:@952.6]
  wire  _GEN_51; // @[riscvSingle.scala 243:45:@952.6]
  wire  _GEN_53; // @[riscvSingle.scala 243:45:@952.6]
  wire  _GEN_54; // @[riscvSingle.scala 243:45:@952.6]
  wire  _GEN_55; // @[riscvSingle.scala 243:45:@952.6]
  wire [3:0] _GEN_56; // @[riscvSingle.scala 243:45:@952.6]
  wire  _T_200; // @[riscvSingle.scala 348:11:@1118.4]
  assign _T_37 = io_opcode == 7'h33; // @[riscvSingle.scala 209:20:@891.4]
  assign _T_46 = io_funct7 == 7'h0; // @[riscvSingle.scala 218:24:@900.6]
  assign _T_48 = io_funct3 == 3'h0; // @[riscvSingle.scala 219:28:@902.8]
  assign _T_51 = io_funct3 == 3'h1; // @[riscvSingle.scala 221:34:@907.10]
  assign _T_54 = io_funct3 == 3'h2; // @[riscvSingle.scala 223:34:@912.12]
  assign _T_57 = io_funct3 == 3'h3; // @[riscvSingle.scala 225:34:@917.14]
  assign _T_60 = io_funct3 == 3'h4; // @[riscvSingle.scala 227:34:@922.16]
  assign _T_63 = io_funct3 == 3'h5; // @[riscvSingle.scala 229:34:@927.18]
  assign _T_66 = io_funct3 == 3'h6; // @[riscvSingle.scala 231:34:@932.20]
  assign _GEN_1 = _T_63 ? 3'h7 : {{2'd0}, _T_66}; // @[riscvSingle.scala 229:48:@928.18]
  assign _GEN_2 = _T_60 ? 3'h6 : _GEN_1; // @[riscvSingle.scala 227:48:@923.16]
  assign _GEN_3 = _T_57 ? 3'h5 : _GEN_2; // @[riscvSingle.scala 225:48:@918.14]
  assign _GEN_4 = _T_54 ? 4'h9 : {{1'd0}, _GEN_3}; // @[riscvSingle.scala 223:48:@913.12]
  assign _GEN_5 = _T_51 ? 4'h3 : _GEN_4; // @[riscvSingle.scala 221:48:@908.10]
  assign _GEN_6 = _T_48 ? 4'h2 : _GEN_5; // @[riscvSingle.scala 219:42:@903.8]
  assign _GEN_7 = _T_48 ? 4'h8 : 4'h4; // @[riscvSingle.scala 237:42:@942.8]
  assign _GEN_8 = _T_46 ? _GEN_6 : _GEN_7; // @[riscvSingle.scala 218:42:@901.6]
  assign _T_74 = io_opcode == 7'h13; // @[riscvSingle.scala 243:27:@951.6]
  assign _T_105 = io_opcode == 7'h3; // @[riscvSingle.scala 269:27:@999.8]
  assign _T_115 = io_opcode == 7'h23; // @[riscvSingle.scala 278:27:@1011.10]
  assign _T_125 = io_opcode == 7'h63; // @[riscvSingle.scala 287:27:@1023.12]
  assign _T_137 = _T_48 & io_zero; // @[riscvSingle.scala 296:37:@1034.14]
  assign _T_142 = io_zero == 1'h0; // @[riscvSingle.scala 298:53:@1040.16]
  assign _T_143 = _T_51 & _T_142; // @[riscvSingle.scala 298:43:@1041.16]
  assign _T_149 = _T_60 & io_lt; // @[riscvSingle.scala 300:43:@1048.18]
  assign _T_155 = _T_63 & io_gt; // @[riscvSingle.scala 302:43:@1055.20]
  assign _T_161 = _T_66 & io_lt; // @[riscvSingle.scala 304:43:@1062.22]
  assign _T_164 = io_funct3 == 3'h7; // @[riscvSingle.scala 306:30:@1067.24]
  assign _T_167 = _T_164 & io_gt; // @[riscvSingle.scala 306:43:@1069.24]
  assign _GEN_17 = _T_161 ? 1'h1 : _T_167; // @[riscvSingle.scala 304:60:@1063.22]
  assign _GEN_18 = _T_155 ? 1'h1 : _GEN_17; // @[riscvSingle.scala 302:60:@1056.20]
  assign _GEN_19 = _T_149 ? 1'h1 : _GEN_18; // @[riscvSingle.scala 300:60:@1049.18]
  assign _GEN_20 = _T_143 ? 1'h1 : _GEN_19; // @[riscvSingle.scala 298:62:@1042.16]
  assign _GEN_21 = _T_137 ? 1'h1 : _GEN_20; // @[riscvSingle.scala 296:55:@1035.14]
  assign _T_171 = io_opcode == 7'h6f; // @[riscvSingle.scala 312:27:@1078.14]
  assign _GEN_23 = _T_171 ? 3'h4 : 3'h0; // @[riscvSingle.scala 312:45:@1079.14]
  assign _GEN_24 = _T_171 ? 2'h2 : 2'h0; // @[riscvSingle.scala 312:45:@1079.14]
  assign _GEN_27 = _T_125 ? 3'h0 : _GEN_23; // @[riscvSingle.scala 287:45:@1024.12]
  assign _GEN_28 = _T_125 ? 2'h1 : _GEN_24; // @[riscvSingle.scala 287:45:@1024.12]
  assign _GEN_29 = _T_125 ? 1'h0 : _T_171; // @[riscvSingle.scala 287:45:@1024.12]
  assign _GEN_31 = _T_125 ? 3'h4 : 3'h0; // @[riscvSingle.scala 287:45:@1024.12]
  assign _GEN_32 = _T_125 ? _GEN_21 : _T_171; // @[riscvSingle.scala 287:45:@1024.12]
  assign _GEN_33 = _T_115 ? 3'h0 : _GEN_27; // @[riscvSingle.scala 278:45:@1012.10]
  assign _GEN_34 = _T_115 ? 2'h0 : _GEN_28; // @[riscvSingle.scala 278:45:@1012.10]
  assign _GEN_35 = _T_115 ? 1'h1 : _GEN_29; // @[riscvSingle.scala 278:45:@1012.10]
  assign _GEN_37 = _T_115 ? 1'h0 : _GEN_29; // @[riscvSingle.scala 278:45:@1012.10]
  assign _GEN_39 = _T_115 ? 1'h0 : _GEN_32; // @[riscvSingle.scala 278:45:@1012.10]
  assign _GEN_40 = _T_115 ? 3'h0 : _GEN_31; // @[riscvSingle.scala 278:45:@1012.10]
  assign _GEN_41 = _T_105 ? 3'h0 : _GEN_33; // @[riscvSingle.scala 269:45:@1000.8]
  assign _GEN_42 = _T_105 ? 2'h0 : _GEN_34; // @[riscvSingle.scala 269:45:@1000.8]
  assign _GEN_43 = _T_105 ? 1'h1 : _GEN_35; // @[riscvSingle.scala 269:45:@1000.8]
  assign _GEN_45 = _T_105 ? 1'h1 : _GEN_37; // @[riscvSingle.scala 269:45:@1000.8]
  assign _GEN_46 = _T_105 ? 1'h1 : _T_115; // @[riscvSingle.scala 269:45:@1000.8]
  assign _GEN_47 = _T_105 ? 1'h0 : _GEN_39; // @[riscvSingle.scala 269:45:@1000.8]
  assign _GEN_48 = _T_105 ? 3'h0 : _GEN_40; // @[riscvSingle.scala 269:45:@1000.8]
  assign _GEN_49 = _T_74 ? 3'h0 : _GEN_41; // @[riscvSingle.scala 243:45:@952.6]
  assign _GEN_50 = _T_74 ? 2'h0 : _GEN_42; // @[riscvSingle.scala 243:45:@952.6]
  assign _GEN_51 = _T_74 ? 1'h1 : _GEN_43; // @[riscvSingle.scala 243:45:@952.6]
  assign _GEN_53 = _T_74 ? 1'h1 : _GEN_45; // @[riscvSingle.scala 243:45:@952.6]
  assign _GEN_54 = _T_74 ? 1'h0 : _GEN_46; // @[riscvSingle.scala 243:45:@952.6]
  assign _GEN_55 = _T_74 ? 1'h0 : _GEN_47; // @[riscvSingle.scala 243:45:@952.6]
  assign _GEN_56 = _T_74 ? _GEN_6 : {{1'd0}, _GEN_48}; // @[riscvSingle.scala 243:45:@952.6]
  assign _T_200 = reset == 1'h0; // @[riscvSingle.scala 348:11:@1118.4]
  assign io_regSrc = _T_37 ? 3'h0 : _GEN_49; // @[riscvSingle.scala 210:19:@893.6 riscvSingle.scala 244:19:@953.8 riscvSingle.scala 270:19:@1001.10 riscvSingle.scala 279:19:@1013.12 riscvSingle.scala 288:19:@1025.14 riscvSingle.scala 313:19:@1080.16 riscvSingle.scala 322:19:@1092.18 riscvSingle.scala 331:19:@1102.18]
  assign io_regW = _T_37 ? 1'h1 : _GEN_53; // @[riscvSingle.scala 214:17:@897.6 riscvSingle.scala 248:17:@957.8 riscvSingle.scala 274:17:@1005.10 riscvSingle.scala 283:17:@1017.12 riscvSingle.scala 292:17:@1029.14 riscvSingle.scala 317:17:@1084.16 riscvSingle.scala 326:17:@1096.18 riscvSingle.scala 335:17:@1106.18]
  assign io_immSrc = _T_37 ? 2'h0 : _GEN_50; // @[riscvSingle.scala 211:19:@894.6 riscvSingle.scala 245:19:@954.8 riscvSingle.scala 271:19:@1002.10 riscvSingle.scala 280:19:@1014.12 riscvSingle.scala 289:19:@1026.14 riscvSingle.scala 314:19:@1081.16 riscvSingle.scala 323:19:@1093.18 riscvSingle.scala 332:19:@1103.18]
  assign io_aluSrc = _T_37 ? 1'h0 : _GEN_51; // @[riscvSingle.scala 212:19:@895.6 riscvSingle.scala 246:19:@955.8 riscvSingle.scala 272:19:@1003.10 riscvSingle.scala 281:19:@1015.12 riscvSingle.scala 290:19:@1027.14 riscvSingle.scala 315:19:@1082.16 riscvSingle.scala 324:19:@1094.18 riscvSingle.scala 333:19:@1104.18]
  assign io_aluControl = _T_37 ? _GEN_8 : _GEN_56; // @[riscvSingle.scala 220:31:@904.10 riscvSingle.scala 222:31:@909.12 riscvSingle.scala 224:31:@914.14 riscvSingle.scala 226:31:@919.16 riscvSingle.scala 228:31:@924.18 riscvSingle.scala 230:31:@929.20 riscvSingle.scala 232:31:@934.22 riscvSingle.scala 234:31:@937.22 riscvSingle.scala 238:31:@943.10 riscvSingle.scala 240:31:@946.10 riscvSingle.scala 253:27:@962.10 riscvSingle.scala 255:27:@967.12 riscvSingle.scala 257:27:@972.14 riscvSingle.scala 259:27:@977.16 riscvSingle.scala 261:27:@982.18 riscvSingle.scala 263:27:@987.20 riscvSingle.scala 265:27:@992.22 riscvSingle.scala 267:27:@995.22 riscvSingle.scala 277:23:@1008.10 riscvSingle.scala 286:23:@1020.12 riscvSingle.scala 294:23:@1031.14 riscvSingle.scala 320:23:@1087.16 riscvSingle.scala 329:23:@1099.18 riscvSingle.scala 338:23:@1109.18]
  assign io_memW = _T_37 ? 1'h0 : _GEN_54; // @[riscvSingle.scala 215:17:@898.6 riscvSingle.scala 249:17:@958.8 riscvSingle.scala 275:17:@1006.10 riscvSingle.scala 284:17:@1018.12 riscvSingle.scala 293:17:@1030.14 riscvSingle.scala 318:17:@1085.16 riscvSingle.scala 327:17:@1097.18 riscvSingle.scala 336:17:@1107.18]
  assign io_branchSrc = _T_37 ? 1'h0 : _GEN_55; // @[riscvSingle.scala 216:22:@899.6 riscvSingle.scala 250:22:@959.8 riscvSingle.scala 276:22:@1007.10 riscvSingle.scala 285:22:@1019.12 riscvSingle.scala 297:26:@1036.16 riscvSingle.scala 299:26:@1043.18 riscvSingle.scala 301:26:@1050.20 riscvSingle.scala 303:26:@1057.22 riscvSingle.scala 305:26:@1064.24 riscvSingle.scala 307:26:@1071.26 riscvSingle.scala 309:26:@1074.26 riscvSingle.scala 319:22:@1086.16 riscvSingle.scala 328:22:@1098.18 riscvSingle.scala 337:22:@1108.18]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_200) begin
          $fwrite(32'h80000002,"\n\n\ndecoder Module:\n  branchSrc   : %b\n  opcode      : %b\n  funct3      : %b\n  zero        : %b\n  lt          : %b\n  gt          : %b\n///////////////////////////////////////////////////\n",io_branchSrc,io_opcode,io_funct3,io_zero,io_lt,io_gt); // @[riscvSingle.scala 348:11:@1120.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module riscv( // @[:@1123.2]
  input         clock, // @[:@1124.4]
  input         reset, // @[:@1125.4]
  input  [31:0] io_instr, // @[:@1126.4]
  input  [31:0] io_readData, // @[:@1126.4]
  output [31:0] io_pc, // @[:@1126.4]
  output        io_memWrite, // @[:@1126.4]
  output [31:0] io_aluResult, // @[:@1126.4]
  output [31:0] io_writeData // @[:@1126.4]
);
  wire  dp_clock; // @[riscvSingle.scala 81:20:@1129.4]
  wire  dp_reset; // @[riscvSingle.scala 81:20:@1129.4]
  wire [2:0] dp_io_regSrc; // @[riscvSingle.scala 81:20:@1129.4]
  wire  dp_io_regWrite; // @[riscvSingle.scala 81:20:@1129.4]
  wire [1:0] dp_io_immSrc; // @[riscvSingle.scala 81:20:@1129.4]
  wire  dp_io_aluSrc; // @[riscvSingle.scala 81:20:@1129.4]
  wire [3:0] dp_io_aluControl; // @[riscvSingle.scala 81:20:@1129.4]
  wire  dp_io_memToReg; // @[riscvSingle.scala 81:20:@1129.4]
  wire [31:0] dp_io_instr; // @[riscvSingle.scala 81:20:@1129.4]
  wire [31:0] dp_io_readData; // @[riscvSingle.scala 81:20:@1129.4]
  wire  dp_io_branchSrc; // @[riscvSingle.scala 81:20:@1129.4]
  wire [31:0] dp_io_pc; // @[riscvSingle.scala 81:20:@1129.4]
  wire [31:0] dp_io_dataAdd; // @[riscvSingle.scala 81:20:@1129.4]
  wire [31:0] dp_io_writeData; // @[riscvSingle.scala 81:20:@1129.4]
  wire  dp_io_zero; // @[riscvSingle.scala 81:20:@1129.4]
  wire  dp_io_lt; // @[riscvSingle.scala 81:20:@1129.4]
  wire  dp_io_gt; // @[riscvSingle.scala 81:20:@1129.4]
  wire  d_clock; // @[riscvSingle.scala 82:19:@1132.4]
  wire  d_reset; // @[riscvSingle.scala 82:19:@1132.4]
  wire [6:0] d_io_opcode; // @[riscvSingle.scala 82:19:@1132.4]
  wire [6:0] d_io_funct7; // @[riscvSingle.scala 82:19:@1132.4]
  wire [2:0] d_io_funct3; // @[riscvSingle.scala 82:19:@1132.4]
  wire [2:0] d_io_regSrc; // @[riscvSingle.scala 82:19:@1132.4]
  wire  d_io_regW; // @[riscvSingle.scala 82:19:@1132.4]
  wire [1:0] d_io_immSrc; // @[riscvSingle.scala 82:19:@1132.4]
  wire  d_io_aluSrc; // @[riscvSingle.scala 82:19:@1132.4]
  wire [3:0] d_io_aluControl; // @[riscvSingle.scala 82:19:@1132.4]
  wire  d_io_memW; // @[riscvSingle.scala 82:19:@1132.4]
  wire  d_io_branchSrc; // @[riscvSingle.scala 82:19:@1132.4]
  wire  d_io_zero; // @[riscvSingle.scala 82:19:@1132.4]
  wire  d_io_lt; // @[riscvSingle.scala 82:19:@1132.4]
  wire  d_io_gt; // @[riscvSingle.scala 82:19:@1132.4]
  wire  _T_22; // @[riscvSingle.scala 88:11:@1138.4]
  datapath dp ( // @[riscvSingle.scala 81:20:@1129.4]
    .clock(dp_clock),
    .reset(dp_reset),
    .io_regSrc(dp_io_regSrc),
    .io_regWrite(dp_io_regWrite),
    .io_immSrc(dp_io_immSrc),
    .io_aluSrc(dp_io_aluSrc),
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
  decoder d ( // @[riscvSingle.scala 82:19:@1132.4]
    .clock(d_clock),
    .reset(d_reset),
    .io_opcode(d_io_opcode),
    .io_funct7(d_io_funct7),
    .io_funct3(d_io_funct3),
    .io_regSrc(d_io_regSrc),
    .io_regW(d_io_regW),
    .io_immSrc(d_io_immSrc),
    .io_aluSrc(d_io_aluSrc),
    .io_aluControl(d_io_aluControl),
    .io_memW(d_io_memW),
    .io_branchSrc(d_io_branchSrc),
    .io_zero(d_io_zero),
    .io_lt(d_io_lt),
    .io_gt(d_io_gt)
  );
  assign _T_22 = reset == 1'h0; // @[riscvSingle.scala 88:11:@1138.4]
  assign io_pc = dp_io_pc; // @[riscvSingle.scala 108:11:@1162.4]
  assign io_memWrite = d_io_memW; // @[riscvSingle.scala 109:17:@1163.4]
  assign io_aluResult = dp_io_dataAdd; // @[riscvSingle.scala 110:18:@1164.4]
  assign io_writeData = dp_io_writeData; // @[riscvSingle.scala 111:18:@1165.4]
  assign dp_clock = clock; // @[:@1130.4]
  assign dp_reset = reset; // @[:@1131.4]
  assign dp_io_regSrc = d_io_regSrc; // @[riscvSingle.scala 98:18:@1153.4]
  assign dp_io_regWrite = d_io_regW; // @[riscvSingle.scala 99:20:@1154.4]
  assign dp_io_immSrc = d_io_immSrc; // @[riscvSingle.scala 100:18:@1155.4]
  assign dp_io_aluSrc = d_io_aluSrc; // @[riscvSingle.scala 101:18:@1156.4]
  assign dp_io_aluControl = d_io_aluControl; // @[riscvSingle.scala 102:22:@1157.4]
  assign dp_io_memToReg = d_io_memW; // @[riscvSingle.scala 103:20:@1158.4]
  assign dp_io_instr = io_instr; // @[riscvSingle.scala 104:17:@1159.4]
  assign dp_io_readData = io_readData; // @[riscvSingle.scala 105:20:@1160.4]
  assign dp_io_branchSrc = d_io_branchSrc; // @[riscvSingle.scala 106:21:@1161.4]
  assign d_clock = clock; // @[:@1133.4]
  assign d_reset = reset; // @[:@1134.4]
  assign d_io_opcode = io_instr[6:0]; // @[riscvSingle.scala 90:17:@1143.4]
  assign d_io_funct7 = io_instr[31:25]; // @[riscvSingle.scala 91:17:@1145.4]
  assign d_io_funct3 = io_instr[14:12]; // @[riscvSingle.scala 92:17:@1147.4]
  assign d_io_zero = dp_io_zero; // @[riscvSingle.scala 94:15:@1150.4]
  assign d_io_lt = dp_io_lt; // @[riscvSingle.scala 95:13:@1151.4]
  assign d_io_gt = dp_io_gt; // @[riscvSingle.scala 96:13:@1152.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_22) begin
          $fwrite(32'h80000002,"\n\n\nriscv Module:\n  instr       : 0x%x\n  readData    : 0x%x\n///////////////////////////////////////////////////\n",io_instr,io_readData); // @[riscvSingle.scala 88:11:@1140.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module imem( // @[:@1168.2]
  input         clock, // @[:@1169.4]
  input  [31:0] io_mem_addr, // @[:@1171.4]
  output [31:0] io_mem_out // @[:@1171.4]
);
  reg [31:0] MEM [0:1023]; // @[riscvSingle.scala 681:18:@1173.4]
  reg [31:0] _RAND_0;
  wire [31:0] MEM__T_12_data; // @[riscvSingle.scala 681:18:@1173.4]
  wire [9:0] MEM__T_12_addr; // @[riscvSingle.scala 681:18:@1173.4]
  assign MEM__T_12_addr = io_mem_addr[9:0];
  assign MEM__T_12_data = MEM[MEM__T_12_addr]; // @[riscvSingle.scala 681:18:@1173.4]
  assign io_mem_out = MEM__T_12_data; // @[riscvSingle.scala 684:16:@1176.4]
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
module dmem( // @[:@1178.2]
  input         clock, // @[:@1179.4]
  input  [31:0] io_mem_addr, // @[:@1181.4]
  input  [31:0] io_mem_in, // @[:@1181.4]
  input         io_enable, // @[:@1181.4]
  output [31:0] io_mem_out // @[:@1181.4]
);
  reg [31:0] mem [0:1023]; // @[riscvSingle.scala 695:26:@1183.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_25_data; // @[riscvSingle.scala 695:26:@1183.4]
  wire [9:0] mem__T_25_addr; // @[riscvSingle.scala 695:26:@1183.4]
  wire [31:0] mem__T_16_data; // @[riscvSingle.scala 695:26:@1183.4]
  wire [9:0] mem__T_16_addr; // @[riscvSingle.scala 695:26:@1183.4]
  wire  mem__T_16_mask; // @[riscvSingle.scala 695:26:@1183.4]
  wire  mem__T_16_en; // @[riscvSingle.scala 695:26:@1183.4]
  wire [9:0] _T_15; // @[:@1184.4]
  wire  _T_17; // @[riscvSingle.scala 697:51:@1187.4]
  wire  _T_19; // @[riscvSingle.scala 697:51:@1188.4]
  wire  _GEN_1; // @[riscvSingle.scala 697:27:@1191.4]
  reg [9:0] mem__T_25_addr_pipe_0;
  reg [31:0] _RAND_1;
  assign mem__T_25_addr = mem__T_25_addr_pipe_0;
  assign mem__T_25_data = mem[mem__T_25_addr]; // @[riscvSingle.scala 695:26:@1183.4]
  assign mem__T_16_data = io_mem_in;
  assign mem__T_16_addr = io_mem_addr[9:0];
  assign mem__T_16_mask = 1'h1;
  assign mem__T_16_en = 1'h1;
  assign _T_15 = io_mem_addr[9:0]; // @[:@1184.4]
  assign _T_17 = ~ io_enable; // @[riscvSingle.scala 697:51:@1187.4]
  assign _T_19 = _T_17 == 1'h0; // @[riscvSingle.scala 697:51:@1188.4]
  assign _GEN_1 = _T_19; // @[riscvSingle.scala 697:27:@1191.4]
  assign io_mem_out = mem__T_25_data; // @[riscvSingle.scala 697:16:@1197.4]
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
      mem[mem__T_16_addr] <= mem__T_16_data; // @[riscvSingle.scala 695:26:@1183.4]
    end
    if (_GEN_1) begin
      mem__T_25_addr_pipe_0 <= _T_15;
    end
  end
endmodule
module top( // @[:@1199.2]
  input   clock, // @[:@1200.4]
  input   reset, // @[:@1201.4]
  output  io_valid // @[:@1202.4]
);
  wire  r_clock; // @[riscvSingle.scala 29:19:@1205.4]
  wire  r_reset; // @[riscvSingle.scala 29:19:@1205.4]
  wire [31:0] r_io_instr; // @[riscvSingle.scala 29:19:@1205.4]
  wire [31:0] r_io_readData; // @[riscvSingle.scala 29:19:@1205.4]
  wire [31:0] r_io_pc; // @[riscvSingle.scala 29:19:@1205.4]
  wire  r_io_memWrite; // @[riscvSingle.scala 29:19:@1205.4]
  wire [31:0] r_io_aluResult; // @[riscvSingle.scala 29:19:@1205.4]
  wire [31:0] r_io_writeData; // @[riscvSingle.scala 29:19:@1205.4]
  wire  im_clock; // @[riscvSingle.scala 30:20:@1208.4]
  wire [31:0] im_io_mem_addr; // @[riscvSingle.scala 30:20:@1208.4]
  wire [31:0] im_io_mem_out; // @[riscvSingle.scala 30:20:@1208.4]
  wire  dm_clock; // @[riscvSingle.scala 31:20:@1211.4]
  wire [31:0] dm_io_mem_addr; // @[riscvSingle.scala 31:20:@1211.4]
  wire [31:0] dm_io_mem_in; // @[riscvSingle.scala 31:20:@1211.4]
  wire  dm_io_enable; // @[riscvSingle.scala 31:20:@1211.4]
  wire [31:0] dm_io_mem_out; // @[riscvSingle.scala 31:20:@1211.4]
  wire [31:0] pc_pulled; // @[riscvSingle.scala 37:26:@1219.4]
  wire  _T_16; // @[riscvSingle.scala 50:11:@1232.4]
  wire [31:0] instr_out; // @[riscvSingle.scala 32:25:@1214.4 riscvSingle.scala 36:15:@1218.4]
  wire [6:0] _T_19; // @[riscvSingle.scala 54:30:@1239.4]
  wire  _T_21; // @[riscvSingle.scala 54:37:@1240.4]
  wire [31:0] mem_inW; // @[riscvSingle.scala 34:23:@1216.4 riscvSingle.scala 43:13:@1226.4]
  wire [31:0] mem_outW; // @[riscvSingle.scala 35:24:@1217.4 riscvSingle.scala 42:14:@1225.4]
  riscv r ( // @[riscvSingle.scala 29:19:@1205.4]
    .clock(r_clock),
    .reset(r_reset),
    .io_instr(r_io_instr),
    .io_readData(r_io_readData),
    .io_pc(r_io_pc),
    .io_memWrite(r_io_memWrite),
    .io_aluResult(r_io_aluResult),
    .io_writeData(r_io_writeData)
  );
  imem im ( // @[riscvSingle.scala 30:20:@1208.4]
    .clock(im_clock),
    .io_mem_addr(im_io_mem_addr),
    .io_mem_out(im_io_mem_out)
  );
  dmem dm ( // @[riscvSingle.scala 31:20:@1211.4]
    .clock(dm_clock),
    .io_mem_addr(dm_io_mem_addr),
    .io_mem_in(dm_io_mem_in),
    .io_enable(dm_io_enable),
    .io_mem_out(dm_io_mem_out)
  );
  assign pc_pulled = r_io_pc / 32'h4; // @[riscvSingle.scala 37:26:@1219.4]
  assign _T_16 = reset == 1'h0; // @[riscvSingle.scala 50:11:@1232.4]
  assign instr_out = im_io_mem_out; // @[riscvSingle.scala 32:25:@1214.4 riscvSingle.scala 36:15:@1218.4]
  assign _T_19 = instr_out[6:0]; // @[riscvSingle.scala 54:30:@1239.4]
  assign _T_21 = _T_19 == 7'h73; // @[riscvSingle.scala 54:37:@1240.4]
  assign mem_inW = r_io_writeData; // @[riscvSingle.scala 34:23:@1216.4 riscvSingle.scala 43:13:@1226.4]
  assign mem_outW = dm_io_mem_out; // @[riscvSingle.scala 35:24:@1217.4 riscvSingle.scala 42:14:@1225.4]
  assign io_valid = _T_21 ? 1'h0 : 1'h1; // @[riscvSingle.scala 54:14:@1242.4]
  assign r_clock = clock; // @[:@1206.4]
  assign r_reset = reset; // @[:@1207.4]
  assign r_io_instr = im_io_mem_out; // @[riscvSingle.scala 53:16:@1238.4]
  assign r_io_readData = dm_io_mem_out; // @[riscvSingle.scala 41:19:@1224.4]
  assign im_clock = clock; // @[:@1209.4]
  assign im_io_mem_addr = r_io_pc / 32'h4; // @[riscvSingle.scala 52:20:@1237.4]
  assign dm_clock = clock; // @[:@1212.4]
  assign dm_io_mem_addr = r_io_aluResult; // @[riscvSingle.scala 38:20:@1221.4]
  assign dm_io_mem_in = r_io_writeData; // @[riscvSingle.scala 39:18:@1222.4]
  assign dm_io_enable = r_io_memWrite; // @[riscvSingle.scala 40:18:@1223.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_16) begin
          $fwrite(32'h80000002,"\n\n\ntop Module:\n  instr pulled: %b\n  pc pulled   : %b\n  mem in      : %b\n  mem out     : %b\n///////////////////////////////////////////////////\n",instr_out,pc_pulled,mem_inW,mem_outW); // @[riscvSingle.scala 50:11:@1234.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
