module regfile( // @[:@3.2]
  input         clk, // @[:@4.4]
  input         io_regWriteEnable, // @[:@6.4]
  input  [4:0]  io_regWriteAddress, // @[:@6.4]
  input  [31:0] io_regWriteData, // @[:@6.4]
  input  [4:0]  io_regReadAddress1, // @[:@6.4]
  input  [4:0]  io_regReadAddress2, // @[:@6.4]
  output [31:0] io_regReadData1, // @[:@6.4]
  output [31:0] io_regReadData2 // @[:@6.4]
);
  reg [31:0] rf [0:31]; // @[riscvSingle.scala 676:17:@8.4]
  reg [31:0] _RAND_0;
  wire [31:0] rf__T_33_data; // @[riscvSingle.scala 676:17:@8.4]
  wire [4:0] rf__T_33_addr; // @[riscvSingle.scala 676:17:@8.4]
  wire [31:0] rf__T_34_data; // @[riscvSingle.scala 676:17:@8.4]
  wire [4:0] rf__T_34_addr; // @[riscvSingle.scala 676:17:@8.4]
  wire [31:0] rf__T_29_data; // @[riscvSingle.scala 676:17:@8.4]
  wire [4:0] rf__T_29_addr; // @[riscvSingle.scala 676:17:@8.4]
  wire  rf__T_29_mask; // @[riscvSingle.scala 676:17:@8.4]
  wire  rf__T_29_en; // @[riscvSingle.scala 676:17:@8.4]
  wire [31:0] rf__T_31_data; // @[riscvSingle.scala 676:17:@8.4]
  wire [4:0] rf__T_31_addr; // @[riscvSingle.scala 676:17:@8.4]
  wire  rf__T_31_mask; // @[riscvSingle.scala 676:17:@8.4]
  wire  rf__T_31_en; // @[riscvSingle.scala 676:17:@8.4]
  wire  _T_21; // @[riscvSingle.scala 679:28:@9.4]
  wire  _T_23; // @[riscvSingle.scala 679:28:@10.4]
  wire  _T_25; // @[riscvSingle.scala 679:57:@11.4]
  wire  _T_27; // @[riscvSingle.scala 679:36:@12.4]
  wire  _T_28; // @[riscvSingle.scala 679:33:@13.4]
  assign rf__T_33_addr = io_regReadAddress1;
  assign rf__T_33_data = rf[rf__T_33_addr]; // @[riscvSingle.scala 676:17:@8.4]
  assign rf__T_34_addr = io_regReadAddress2;
  assign rf__T_34_data = rf[rf__T_34_addr]; // @[riscvSingle.scala 676:17:@8.4]
  assign rf__T_29_data = io_regWriteData;
  assign rf__T_29_addr = io_regWriteAddress;
  assign rf__T_29_mask = 1'h1;
  assign rf__T_29_en = _T_23 & _T_27;
  assign rf__T_31_data = 32'sh0;
  assign rf__T_31_addr = 5'h0;
  assign rf__T_31_mask = 1'h1;
  assign rf__T_31_en = _T_28 ? 1'h0 : 1'h1;
  assign _T_21 = ~ io_regWriteEnable; // @[riscvSingle.scala 679:28:@9.4]
  assign _T_23 = _T_21 == 1'h0; // @[riscvSingle.scala 679:28:@10.4]
  assign _T_25 = io_regWriteAddress == 5'h0; // @[riscvSingle.scala 679:57:@11.4]
  assign _T_27 = _T_25 == 1'h0; // @[riscvSingle.scala 679:36:@12.4]
  assign _T_28 = _T_23 & _T_27; // @[riscvSingle.scala 679:33:@13.4]
  assign io_regReadData1 = rf__T_33_data; // @[riscvSingle.scala 685:21:@23.4]
  assign io_regReadData2 = rf__T_34_data; // @[riscvSingle.scala 686:21:@25.4]
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
  always @(posedge clk) begin
    if(rf__T_29_en & rf__T_29_mask) begin
      rf[rf__T_29_addr] <= rf__T_29_data; // @[riscvSingle.scala 676:17:@8.4]
    end
    if(rf__T_31_en & rf__T_31_mask) begin
      rf[rf__T_31_addr] <= rf__T_31_data; // @[riscvSingle.scala 676:17:@8.4]
    end
  end
