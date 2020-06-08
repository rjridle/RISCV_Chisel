module regfile( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_regWriteEnable, // @[:@6.4]
  input  [4:0]  io_regWriteAddress, // @[:@6.4]
  input  [31:0] io_regWriteData, // @[:@6.4]
  input  [4:0]  io_regReadAddress1, // @[:@6.4]
  input  [4:0]  io_regReadAddress2, // @[:@6.4]
  output [31:0] io_regReadData1, // @[:@6.4]
  output [31:0] io_regReadData2 // @[:@6.4]
);
  reg [31:0] rf [0:31]; // @[riscvSingle.scala 618:17:@8.4]
  reg [31:0] _RAND_0;
  wire [31:0] rf__T_34_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_34_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_35_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_35_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_45_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_45_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_55_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_55_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_65_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_65_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_75_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_75_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_85_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_85_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_95_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_95_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_105_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_105_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_115_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_115_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_125_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_125_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_135_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_135_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_145_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_145_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_155_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_155_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_165_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_165_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_175_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_175_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_185_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_185_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_195_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_195_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_205_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_205_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_215_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_215_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_225_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_225_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_235_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_235_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_245_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_245_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_255_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_255_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_265_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_265_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_275_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_275_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_285_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_285_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_295_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_295_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_305_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_305_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_315_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_315_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_325_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_325_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_335_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_335_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_345_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_345_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_355_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_355_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_30_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_30_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire  rf__T_30_mask; // @[riscvSingle.scala 618:17:@8.4]
  wire  rf__T_30_en; // @[riscvSingle.scala 618:17:@8.4]
  wire [31:0] rf__T_32_data; // @[riscvSingle.scala 618:17:@8.4]
  wire [4:0] rf__T_32_addr; // @[riscvSingle.scala 618:17:@8.4]
  wire  rf__T_32_mask; // @[riscvSingle.scala 618:17:@8.4]
  wire  rf__T_32_en; // @[riscvSingle.scala 618:17:@8.4]
  wire  _T_22; // @[riscvSingle.scala 621:28:@10.4]
  wire  _T_24; // @[riscvSingle.scala 621:28:@11.4]
  wire  _T_26; // @[riscvSingle.scala 621:57:@12.4]
  wire  _T_28; // @[riscvSingle.scala 621:36:@13.4]
  wire  _T_29; // @[riscvSingle.scala 621:33:@14.4]
  wire  _T_38; // @[riscvSingle.scala 637:11:@35.4]
  wire [31:0] _T_43; // @[riscvSingle.scala 642:26:@44.4 riscvSingle.scala 643:16:@46.4]
  wire [31:0] _T_53; // @[riscvSingle.scala 642:26:@57.4 riscvSingle.scala 643:16:@59.4]
  wire [31:0] _T_63; // @[riscvSingle.scala 642:26:@70.4 riscvSingle.scala 643:16:@72.4]
  wire [31:0] _T_73; // @[riscvSingle.scala 642:26:@83.4 riscvSingle.scala 643:16:@85.4]
  wire [31:0] _T_83; // @[riscvSingle.scala 642:26:@96.4 riscvSingle.scala 643:16:@98.4]
  wire [31:0] _T_93; // @[riscvSingle.scala 642:26:@109.4 riscvSingle.scala 643:16:@111.4]
  wire [31:0] _T_103; // @[riscvSingle.scala 642:26:@122.4 riscvSingle.scala 643:16:@124.4]
  wire [31:0] _T_113; // @[riscvSingle.scala 642:26:@135.4 riscvSingle.scala 643:16:@137.4]
  wire [31:0] _T_123; // @[riscvSingle.scala 642:26:@148.4 riscvSingle.scala 643:16:@150.4]
  wire [31:0] _T_133; // @[riscvSingle.scala 642:26:@161.4 riscvSingle.scala 643:16:@163.4]
  wire [31:0] _T_143; // @[riscvSingle.scala 642:26:@174.4 riscvSingle.scala 643:16:@176.4]
  wire [31:0] _T_153; // @[riscvSingle.scala 642:26:@187.4 riscvSingle.scala 643:16:@189.4]
  wire [31:0] _T_163; // @[riscvSingle.scala 642:26:@200.4 riscvSingle.scala 643:16:@202.4]
  wire [31:0] _T_173; // @[riscvSingle.scala 642:26:@213.4 riscvSingle.scala 643:16:@215.4]
  wire [31:0] _T_183; // @[riscvSingle.scala 642:26:@226.4 riscvSingle.scala 643:16:@228.4]
  wire [31:0] _T_193; // @[riscvSingle.scala 642:26:@239.4 riscvSingle.scala 643:16:@241.4]
  wire [31:0] _T_203; // @[riscvSingle.scala 642:26:@252.4 riscvSingle.scala 643:16:@254.4]
  wire [31:0] _T_213; // @[riscvSingle.scala 642:26:@265.4 riscvSingle.scala 643:16:@267.4]
  wire [31:0] _T_223; // @[riscvSingle.scala 642:26:@278.4 riscvSingle.scala 643:16:@280.4]
  wire [31:0] _T_233; // @[riscvSingle.scala 642:26:@291.4 riscvSingle.scala 643:16:@293.4]
  wire [31:0] _T_243; // @[riscvSingle.scala 642:26:@304.4 riscvSingle.scala 643:16:@306.4]
  wire [31:0] _T_253; // @[riscvSingle.scala 642:26:@317.4 riscvSingle.scala 643:16:@319.4]
  wire [31:0] _T_263; // @[riscvSingle.scala 642:26:@330.4 riscvSingle.scala 643:16:@332.4]
  wire [31:0] _T_273; // @[riscvSingle.scala 642:26:@343.4 riscvSingle.scala 643:16:@345.4]
  wire [31:0] _T_283; // @[riscvSingle.scala 642:26:@356.4 riscvSingle.scala 643:16:@358.4]
  wire [31:0] _T_293; // @[riscvSingle.scala 642:26:@369.4 riscvSingle.scala 643:16:@371.4]
  wire [31:0] _T_303; // @[riscvSingle.scala 642:26:@382.4 riscvSingle.scala 643:16:@384.4]
  wire [31:0] _T_313; // @[riscvSingle.scala 642:26:@395.4 riscvSingle.scala 643:16:@397.4]
  wire [31:0] _T_323; // @[riscvSingle.scala 642:26:@408.4 riscvSingle.scala 643:16:@410.4]
  wire [31:0] _T_333; // @[riscvSingle.scala 642:26:@421.4 riscvSingle.scala 643:16:@423.4]
  wire [31:0] _T_343; // @[riscvSingle.scala 642:26:@434.4 riscvSingle.scala 643:16:@436.4]
  wire [31:0] _T_353; // @[riscvSingle.scala 642:26:@447.4 riscvSingle.scala 643:16:@449.4]
  assign rf__T_34_addr = io_regReadAddress1;
  assign rf__T_34_data = rf[rf__T_34_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_35_addr = io_regReadAddress2;
  assign rf__T_35_data = rf[rf__T_35_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_45_addr = 5'h0;
  assign rf__T_45_data = rf[rf__T_45_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_55_addr = 5'h1;
  assign rf__T_55_data = rf[rf__T_55_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_65_addr = 5'h2;
  assign rf__T_65_data = rf[rf__T_65_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_75_addr = 5'h3;
  assign rf__T_75_data = rf[rf__T_75_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_85_addr = 5'h4;
  assign rf__T_85_data = rf[rf__T_85_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_95_addr = 5'h5;
  assign rf__T_95_data = rf[rf__T_95_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_105_addr = 5'h6;
  assign rf__T_105_data = rf[rf__T_105_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_115_addr = 5'h7;
  assign rf__T_115_data = rf[rf__T_115_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_125_addr = 5'h8;
  assign rf__T_125_data = rf[rf__T_125_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_135_addr = 5'h9;
  assign rf__T_135_data = rf[rf__T_135_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_145_addr = 5'ha;
  assign rf__T_145_data = rf[rf__T_145_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_155_addr = 5'hb;
  assign rf__T_155_data = rf[rf__T_155_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_165_addr = 5'hc;
  assign rf__T_165_data = rf[rf__T_165_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_175_addr = 5'hd;
  assign rf__T_175_data = rf[rf__T_175_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_185_addr = 5'he;
  assign rf__T_185_data = rf[rf__T_185_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_195_addr = 5'hf;
  assign rf__T_195_data = rf[rf__T_195_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_205_addr = 5'h10;
  assign rf__T_205_data = rf[rf__T_205_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_215_addr = 5'h11;
  assign rf__T_215_data = rf[rf__T_215_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_225_addr = 5'h12;
  assign rf__T_225_data = rf[rf__T_225_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_235_addr = 5'h13;
  assign rf__T_235_data = rf[rf__T_235_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_245_addr = 5'h14;
  assign rf__T_245_data = rf[rf__T_245_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_255_addr = 5'h15;
  assign rf__T_255_data = rf[rf__T_255_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_265_addr = 5'h16;
  assign rf__T_265_data = rf[rf__T_265_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_275_addr = 5'h17;
  assign rf__T_275_data = rf[rf__T_275_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_285_addr = 5'h18;
  assign rf__T_285_data = rf[rf__T_285_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_295_addr = 5'h19;
  assign rf__T_295_data = rf[rf__T_295_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_305_addr = 5'h1a;
  assign rf__T_305_data = rf[rf__T_305_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_315_addr = 5'h1b;
  assign rf__T_315_data = rf[rf__T_315_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_325_addr = 5'h1c;
  assign rf__T_325_data = rf[rf__T_325_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_335_addr = 5'h1d;
  assign rf__T_335_data = rf[rf__T_335_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_345_addr = 5'h1e;
  assign rf__T_345_data = rf[rf__T_345_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_355_addr = 5'h1f;
  assign rf__T_355_data = rf[rf__T_355_addr]; // @[riscvSingle.scala 618:17:@8.4]
  assign rf__T_30_data = io_regWriteData;
  assign rf__T_30_addr = io_regWriteAddress;
  assign rf__T_30_mask = 1'h1;
  assign rf__T_30_en = _T_24 & _T_28;
  assign rf__T_32_data = 32'sh0;
  assign rf__T_32_addr = 5'h0;
  assign rf__T_32_mask = 1'h1;
  assign rf__T_32_en = _T_29 ? 1'h0 : 1'h1;
  assign _T_22 = ~ io_regWriteEnable; // @[riscvSingle.scala 621:28:@10.4]
  assign _T_24 = _T_22 == 1'h0; // @[riscvSingle.scala 621:28:@11.4]
  assign _T_26 = io_regWriteAddress == 5'h0; // @[riscvSingle.scala 621:57:@12.4]
  assign _T_28 = _T_26 == 1'h0; // @[riscvSingle.scala 621:36:@13.4]
  assign _T_29 = _T_24 & _T_28; // @[riscvSingle.scala 621:33:@14.4]
  assign _T_38 = reset == 1'h0; // @[riscvSingle.scala 637:11:@35.4]
  assign _T_43 = rf__T_45_data; // @[riscvSingle.scala 642:26:@44.4 riscvSingle.scala 643:16:@46.4]
  assign _T_53 = rf__T_55_data; // @[riscvSingle.scala 642:26:@57.4 riscvSingle.scala 643:16:@59.4]
  assign _T_63 = rf__T_65_data; // @[riscvSingle.scala 642:26:@70.4 riscvSingle.scala 643:16:@72.4]
  assign _T_73 = rf__T_75_data; // @[riscvSingle.scala 642:26:@83.4 riscvSingle.scala 643:16:@85.4]
  assign _T_83 = rf__T_85_data; // @[riscvSingle.scala 642:26:@96.4 riscvSingle.scala 643:16:@98.4]
  assign _T_93 = rf__T_95_data; // @[riscvSingle.scala 642:26:@109.4 riscvSingle.scala 643:16:@111.4]
  assign _T_103 = rf__T_105_data; // @[riscvSingle.scala 642:26:@122.4 riscvSingle.scala 643:16:@124.4]
  assign _T_113 = rf__T_115_data; // @[riscvSingle.scala 642:26:@135.4 riscvSingle.scala 643:16:@137.4]
  assign _T_123 = rf__T_125_data; // @[riscvSingle.scala 642:26:@148.4 riscvSingle.scala 643:16:@150.4]
  assign _T_133 = rf__T_135_data; // @[riscvSingle.scala 642:26:@161.4 riscvSingle.scala 643:16:@163.4]
  assign _T_143 = rf__T_145_data; // @[riscvSingle.scala 642:26:@174.4 riscvSingle.scala 643:16:@176.4]
  assign _T_153 = rf__T_155_data; // @[riscvSingle.scala 642:26:@187.4 riscvSingle.scala 643:16:@189.4]
  assign _T_163 = rf__T_165_data; // @[riscvSingle.scala 642:26:@200.4 riscvSingle.scala 643:16:@202.4]
  assign _T_173 = rf__T_175_data; // @[riscvSingle.scala 642:26:@213.4 riscvSingle.scala 643:16:@215.4]
  assign _T_183 = rf__T_185_data; // @[riscvSingle.scala 642:26:@226.4 riscvSingle.scala 643:16:@228.4]
  assign _T_193 = rf__T_195_data; // @[riscvSingle.scala 642:26:@239.4 riscvSingle.scala 643:16:@241.4]
  assign _T_203 = rf__T_205_data; // @[riscvSingle.scala 642:26:@252.4 riscvSingle.scala 643:16:@254.4]
  assign _T_213 = rf__T_215_data; // @[riscvSingle.scala 642:26:@265.4 riscvSingle.scala 643:16:@267.4]
  assign _T_223 = rf__T_225_data; // @[riscvSingle.scala 642:26:@278.4 riscvSingle.scala 643:16:@280.4]
  assign _T_233 = rf__T_235_data; // @[riscvSingle.scala 642:26:@291.4 riscvSingle.scala 643:16:@293.4]
  assign _T_243 = rf__T_245_data; // @[riscvSingle.scala 642:26:@304.4 riscvSingle.scala 643:16:@306.4]
  assign _T_253 = rf__T_255_data; // @[riscvSingle.scala 642:26:@317.4 riscvSingle.scala 643:16:@319.4]
  assign _T_263 = rf__T_265_data; // @[riscvSingle.scala 642:26:@330.4 riscvSingle.scala 643:16:@332.4]
  assign _T_273 = rf__T_275_data; // @[riscvSingle.scala 642:26:@343.4 riscvSingle.scala 643:16:@345.4]
  assign _T_283 = rf__T_285_data; // @[riscvSingle.scala 642:26:@356.4 riscvSingle.scala 643:16:@358.4]
  assign _T_293 = rf__T_295_data; // @[riscvSingle.scala 642:26:@369.4 riscvSingle.scala 643:16:@371.4]
  assign _T_303 = rf__T_305_data; // @[riscvSingle.scala 642:26:@382.4 riscvSingle.scala 643:16:@384.4]
  assign _T_313 = rf__T_315_data; // @[riscvSingle.scala 642:26:@395.4 riscvSingle.scala 643:16:@397.4]
  assign _T_323 = rf__T_325_data; // @[riscvSingle.scala 642:26:@408.4 riscvSingle.scala 643:16:@410.4]
  assign _T_333 = rf__T_335_data; // @[riscvSingle.scala 642:26:@421.4 riscvSingle.scala 643:16:@423.4]
  assign _T_343 = rf__T_345_data; // @[riscvSingle.scala 642:26:@434.4 riscvSingle.scala 643:16:@436.4]
  assign _T_353 = rf__T_355_data; // @[riscvSingle.scala 642:26:@447.4 riscvSingle.scala 643:16:@449.4]
  assign io_regReadData1 = rf__T_34_data; // @[riscvSingle.scala 627:21:@24.4]
  assign io_regReadData2 = rf__T_35_data; // @[riscvSingle.scala 628:21:@26.4]
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
    if(rf__T_30_en & rf__T_30_mask) begin
      rf[rf__T_30_addr] <= rf__T_30_data; // @[riscvSingle.scala 618:17:@8.4]
    end
    if(rf__T_32_en & rf__T_32_mask) begin
      rf[rf__T_32_addr] <= rf__T_32_data; // @[riscvSingle.scala 618:17:@8.4]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|regfile Module:\n|  regWriteEnable  : b%b\n|  regReadAddress1 : b%b\n|  regReadAddress2 : b%b\n|  regWriteAddress : b%b\n|  regWriteData    : 0x%x\n|  regReadData1    : 0x%x\n|  regReadData2    : 0x%x\n|___________________________\n",io_regWriteEnable,io_regReadAddress1,io_regReadAddress2,io_regWriteAddress,io_regWriteData,io_regReadData1,io_regReadData2); // @[riscvSingle.scala 637:11:@37.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n"); // @[riscvSingle.scala 640:11:@42.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(0) = "); // @[riscvSingle.scala 644:15:@50.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_43); // @[riscvSingle.scala 645:15:@55.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(1) = "); // @[riscvSingle.scala 644:15:@63.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_53); // @[riscvSingle.scala 645:15:@68.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(2) = "); // @[riscvSingle.scala 644:15:@76.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_63); // @[riscvSingle.scala 645:15:@81.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(3) = "); // @[riscvSingle.scala 644:15:@89.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_73); // @[riscvSingle.scala 645:15:@94.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(4) = "); // @[riscvSingle.scala 644:15:@102.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_83); // @[riscvSingle.scala 645:15:@107.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(5) = "); // @[riscvSingle.scala 644:15:@115.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_93); // @[riscvSingle.scala 645:15:@120.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(6) = "); // @[riscvSingle.scala 644:15:@128.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_103); // @[riscvSingle.scala 645:15:@133.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(7) = "); // @[riscvSingle.scala 644:15:@141.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_113); // @[riscvSingle.scala 645:15:@146.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(8) = "); // @[riscvSingle.scala 644:15:@154.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_123); // @[riscvSingle.scala 645:15:@159.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(9) = "); // @[riscvSingle.scala 644:15:@167.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_133); // @[riscvSingle.scala 645:15:@172.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(10) = "); // @[riscvSingle.scala 644:15:@180.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_143); // @[riscvSingle.scala 645:15:@185.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(11) = "); // @[riscvSingle.scala 644:15:@193.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_153); // @[riscvSingle.scala 645:15:@198.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(12) = "); // @[riscvSingle.scala 644:15:@206.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_163); // @[riscvSingle.scala 645:15:@211.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(13) = "); // @[riscvSingle.scala 644:15:@219.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_173); // @[riscvSingle.scala 645:15:@224.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(14) = "); // @[riscvSingle.scala 644:15:@232.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_183); // @[riscvSingle.scala 645:15:@237.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(15) = "); // @[riscvSingle.scala 644:15:@245.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_193); // @[riscvSingle.scala 645:15:@250.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(16) = "); // @[riscvSingle.scala 644:15:@258.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_203); // @[riscvSingle.scala 645:15:@263.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(17) = "); // @[riscvSingle.scala 644:15:@271.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_213); // @[riscvSingle.scala 645:15:@276.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(18) = "); // @[riscvSingle.scala 644:15:@284.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_223); // @[riscvSingle.scala 645:15:@289.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(19) = "); // @[riscvSingle.scala 644:15:@297.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_233); // @[riscvSingle.scala 645:15:@302.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(20) = "); // @[riscvSingle.scala 644:15:@310.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_243); // @[riscvSingle.scala 645:15:@315.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(21) = "); // @[riscvSingle.scala 644:15:@323.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_253); // @[riscvSingle.scala 645:15:@328.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(22) = "); // @[riscvSingle.scala 644:15:@336.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_263); // @[riscvSingle.scala 645:15:@341.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(23) = "); // @[riscvSingle.scala 644:15:@349.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_273); // @[riscvSingle.scala 645:15:@354.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(24) = "); // @[riscvSingle.scala 644:15:@362.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_283); // @[riscvSingle.scala 645:15:@367.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(25) = "); // @[riscvSingle.scala 644:15:@375.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_293); // @[riscvSingle.scala 645:15:@380.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(26) = "); // @[riscvSingle.scala 644:15:@388.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_303); // @[riscvSingle.scala 645:15:@393.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(27) = "); // @[riscvSingle.scala 644:15:@401.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_313); // @[riscvSingle.scala 645:15:@406.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(28) = "); // @[riscvSingle.scala 644:15:@414.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_323); // @[riscvSingle.scala 645:15:@419.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(29) = "); // @[riscvSingle.scala 644:15:@427.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_333); // @[riscvSingle.scala 645:15:@432.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(30) = "); // @[riscvSingle.scala 644:15:@440.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_343); // @[riscvSingle.scala 645:15:@445.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"| rf(31) = "); // @[riscvSingle.scala 644:15:@453.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"%d\n",_T_353); // @[riscvSingle.scala 645:15:@458.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"|___________________________\n"); // @[riscvSingle.scala 647:11:@463.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module alu( // @[:@466.2]
  input         clock, // @[:@467.4]
  input         reset, // @[:@468.4]
  input  [31:0] io_a, // @[:@469.4]
  input  [31:0] io_b, // @[:@469.4]
  input  [3:0]  io_aluControl, // @[:@469.4]
  output [31:0] io_out, // @[:@469.4]
  output        io_zeroFlag, // @[:@469.4]
  output        io_lessThanFlag, // @[:@469.4]
  output        io_greaterThanFlag // @[:@469.4]
);
  wire  _T_21; // @[riscvSingle.scala 687:25:@472.4]
  wire [31:0] _T_22; // @[riscvSingle.scala 688:24:@474.6]
  wire [31:0] _T_23; // @[riscvSingle.scala 688:24:@475.6]
  wire  _T_25; // @[riscvSingle.scala 689:31:@479.6]
  wire [31:0] _T_26; // @[riscvSingle.scala 690:24:@481.8]
  wire [31:0] _T_27; // @[riscvSingle.scala 690:24:@482.8]
  wire  _T_29; // @[riscvSingle.scala 691:31:@486.8]
  wire [32:0] _T_30; // @[riscvSingle.scala 692:24:@488.10]
  wire [31:0] _T_31; // @[riscvSingle.scala 692:24:@489.10]
  wire [31:0] _T_32; // @[riscvSingle.scala 692:24:@490.10]
  wire  _T_34; // @[riscvSingle.scala 693:31:@494.10]
  wire [11:0] _T_35; // @[riscvSingle.scala 694:31:@496.12]
  wire [4126:0] _GEN_14; // @[riscvSingle.scala 694:24:@497.12]
  wire [4126:0] _T_36; // @[riscvSingle.scala 694:24:@497.12]
  wire  _T_38; // @[riscvSingle.scala 695:31:@501.12]
  wire [31:0] _T_40; // @[riscvSingle.scala 696:24:@504.14]
  wire  _T_42; // @[riscvSingle.scala 697:30:@508.14]
  wire [31:0] _T_43; // @[riscvSingle.scala 698:19:@510.16]
  wire [31:0] _T_44; // @[riscvSingle.scala 698:33:@511.16]
  wire  _T_45; // @[riscvSingle.scala 698:26:@512.16]
  wire [1:0] _GEN_0; // @[riscvSingle.scala 698:40:@513.16]
  wire  _T_49; // @[riscvSingle.scala 703:31:@521.16]
  wire [31:0] _T_50; // @[riscvSingle.scala 704:24:@523.18]
  wire [31:0] _T_51; // @[riscvSingle.scala 704:24:@524.18]
  wire  _T_53; // @[riscvSingle.scala 705:31:@528.18]
  wire  _T_57; // @[riscvSingle.scala 707:30:@535.20]
  wire [63:0] _T_58; // @[riscvSingle.scala 708:24:@537.22]
  wire  _T_60; // @[riscvSingle.scala 709:30:@541.22]
  wire  _T_61; // @[riscvSingle.scala 710:19:@543.24]
  wire [1:0] _GEN_1; // @[riscvSingle.scala 710:26:@544.24]
  wire  _T_65; // @[riscvSingle.scala 715:30:@552.24]
  wire [32:0] _T_66; // @[riscvSingle.scala 716:24:@554.26]
  wire  _T_68; // @[riscvSingle.scala 717:30:@558.26]
  wire [32:0] _T_69; // @[riscvSingle.scala 718:24:@560.28]
  wire [31:0] _T_70; // @[riscvSingle.scala 718:24:@561.28]
  wire [31:0] _T_71; // @[riscvSingle.scala 718:24:@562.28]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 717:39:@559.26]
  wire [32:0] _GEN_3; // @[riscvSingle.scala 715:39:@553.24]
  wire [32:0] _GEN_4; // @[riscvSingle.scala 709:39:@542.22]
  wire [63:0] _GEN_5; // @[riscvSingle.scala 707:39:@536.20]
  wire [63:0] _GEN_6; // @[riscvSingle.scala 705:40:@529.18]
  wire [63:0] _GEN_7; // @[riscvSingle.scala 703:40:@522.16]
  wire [63:0] _GEN_8; // @[riscvSingle.scala 697:38:@509.14]
  wire [63:0] _GEN_9; // @[riscvSingle.scala 695:40:@502.12]
  wire [4126:0] _GEN_10; // @[riscvSingle.scala 693:40:@495.10]
  wire [4126:0] _GEN_11; // @[riscvSingle.scala 691:40:@487.8]
  wire [4126:0] _GEN_12; // @[riscvSingle.scala 689:40:@480.6]
  wire [4126:0] _GEN_13; // @[riscvSingle.scala 687:34:@473.4]
  wire  _T_85; // @[riscvSingle.scala 735:11:@586.4]
  wire [31:0] _GEN_15; // @[riscvSingle.scala 688:16:@476.6 riscvSingle.scala 690:16:@483.8 riscvSingle.scala 692:16:@491.10 riscvSingle.scala 694:16:@498.12 riscvSingle.scala 696:16:@505.14 riscvSingle.scala 699:20:@514.18 riscvSingle.scala 701:20:@517.18 riscvSingle.scala 704:16:@525.18 riscvSingle.scala 706:16:@532.20 riscvSingle.scala 708:16:@538.22 riscvSingle.scala 711:20:@545.26 riscvSingle.scala 713:20:@548.26 riscvSingle.scala 716:16:@555.26 riscvSingle.scala 718:16:@563.28 riscvSingle.scala 720:16:@566.28]
  assign _T_21 = io_aluControl == 4'h0; // @[riscvSingle.scala 687:25:@472.4]
  assign _T_22 = $signed(io_a) & $signed(io_b); // @[riscvSingle.scala 688:24:@474.6]
  assign _T_23 = $signed(_T_22); // @[riscvSingle.scala 688:24:@475.6]
  assign _T_25 = io_aluControl == 4'h1; // @[riscvSingle.scala 689:31:@479.6]
  assign _T_26 = $signed(io_a) | $signed(io_b); // @[riscvSingle.scala 690:24:@481.8]
  assign _T_27 = $signed(_T_26); // @[riscvSingle.scala 690:24:@482.8]
  assign _T_29 = io_aluControl == 4'h2; // @[riscvSingle.scala 691:31:@486.8]
  assign _T_30 = $signed(io_a) + $signed(io_b); // @[riscvSingle.scala 692:24:@488.10]
  assign _T_31 = $signed(io_a) + $signed(io_b); // @[riscvSingle.scala 692:24:@489.10]
  assign _T_32 = $signed(_T_31); // @[riscvSingle.scala 692:24:@490.10]
  assign _T_34 = io_aluControl == 4'h3; // @[riscvSingle.scala 693:31:@494.10]
  assign _T_35 = io_b[11:0]; // @[riscvSingle.scala 694:31:@496.12]
  assign _GEN_14 = {{4095{io_a[31]}},io_a}; // @[riscvSingle.scala 694:24:@497.12]
  assign _T_36 = $signed(_GEN_14) << _T_35; // @[riscvSingle.scala 694:24:@497.12]
  assign _T_38 = io_aluControl == 4'h4; // @[riscvSingle.scala 695:31:@501.12]
  assign _T_40 = $signed(io_a) >>> _T_35; // @[riscvSingle.scala 696:24:@504.14]
  assign _T_42 = io_aluControl == 4'h5; // @[riscvSingle.scala 697:30:@508.14]
  assign _T_43 = $unsigned(io_a); // @[riscvSingle.scala 698:19:@510.16]
  assign _T_44 = $unsigned(io_b); // @[riscvSingle.scala 698:33:@511.16]
  assign _T_45 = _T_43 < _T_44; // @[riscvSingle.scala 698:26:@512.16]
  assign _GEN_0 = _T_45 ? $signed(2'sh1) : $signed(2'sh0); // @[riscvSingle.scala 698:40:@513.16]
  assign _T_49 = io_aluControl == 4'h6; // @[riscvSingle.scala 703:31:@521.16]
  assign _T_50 = $signed(io_a) ^ $signed(io_b); // @[riscvSingle.scala 704:24:@523.18]
  assign _T_51 = $signed(_T_50); // @[riscvSingle.scala 704:24:@524.18]
  assign _T_53 = io_aluControl == 4'h7; // @[riscvSingle.scala 705:31:@528.18]
  assign _T_57 = io_aluControl == 4'h8; // @[riscvSingle.scala 707:30:@535.20]
  assign _T_58 = $signed(io_a) * $signed(io_b); // @[riscvSingle.scala 708:24:@537.22]
  assign _T_60 = io_aluControl == 4'h9; // @[riscvSingle.scala 709:30:@541.22]
  assign _T_61 = $signed(io_a) < $signed(io_b); // @[riscvSingle.scala 710:19:@543.24]
  assign _GEN_1 = _T_61 ? $signed(2'sh1) : $signed(2'sh0); // @[riscvSingle.scala 710:26:@544.24]
  assign _T_65 = io_aluControl == 4'ha; // @[riscvSingle.scala 715:30:@552.24]
  assign _T_66 = $signed(io_a) / $signed(io_b); // @[riscvSingle.scala 716:24:@554.26]
  assign _T_68 = io_aluControl == 4'hc; // @[riscvSingle.scala 717:30:@558.26]
  assign _T_69 = $signed(io_a) - $signed(io_b); // @[riscvSingle.scala 718:24:@560.28]
  assign _T_70 = $signed(io_a) - $signed(io_b); // @[riscvSingle.scala 718:24:@561.28]
  assign _T_71 = $signed(_T_70); // @[riscvSingle.scala 718:24:@562.28]
  assign _GEN_2 = _T_68 ? $signed(_T_71) : $signed(32'sh0); // @[riscvSingle.scala 717:39:@559.26]
  assign _GEN_3 = _T_65 ? $signed(_T_66) : $signed({{1{_GEN_2[31]}},_GEN_2}); // @[riscvSingle.scala 715:39:@553.24]
  assign _GEN_4 = _T_60 ? $signed({{31{_GEN_1[1]}},_GEN_1}) : $signed(_GEN_3); // @[riscvSingle.scala 709:39:@542.22]
  assign _GEN_5 = _T_57 ? $signed(_T_58) : $signed({{31{_GEN_4[32]}},_GEN_4}); // @[riscvSingle.scala 707:39:@536.20]
  assign _GEN_6 = _T_53 ? $signed({{32{_T_40[31]}},_T_40}) : $signed(_GEN_5); // @[riscvSingle.scala 705:40:@529.18]
  assign _GEN_7 = _T_49 ? $signed({{32{_T_51[31]}},_T_51}) : $signed(_GEN_6); // @[riscvSingle.scala 703:40:@522.16]
  assign _GEN_8 = _T_42 ? $signed({{62{_GEN_0[1]}},_GEN_0}) : $signed(_GEN_7); // @[riscvSingle.scala 697:38:@509.14]
  assign _GEN_9 = _T_38 ? $signed({{32{_T_40[31]}},_T_40}) : $signed(_GEN_8); // @[riscvSingle.scala 695:40:@502.12]
  assign _GEN_10 = _T_34 ? $signed(_T_36) : $signed({{4063{_GEN_9[63]}},_GEN_9}); // @[riscvSingle.scala 693:40:@495.10]
  assign _GEN_11 = _T_29 ? $signed({{4095{_T_32[31]}},_T_32}) : $signed(_GEN_10); // @[riscvSingle.scala 691:40:@487.8]
  assign _GEN_12 = _T_25 ? $signed({{4095{_T_27[31]}},_T_27}) : $signed(_GEN_11); // @[riscvSingle.scala 689:40:@480.6]
  assign _GEN_13 = _T_21 ? $signed({{4095{_T_23[31]}},_T_23}) : $signed(_GEN_12); // @[riscvSingle.scala 687:34:@473.4]
  assign _T_85 = reset == 1'h0; // @[riscvSingle.scala 735:11:@586.4]
  assign _GEN_15 = _GEN_13[31:0]; // @[riscvSingle.scala 688:16:@476.6 riscvSingle.scala 690:16:@483.8 riscvSingle.scala 692:16:@491.10 riscvSingle.scala 694:16:@498.12 riscvSingle.scala 696:16:@505.14 riscvSingle.scala 699:20:@514.18 riscvSingle.scala 701:20:@517.18 riscvSingle.scala 704:16:@525.18 riscvSingle.scala 706:16:@532.20 riscvSingle.scala 708:16:@538.22 riscvSingle.scala 711:20:@545.26 riscvSingle.scala 713:20:@548.26 riscvSingle.scala 716:16:@555.26 riscvSingle.scala 718:16:@563.28 riscvSingle.scala 720:16:@566.28]
  assign io_out = $signed(_GEN_15); // @[riscvSingle.scala 688:16:@476.6 riscvSingle.scala 690:16:@483.8 riscvSingle.scala 692:16:@491.10 riscvSingle.scala 694:16:@498.12 riscvSingle.scala 696:16:@505.14 riscvSingle.scala 699:20:@514.18 riscvSingle.scala 701:20:@517.18 riscvSingle.scala 704:16:@525.18 riscvSingle.scala 706:16:@532.20 riscvSingle.scala 708:16:@538.22 riscvSingle.scala 711:20:@545.26 riscvSingle.scala 713:20:@548.26 riscvSingle.scala 716:16:@555.26 riscvSingle.scala 718:16:@563.28 riscvSingle.scala 720:16:@566.28]
  assign io_zeroFlag = $signed(_T_32) == $signed(32'sh0); // @[riscvSingle.scala 724:17:@573.4]
  assign io_lessThanFlag = $signed(io_a) < $signed(io_b); // @[riscvSingle.scala 725:21:@575.4]
  assign io_greaterThanFlag = $signed(io_a) > $signed(io_b); // @[riscvSingle.scala 726:24:@577.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_85) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|alu Module:\n|  a               : 0x%x\n|  b               : 0x%x\n|  out             : 0x%x\n|  aluControl      : b%b\n|  zeroFlag        : b%b\n|  lessThanFlag    : b%b\n|  greaterThanFlag : b%b\n|___________________________\n",io_a,io_b,io_out,io_aluControl,io_zeroFlag,io_lessThanFlag,io_greaterThanFlag); // @[riscvSingle.scala 735:11:@588.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module extend( // @[:@591.2]
  input         clock, // @[:@592.4]
  input         reset, // @[:@593.4]
  input  [11:0] io_instr12, // @[:@594.4]
  input  [19:0] io_instr20, // @[:@594.4]
  input  [1:0]  io_immSrc, // @[:@594.4]
  output [31:0] io_extImm // @[:@594.4]
);
  wire  _T_15; // @[riscvSingle.scala 152:20:@597.4]
  wire [11:0] _T_16; // @[riscvSingle.scala 153:33:@599.6]
  wire  _T_18; // @[riscvSingle.scala 154:26:@603.6]
  wire [12:0] _T_20; // @[Cat.scala 30:58:@605.8]
  wire [12:0] _T_21; // @[riscvSingle.scala 155:50:@606.8]
  wire  _T_23; // @[riscvSingle.scala 156:26:@610.8]
  wire [20:0] _T_25; // @[Cat.scala 30:58:@612.10]
  wire [20:0] _T_26; // @[riscvSingle.scala 157:50:@613.10]
  wire [20:0] _GEN_0; // @[riscvSingle.scala 156:34:@611.8]
  wire [20:0] _GEN_1; // @[riscvSingle.scala 154:34:@604.6]
  wire [20:0] _GEN_2; // @[riscvSingle.scala 152:28:@598.4]
  wire  _T_30; // @[riscvSingle.scala 165:11:@624.4]
  assign _T_15 = io_immSrc == 2'h0; // @[riscvSingle.scala 152:20:@597.4]
  assign _T_16 = $signed(io_instr12); // @[riscvSingle.scala 153:33:@599.6]
  assign _T_18 = io_immSrc == 2'h1; // @[riscvSingle.scala 154:26:@603.6]
  assign _T_20 = {io_instr12,1'h0}; // @[Cat.scala 30:58:@605.8]
  assign _T_21 = $signed(_T_20); // @[riscvSingle.scala 155:50:@606.8]
  assign _T_23 = io_immSrc == 2'h2; // @[riscvSingle.scala 156:26:@610.8]
  assign _T_25 = {io_instr20,1'h0}; // @[Cat.scala 30:58:@612.10]
  assign _T_26 = $signed(_T_25); // @[riscvSingle.scala 157:50:@613.10]
  assign _GEN_0 = _T_23 ? $signed(_T_26) : $signed(21'sh0); // @[riscvSingle.scala 156:34:@611.8]
  assign _GEN_1 = _T_18 ? $signed({{8{_T_21[12]}},_T_21}) : $signed(_GEN_0); // @[riscvSingle.scala 154:34:@604.6]
  assign _GEN_2 = _T_15 ? $signed({{9{_T_16[11]}},_T_16}) : $signed(_GEN_1); // @[riscvSingle.scala 152:28:@598.4]
  assign _T_30 = reset == 1'h0; // @[riscvSingle.scala 165:11:@624.4]
  assign io_extImm = {{11{_GEN_2[20]}},_GEN_2}; // @[riscvSingle.scala 153:19:@600.6 riscvSingle.scala 155:19:@607.8 riscvSingle.scala 157:19:@614.10 riscvSingle.scala 159:19:@617.10]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_30) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|extend Module:\n|  instr12     : b%b\n|  instr20     : b%b\n|  immsrc      : b%b\n|  extImm      : 0x%x\n|___________________________\n",io_instr12,io_instr20,io_immSrc,io_extImm); // @[riscvSingle.scala 165:11:@626.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module datapath( // @[:@667.2]
  input         clock, // @[:@668.4]
  input         reset, // @[:@669.4]
  input  [2:0]  io_regSrc, // @[:@670.4]
  input         io_regWriteEnable, // @[:@670.4]
  input  [1:0]  io_immSrc, // @[:@670.4]
  input         io_aluSrc, // @[:@670.4]
  input         io_pcSrc, // @[:@670.4]
  input  [3:0]  io_aluControl, // @[:@670.4]
  input         io_memToReg, // @[:@670.4]
  input  [31:0] io_instr, // @[:@670.4]
  input  [31:0] io_memReadData, // @[:@670.4]
  input  [1:0]  io_branchSrc, // @[:@670.4]
  output [31:0] io_pc, // @[:@670.4]
  output [31:0] io_memAddress, // @[:@670.4]
  output [31:0] io_memWriteData, // @[:@670.4]
  output        io_zeroFlag, // @[:@670.4]
  output        io_lessThanFlag, // @[:@670.4]
  output        io_greaterThanFlag // @[:@670.4]
);
  wire  rf_clock; // @[riscvSingle.scala 493:20:@673.4]
  wire  rf_reset; // @[riscvSingle.scala 493:20:@673.4]
  wire  rf_io_regWriteEnable; // @[riscvSingle.scala 493:20:@673.4]
  wire [4:0] rf_io_regWriteAddress; // @[riscvSingle.scala 493:20:@673.4]
  wire [31:0] rf_io_regWriteData; // @[riscvSingle.scala 493:20:@673.4]
  wire [4:0] rf_io_regReadAddress1; // @[riscvSingle.scala 493:20:@673.4]
  wire [4:0] rf_io_regReadAddress2; // @[riscvSingle.scala 493:20:@673.4]
  wire [31:0] rf_io_regReadData1; // @[riscvSingle.scala 493:20:@673.4]
  wire [31:0] rf_io_regReadData2; // @[riscvSingle.scala 493:20:@673.4]
  wire  alu_clock; // @[riscvSingle.scala 494:21:@676.4]
  wire  alu_reset; // @[riscvSingle.scala 494:21:@676.4]
  wire [31:0] alu_io_a; // @[riscvSingle.scala 494:21:@676.4]
  wire [31:0] alu_io_b; // @[riscvSingle.scala 494:21:@676.4]
  wire [3:0] alu_io_aluControl; // @[riscvSingle.scala 494:21:@676.4]
  wire [31:0] alu_io_out; // @[riscvSingle.scala 494:21:@676.4]
  wire  alu_io_zeroFlag; // @[riscvSingle.scala 494:21:@676.4]
  wire  alu_io_lessThanFlag; // @[riscvSingle.scala 494:21:@676.4]
  wire  alu_io_greaterThanFlag; // @[riscvSingle.scala 494:21:@676.4]
  wire  ext1_clock; // @[riscvSingle.scala 495:22:@679.4]
  wire  ext1_reset; // @[riscvSingle.scala 495:22:@679.4]
  wire [11:0] ext1_io_instr12; // @[riscvSingle.scala 495:22:@679.4]
  wire [19:0] ext1_io_instr20; // @[riscvSingle.scala 495:22:@679.4]
  wire [1:0] ext1_io_immSrc; // @[riscvSingle.scala 495:22:@679.4]
  wire [31:0] ext1_io_extImm; // @[riscvSingle.scala 495:22:@679.4]
  wire  ext2_clock; // @[riscvSingle.scala 496:22:@682.4]
  wire  ext2_reset; // @[riscvSingle.scala 496:22:@682.4]
  wire [11:0] ext2_io_instr12; // @[riscvSingle.scala 496:22:@682.4]
  wire [19:0] ext2_io_instr20; // @[riscvSingle.scala 496:22:@682.4]
  wire [1:0] ext2_io_immSrc; // @[riscvSingle.scala 496:22:@682.4]
  wire [31:0] ext2_io_extImm; // @[riscvSingle.scala 496:22:@682.4]
  wire  _T_48; // @[riscvSingle.scala 509:30:@695.4]
  wire  _T_49; // @[riscvSingle.scala 509:44:@696.4]
  wire [5:0] _T_50; // @[riscvSingle.scala 509:57:@697.4]
  wire [3:0] _T_51; // @[riscvSingle.scala 509:74:@698.4]
  wire [9:0] _T_52; // @[Cat.scala 30:58:@699.4]
  wire [1:0] _T_53; // @[Cat.scala 30:58:@700.4]
  wire [7:0] _T_56; // @[riscvSingle.scala 510:42:@704.4]
  wire  _T_57; // @[riscvSingle.scala 510:59:@705.4]
  wire [9:0] _T_58; // @[riscvSingle.scala 510:73:@706.4]
  wire [19:0] _T_61; // @[Cat.scala 30:58:@709.4]
  wire [19:0] _T_62; // @[riscvSingle.scala 511:28:@711.4]
  wire [31:0] _T_64; // @[Cat.scala 30:58:@712.4]
  wire [31:0] auiImm; // @[riscvSingle.scala 511:49:@713.4]
  wire  _T_67; // @[riscvSingle.scala 519:28:@723.4]
  wire  _T_69; // @[riscvSingle.scala 519:28:@724.4]
  wire [31:0] extImm; // @[riscvSingle.scala 519:18:@725.4]
  reg [31:0] pcReg; // @[riscvSingle.scala 523:25:@727.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_78; // @[riscvSingle.scala 528:22:@732.4]
  wire [31:0] pcPlus4; // @[riscvSingle.scala 528:22:@733.4]
  wire [31:0] _T_83; // @[riscvSingle.scala 530:40:@738.4]
  wire [31:0] branchExtImm; // @[riscvSingle.scala 501:28:@689.4 riscvSingle.scala 518:18:@722.4]
  wire [32:0] _T_84; // @[riscvSingle.scala 530:30:@739.4]
  wire [31:0] _T_85; // @[riscvSingle.scala 530:30:@740.4]
  wire [31:0] pcBranch; // @[riscvSingle.scala 530:30:@741.4]
  wire [31:0] _T_87; // @[riscvSingle.scala 531:31:@743.4]
  wire [31:0] pcRegBranch; // @[riscvSingle.scala 531:38:@744.4]
  wire  _T_90; // @[riscvSingle.scala 532:31:@746.4]
  wire  _T_91; // @[riscvSingle.scala 532:35:@747.4]
  wire  _T_93; // @[riscvSingle.scala 532:35:@748.4]
  wire  _T_94; // @[riscvSingle.scala 532:70:@749.4]
  wire  _T_95; // @[riscvSingle.scala 532:74:@750.4]
  wire  _T_97; // @[riscvSingle.scala 532:74:@751.4]
  wire [31:0] _T_98; // @[riscvSingle.scala 532:89:@752.4]
  wire [31:0] _T_99; // @[riscvSingle.scala 532:57:@753.4]
  wire [31:0] pcNext; // @[riscvSingle.scala 532:18:@754.4]
  wire [6:0] _T_101; // @[riscvSingle.scala 538:28:@758.4]
  wire [4:0] _T_102; // @[riscvSingle.scala 538:45:@759.4]
  wire [11:0] _T_103; // @[Cat.scala 30:58:@760.4]
  wire [11:0] _T_104; // @[riscvSingle.scala 538:54:@761.4]
  wire  _T_105; // @[riscvSingle.scala 541:40:@763.4]
  wire  _T_107; // @[riscvSingle.scala 541:40:@764.4]
  wire [31:0] memImm; // @[riscvSingle.scala 500:22:@688.4 riscvSingle.scala 538:12:@762.4]
  wire [31:0] _T_108; // @[riscvSingle.scala 541:27:@765.4]
  wire [32:0] _T_109; // @[riscvSingle.scala 541:70:@766.4]
  wire [31:0] _T_110; // @[riscvSingle.scala 541:70:@767.4]
  wire [31:0] _T_111; // @[riscvSingle.scala 541:70:@768.4]
  wire  _T_113; // @[riscvSingle.scala 544:37:@771.4]
  wire  _T_114; // @[riscvSingle.scala 544:41:@772.4]
  wire  _T_116; // @[riscvSingle.scala 544:41:@773.4]
  wire [4:0] _T_118; // @[riscvSingle.scala 544:67:@774.4]
  wire  _T_120; // @[riscvSingle.scala 545:37:@777.4]
  wire  _T_121; // @[riscvSingle.scala 545:41:@778.4]
  wire  _T_123; // @[riscvSingle.scala 545:41:@779.4]
  wire [4:0] _T_125; // @[riscvSingle.scala 545:71:@781.4]
  wire  _T_127; // @[riscvSingle.scala 546:34:@784.4]
  wire  _T_128; // @[riscvSingle.scala 546:38:@785.4]
  wire  _T_130; // @[riscvSingle.scala 546:38:@786.4]
  wire [31:0] _T_135; // @[riscvSingle.scala 546:63:@790.4]
  wire [31:0] regWriteData; // @[riscvSingle.scala 546:24:@791.4]
  wire  _T_143; // @[riscvSingle.scala 556:31:@805.4]
  wire  _T_145; // @[riscvSingle.scala 556:31:@806.4]
  wire  _T_149; // @[riscvSingle.scala 580:11:@832.4]
  wire [31:0] datapathMessage_aluOut; // @[riscvSingle.scala 492:31:@672.4 riscvSingle.scala 566:28:@817.4]
  wire [31:0] datapathMessage_regReadData2; // @[riscvSingle.scala 492:31:@672.4 riscvSingle.scala 570:34:@821.4]
  wire [1:0] datapathMessage_regSrc; // @[riscvSingle.scala 492:31:@672.4 riscvSingle.scala 579:28:@830.4]
  wire [11:0] jumpImm; // @[riscvSingle.scala 498:23:@686.4 riscvSingle.scala 510:13:@710.4]
  regfile rf ( // @[riscvSingle.scala 493:20:@673.4]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_regWriteEnable(rf_io_regWriteEnable),
    .io_regWriteAddress(rf_io_regWriteAddress),
    .io_regWriteData(rf_io_regWriteData),
    .io_regReadAddress1(rf_io_regReadAddress1),
    .io_regReadAddress2(rf_io_regReadAddress2),
    .io_regReadData1(rf_io_regReadData1),
    .io_regReadData2(rf_io_regReadData2)
  );
  alu alu ( // @[riscvSingle.scala 494:21:@676.4]
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
  extend ext1 ( // @[riscvSingle.scala 495:22:@679.4]
    .clock(ext1_clock),
    .reset(ext1_reset),
    .io_instr12(ext1_io_instr12),
    .io_instr20(ext1_io_instr20),
    .io_immSrc(ext1_io_immSrc),
    .io_extImm(ext1_io_extImm)
  );
  extend ext2 ( // @[riscvSingle.scala 496:22:@682.4]
    .clock(ext2_clock),
    .reset(ext2_reset),
    .io_instr12(ext2_io_instr12),
    .io_instr20(ext2_io_instr20),
    .io_immSrc(ext2_io_immSrc),
    .io_extImm(ext2_io_extImm)
  );
  assign _T_48 = io_instr[31]; // @[riscvSingle.scala 509:30:@695.4]
  assign _T_49 = io_instr[7]; // @[riscvSingle.scala 509:44:@696.4]
  assign _T_50 = io_instr[30:25]; // @[riscvSingle.scala 509:57:@697.4]
  assign _T_51 = io_instr[11:8]; // @[riscvSingle.scala 509:74:@698.4]
  assign _T_52 = {_T_50,_T_51}; // @[Cat.scala 30:58:@699.4]
  assign _T_53 = {_T_48,_T_49}; // @[Cat.scala 30:58:@700.4]
  assign _T_56 = io_instr[19:12]; // @[riscvSingle.scala 510:42:@704.4]
  assign _T_57 = io_instr[20]; // @[riscvSingle.scala 510:59:@705.4]
  assign _T_58 = io_instr[30:21]; // @[riscvSingle.scala 510:73:@706.4]
  assign _T_61 = {_T_48,_T_56,_T_57,_T_58}; // @[Cat.scala 30:58:@709.4]
  assign _T_62 = io_instr[31:12]; // @[riscvSingle.scala 511:28:@711.4]
  assign _T_64 = {_T_62,12'h0}; // @[Cat.scala 30:58:@712.4]
  assign auiImm = $signed(_T_64); // @[riscvSingle.scala 511:49:@713.4]
  assign _T_67 = ~ io_pcSrc; // @[riscvSingle.scala 519:28:@723.4]
  assign _T_69 = _T_67 == 1'h0; // @[riscvSingle.scala 519:28:@724.4]
  assign extImm = _T_69 ? $signed(auiImm) : $signed(ext2_io_extImm); // @[riscvSingle.scala 519:18:@725.4]
  assign _T_78 = pcReg + 32'h4; // @[riscvSingle.scala 528:22:@732.4]
  assign pcPlus4 = pcReg + 32'h4; // @[riscvSingle.scala 528:22:@733.4]
  assign _T_83 = $signed(pcPlus4); // @[riscvSingle.scala 530:40:@738.4]
  assign branchExtImm = ext1_io_extImm; // @[riscvSingle.scala 501:28:@689.4 riscvSingle.scala 518:18:@722.4]
  assign _T_84 = $signed(branchExtImm) + $signed(_T_83); // @[riscvSingle.scala 530:30:@739.4]
  assign _T_85 = $signed(branchExtImm) + $signed(_T_83); // @[riscvSingle.scala 530:30:@740.4]
  assign pcBranch = $signed(_T_85); // @[riscvSingle.scala 530:30:@741.4]
  assign _T_87 = $unsigned(alu_io_out); // @[riscvSingle.scala 531:31:@743.4]
  assign pcRegBranch = _T_87 & 32'hfffffffe; // @[riscvSingle.scala 531:38:@744.4]
  assign _T_90 = io_branchSrc[1]; // @[riscvSingle.scala 532:31:@746.4]
  assign _T_91 = ~ _T_90; // @[riscvSingle.scala 532:35:@747.4]
  assign _T_93 = _T_91 == 1'h0; // @[riscvSingle.scala 532:35:@748.4]
  assign _T_94 = io_branchSrc[0]; // @[riscvSingle.scala 532:70:@749.4]
  assign _T_95 = ~ _T_94; // @[riscvSingle.scala 532:74:@750.4]
  assign _T_97 = _T_95 == 1'h0; // @[riscvSingle.scala 532:74:@751.4]
  assign _T_98 = $unsigned(pcBranch); // @[riscvSingle.scala 532:89:@752.4]
  assign _T_99 = _T_97 ? _T_98 : pcPlus4; // @[riscvSingle.scala 532:57:@753.4]
  assign pcNext = _T_93 ? pcRegBranch : _T_99; // @[riscvSingle.scala 532:18:@754.4]
  assign _T_101 = io_instr[31:25]; // @[riscvSingle.scala 538:28:@758.4]
  assign _T_102 = io_instr[11:7]; // @[riscvSingle.scala 538:45:@759.4]
  assign _T_103 = {_T_101,_T_102}; // @[Cat.scala 30:58:@760.4]
  assign _T_104 = $signed(_T_103); // @[riscvSingle.scala 538:54:@761.4]
  assign _T_105 = ~ io_memToReg; // @[riscvSingle.scala 541:40:@763.4]
  assign _T_107 = _T_105 == 1'h0; // @[riscvSingle.scala 541:40:@764.4]
  assign memImm = {{20{_T_104[11]}},_T_104}; // @[riscvSingle.scala 500:22:@688.4 riscvSingle.scala 538:12:@762.4]
  assign _T_108 = _T_107 ? $signed(extImm) : $signed(memImm); // @[riscvSingle.scala 541:27:@765.4]
  assign _T_109 = $signed(_T_108) + $signed(rf_io_regReadData1); // @[riscvSingle.scala 541:70:@766.4]
  assign _T_110 = $signed(_T_108) + $signed(rf_io_regReadData1); // @[riscvSingle.scala 541:70:@767.4]
  assign _T_111 = $signed(_T_110); // @[riscvSingle.scala 541:70:@768.4]
  assign _T_113 = io_regSrc[0]; // @[riscvSingle.scala 544:37:@771.4]
  assign _T_114 = ~ _T_113; // @[riscvSingle.scala 544:41:@772.4]
  assign _T_116 = _T_114 == 1'h0; // @[riscvSingle.scala 544:41:@773.4]
  assign _T_118 = io_instr[19:15]; // @[riscvSingle.scala 544:67:@774.4]
  assign _T_120 = io_regSrc[1]; // @[riscvSingle.scala 545:37:@777.4]
  assign _T_121 = ~ _T_120; // @[riscvSingle.scala 545:41:@778.4]
  assign _T_123 = _T_121 == 1'h0; // @[riscvSingle.scala 545:41:@779.4]
  assign _T_125 = io_instr[24:20]; // @[riscvSingle.scala 545:71:@781.4]
  assign _T_127 = io_regSrc[2]; // @[riscvSingle.scala 546:34:@784.4]
  assign _T_128 = ~ _T_127; // @[riscvSingle.scala 546:38:@785.4]
  assign _T_130 = _T_128 == 1'h0; // @[riscvSingle.scala 546:38:@786.4]
  assign _T_135 = _T_107 ? $signed(io_memReadData) : $signed(alu_io_out); // @[riscvSingle.scala 546:63:@790.4]
  assign regWriteData = _T_130 ? $signed(_T_83) : $signed(_T_135); // @[riscvSingle.scala 546:24:@791.4]
  assign _T_143 = ~ io_aluSrc; // @[riscvSingle.scala 556:31:@805.4]
  assign _T_145 = _T_143 == 1'h0; // @[riscvSingle.scala 556:31:@806.4]
  assign _T_149 = reset == 1'h0; // @[riscvSingle.scala 580:11:@832.4]
  assign datapathMessage_aluOut = alu_io_out; // @[riscvSingle.scala 492:31:@672.4 riscvSingle.scala 566:28:@817.4]
  assign datapathMessage_regReadData2 = rf_io_regReadData2; // @[riscvSingle.scala 492:31:@672.4 riscvSingle.scala 570:34:@821.4]
  assign datapathMessage_regSrc = io_regSrc[1:0]; // @[riscvSingle.scala 492:31:@672.4 riscvSingle.scala 579:28:@830.4]
  assign jumpImm = _T_61[11:0]; // @[riscvSingle.scala 498:23:@686.4 riscvSingle.scala 510:13:@710.4]
  assign io_pc = pcReg; // @[riscvSingle.scala 534:11:@757.4]
  assign io_memAddress = $unsigned(_T_111); // @[riscvSingle.scala 541:19:@770.4]
  assign io_memWriteData = rf_io_regReadData2; // @[riscvSingle.scala 552:21:@799.4]
  assign io_zeroFlag = alu_io_zeroFlag; // @[riscvSingle.scala 558:17:@810.4]
  assign io_lessThanFlag = alu_io_lessThanFlag; // @[riscvSingle.scala 559:21:@811.4]
  assign io_greaterThanFlag = alu_io_greaterThanFlag; // @[riscvSingle.scala 560:24:@812.4]
  assign rf_clock = clock; // @[:@674.4]
  assign rf_reset = reset; // @[:@675.4]
  assign rf_io_regWriteEnable = io_regWriteEnable; // @[riscvSingle.scala 547:26:@793.4]
  assign rf_io_regWriteAddress = io_instr[11:7]; // @[riscvSingle.scala 550:27:@797.4]
  assign rf_io_regWriteData = _T_130 ? $signed(_T_83) : $signed(_T_135); // @[riscvSingle.scala 551:24:@798.4]
  assign rf_io_regReadAddress1 = _T_116 ? 5'h1f : _T_118; // @[riscvSingle.scala 548:27:@794.4]
  assign rf_io_regReadAddress2 = _T_123 ? _T_102 : _T_125; // @[riscvSingle.scala 549:27:@795.4]
  assign alu_clock = clock; // @[:@677.4]
  assign alu_reset = reset; // @[:@678.4]
  assign alu_io_a = _T_69 ? $signed(_T_83) : $signed(rf_io_regReadData1); // @[riscvSingle.scala 555:14:@804.4]
  assign alu_io_b = _T_145 ? $signed(extImm) : $signed(rf_io_regReadData2); // @[riscvSingle.scala 556:14:@808.4]
  assign alu_io_aluControl = io_aluControl; // @[riscvSingle.scala 557:23:@809.4]
  assign ext1_clock = clock; // @[:@680.4]
  assign ext1_reset = reset; // @[:@681.4]
  assign ext1_io_instr12 = {_T_53,_T_52}; // @[riscvSingle.scala 512:21:@715.4]
  assign ext1_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 513:21:@716.4]
  assign ext1_io_immSrc = io_immSrc; // @[riscvSingle.scala 514:20:@717.4]
  assign ext2_clock = clock; // @[:@683.4]
  assign ext2_reset = reset; // @[:@684.4]
  assign ext2_io_instr12 = io_instr[31:20]; // @[riscvSingle.scala 515:21:@719.4]
  assign ext2_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 516:21:@720.4]
  assign ext2_io_immSrc = io_immSrc; // @[riscvSingle.scala 517:20:@721.4]
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
          $fwrite(32'h80000002,"\n\n\n___________________________\n|datapath Module:\n|  inst            : 0x%x\n|  memToReg        : b%b\n|  memImm          : b%b\n|  memAddress      : 0x%x\n|  memReadData     : 0x%x\n|  memWriteData    : 0x%x\n|  aluOut          : 0x%x\n|  pcNext          : 0x%x\n|  branchExtImm    : 0x%x\n|  extImm          : 0x%x\n|  regReadData2    : 0x%x\n|  regWriteData    : 0x%x\n|  regSrc          : 0x%x\n|  pcBranch        : 0x%x\n|  pcRegBranch     : 0x%x\n|  pcPlus4         : 0x%x\n|  branchSrc       : b%b\n|___________________________\n",io_instr,io_memToReg,memImm,io_memAddress,io_memReadData,io_memWriteData,datapathMessage_aluOut,pcNext,branchExtImm,extImm,datapathMessage_regReadData2,regWriteData,datapathMessage_regSrc,pcBranch,pcRegBranch,pcPlus4,io_branchSrc); // @[riscvSingle.scala 580:11:@834.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module decoder( // @[:@837.2]
  input        clock, // @[:@838.4]
  input        reset, // @[:@839.4]
  input  [6:0] io_opcode, // @[:@840.4]
  input  [6:0] io_funct7, // @[:@840.4]
  input  [2:0] io_funct3, // @[:@840.4]
  output [2:0] io_regSrc, // @[:@840.4]
  output       io_regWriteEnable, // @[:@840.4]
  output [1:0] io_immSrc, // @[:@840.4]
  output       io_aluSrc, // @[:@840.4]
  output       io_pcSrc, // @[:@840.4]
  output [3:0] io_aluControl, // @[:@840.4]
  output       io_memWriteEnable, // @[:@840.4]
  output       io_memToReg, // @[:@840.4]
  output [1:0] io_branchSrc, // @[:@840.4]
  input        io_zeroFlag, // @[:@840.4]
  input        io_lessThanFlag, // @[:@840.4]
  input        io_greaterThanFlag // @[:@840.4]
);
  wire  _T_37; // @[riscvSingle.scala 227:20:@843.4]
  wire  _T_47; // @[riscvSingle.scala 237:24:@853.6]
  wire  _T_49; // @[riscvSingle.scala 238:28:@855.8]
  wire  _T_52; // @[riscvSingle.scala 240:34:@860.10]
  wire  _T_55; // @[riscvSingle.scala 242:34:@865.12]
  wire  _T_58; // @[riscvSingle.scala 244:34:@870.14]
  wire  _T_61; // @[riscvSingle.scala 246:34:@875.16]
  wire  _T_64; // @[riscvSingle.scala 248:34:@880.18]
  wire  _T_67; // @[riscvSingle.scala 250:34:@885.20]
  wire  _T_70; // @[riscvSingle.scala 252:34:@890.22]
  wire [3:0] _GEN_0; // @[riscvSingle.scala 252:48:@891.22]
  wire [3:0] _GEN_1; // @[riscvSingle.scala 250:48:@886.20]
  wire [3:0] _GEN_2; // @[riscvSingle.scala 248:48:@881.18]
  wire [3:0] _GEN_3; // @[riscvSingle.scala 246:48:@876.16]
  wire [3:0] _GEN_4; // @[riscvSingle.scala 244:48:@871.14]
  wire [3:0] _GEN_5; // @[riscvSingle.scala 242:48:@866.12]
  wire [3:0] _GEN_6; // @[riscvSingle.scala 240:48:@861.10]
  wire [3:0] _GEN_7; // @[riscvSingle.scala 238:42:@856.8]
  wire  _T_74; // @[riscvSingle.scala 257:30:@899.8]
  wire [3:0] _GEN_8; // @[riscvSingle.scala 260:47:@907.12]
  wire [3:0] _GEN_9; // @[riscvSingle.scala 258:41:@902.10]
  wire  _T_83; // @[riscvSingle.scala 265:30:@915.10]
  wire [3:0] _GEN_10; // @[riscvSingle.scala 268:47:@923.14]
  wire [3:0] _GEN_11; // @[riscvSingle.scala 266:43:@918.12]
  wire [3:0] _GEN_12; // @[riscvSingle.scala 265:47:@916.10]
  wire [3:0] _GEN_13; // @[riscvSingle.scala 257:47:@900.8]
  wire [3:0] _GEN_14; // @[riscvSingle.scala 237:42:@854.6]
  wire  _T_93; // @[riscvSingle.scala 276:26:@935.6]
  wire  _T_104; // @[riscvSingle.scala 286:26:@948.8]
  wire [5:0] _T_113; // @[riscvSingle.scala 296:24:@958.10]
  wire  _T_115; // @[riscvSingle.scala 296:30:@959.10]
  wire [3:0] _GEN_15; // @[riscvSingle.scala 297:41:@962.12]
  wire [2:0] _GEN_17; // @[riscvSingle.scala 313:48:@996.22]
  wire [2:0] _GEN_18; // @[riscvSingle.scala 311:48:@991.20]
  wire [2:0] _GEN_19; // @[riscvSingle.scala 309:48:@986.18]
  wire [3:0] _GEN_20; // @[riscvSingle.scala 307:48:@981.16]
  wire [3:0] _GEN_21; // @[riscvSingle.scala 305:48:@976.14]
  wire [3:0] _GEN_22; // @[riscvSingle.scala 303:42:@971.12]
  wire [3:0] _GEN_23; // @[riscvSingle.scala 296:46:@960.10]
  wire  _T_143; // @[riscvSingle.scala 321:26:@1010.10]
  wire  _T_154; // @[riscvSingle.scala 331:26:@1023.12]
  wire  _T_165; // @[riscvSingle.scala 341:26:@1036.14]
  wire  _T_178; // @[riscvSingle.scala 351:37:@1048.16]
  wire  _T_183; // @[riscvSingle.scala 353:57:@1054.18]
  wire  _T_184; // @[riscvSingle.scala 353:43:@1055.18]
  wire  _T_190; // @[riscvSingle.scala 355:43:@1062.20]
  wire  _T_196; // @[riscvSingle.scala 357:43:@1069.22]
  wire  _T_202; // @[riscvSingle.scala 359:43:@1076.24]
  wire  _T_208; // @[riscvSingle.scala 361:43:@1083.26]
  wire  _GEN_25; // @[riscvSingle.scala 359:70:@1077.24]
  wire  _GEN_26; // @[riscvSingle.scala 357:73:@1070.22]
  wire  _GEN_27; // @[riscvSingle.scala 355:70:@1063.20]
  wire  _GEN_28; // @[riscvSingle.scala 353:66:@1056.18]
  wire  _GEN_29; // @[riscvSingle.scala 351:59:@1049.16]
  wire  _T_212; // @[riscvSingle.scala 367:26:@1092.16]
  wire  _T_223; // @[riscvSingle.scala 377:26:@1105.18]
  wire [2:0] _GEN_31; // @[riscvSingle.scala 377:44:@1106.18]
  wire [1:0] _GEN_34; // @[riscvSingle.scala 377:44:@1106.18]
  wire [2:0] _GEN_35; // @[riscvSingle.scala 367:44:@1093.16]
  wire [1:0] _GEN_36; // @[riscvSingle.scala 367:44:@1093.16]
  wire  _GEN_37; // @[riscvSingle.scala 367:44:@1093.16]
  wire [1:0] _GEN_39; // @[riscvSingle.scala 367:44:@1093.16]
  wire [1:0] _GEN_40; // @[riscvSingle.scala 367:44:@1093.16]
  wire [2:0] _GEN_41; // @[riscvSingle.scala 341:44:@1037.14]
  wire [1:0] _GEN_42; // @[riscvSingle.scala 341:44:@1037.14]
  wire  _GEN_43; // @[riscvSingle.scala 341:44:@1037.14]
  wire [2:0] _GEN_45; // @[riscvSingle.scala 341:44:@1037.14]
  wire [1:0] _GEN_46; // @[riscvSingle.scala 341:44:@1037.14]
  wire [2:0] _GEN_47; // @[riscvSingle.scala 331:44:@1024.12]
  wire [1:0] _GEN_48; // @[riscvSingle.scala 331:44:@1024.12]
  wire  _GEN_49; // @[riscvSingle.scala 331:44:@1024.12]
  wire  _GEN_51; // @[riscvSingle.scala 331:44:@1024.12]
  wire [1:0] _GEN_53; // @[riscvSingle.scala 331:44:@1024.12]
  wire [2:0] _GEN_54; // @[riscvSingle.scala 331:44:@1024.12]
  wire [2:0] _GEN_55; // @[riscvSingle.scala 321:44:@1011.10]
  wire [1:0] _GEN_56; // @[riscvSingle.scala 321:44:@1011.10]
  wire  _GEN_57; // @[riscvSingle.scala 321:44:@1011.10]
  wire  _GEN_60; // @[riscvSingle.scala 321:44:@1011.10]
  wire  _GEN_61; // @[riscvSingle.scala 321:44:@1011.10]
  wire [1:0] _GEN_62; // @[riscvSingle.scala 321:44:@1011.10]
  wire [2:0] _GEN_63; // @[riscvSingle.scala 321:44:@1011.10]
  wire [2:0] _GEN_64; // @[riscvSingle.scala 286:44:@949.8]
  wire [1:0] _GEN_65; // @[riscvSingle.scala 286:44:@949.8]
  wire  _GEN_66; // @[riscvSingle.scala 286:44:@949.8]
  wire  _GEN_68; // @[riscvSingle.scala 286:44:@949.8]
  wire  _GEN_69; // @[riscvSingle.scala 286:44:@949.8]
  wire  _GEN_70; // @[riscvSingle.scala 286:44:@949.8]
  wire [1:0] _GEN_71; // @[riscvSingle.scala 286:44:@949.8]
  wire [3:0] _GEN_72; // @[riscvSingle.scala 286:44:@949.8]
  wire [2:0] _GEN_73; // @[riscvSingle.scala 276:43:@936.6]
  wire [1:0] _GEN_74; // @[riscvSingle.scala 276:43:@936.6]
  wire  _GEN_75; // @[riscvSingle.scala 276:43:@936.6]
  wire  _GEN_77; // @[riscvSingle.scala 276:43:@936.6]
  wire  _GEN_78; // @[riscvSingle.scala 276:43:@936.6]
  wire  _GEN_79; // @[riscvSingle.scala 276:43:@936.6]
  wire [1:0] _GEN_80; // @[riscvSingle.scala 276:43:@936.6]
  wire [3:0] _GEN_81; // @[riscvSingle.scala 276:43:@936.6]
  wire  _T_255; // @[riscvSingle.scala 424:11:@1156.4]
  wire  decoderMessage_regSrc; // @[riscvSingle.scala 225:30:@842.4 riscvSingle.scala 413:27:@1144.4]
  assign _T_37 = io_opcode == 7'h33; // @[riscvSingle.scala 227:20:@843.4]
  assign _T_47 = io_funct7 == 7'h0; // @[riscvSingle.scala 237:24:@853.6]
  assign _T_49 = io_funct3 == 3'h0; // @[riscvSingle.scala 238:28:@855.8]
  assign _T_52 = io_funct3 == 3'h1; // @[riscvSingle.scala 240:34:@860.10]
  assign _T_55 = io_funct3 == 3'h2; // @[riscvSingle.scala 242:34:@865.12]
  assign _T_58 = io_funct3 == 3'h3; // @[riscvSingle.scala 244:34:@870.14]
  assign _T_61 = io_funct3 == 3'h4; // @[riscvSingle.scala 246:34:@875.16]
  assign _T_64 = io_funct3 == 3'h5; // @[riscvSingle.scala 248:34:@880.18]
  assign _T_67 = io_funct3 == 3'h6; // @[riscvSingle.scala 250:34:@885.20]
  assign _T_70 = io_funct3 == 3'h7; // @[riscvSingle.scala 252:34:@890.22]
  assign _GEN_0 = _T_70 ? 4'h0 : 4'hf; // @[riscvSingle.scala 252:48:@891.22]
  assign _GEN_1 = _T_67 ? 4'h1 : _GEN_0; // @[riscvSingle.scala 250:48:@886.20]
  assign _GEN_2 = _T_64 ? 4'h7 : _GEN_1; // @[riscvSingle.scala 248:48:@881.18]
  assign _GEN_3 = _T_61 ? 4'h6 : _GEN_2; // @[riscvSingle.scala 246:48:@876.16]
  assign _GEN_4 = _T_58 ? 4'h5 : _GEN_3; // @[riscvSingle.scala 244:48:@871.14]
  assign _GEN_5 = _T_55 ? 4'h9 : _GEN_4; // @[riscvSingle.scala 242:48:@866.12]
  assign _GEN_6 = _T_52 ? 4'h3 : _GEN_5; // @[riscvSingle.scala 240:48:@861.10]
  assign _GEN_7 = _T_49 ? 4'h2 : _GEN_6; // @[riscvSingle.scala 238:42:@856.8]
  assign _T_74 = io_funct7 == 7'h1; // @[riscvSingle.scala 257:30:@899.8]
  assign _GEN_8 = _T_61 ? 4'ha : 4'hf; // @[riscvSingle.scala 260:47:@907.12]
  assign _GEN_9 = _T_49 ? 4'h8 : _GEN_8; // @[riscvSingle.scala 258:41:@902.10]
  assign _T_83 = io_funct7 == 7'h20; // @[riscvSingle.scala 265:30:@915.10]
  assign _GEN_10 = _T_49 ? 4'hc : 4'hf; // @[riscvSingle.scala 268:47:@923.14]
  assign _GEN_11 = _T_64 ? 4'h4 : _GEN_10; // @[riscvSingle.scala 266:43:@918.12]
  assign _GEN_12 = _T_83 ? _GEN_11 : 4'hf; // @[riscvSingle.scala 265:47:@916.10]
  assign _GEN_13 = _T_74 ? _GEN_9 : _GEN_12; // @[riscvSingle.scala 257:47:@900.8]
  assign _GEN_14 = _T_47 ? _GEN_7 : _GEN_13; // @[riscvSingle.scala 237:42:@854.6]
  assign _T_93 = io_opcode == 7'h17; // @[riscvSingle.scala 276:26:@935.6]
  assign _T_104 = io_opcode == 7'h13; // @[riscvSingle.scala 286:26:@948.8]
  assign _T_113 = io_funct7[6:1]; // @[riscvSingle.scala 296:24:@958.10]
  assign _T_115 = _T_113 == 6'h10; // @[riscvSingle.scala 296:30:@959.10]
  assign _GEN_15 = _T_64 ? 4'h4 : 4'hf; // @[riscvSingle.scala 297:41:@962.12]
  assign _GEN_17 = _T_64 ? 3'h7 : {{2'd0}, _T_67}; // @[riscvSingle.scala 313:48:@996.22]
  assign _GEN_18 = _T_61 ? 3'h6 : _GEN_17; // @[riscvSingle.scala 311:48:@991.20]
  assign _GEN_19 = _T_58 ? 3'h5 : _GEN_18; // @[riscvSingle.scala 309:48:@986.18]
  assign _GEN_20 = _T_55 ? 4'h9 : {{1'd0}, _GEN_19}; // @[riscvSingle.scala 307:48:@981.16]
  assign _GEN_21 = _T_52 ? 4'h3 : _GEN_20; // @[riscvSingle.scala 305:48:@976.14]
  assign _GEN_22 = _T_49 ? 4'h2 : _GEN_21; // @[riscvSingle.scala 303:42:@971.12]
  assign _GEN_23 = _T_115 ? _GEN_15 : _GEN_22; // @[riscvSingle.scala 296:46:@960.10]
  assign _T_143 = io_opcode == 7'h3; // @[riscvSingle.scala 321:26:@1010.10]
  assign _T_154 = io_opcode == 7'h23; // @[riscvSingle.scala 331:26:@1023.12]
  assign _T_165 = io_opcode == 7'h63; // @[riscvSingle.scala 341:26:@1036.14]
  assign _T_178 = _T_49 & io_zeroFlag; // @[riscvSingle.scala 351:37:@1048.16]
  assign _T_183 = io_zeroFlag == 1'h0; // @[riscvSingle.scala 353:57:@1054.18]
  assign _T_184 = _T_52 & _T_183; // @[riscvSingle.scala 353:43:@1055.18]
  assign _T_190 = _T_61 & io_lessThanFlag; // @[riscvSingle.scala 355:43:@1062.20]
  assign _T_196 = _T_64 & io_greaterThanFlag; // @[riscvSingle.scala 357:43:@1069.22]
  assign _T_202 = _T_67 & io_lessThanFlag; // @[riscvSingle.scala 359:43:@1076.24]
  assign _T_208 = _T_70 & io_greaterThanFlag; // @[riscvSingle.scala 361:43:@1083.26]
  assign _GEN_25 = _T_202 ? 1'h1 : _T_208; // @[riscvSingle.scala 359:70:@1077.24]
  assign _GEN_26 = _T_196 ? 1'h1 : _GEN_25; // @[riscvSingle.scala 357:73:@1070.22]
  assign _GEN_27 = _T_190 ? 1'h1 : _GEN_26; // @[riscvSingle.scala 355:70:@1063.20]
  assign _GEN_28 = _T_184 ? 1'h1 : _GEN_27; // @[riscvSingle.scala 353:66:@1056.18]
  assign _GEN_29 = _T_178 ? 1'h1 : _GEN_28; // @[riscvSingle.scala 351:59:@1049.16]
  assign _T_212 = io_opcode == 7'h6f; // @[riscvSingle.scala 367:26:@1092.16]
  assign _T_223 = io_opcode == 7'h67; // @[riscvSingle.scala 377:26:@1105.18]
  assign _GEN_31 = _T_223 ? 3'h4 : 3'h0; // @[riscvSingle.scala 377:44:@1106.18]
  assign _GEN_34 = _T_223 ? 2'h2 : 2'h0; // @[riscvSingle.scala 377:44:@1106.18]
  assign _GEN_35 = _T_212 ? 3'h4 : _GEN_31; // @[riscvSingle.scala 367:44:@1093.16]
  assign _GEN_36 = _T_212 ? 2'h2 : 2'h0; // @[riscvSingle.scala 367:44:@1093.16]
  assign _GEN_37 = _T_212 ? 1'h1 : _T_223; // @[riscvSingle.scala 367:44:@1093.16]
  assign _GEN_39 = _T_212 ? 2'h1 : _GEN_34; // @[riscvSingle.scala 367:44:@1093.16]
  assign _GEN_40 = _T_212 ? 2'h0 : _GEN_34; // @[riscvSingle.scala 367:44:@1093.16]
  assign _GEN_41 = _T_165 ? 3'h0 : _GEN_35; // @[riscvSingle.scala 341:44:@1037.14]
  assign _GEN_42 = _T_165 ? 2'h1 : _GEN_36; // @[riscvSingle.scala 341:44:@1037.14]
  assign _GEN_43 = _T_165 ? 1'h0 : _GEN_37; // @[riscvSingle.scala 341:44:@1037.14]
  assign _GEN_45 = _T_165 ? 3'h4 : {{1'd0}, _GEN_40}; // @[riscvSingle.scala 341:44:@1037.14]
  assign _GEN_46 = _T_165 ? {{1'd0}, _GEN_29} : _GEN_39; // @[riscvSingle.scala 341:44:@1037.14]
  assign _GEN_47 = _T_154 ? 3'h0 : _GEN_41; // @[riscvSingle.scala 331:44:@1024.12]
  assign _GEN_48 = _T_154 ? 2'h0 : _GEN_42; // @[riscvSingle.scala 331:44:@1024.12]
  assign _GEN_49 = _T_154 ? 1'h1 : _GEN_43; // @[riscvSingle.scala 331:44:@1024.12]
  assign _GEN_51 = _T_154 ? 1'h0 : _GEN_43; // @[riscvSingle.scala 331:44:@1024.12]
  assign _GEN_53 = _T_154 ? 2'h0 : _GEN_46; // @[riscvSingle.scala 331:44:@1024.12]
  assign _GEN_54 = _T_154 ? 3'h0 : _GEN_45; // @[riscvSingle.scala 331:44:@1024.12]
  assign _GEN_55 = _T_143 ? 3'h0 : _GEN_47; // @[riscvSingle.scala 321:44:@1011.10]
  assign _GEN_56 = _T_143 ? 2'h0 : _GEN_48; // @[riscvSingle.scala 321:44:@1011.10]
  assign _GEN_57 = _T_143 ? 1'h1 : _GEN_49; // @[riscvSingle.scala 321:44:@1011.10]
  assign _GEN_60 = _T_143 ? 1'h1 : _GEN_51; // @[riscvSingle.scala 321:44:@1011.10]
  assign _GEN_61 = _T_143 ? 1'h0 : _T_154; // @[riscvSingle.scala 321:44:@1011.10]
  assign _GEN_62 = _T_143 ? 2'h0 : _GEN_53; // @[riscvSingle.scala 321:44:@1011.10]
  assign _GEN_63 = _T_143 ? 3'h2 : _GEN_54; // @[riscvSingle.scala 321:44:@1011.10]
  assign _GEN_64 = _T_104 ? 3'h0 : _GEN_55; // @[riscvSingle.scala 286:44:@949.8]
  assign _GEN_65 = _T_104 ? 2'h0 : _GEN_56; // @[riscvSingle.scala 286:44:@949.8]
  assign _GEN_66 = _T_104 ? 1'h1 : _GEN_57; // @[riscvSingle.scala 286:44:@949.8]
  assign _GEN_68 = _T_104 ? 1'h0 : _T_143; // @[riscvSingle.scala 286:44:@949.8]
  assign _GEN_69 = _T_104 ? 1'h1 : _GEN_60; // @[riscvSingle.scala 286:44:@949.8]
  assign _GEN_70 = _T_104 ? 1'h0 : _GEN_61; // @[riscvSingle.scala 286:44:@949.8]
  assign _GEN_71 = _T_104 ? 2'h0 : _GEN_62; // @[riscvSingle.scala 286:44:@949.8]
  assign _GEN_72 = _T_104 ? _GEN_23 : {{1'd0}, _GEN_63}; // @[riscvSingle.scala 286:44:@949.8]
  assign _GEN_73 = _T_93 ? 3'h0 : _GEN_64; // @[riscvSingle.scala 276:43:@936.6]
  assign _GEN_74 = _T_93 ? 2'h2 : _GEN_65; // @[riscvSingle.scala 276:43:@936.6]
  assign _GEN_75 = _T_93 ? 1'h1 : _GEN_66; // @[riscvSingle.scala 276:43:@936.6]
  assign _GEN_77 = _T_93 ? 1'h0 : _GEN_68; // @[riscvSingle.scala 276:43:@936.6]
  assign _GEN_78 = _T_93 ? 1'h1 : _GEN_69; // @[riscvSingle.scala 276:43:@936.6]
  assign _GEN_79 = _T_93 ? 1'h0 : _GEN_70; // @[riscvSingle.scala 276:43:@936.6]
  assign _GEN_80 = _T_93 ? 2'h0 : _GEN_71; // @[riscvSingle.scala 276:43:@936.6]
  assign _GEN_81 = _T_93 ? 4'h2 : _GEN_72; // @[riscvSingle.scala 276:43:@936.6]
  assign _T_255 = reset == 1'h0; // @[riscvSingle.scala 424:11:@1156.4]
  assign decoderMessage_regSrc = io_regSrc[0]; // @[riscvSingle.scala 225:30:@842.4 riscvSingle.scala 413:27:@1144.4]
  assign io_regSrc = _T_37 ? 3'h0 : _GEN_73; // @[riscvSingle.scala 228:19:@845.6 riscvSingle.scala 277:19:@937.8 riscvSingle.scala 287:19:@950.10 riscvSingle.scala 322:19:@1012.12 riscvSingle.scala 332:19:@1025.14 riscvSingle.scala 342:19:@1038.16 riscvSingle.scala 368:19:@1094.18 riscvSingle.scala 378:19:@1107.20 riscvSingle.scala 388:19:@1120.22 riscvSingle.scala 398:19:@1131.22]
  assign io_regWriteEnable = _T_37 ? 1'h1 : _GEN_78; // @[riscvSingle.scala 233:27:@850.6 riscvSingle.scala 282:27:@942.8 riscvSingle.scala 292:27:@955.10 riscvSingle.scala 327:27:@1017.12 riscvSingle.scala 337:27:@1030.14 riscvSingle.scala 347:27:@1043.16 riscvSingle.scala 373:27:@1099.18 riscvSingle.scala 383:27:@1112.20 riscvSingle.scala 393:27:@1125.22 riscvSingle.scala 403:27:@1136.22]
  assign io_immSrc = _T_37 ? 2'h0 : _GEN_74; // @[riscvSingle.scala 229:19:@846.6 riscvSingle.scala 278:19:@938.8 riscvSingle.scala 288:19:@951.10 riscvSingle.scala 323:19:@1013.12 riscvSingle.scala 333:19:@1026.14 riscvSingle.scala 343:19:@1039.16 riscvSingle.scala 369:19:@1095.18 riscvSingle.scala 379:19:@1108.20 riscvSingle.scala 389:19:@1121.22 riscvSingle.scala 399:19:@1132.22]
  assign io_aluSrc = _T_37 ? 1'h0 : _GEN_75; // @[riscvSingle.scala 230:19:@847.6 riscvSingle.scala 279:19:@939.8 riscvSingle.scala 289:19:@952.10 riscvSingle.scala 324:19:@1014.12 riscvSingle.scala 334:19:@1027.14 riscvSingle.scala 344:19:@1040.16 riscvSingle.scala 370:19:@1096.18 riscvSingle.scala 380:19:@1109.20 riscvSingle.scala 390:19:@1122.22 riscvSingle.scala 400:19:@1133.22]
  assign io_pcSrc = _T_37 ? 1'h0 : _T_93; // @[riscvSingle.scala 231:18:@848.6 riscvSingle.scala 280:18:@940.8 riscvSingle.scala 290:18:@953.10 riscvSingle.scala 325:18:@1015.12 riscvSingle.scala 335:18:@1028.14 riscvSingle.scala 345:18:@1041.16 riscvSingle.scala 371:18:@1097.18 riscvSingle.scala 381:18:@1110.20 riscvSingle.scala 391:18:@1123.22 riscvSingle.scala 401:18:@1134.22]
  assign io_aluControl = _T_37 ? _GEN_14 : _GEN_81; // @[riscvSingle.scala 239:31:@857.10 riscvSingle.scala 241:31:@862.12 riscvSingle.scala 243:31:@867.14 riscvSingle.scala 245:31:@872.16 riscvSingle.scala 247:31:@877.18 riscvSingle.scala 249:31:@882.20 riscvSingle.scala 251:31:@887.22 riscvSingle.scala 253:31:@892.24 riscvSingle.scala 255:31:@895.24 riscvSingle.scala 259:31:@903.12 riscvSingle.scala 261:31:@908.14 riscvSingle.scala 263:31:@911.14 riscvSingle.scala 267:31:@919.14 riscvSingle.scala 269:31:@924.16 riscvSingle.scala 271:31:@927.16 riscvSingle.scala 274:27:@931.12 riscvSingle.scala 285:23:@945.8 riscvSingle.scala 298:31:@963.14 riscvSingle.scala 300:31:@966.14 riscvSingle.scala 304:31:@972.14 riscvSingle.scala 306:31:@977.16 riscvSingle.scala 308:31:@982.18 riscvSingle.scala 310:31:@987.20 riscvSingle.scala 312:31:@992.22 riscvSingle.scala 314:31:@997.24 riscvSingle.scala 316:31:@1002.26 riscvSingle.scala 318:31:@1005.26 riscvSingle.scala 330:23:@1020.12 riscvSingle.scala 340:23:@1033.14 riscvSingle.scala 349:23:@1045.16 riscvSingle.scala 376:23:@1102.18 riscvSingle.scala 386:23:@1115.20 riscvSingle.scala 396:23:@1128.22 riscvSingle.scala 406:23:@1139.22]
  assign io_memWriteEnable = _T_37 ? 1'h0 : _GEN_79; // @[riscvSingle.scala 234:27:@851.6 riscvSingle.scala 283:27:@943.8 riscvSingle.scala 293:27:@956.10 riscvSingle.scala 328:27:@1018.12 riscvSingle.scala 338:27:@1031.14 riscvSingle.scala 348:27:@1044.16 riscvSingle.scala 374:27:@1100.18 riscvSingle.scala 384:27:@1113.20 riscvSingle.scala 394:27:@1126.22 riscvSingle.scala 404:27:@1137.22]
  assign io_memToReg = _T_37 ? 1'h0 : _GEN_77; // @[riscvSingle.scala 232:21:@849.6 riscvSingle.scala 281:21:@941.8 riscvSingle.scala 291:21:@954.10 riscvSingle.scala 326:21:@1016.12 riscvSingle.scala 336:21:@1029.14 riscvSingle.scala 346:21:@1042.16 riscvSingle.scala 372:21:@1098.18 riscvSingle.scala 382:21:@1111.20 riscvSingle.scala 392:21:@1124.22 riscvSingle.scala 402:21:@1135.22]
  assign io_branchSrc = _T_37 ? 2'h0 : _GEN_80; // @[riscvSingle.scala 235:22:@852.6 riscvSingle.scala 284:22:@944.8 riscvSingle.scala 294:22:@957.10 riscvSingle.scala 329:22:@1019.12 riscvSingle.scala 339:22:@1032.14 riscvSingle.scala 352:26:@1050.18 riscvSingle.scala 354:26:@1057.20 riscvSingle.scala 356:26:@1064.22 riscvSingle.scala 358:26:@1071.24 riscvSingle.scala 360:26:@1078.26 riscvSingle.scala 362:26:@1085.28 riscvSingle.scala 364:26:@1088.28 riscvSingle.scala 375:22:@1101.18 riscvSingle.scala 385:22:@1114.20 riscvSingle.scala 395:22:@1127.22 riscvSingle.scala 405:22:@1138.22]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_255) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|decoder Module:\n|  branchSrc          : b%b\n|  opcode             : b%b\n|  funct3             : b%b\n|  regSrc             : b%b\n|  immSrc             : b%b\n|  aluSrc             : b%b\n|  pcSrc              : b%b\n|  regWriteEnable     : b%b\n|  aluControl         : b%b\n|  memToReg           : b%b\n|  memWriteEnable     : b%b\n|  zeroFlag           : b%b\n|  lessThanFlag       : b%b\n|  greaterThanFlag    : b%b\n|___________________________\n",io_branchSrc,io_opcode,io_funct3,decoderMessage_regSrc,io_immSrc,io_aluSrc,io_pcSrc,io_regWriteEnable,io_aluControl,io_memToReg,io_memWriteEnable,io_zeroFlag,io_lessThanFlag,io_greaterThanFlag); // @[riscvSingle.scala 424:11:@1158.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module riscv( // @[:@1161.2]
  input         clock, // @[:@1162.4]
  input         reset, // @[:@1163.4]
  input  [31:0] io_instr, // @[:@1164.4]
  input  [31:0] io_memReadData, // @[:@1164.4]
  output [31:0] io_pc, // @[:@1164.4]
  output        io_memWriteEnable, // @[:@1164.4]
  output [31:0] io_memAddress, // @[:@1164.4]
  output [31:0] io_memWriteData // @[:@1164.4]
);
  wire  dp_clock; // @[riscvSingle.scala 90:20:@1167.4]
  wire  dp_reset; // @[riscvSingle.scala 90:20:@1167.4]
  wire [2:0] dp_io_regSrc; // @[riscvSingle.scala 90:20:@1167.4]
  wire  dp_io_regWriteEnable; // @[riscvSingle.scala 90:20:@1167.4]
  wire [1:0] dp_io_immSrc; // @[riscvSingle.scala 90:20:@1167.4]
  wire  dp_io_aluSrc; // @[riscvSingle.scala 90:20:@1167.4]
  wire  dp_io_pcSrc; // @[riscvSingle.scala 90:20:@1167.4]
  wire [3:0] dp_io_aluControl; // @[riscvSingle.scala 90:20:@1167.4]
  wire  dp_io_memToReg; // @[riscvSingle.scala 90:20:@1167.4]
  wire [31:0] dp_io_instr; // @[riscvSingle.scala 90:20:@1167.4]
  wire [31:0] dp_io_memReadData; // @[riscvSingle.scala 90:20:@1167.4]
  wire [1:0] dp_io_branchSrc; // @[riscvSingle.scala 90:20:@1167.4]
  wire [31:0] dp_io_pc; // @[riscvSingle.scala 90:20:@1167.4]
  wire [31:0] dp_io_memAddress; // @[riscvSingle.scala 90:20:@1167.4]
  wire [31:0] dp_io_memWriteData; // @[riscvSingle.scala 90:20:@1167.4]
  wire  dp_io_zeroFlag; // @[riscvSingle.scala 90:20:@1167.4]
  wire  dp_io_lessThanFlag; // @[riscvSingle.scala 90:20:@1167.4]
  wire  dp_io_greaterThanFlag; // @[riscvSingle.scala 90:20:@1167.4]
  wire  d_clock; // @[riscvSingle.scala 91:19:@1170.4]
  wire  d_reset; // @[riscvSingle.scala 91:19:@1170.4]
  wire [6:0] d_io_opcode; // @[riscvSingle.scala 91:19:@1170.4]
  wire [6:0] d_io_funct7; // @[riscvSingle.scala 91:19:@1170.4]
  wire [2:0] d_io_funct3; // @[riscvSingle.scala 91:19:@1170.4]
  wire [2:0] d_io_regSrc; // @[riscvSingle.scala 91:19:@1170.4]
  wire  d_io_regWriteEnable; // @[riscvSingle.scala 91:19:@1170.4]
  wire [1:0] d_io_immSrc; // @[riscvSingle.scala 91:19:@1170.4]
  wire  d_io_aluSrc; // @[riscvSingle.scala 91:19:@1170.4]
  wire  d_io_pcSrc; // @[riscvSingle.scala 91:19:@1170.4]
  wire [3:0] d_io_aluControl; // @[riscvSingle.scala 91:19:@1170.4]
  wire  d_io_memWriteEnable; // @[riscvSingle.scala 91:19:@1170.4]
  wire  d_io_memToReg; // @[riscvSingle.scala 91:19:@1170.4]
  wire [1:0] d_io_branchSrc; // @[riscvSingle.scala 91:19:@1170.4]
  wire  d_io_zeroFlag; // @[riscvSingle.scala 91:19:@1170.4]
  wire  d_io_lessThanFlag; // @[riscvSingle.scala 91:19:@1170.4]
  wire  d_io_greaterThanFlag; // @[riscvSingle.scala 91:19:@1170.4]
  wire  _T_20; // @[riscvSingle.scala 100:11:@1179.4]
  datapath dp ( // @[riscvSingle.scala 90:20:@1167.4]
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
  decoder d ( // @[riscvSingle.scala 91:19:@1170.4]
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
  assign _T_20 = reset == 1'h0; // @[riscvSingle.scala 100:11:@1179.4]
  assign io_pc = dp_io_pc; // @[riscvSingle.scala 120:11:@1202.4]
  assign io_memWriteEnable = d_io_memWriteEnable; // @[riscvSingle.scala 121:23:@1203.4]
  assign io_memAddress = dp_io_memAddress; // @[riscvSingle.scala 122:19:@1204.4]
  assign io_memWriteData = dp_io_memWriteData; // @[riscvSingle.scala 123:21:@1205.4]
  assign dp_clock = clock; // @[:@1168.4]
  assign dp_reset = reset; // @[:@1169.4]
  assign dp_io_regSrc = d_io_regSrc; // @[riscvSingle.scala 109:18:@1192.4]
  assign dp_io_regWriteEnable = d_io_regWriteEnable; // @[riscvSingle.scala 110:26:@1193.4]
  assign dp_io_immSrc = d_io_immSrc; // @[riscvSingle.scala 111:18:@1194.4]
  assign dp_io_aluSrc = d_io_aluSrc; // @[riscvSingle.scala 112:18:@1195.4]
  assign dp_io_pcSrc = d_io_pcSrc; // @[riscvSingle.scala 113:17:@1196.4]
  assign dp_io_aluControl = d_io_aluControl; // @[riscvSingle.scala 114:22:@1197.4]
  assign dp_io_memToReg = d_io_memToReg; // @[riscvSingle.scala 115:20:@1198.4]
  assign dp_io_instr = io_instr; // @[riscvSingle.scala 116:17:@1199.4]
  assign dp_io_memReadData = io_memReadData; // @[riscvSingle.scala 117:23:@1200.4]
  assign dp_io_branchSrc = d_io_branchSrc; // @[riscvSingle.scala 118:21:@1201.4]
  assign d_clock = clock; // @[:@1171.4]
  assign d_reset = reset; // @[:@1172.4]
  assign d_io_opcode = io_instr[6:0]; // @[riscvSingle.scala 102:17:@1184.4]
  assign d_io_funct7 = io_instr[31:25]; // @[riscvSingle.scala 103:17:@1186.4]
  assign d_io_funct3 = io_instr[14:12]; // @[riscvSingle.scala 104:17:@1188.4]
  assign d_io_zeroFlag = dp_io_zeroFlag; // @[riscvSingle.scala 105:19:@1189.4]
  assign d_io_lessThanFlag = dp_io_lessThanFlag; // @[riscvSingle.scala 106:23:@1190.4]
  assign d_io_greaterThanFlag = dp_io_greaterThanFlag; // @[riscvSingle.scala 107:26:@1191.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_20) begin
          $fwrite(32'h80000002,"___________________________\n|riscv Module:\n|  instr          : 0x%x\n|  memWriteEnable : b%b\n|  memWriteData   : b%b\n|  memAddress     : b%b\n|  memReadData    : 0x%x\n|___________________________\n",io_instr,io_memWriteEnable,io_memWriteData,io_memAddress,io_memReadData); // @[riscvSingle.scala 100:11:@1181.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module imem( // @[:@1207.2]
  input         clock, // @[:@1208.4]
  input  [31:0] io_instAddress, // @[:@1210.4]
  output [31:0] io_inst // @[:@1210.4]
);
  reg [31:0] MEM [0:1023]; // @[riscvSingle.scala 745:18:@1212.4]
  reg [31:0] _RAND_0;
  wire [31:0] MEM__T_12_data; // @[riscvSingle.scala 745:18:@1212.4]
  wire [9:0] MEM__T_12_addr; // @[riscvSingle.scala 745:18:@1212.4]
  assign MEM__T_12_addr = io_instAddress[9:0];
  assign MEM__T_12_data = MEM[MEM__T_12_addr]; // @[riscvSingle.scala 745:18:@1212.4]
  assign io_inst = MEM__T_12_data; // @[riscvSingle.scala 748:13:@1215.4]
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
module dmem( // @[:@1217.2]
  input         clock, // @[:@1218.4]
  input         reset, // @[:@1219.4]
  input  [31:0] io_memAddress, // @[:@1220.4]
  input  [31:0] io_memWriteData, // @[:@1220.4]
  input         io_memWriteEnable, // @[:@1220.4]
  output [31:0] io_memReadData // @[:@1220.4]
);
  reg [31:0] mem [0:1023]; // @[riscvSingle.scala 776:26:@1223.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_22_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_22_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_29_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_29_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_39_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_39_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_49_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_49_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_59_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_59_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_69_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_69_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_79_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_79_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_89_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_89_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_99_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_99_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_109_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_109_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_119_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_119_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_129_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_129_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_139_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_139_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_149_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_149_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_159_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_159_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_169_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_169_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_179_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_179_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_189_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_189_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_199_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_199_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_209_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_209_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_219_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_219_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_229_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_229_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_239_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_239_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_249_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_249_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_259_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_259_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_269_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_269_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_279_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_279_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_289_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_289_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_299_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_299_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_309_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_309_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_319_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_319_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_329_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_329_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_339_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_339_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire [31:0] mem__T_20_data; // @[riscvSingle.scala 776:26:@1223.4]
  wire [9:0] mem__T_20_addr; // @[riscvSingle.scala 776:26:@1223.4]
  wire  mem__T_20_mask; // @[riscvSingle.scala 776:26:@1223.4]
  wire  mem__T_20_en; // @[riscvSingle.scala 776:26:@1223.4]
  wire  _T_16; // @[riscvSingle.scala 778:28:@1224.4]
  wire [9:0] _T_19; // @[:@1227.6]
  wire  _GEN_3; // @[riscvSingle.scala 778:33:@1226.4]
  wire  _T_25; // @[riscvSingle.scala 784:11:@1235.4]
  wire [31:0] dmemMessage_memWriteEnable; // @[riscvSingle.scala 775:27:@1222.4 riscvSingle.scala 795:32:@1662.4]
  wire [31:0] _T_27; // @[riscvSingle.scala 786:26:@1239.4 riscvSingle.scala 787:16:@1241.4]
  wire [31:0] _T_37; // @[riscvSingle.scala 786:26:@1252.4 riscvSingle.scala 787:16:@1254.4]
  wire [31:0] _T_47; // @[riscvSingle.scala 786:26:@1265.4 riscvSingle.scala 787:16:@1267.4]
  wire [31:0] _T_57; // @[riscvSingle.scala 786:26:@1278.4 riscvSingle.scala 787:16:@1280.4]
  wire [31:0] _T_67; // @[riscvSingle.scala 786:26:@1291.4 riscvSingle.scala 787:16:@1293.4]
  wire [31:0] _T_77; // @[riscvSingle.scala 786:26:@1304.4 riscvSingle.scala 787:16:@1306.4]
  wire [31:0] _T_87; // @[riscvSingle.scala 786:26:@1317.4 riscvSingle.scala 787:16:@1319.4]
  wire [31:0] _T_97; // @[riscvSingle.scala 786:26:@1330.4 riscvSingle.scala 787:16:@1332.4]
  wire [31:0] _T_107; // @[riscvSingle.scala 786:26:@1343.4 riscvSingle.scala 787:16:@1345.4]
  wire [31:0] _T_117; // @[riscvSingle.scala 786:26:@1356.4 riscvSingle.scala 787:16:@1358.4]
  wire [31:0] _T_127; // @[riscvSingle.scala 786:26:@1369.4 riscvSingle.scala 787:16:@1371.4]
  wire [31:0] _T_137; // @[riscvSingle.scala 786:26:@1382.4 riscvSingle.scala 787:16:@1384.4]
  wire [31:0] _T_147; // @[riscvSingle.scala 786:26:@1395.4 riscvSingle.scala 787:16:@1397.4]
  wire [31:0] _T_157; // @[riscvSingle.scala 786:26:@1408.4 riscvSingle.scala 787:16:@1410.4]
  wire [31:0] _T_167; // @[riscvSingle.scala 786:26:@1421.4 riscvSingle.scala 787:16:@1423.4]
  wire [31:0] _T_177; // @[riscvSingle.scala 786:26:@1434.4 riscvSingle.scala 787:16:@1436.4]
  wire [31:0] _T_187; // @[riscvSingle.scala 786:26:@1447.4 riscvSingle.scala 787:16:@1449.4]
  wire [31:0] _T_197; // @[riscvSingle.scala 786:26:@1460.4 riscvSingle.scala 787:16:@1462.4]
  wire [31:0] _T_207; // @[riscvSingle.scala 786:26:@1473.4 riscvSingle.scala 787:16:@1475.4]
  wire [31:0] _T_217; // @[riscvSingle.scala 786:26:@1486.4 riscvSingle.scala 787:16:@1488.4]
  wire [31:0] _T_227; // @[riscvSingle.scala 786:26:@1499.4 riscvSingle.scala 787:16:@1501.4]
  wire [31:0] _T_237; // @[riscvSingle.scala 786:26:@1512.4 riscvSingle.scala 787:16:@1514.4]
  wire [31:0] _T_247; // @[riscvSingle.scala 786:26:@1525.4 riscvSingle.scala 787:16:@1527.4]
  wire [31:0] _T_257; // @[riscvSingle.scala 786:26:@1538.4 riscvSingle.scala 787:16:@1540.4]
  wire [31:0] _T_267; // @[riscvSingle.scala 786:26:@1551.4 riscvSingle.scala 787:16:@1553.4]
  wire [31:0] _T_277; // @[riscvSingle.scala 786:26:@1564.4 riscvSingle.scala 787:16:@1566.4]
  wire [31:0] _T_287; // @[riscvSingle.scala 786:26:@1577.4 riscvSingle.scala 787:16:@1579.4]
  wire [31:0] _T_297; // @[riscvSingle.scala 786:26:@1590.4 riscvSingle.scala 787:16:@1592.4]
  wire [31:0] _T_307; // @[riscvSingle.scala 786:26:@1603.4 riscvSingle.scala 787:16:@1605.4]
  wire [31:0] _T_317; // @[riscvSingle.scala 786:26:@1616.4 riscvSingle.scala 787:16:@1618.4]
  wire [31:0] _T_327; // @[riscvSingle.scala 786:26:@1629.4 riscvSingle.scala 787:16:@1631.4]
  wire [31:0] _T_337; // @[riscvSingle.scala 786:26:@1642.4 riscvSingle.scala 787:16:@1644.4]
  reg [9:0] mem__T_22_addr_pipe_0;
  reg [31:0] _RAND_1;
  reg [9:0] mem__T_29_addr_pipe_0;
  reg [31:0] _RAND_2;
  reg [9:0] mem__T_39_addr_pipe_0;
  reg [31:0] _RAND_3;
  reg [9:0] mem__T_49_addr_pipe_0;
  reg [31:0] _RAND_4;
  reg [9:0] mem__T_59_addr_pipe_0;
  reg [31:0] _RAND_5;
  reg [9:0] mem__T_69_addr_pipe_0;
  reg [31:0] _RAND_6;
  reg [9:0] mem__T_79_addr_pipe_0;
  reg [31:0] _RAND_7;
  reg [9:0] mem__T_89_addr_pipe_0;
  reg [31:0] _RAND_8;
  reg [9:0] mem__T_99_addr_pipe_0;
  reg [31:0] _RAND_9;
  reg [9:0] mem__T_109_addr_pipe_0;
  reg [31:0] _RAND_10;
  reg [9:0] mem__T_119_addr_pipe_0;
  reg [31:0] _RAND_11;
  reg [9:0] mem__T_129_addr_pipe_0;
  reg [31:0] _RAND_12;
  reg [9:0] mem__T_139_addr_pipe_0;
  reg [31:0] _RAND_13;
  reg [9:0] mem__T_149_addr_pipe_0;
  reg [31:0] _RAND_14;
  reg [9:0] mem__T_159_addr_pipe_0;
  reg [31:0] _RAND_15;
  reg [9:0] mem__T_169_addr_pipe_0;
  reg [31:0] _RAND_16;
  reg [9:0] mem__T_179_addr_pipe_0;
  reg [31:0] _RAND_17;
  reg [9:0] mem__T_189_addr_pipe_0;
  reg [31:0] _RAND_18;
  reg [9:0] mem__T_199_addr_pipe_0;
  reg [31:0] _RAND_19;
  reg [9:0] mem__T_209_addr_pipe_0;
  reg [31:0] _RAND_20;
  reg [9:0] mem__T_219_addr_pipe_0;
  reg [31:0] _RAND_21;
  reg [9:0] mem__T_229_addr_pipe_0;
  reg [31:0] _RAND_22;
  reg [9:0] mem__T_239_addr_pipe_0;
  reg [31:0] _RAND_23;
  reg [9:0] mem__T_249_addr_pipe_0;
  reg [31:0] _RAND_24;
  reg [9:0] mem__T_259_addr_pipe_0;
  reg [31:0] _RAND_25;
  reg [9:0] mem__T_269_addr_pipe_0;
  reg [31:0] _RAND_26;
  reg [9:0] mem__T_279_addr_pipe_0;
  reg [31:0] _RAND_27;
  reg [9:0] mem__T_289_addr_pipe_0;
  reg [31:0] _RAND_28;
  reg [9:0] mem__T_299_addr_pipe_0;
  reg [31:0] _RAND_29;
  reg [9:0] mem__T_309_addr_pipe_0;
  reg [31:0] _RAND_30;
  reg [9:0] mem__T_319_addr_pipe_0;
  reg [31:0] _RAND_31;
  reg [9:0] mem__T_329_addr_pipe_0;
  reg [31:0] _RAND_32;
  reg [9:0] mem__T_339_addr_pipe_0;
  reg [31:0] _RAND_33;
  assign mem__T_22_addr = mem__T_22_addr_pipe_0;
  assign mem__T_22_data = mem[mem__T_22_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_29_addr = mem__T_29_addr_pipe_0;
  assign mem__T_29_data = mem[mem__T_29_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_39_addr = mem__T_39_addr_pipe_0;
  assign mem__T_39_data = mem[mem__T_39_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_49_addr = mem__T_49_addr_pipe_0;
  assign mem__T_49_data = mem[mem__T_49_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_59_addr = mem__T_59_addr_pipe_0;
  assign mem__T_59_data = mem[mem__T_59_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_69_addr = mem__T_69_addr_pipe_0;
  assign mem__T_69_data = mem[mem__T_69_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_79_addr = mem__T_79_addr_pipe_0;
  assign mem__T_79_data = mem[mem__T_79_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_89_addr = mem__T_89_addr_pipe_0;
  assign mem__T_89_data = mem[mem__T_89_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_99_addr = mem__T_99_addr_pipe_0;
  assign mem__T_99_data = mem[mem__T_99_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_109_addr = mem__T_109_addr_pipe_0;
  assign mem__T_109_data = mem[mem__T_109_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_119_addr = mem__T_119_addr_pipe_0;
  assign mem__T_119_data = mem[mem__T_119_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_129_addr = mem__T_129_addr_pipe_0;
  assign mem__T_129_data = mem[mem__T_129_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_139_addr = mem__T_139_addr_pipe_0;
  assign mem__T_139_data = mem[mem__T_139_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_149_addr = mem__T_149_addr_pipe_0;
  assign mem__T_149_data = mem[mem__T_149_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_159_addr = mem__T_159_addr_pipe_0;
  assign mem__T_159_data = mem[mem__T_159_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_169_addr = mem__T_169_addr_pipe_0;
  assign mem__T_169_data = mem[mem__T_169_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_179_addr = mem__T_179_addr_pipe_0;
  assign mem__T_179_data = mem[mem__T_179_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_189_addr = mem__T_189_addr_pipe_0;
  assign mem__T_189_data = mem[mem__T_189_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_199_addr = mem__T_199_addr_pipe_0;
  assign mem__T_199_data = mem[mem__T_199_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_209_addr = mem__T_209_addr_pipe_0;
  assign mem__T_209_data = mem[mem__T_209_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_219_addr = mem__T_219_addr_pipe_0;
  assign mem__T_219_data = mem[mem__T_219_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_229_addr = mem__T_229_addr_pipe_0;
  assign mem__T_229_data = mem[mem__T_229_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_239_addr = mem__T_239_addr_pipe_0;
  assign mem__T_239_data = mem[mem__T_239_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_249_addr = mem__T_249_addr_pipe_0;
  assign mem__T_249_data = mem[mem__T_249_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_259_addr = mem__T_259_addr_pipe_0;
  assign mem__T_259_data = mem[mem__T_259_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_269_addr = mem__T_269_addr_pipe_0;
  assign mem__T_269_data = mem[mem__T_269_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_279_addr = mem__T_279_addr_pipe_0;
  assign mem__T_279_data = mem[mem__T_279_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_289_addr = mem__T_289_addr_pipe_0;
  assign mem__T_289_data = mem[mem__T_289_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_299_addr = mem__T_299_addr_pipe_0;
  assign mem__T_299_data = mem[mem__T_299_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_309_addr = mem__T_309_addr_pipe_0;
  assign mem__T_309_data = mem[mem__T_309_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_319_addr = mem__T_319_addr_pipe_0;
  assign mem__T_319_data = mem[mem__T_319_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_329_addr = mem__T_329_addr_pipe_0;
  assign mem__T_329_data = mem[mem__T_329_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_339_addr = mem__T_339_addr_pipe_0;
  assign mem__T_339_data = mem[mem__T_339_addr]; // @[riscvSingle.scala 776:26:@1223.4]
  assign mem__T_20_data = io_memWriteData;
  assign mem__T_20_addr = io_memAddress[9:0];
  assign mem__T_20_mask = 1'h1;
  assign mem__T_20_en = _T_16 == 1'h0;
  assign _T_16 = ~ io_memWriteEnable; // @[riscvSingle.scala 778:28:@1224.4]
  assign _T_19 = io_memAddress[9:0]; // @[:@1227.6]
  assign _GEN_3 = 1'h1; // @[riscvSingle.scala 778:33:@1226.4]
  assign _T_25 = reset == 1'h0; // @[riscvSingle.scala 784:11:@1235.4]
  assign dmemMessage_memWriteEnable = {{31'd0}, io_memWriteEnable}; // @[riscvSingle.scala 775:27:@1222.4 riscvSingle.scala 795:32:@1662.4]
  assign _T_27 = mem__T_29_data; // @[riscvSingle.scala 786:26:@1239.4 riscvSingle.scala 787:16:@1241.4]
  assign _T_37 = mem__T_39_data; // @[riscvSingle.scala 786:26:@1252.4 riscvSingle.scala 787:16:@1254.4]
  assign _T_47 = mem__T_49_data; // @[riscvSingle.scala 786:26:@1265.4 riscvSingle.scala 787:16:@1267.4]
  assign _T_57 = mem__T_59_data; // @[riscvSingle.scala 786:26:@1278.4 riscvSingle.scala 787:16:@1280.4]
  assign _T_67 = mem__T_69_data; // @[riscvSingle.scala 786:26:@1291.4 riscvSingle.scala 787:16:@1293.4]
  assign _T_77 = mem__T_79_data; // @[riscvSingle.scala 786:26:@1304.4 riscvSingle.scala 787:16:@1306.4]
  assign _T_87 = mem__T_89_data; // @[riscvSingle.scala 786:26:@1317.4 riscvSingle.scala 787:16:@1319.4]
  assign _T_97 = mem__T_99_data; // @[riscvSingle.scala 786:26:@1330.4 riscvSingle.scala 787:16:@1332.4]
  assign _T_107 = mem__T_109_data; // @[riscvSingle.scala 786:26:@1343.4 riscvSingle.scala 787:16:@1345.4]
  assign _T_117 = mem__T_119_data; // @[riscvSingle.scala 786:26:@1356.4 riscvSingle.scala 787:16:@1358.4]
  assign _T_127 = mem__T_129_data; // @[riscvSingle.scala 786:26:@1369.4 riscvSingle.scala 787:16:@1371.4]
  assign _T_137 = mem__T_139_data; // @[riscvSingle.scala 786:26:@1382.4 riscvSingle.scala 787:16:@1384.4]
  assign _T_147 = mem__T_149_data; // @[riscvSingle.scala 786:26:@1395.4 riscvSingle.scala 787:16:@1397.4]
  assign _T_157 = mem__T_159_data; // @[riscvSingle.scala 786:26:@1408.4 riscvSingle.scala 787:16:@1410.4]
  assign _T_167 = mem__T_169_data; // @[riscvSingle.scala 786:26:@1421.4 riscvSingle.scala 787:16:@1423.4]
  assign _T_177 = mem__T_179_data; // @[riscvSingle.scala 786:26:@1434.4 riscvSingle.scala 787:16:@1436.4]
  assign _T_187 = mem__T_189_data; // @[riscvSingle.scala 786:26:@1447.4 riscvSingle.scala 787:16:@1449.4]
  assign _T_197 = mem__T_199_data; // @[riscvSingle.scala 786:26:@1460.4 riscvSingle.scala 787:16:@1462.4]
  assign _T_207 = mem__T_209_data; // @[riscvSingle.scala 786:26:@1473.4 riscvSingle.scala 787:16:@1475.4]
  assign _T_217 = mem__T_219_data; // @[riscvSingle.scala 786:26:@1486.4 riscvSingle.scala 787:16:@1488.4]
  assign _T_227 = mem__T_229_data; // @[riscvSingle.scala 786:26:@1499.4 riscvSingle.scala 787:16:@1501.4]
  assign _T_237 = mem__T_239_data; // @[riscvSingle.scala 786:26:@1512.4 riscvSingle.scala 787:16:@1514.4]
  assign _T_247 = mem__T_249_data; // @[riscvSingle.scala 786:26:@1525.4 riscvSingle.scala 787:16:@1527.4]
  assign _T_257 = mem__T_259_data; // @[riscvSingle.scala 786:26:@1538.4 riscvSingle.scala 787:16:@1540.4]
  assign _T_267 = mem__T_269_data; // @[riscvSingle.scala 786:26:@1551.4 riscvSingle.scala 787:16:@1553.4]
  assign _T_277 = mem__T_279_data; // @[riscvSingle.scala 786:26:@1564.4 riscvSingle.scala 787:16:@1566.4]
  assign _T_287 = mem__T_289_data; // @[riscvSingle.scala 786:26:@1577.4 riscvSingle.scala 787:16:@1579.4]
  assign _T_297 = mem__T_299_data; // @[riscvSingle.scala 786:26:@1590.4 riscvSingle.scala 787:16:@1592.4]
  assign _T_307 = mem__T_309_data; // @[riscvSingle.scala 786:26:@1603.4 riscvSingle.scala 787:16:@1605.4]
  assign _T_317 = mem__T_319_data; // @[riscvSingle.scala 786:26:@1616.4 riscvSingle.scala 787:16:@1618.4]
  assign _T_327 = mem__T_329_data; // @[riscvSingle.scala 786:26:@1629.4 riscvSingle.scala 787:16:@1631.4]
  assign _T_337 = mem__T_339_data; // @[riscvSingle.scala 786:26:@1642.4 riscvSingle.scala 787:16:@1644.4]
  assign io_memReadData = mem__T_22_data; // @[riscvSingle.scala 782:20:@1233.4]
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
  mem__T_29_addr_pipe_0 = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  mem__T_39_addr_pipe_0 = _RAND_3[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  mem__T_49_addr_pipe_0 = _RAND_4[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  mem__T_59_addr_pipe_0 = _RAND_5[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  mem__T_69_addr_pipe_0 = _RAND_6[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  mem__T_79_addr_pipe_0 = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  mem__T_89_addr_pipe_0 = _RAND_8[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  mem__T_99_addr_pipe_0 = _RAND_9[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  mem__T_109_addr_pipe_0 = _RAND_10[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  mem__T_119_addr_pipe_0 = _RAND_11[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  mem__T_129_addr_pipe_0 = _RAND_12[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  mem__T_139_addr_pipe_0 = _RAND_13[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  mem__T_149_addr_pipe_0 = _RAND_14[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  mem__T_159_addr_pipe_0 = _RAND_15[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  mem__T_169_addr_pipe_0 = _RAND_16[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  mem__T_179_addr_pipe_0 = _RAND_17[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  mem__T_189_addr_pipe_0 = _RAND_18[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  mem__T_199_addr_pipe_0 = _RAND_19[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  mem__T_209_addr_pipe_0 = _RAND_20[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  mem__T_219_addr_pipe_0 = _RAND_21[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  mem__T_229_addr_pipe_0 = _RAND_22[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  mem__T_239_addr_pipe_0 = _RAND_23[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  mem__T_249_addr_pipe_0 = _RAND_24[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  mem__T_259_addr_pipe_0 = _RAND_25[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mem__T_269_addr_pipe_0 = _RAND_26[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  mem__T_279_addr_pipe_0 = _RAND_27[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  mem__T_289_addr_pipe_0 = _RAND_28[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  mem__T_299_addr_pipe_0 = _RAND_29[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  mem__T_309_addr_pipe_0 = _RAND_30[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  mem__T_319_addr_pipe_0 = _RAND_31[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  mem__T_329_addr_pipe_0 = _RAND_32[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  mem__T_339_addr_pipe_0 = _RAND_33[9:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_20_en & mem__T_20_mask) begin
      mem[mem__T_20_addr] <= mem__T_20_data; // @[riscvSingle.scala 776:26:@1223.4]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"\n\n\nMemory___________________________\n"); // @[riscvSingle.scala 784:11:@1237.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(0) = "); // @[riscvSingle.scala 788:15:@1245.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_27); // @[riscvSingle.scala 789:15:@1250.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(1) = "); // @[riscvSingle.scala 788:15:@1258.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_37); // @[riscvSingle.scala 789:15:@1263.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(2) = "); // @[riscvSingle.scala 788:15:@1271.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_47); // @[riscvSingle.scala 789:15:@1276.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(3) = "); // @[riscvSingle.scala 788:15:@1284.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_57); // @[riscvSingle.scala 789:15:@1289.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(4) = "); // @[riscvSingle.scala 788:15:@1297.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_67); // @[riscvSingle.scala 789:15:@1302.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(5) = "); // @[riscvSingle.scala 788:15:@1310.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_77); // @[riscvSingle.scala 789:15:@1315.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(6) = "); // @[riscvSingle.scala 788:15:@1323.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_87); // @[riscvSingle.scala 789:15:@1328.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(7) = "); // @[riscvSingle.scala 788:15:@1336.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_97); // @[riscvSingle.scala 789:15:@1341.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(8) = "); // @[riscvSingle.scala 788:15:@1349.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_107); // @[riscvSingle.scala 789:15:@1354.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(9) = "); // @[riscvSingle.scala 788:15:@1362.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_117); // @[riscvSingle.scala 789:15:@1367.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(10) = "); // @[riscvSingle.scala 788:15:@1375.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_127); // @[riscvSingle.scala 789:15:@1380.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(11) = "); // @[riscvSingle.scala 788:15:@1388.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_137); // @[riscvSingle.scala 789:15:@1393.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(12) = "); // @[riscvSingle.scala 788:15:@1401.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_147); // @[riscvSingle.scala 789:15:@1406.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(13) = "); // @[riscvSingle.scala 788:15:@1414.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_157); // @[riscvSingle.scala 789:15:@1419.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(14) = "); // @[riscvSingle.scala 788:15:@1427.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_167); // @[riscvSingle.scala 789:15:@1432.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(15) = "); // @[riscvSingle.scala 788:15:@1440.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_177); // @[riscvSingle.scala 789:15:@1445.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(16) = "); // @[riscvSingle.scala 788:15:@1453.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_187); // @[riscvSingle.scala 789:15:@1458.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(17) = "); // @[riscvSingle.scala 788:15:@1466.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_197); // @[riscvSingle.scala 789:15:@1471.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(18) = "); // @[riscvSingle.scala 788:15:@1479.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_207); // @[riscvSingle.scala 789:15:@1484.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(19) = "); // @[riscvSingle.scala 788:15:@1492.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_217); // @[riscvSingle.scala 789:15:@1497.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(20) = "); // @[riscvSingle.scala 788:15:@1505.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_227); // @[riscvSingle.scala 789:15:@1510.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(21) = "); // @[riscvSingle.scala 788:15:@1518.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_237); // @[riscvSingle.scala 789:15:@1523.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(22) = "); // @[riscvSingle.scala 788:15:@1531.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_247); // @[riscvSingle.scala 789:15:@1536.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(23) = "); // @[riscvSingle.scala 788:15:@1544.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_257); // @[riscvSingle.scala 789:15:@1549.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(24) = "); // @[riscvSingle.scala 788:15:@1557.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_267); // @[riscvSingle.scala 789:15:@1562.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(25) = "); // @[riscvSingle.scala 788:15:@1570.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_277); // @[riscvSingle.scala 789:15:@1575.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(26) = "); // @[riscvSingle.scala 788:15:@1583.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_287); // @[riscvSingle.scala 789:15:@1588.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(27) = "); // @[riscvSingle.scala 788:15:@1596.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_297); // @[riscvSingle.scala 789:15:@1601.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(28) = "); // @[riscvSingle.scala 788:15:@1609.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_307); // @[riscvSingle.scala 789:15:@1614.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(29) = "); // @[riscvSingle.scala 788:15:@1622.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_317); // @[riscvSingle.scala 789:15:@1627.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(30) = "); // @[riscvSingle.scala 788:15:@1635.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_327); // @[riscvSingle.scala 789:15:@1640.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"| mem(31) = "); // @[riscvSingle.scala 788:15:@1648.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"%d\n",_T_337); // @[riscvSingle.scala 789:15:@1653.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"|________________________________\n"); // @[riscvSingle.scala 791:11:@1658.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|dmem Module:\n|  memAddress      : 0x%x\n|  memWriteData    : 0x%x\n|  memWriteEnable  : b%b\n|  memReadData     : 0x%x\n|___________________________\n",io_memAddress,io_memWriteData,dmemMessage_memWriteEnable,io_memReadData); // @[riscvSingle.scala 797:11:@1667.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    if (_GEN_3) begin
      mem__T_22_addr_pipe_0 <= _T_19;
    end
    if (_GEN_3) begin
      mem__T_29_addr_pipe_0 <= 10'h0;
    end
    if (_GEN_3) begin
      mem__T_39_addr_pipe_0 <= 10'h1;
    end
    if (_GEN_3) begin
      mem__T_49_addr_pipe_0 <= 10'h2;
    end
    if (_GEN_3) begin
      mem__T_59_addr_pipe_0 <= 10'h3;
    end
    if (_GEN_3) begin
      mem__T_69_addr_pipe_0 <= 10'h4;
    end
    if (_GEN_3) begin
      mem__T_79_addr_pipe_0 <= 10'h5;
    end
    if (_GEN_3) begin
      mem__T_89_addr_pipe_0 <= 10'h6;
    end
    if (_GEN_3) begin
      mem__T_99_addr_pipe_0 <= 10'h7;
    end
    if (_GEN_3) begin
      mem__T_109_addr_pipe_0 <= 10'h8;
    end
    if (_GEN_3) begin
      mem__T_119_addr_pipe_0 <= 10'h9;
    end
    if (_GEN_3) begin
      mem__T_129_addr_pipe_0 <= 10'ha;
    end
    if (_GEN_3) begin
      mem__T_139_addr_pipe_0 <= 10'hb;
    end
    if (_GEN_3) begin
      mem__T_149_addr_pipe_0 <= 10'hc;
    end
    if (_GEN_3) begin
      mem__T_159_addr_pipe_0 <= 10'hd;
    end
    if (_GEN_3) begin
      mem__T_169_addr_pipe_0 <= 10'he;
    end
    if (_GEN_3) begin
      mem__T_179_addr_pipe_0 <= 10'hf;
    end
    if (_GEN_3) begin
      mem__T_189_addr_pipe_0 <= 10'h10;
    end
    if (_GEN_3) begin
      mem__T_199_addr_pipe_0 <= 10'h11;
    end
    if (_GEN_3) begin
      mem__T_209_addr_pipe_0 <= 10'h12;
    end
    if (_GEN_3) begin
      mem__T_219_addr_pipe_0 <= 10'h13;
    end
    if (_GEN_3) begin
      mem__T_229_addr_pipe_0 <= 10'h14;
    end
    if (_GEN_3) begin
      mem__T_239_addr_pipe_0 <= 10'h15;
    end
    if (_GEN_3) begin
      mem__T_249_addr_pipe_0 <= 10'h16;
    end
    if (_GEN_3) begin
      mem__T_259_addr_pipe_0 <= 10'h17;
    end
    if (_GEN_3) begin
      mem__T_269_addr_pipe_0 <= 10'h18;
    end
    if (_GEN_3) begin
      mem__T_279_addr_pipe_0 <= 10'h19;
    end
    if (_GEN_3) begin
      mem__T_289_addr_pipe_0 <= 10'h1a;
    end
    if (_GEN_3) begin
      mem__T_299_addr_pipe_0 <= 10'h1b;
    end
    if (_GEN_3) begin
      mem__T_309_addr_pipe_0 <= 10'h1c;
    end
    if (_GEN_3) begin
      mem__T_319_addr_pipe_0 <= 10'h1d;
    end
    if (_GEN_3) begin
      mem__T_329_addr_pipe_0 <= 10'h1e;
    end
    if (_GEN_3) begin
      mem__T_339_addr_pipe_0 <= 10'h1f;
    end
  end
endmodule
module top( // @[:@1670.2]
  input   clock, // @[:@1671.4]
  input   reset, // @[:@1672.4]
  output  io_valid // @[:@1673.4]
);
  wire  r_clock; // @[riscvSingle.scala 34:19:@1676.4]
  wire  r_reset; // @[riscvSingle.scala 34:19:@1676.4]
  wire [31:0] r_io_instr; // @[riscvSingle.scala 34:19:@1676.4]
  wire [31:0] r_io_memReadData; // @[riscvSingle.scala 34:19:@1676.4]
  wire [31:0] r_io_pc; // @[riscvSingle.scala 34:19:@1676.4]
  wire  r_io_memWriteEnable; // @[riscvSingle.scala 34:19:@1676.4]
  wire [31:0] r_io_memAddress; // @[riscvSingle.scala 34:19:@1676.4]
  wire [31:0] r_io_memWriteData; // @[riscvSingle.scala 34:19:@1676.4]
  wire  im_clock; // @[riscvSingle.scala 35:20:@1679.4]
  wire [31:0] im_io_instAddress; // @[riscvSingle.scala 35:20:@1679.4]
  wire [31:0] im_io_inst; // @[riscvSingle.scala 35:20:@1679.4]
  wire  dm_clock; // @[riscvSingle.scala 36:20:@1682.4]
  wire  dm_reset; // @[riscvSingle.scala 36:20:@1682.4]
  wire [31:0] dm_io_memAddress; // @[riscvSingle.scala 36:20:@1682.4]
  wire [31:0] dm_io_memWriteData; // @[riscvSingle.scala 36:20:@1682.4]
  wire  dm_io_memWriteEnable; // @[riscvSingle.scala 36:20:@1682.4]
  wire [31:0] dm_io_memReadData; // @[riscvSingle.scala 36:20:@1682.4]
  wire [31:0] topMessage_pc_pulled; // @[riscvSingle.scala 46:37:@1690.4]
  wire  _T_12; // @[riscvSingle.scala 51:11:@1697.4]
  wire [6:0] _T_15; // @[riscvSingle.scala 57:31:@1704.4]
  wire  _T_17; // @[riscvSingle.scala 57:38:@1705.4]
  wire [31:0] topMessage_instr_pulled; // @[riscvSingle.scala 33:26:@1675.4 riscvSingle.scala 45:29:@1689.4]
  wire  topMessage_memWriteEnable; // @[riscvSingle.scala 33:26:@1675.4 riscvSingle.scala 48:31:@1693.4]
  wire [31:0] topMessage_memWriteData; // @[riscvSingle.scala 33:26:@1675.4 riscvSingle.scala 47:29:@1692.4]
  wire [31:0] topMessage_memAddress; // @[riscvSingle.scala 33:26:@1675.4 riscvSingle.scala 49:27:@1694.4]
  wire [31:0] topMessage_memReadData; // @[riscvSingle.scala 33:26:@1675.4 riscvSingle.scala 50:28:@1695.4]
  riscv r ( // @[riscvSingle.scala 34:19:@1676.4]
    .clock(r_clock),
    .reset(r_reset),
    .io_instr(r_io_instr),
    .io_memReadData(r_io_memReadData),
    .io_pc(r_io_pc),
    .io_memWriteEnable(r_io_memWriteEnable),
    .io_memAddress(r_io_memAddress),
    .io_memWriteData(r_io_memWriteData)
  );
  imem im ( // @[riscvSingle.scala 35:20:@1679.4]
    .clock(im_clock),
    .io_instAddress(im_io_instAddress),
    .io_inst(im_io_inst)
  );
  dmem dm ( // @[riscvSingle.scala 36:20:@1682.4]
    .clock(dm_clock),
    .reset(dm_reset),
    .io_memAddress(dm_io_memAddress),
    .io_memWriteData(dm_io_memWriteData),
    .io_memWriteEnable(dm_io_memWriteEnable),
    .io_memReadData(dm_io_memReadData)
  );
  assign topMessage_pc_pulled = r_io_pc / 32'h4; // @[riscvSingle.scala 46:37:@1690.4]
  assign _T_12 = reset == 1'h0; // @[riscvSingle.scala 51:11:@1697.4]
  assign _T_15 = im_io_inst[6:0]; // @[riscvSingle.scala 57:31:@1704.4]
  assign _T_17 = _T_15 == 7'h73; // @[riscvSingle.scala 57:38:@1705.4]
  assign topMessage_instr_pulled = im_io_inst; // @[riscvSingle.scala 33:26:@1675.4 riscvSingle.scala 45:29:@1689.4]
  assign topMessage_memWriteEnable = r_io_memWriteEnable; // @[riscvSingle.scala 33:26:@1675.4 riscvSingle.scala 48:31:@1693.4]
  assign topMessage_memWriteData = r_io_memWriteData; // @[riscvSingle.scala 33:26:@1675.4 riscvSingle.scala 47:29:@1692.4]
  assign topMessage_memAddress = r_io_memAddress; // @[riscvSingle.scala 33:26:@1675.4 riscvSingle.scala 49:27:@1694.4]
  assign topMessage_memReadData = dm_io_memReadData; // @[riscvSingle.scala 33:26:@1675.4 riscvSingle.scala 50:28:@1695.4]
  assign io_valid = _T_17 ? 1'h0 : 1'h1; // @[riscvSingle.scala 57:14:@1707.4]
  assign r_clock = clock; // @[:@1677.4]
  assign r_reset = reset; // @[:@1678.4]
  assign r_io_instr = im_io_inst; // @[riscvSingle.scala 55:16:@1703.4]
  assign r_io_memReadData = dm_io_memReadData; // @[riscvSingle.scala 42:22:@1688.4]
  assign im_clock = clock; // @[:@1680.4]
  assign im_io_instAddress = r_io_pc / 32'h4; // @[riscvSingle.scala 53:23:@1702.4]
  assign dm_clock = clock; // @[:@1683.4]
  assign dm_reset = reset; // @[:@1684.4]
  assign dm_io_memAddress = r_io_memAddress; // @[riscvSingle.scala 38:22:@1685.4]
  assign dm_io_memWriteData = r_io_memWriteData; // @[riscvSingle.scala 39:24:@1686.4]
  assign dm_io_memWriteEnable = r_io_memWriteEnable; // @[riscvSingle.scala 40:26:@1687.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_12) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|top Module:\n|  instr pulled       : 0x%x\n|  pc pulled          : b%b\n|  memWriteEnable     : b%b\n|  memWriteData       : 0x%x\n|  memAddress         : 0x%x\n|  memReadData        : 0x%x\n|___________________________\n",topMessage_instr_pulled,topMessage_pc_pulled,topMessage_memWriteEnable,topMessage_memWriteData,topMessage_memAddress,topMessage_memReadData); // @[riscvSingle.scala 51:11:@1699.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
