module regfile( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         io_regWriteEnable, // @[:@6.4]
  input  [4:0]  io_regWriteAddress, // @[:@6.4]
  input  [31:0] io_regWriteData, // @[:@6.4]
  input  [4:0]  io_regReadAddress1, // @[:@6.4]
  input  [4:0]  io_regReadAddress2, // @[:@6.4]
  output [31:0] io_regReadData1, // @[:@6.4]
  output [31:0] io_regReadData2 // @[:@6.4]
);
  reg [31:0] rf [0:31]; // @[riscvSingle.scala 668:17:@8.4]
  reg [31:0] _RAND_0;
  wire [31:0] rf__T_33_data; // @[riscvSingle.scala 668:17:@8.4]
  wire [4:0] rf__T_33_addr; // @[riscvSingle.scala 668:17:@8.4]
  wire [31:0] rf__T_34_data; // @[riscvSingle.scala 668:17:@8.4]
  wire [4:0] rf__T_34_addr; // @[riscvSingle.scala 668:17:@8.4]
  wire [31:0] rf__T_29_data; // @[riscvSingle.scala 668:17:@8.4]
  wire [4:0] rf__T_29_addr; // @[riscvSingle.scala 668:17:@8.4]
  wire  rf__T_29_mask; // @[riscvSingle.scala 668:17:@8.4]
  wire  rf__T_29_en; // @[riscvSingle.scala 668:17:@8.4]
  wire [31:0] rf__T_31_data; // @[riscvSingle.scala 668:17:@8.4]
  wire [4:0] rf__T_31_addr; // @[riscvSingle.scala 668:17:@8.4]
  wire  rf__T_31_mask; // @[riscvSingle.scala 668:17:@8.4]
  wire  rf__T_31_en; // @[riscvSingle.scala 668:17:@8.4]
  wire  _T_21; // @[riscvSingle.scala 671:28:@9.4]
  wire  _T_23; // @[riscvSingle.scala 671:28:@10.4]
  wire  _T_25; // @[riscvSingle.scala 671:57:@11.4]
  wire  _T_27; // @[riscvSingle.scala 671:36:@12.4]
  wire  _T_28; // @[riscvSingle.scala 671:33:@13.4]
  assign rf__T_33_addr = io_regReadAddress1;
  assign rf__T_33_data = rf[rf__T_33_addr]; // @[riscvSingle.scala 668:17:@8.4]
  assign rf__T_34_addr = io_regReadAddress2;
  assign rf__T_34_data = rf[rf__T_34_addr]; // @[riscvSingle.scala 668:17:@8.4]
  assign rf__T_29_data = io_regWriteData;
  assign rf__T_29_addr = io_regWriteAddress;
  assign rf__T_29_mask = 1'h1;
  assign rf__T_29_en = _T_23 & _T_27;
  assign rf__T_31_data = 32'sh0;
  assign rf__T_31_addr = 5'h0;
  assign rf__T_31_mask = 1'h1;
  assign rf__T_31_en = _T_28 ? 1'h0 : 1'h1;
  assign _T_21 = ~ io_regWriteEnable; // @[riscvSingle.scala 671:28:@9.4]
  assign _T_23 = _T_21 == 1'h0; // @[riscvSingle.scala 671:28:@10.4]
  assign _T_25 = io_regWriteAddress == 5'h0; // @[riscvSingle.scala 671:57:@11.4]
  assign _T_27 = _T_25 == 1'h0; // @[riscvSingle.scala 671:36:@12.4]
  assign _T_28 = _T_23 & _T_27; // @[riscvSingle.scala 671:33:@13.4]
  assign io_regReadData1 = rf__T_33_data; // @[riscvSingle.scala 677:21:@23.4]
  assign io_regReadData2 = rf__T_34_data; // @[riscvSingle.scala 678:21:@25.4]
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
    if(rf__T_29_en & rf__T_29_mask) begin
      rf[rf__T_29_addr] <= rf__T_29_data; // @[riscvSingle.scala 668:17:@8.4]
    end
    if(rf__T_31_en & rf__T_31_mask) begin
      rf[rf__T_31_addr] <= rf__T_31_data; // @[riscvSingle.scala 668:17:@8.4]
    end
  end