endmodule
module alu( // @[:@53.2]
  input  [31:0] io_a, // @[:@56.4]
  input  [31:0] io_b, // @[:@56.4]
  input  [3:0]  io_aluControl, // @[:@56.4]
  output [31:0] io_out, // @[:@56.4]
  output        io_zeroFlag, // @[:@56.4]
  output        io_lessThanFlag, // @[:@56.4]
  output        io_greaterThanFlag // @[:@56.4]
);
  wire  _T_20; // @[riscvSingle.scala 821:25:@58.4]
  wire [31:0] _T_21; // @[riscvSingle.scala 822:24:@60.6]
  wire [31:0] _T_22; // @[riscvSingle.scala 822:24:@61.6]
  wire  _T_24; // @[riscvSingle.scala 823:31:@65.6]
  wire [31:0] _T_25; // @[riscvSingle.scala 824:24:@67.8]
  wire [31:0] _T_26; // @[riscvSingle.scala 824:24:@68.8]
  wire  _T_28; // @[riscvSingle.scala 825:31:@72.8]
  wire [32:0] _T_29; // @[riscvSingle.scala 826:24:@74.10]
  wire [31:0] _T_30; // @[riscvSingle.scala 826:24:@75.10]
  wire [31:0] _T_31; // @[riscvSingle.scala 826:24:@76.10]
  wire  _T_33; // @[riscvSingle.scala 827:31:@80.10]
  wire [11:0] _T_34; // @[riscvSingle.scala 828:31:@82.12]
  wire [4126:0] _GEN_14; // @[riscvSingle.scala 828:24:@83.12]
  wire [4126:0] _T_35; // @[riscvSingle.scala 828:24:@83.12]
  wire  _T_37; // @[riscvSingle.scala 829:31:@87.12]
  wire [31:0] _T_39; // @[riscvSingle.scala 830:24:@90.14]
  wire  _T_41; // @[riscvSingle.scala 831:30:@94.14]
  wire [31:0] _T_42; // @[riscvSingle.scala 832:19:@96.16]
  wire [31:0] _T_43; // @[riscvSingle.scala 832:33:@97.16]
  wire  _T_44; // @[riscvSingle.scala 832:26:@98.16]
  wire [1:0] _GEN_0; // @[riscvSingle.scala 832:40:@99.16]
  wire  _T_48; // @[riscvSingle.scala 837:31:@107.16]
  wire [31:0] _T_49; // @[riscvSingle.scala 838:24:@109.18]
  wire [31:0] _T_50; // @[riscvSingle.scala 838:24:@110.18]
  wire  _T_52; // @[riscvSingle.scala 839:31:@114.18]
  wire  _T_56; // @[riscvSingle.scala 841:30:@121.20]
  wire [63:0] _T_57; // @[riscvSingle.scala 842:24:@123.22]
  wire  _T_59; // @[riscvSingle.scala 843:30:@127.22]
  wire  _T_60; // @[riscvSingle.scala 844:19:@129.24]
  wire [1:0] _GEN_1; // @[riscvSingle.scala 844:26:@130.24]
  wire  _T_64; // @[riscvSingle.scala 849:30:@138.24]
  wire [32:0] _T_65; // @[riscvSingle.scala 850:24:@140.26]
  wire  _T_67; // @[riscvSingle.scala 851:30:@144.26]
  wire [32:0] _T_68; // @[riscvSingle.scala 852:24:@146.28]
  wire [31:0] _T_69; // @[riscvSingle.scala 852:24:@147.28]
  wire [31:0] _T_70; // @[riscvSingle.scala 852:24:@148.28]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 851:39:@145.26]
  wire [32:0] _GEN_3; // @[riscvSingle.scala 849:39:@139.24]
  wire [32:0] _GEN_4; // @[riscvSingle.scala 843:39:@128.22]
  wire [63:0] _GEN_5; // @[riscvSingle.scala 841:39:@122.20]
  wire [63:0] _GEN_6; // @[riscvSingle.scala 839:40:@115.18]
  wire [63:0] _GEN_7; // @[riscvSingle.scala 837:40:@108.16]
  wire [63:0] _GEN_8; // @[riscvSingle.scala 831:38:@95.14]
  wire [63:0] _GEN_9; // @[riscvSingle.scala 829:40:@88.12]
  wire [4126:0] _GEN_10; // @[riscvSingle.scala 827:40:@81.10]
  wire [4126:0] _GEN_11; // @[riscvSingle.scala 825:40:@73.8]
  wire [4126:0] _GEN_12; // @[riscvSingle.scala 823:40:@66.6]
  wire [4126:0] _GEN_13; // @[riscvSingle.scala 821:34:@59.4]
  wire [31:0] _GEN_15; // @[riscvSingle.scala 822:16:@62.6 riscvSingle.scala 824:16:@69.8 riscvSingle.scala 826:16:@77.10 riscvSingle.scala 828:16:@84.12 riscvSingle.scala 830:16:@91.14 riscvSingle.scala 833:20:@100.18 riscvSingle.scala 835:20:@103.18 riscvSingle.scala 838:16:@111.18 riscvSingle.scala 840:16:@118.20 riscvSingle.scala 842:16:@124.22 riscvSingle.scala 845:20:@131.26 riscvSingle.scala 847:20:@134.26 riscvSingle.scala 850:16:@141.26 riscvSingle.scala 852:16:@149.28 riscvSingle.scala 854:16:@152.28]
  assign _T_20 = io_aluControl == 4'h0; // @[riscvSingle.scala 821:25:@58.4]
  assign _T_21 = $signed(io_a) & $signed(io_b); // @[riscvSingle.scala 822:24:@60.6]
  assign _T_22 = $signed(_T_21); // @[riscvSingle.scala 822:24:@61.6]
  assign _T_24 = io_aluControl == 4'h1; // @[riscvSingle.scala 823:31:@65.6]
  assign _T_25 = $signed(io_a) | $signed(io_b); // @[riscvSingle.scala 824:24:@67.8]
  assign _T_26 = $signed(_T_25); // @[riscvSingle.scala 824:24:@68.8]
  assign _T_28 = io_aluControl == 4'h2; // @[riscvSingle.scala 825:31:@72.8]
  assign _T_29 = $signed(io_a) + $signed(io_b); // @[riscvSingle.scala 826:24:@74.10]
  assign _T_30 = $signed(io_a) + $signed(io_b); // @[riscvSingle.scala 826:24:@75.10]
  assign _T_31 = $signed(_T_30); // @[riscvSingle.scala 826:24:@76.10]
  assign _T_33 = io_aluControl == 4'h3; // @[riscvSingle.scala 827:31:@80.10]
  assign _T_34 = io_b[11:0]; // @[riscvSingle.scala 828:31:@82.12]
  assign _GEN_14 = {{4095{io_a[31]}},io_a}; // @[riscvSingle.scala 828:24:@83.12]
  assign _T_35 = $signed(_GEN_14) << _T_34; // @[riscvSingle.scala 828:24:@83.12]
  assign _T_37 = io_aluControl == 4'h4; // @[riscvSingle.scala 829:31:@87.12]
  assign _T_39 = $signed(io_a) >>> _T_34; // @[riscvSingle.scala 830:24:@90.14]
  assign _T_41 = io_aluControl == 4'h5; // @[riscvSingle.scala 831:30:@94.14]
  assign _T_42 = $unsigned(io_a); // @[riscvSingle.scala 832:19:@96.16]
  assign _T_43 = $unsigned(io_b); // @[riscvSingle.scala 832:33:@97.16]
  assign _T_44 = _T_42 < _T_43; // @[riscvSingle.scala 832:26:@98.16]
  assign _GEN_0 = _T_44 ? $signed(2'sh1) : $signed(2'sh0); // @[riscvSingle.scala 832:40:@99.16]
  assign _T_48 = io_aluControl == 4'h6; // @[riscvSingle.scala 837:31:@107.16]
  assign _T_49 = $signed(io_a) ^ $signed(io_b); // @[riscvSingle.scala 838:24:@109.18]
  assign _T_50 = $signed(_T_49); // @[riscvSingle.scala 838:24:@110.18]
  assign _T_52 = io_aluControl == 4'h7; // @[riscvSingle.scala 839:31:@114.18]
  assign _T_56 = io_aluControl == 4'h8; // @[riscvSingle.scala 841:30:@121.20]
  assign _T_57 = $signed(io_a) * $signed(io_b); // @[riscvSingle.scala 842:24:@123.22]
  assign _T_59 = io_aluControl == 4'h9; // @[riscvSingle.scala 843:30:@127.22]
  assign _T_60 = $signed(io_a) < $signed(io_b); // @[riscvSingle.scala 844:19:@129.24]
  assign _GEN_1 = _T_60 ? $signed(2'sh1) : $signed(2'sh0); // @[riscvSingle.scala 844:26:@130.24]
  assign _T_64 = io_aluControl == 4'ha; // @[riscvSingle.scala 849:30:@138.24]
  assign _T_65 = $signed(io_a) / $signed(io_b); // @[riscvSingle.scala 850:24:@140.26]
  assign _T_67 = io_aluControl == 4'hc; // @[riscvSingle.scala 851:30:@144.26]
  assign _T_68 = $signed(io_a) - $signed(io_b); // @[riscvSingle.scala 852:24:@146.28]
  assign _T_69 = $signed(io_a) - $signed(io_b); // @[riscvSingle.scala 852:24:@147.28]
  assign _T_70 = $signed(_T_69); // @[riscvSingle.scala 852:24:@148.28]
  assign _GEN_2 = _T_67 ? $signed(_T_70) : $signed(32'sh0); // @[riscvSingle.scala 851:39:@145.26]
  assign _GEN_3 = _T_64 ? $signed(_T_65) : $signed({{1{_GEN_2[31]}},_GEN_2}); // @[riscvSingle.scala 849:39:@139.24]
  assign _GEN_4 = _T_59 ? $signed({{31{_GEN_1[1]}},_GEN_1}) : $signed(_GEN_3); // @[riscvSingle.scala 843:39:@128.22]
  assign _GEN_5 = _T_56 ? $signed(_T_57) : $signed({{31{_GEN_4[32]}},_GEN_4}); // @[riscvSingle.scala 841:39:@122.20]
  assign _GEN_6 = _T_52 ? $signed({{32{_T_39[31]}},_T_39}) : $signed(_GEN_5); // @[riscvSingle.scala 839:40:@115.18]
  assign _GEN_7 = _T_48 ? $signed({{32{_T_50[31]}},_T_50}) : $signed(_GEN_6); // @[riscvSingle.scala 837:40:@108.16]
  assign _GEN_8 = _T_41 ? $signed({{62{_GEN_0[1]}},_GEN_0}) : $signed(_GEN_7); // @[riscvSingle.scala 831:38:@95.14]
  assign _GEN_9 = _T_37 ? $signed({{32{_T_39[31]}},_T_39}) : $signed(_GEN_8); // @[riscvSingle.scala 829:40:@88.12]
  assign _GEN_10 = _T_33 ? $signed(_T_35) : $signed({{4063{_GEN_9[63]}},_GEN_9}); // @[riscvSingle.scala 827:40:@81.10]
  assign _GEN_11 = _T_28 ? $signed({{4095{_T_31[31]}},_T_31}) : $signed(_GEN_10); // @[riscvSingle.scala 825:40:@73.8]
  assign _GEN_12 = _T_24 ? $signed({{4095{_T_26[31]}},_T_26}) : $signed(_GEN_11); // @[riscvSingle.scala 823:40:@66.6]
  assign _GEN_13 = _T_20 ? $signed({{4095{_T_22[31]}},_T_22}) : $signed(_GEN_12); // @[riscvSingle.scala 821:34:@59.4]
  assign _GEN_15 = _GEN_13[31:0]; // @[riscvSingle.scala 822:16:@62.6 riscvSingle.scala 824:16:@69.8 riscvSingle.scala 826:16:@77.10 riscvSingle.scala 828:16:@84.12 riscvSingle.scala 830:16:@91.14 riscvSingle.scala 833:20:@100.18 riscvSingle.scala 835:20:@103.18 riscvSingle.scala 838:16:@111.18 riscvSingle.scala 840:16:@118.20 riscvSingle.scala 842:16:@124.22 riscvSingle.scala 845:20:@131.26 riscvSingle.scala 847:20:@134.26 riscvSingle.scala 850:16:@141.26 riscvSingle.scala 852:16:@149.28 riscvSingle.scala 854:16:@152.28]
  assign io_out = $signed(_GEN_15); // @[riscvSingle.scala 822:16:@62.6 riscvSingle.scala 824:16:@69.8 riscvSingle.scala 826:16:@77.10 riscvSingle.scala 828:16:@84.12 riscvSingle.scala 830:16:@91.14 riscvSingle.scala 833:20:@100.18 riscvSingle.scala 835:20:@103.18 riscvSingle.scala 838:16:@111.18 riscvSingle.scala 840:16:@118.20 riscvSingle.scala 842:16:@124.22 riscvSingle.scala 845:20:@131.26 riscvSingle.scala 847:20:@134.26 riscvSingle.scala 850:16:@141.26 riscvSingle.scala 852:16:@149.28 riscvSingle.scala 854:16:@152.28]
  assign io_zeroFlag = $signed(_T_31) == $signed(32'sh0); // @[riscvSingle.scala 858:17:@159.4]
  assign io_lessThanFlag = $signed(io_a) < $signed(io_b); // @[riscvSingle.scala 859:21:@161.4]
  assign io_greaterThanFlag = $signed(io_a) > $signed(io_b); // @[riscvSingle.scala 860:24:@163.4]
endmodule
module extend( // @[:@301.2]
  input  [11:0] io_instr12, // @[:@304.4]
  input  [19:0] io_instr20, // @[:@304.4]
  input  [1:0]  io_immSrc, // @[:@304.4]
  output [31:0] io_extImm // @[:@304.4]
);
  wire  _T_14; // @[riscvSingle.scala 127:20:@306.4]
  wire [11:0] _T_15; // @[riscvSingle.scala 128:33:@308.6]
  wire  _T_17; // @[riscvSingle.scala 129:26:@312.6]
  wire [12:0] _T_19; // @[Cat.scala 30:58:@314.8]
  wire [12:0] _T_20; // @[riscvSingle.scala 130:50:@315.8]
  wire  _T_22; // @[riscvSingle.scala 131:26:@319.8]
  wire [20:0] _T_24; // @[Cat.scala 30:58:@321.10]
  wire [20:0] _T_25; // @[riscvSingle.scala 132:50:@322.10]
  wire [20:0] _GEN_0; // @[riscvSingle.scala 131:34:@320.8]
  wire [20:0] _GEN_1; // @[riscvSingle.scala 129:34:@313.6]
  wire [20:0] _GEN_2; // @[riscvSingle.scala 127:28:@307.4]
  assign _T_14 = io_immSrc == 2'h0; // @[riscvSingle.scala 127:20:@306.4]
  assign _T_15 = $signed(io_instr12); // @[riscvSingle.scala 128:33:@308.6]
  assign _T_17 = io_immSrc == 2'h1; // @[riscvSingle.scala 129:26:@312.6]
  assign _T_19 = {io_instr12,1'h0}; // @[Cat.scala 30:58:@314.8]
  assign _T_20 = $signed(_T_19); // @[riscvSingle.scala 130:50:@315.8]
  assign _T_22 = io_immSrc == 2'h2; // @[riscvSingle.scala 131:26:@319.8]
  assign _T_24 = {io_instr20,1'h0}; // @[Cat.scala 30:58:@321.10]
  assign _T_25 = $signed(_T_24); // @[riscvSingle.scala 132:50:@322.10]
  assign _GEN_0 = _T_22 ? $signed(_T_25) : $signed(21'sh0); // @[riscvSingle.scala 131:34:@320.8]
  assign _GEN_1 = _T_17 ? $signed({{8{_T_20[12]}},_T_20}) : $signed(_GEN_0); // @[riscvSingle.scala 129:34:@313.6]
  assign _GEN_2 = _T_14 ? $signed({{9{_T_15[11]}},_T_15}) : $signed(_GEN_1); // @[riscvSingle.scala 127:28:@307.4]
  assign io_extImm = {{11{_GEN_2[20]}},_GEN_2}; // @[riscvSingle.scala 128:19:@309.6 riscvSingle.scala 130:19:@316.8 riscvSingle.scala 132:19:@323.10 riscvSingle.scala 134:19:@326.10]
endmodule
module datapath( // @[:@357.2]
  input         clk, // @[:@358.4]
  input         reset, // @[:@359.4]
  input  [2:0]  io_regSrc, // @[:@360.4]
  input         io_regWriteEnable, // @[:@360.4]
  input  [1:0]  io_immSrc, // @[:@360.4]
  input         io_aluSrc, // @[:@360.4]
  input         io_pcSrc, // @[:@360.4]
  input  [3:0]  io_aluControl, // @[:@360.4]
  input         io_memToReg, // @[:@360.4]
  input  [31:0] io_instr, // @[:@360.4]
  input  [31:0] io_memReadData, // @[:@360.4]
  input  [1:0]  io_branchSrc, // @[:@360.4]
  output [31:0] io_pc, // @[:@360.4]
  output [31:0] io_memAddress, // @[:@360.4]
  output [31:0] io_memWriteData, // @[:@360.4]
  output        io_zeroFlag, // @[:@360.4]
  output        io_lessThanFlag, // @[:@360.4]
  output        io_greaterThanFlag // @[:@360.4]
);
  wire  rf_clk; // @[riscvSingle.scala 531:20:@362.4]
  wire  rf_io_regWriteEnable; // @[riscvSingle.scala 531:20:@362.4]
  wire [4:0] rf_io_regWriteAddress; // @[riscvSingle.scala 531:20:@362.4]
  wire [31:0] rf_io_regWriteData; // @[riscvSingle.scala 531:20:@362.4]
  wire [4:0] rf_io_regReadAddress1; // @[riscvSingle.scala 531:20:@362.4]
  wire [4:0] rf_io_regReadAddress2; // @[riscvSingle.scala 531:20:@362.4]
  wire [31:0] rf_io_regReadData1; // @[riscvSingle.scala 531:20:@362.4]
  wire [31:0] rf_io_regReadData2; // @[riscvSingle.scala 531:20:@362.4]
  wire [31:0] alu_io_a; // @[riscvSingle.scala 533:21:@368.4]
  wire [31:0] alu_io_b; // @[riscvSingle.scala 533:21:@368.4]
  wire [3:0] alu_io_aluControl; // @[riscvSingle.scala 533:21:@368.4]
  wire [31:0] alu_io_out; // @[riscvSingle.scala 533:21:@368.4]
  wire  alu_io_zeroFlag; // @[riscvSingle.scala 533:21:@368.4]
  wire  alu_io_lessThanFlag; // @[riscvSingle.scala 533:21:@368.4]
  wire  alu_io_greaterThanFlag; // @[riscvSingle.scala 533:21:@368.4]
  wire [11:0] ext1_io_instr12; // @[riscvSingle.scala 535:22:@374.4]
  wire [19:0] ext1_io_instr20; // @[riscvSingle.scala 535:22:@374.4]
  wire [1:0] ext1_io_immSrc; // @[riscvSingle.scala 535:22:@374.4]
  wire [31:0] ext1_io_extImm; // @[riscvSingle.scala 535:22:@374.4]
  wire [11:0] ext2_io_instr12; // @[riscvSingle.scala 536:22:@377.4]
  wire [19:0] ext2_io_instr20; // @[riscvSingle.scala 536:22:@377.4]
  wire [1:0] ext2_io_immSrc; // @[riscvSingle.scala 536:22:@377.4]
  wire [31:0] ext2_io_extImm; // @[riscvSingle.scala 536:22:@377.4]
  wire  _T_51; // @[riscvSingle.scala 549:30:@390.4]
  wire  _T_52; // @[riscvSingle.scala 549:44:@391.4]
  wire [5:0] _T_53; // @[riscvSingle.scala 549:57:@392.4]
  wire [3:0] _T_54; // @[riscvSingle.scala 549:74:@393.4]
  wire [9:0] _T_55; // @[Cat.scala 30:58:@394.4]
  wire [1:0] _T_56; // @[Cat.scala 30:58:@395.4]
  wire [7:0] _T_59; // @[riscvSingle.scala 550:42:@399.4]
  wire  _T_60; // @[riscvSingle.scala 550:59:@400.4]
  wire [9:0] _T_61; // @[riscvSingle.scala 550:73:@401.4]
  wire [19:0] _T_64; // @[Cat.scala 30:58:@404.4]
  wire [19:0] _T_65; // @[riscvSingle.scala 551:28:@406.4]
  wire [31:0] _T_67; // @[Cat.scala 30:58:@407.4]
  wire [31:0] auiImm; // @[riscvSingle.scala 551:49:@408.4]
  wire  _T_70; // @[riscvSingle.scala 559:28:@418.4]
  wire  _T_72; // @[riscvSingle.scala 559:28:@419.4]
  wire [31:0] extImm; // @[riscvSingle.scala 559:18:@420.4]
  reg [31:0] pcReg; // @[riscvSingle.scala 563:25:@422.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_81; // @[riscvSingle.scala 568:22:@427.4]
  wire [31:0] pcPlus4; // @[riscvSingle.scala 568:22:@428.4]
  wire [31:0] _T_86; // @[riscvSingle.scala 570:40:@433.4]
  wire [31:0] branchExtImm; // @[riscvSingle.scala 541:28:@384.4 riscvSingle.scala 558:18:@417.4]
  wire [32:0] _T_87; // @[riscvSingle.scala 570:30:@434.4]
  wire [31:0] _T_88; // @[riscvSingle.scala 570:30:@435.4]
  wire [31:0] pcBranch; // @[riscvSingle.scala 570:30:@436.4]
  wire [31:0] _T_90; // @[riscvSingle.scala 571:31:@438.4]
  wire [31:0] pcRegBranch; // @[riscvSingle.scala 571:38:@439.4]
  wire  _T_93; // @[riscvSingle.scala 572:31:@441.4]
  wire  _T_94; // @[riscvSingle.scala 572:35:@442.4]
  wire  _T_96; // @[riscvSingle.scala 572:35:@443.4]
  wire  _T_97; // @[riscvSingle.scala 572:70:@444.4]
  wire  _T_98; // @[riscvSingle.scala 572:74:@445.4]
  wire  _T_100; // @[riscvSingle.scala 572:74:@446.4]
  wire [31:0] _T_101; // @[riscvSingle.scala 572:89:@447.4]
  wire [31:0] _T_102; // @[riscvSingle.scala 572:57:@448.4]
  wire [31:0] pcNext; // @[riscvSingle.scala 572:18:@449.4]
  wire [6:0] _T_104; // @[riscvSingle.scala 578:28:@453.4]
  wire [4:0] _T_105; // @[riscvSingle.scala 578:45:@454.4]
  wire [11:0] _T_106; // @[Cat.scala 30:58:@455.4]
  wire [11:0] _T_107; // @[riscvSingle.scala 578:54:@456.4]
  wire  _T_108; // @[riscvSingle.scala 581:40:@458.4]
  wire  _T_110; // @[riscvSingle.scala 581:40:@459.4]
  wire [31:0] memImm; // @[riscvSingle.scala 540:22:@383.4 riscvSingle.scala 578:12:@457.4]
  wire [31:0] _T_111; // @[riscvSingle.scala 581:27:@460.4]
  wire [32:0] _T_112; // @[riscvSingle.scala 581:70:@461.4]
  wire [31:0] _T_113; // @[riscvSingle.scala 581:70:@462.4]
  wire [31:0] _T_114; // @[riscvSingle.scala 581:70:@463.4]
  wire  _T_116; // @[riscvSingle.scala 584:37:@466.4]
  wire  _T_117; // @[riscvSingle.scala 584:41:@467.4]
  wire  _T_119; // @[riscvSingle.scala 584:41:@468.4]
  wire [4:0] _T_121; // @[riscvSingle.scala 584:67:@469.4]
  wire  _T_123; // @[riscvSingle.scala 585:37:@472.4]
  wire  _T_124; // @[riscvSingle.scala 585:41:@473.4]
  wire  _T_126; // @[riscvSingle.scala 585:41:@474.4]
  wire [4:0] _T_128; // @[riscvSingle.scala 585:71:@476.4]
  wire  _T_130; // @[riscvSingle.scala 586:34:@479.4]
  wire  _T_131; // @[riscvSingle.scala 586:38:@480.4]
  wire  _T_133; // @[riscvSingle.scala 586:38:@481.4]
  wire [31:0] _T_138; // @[riscvSingle.scala 586:63:@485.4]
  wire  _T_150; // @[riscvSingle.scala 611:31:@512.4]
  wire  _T_152; // @[riscvSingle.scala 611:31:@513.4]
  wire [11:0] jumpImm; // @[riscvSingle.scala 538:23:@381.4 riscvSingle.scala 550:13:@405.4]
  regfile rf ( // @[riscvSingle.scala 531:20:@362.4]
    .clk(rf_clk),
    .io_regWriteEnable(rf_io_regWriteEnable),
    .io_regWriteAddress(rf_io_regWriteAddress),
    .io_regWriteData(rf_io_regWriteData),
    .io_regReadAddress1(rf_io_regReadAddress1),
    .io_regReadAddress2(rf_io_regReadAddress2),
    .io_regReadData1(rf_io_regReadData1),
    .io_regReadData2(rf_io_regReadData2)
  );
  alu alu ( // @[riscvSingle.scala 533:21:@368.4]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_aluControl(alu_io_aluControl),
    .io_out(alu_io_out),
    .io_zeroFlag(alu_io_zeroFlag),
    .io_lessThanFlag(alu_io_lessThanFlag),
    .io_greaterThanFlag(alu_io_greaterThanFlag)
  );
  extend ext1 ( // @[riscvSingle.scala 535:22:@374.4]
    .io_instr12(ext1_io_instr12),
    .io_instr20(ext1_io_instr20),
    .io_immSrc(ext1_io_immSrc),
    .io_extImm(ext1_io_extImm)
  );
  extend ext2 ( // @[riscvSingle.scala 536:22:@377.4]
    .io_instr12(ext2_io_instr12),
    .io_instr20(ext2_io_instr20),
    .io_immSrc(ext2_io_immSrc),
    .io_extImm(ext2_io_extImm)
  );
  assign _T_51 = io_instr[31]; // @[riscvSingle.scala 549:30:@390.4]
  assign _T_52 = io_instr[7]; // @[riscvSingle.scala 549:44:@391.4]
  assign _T_53 = io_instr[30:25]; // @[riscvSingle.scala 549:57:@392.4]
  assign _T_54 = io_instr[11:8]; // @[riscvSingle.scala 549:74:@393.4]
  assign _T_55 = {_T_53,_T_54}; // @[Cat.scala 30:58:@394.4]
  assign _T_56 = {_T_51,_T_52}; // @[Cat.scala 30:58:@395.4]
  assign _T_59 = io_instr[19:12]; // @[riscvSingle.scala 550:42:@399.4]
  assign _T_60 = io_instr[20]; // @[riscvSingle.scala 550:59:@400.4]
  assign _T_61 = io_instr[30:21]; // @[riscvSingle.scala 550:73:@401.4]
  assign _T_64 = {_T_51,_T_59,_T_60,_T_61}; // @[Cat.scala 30:58:@404.4]
  assign _T_65 = io_instr[31:12]; // @[riscvSingle.scala 551:28:@406.4]
  assign _T_67 = {_T_65,12'h0}; // @[Cat.scala 30:58:@407.4]
  assign auiImm = $signed(_T_67); // @[riscvSingle.scala 551:49:@408.4]
  assign _T_70 = ~ io_pcSrc; // @[riscvSingle.scala 559:28:@418.4]
  assign _T_72 = _T_70 == 1'h0; // @[riscvSingle.scala 559:28:@419.4]
  assign extImm = _T_72 ? $signed(auiImm) : $signed(ext2_io_extImm); // @[riscvSingle.scala 559:18:@420.4]
  assign _T_81 = pcReg + 32'h4; // @[riscvSingle.scala 568:22:@427.4]
  assign pcPlus4 = pcReg + 32'h4; // @[riscvSingle.scala 568:22:@428.4]
  assign _T_86 = $signed(pcPlus4); // @[riscvSingle.scala 570:40:@433.4]
  assign branchExtImm = ext1_io_extImm; // @[riscvSingle.scala 541:28:@384.4 riscvSingle.scala 558:18:@417.4]
  assign _T_87 = $signed(branchExtImm) + $signed(_T_86); // @[riscvSingle.scala 570:30:@434.4]
  assign _T_88 = $signed(branchExtImm) + $signed(_T_86); // @[riscvSingle.scala 570:30:@435.4]
  assign pcBranch = $signed(_T_88); // @[riscvSingle.scala 570:30:@436.4]
  assign _T_90 = $unsigned(alu_io_out); // @[riscvSingle.scala 571:31:@438.4]
  assign pcRegBranch = _T_90 & 32'hfffffffe; // @[riscvSingle.scala 571:38:@439.4]
  assign _T_93 = io_branchSrc[1]; // @[riscvSingle.scala 572:31:@441.4]
  assign _T_94 = ~ _T_93; // @[riscvSingle.scala 572:35:@442.4]
  assign _T_96 = _T_94 == 1'h0; // @[riscvSingle.scala 572:35:@443.4]
  assign _T_97 = io_branchSrc[0]; // @[riscvSingle.scala 572:70:@444.4]
  assign _T_98 = ~ _T_97; // @[riscvSingle.scala 572:74:@445.4]
  assign _T_100 = _T_98 == 1'h0; // @[riscvSingle.scala 572:74:@446.4]
  assign _T_101 = $unsigned(pcBranch); // @[riscvSingle.scala 572:89:@447.4]
  assign _T_102 = _T_100 ? _T_101 : pcPlus4; // @[riscvSingle.scala 572:57:@448.4]
  assign pcNext = _T_96 ? pcRegBranch : _T_102; // @[riscvSingle.scala 572:18:@449.4]
  assign _T_104 = io_instr[31:25]; // @[riscvSingle.scala 578:28:@453.4]
  assign _T_105 = io_instr[11:7]; // @[riscvSingle.scala 578:45:@454.4]
  assign _T_106 = {_T_104,_T_105}; // @[Cat.scala 30:58:@455.4]
  assign _T_107 = $signed(_T_106); // @[riscvSingle.scala 578:54:@456.4]
  assign _T_108 = ~ io_memToReg; // @[riscvSingle.scala 581:40:@458.4]
  assign _T_110 = _T_108 == 1'h0; // @[riscvSingle.scala 581:40:@459.4]
  assign memImm = {{20{_T_107[11]}},_T_107}; // @[riscvSingle.scala 540:22:@383.4 riscvSingle.scala 578:12:@457.4]
  assign _T_111 = _T_110 ? $signed(extImm) : $signed(memImm); // @[riscvSingle.scala 581:27:@460.4]
  assign _T_112 = $signed(_T_111) + $signed(rf_io_regReadData1); // @[riscvSingle.scala 581:70:@461.4]
  assign _T_113 = $signed(_T_111) + $signed(rf_io_regReadData1); // @[riscvSingle.scala 581:70:@462.4]
  assign _T_114 = $signed(_T_113); // @[riscvSingle.scala 581:70:@463.4]
  assign _T_116 = io_regSrc[0]; // @[riscvSingle.scala 584:37:@466.4]
  assign _T_117 = ~ _T_116; // @[riscvSingle.scala 584:41:@467.4]
  assign _T_119 = _T_117 == 1'h0; // @[riscvSingle.scala 584:41:@468.4]
  assign _T_121 = io_instr[19:15]; // @[riscvSingle.scala 584:67:@469.4]
  assign _T_123 = io_regSrc[1]; // @[riscvSingle.scala 585:37:@472.4]
  assign _T_124 = ~ _T_123; // @[riscvSingle.scala 585:41:@473.4]
  assign _T_126 = _T_124 == 1'h0; // @[riscvSingle.scala 585:41:@474.4]
  assign _T_128 = io_instr[24:20]; // @[riscvSingle.scala 585:71:@476.4]
  assign _T_130 = io_regSrc[2]; // @[riscvSingle.scala 586:34:@479.4]
  assign _T_131 = ~ _T_130; // @[riscvSingle.scala 586:38:@480.4]
  assign _T_133 = _T_131 == 1'h0; // @[riscvSingle.scala 586:38:@481.4]
  assign _T_138 = _T_110 ? $signed(io_memReadData) : $signed(alu_io_out); // @[riscvSingle.scala 586:63:@485.4]
  assign _T_150 = ~ io_aluSrc; // @[riscvSingle.scala 611:31:@512.4]
  assign _T_152 = _T_150 == 1'h0; // @[riscvSingle.scala 611:31:@513.4]
  assign jumpImm = _T_64[11:0]; // @[riscvSingle.scala 538:23:@381.4 riscvSingle.scala 550:13:@405.4]
  assign io_pc = pcReg; // @[riscvSingle.scala 574:11:@452.4]
  assign io_memAddress = $unsigned(_T_114); // @[riscvSingle.scala 581:19:@465.4]
  assign io_memWriteData = rf_io_regReadData2; // @[riscvSingle.scala 592:21:@494.4]
  assign io_zeroFlag = alu_io_zeroFlag; // @[riscvSingle.scala 613:17:@517.4]
  assign io_lessThanFlag = alu_io_lessThanFlag; // @[riscvSingle.scala 614:21:@518.4]
  assign io_greaterThanFlag = alu_io_greaterThanFlag; // @[riscvSingle.scala 615:24:@519.4]
  assign rf_clk = clk; // @[:@363.4]
  assign rf_io_regWriteEnable = io_regWriteEnable; // @[riscvSingle.scala 587:26:@488.4]
  assign rf_io_regWriteAddress = io_instr[11:7]; // @[riscvSingle.scala 590:27:@492.4]
  assign rf_io_regWriteData = _T_133 ? $signed(_T_86) : $signed(_T_138); // @[riscvSingle.scala 591:24:@493.4]
  assign rf_io_regReadAddress1 = _T_119 ? 5'h1f : _T_121; // @[riscvSingle.scala 588:27:@489.4]
  assign rf_io_regReadAddress2 = _T_126 ? _T_105 : _T_128; // @[riscvSingle.scala 589:27:@490.4]
  assign alu_io_a = _T_72 ? $signed(_T_86) : $signed(rf_io_regReadData1); // @[riscvSingle.scala 610:14:@511.4]
  assign alu_io_b = _T_152 ? $signed(extImm) : $signed(rf_io_regReadData2); // @[riscvSingle.scala 611:14:@515.4]
  assign alu_io_aluControl = io_aluControl; // @[riscvSingle.scala 612:23:@516.4]
  assign ext1_io_instr12 = {_T_56,_T_55}; // @[riscvSingle.scala 552:21:@410.4]
  assign ext1_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 553:21:@411.4]
  assign ext1_io_immSrc = io_immSrc; // @[riscvSingle.scala 554:20:@412.4]
  assign ext2_io_instr12 = io_instr[31:20]; // @[riscvSingle.scala 555:21:@414.4]
  assign ext2_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 556:21:@415.4]
  assign ext2_io_immSrc = io_immSrc; // @[riscvSingle.scala 557:20:@416.4]
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
  always @(posedge clk) begin
    if (reset) begin
      pcReg <= 32'h0;
    end else begin
      if (_T_96) begin
        pcReg <= pcRegBranch;
      end else begin
        if (_T_100) begin
          pcReg <= _T_101;
        end else begin
          pcReg <= pcPlus4;
        end
      end
    end
  end
endmodule
module decoder( // @[:@521.2]
  input  [6:0] io_opcode, // @[:@524.4]
  input  [6:0] io_funct7, // @[:@524.4]
  input  [2:0] io_funct3, // @[:@524.4]
  output [2:0] io_regSrc, // @[:@524.4]
  output       io_regWriteEnable, // @[:@524.4]
  output [1:0] io_immSrc, // @[:@524.4]
  output       io_aluSrc, // @[:@524.4]
  output       io_pcSrc, // @[:@524.4]
  output [3:0] io_aluControl, // @[:@524.4]
  output       io_memWriteEnable, // @[:@524.4]
  output       io_memToReg, // @[:@524.4]
  output [1:0] io_branchSrc, // @[:@524.4]
  input        io_zeroFlag, // @[:@524.4]
  input        io_lessThanFlag, // @[:@524.4]
  input        io_greaterThanFlag // @[:@524.4]
);
  wire  _T_40; // @[riscvSingle.scala 213:20:@526.4]
  wire  _T_52; // @[riscvSingle.scala 225:24:@538.6]
  wire  _T_54; // @[riscvSingle.scala 226:28:@540.8]
  wire  _T_57; // @[riscvSingle.scala 228:34:@545.10]
  wire  _T_60; // @[riscvSingle.scala 230:34:@550.12]
  wire  _T_63; // @[riscvSingle.scala 232:34:@555.14]
  wire  _T_66; // @[riscvSingle.scala 234:34:@560.16]
  wire  _T_69; // @[riscvSingle.scala 236:34:@565.18]
  wire  _T_72; // @[riscvSingle.scala 238:34:@570.20]
  wire  _T_75; // @[riscvSingle.scala 240:34:@575.22]
  wire [3:0] _GEN_0; // @[riscvSingle.scala 240:48:@576.22]
  wire [3:0] _GEN_1; // @[riscvSingle.scala 238:48:@571.20]
  wire [3:0] _GEN_2; // @[riscvSingle.scala 236:48:@566.18]
  wire [3:0] _GEN_3; // @[riscvSingle.scala 234:48:@561.16]
  wire [3:0] _GEN_4; // @[riscvSingle.scala 232:48:@556.14]
  wire [3:0] _GEN_5; // @[riscvSingle.scala 230:48:@551.12]
  wire [3:0] _GEN_6; // @[riscvSingle.scala 228:48:@546.10]
  wire [3:0] _GEN_7; // @[riscvSingle.scala 226:42:@541.8]
  wire  _T_79; // @[riscvSingle.scala 245:30:@584.8]
  wire [3:0] _GEN_8; // @[riscvSingle.scala 248:47:@592.12]
  wire [3:0] _GEN_9; // @[riscvSingle.scala 246:41:@587.10]
  wire  _T_88; // @[riscvSingle.scala 253:30:@600.10]
  wire [3:0] _GEN_10; // @[riscvSingle.scala 256:47:@608.14]
  wire [3:0] _GEN_11; // @[riscvSingle.scala 254:43:@603.12]
  wire [3:0] _GEN_12; // @[riscvSingle.scala 253:47:@601.10]
  wire [3:0] _GEN_13; // @[riscvSingle.scala 245:47:@585.8]
  wire [3:0] _GEN_14; // @[riscvSingle.scala 225:42:@539.6]
  wire  _T_98; // @[riscvSingle.scala 264:26:@620.6]
  wire  _T_111; // @[riscvSingle.scala 276:26:@635.8]
  wire [5:0] _T_122; // @[riscvSingle.scala 288:24:@647.10]
  wire  _T_124; // @[riscvSingle.scala 288:30:@648.10]
  wire [3:0] _GEN_15; // @[riscvSingle.scala 289:41:@651.12]
  wire [2:0] _GEN_17; // @[riscvSingle.scala 305:48:@685.22]
  wire [2:0] _GEN_18; // @[riscvSingle.scala 303:48:@680.20]
  wire [2:0] _GEN_19; // @[riscvSingle.scala 301:48:@675.18]
  wire [3:0] _GEN_20; // @[riscvSingle.scala 299:48:@670.16]
  wire [3:0] _GEN_21; // @[riscvSingle.scala 297:48:@665.14]
  wire [3:0] _GEN_22; // @[riscvSingle.scala 295:42:@660.12]
  wire [3:0] _GEN_23; // @[riscvSingle.scala 288:46:@649.10]
  wire  _T_152; // @[riscvSingle.scala 313:26:@699.10]
  wire  _T_165; // @[riscvSingle.scala 325:26:@714.12]
  wire  _T_178; // @[riscvSingle.scala 337:26:@729.14]
  wire  _T_193; // @[riscvSingle.scala 349:37:@743.16]
  wire  _T_198; // @[riscvSingle.scala 351:57:@749.18]
  wire  _T_199; // @[riscvSingle.scala 351:43:@750.18]
  wire  _T_205; // @[riscvSingle.scala 353:43:@757.20]
  wire  _T_211; // @[riscvSingle.scala 355:43:@764.22]
  wire  _T_217; // @[riscvSingle.scala 357:43:@771.24]
  wire  _T_223; // @[riscvSingle.scala 359:43:@778.26]
  wire  _GEN_25; // @[riscvSingle.scala 357:70:@772.24]
  wire  _GEN_26; // @[riscvSingle.scala 355:73:@765.22]
  wire  _GEN_27; // @[riscvSingle.scala 353:70:@758.20]
  wire  _GEN_28; // @[riscvSingle.scala 351:66:@751.18]
  wire  _GEN_29; // @[riscvSingle.scala 349:59:@744.16]
  wire  _T_227; // @[riscvSingle.scala 365:26:@787.16]
  wire  _T_240; // @[riscvSingle.scala 377:26:@802.18]
  wire  _T_253; // @[riscvSingle.scala 389:26:@817.20]
  wire  _T_266; // @[riscvSingle.scala 401:26:@832.22]
  wire  _GEN_41; // @[riscvSingle.scala 389:44:@818.20]
  wire [2:0] _GEN_44; // @[riscvSingle.scala 377:44:@803.18]
  wire  _GEN_46; // @[riscvSingle.scala 377:44:@803.18]
  wire [1:0] _GEN_48; // @[riscvSingle.scala 377:44:@803.18]
  wire [2:0] _GEN_51; // @[riscvSingle.scala 365:44:@788.16]
  wire [1:0] _GEN_52; // @[riscvSingle.scala 365:44:@788.16]
  wire  _GEN_53; // @[riscvSingle.scala 365:44:@788.16]
  wire  _GEN_55; // @[riscvSingle.scala 365:44:@788.16]
  wire [1:0] _GEN_56; // @[riscvSingle.scala 365:44:@788.16]
  wire [1:0] _GEN_57; // @[riscvSingle.scala 365:44:@788.16]
  wire [2:0] _GEN_60; // @[riscvSingle.scala 337:44:@730.14]
  wire [1:0] _GEN_61; // @[riscvSingle.scala 337:44:@730.14]
  wire  _GEN_62; // @[riscvSingle.scala 337:44:@730.14]
  wire  _GEN_64; // @[riscvSingle.scala 337:44:@730.14]
  wire [2:0] _GEN_65; // @[riscvSingle.scala 337:44:@730.14]
  wire [1:0] _GEN_68; // @[riscvSingle.scala 337:44:@730.14]
  wire [2:0] _GEN_69; // @[riscvSingle.scala 325:44:@715.12]
  wire [1:0] _GEN_70; // @[riscvSingle.scala 325:44:@715.12]
  wire  _GEN_71; // @[riscvSingle.scala 325:44:@715.12]
  wire  _GEN_73; // @[riscvSingle.scala 325:44:@715.12]
  wire [1:0] _GEN_75; // @[riscvSingle.scala 325:44:@715.12]
  wire [2:0] _GEN_76; // @[riscvSingle.scala 325:44:@715.12]
  wire [2:0] _GEN_79; // @[riscvSingle.scala 313:44:@700.10]
  wire [1:0] _GEN_80; // @[riscvSingle.scala 313:44:@700.10]
  wire  _GEN_81; // @[riscvSingle.scala 313:44:@700.10]
  wire  _GEN_84; // @[riscvSingle.scala 313:44:@700.10]
  wire  _GEN_85; // @[riscvSingle.scala 313:44:@700.10]
  wire [1:0] _GEN_86; // @[riscvSingle.scala 313:44:@700.10]
  wire [2:0] _GEN_87; // @[riscvSingle.scala 313:44:@700.10]
  wire [2:0] _GEN_90; // @[riscvSingle.scala 276:44:@636.8]
  wire [1:0] _GEN_91; // @[riscvSingle.scala 276:44:@636.8]
  wire  _GEN_92; // @[riscvSingle.scala 276:44:@636.8]
  wire  _GEN_94; // @[riscvSingle.scala 276:44:@636.8]
  wire  _GEN_95; // @[riscvSingle.scala 276:44:@636.8]
  wire  _GEN_96; // @[riscvSingle.scala 276:44:@636.8]
  wire [1:0] _GEN_97; // @[riscvSingle.scala 276:44:@636.8]
  wire [3:0] _GEN_100; // @[riscvSingle.scala 276:44:@636.8]
  wire [2:0] _GEN_101; // @[riscvSingle.scala 264:43:@621.6]
  wire [1:0] _GEN_102; // @[riscvSingle.scala 264:43:@621.6]
  wire  _GEN_103; // @[riscvSingle.scala 264:43:@621.6]
  wire  _GEN_105; // @[riscvSingle.scala 264:43:@621.6]
  wire  _GEN_106; // @[riscvSingle.scala 264:43:@621.6]
  wire  _GEN_107; // @[riscvSingle.scala 264:43:@621.6]
  wire [1:0] _GEN_108; // @[riscvSingle.scala 264:43:@621.6]
  wire [3:0] _GEN_109; // @[riscvSingle.scala 264:43:@621.6]
  assign _T_40 = io_opcode == 7'h33; // @[riscvSingle.scala 213:20:@526.4]
  assign _T_52 = io_funct7 == 7'h0; // @[riscvSingle.scala 225:24:@538.6]
  assign _T_54 = io_funct3 == 3'h0; // @[riscvSingle.scala 226:28:@540.8]
  assign _T_57 = io_funct3 == 3'h1; // @[riscvSingle.scala 228:34:@545.10]
  assign _T_60 = io_funct3 == 3'h2; // @[riscvSingle.scala 230:34:@550.12]
  assign _T_63 = io_funct3 == 3'h3; // @[riscvSingle.scala 232:34:@555.14]
  assign _T_66 = io_funct3 == 3'h4; // @[riscvSingle.scala 234:34:@560.16]
  assign _T_69 = io_funct3 == 3'h5; // @[riscvSingle.scala 236:34:@565.18]
  assign _T_72 = io_funct3 == 3'h6; // @[riscvSingle.scala 238:34:@570.20]
  assign _T_75 = io_funct3 == 3'h7; // @[riscvSingle.scala 240:34:@575.22]
  assign _GEN_0 = _T_75 ? 4'h0 : 4'hf; // @[riscvSingle.scala 240:48:@576.22]
  assign _GEN_1 = _T_72 ? 4'h1 : _GEN_0; // @[riscvSingle.scala 238:48:@571.20]
  assign _GEN_2 = _T_69 ? 4'h7 : _GEN_1; // @[riscvSingle.scala 236:48:@566.18]
  assign _GEN_3 = _T_66 ? 4'h6 : _GEN_2; // @[riscvSingle.scala 234:48:@561.16]
  assign _GEN_4 = _T_63 ? 4'h5 : _GEN_3; // @[riscvSingle.scala 232:48:@556.14]
  assign _GEN_5 = _T_60 ? 4'h9 : _GEN_4; // @[riscvSingle.scala 230:48:@551.12]
  assign _GEN_6 = _T_57 ? 4'h3 : _GEN_5; // @[riscvSingle.scala 228:48:@546.10]
  assign _GEN_7 = _T_54 ? 4'h2 : _GEN_6; // @[riscvSingle.scala 226:42:@541.8]
  assign _T_79 = io_funct7 == 7'h1; // @[riscvSingle.scala 245:30:@584.8]
  assign _GEN_8 = _T_66 ? 4'ha : 4'hf; // @[riscvSingle.scala 248:47:@592.12]
  assign _GEN_9 = _T_54 ? 4'h8 : _GEN_8; // @[riscvSingle.scala 246:41:@587.10]
  assign _T_88 = io_funct7 == 7'h20; // @[riscvSingle.scala 253:30:@600.10]
  assign _GEN_10 = _T_54 ? 4'hc : 4'hf; // @[riscvSingle.scala 256:47:@608.14]
  assign _GEN_11 = _T_69 ? 4'h4 : _GEN_10; // @[riscvSingle.scala 254:43:@603.12]
  assign _GEN_12 = _T_88 ? _GEN_11 : 4'hf; // @[riscvSingle.scala 253:47:@601.10]
  assign _GEN_13 = _T_79 ? _GEN_9 : _GEN_12; // @[riscvSingle.scala 245:47:@585.8]
  assign _GEN_14 = _T_52 ? _GEN_7 : _GEN_13; // @[riscvSingle.scala 225:42:@539.6]
  assign _T_98 = io_opcode == 7'h17; // @[riscvSingle.scala 264:26:@620.6]
  assign _T_111 = io_opcode == 7'h13; // @[riscvSingle.scala 276:26:@635.8]
  assign _T_122 = io_funct7[6:1]; // @[riscvSingle.scala 288:24:@647.10]
  assign _T_124 = _T_122 == 6'h10; // @[riscvSingle.scala 288:30:@648.10]
  assign _GEN_15 = _T_69 ? 4'h4 : 4'hf; // @[riscvSingle.scala 289:41:@651.12]
  assign _GEN_17 = _T_69 ? 3'h7 : {{2'd0}, _T_72}; // @[riscvSingle.scala 305:48:@685.22]
  assign _GEN_18 = _T_66 ? 3'h6 : _GEN_17; // @[riscvSingle.scala 303:48:@680.20]
  assign _GEN_19 = _T_63 ? 3'h5 : _GEN_18; // @[riscvSingle.scala 301:48:@675.18]
  assign _GEN_20 = _T_60 ? 4'h9 : {{1'd0}, _GEN_19}; // @[riscvSingle.scala 299:48:@670.16]
  assign _GEN_21 = _T_57 ? 4'h3 : _GEN_20; // @[riscvSingle.scala 297:48:@665.14]
  assign _GEN_22 = _T_54 ? 4'h2 : _GEN_21; // @[riscvSingle.scala 295:42:@660.12]
  assign _GEN_23 = _T_124 ? _GEN_15 : _GEN_22; // @[riscvSingle.scala 288:46:@649.10]
  assign _T_152 = io_opcode == 7'h3; // @[riscvSingle.scala 313:26:@699.10]
  assign _T_165 = io_opcode == 7'h23; // @[riscvSingle.scala 325:26:@714.12]
  assign _T_178 = io_opcode == 7'h63; // @[riscvSingle.scala 337:26:@729.14]
  assign _T_193 = _T_54 & io_zeroFlag; // @[riscvSingle.scala 349:37:@743.16]
  assign _T_198 = io_zeroFlag == 1'h0; // @[riscvSingle.scala 351:57:@749.18]
  assign _T_199 = _T_57 & _T_198; // @[riscvSingle.scala 351:43:@750.18]
  assign _T_205 = _T_66 & io_lessThanFlag; // @[riscvSingle.scala 353:43:@757.20]
  assign _T_211 = _T_69 & io_greaterThanFlag; // @[riscvSingle.scala 355:43:@764.22]
  assign _T_217 = _T_72 & io_lessThanFlag; // @[riscvSingle.scala 357:43:@771.24]
  assign _T_223 = _T_75 & io_greaterThanFlag; // @[riscvSingle.scala 359:43:@778.26]
  assign _GEN_25 = _T_217 ? 1'h1 : _T_223; // @[riscvSingle.scala 357:70:@772.24]
  assign _GEN_26 = _T_211 ? 1'h1 : _GEN_25; // @[riscvSingle.scala 355:73:@765.22]
  assign _GEN_27 = _T_205 ? 1'h1 : _GEN_26; // @[riscvSingle.scala 353:70:@758.20]
  assign _GEN_28 = _T_199 ? 1'h1 : _GEN_27; // @[riscvSingle.scala 351:66:@751.18]
  assign _GEN_29 = _T_193 ? 1'h1 : _GEN_28; // @[riscvSingle.scala 349:59:@744.16]
  assign _T_227 = io_opcode == 7'h6f; // @[riscvSingle.scala 365:26:@787.16]
  assign _T_240 = io_opcode == 7'h67; // @[riscvSingle.scala 377:26:@802.18]
  assign _T_253 = io_opcode == 7'h73; // @[riscvSingle.scala 389:26:@817.20]
  assign _T_266 = io_opcode == 7'h53; // @[riscvSingle.scala 401:26:@832.22]
  assign _GEN_41 = _T_253 ? 1'h0 : _T_266; // @[riscvSingle.scala 389:44:@818.20]
  assign _GEN_44 = _T_240 ? 3'h4 : 3'h0; // @[riscvSingle.scala 377:44:@803.18]
  assign _GEN_46 = _T_240 ? 1'h1 : _GEN_41; // @[riscvSingle.scala 377:44:@803.18]
  assign _GEN_48 = _T_240 ? 2'h2 : 2'h0; // @[riscvSingle.scala 377:44:@803.18]
  assign _GEN_51 = _T_227 ? 3'h4 : _GEN_44; // @[riscvSingle.scala 365:44:@788.16]
  assign _GEN_52 = _T_227 ? 2'h2 : 2'h0; // @[riscvSingle.scala 365:44:@788.16]
  assign _GEN_53 = _T_227 ? 1'h1 : _GEN_46; // @[riscvSingle.scala 365:44:@788.16]
  assign _GEN_55 = _T_227 ? 1'h1 : _T_240; // @[riscvSingle.scala 365:44:@788.16]
  assign _GEN_56 = _T_227 ? 2'h1 : _GEN_48; // @[riscvSingle.scala 365:44:@788.16]
  assign _GEN_57 = _T_227 ? 2'h0 : _GEN_48; // @[riscvSingle.scala 365:44:@788.16]
  assign _GEN_60 = _T_178 ? 3'h0 : _GEN_51; // @[riscvSingle.scala 337:44:@730.14]
  assign _GEN_61 = _T_178 ? 2'h1 : _GEN_52; // @[riscvSingle.scala 337:44:@730.14]
  assign _GEN_62 = _T_178 ? 1'h0 : _GEN_53; // @[riscvSingle.scala 337:44:@730.14]
  assign _GEN_64 = _T_178 ? 1'h0 : _GEN_55; // @[riscvSingle.scala 337:44:@730.14]
  assign _GEN_65 = _T_178 ? 3'h4 : {{1'd0}, _GEN_57}; // @[riscvSingle.scala 337:44:@730.14]
  assign _GEN_68 = _T_178 ? {{1'd0}, _GEN_29} : _GEN_56; // @[riscvSingle.scala 337:44:@730.14]
  assign _GEN_69 = _T_165 ? 3'h0 : _GEN_60; // @[riscvSingle.scala 325:44:@715.12]
  assign _GEN_70 = _T_165 ? 2'h0 : _GEN_61; // @[riscvSingle.scala 325:44:@715.12]
  assign _GEN_71 = _T_165 ? 1'h1 : _GEN_62; // @[riscvSingle.scala 325:44:@715.12]
  assign _GEN_73 = _T_165 ? 1'h0 : _GEN_64; // @[riscvSingle.scala 325:44:@715.12]
  assign _GEN_75 = _T_165 ? 2'h0 : _GEN_68; // @[riscvSingle.scala 325:44:@715.12]
  assign _GEN_76 = _T_165 ? 3'h0 : _GEN_65; // @[riscvSingle.scala 325:44:@715.12]
  assign _GEN_79 = _T_152 ? 3'h0 : _GEN_69; // @[riscvSingle.scala 313:44:@700.10]
  assign _GEN_80 = _T_152 ? 2'h0 : _GEN_70; // @[riscvSingle.scala 313:44:@700.10]
  assign _GEN_81 = _T_152 ? 1'h1 : _GEN_71; // @[riscvSingle.scala 313:44:@700.10]
  assign _GEN_84 = _T_152 ? 1'h1 : _GEN_73; // @[riscvSingle.scala 313:44:@700.10]
  assign _GEN_85 = _T_152 ? 1'h0 : _T_165; // @[riscvSingle.scala 313:44:@700.10]
  assign _GEN_86 = _T_152 ? 2'h0 : _GEN_75; // @[riscvSingle.scala 313:44:@700.10]
  assign _GEN_87 = _T_152 ? 3'h2 : _GEN_76; // @[riscvSingle.scala 313:44:@700.10]
  assign _GEN_90 = _T_111 ? 3'h0 : _GEN_79; // @[riscvSingle.scala 276:44:@636.8]
  assign _GEN_91 = _T_111 ? 2'h0 : _GEN_80; // @[riscvSingle.scala 276:44:@636.8]
  assign _GEN_92 = _T_111 ? 1'h1 : _GEN_81; // @[riscvSingle.scala 276:44:@636.8]
  assign _GEN_94 = _T_111 ? 1'h0 : _T_152; // @[riscvSingle.scala 276:44:@636.8]
  assign _GEN_95 = _T_111 ? 1'h1 : _GEN_84; // @[riscvSingle.scala 276:44:@636.8]
  assign _GEN_96 = _T_111 ? 1'h0 : _GEN_85; // @[riscvSingle.scala 276:44:@636.8]
  assign _GEN_97 = _T_111 ? 2'h0 : _GEN_86; // @[riscvSingle.scala 276:44:@636.8]
  assign _GEN_100 = _T_111 ? _GEN_23 : {{1'd0}, _GEN_87}; // @[riscvSingle.scala 276:44:@636.8]
  assign _GEN_101 = _T_98 ? 3'h0 : _GEN_90; // @[riscvSingle.scala 264:43:@621.6]
  assign _GEN_102 = _T_98 ? 2'h2 : _GEN_91; // @[riscvSingle.scala 264:43:@621.6]
  assign _GEN_103 = _T_98 ? 1'h1 : _GEN_92; // @[riscvSingle.scala 264:43:@621.6]
  assign _GEN_105 = _T_98 ? 1'h0 : _GEN_94; // @[riscvSingle.scala 264:43:@621.6]
  assign _GEN_106 = _T_98 ? 1'h1 : _GEN_95; // @[riscvSingle.scala 264:43:@621.6]
  assign _GEN_107 = _T_98 ? 1'h0 : _GEN_96; // @[riscvSingle.scala 264:43:@621.6]
  assign _GEN_108 = _T_98 ? 2'h0 : _GEN_97; // @[riscvSingle.scala 264:43:@621.6]
  assign _GEN_109 = _T_98 ? 4'h2 : _GEN_100; // @[riscvSingle.scala 264:43:@621.6]
  assign io_regSrc = _T_40 ? 3'h0 : _GEN_101; // @[riscvSingle.scala 214:19:@528.6 riscvSingle.scala 265:19:@622.8 riscvSingle.scala 277:19:@637.10 riscvSingle.scala 314:19:@701.12 riscvSingle.scala 326:19:@716.14 riscvSingle.scala 338:19:@731.16 riscvSingle.scala 366:19:@789.18 riscvSingle.scala 378:19:@804.20 riscvSingle.scala 390:19:@819.22 riscvSingle.scala 402:19:@834.24 riscvSingle.scala 426:19:@866.24]
  assign io_regWriteEnable = _T_40 ? 1'h1 : _GEN_106; // @[riscvSingle.scala 219:27:@533.6 riscvSingle.scala 270:27:@627.8 riscvSingle.scala 282:27:@642.10 riscvSingle.scala 319:27:@706.12 riscvSingle.scala 331:27:@721.14 riscvSingle.scala 343:27:@736.16 riscvSingle.scala 371:27:@794.18 riscvSingle.scala 383:27:@809.20 riscvSingle.scala 395:27:@824.22 riscvSingle.scala 407:27:@839.24 riscvSingle.scala 431:27:@871.24]
  assign io_immSrc = _T_40 ? 2'h0 : _GEN_102; // @[riscvSingle.scala 215:19:@529.6 riscvSingle.scala 266:19:@623.8 riscvSingle.scala 278:19:@638.10 riscvSingle.scala 315:19:@702.12 riscvSingle.scala 327:19:@717.14 riscvSingle.scala 339:19:@732.16 riscvSingle.scala 367:19:@790.18 riscvSingle.scala 379:19:@805.20 riscvSingle.scala 391:19:@820.22 riscvSingle.scala 403:19:@835.24 riscvSingle.scala 427:19:@867.24]
  assign io_aluSrc = _T_40 ? 1'h0 : _GEN_103; // @[riscvSingle.scala 216:19:@530.6 riscvSingle.scala 267:19:@624.8 riscvSingle.scala 279:19:@639.10 riscvSingle.scala 316:19:@703.12 riscvSingle.scala 328:19:@718.14 riscvSingle.scala 340:19:@733.16 riscvSingle.scala 368:19:@791.18 riscvSingle.scala 380:19:@806.20 riscvSingle.scala 392:19:@821.22 riscvSingle.scala 404:19:@836.24 riscvSingle.scala 428:19:@868.24]
  assign io_pcSrc = _T_40 ? 1'h0 : _T_98; // @[riscvSingle.scala 217:18:@531.6 riscvSingle.scala 268:18:@625.8 riscvSingle.scala 280:18:@640.10 riscvSingle.scala 317:18:@704.12 riscvSingle.scala 329:18:@719.14 riscvSingle.scala 341:18:@734.16 riscvSingle.scala 369:18:@792.18 riscvSingle.scala 381:18:@807.20 riscvSingle.scala 393:18:@822.22 riscvSingle.scala 405:18:@837.24 riscvSingle.scala 429:18:@869.24]
  assign io_aluControl = _T_40 ? _GEN_14 : _GEN_109; // @[riscvSingle.scala 227:31:@542.10 riscvSingle.scala 229:31:@547.12 riscvSingle.scala 231:31:@552.14 riscvSingle.scala 233:31:@557.16 riscvSingle.scala 235:31:@562.18 riscvSingle.scala 237:31:@567.20 riscvSingle.scala 239:31:@572.22 riscvSingle.scala 241:31:@577.24 riscvSingle.scala 243:31:@580.24 riscvSingle.scala 247:31:@588.12 riscvSingle.scala 249:31:@593.14 riscvSingle.scala 251:31:@596.14 riscvSingle.scala 255:31:@604.14 riscvSingle.scala 257:31:@609.16 riscvSingle.scala 259:31:@612.16 riscvSingle.scala 262:27:@616.12 riscvSingle.scala 273:23:@630.8 riscvSingle.scala 290:31:@652.14 riscvSingle.scala 292:31:@655.14 riscvSingle.scala 296:31:@661.14 riscvSingle.scala 298:31:@666.16 riscvSingle.scala 300:31:@671.18 riscvSingle.scala 302:31:@676.20 riscvSingle.scala 304:31:@681.22 riscvSingle.scala 306:31:@686.24 riscvSingle.scala 308:31:@691.26 riscvSingle.scala 310:31:@694.26 riscvSingle.scala 322:23:@709.12 riscvSingle.scala 334:23:@724.14 riscvSingle.scala 345:23:@738.16 riscvSingle.scala 374:23:@797.18 riscvSingle.scala 386:23:@812.20 riscvSingle.scala 398:23:@827.22 riscvSingle.scala 410:23:@842.24 riscvSingle.scala 435:23:@875.24]
  assign io_memWriteEnable = _T_40 ? 1'h0 : _GEN_107; // @[riscvSingle.scala 220:27:@534.6 riscvSingle.scala 271:27:@628.8 riscvSingle.scala 283:27:@643.10 riscvSingle.scala 320:27:@707.12 riscvSingle.scala 332:27:@722.14 riscvSingle.scala 344:27:@737.16 riscvSingle.scala 372:27:@795.18 riscvSingle.scala 384:27:@810.20 riscvSingle.scala 396:27:@825.22 riscvSingle.scala 408:27:@840.24 riscvSingle.scala 433:27:@873.24]
  assign io_memToReg = _T_40 ? 1'h0 : _GEN_105; // @[riscvSingle.scala 218:21:@532.6 riscvSingle.scala 269:21:@626.8 riscvSingle.scala 281:21:@641.10 riscvSingle.scala 318:21:@705.12 riscvSingle.scala 330:21:@720.14 riscvSingle.scala 342:21:@735.16 riscvSingle.scala 370:21:@793.18 riscvSingle.scala 382:21:@808.20 riscvSingle.scala 394:21:@823.22 riscvSingle.scala 406:21:@838.24 riscvSingle.scala 430:21:@870.24]
  assign io_branchSrc = _T_40 ? 2'h0 : _GEN_108; // @[riscvSingle.scala 221:22:@535.6 riscvSingle.scala 272:22:@629.8 riscvSingle.scala 284:22:@644.10 riscvSingle.scala 321:22:@708.12 riscvSingle.scala 333:22:@723.14 riscvSingle.scala 350:26:@745.18 riscvSingle.scala 352:26:@752.20 riscvSingle.scala 354:26:@759.22 riscvSingle.scala 356:26:@766.24 riscvSingle.scala 358:26:@773.26 riscvSingle.scala 360:26:@780.28 riscvSingle.scala 362:26:@783.28 riscvSingle.scala 373:22:@796.18 riscvSingle.scala 385:22:@811.20 riscvSingle.scala 397:22:@826.22 riscvSingle.scala 409:22:@841.24 riscvSingle.scala 434:22:@874.24]
endmodule
module riscv( // @[:@880.2]
  input         clk, // @[:@881.4]
  input         reset, // @[:@882.4]
  input  [31:0] io_instr, // @[:@883.4]
  input  [31:0] io_memReadData, // @[:@883.4]
  output [31:0] io_pc, // @[:@883.4]
  output        io_memWriteEnable, // @[:@883.4]
  output [31:0] io_memAddress, // @[:@883.4]
  output [31:0] io_memWriteData // @[:@883.4]
);
  wire  dp_clk; // @[riscvSingle.scala 60:20:@885.4]
  wire  dp_reset; // @[riscvSingle.scala 60:20:@885.4]
  wire [2:0] dp_io_regSrc; // @[riscvSingle.scala 60:20:@885.4]
  wire  dp_io_regWriteEnable; // @[riscvSingle.scala 60:20:@885.4]
  wire [1:0] dp_io_immSrc; // @[riscvSingle.scala 60:20:@885.4]
  wire  dp_io_aluSrc; // @[riscvSingle.scala 60:20:@885.4]
  wire  dp_io_pcSrc; // @[riscvSingle.scala 60:20:@885.4]
  wire [3:0] dp_io_aluControl; // @[riscvSingle.scala 60:20:@885.4]
  wire  dp_io_memToReg; // @[riscvSingle.scala 60:20:@885.4]
  wire [31:0] dp_io_instr; // @[riscvSingle.scala 60:20:@885.4]
  wire [31:0] dp_io_memReadData; // @[riscvSingle.scala 60:20:@885.4]
  wire [1:0] dp_io_branchSrc; // @[riscvSingle.scala 60:20:@885.4]
  wire [31:0] dp_io_pc; // @[riscvSingle.scala 60:20:@885.4]
  wire [31:0] dp_io_memAddress; // @[riscvSingle.scala 60:20:@885.4]
  wire [31:0] dp_io_memWriteData; // @[riscvSingle.scala 60:20:@885.4]
  wire  dp_io_zeroFlag; // @[riscvSingle.scala 60:20:@885.4]
  wire  dp_io_lessThanFlag; // @[riscvSingle.scala 60:20:@885.4]
  wire  dp_io_greaterThanFlag; // @[riscvSingle.scala 60:20:@885.4]
  wire [6:0] d_io_opcode; // @[riscvSingle.scala 61:19:@888.4]
  wire [6:0] d_io_funct7; // @[riscvSingle.scala 61:19:@888.4]
  wire [2:0] d_io_funct3; // @[riscvSingle.scala 61:19:@888.4]
  wire [2:0] d_io_regSrc; // @[riscvSingle.scala 61:19:@888.4]
  wire  d_io_regWriteEnable; // @[riscvSingle.scala 61:19:@888.4]
  wire [1:0] d_io_immSrc; // @[riscvSingle.scala 61:19:@888.4]
  wire  d_io_aluSrc; // @[riscvSingle.scala 61:19:@888.4]
  wire  d_io_pcSrc; // @[riscvSingle.scala 61:19:@888.4]
  wire [3:0] d_io_aluControl; // @[riscvSingle.scala 61:19:@888.4]
  wire  d_io_memWriteEnable; // @[riscvSingle.scala 61:19:@888.4]
  wire  d_io_memToReg; // @[riscvSingle.scala 61:19:@888.4]
  wire [1:0] d_io_branchSrc; // @[riscvSingle.scala 61:19:@888.4]
  wire  d_io_zeroFlag; // @[riscvSingle.scala 61:19:@888.4]
  wire  d_io_lessThanFlag; // @[riscvSingle.scala 61:19:@888.4]
  wire  d_io_greaterThanFlag; // @[riscvSingle.scala 61:19:@888.4]
  datapath dp ( // @[riscvSingle.scala 60:20:@885.4]
    .clk(dp_clk),
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
  decoder d ( // @[riscvSingle.scala 61:19:@888.4]
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
  assign io_pc = dp_io_pc; // @[riscvSingle.scala 93:11:@912.4]
  assign io_memWriteEnable = d_io_memWriteEnable; // @[riscvSingle.scala 94:23:@913.4]
  assign io_memAddress = dp_io_memAddress; // @[riscvSingle.scala 95:19:@914.4]
  assign io_memWriteData = dp_io_memWriteData; // @[riscvSingle.scala 96:21:@915.4]
  assign dp_clk = clk; // @[:@886.4]
  assign dp_reset = reset; // @[:@887.4]
  assign dp_io_regSrc = d_io_regSrc; // @[riscvSingle.scala 80:18:@900.4]
  assign dp_io_regWriteEnable = d_io_regWriteEnable; // @[riscvSingle.scala 81:26:@901.4]
  assign dp_io_immSrc = d_io_immSrc; // @[riscvSingle.scala 82:18:@902.4]
  assign dp_io_aluSrc = d_io_aluSrc; // @[riscvSingle.scala 83:18:@903.4]
  assign dp_io_pcSrc = d_io_pcSrc; // @[riscvSingle.scala 84:17:@904.4]
  assign dp_io_aluControl = d_io_aluControl; // @[riscvSingle.scala 85:22:@905.4]
  assign dp_io_memToReg = d_io_memToReg; // @[riscvSingle.scala 86:20:@906.4]
  assign dp_io_instr = io_instr; // @[riscvSingle.scala 87:17:@907.4]
  assign dp_io_memReadData = io_memReadData; // @[riscvSingle.scala 88:23:@908.4]
  assign dp_io_branchSrc = d_io_branchSrc; // @[riscvSingle.scala 89:21:@909.4]
  assign d_io_opcode = io_instr[6:0]; // @[riscvSingle.scala 73:17:@892.4]
  assign d_io_funct7 = io_instr[31:25]; // @[riscvSingle.scala 74:17:@894.4]
  assign d_io_funct3 = io_instr[14:12]; // @[riscvSingle.scala 75:17:@896.4]
  assign d_io_zeroFlag = dp_io_zeroFlag; // @[riscvSingle.scala 76:19:@897.4]
  assign d_io_lessThanFlag = dp_io_lessThanFlag; // @[riscvSingle.scala 77:23:@898.4]
  assign d_io_greaterThanFlag = dp_io_greaterThanFlag; // @[riscvSingle.scala 78:26:@899.4]
endmodule
module imem( // @[:@917.2]
  input         clk, // @[:@918.4]
  input  [31:0] io_instAddress, // @[:@920.4]
  output [31:0] io_inst // @[:@920.4]
);
  reg [31:0] MEM [0:1023]; // @[riscvSingle.scala 1030:18:@922.4]
  reg [31:0] _RAND_0;
  wire [31:0] MEM__T_12_data; // @[riscvSingle.scala 1030:18:@922.4]
  wire [9:0] MEM__T_12_addr; // @[riscvSingle.scala 1030:18:@922.4]
  assign MEM__T_12_addr = io_instAddress[9:0];
  assign MEM__T_12_data = MEM[MEM__T_12_addr]; // @[riscvSingle.scala 1030:18:@922.4]
  assign io_inst = MEM__T_12_data; // @[riscvSingle.scala 1033:13:@925.4]
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
module dmem( // @[:@927.2]
  input         clk, // @[:@928.4]
  input  [31:0] io_memAddress, // @[:@930.4]
  input  [31:0] io_memWriteData, // @[:@930.4]
  input         io_memWriteEnable, // @[:@930.4]
  output [31:0] io_memReadData // @[:@930.4]
);
  reg [31:0] mem [0:1023]; // @[riscvSingle.scala 1064:26:@932.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_21_data; // @[riscvSingle.scala 1064:26:@932.4]
  wire [9:0] mem__T_21_addr; // @[riscvSingle.scala 1064:26:@932.4]
  wire [31:0] mem__T_19_data; // @[riscvSingle.scala 1064:26:@932.4]
  wire [9:0] mem__T_19_addr; // @[riscvSingle.scala 1064:26:@932.4]
  wire  mem__T_19_mask; // @[riscvSingle.scala 1064:26:@932.4]
  wire  mem__T_19_en; // @[riscvSingle.scala 1064:26:@932.4]
  wire  _T_15; // @[riscvSingle.scala 1066:28:@933.4]
  wire [9:0] _T_18; // @[:@936.6]
  wire  _GEN_3; // @[riscvSingle.scala 1066:33:@935.4]
  reg [9:0] mem__T_21_addr_pipe_0;
  reg [31:0] _RAND_1;
  assign mem__T_21_addr = mem__T_21_addr_pipe_0;
  assign mem__T_21_data = mem[mem__T_21_addr]; // @[riscvSingle.scala 1064:26:@932.4]
  assign mem__T_19_data = io_memWriteData;
  assign mem__T_19_addr = io_memAddress[9:0];
  assign mem__T_19_mask = 1'h1;
  assign mem__T_19_en = _T_15 == 1'h0;
  assign _T_15 = ~ io_memWriteEnable; // @[riscvSingle.scala 1066:28:@933.4]
  assign _T_18 = io_memAddress[9:0]; // @[:@936.6]
  assign _GEN_3 = 1'h1; // @[riscvSingle.scala 1066:33:@935.4]
  assign io_memReadData = mem__T_21_data; // @[riscvSingle.scala 1070:20:@942.4]
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
  always @(posedge clk) begin
    if(mem__T_19_en & mem__T_19_mask) begin
      mem[mem__T_19_addr] <= mem__T_19_data; // @[riscvSingle.scala 1064:26:@932.4]
    end
    if (_GEN_3) begin
      mem__T_21_addr_pipe_0 <= _T_18;
    end
  end
endmodule
module top( // @[:@944.2]
  input   clk, // @[:@945.4]
  input   reset, // @[:@946.4]
  output  io_valid // @[:@947.4]
);
  wire  r_clk; // @[riscvSingle.scala 1096:19:@949.4]
  wire  r_reset; // @[riscvSingle.scala 1096:19:@949.4]
  wire [31:0] r_io_instr; // @[riscvSingle.scala 1096:19:@949.4]
  wire [31:0] r_io_memReadData; // @[riscvSingle.scala 1096:19:@949.4]
  wire [31:0] r_io_pc; // @[riscvSingle.scala 1096:19:@949.4]
  wire  r_io_memWriteEnable; // @[riscvSingle.scala 1096:19:@949.4]
  wire [31:0] r_io_memAddress; // @[riscvSingle.scala 1096:19:@949.4]
  wire [31:0] r_io_memWriteData; // @[riscvSingle.scala 1096:19:@949.4]
  wire  im_clk; // @[riscvSingle.scala 1097:20:@952.4]
  wire [31:0] im_io_instAddress; // @[riscvSingle.scala 1097:20:@952.4]
  wire [31:0] im_io_inst; // @[riscvSingle.scala 1097:20:@952.4]
  wire  dm_clk; // @[riscvSingle.scala 1098:20:@955.4]
  wire [31:0] dm_io_memAddress; // @[riscvSingle.scala 1098:20:@955.4]
  wire [31:0] dm_io_memWriteData; // @[riscvSingle.scala 1098:20:@955.4]
  wire  dm_io_memWriteEnable; // @[riscvSingle.scala 1098:20:@955.4]
  wire [31:0] dm_io_memReadData; // @[riscvSingle.scala 1098:20:@955.4]
  wire [6:0] _T_9; // @[riscvSingle.scala 1120:31:@965.4]
  wire  _T_11; // @[riscvSingle.scala 1120:38:@966.4]
  riscv r ( // @[riscvSingle.scala 1096:19:@949.4]
    .clk(r_clk),
    .reset(r_reset),
    .io_instr(r_io_instr),
    .io_memReadData(r_io_memReadData),
    .io_pc(r_io_pc),
    .io_memWriteEnable(r_io_memWriteEnable),
    .io_memAddress(r_io_memAddress),
    .io_memWriteData(r_io_memWriteData)
  );
  imem im ( // @[riscvSingle.scala 1097:20:@952.4]
    .clk(im_clk),
    .io_instAddress(im_io_instAddress),
    .io_inst(im_io_inst)
  );
  dmem dm ( // @[riscvSingle.scala 1098:20:@955.4]
    .clk(dm_clk),
    .io_memAddress(dm_io_memAddress),
    .io_memWriteData(dm_io_memWriteData),
    .io_memWriteEnable(dm_io_memWriteEnable),
    .io_memReadData(dm_io_memReadData)
  );
  assign _T_9 = im_io_inst[6:0]; // @[riscvSingle.scala 1120:31:@965.4]
  assign _T_11 = _T_9 == 7'h73; // @[riscvSingle.scala 1120:38:@966.4]
  assign io_valid = _T_11 ? 1'h0 : 1'h1; // @[riscvSingle.scala 1120:14:@968.4]
  assign r_clk = clk; // @[:@950.4]
  assign r_reset = reset; // @[:@951.4]
  assign r_io_instr = im_io_inst; // @[riscvSingle.scala 1118:16:@964.4]
  assign r_io_memReadData = dm_io_memReadData; // @[riscvSingle.scala 1104:22:@961.4]
  assign im_clk = clk; // @[:@953.4]
  assign im_io_instAddress = r_io_pc / 32'h4; // @[riscvSingle.scala 1116:23:@963.4]
  assign dm_clk = clk; // @[:@956.4]
  assign dm_io_memAddress = r_io_memAddress; // @[riscvSingle.scala 1100:22:@958.4]
  assign dm_io_memWriteData = r_io_memWriteData; // @[riscvSingle.scala 1101:24:@959.4]
  assign dm_io_memWriteEnable = r_io_memWriteEnable; // @[riscvSingle.scala 1102:26:@960.4]
endmodule