endmodule
module alu( // @[:@27.2]
  input  [31:0] io_a, // @[:@30.4]
  input  [31:0] io_b, // @[:@30.4]
  input  [3:0]  io_aluControl, // @[:@30.4]
  output [31:0] io_out, // @[:@30.4]
  output        io_zeroFlag, // @[:@30.4]
  output        io_lessThanFlag, // @[:@30.4]
  output        io_greaterThanFlag // @[:@30.4]
);
  wire  _T_20; // @[riscvSingle.scala 812:25:@32.4]
  wire [31:0] _T_21; // @[riscvSingle.scala 813:24:@34.6]
  wire [31:0] _T_22; // @[riscvSingle.scala 813:24:@35.6]
  wire  _T_24; // @[riscvSingle.scala 814:31:@39.6]
  wire [31:0] _T_25; // @[riscvSingle.scala 815:24:@41.8]
  wire [31:0] _T_26; // @[riscvSingle.scala 815:24:@42.8]
  wire  _T_28; // @[riscvSingle.scala 816:31:@46.8]
  wire [32:0] _T_29; // @[riscvSingle.scala 817:24:@48.10]
  wire [31:0] _T_30; // @[riscvSingle.scala 817:24:@49.10]
  wire [31:0] _T_31; // @[riscvSingle.scala 817:24:@50.10]
  wire  _T_33; // @[riscvSingle.scala 818:31:@54.10]
  wire [11:0] _T_34; // @[riscvSingle.scala 819:31:@56.12]
  wire [4126:0] _GEN_14; // @[riscvSingle.scala 819:24:@57.12]
  wire [4126:0] _T_35; // @[riscvSingle.scala 819:24:@57.12]
  wire  _T_37; // @[riscvSingle.scala 820:31:@61.12]
  wire [31:0] _T_39; // @[riscvSingle.scala 821:24:@64.14]
  wire  _T_41; // @[riscvSingle.scala 822:30:@68.14]
  wire [31:0] _T_42; // @[riscvSingle.scala 823:19:@70.16]
  wire [31:0] _T_43; // @[riscvSingle.scala 823:33:@71.16]
  wire  _T_44; // @[riscvSingle.scala 823:26:@72.16]
  wire [1:0] _GEN_0; // @[riscvSingle.scala 823:40:@73.16]
  wire  _T_48; // @[riscvSingle.scala 828:31:@81.16]
  wire [31:0] _T_49; // @[riscvSingle.scala 829:24:@83.18]
  wire [31:0] _T_50; // @[riscvSingle.scala 829:24:@84.18]
  wire  _T_52; // @[riscvSingle.scala 830:31:@88.18]
  wire  _T_56; // @[riscvSingle.scala 832:30:@95.20]
  wire [63:0] _T_57; // @[riscvSingle.scala 833:24:@97.22]
  wire  _T_59; // @[riscvSingle.scala 834:30:@101.22]
  wire  _T_60; // @[riscvSingle.scala 835:19:@103.24]
  wire [1:0] _GEN_1; // @[riscvSingle.scala 835:26:@104.24]
  wire  _T_64; // @[riscvSingle.scala 840:30:@112.24]
  wire [32:0] _T_65; // @[riscvSingle.scala 841:24:@114.26]
  wire  _T_67; // @[riscvSingle.scala 842:30:@118.26]
  wire [32:0] _T_68; // @[riscvSingle.scala 843:24:@120.28]
  wire [31:0] _T_69; // @[riscvSingle.scala 843:24:@121.28]
  wire [31:0] _T_70; // @[riscvSingle.scala 843:24:@122.28]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 842:39:@119.26]
  wire [32:0] _GEN_3; // @[riscvSingle.scala 840:39:@113.24]
  wire [32:0] _GEN_4; // @[riscvSingle.scala 834:39:@102.22]
  wire [63:0] _GEN_5; // @[riscvSingle.scala 832:39:@96.20]
  wire [63:0] _GEN_6; // @[riscvSingle.scala 830:40:@89.18]
  wire [63:0] _GEN_7; // @[riscvSingle.scala 828:40:@82.16]
  wire [63:0] _GEN_8; // @[riscvSingle.scala 822:38:@69.14]
  wire [63:0] _GEN_9; // @[riscvSingle.scala 820:40:@62.12]
  wire [4126:0] _GEN_10; // @[riscvSingle.scala 818:40:@55.10]
  wire [4126:0] _GEN_11; // @[riscvSingle.scala 816:40:@47.8]
  wire [4126:0] _GEN_12; // @[riscvSingle.scala 814:40:@40.6]
  wire [4126:0] _GEN_13; // @[riscvSingle.scala 812:34:@33.4]
  wire [31:0] _GEN_15; // @[riscvSingle.scala 813:16:@36.6 riscvSingle.scala 815:16:@43.8 riscvSingle.scala 817:16:@51.10 riscvSingle.scala 819:16:@58.12 riscvSingle.scala 821:16:@65.14 riscvSingle.scala 824:20:@74.18 riscvSingle.scala 826:20:@77.18 riscvSingle.scala 829:16:@85.18 riscvSingle.scala 831:16:@92.20 riscvSingle.scala 833:16:@98.22 riscvSingle.scala 836:20:@105.26 riscvSingle.scala 838:20:@108.26 riscvSingle.scala 841:16:@115.26 riscvSingle.scala 843:16:@123.28 riscvSingle.scala 845:16:@126.28]
  assign _T_20 = io_aluControl == 4'h0; // @[riscvSingle.scala 812:25:@32.4]
  assign _T_21 = $signed(io_a) & $signed(io_b); // @[riscvSingle.scala 813:24:@34.6]
  assign _T_22 = $signed(_T_21); // @[riscvSingle.scala 813:24:@35.6]
  assign _T_24 = io_aluControl == 4'h1; // @[riscvSingle.scala 814:31:@39.6]
  assign _T_25 = $signed(io_a) | $signed(io_b); // @[riscvSingle.scala 815:24:@41.8]
  assign _T_26 = $signed(_T_25); // @[riscvSingle.scala 815:24:@42.8]
  assign _T_28 = io_aluControl == 4'h2; // @[riscvSingle.scala 816:31:@46.8]
  assign _T_29 = $signed(io_a) + $signed(io_b); // @[riscvSingle.scala 817:24:@48.10]
  assign _T_30 = $signed(io_a) + $signed(io_b); // @[riscvSingle.scala 817:24:@49.10]
  assign _T_31 = $signed(_T_30); // @[riscvSingle.scala 817:24:@50.10]
  assign _T_33 = io_aluControl == 4'h3; // @[riscvSingle.scala 818:31:@54.10]
  assign _T_34 = io_b[11:0]; // @[riscvSingle.scala 819:31:@56.12]
  assign _GEN_14 = {{4095{io_a[31]}},io_a}; // @[riscvSingle.scala 819:24:@57.12]
  assign _T_35 = $signed(_GEN_14) << _T_34; // @[riscvSingle.scala 819:24:@57.12]
  assign _T_37 = io_aluControl == 4'h4; // @[riscvSingle.scala 820:31:@61.12]
  assign _T_39 = $signed(io_a) >>> _T_34; // @[riscvSingle.scala 821:24:@64.14]
  assign _T_41 = io_aluControl == 4'h5; // @[riscvSingle.scala 822:30:@68.14]
  assign _T_42 = $unsigned(io_a); // @[riscvSingle.scala 823:19:@70.16]
  assign _T_43 = $unsigned(io_b); // @[riscvSingle.scala 823:33:@71.16]
  assign _T_44 = _T_42 < _T_43; // @[riscvSingle.scala 823:26:@72.16]
  assign _GEN_0 = _T_44 ? $signed(2'sh1) : $signed(2'sh0); // @[riscvSingle.scala 823:40:@73.16]
  assign _T_48 = io_aluControl == 4'h6; // @[riscvSingle.scala 828:31:@81.16]
  assign _T_49 = $signed(io_a) ^ $signed(io_b); // @[riscvSingle.scala 829:24:@83.18]
  assign _T_50 = $signed(_T_49); // @[riscvSingle.scala 829:24:@84.18]
  assign _T_52 = io_aluControl == 4'h7; // @[riscvSingle.scala 830:31:@88.18]
  assign _T_56 = io_aluControl == 4'h8; // @[riscvSingle.scala 832:30:@95.20]
  assign _T_57 = $signed(io_a) * $signed(io_b); // @[riscvSingle.scala 833:24:@97.22]
  assign _T_59 = io_aluControl == 4'h9; // @[riscvSingle.scala 834:30:@101.22]
  assign _T_60 = $signed(io_a) < $signed(io_b); // @[riscvSingle.scala 835:19:@103.24]
  assign _GEN_1 = _T_60 ? $signed(2'sh1) : $signed(2'sh0); // @[riscvSingle.scala 835:26:@104.24]
  assign _T_64 = io_aluControl == 4'ha; // @[riscvSingle.scala 840:30:@112.24]
  assign _T_65 = $signed(io_a) / $signed(io_b); // @[riscvSingle.scala 841:24:@114.26]
  assign _T_67 = io_aluControl == 4'hc; // @[riscvSingle.scala 842:30:@118.26]
  assign _T_68 = $signed(io_a) - $signed(io_b); // @[riscvSingle.scala 843:24:@120.28]
  assign _T_69 = $signed(io_a) - $signed(io_b); // @[riscvSingle.scala 843:24:@121.28]
  assign _T_70 = $signed(_T_69); // @[riscvSingle.scala 843:24:@122.28]
  assign _GEN_2 = _T_67 ? $signed(_T_70) : $signed(32'sh0); // @[riscvSingle.scala 842:39:@119.26]
  assign _GEN_3 = _T_64 ? $signed(_T_65) : $signed({{1{_GEN_2[31]}},_GEN_2}); // @[riscvSingle.scala 840:39:@113.24]
  assign _GEN_4 = _T_59 ? $signed({{31{_GEN_1[1]}},_GEN_1}) : $signed(_GEN_3); // @[riscvSingle.scala 834:39:@102.22]
  assign _GEN_5 = _T_56 ? $signed(_T_57) : $signed({{31{_GEN_4[32]}},_GEN_4}); // @[riscvSingle.scala 832:39:@96.20]
  assign _GEN_6 = _T_52 ? $signed({{32{_T_39[31]}},_T_39}) : $signed(_GEN_5); // @[riscvSingle.scala 830:40:@89.18]
  assign _GEN_7 = _T_48 ? $signed({{32{_T_50[31]}},_T_50}) : $signed(_GEN_6); // @[riscvSingle.scala 828:40:@82.16]
  assign _GEN_8 = _T_41 ? $signed({{62{_GEN_0[1]}},_GEN_0}) : $signed(_GEN_7); // @[riscvSingle.scala 822:38:@69.14]
  assign _GEN_9 = _T_37 ? $signed({{32{_T_39[31]}},_T_39}) : $signed(_GEN_8); // @[riscvSingle.scala 820:40:@62.12]
  assign _GEN_10 = _T_33 ? $signed(_T_35) : $signed({{4063{_GEN_9[63]}},_GEN_9}); // @[riscvSingle.scala 818:40:@55.10]
  assign _GEN_11 = _T_28 ? $signed({{4095{_T_31[31]}},_T_31}) : $signed(_GEN_10); // @[riscvSingle.scala 816:40:@47.8]
  assign _GEN_12 = _T_24 ? $signed({{4095{_T_26[31]}},_T_26}) : $signed(_GEN_11); // @[riscvSingle.scala 814:40:@40.6]
  assign _GEN_13 = _T_20 ? $signed({{4095{_T_22[31]}},_T_22}) : $signed(_GEN_12); // @[riscvSingle.scala 812:34:@33.4]
  assign _GEN_15 = _GEN_13[31:0]; // @[riscvSingle.scala 813:16:@36.6 riscvSingle.scala 815:16:@43.8 riscvSingle.scala 817:16:@51.10 riscvSingle.scala 819:16:@58.12 riscvSingle.scala 821:16:@65.14 riscvSingle.scala 824:20:@74.18 riscvSingle.scala 826:20:@77.18 riscvSingle.scala 829:16:@85.18 riscvSingle.scala 831:16:@92.20 riscvSingle.scala 833:16:@98.22 riscvSingle.scala 836:20:@105.26 riscvSingle.scala 838:20:@108.26 riscvSingle.scala 841:16:@115.26 riscvSingle.scala 843:16:@123.28 riscvSingle.scala 845:16:@126.28]
  assign io_out = $signed(_GEN_15); // @[riscvSingle.scala 813:16:@36.6 riscvSingle.scala 815:16:@43.8 riscvSingle.scala 817:16:@51.10 riscvSingle.scala 819:16:@58.12 riscvSingle.scala 821:16:@65.14 riscvSingle.scala 824:20:@74.18 riscvSingle.scala 826:20:@77.18 riscvSingle.scala 829:16:@85.18 riscvSingle.scala 831:16:@92.20 riscvSingle.scala 833:16:@98.22 riscvSingle.scala 836:20:@105.26 riscvSingle.scala 838:20:@108.26 riscvSingle.scala 841:16:@115.26 riscvSingle.scala 843:16:@123.28 riscvSingle.scala 845:16:@126.28]
  assign io_zeroFlag = $signed(_T_31) == $signed(32'sh0); // @[riscvSingle.scala 849:17:@133.4]
  assign io_lessThanFlag = $signed(io_a) < $signed(io_b); // @[riscvSingle.scala 850:21:@135.4]
  assign io_greaterThanFlag = $signed(io_a) > $signed(io_b); // @[riscvSingle.scala 851:24:@137.4]
endmodule
module extend( // @[:@139.2]
  input  [11:0] io_instr12, // @[:@142.4]
  input  [19:0] io_instr20, // @[:@142.4]
  input  [1:0]  io_immSrc, // @[:@142.4]
  output [31:0] io_extImm // @[:@142.4]
);
  wire  _T_14; // @[riscvSingle.scala 123:20:@144.4]
  wire [11:0] _T_15; // @[riscvSingle.scala 124:33:@146.6]
  wire  _T_17; // @[riscvSingle.scala 125:26:@150.6]
  wire [12:0] _T_19; // @[Cat.scala 30:58:@152.8]
  wire [12:0] _T_20; // @[riscvSingle.scala 126:50:@153.8]
  wire  _T_22; // @[riscvSingle.scala 127:26:@157.8]
  wire [20:0] _T_24; // @[Cat.scala 30:58:@159.10]
  wire [20:0] _T_25; // @[riscvSingle.scala 128:50:@160.10]
  wire [20:0] _GEN_0; // @[riscvSingle.scala 127:34:@158.8]
  wire [20:0] _GEN_1; // @[riscvSingle.scala 125:34:@151.6]
  wire [20:0] _GEN_2; // @[riscvSingle.scala 123:28:@145.4]
  assign _T_14 = io_immSrc == 2'h0; // @[riscvSingle.scala 123:20:@144.4]
  assign _T_15 = $signed(io_instr12); // @[riscvSingle.scala 124:33:@146.6]
  assign _T_17 = io_immSrc == 2'h1; // @[riscvSingle.scala 125:26:@150.6]
  assign _T_19 = {io_instr12,1'h0}; // @[Cat.scala 30:58:@152.8]
  assign _T_20 = $signed(_T_19); // @[riscvSingle.scala 126:50:@153.8]
  assign _T_22 = io_immSrc == 2'h2; // @[riscvSingle.scala 127:26:@157.8]
  assign _T_24 = {io_instr20,1'h0}; // @[Cat.scala 30:58:@159.10]
  assign _T_25 = $signed(_T_24); // @[riscvSingle.scala 128:50:@160.10]
  assign _GEN_0 = _T_22 ? $signed(_T_25) : $signed(21'sh0); // @[riscvSingle.scala 127:34:@158.8]
  assign _GEN_1 = _T_17 ? $signed({{8{_T_20[12]}},_T_20}) : $signed(_GEN_0); // @[riscvSingle.scala 125:34:@151.6]
  assign _GEN_2 = _T_14 ? $signed({{9{_T_15[11]}},_T_15}) : $signed(_GEN_1); // @[riscvSingle.scala 123:28:@145.4]
  assign io_extImm = {{11{_GEN_2[20]}},_GEN_2}; // @[riscvSingle.scala 124:19:@147.6 riscvSingle.scala 126:19:@154.8 riscvSingle.scala 128:19:@161.10 riscvSingle.scala 130:19:@164.10]
endmodule
module datapath( // @[:@195.2]
  input         clock, // @[:@196.4]
  input         reset, // @[:@197.4]
  input  [2:0]  io_regSrc, // @[:@198.4]
  input         io_regWriteEnable, // @[:@198.4]
  input  [1:0]  io_immSrc, // @[:@198.4]
  input         io_aluSrc, // @[:@198.4]
  input         io_pcSrc, // @[:@198.4]
  input  [3:0]  io_aluControl, // @[:@198.4]
  input         io_memToReg, // @[:@198.4]
  input  [31:0] io_instr, // @[:@198.4]
  input  [31:0] io_memReadData, // @[:@198.4]
  input  [1:0]  io_branchSrc, // @[:@198.4]
  output [31:0] io_pc, // @[:@198.4]
  output [31:0] io_memAddress, // @[:@198.4]
  output [31:0] io_memWriteData, // @[:@198.4]
  output        io_zeroFlag, // @[:@198.4]
  output        io_lessThanFlag, // @[:@198.4]
  output        io_greaterThanFlag // @[:@198.4]
);
  wire  rf_clock; // @[riscvSingle.scala 526:20:@200.4]
  wire  rf_io_regWriteEnable; // @[riscvSingle.scala 526:20:@200.4]
  wire [4:0] rf_io_regWriteAddress; // @[riscvSingle.scala 526:20:@200.4]
  wire [31:0] rf_io_regWriteData; // @[riscvSingle.scala 526:20:@200.4]
  wire [4:0] rf_io_regReadAddress1; // @[riscvSingle.scala 526:20:@200.4]
  wire [4:0] rf_io_regReadAddress2; // @[riscvSingle.scala 526:20:@200.4]
  wire [31:0] rf_io_regReadData1; // @[riscvSingle.scala 526:20:@200.4]
  wire [31:0] rf_io_regReadData2; // @[riscvSingle.scala 526:20:@200.4]
  wire [31:0] alu_io_a; // @[riscvSingle.scala 528:21:@203.4]
  wire [31:0] alu_io_b; // @[riscvSingle.scala 528:21:@203.4]
  wire [3:0] alu_io_aluControl; // @[riscvSingle.scala 528:21:@203.4]
  wire [31:0] alu_io_out; // @[riscvSingle.scala 528:21:@203.4]
  wire  alu_io_zeroFlag; // @[riscvSingle.scala 528:21:@203.4]
  wire  alu_io_lessThanFlag; // @[riscvSingle.scala 528:21:@203.4]
  wire  alu_io_greaterThanFlag; // @[riscvSingle.scala 528:21:@203.4]
  wire [11:0] ext1_io_instr12; // @[riscvSingle.scala 530:22:@206.4]
  wire [19:0] ext1_io_instr20; // @[riscvSingle.scala 530:22:@206.4]
  wire [1:0] ext1_io_immSrc; // @[riscvSingle.scala 530:22:@206.4]
  wire [31:0] ext1_io_extImm; // @[riscvSingle.scala 530:22:@206.4]
  wire [11:0] ext2_io_instr12; // @[riscvSingle.scala 531:22:@209.4]
  wire [19:0] ext2_io_instr20; // @[riscvSingle.scala 531:22:@209.4]
  wire [1:0] ext2_io_immSrc; // @[riscvSingle.scala 531:22:@209.4]
  wire [31:0] ext2_io_extImm; // @[riscvSingle.scala 531:22:@209.4]
  wire  _T_47; // @[riscvSingle.scala 544:30:@222.4]
  wire  _T_48; // @[riscvSingle.scala 544:44:@223.4]
  wire [5:0] _T_49; // @[riscvSingle.scala 544:57:@224.4]
  wire [3:0] _T_50; // @[riscvSingle.scala 544:74:@225.4]
  wire [9:0] _T_51; // @[Cat.scala 30:58:@226.4]
  wire [1:0] _T_52; // @[Cat.scala 30:58:@227.4]
  wire [7:0] _T_55; // @[riscvSingle.scala 545:42:@231.4]
  wire  _T_56; // @[riscvSingle.scala 545:59:@232.4]
  wire [9:0] _T_57; // @[riscvSingle.scala 545:73:@233.4]
  wire [19:0] _T_60; // @[Cat.scala 30:58:@236.4]
  wire [19:0] _T_61; // @[riscvSingle.scala 546:28:@238.4]
  wire [31:0] _T_63; // @[Cat.scala 30:58:@239.4]
  wire [31:0] auiImm; // @[riscvSingle.scala 546:49:@240.4]
  wire  _T_66; // @[riscvSingle.scala 554:28:@250.4]
  wire  _T_68; // @[riscvSingle.scala 554:28:@251.4]
  wire [31:0] extImm; // @[riscvSingle.scala 554:18:@252.4]
  reg [31:0] pcReg; // @[riscvSingle.scala 558:25:@254.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_77; // @[riscvSingle.scala 563:22:@259.4]
  wire [31:0] pcPlus4; // @[riscvSingle.scala 563:22:@260.4]
  wire [31:0] _T_82; // @[riscvSingle.scala 565:40:@265.4]
  wire [31:0] branchExtImm; // @[riscvSingle.scala 536:28:@216.4 riscvSingle.scala 553:18:@249.4]
  wire [32:0] _T_83; // @[riscvSingle.scala 565:30:@266.4]
  wire [31:0] _T_84; // @[riscvSingle.scala 565:30:@267.4]
  wire [31:0] pcBranch; // @[riscvSingle.scala 565:30:@268.4]
  wire [31:0] _T_86; // @[riscvSingle.scala 566:31:@270.4]
  wire [31:0] pcRegBranch; // @[riscvSingle.scala 566:38:@271.4]
  wire  _T_89; // @[riscvSingle.scala 567:31:@273.4]
  wire  _T_90; // @[riscvSingle.scala 567:35:@274.4]
  wire  _T_92; // @[riscvSingle.scala 567:35:@275.4]
  wire  _T_93; // @[riscvSingle.scala 567:70:@276.4]
  wire  _T_94; // @[riscvSingle.scala 567:74:@277.4]
  wire  _T_96; // @[riscvSingle.scala 567:74:@278.4]
  wire [31:0] _T_97; // @[riscvSingle.scala 567:89:@279.4]
  wire [31:0] _T_98; // @[riscvSingle.scala 567:57:@280.4]
  wire [31:0] pcNext; // @[riscvSingle.scala 567:18:@281.4]
  wire [6:0] _T_100; // @[riscvSingle.scala 573:28:@285.4]
  wire [4:0] _T_101; // @[riscvSingle.scala 573:45:@286.4]
  wire [11:0] _T_102; // @[Cat.scala 30:58:@287.4]
  wire [11:0] _T_103; // @[riscvSingle.scala 573:54:@288.4]
  wire  _T_104; // @[riscvSingle.scala 574:40:@290.4]
  wire  _T_106; // @[riscvSingle.scala 574:40:@291.4]
  wire [31:0] memImm; // @[riscvSingle.scala 535:22:@215.4 riscvSingle.scala 573:12:@289.4]
  wire [31:0] _T_107; // @[riscvSingle.scala 574:27:@292.4]
  wire [32:0] _T_108; // @[riscvSingle.scala 574:70:@293.4]
  wire [31:0] _T_109; // @[riscvSingle.scala 574:70:@294.4]
  wire [31:0] _T_110; // @[riscvSingle.scala 574:70:@295.4]
  wire  _T_112; // @[riscvSingle.scala 577:37:@298.4]
  wire  _T_113; // @[riscvSingle.scala 577:41:@299.4]
  wire  _T_115; // @[riscvSingle.scala 577:41:@300.4]
  wire [4:0] _T_117; // @[riscvSingle.scala 577:67:@301.4]
  wire  _T_119; // @[riscvSingle.scala 578:37:@304.4]
  wire  _T_120; // @[riscvSingle.scala 578:41:@305.4]
  wire  _T_122; // @[riscvSingle.scala 578:41:@306.4]
  wire [4:0] _T_124; // @[riscvSingle.scala 578:71:@308.4]
  wire  _T_126; // @[riscvSingle.scala 579:34:@311.4]
  wire  _T_127; // @[riscvSingle.scala 579:38:@312.4]
  wire  _T_129; // @[riscvSingle.scala 579:38:@313.4]
  wire [31:0] _T_134; // @[riscvSingle.scala 579:63:@317.4]
  wire  _T_142; // @[riscvSingle.scala 604:31:@332.4]
  wire  _T_144; // @[riscvSingle.scala 604:31:@333.4]
  wire [11:0] jumpImm; // @[riscvSingle.scala 533:23:@213.4 riscvSingle.scala 545:13:@237.4]
  regfile rf ( // @[riscvSingle.scala 526:20:@200.4]
    .clock(rf_clock),
    .io_regWriteEnable(rf_io_regWriteEnable),
    .io_regWriteAddress(rf_io_regWriteAddress),
    .io_regWriteData(rf_io_regWriteData),
    .io_regReadAddress1(rf_io_regReadAddress1),
    .io_regReadAddress2(rf_io_regReadAddress2),
    .io_regReadData1(rf_io_regReadData1),
    .io_regReadData2(rf_io_regReadData2)
  );
  alu alu ( // @[riscvSingle.scala 528:21:@203.4]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_aluControl(alu_io_aluControl),
    .io_out(alu_io_out),
    .io_zeroFlag(alu_io_zeroFlag),
    .io_lessThanFlag(alu_io_lessThanFlag),
    .io_greaterThanFlag(alu_io_greaterThanFlag)
  );
  extend ext1 ( // @[riscvSingle.scala 530:22:@206.4]
    .io_instr12(ext1_io_instr12),
    .io_instr20(ext1_io_instr20),
    .io_immSrc(ext1_io_immSrc),
    .io_extImm(ext1_io_extImm)
  );
  extend ext2 ( // @[riscvSingle.scala 531:22:@209.4]
    .io_instr12(ext2_io_instr12),
    .io_instr20(ext2_io_instr20),
    .io_immSrc(ext2_io_immSrc),
    .io_extImm(ext2_io_extImm)
  );
  assign _T_47 = io_instr[31]; // @[riscvSingle.scala 544:30:@222.4]
  assign _T_48 = io_instr[7]; // @[riscvSingle.scala 544:44:@223.4]
  assign _T_49 = io_instr[30:25]; // @[riscvSingle.scala 544:57:@224.4]
  assign _T_50 = io_instr[11:8]; // @[riscvSingle.scala 544:74:@225.4]
  assign _T_51 = {_T_49,_T_50}; // @[Cat.scala 30:58:@226.4]
  assign _T_52 = {_T_47,_T_48}; // @[Cat.scala 30:58:@227.4]
  assign _T_55 = io_instr[19:12]; // @[riscvSingle.scala 545:42:@231.4]
  assign _T_56 = io_instr[20]; // @[riscvSingle.scala 545:59:@232.4]
  assign _T_57 = io_instr[30:21]; // @[riscvSingle.scala 545:73:@233.4]
  assign _T_60 = {_T_47,_T_55,_T_56,_T_57}; // @[Cat.scala 30:58:@236.4]
  assign _T_61 = io_instr[31:12]; // @[riscvSingle.scala 546:28:@238.4]
  assign _T_63 = {_T_61,12'h0}; // @[Cat.scala 30:58:@239.4]
  assign auiImm = $signed(_T_63); // @[riscvSingle.scala 546:49:@240.4]
  assign _T_66 = ~ io_pcSrc; // @[riscvSingle.scala 554:28:@250.4]
  assign _T_68 = _T_66 == 1'h0; // @[riscvSingle.scala 554:28:@251.4]
  assign extImm = _T_68 ? $signed(auiImm) : $signed(ext2_io_extImm); // @[riscvSingle.scala 554:18:@252.4]
  assign _T_77 = pcReg + 32'h4; // @[riscvSingle.scala 563:22:@259.4]
  assign pcPlus4 = pcReg + 32'h4; // @[riscvSingle.scala 563:22:@260.4]
  assign _T_82 = $signed(pcPlus4); // @[riscvSingle.scala 565:40:@265.4]
  assign branchExtImm = ext1_io_extImm; // @[riscvSingle.scala 536:28:@216.4 riscvSingle.scala 553:18:@249.4]
  assign _T_83 = $signed(branchExtImm) + $signed(_T_82); // @[riscvSingle.scala 565:30:@266.4]
  assign _T_84 = $signed(branchExtImm) + $signed(_T_82); // @[riscvSingle.scala 565:30:@267.4]
  assign pcBranch = $signed(_T_84); // @[riscvSingle.scala 565:30:@268.4]
  assign _T_86 = $unsigned(alu_io_out); // @[riscvSingle.scala 566:31:@270.4]
  assign pcRegBranch = _T_86 & 32'hfffffffe; // @[riscvSingle.scala 566:38:@271.4]
  assign _T_89 = io_branchSrc[1]; // @[riscvSingle.scala 567:31:@273.4]
  assign _T_90 = ~ _T_89; // @[riscvSingle.scala 567:35:@274.4]
  assign _T_92 = _T_90 == 1'h0; // @[riscvSingle.scala 567:35:@275.4]
  assign _T_93 = io_branchSrc[0]; // @[riscvSingle.scala 567:70:@276.4]
  assign _T_94 = ~ _T_93; // @[riscvSingle.scala 567:74:@277.4]
  assign _T_96 = _T_94 == 1'h0; // @[riscvSingle.scala 567:74:@278.4]
  assign _T_97 = $unsigned(pcBranch); // @[riscvSingle.scala 567:89:@279.4]
  assign _T_98 = _T_96 ? _T_97 : pcPlus4; // @[riscvSingle.scala 567:57:@280.4]
  assign pcNext = _T_92 ? pcRegBranch : _T_98; // @[riscvSingle.scala 567:18:@281.4]
  assign _T_100 = io_instr[31:25]; // @[riscvSingle.scala 573:28:@285.4]
  assign _T_101 = io_instr[11:7]; // @[riscvSingle.scala 573:45:@286.4]
  assign _T_102 = {_T_100,_T_101}; // @[Cat.scala 30:58:@287.4]
  assign _T_103 = $signed(_T_102); // @[riscvSingle.scala 573:54:@288.4]
  assign _T_104 = ~ io_memToReg; // @[riscvSingle.scala 574:40:@290.4]
  assign _T_106 = _T_104 == 1'h0; // @[riscvSingle.scala 574:40:@291.4]
  assign memImm = {{20{_T_103[11]}},_T_103}; // @[riscvSingle.scala 535:22:@215.4 riscvSingle.scala 573:12:@289.4]
  assign _T_107 = _T_106 ? $signed(extImm) : $signed(memImm); // @[riscvSingle.scala 574:27:@292.4]
  assign _T_108 = $signed(_T_107) + $signed(rf_io_regReadData1); // @[riscvSingle.scala 574:70:@293.4]
  assign _T_109 = $signed(_T_107) + $signed(rf_io_regReadData1); // @[riscvSingle.scala 574:70:@294.4]
  assign _T_110 = $signed(_T_109); // @[riscvSingle.scala 574:70:@295.4]
  assign _T_112 = io_regSrc[0]; // @[riscvSingle.scala 577:37:@298.4]
  assign _T_113 = ~ _T_112; // @[riscvSingle.scala 577:41:@299.4]
  assign _T_115 = _T_113 == 1'h0; // @[riscvSingle.scala 577:41:@300.4]
  assign _T_117 = io_instr[19:15]; // @[riscvSingle.scala 577:67:@301.4]
  assign _T_119 = io_regSrc[1]; // @[riscvSingle.scala 578:37:@304.4]
  assign _T_120 = ~ _T_119; // @[riscvSingle.scala 578:41:@305.4]
  assign _T_122 = _T_120 == 1'h0; // @[riscvSingle.scala 578:41:@306.4]
  assign _T_124 = io_instr[24:20]; // @[riscvSingle.scala 578:71:@308.4]
  assign _T_126 = io_regSrc[2]; // @[riscvSingle.scala 579:34:@311.4]
  assign _T_127 = ~ _T_126; // @[riscvSingle.scala 579:38:@312.4]
  assign _T_129 = _T_127 == 1'h0; // @[riscvSingle.scala 579:38:@313.4]
  assign _T_134 = _T_106 ? $signed(io_memReadData) : $signed(alu_io_out); // @[riscvSingle.scala 579:63:@317.4]
  assign _T_142 = ~ io_aluSrc; // @[riscvSingle.scala 604:31:@332.4]
  assign _T_144 = _T_142 == 1'h0; // @[riscvSingle.scala 604:31:@333.4]
  assign jumpImm = _T_60[11:0]; // @[riscvSingle.scala 533:23:@213.4 riscvSingle.scala 545:13:@237.4]
  assign io_pc = pcReg; // @[riscvSingle.scala 569:11:@284.4]
  assign io_memAddress = $unsigned(_T_110); // @[riscvSingle.scala 574:19:@297.4]
  assign io_memWriteData = rf_io_regReadData2; // @[riscvSingle.scala 585:21:@326.4]
  assign io_zeroFlag = alu_io_zeroFlag; // @[riscvSingle.scala 606:17:@337.4]
  assign io_lessThanFlag = alu_io_lessThanFlag; // @[riscvSingle.scala 607:21:@338.4]
  assign io_greaterThanFlag = alu_io_greaterThanFlag; // @[riscvSingle.scala 608:24:@339.4]
  assign rf_clock = clock; // @[:@201.4]
  assign rf_io_regWriteEnable = io_regWriteEnable; // @[riscvSingle.scala 580:26:@320.4]
  assign rf_io_regWriteAddress = io_instr[11:7]; // @[riscvSingle.scala 583:27:@324.4]
  assign rf_io_regWriteData = _T_129 ? $signed(_T_82) : $signed(_T_134); // @[riscvSingle.scala 584:24:@325.4]
  assign rf_io_regReadAddress1 = _T_115 ? 5'h1f : _T_117; // @[riscvSingle.scala 581:27:@321.4]
  assign rf_io_regReadAddress2 = _T_122 ? _T_101 : _T_124; // @[riscvSingle.scala 582:27:@322.4]
  assign alu_io_a = _T_68 ? $signed(_T_82) : $signed(rf_io_regReadData1); // @[riscvSingle.scala 603:14:@331.4]
  assign alu_io_b = _T_144 ? $signed(extImm) : $signed(rf_io_regReadData2); // @[riscvSingle.scala 604:14:@335.4]
  assign alu_io_aluControl = io_aluControl; // @[riscvSingle.scala 605:23:@336.4]
  assign ext1_io_instr12 = {_T_52,_T_51}; // @[riscvSingle.scala 547:21:@242.4]
  assign ext1_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 548:21:@243.4]
  assign ext1_io_immSrc = io_immSrc; // @[riscvSingle.scala 549:20:@244.4]
  assign ext2_io_instr12 = io_instr[31:20]; // @[riscvSingle.scala 550:21:@246.4]
  assign ext2_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 551:21:@247.4]
  assign ext2_io_immSrc = io_immSrc; // @[riscvSingle.scala 552:20:@248.4]
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
      if (_T_92) begin
        pcReg <= pcRegBranch;
      end else begin
        if (_T_96) begin
          pcReg <= _T_97;
        end else begin
          pcReg <= pcPlus4;
        end
      end
    end
  end
endmodule
module decoder( // @[:@341.2]
  input  [6:0] io_opcode, // @[:@344.4]
  input  [6:0] io_funct7, // @[:@344.4]
  input  [2:0] io_funct3, // @[:@344.4]
  output [2:0] io_regSrc, // @[:@344.4]
  output       io_regWriteEnable, // @[:@344.4]
  output [1:0] io_immSrc, // @[:@344.4]
  output       io_aluSrc, // @[:@344.4]
  output       io_pcSrc, // @[:@344.4]
  output [3:0] io_aluControl, // @[:@344.4]
  output       io_memWriteEnable, // @[:@344.4]
  output       io_memToReg, // @[:@344.4]
  output [1:0] io_branchSrc, // @[:@344.4]
  input        io_zeroFlag, // @[:@344.4]
  input        io_lessThanFlag, // @[:@344.4]
  input        io_greaterThanFlag // @[:@344.4]
);
  wire  _T_36; // @[riscvSingle.scala 208:20:@346.4]
  wire  _T_46; // @[riscvSingle.scala 220:24:@356.6]
  wire  _T_48; // @[riscvSingle.scala 221:28:@358.8]
  wire  _T_51; // @[riscvSingle.scala 223:34:@363.10]
  wire  _T_54; // @[riscvSingle.scala 225:34:@368.12]
  wire  _T_57; // @[riscvSingle.scala 227:34:@373.14]
  wire  _T_60; // @[riscvSingle.scala 229:34:@378.16]
  wire  _T_63; // @[riscvSingle.scala 231:34:@383.18]
  wire  _T_66; // @[riscvSingle.scala 233:34:@388.20]
  wire  _T_69; // @[riscvSingle.scala 235:34:@393.22]
  wire [3:0] _GEN_0; // @[riscvSingle.scala 235:48:@394.22]
  wire [3:0] _GEN_1; // @[riscvSingle.scala 233:48:@389.20]
  wire [3:0] _GEN_2; // @[riscvSingle.scala 231:48:@384.18]
  wire [3:0] _GEN_3; // @[riscvSingle.scala 229:48:@379.16]
  wire [3:0] _GEN_4; // @[riscvSingle.scala 227:48:@374.14]
  wire [3:0] _GEN_5; // @[riscvSingle.scala 225:48:@369.12]
  wire [3:0] _GEN_6; // @[riscvSingle.scala 223:48:@364.10]
  wire [3:0] _GEN_7; // @[riscvSingle.scala 221:42:@359.8]
  wire  _T_73; // @[riscvSingle.scala 240:30:@402.8]
  wire [3:0] _GEN_8; // @[riscvSingle.scala 243:47:@410.12]
  wire [3:0] _GEN_9; // @[riscvSingle.scala 241:41:@405.10]
  wire  _T_82; // @[riscvSingle.scala 248:30:@418.10]
  wire [3:0] _GEN_10; // @[riscvSingle.scala 251:47:@426.14]
  wire [3:0] _GEN_11; // @[riscvSingle.scala 249:43:@421.12]
  wire [3:0] _GEN_12; // @[riscvSingle.scala 248:47:@419.10]
  wire [3:0] _GEN_13; // @[riscvSingle.scala 240:47:@403.8]
  wire [3:0] _GEN_14; // @[riscvSingle.scala 220:42:@357.6]
  wire  _T_92; // @[riscvSingle.scala 259:26:@438.6]
  wire  _T_103; // @[riscvSingle.scala 271:26:@451.8]
  wire [5:0] _T_112; // @[riscvSingle.scala 283:24:@461.10]
  wire  _T_114; // @[riscvSingle.scala 283:30:@462.10]
  wire [3:0] _GEN_15; // @[riscvSingle.scala 284:41:@465.12]
  wire [2:0] _GEN_17; // @[riscvSingle.scala 300:48:@499.22]
  wire [2:0] _GEN_18; // @[riscvSingle.scala 298:48:@494.20]
  wire [2:0] _GEN_19; // @[riscvSingle.scala 296:48:@489.18]
  wire [3:0] _GEN_20; // @[riscvSingle.scala 294:48:@484.16]
  wire [3:0] _GEN_21; // @[riscvSingle.scala 292:48:@479.14]
  wire [3:0] _GEN_22; // @[riscvSingle.scala 290:42:@474.12]
  wire [3:0] _GEN_23; // @[riscvSingle.scala 283:46:@463.10]
  wire  _T_142; // @[riscvSingle.scala 308:26:@513.10]
  wire  _T_153; // @[riscvSingle.scala 320:26:@526.12]
  wire  _T_164; // @[riscvSingle.scala 332:26:@539.14]
  wire  _T_177; // @[riscvSingle.scala 344:37:@551.16]
  wire  _T_182; // @[riscvSingle.scala 346:57:@557.18]
  wire  _T_183; // @[riscvSingle.scala 346:43:@558.18]
  wire  _T_189; // @[riscvSingle.scala 348:43:@565.20]
  wire  _T_195; // @[riscvSingle.scala 350:43:@572.22]
  wire  _T_201; // @[riscvSingle.scala 352:43:@579.24]
  wire  _T_207; // @[riscvSingle.scala 354:43:@586.26]
  wire  _GEN_25; // @[riscvSingle.scala 352:70:@580.24]
  wire  _GEN_26; // @[riscvSingle.scala 350:73:@573.22]
  wire  _GEN_27; // @[riscvSingle.scala 348:70:@566.20]
  wire  _GEN_28; // @[riscvSingle.scala 346:66:@559.18]
  wire  _GEN_29; // @[riscvSingle.scala 344:59:@552.16]
  wire  _T_211; // @[riscvSingle.scala 360:26:@595.16]
  wire  _T_222; // @[riscvSingle.scala 372:26:@608.18]
  wire  _T_233; // @[riscvSingle.scala 384:26:@621.20]
  wire  _T_244; // @[riscvSingle.scala 396:26:@634.22]
  wire  _GEN_33; // @[riscvSingle.scala 384:44:@622.20]
  wire [2:0] _GEN_34; // @[riscvSingle.scala 372:44:@609.18]
  wire  _GEN_36; // @[riscvSingle.scala 372:44:@609.18]
  wire [1:0] _GEN_38; // @[riscvSingle.scala 372:44:@609.18]
  wire [2:0] _GEN_39; // @[riscvSingle.scala 360:44:@596.16]
  wire [1:0] _GEN_40; // @[riscvSingle.scala 360:44:@596.16]
  wire  _GEN_41; // @[riscvSingle.scala 360:44:@596.16]
  wire  _GEN_43; // @[riscvSingle.scala 360:44:@596.16]
  wire [1:0] _GEN_44; // @[riscvSingle.scala 360:44:@596.16]
  wire [1:0] _GEN_45; // @[riscvSingle.scala 360:44:@596.16]
  wire [2:0] _GEN_46; // @[riscvSingle.scala 332:44:@540.14]
  wire [1:0] _GEN_47; // @[riscvSingle.scala 332:44:@540.14]
  wire  _GEN_48; // @[riscvSingle.scala 332:44:@540.14]
  wire  _GEN_50; // @[riscvSingle.scala 332:44:@540.14]
  wire [2:0] _GEN_51; // @[riscvSingle.scala 332:44:@540.14]
  wire [1:0] _GEN_52; // @[riscvSingle.scala 332:44:@540.14]
  wire [2:0] _GEN_53; // @[riscvSingle.scala 320:44:@527.12]
  wire [1:0] _GEN_54; // @[riscvSingle.scala 320:44:@527.12]
  wire  _GEN_55; // @[riscvSingle.scala 320:44:@527.12]
  wire  _GEN_57; // @[riscvSingle.scala 320:44:@527.12]
  wire [1:0] _GEN_59; // @[riscvSingle.scala 320:44:@527.12]
  wire [2:0] _GEN_60; // @[riscvSingle.scala 320:44:@527.12]
  wire [2:0] _GEN_61; // @[riscvSingle.scala 308:44:@514.10]
  wire [1:0] _GEN_62; // @[riscvSingle.scala 308:44:@514.10]
  wire  _GEN_63; // @[riscvSingle.scala 308:44:@514.10]
  wire  _GEN_66; // @[riscvSingle.scala 308:44:@514.10]
  wire  _GEN_67; // @[riscvSingle.scala 308:44:@514.10]
  wire [1:0] _GEN_68; // @[riscvSingle.scala 308:44:@514.10]
  wire [2:0] _GEN_69; // @[riscvSingle.scala 308:44:@514.10]
  wire [2:0] _GEN_70; // @[riscvSingle.scala 271:44:@452.8]
  wire [1:0] _GEN_71; // @[riscvSingle.scala 271:44:@452.8]
  wire  _GEN_72; // @[riscvSingle.scala 271:44:@452.8]
  wire  _GEN_74; // @[riscvSingle.scala 271:44:@452.8]
  wire  _GEN_75; // @[riscvSingle.scala 271:44:@452.8]
  wire  _GEN_76; // @[riscvSingle.scala 271:44:@452.8]
  wire [1:0] _GEN_77; // @[riscvSingle.scala 271:44:@452.8]
  wire [3:0] _GEN_78; // @[riscvSingle.scala 271:44:@452.8]
  wire [2:0] _GEN_79; // @[riscvSingle.scala 259:43:@439.6]
  wire [1:0] _GEN_80; // @[riscvSingle.scala 259:43:@439.6]
  wire  _GEN_81; // @[riscvSingle.scala 259:43:@439.6]
  wire  _GEN_83; // @[riscvSingle.scala 259:43:@439.6]
  wire  _GEN_84; // @[riscvSingle.scala 259:43:@439.6]
  wire  _GEN_85; // @[riscvSingle.scala 259:43:@439.6]
  wire [1:0] _GEN_86; // @[riscvSingle.scala 259:43:@439.6]
  wire [3:0] _GEN_87; // @[riscvSingle.scala 259:43:@439.6]
  assign _T_36 = io_opcode == 7'h33; // @[riscvSingle.scala 208:20:@346.4]
  assign _T_46 = io_funct7 == 7'h0; // @[riscvSingle.scala 220:24:@356.6]
  assign _T_48 = io_funct3 == 3'h0; // @[riscvSingle.scala 221:28:@358.8]
  assign _T_51 = io_funct3 == 3'h1; // @[riscvSingle.scala 223:34:@363.10]
  assign _T_54 = io_funct3 == 3'h2; // @[riscvSingle.scala 225:34:@368.12]
  assign _T_57 = io_funct3 == 3'h3; // @[riscvSingle.scala 227:34:@373.14]
  assign _T_60 = io_funct3 == 3'h4; // @[riscvSingle.scala 229:34:@378.16]
  assign _T_63 = io_funct3 == 3'h5; // @[riscvSingle.scala 231:34:@383.18]
  assign _T_66 = io_funct3 == 3'h6; // @[riscvSingle.scala 233:34:@388.20]
  assign _T_69 = io_funct3 == 3'h7; // @[riscvSingle.scala 235:34:@393.22]
  assign _GEN_0 = _T_69 ? 4'h0 : 4'hf; // @[riscvSingle.scala 235:48:@394.22]
  assign _GEN_1 = _T_66 ? 4'h1 : _GEN_0; // @[riscvSingle.scala 233:48:@389.20]
  assign _GEN_2 = _T_63 ? 4'h7 : _GEN_1; // @[riscvSingle.scala 231:48:@384.18]
  assign _GEN_3 = _T_60 ? 4'h6 : _GEN_2; // @[riscvSingle.scala 229:48:@379.16]
  assign _GEN_4 = _T_57 ? 4'h5 : _GEN_3; // @[riscvSingle.scala 227:48:@374.14]
  assign _GEN_5 = _T_54 ? 4'h9 : _GEN_4; // @[riscvSingle.scala 225:48:@369.12]
  assign _GEN_6 = _T_51 ? 4'h3 : _GEN_5; // @[riscvSingle.scala 223:48:@364.10]
  assign _GEN_7 = _T_48 ? 4'h2 : _GEN_6; // @[riscvSingle.scala 221:42:@359.8]
  assign _T_73 = io_funct7 == 7'h1; // @[riscvSingle.scala 240:30:@402.8]
  assign _GEN_8 = _T_60 ? 4'ha : 4'hf; // @[riscvSingle.scala 243:47:@410.12]
  assign _GEN_9 = _T_48 ? 4'h8 : _GEN_8; // @[riscvSingle.scala 241:41:@405.10]
  assign _T_82 = io_funct7 == 7'h20; // @[riscvSingle.scala 248:30:@418.10]
  assign _GEN_10 = _T_48 ? 4'hc : 4'hf; // @[riscvSingle.scala 251:47:@426.14]
  assign _GEN_11 = _T_63 ? 4'h4 : _GEN_10; // @[riscvSingle.scala 249:43:@421.12]
  assign _GEN_12 = _T_82 ? _GEN_11 : 4'hf; // @[riscvSingle.scala 248:47:@419.10]
  assign _GEN_13 = _T_73 ? _GEN_9 : _GEN_12; // @[riscvSingle.scala 240:47:@403.8]
  assign _GEN_14 = _T_46 ? _GEN_7 : _GEN_13; // @[riscvSingle.scala 220:42:@357.6]
  assign _T_92 = io_opcode == 7'h17; // @[riscvSingle.scala 259:26:@438.6]
  assign _T_103 = io_opcode == 7'h13; // @[riscvSingle.scala 271:26:@451.8]
  assign _T_112 = io_funct7[6:1]; // @[riscvSingle.scala 283:24:@461.10]
  assign _T_114 = _T_112 == 6'h10; // @[riscvSingle.scala 283:30:@462.10]
  assign _GEN_15 = _T_63 ? 4'h4 : 4'hf; // @[riscvSingle.scala 284:41:@465.12]
  assign _GEN_17 = _T_63 ? 3'h7 : {{2'd0}, _T_66}; // @[riscvSingle.scala 300:48:@499.22]
  assign _GEN_18 = _T_60 ? 3'h6 : _GEN_17; // @[riscvSingle.scala 298:48:@494.20]
  assign _GEN_19 = _T_57 ? 3'h5 : _GEN_18; // @[riscvSingle.scala 296:48:@489.18]
  assign _GEN_20 = _T_54 ? 4'h9 : {{1'd0}, _GEN_19}; // @[riscvSingle.scala 294:48:@484.16]
  assign _GEN_21 = _T_51 ? 4'h3 : _GEN_20; // @[riscvSingle.scala 292:48:@479.14]
  assign _GEN_22 = _T_48 ? 4'h2 : _GEN_21; // @[riscvSingle.scala 290:42:@474.12]
  assign _GEN_23 = _T_114 ? _GEN_15 : _GEN_22; // @[riscvSingle.scala 283:46:@463.10]
  assign _T_142 = io_opcode == 7'h3; // @[riscvSingle.scala 308:26:@513.10]
  assign _T_153 = io_opcode == 7'h23; // @[riscvSingle.scala 320:26:@526.12]
  assign _T_164 = io_opcode == 7'h63; // @[riscvSingle.scala 332:26:@539.14]
  assign _T_177 = _T_48 & io_zeroFlag; // @[riscvSingle.scala 344:37:@551.16]
  assign _T_182 = io_zeroFlag == 1'h0; // @[riscvSingle.scala 346:57:@557.18]
  assign _T_183 = _T_51 & _T_182; // @[riscvSingle.scala 346:43:@558.18]
  assign _T_189 = _T_60 & io_lessThanFlag; // @[riscvSingle.scala 348:43:@565.20]
  assign _T_195 = _T_63 & io_greaterThanFlag; // @[riscvSingle.scala 350:43:@572.22]
  assign _T_201 = _T_66 & io_lessThanFlag; // @[riscvSingle.scala 352:43:@579.24]
  assign _T_207 = _T_69 & io_greaterThanFlag; // @[riscvSingle.scala 354:43:@586.26]
  assign _GEN_25 = _T_201 ? 1'h1 : _T_207; // @[riscvSingle.scala 352:70:@580.24]
  assign _GEN_26 = _T_195 ? 1'h1 : _GEN_25; // @[riscvSingle.scala 350:73:@573.22]
  assign _GEN_27 = _T_189 ? 1'h1 : _GEN_26; // @[riscvSingle.scala 348:70:@566.20]
  assign _GEN_28 = _T_183 ? 1'h1 : _GEN_27; // @[riscvSingle.scala 346:66:@559.18]
  assign _GEN_29 = _T_177 ? 1'h1 : _GEN_28; // @[riscvSingle.scala 344:59:@552.16]
  assign _T_211 = io_opcode == 7'h6f; // @[riscvSingle.scala 360:26:@595.16]
  assign _T_222 = io_opcode == 7'h67; // @[riscvSingle.scala 372:26:@608.18]
  assign _T_233 = io_opcode == 7'h73; // @[riscvSingle.scala 384:26:@621.20]
  assign _T_244 = io_opcode == 7'h53; // @[riscvSingle.scala 396:26:@634.22]
  assign _GEN_33 = _T_233 ? 1'h0 : _T_244; // @[riscvSingle.scala 384:44:@622.20]
  assign _GEN_34 = _T_222 ? 3'h4 : 3'h0; // @[riscvSingle.scala 372:44:@609.18]
  assign _GEN_36 = _T_222 ? 1'h1 : _GEN_33; // @[riscvSingle.scala 372:44:@609.18]
  assign _GEN_38 = _T_222 ? 2'h2 : 2'h0; // @[riscvSingle.scala 372:44:@609.18]
  assign _GEN_39 = _T_211 ? 3'h4 : _GEN_34; // @[riscvSingle.scala 360:44:@596.16]
  assign _GEN_40 = _T_211 ? 2'h2 : 2'h0; // @[riscvSingle.scala 360:44:@596.16]
  assign _GEN_41 = _T_211 ? 1'h1 : _GEN_36; // @[riscvSingle.scala 360:44:@596.16]
  assign _GEN_43 = _T_211 ? 1'h1 : _T_222; // @[riscvSingle.scala 360:44:@596.16]
  assign _GEN_44 = _T_211 ? 2'h1 : _GEN_38; // @[riscvSingle.scala 360:44:@596.16]
  assign _GEN_45 = _T_211 ? 2'h0 : _GEN_38; // @[riscvSingle.scala 360:44:@596.16]
  assign _GEN_46 = _T_164 ? 3'h0 : _GEN_39; // @[riscvSingle.scala 332:44:@540.14]
  assign _GEN_47 = _T_164 ? 2'h1 : _GEN_40; // @[riscvSingle.scala 332:44:@540.14]
  assign _GEN_48 = _T_164 ? 1'h0 : _GEN_41; // @[riscvSingle.scala 332:44:@540.14]
  assign _GEN_50 = _T_164 ? 1'h0 : _GEN_43; // @[riscvSingle.scala 332:44:@540.14]
  assign _GEN_51 = _T_164 ? 3'h4 : {{1'd0}, _GEN_45}; // @[riscvSingle.scala 332:44:@540.14]
  assign _GEN_52 = _T_164 ? {{1'd0}, _GEN_29} : _GEN_44; // @[riscvSingle.scala 332:44:@540.14]
  assign _GEN_53 = _T_153 ? 3'h0 : _GEN_46; // @[riscvSingle.scala 320:44:@527.12]
  assign _GEN_54 = _T_153 ? 2'h0 : _GEN_47; // @[riscvSingle.scala 320:44:@527.12]
  assign _GEN_55 = _T_153 ? 1'h1 : _GEN_48; // @[riscvSingle.scala 320:44:@527.12]
  assign _GEN_57 = _T_153 ? 1'h0 : _GEN_50; // @[riscvSingle.scala 320:44:@527.12]
  assign _GEN_59 = _T_153 ? 2'h0 : _GEN_52; // @[riscvSingle.scala 320:44:@527.12]
  assign _GEN_60 = _T_153 ? 3'h0 : _GEN_51; // @[riscvSingle.scala 320:44:@527.12]
  assign _GEN_61 = _T_142 ? 3'h0 : _GEN_53; // @[riscvSingle.scala 308:44:@514.10]
  assign _GEN_62 = _T_142 ? 2'h0 : _GEN_54; // @[riscvSingle.scala 308:44:@514.10]
  assign _GEN_63 = _T_142 ? 1'h1 : _GEN_55; // @[riscvSingle.scala 308:44:@514.10]
  assign _GEN_66 = _T_142 ? 1'h1 : _GEN_57; // @[riscvSingle.scala 308:44:@514.10]
  assign _GEN_67 = _T_142 ? 1'h0 : _T_153; // @[riscvSingle.scala 308:44:@514.10]
  assign _GEN_68 = _T_142 ? 2'h0 : _GEN_59; // @[riscvSingle.scala 308:44:@514.10]
  assign _GEN_69 = _T_142 ? 3'h2 : _GEN_60; // @[riscvSingle.scala 308:44:@514.10]
  assign _GEN_70 = _T_103 ? 3'h0 : _GEN_61; // @[riscvSingle.scala 271:44:@452.8]
  assign _GEN_71 = _T_103 ? 2'h0 : _GEN_62; // @[riscvSingle.scala 271:44:@452.8]
  assign _GEN_72 = _T_103 ? 1'h1 : _GEN_63; // @[riscvSingle.scala 271:44:@452.8]
  assign _GEN_74 = _T_103 ? 1'h0 : _T_142; // @[riscvSingle.scala 271:44:@452.8]
  assign _GEN_75 = _T_103 ? 1'h1 : _GEN_66; // @[riscvSingle.scala 271:44:@452.8]
  assign _GEN_76 = _T_103 ? 1'h0 : _GEN_67; // @[riscvSingle.scala 271:44:@452.8]
  assign _GEN_77 = _T_103 ? 2'h0 : _GEN_68; // @[riscvSingle.scala 271:44:@452.8]
  assign _GEN_78 = _T_103 ? _GEN_23 : {{1'd0}, _GEN_69}; // @[riscvSingle.scala 271:44:@452.8]
  assign _GEN_79 = _T_92 ? 3'h0 : _GEN_70; // @[riscvSingle.scala 259:43:@439.6]
  assign _GEN_80 = _T_92 ? 2'h2 : _GEN_71; // @[riscvSingle.scala 259:43:@439.6]
  assign _GEN_81 = _T_92 ? 1'h1 : _GEN_72; // @[riscvSingle.scala 259:43:@439.6]
  assign _GEN_83 = _T_92 ? 1'h0 : _GEN_74; // @[riscvSingle.scala 259:43:@439.6]
  assign _GEN_84 = _T_92 ? 1'h1 : _GEN_75; // @[riscvSingle.scala 259:43:@439.6]
  assign _GEN_85 = _T_92 ? 1'h0 : _GEN_76; // @[riscvSingle.scala 259:43:@439.6]
  assign _GEN_86 = _T_92 ? 2'h0 : _GEN_77; // @[riscvSingle.scala 259:43:@439.6]
  assign _GEN_87 = _T_92 ? 4'h2 : _GEN_78; // @[riscvSingle.scala 259:43:@439.6]
  assign io_regSrc = _T_36 ? 3'h0 : _GEN_79; // @[riscvSingle.scala 209:19:@348.6 riscvSingle.scala 260:19:@440.8 riscvSingle.scala 272:19:@453.10 riscvSingle.scala 309:19:@515.12 riscvSingle.scala 321:19:@528.14 riscvSingle.scala 333:19:@541.16 riscvSingle.scala 361:19:@597.18 riscvSingle.scala 373:19:@610.20 riscvSingle.scala 385:19:@623.22 riscvSingle.scala 397:19:@636.24 riscvSingle.scala 422:19:@647.24]
  assign io_regWriteEnable = _T_36 ? 1'h1 : _GEN_84; // @[riscvSingle.scala 214:27:@353.6 riscvSingle.scala 265:27:@445.8 riscvSingle.scala 277:27:@458.10 riscvSingle.scala 314:27:@520.12 riscvSingle.scala 326:27:@533.14 riscvSingle.scala 338:27:@546.16 riscvSingle.scala 366:27:@602.18 riscvSingle.scala 378:27:@615.20 riscvSingle.scala 390:27:@628.22 riscvSingle.scala 402:27:@641.24 riscvSingle.scala 427:27:@652.24]
  assign io_immSrc = _T_36 ? 2'h0 : _GEN_80; // @[riscvSingle.scala 210:19:@349.6 riscvSingle.scala 261:19:@441.8 riscvSingle.scala 273:19:@454.10 riscvSingle.scala 310:19:@516.12 riscvSingle.scala 322:19:@529.14 riscvSingle.scala 334:19:@542.16 riscvSingle.scala 362:19:@598.18 riscvSingle.scala 374:19:@611.20 riscvSingle.scala 386:19:@624.22 riscvSingle.scala 398:19:@637.24 riscvSingle.scala 423:19:@648.24]
  assign io_aluSrc = _T_36 ? 1'h0 : _GEN_81; // @[riscvSingle.scala 211:19:@350.6 riscvSingle.scala 262:19:@442.8 riscvSingle.scala 274:19:@455.10 riscvSingle.scala 311:19:@517.12 riscvSingle.scala 323:19:@530.14 riscvSingle.scala 335:19:@543.16 riscvSingle.scala 363:19:@599.18 riscvSingle.scala 375:19:@612.20 riscvSingle.scala 387:19:@625.22 riscvSingle.scala 399:19:@638.24 riscvSingle.scala 424:19:@649.24]
  assign io_pcSrc = _T_36 ? 1'h0 : _T_92; // @[riscvSingle.scala 212:18:@351.6 riscvSingle.scala 263:18:@443.8 riscvSingle.scala 275:18:@456.10 riscvSingle.scala 312:18:@518.12 riscvSingle.scala 324:18:@531.14 riscvSingle.scala 336:18:@544.16 riscvSingle.scala 364:18:@600.18 riscvSingle.scala 376:18:@613.20 riscvSingle.scala 388:18:@626.22 riscvSingle.scala 400:18:@639.24 riscvSingle.scala 425:18:@650.24]
  assign io_aluControl = _T_36 ? _GEN_14 : _GEN_87; // @[riscvSingle.scala 222:31:@360.10 riscvSingle.scala 224:31:@365.12 riscvSingle.scala 226:31:@370.14 riscvSingle.scala 228:31:@375.16 riscvSingle.scala 230:31:@380.18 riscvSingle.scala 232:31:@385.20 riscvSingle.scala 234:31:@390.22 riscvSingle.scala 236:31:@395.24 riscvSingle.scala 238:31:@398.24 riscvSingle.scala 242:31:@406.12 riscvSingle.scala 244:31:@411.14 riscvSingle.scala 246:31:@414.14 riscvSingle.scala 250:31:@422.14 riscvSingle.scala 252:31:@427.16 riscvSingle.scala 254:31:@430.16 riscvSingle.scala 257:27:@434.12 riscvSingle.scala 268:23:@448.8 riscvSingle.scala 285:31:@466.14 riscvSingle.scala 287:31:@469.14 riscvSingle.scala 291:31:@475.14 riscvSingle.scala 293:31:@480.16 riscvSingle.scala 295:31:@485.18 riscvSingle.scala 297:31:@490.20 riscvSingle.scala 299:31:@495.22 riscvSingle.scala 301:31:@500.24 riscvSingle.scala 303:31:@505.26 riscvSingle.scala 305:31:@508.26 riscvSingle.scala 317:23:@523.12 riscvSingle.scala 329:23:@536.14 riscvSingle.scala 340:23:@548.16 riscvSingle.scala 369:23:@605.18 riscvSingle.scala 381:23:@618.20 riscvSingle.scala 393:23:@631.22 riscvSingle.scala 405:23:@644.24 riscvSingle.scala 431:23:@655.24]
  assign io_memWriteEnable = _T_36 ? 1'h0 : _GEN_85; // @[riscvSingle.scala 215:27:@354.6 riscvSingle.scala 266:27:@446.8 riscvSingle.scala 278:27:@459.10 riscvSingle.scala 315:27:@521.12 riscvSingle.scala 327:27:@534.14 riscvSingle.scala 339:27:@547.16 riscvSingle.scala 367:27:@603.18 riscvSingle.scala 379:27:@616.20 riscvSingle.scala 391:27:@629.22 riscvSingle.scala 403:27:@642.24 riscvSingle.scala 429:27:@653.24]
  assign io_memToReg = _T_36 ? 1'h0 : _GEN_83; // @[riscvSingle.scala 213:21:@352.6 riscvSingle.scala 264:21:@444.8 riscvSingle.scala 276:21:@457.10 riscvSingle.scala 313:21:@519.12 riscvSingle.scala 325:21:@532.14 riscvSingle.scala 337:21:@545.16 riscvSingle.scala 365:21:@601.18 riscvSingle.scala 377:21:@614.20 riscvSingle.scala 389:21:@627.22 riscvSingle.scala 401:21:@640.24 riscvSingle.scala 426:21:@651.24]
  assign io_branchSrc = _T_36 ? 2'h0 : _GEN_86; // @[riscvSingle.scala 216:22:@355.6 riscvSingle.scala 267:22:@447.8 riscvSingle.scala 279:22:@460.10 riscvSingle.scala 316:22:@522.12 riscvSingle.scala 328:22:@535.14 riscvSingle.scala 345:26:@553.18 riscvSingle.scala 347:26:@560.20 riscvSingle.scala 349:26:@567.22 riscvSingle.scala 351:26:@574.24 riscvSingle.scala 353:26:@581.26 riscvSingle.scala 355:26:@588.28 riscvSingle.scala 357:26:@591.28 riscvSingle.scala 368:22:@604.18 riscvSingle.scala 380:22:@617.20 riscvSingle.scala 392:22:@630.22 riscvSingle.scala 404:22:@643.24 riscvSingle.scala 430:22:@654.24]
endmodule
module riscv( // @[:@658.2]
  input         clock, // @[:@659.4]
  input         reset, // @[:@660.4]
  input  [31:0] io_instr, // @[:@661.4]
  input  [31:0] io_memReadData, // @[:@661.4]
  output [31:0] io_pc, // @[:@661.4]
  output        io_memWriteEnable, // @[:@661.4]
  output [31:0] io_memAddress, // @[:@661.4]
  output [31:0] io_memWriteData // @[:@661.4]
);
  wire  dp_clock; // @[riscvSingle.scala 58:20:@663.4]
  wire  dp_reset; // @[riscvSingle.scala 58:20:@663.4]
  wire [2:0] dp_io_regSrc; // @[riscvSingle.scala 58:20:@663.4]
  wire  dp_io_regWriteEnable; // @[riscvSingle.scala 58:20:@663.4]
  wire [1:0] dp_io_immSrc; // @[riscvSingle.scala 58:20:@663.4]
  wire  dp_io_aluSrc; // @[riscvSingle.scala 58:20:@663.4]
  wire  dp_io_pcSrc; // @[riscvSingle.scala 58:20:@663.4]
  wire [3:0] dp_io_aluControl; // @[riscvSingle.scala 58:20:@663.4]
  wire  dp_io_memToReg; // @[riscvSingle.scala 58:20:@663.4]
  wire [31:0] dp_io_instr; // @[riscvSingle.scala 58:20:@663.4]
  wire [31:0] dp_io_memReadData; // @[riscvSingle.scala 58:20:@663.4]
  wire [1:0] dp_io_branchSrc; // @[riscvSingle.scala 58:20:@663.4]
  wire [31:0] dp_io_pc; // @[riscvSingle.scala 58:20:@663.4]
  wire [31:0] dp_io_memAddress; // @[riscvSingle.scala 58:20:@663.4]
  wire [31:0] dp_io_memWriteData; // @[riscvSingle.scala 58:20:@663.4]
  wire  dp_io_zeroFlag; // @[riscvSingle.scala 58:20:@663.4]
  wire  dp_io_lessThanFlag; // @[riscvSingle.scala 58:20:@663.4]
  wire  dp_io_greaterThanFlag; // @[riscvSingle.scala 58:20:@663.4]
  wire [6:0] d_io_opcode; // @[riscvSingle.scala 59:19:@666.4]
  wire [6:0] d_io_funct7; // @[riscvSingle.scala 59:19:@666.4]
  wire [2:0] d_io_funct3; // @[riscvSingle.scala 59:19:@666.4]
  wire [2:0] d_io_regSrc; // @[riscvSingle.scala 59:19:@666.4]
  wire  d_io_regWriteEnable; // @[riscvSingle.scala 59:19:@666.4]
  wire [1:0] d_io_immSrc; // @[riscvSingle.scala 59:19:@666.4]
  wire  d_io_aluSrc; // @[riscvSingle.scala 59:19:@666.4]
  wire  d_io_pcSrc; // @[riscvSingle.scala 59:19:@666.4]
  wire [3:0] d_io_aluControl; // @[riscvSingle.scala 59:19:@666.4]
  wire  d_io_memWriteEnable; // @[riscvSingle.scala 59:19:@666.4]
  wire  d_io_memToReg; // @[riscvSingle.scala 59:19:@666.4]
  wire [1:0] d_io_branchSrc; // @[riscvSingle.scala 59:19:@666.4]
  wire  d_io_zeroFlag; // @[riscvSingle.scala 59:19:@666.4]
  wire  d_io_lessThanFlag; // @[riscvSingle.scala 59:19:@666.4]
  wire  d_io_greaterThanFlag; // @[riscvSingle.scala 59:19:@666.4]
  datapath dp ( // @[riscvSingle.scala 58:20:@663.4]
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
  decoder d ( // @[riscvSingle.scala 59:19:@666.4]
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
  assign io_pc = dp_io_pc; // @[riscvSingle.scala 90:11:@688.4]
  assign io_memWriteEnable = d_io_memWriteEnable; // @[riscvSingle.scala 91:23:@689.4]
  assign io_memAddress = dp_io_memAddress; // @[riscvSingle.scala 92:19:@690.4]
  assign io_memWriteData = dp_io_memWriteData; // @[riscvSingle.scala 93:21:@691.4]
  assign dp_clock = clock; // @[:@664.4]
  assign dp_reset = reset; // @[:@665.4]
  assign dp_io_regSrc = d_io_regSrc; // @[riscvSingle.scala 77:18:@678.4]
  assign dp_io_regWriteEnable = d_io_regWriteEnable; // @[riscvSingle.scala 78:26:@679.4]
  assign dp_io_immSrc = d_io_immSrc; // @[riscvSingle.scala 79:18:@680.4]
  assign dp_io_aluSrc = d_io_aluSrc; // @[riscvSingle.scala 80:18:@681.4]
  assign dp_io_pcSrc = d_io_pcSrc; // @[riscvSingle.scala 81:17:@682.4]
  assign dp_io_aluControl = d_io_aluControl; // @[riscvSingle.scala 82:22:@683.4]
  assign dp_io_memToReg = d_io_memToReg; // @[riscvSingle.scala 83:20:@684.4]
  assign dp_io_instr = io_instr; // @[riscvSingle.scala 84:17:@685.4]
  assign dp_io_memReadData = io_memReadData; // @[riscvSingle.scala 85:23:@686.4]
  assign dp_io_branchSrc = d_io_branchSrc; // @[riscvSingle.scala 86:21:@687.4]
  assign d_io_opcode = io_instr[6:0]; // @[riscvSingle.scala 70:17:@670.4]
  assign d_io_funct7 = io_instr[31:25]; // @[riscvSingle.scala 71:17:@672.4]
  assign d_io_funct3 = io_instr[14:12]; // @[riscvSingle.scala 72:17:@674.4]
  assign d_io_zeroFlag = dp_io_zeroFlag; // @[riscvSingle.scala 73:19:@675.4]
  assign d_io_lessThanFlag = dp_io_lessThanFlag; // @[riscvSingle.scala 74:23:@676.4]
  assign d_io_greaterThanFlag = dp_io_greaterThanFlag; // @[riscvSingle.scala 75:26:@677.4]
endmodule
module imem( // @[:@693.2]
  input         clock, // @[:@694.4]
  input  [31:0] io_instAddress, // @[:@696.4]
  output [31:0] io_inst // @[:@696.4]
);
  reg [31:0] MEM [0:1023]; // @[riscvSingle.scala 1017:18:@698.4]
  reg [31:0] _RAND_0;
  wire [31:0] MEM__T_12_data; // @[riscvSingle.scala 1017:18:@698.4]
  wire [9:0] MEM__T_12_addr; // @[riscvSingle.scala 1017:18:@698.4]
  assign MEM__T_12_addr = io_instAddress[9:0];
  assign MEM__T_12_data = MEM[MEM__T_12_addr]; // @[riscvSingle.scala 1017:18:@698.4]
  assign io_inst = MEM__T_12_data; // @[riscvSingle.scala 1020:13:@701.4]
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
module dmem( // @[:@703.2]
  input         clock, // @[:@704.4]
  input  [31:0] io_memAddress, // @[:@706.4]
  input  [31:0] io_memWriteData, // @[:@706.4]
  input         io_memWriteEnable, // @[:@706.4]
  output [31:0] io_memReadData // @[:@706.4]
);
  reg [31:0] mem [0:1023]; // @[riscvSingle.scala 1051:26:@708.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_21_data; // @[riscvSingle.scala 1051:26:@708.4]
  wire [9:0] mem__T_21_addr; // @[riscvSingle.scala 1051:26:@708.4]
  wire [31:0] mem__T_19_data; // @[riscvSingle.scala 1051:26:@708.4]
  wire [9:0] mem__T_19_addr; // @[riscvSingle.scala 1051:26:@708.4]
  wire  mem__T_19_mask; // @[riscvSingle.scala 1051:26:@708.4]
  wire  mem__T_19_en; // @[riscvSingle.scala 1051:26:@708.4]
  wire  _T_15; // @[riscvSingle.scala 1053:28:@709.4]
  wire [9:0] _T_18; // @[:@712.6]
  wire  _GEN_3; // @[riscvSingle.scala 1053:33:@711.4]
  reg [9:0] mem__T_21_addr_pipe_0;
  reg [31:0] _RAND_1;
  assign mem__T_21_addr = mem__T_21_addr_pipe_0;
  assign mem__T_21_data = mem[mem__T_21_addr]; // @[riscvSingle.scala 1051:26:@708.4]
  assign mem__T_19_data = io_memWriteData;
  assign mem__T_19_addr = io_memAddress[9:0];
  assign mem__T_19_mask = 1'h1;
  assign mem__T_19_en = _T_15 == 1'h0;
  assign _T_15 = ~ io_memWriteEnable; // @[riscvSingle.scala 1053:28:@709.4]
  assign _T_18 = io_memAddress[9:0]; // @[:@712.6]
  assign _GEN_3 = 1'h1; // @[riscvSingle.scala 1053:33:@711.4]
  assign io_memReadData = mem__T_21_data; // @[riscvSingle.scala 1057:20:@718.4]
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
  mem__T_21_addr_pipe_0 = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_19_en & mem__T_19_mask) begin
      mem[mem__T_19_addr] <= mem__T_19_data; // @[riscvSingle.scala 1051:26:@708.4]
    end
    if (_GEN_3) begin
      mem__T_21_addr_pipe_0 <= _T_18;
    end
  end
endmodule
module top( // @[:@720.2]
  input         clock, // @[:@721.4]
  input         reset, // @[:@722.4]
  output        io_valid, // @[:@723.4]
  output [31:0] io_dmemOut, // @[:@723.4]
  output [31:0] io_imemOut // @[:@723.4]
);
  wire  r_clock; // @[riscvSingle.scala 1085:19:@725.4]
  wire  r_reset; // @[riscvSingle.scala 1085:19:@725.4]
  wire [31:0] r_io_instr; // @[riscvSingle.scala 1085:19:@725.4]
  wire [31:0] r_io_memReadData; // @[riscvSingle.scala 1085:19:@725.4]
  wire [31:0] r_io_pc; // @[riscvSingle.scala 1085:19:@725.4]
  wire  r_io_memWriteEnable; // @[riscvSingle.scala 1085:19:@725.4]
  wire [31:0] r_io_memAddress; // @[riscvSingle.scala 1085:19:@725.4]
  wire [31:0] r_io_memWriteData; // @[riscvSingle.scala 1085:19:@725.4]
  wire  im_clock; // @[riscvSingle.scala 1086:20:@728.4]
  wire [31:0] im_io_instAddress; // @[riscvSingle.scala 1086:20:@728.4]
  wire [31:0] im_io_inst; // @[riscvSingle.scala 1086:20:@728.4]
  wire  dm_clock; // @[riscvSingle.scala 1087:20:@731.4]
  wire [31:0] dm_io_memAddress; // @[riscvSingle.scala 1087:20:@731.4]
  wire [31:0] dm_io_memWriteData; // @[riscvSingle.scala 1087:20:@731.4]
  wire  dm_io_memWriteEnable; // @[riscvSingle.scala 1087:20:@731.4]
  wire [31:0] dm_io_memReadData; // @[riscvSingle.scala 1087:20:@731.4]
  wire [6:0] _T_13; // @[riscvSingle.scala 1110:31:@743.4]
  wire  _T_15; // @[riscvSingle.scala 1110:38:@744.4]
  riscv r ( // @[riscvSingle.scala 1085:19:@725.4]
    .clock(r_clock),
    .reset(r_reset),
    .io_instr(r_io_instr),
    .io_memReadData(r_io_memReadData),
    .io_pc(r_io_pc),
    .io_memWriteEnable(r_io_memWriteEnable),
    .io_memAddress(r_io_memAddress),
    .io_memWriteData(r_io_memWriteData)
  );
  imem im ( // @[riscvSingle.scala 1086:20:@728.4]
    .clock(im_clock),
    .io_instAddress(im_io_instAddress),
    .io_inst(im_io_inst)
  );
  dmem dm ( // @[riscvSingle.scala 1087:20:@731.4]
    .clock(dm_clock),
    .io_memAddress(dm_io_memAddress),
    .io_memWriteData(dm_io_memWriteData),
    .io_memWriteEnable(dm_io_memWriteEnable),
    .io_memReadData(dm_io_memReadData)
  );
  assign _T_13 = im_io_inst[6:0]; // @[riscvSingle.scala 1110:31:@743.4]
  assign _T_15 = _T_13 == 7'h73; // @[riscvSingle.scala 1110:38:@744.4]
  assign io_valid = _T_15 ? 1'h0 : 1'h1; // @[riscvSingle.scala 1110:14:@746.4]
  assign io_dmemOut = dm_io_memWriteData; // @[riscvSingle.scala 1108:16:@741.4]
  assign io_imemOut = im_io_inst; // @[riscvSingle.scala 1109:16:@742.4]
  assign r_clock = clock; // @[:@726.4]
  assign r_reset = reset; // @[:@727.4]
  assign r_io_instr = im_io_inst; // @[riscvSingle.scala 1107:16:@740.4]
  assign r_io_memReadData = dm_io_memReadData; // @[riscvSingle.scala 1093:22:@737.4]
  assign im_clock = clock; // @[:@729.4]
  assign im_io_instAddress = r_io_pc / 32'h4; // @[riscvSingle.scala 1105:23:@739.4]
  assign dm_clock = clock; // @[:@732.4]
  assign dm_io_memAddress = r_io_memAddress; // @[riscvSingle.scala 1089:22:@734.4]
  assign dm_io_memWriteData = r_io_memWriteData; // @[riscvSingle.scala 1090:24:@735.4]
  assign dm_io_memWriteEnable = r_io_memWriteEnable; // @[riscvSingle.scala 1091:26:@736.4]
endmodule
