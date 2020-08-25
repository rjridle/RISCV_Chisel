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
  reg [31:0] rf [0:31]; // @[riscvSingle.scala 665:17:@8.4]
  reg [31:0] _RAND_0;
  wire [31:0] rf__T_34_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_34_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_35_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_35_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_45_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_45_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_55_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_55_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_65_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_65_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_75_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_75_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_85_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_85_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_95_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_95_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_105_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_105_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_115_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_115_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_125_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_125_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_135_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_135_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_145_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_145_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_155_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_155_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_165_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_165_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_175_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_175_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_185_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_185_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_195_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_195_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_205_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_205_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_215_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_215_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_225_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_225_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_235_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_235_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_245_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_245_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_255_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_255_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_265_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_265_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_275_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_275_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_285_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_285_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_295_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_295_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_305_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_305_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_315_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_315_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_325_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_325_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_335_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_335_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_345_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_345_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_355_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_355_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_30_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_30_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire  rf__T_30_mask; // @[riscvSingle.scala 665:17:@8.4]
  wire  rf__T_30_en; // @[riscvSingle.scala 665:17:@8.4]
  wire [31:0] rf__T_32_data; // @[riscvSingle.scala 665:17:@8.4]
  wire [4:0] rf__T_32_addr; // @[riscvSingle.scala 665:17:@8.4]
  wire  rf__T_32_mask; // @[riscvSingle.scala 665:17:@8.4]
  wire  rf__T_32_en; // @[riscvSingle.scala 665:17:@8.4]
  wire  _T_22; // @[riscvSingle.scala 668:28:@10.4]
  wire  _T_24; // @[riscvSingle.scala 668:28:@11.4]
  wire  _T_26; // @[riscvSingle.scala 668:57:@12.4]
  wire  _T_28; // @[riscvSingle.scala 668:36:@13.4]
  wire  _T_29; // @[riscvSingle.scala 668:33:@14.4]
  wire  _T_38; // @[riscvSingle.scala 684:11:@35.4]
  wire [31:0] _T_43; // @[riscvSingle.scala 689:26:@44.4 riscvSingle.scala 690:16:@46.4]
  wire [31:0] _T_53; // @[riscvSingle.scala 689:26:@57.4 riscvSingle.scala 690:16:@59.4]
  wire [31:0] _T_63; // @[riscvSingle.scala 689:26:@70.4 riscvSingle.scala 690:16:@72.4]
  wire [31:0] _T_73; // @[riscvSingle.scala 689:26:@83.4 riscvSingle.scala 690:16:@85.4]
  wire [31:0] _T_83; // @[riscvSingle.scala 689:26:@96.4 riscvSingle.scala 690:16:@98.4]
  wire [31:0] _T_93; // @[riscvSingle.scala 689:26:@109.4 riscvSingle.scala 690:16:@111.4]
  wire [31:0] _T_103; // @[riscvSingle.scala 689:26:@122.4 riscvSingle.scala 690:16:@124.4]
  wire [31:0] _T_113; // @[riscvSingle.scala 689:26:@135.4 riscvSingle.scala 690:16:@137.4]
  wire [31:0] _T_123; // @[riscvSingle.scala 689:26:@148.4 riscvSingle.scala 690:16:@150.4]
  wire [31:0] _T_133; // @[riscvSingle.scala 689:26:@161.4 riscvSingle.scala 690:16:@163.4]
  wire [31:0] _T_143; // @[riscvSingle.scala 689:26:@174.4 riscvSingle.scala 690:16:@176.4]
  wire [31:0] _T_153; // @[riscvSingle.scala 689:26:@187.4 riscvSingle.scala 690:16:@189.4]
  wire [31:0] _T_163; // @[riscvSingle.scala 689:26:@200.4 riscvSingle.scala 690:16:@202.4]
  wire [31:0] _T_173; // @[riscvSingle.scala 689:26:@213.4 riscvSingle.scala 690:16:@215.4]
  wire [31:0] _T_183; // @[riscvSingle.scala 689:26:@226.4 riscvSingle.scala 690:16:@228.4]
  wire [31:0] _T_193; // @[riscvSingle.scala 689:26:@239.4 riscvSingle.scala 690:16:@241.4]
  wire [31:0] _T_203; // @[riscvSingle.scala 689:26:@252.4 riscvSingle.scala 690:16:@254.4]
  wire [31:0] _T_213; // @[riscvSingle.scala 689:26:@265.4 riscvSingle.scala 690:16:@267.4]
  wire [31:0] _T_223; // @[riscvSingle.scala 689:26:@278.4 riscvSingle.scala 690:16:@280.4]
  wire [31:0] _T_233; // @[riscvSingle.scala 689:26:@291.4 riscvSingle.scala 690:16:@293.4]
  wire [31:0] _T_243; // @[riscvSingle.scala 689:26:@304.4 riscvSingle.scala 690:16:@306.4]
  wire [31:0] _T_253; // @[riscvSingle.scala 689:26:@317.4 riscvSingle.scala 690:16:@319.4]
  wire [31:0] _T_263; // @[riscvSingle.scala 689:26:@330.4 riscvSingle.scala 690:16:@332.4]
  wire [31:0] _T_273; // @[riscvSingle.scala 689:26:@343.4 riscvSingle.scala 690:16:@345.4]
  wire [31:0] _T_283; // @[riscvSingle.scala 689:26:@356.4 riscvSingle.scala 690:16:@358.4]
  wire [31:0] _T_293; // @[riscvSingle.scala 689:26:@369.4 riscvSingle.scala 690:16:@371.4]
  wire [31:0] _T_303; // @[riscvSingle.scala 689:26:@382.4 riscvSingle.scala 690:16:@384.4]
  wire [31:0] _T_313; // @[riscvSingle.scala 689:26:@395.4 riscvSingle.scala 690:16:@397.4]
  wire [31:0] _T_323; // @[riscvSingle.scala 689:26:@408.4 riscvSingle.scala 690:16:@410.4]
  wire [31:0] _T_333; // @[riscvSingle.scala 689:26:@421.4 riscvSingle.scala 690:16:@423.4]
  wire [31:0] _T_343; // @[riscvSingle.scala 689:26:@434.4 riscvSingle.scala 690:16:@436.4]
  wire [31:0] _T_353; // @[riscvSingle.scala 689:26:@447.4 riscvSingle.scala 690:16:@449.4]
  assign rf__T_34_addr = io_regReadAddress1;
  assign rf__T_34_data = rf[rf__T_34_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_35_addr = io_regReadAddress2;
  assign rf__T_35_data = rf[rf__T_35_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_45_addr = 5'h0;
  assign rf__T_45_data = rf[rf__T_45_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_55_addr = 5'h1;
  assign rf__T_55_data = rf[rf__T_55_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_65_addr = 5'h2;
  assign rf__T_65_data = rf[rf__T_65_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_75_addr = 5'h3;
  assign rf__T_75_data = rf[rf__T_75_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_85_addr = 5'h4;
  assign rf__T_85_data = rf[rf__T_85_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_95_addr = 5'h5;
  assign rf__T_95_data = rf[rf__T_95_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_105_addr = 5'h6;
  assign rf__T_105_data = rf[rf__T_105_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_115_addr = 5'h7;
  assign rf__T_115_data = rf[rf__T_115_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_125_addr = 5'h8;
  assign rf__T_125_data = rf[rf__T_125_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_135_addr = 5'h9;
  assign rf__T_135_data = rf[rf__T_135_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_145_addr = 5'ha;
  assign rf__T_145_data = rf[rf__T_145_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_155_addr = 5'hb;
  assign rf__T_155_data = rf[rf__T_155_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_165_addr = 5'hc;
  assign rf__T_165_data = rf[rf__T_165_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_175_addr = 5'hd;
  assign rf__T_175_data = rf[rf__T_175_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_185_addr = 5'he;
  assign rf__T_185_data = rf[rf__T_185_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_195_addr = 5'hf;
  assign rf__T_195_data = rf[rf__T_195_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_205_addr = 5'h10;
  assign rf__T_205_data = rf[rf__T_205_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_215_addr = 5'h11;
  assign rf__T_215_data = rf[rf__T_215_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_225_addr = 5'h12;
  assign rf__T_225_data = rf[rf__T_225_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_235_addr = 5'h13;
  assign rf__T_235_data = rf[rf__T_235_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_245_addr = 5'h14;
  assign rf__T_245_data = rf[rf__T_245_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_255_addr = 5'h15;
  assign rf__T_255_data = rf[rf__T_255_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_265_addr = 5'h16;
  assign rf__T_265_data = rf[rf__T_265_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_275_addr = 5'h17;
  assign rf__T_275_data = rf[rf__T_275_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_285_addr = 5'h18;
  assign rf__T_285_data = rf[rf__T_285_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_295_addr = 5'h19;
  assign rf__T_295_data = rf[rf__T_295_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_305_addr = 5'h1a;
  assign rf__T_305_data = rf[rf__T_305_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_315_addr = 5'h1b;
  assign rf__T_315_data = rf[rf__T_315_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_325_addr = 5'h1c;
  assign rf__T_325_data = rf[rf__T_325_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_335_addr = 5'h1d;
  assign rf__T_335_data = rf[rf__T_335_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_345_addr = 5'h1e;
  assign rf__T_345_data = rf[rf__T_345_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_355_addr = 5'h1f;
  assign rf__T_355_data = rf[rf__T_355_addr]; // @[riscvSingle.scala 665:17:@8.4]
  assign rf__T_30_data = io_regWriteData;
  assign rf__T_30_addr = io_regWriteAddress;
  assign rf__T_30_mask = 1'h1;
  assign rf__T_30_en = _T_24 & _T_28;
  assign rf__T_32_data = 32'sh0;
  assign rf__T_32_addr = 5'h0;
  assign rf__T_32_mask = 1'h1;
  assign rf__T_32_en = _T_29 ? 1'h0 : 1'h1;
  assign _T_22 = ~ io_regWriteEnable; // @[riscvSingle.scala 668:28:@10.4]
  assign _T_24 = _T_22 == 1'h0; // @[riscvSingle.scala 668:28:@11.4]
  assign _T_26 = io_regWriteAddress == 5'h0; // @[riscvSingle.scala 668:57:@12.4]
  assign _T_28 = _T_26 == 1'h0; // @[riscvSingle.scala 668:36:@13.4]
  assign _T_29 = _T_24 & _T_28; // @[riscvSingle.scala 668:33:@14.4]
  assign _T_38 = reset == 1'h0; // @[riscvSingle.scala 684:11:@35.4]
  assign _T_43 = rf__T_45_data; // @[riscvSingle.scala 689:26:@44.4 riscvSingle.scala 690:16:@46.4]
  assign _T_53 = rf__T_55_data; // @[riscvSingle.scala 689:26:@57.4 riscvSingle.scala 690:16:@59.4]
  assign _T_63 = rf__T_65_data; // @[riscvSingle.scala 689:26:@70.4 riscvSingle.scala 690:16:@72.4]
  assign _T_73 = rf__T_75_data; // @[riscvSingle.scala 689:26:@83.4 riscvSingle.scala 690:16:@85.4]
  assign _T_83 = rf__T_85_data; // @[riscvSingle.scala 689:26:@96.4 riscvSingle.scala 690:16:@98.4]
  assign _T_93 = rf__T_95_data; // @[riscvSingle.scala 689:26:@109.4 riscvSingle.scala 690:16:@111.4]
  assign _T_103 = rf__T_105_data; // @[riscvSingle.scala 689:26:@122.4 riscvSingle.scala 690:16:@124.4]
  assign _T_113 = rf__T_115_data; // @[riscvSingle.scala 689:26:@135.4 riscvSingle.scala 690:16:@137.4]
  assign _T_123 = rf__T_125_data; // @[riscvSingle.scala 689:26:@148.4 riscvSingle.scala 690:16:@150.4]
  assign _T_133 = rf__T_135_data; // @[riscvSingle.scala 689:26:@161.4 riscvSingle.scala 690:16:@163.4]
  assign _T_143 = rf__T_145_data; // @[riscvSingle.scala 689:26:@174.4 riscvSingle.scala 690:16:@176.4]
  assign _T_153 = rf__T_155_data; // @[riscvSingle.scala 689:26:@187.4 riscvSingle.scala 690:16:@189.4]
  assign _T_163 = rf__T_165_data; // @[riscvSingle.scala 689:26:@200.4 riscvSingle.scala 690:16:@202.4]
  assign _T_173 = rf__T_175_data; // @[riscvSingle.scala 689:26:@213.4 riscvSingle.scala 690:16:@215.4]
  assign _T_183 = rf__T_185_data; // @[riscvSingle.scala 689:26:@226.4 riscvSingle.scala 690:16:@228.4]
  assign _T_193 = rf__T_195_data; // @[riscvSingle.scala 689:26:@239.4 riscvSingle.scala 690:16:@241.4]
  assign _T_203 = rf__T_205_data; // @[riscvSingle.scala 689:26:@252.4 riscvSingle.scala 690:16:@254.4]
  assign _T_213 = rf__T_215_data; // @[riscvSingle.scala 689:26:@265.4 riscvSingle.scala 690:16:@267.4]
  assign _T_223 = rf__T_225_data; // @[riscvSingle.scala 689:26:@278.4 riscvSingle.scala 690:16:@280.4]
  assign _T_233 = rf__T_235_data; // @[riscvSingle.scala 689:26:@291.4 riscvSingle.scala 690:16:@293.4]
  assign _T_243 = rf__T_245_data; // @[riscvSingle.scala 689:26:@304.4 riscvSingle.scala 690:16:@306.4]
  assign _T_253 = rf__T_255_data; // @[riscvSingle.scala 689:26:@317.4 riscvSingle.scala 690:16:@319.4]
  assign _T_263 = rf__T_265_data; // @[riscvSingle.scala 689:26:@330.4 riscvSingle.scala 690:16:@332.4]
  assign _T_273 = rf__T_275_data; // @[riscvSingle.scala 689:26:@343.4 riscvSingle.scala 690:16:@345.4]
  assign _T_283 = rf__T_285_data; // @[riscvSingle.scala 689:26:@356.4 riscvSingle.scala 690:16:@358.4]
  assign _T_293 = rf__T_295_data; // @[riscvSingle.scala 689:26:@369.4 riscvSingle.scala 690:16:@371.4]
  assign _T_303 = rf__T_305_data; // @[riscvSingle.scala 689:26:@382.4 riscvSingle.scala 690:16:@384.4]
  assign _T_313 = rf__T_315_data; // @[riscvSingle.scala 689:26:@395.4 riscvSingle.scala 690:16:@397.4]
  assign _T_323 = rf__T_325_data; // @[riscvSingle.scala 689:26:@408.4 riscvSingle.scala 690:16:@410.4]
  assign _T_333 = rf__T_335_data; // @[riscvSingle.scala 689:26:@421.4 riscvSingle.scala 690:16:@423.4]
  assign _T_343 = rf__T_345_data; // @[riscvSingle.scala 689:26:@434.4 riscvSingle.scala 690:16:@436.4]
  assign _T_353 = rf__T_355_data; // @[riscvSingle.scala 689:26:@447.4 riscvSingle.scala 690:16:@449.4]
  assign io_regReadData1 = rf__T_34_data; // @[riscvSingle.scala 674:21:@24.4]
  assign io_regReadData2 = rf__T_35_data; // @[riscvSingle.scala 675:21:@26.4]
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
      rf[rf__T_30_addr] <= rf__T_30_data; // @[riscvSingle.scala 665:17:@8.4]
    end
    if(rf__T_32_en & rf__T_32_mask) begin
      rf[rf__T_32_addr] <= rf__T_32_data; // @[riscvSingle.scala 665:17:@8.4]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38) begin
          $fwrite(32'h80000002,"\n\n\n___________________________\n|regfile Module:\n|  regWriteEnable  : b%b\n|  regReadAddress1 : b%b\n|  regReadAddress2 : b%b\n|  regWriteAddress : b%b\n|  regWriteData    : 0x%x\n|  regReadData1    : 0x%x\n|  regReadData2    : 0x%x\n|___________________________\n",io_regWriteEnable,io_regReadAddress1,io_regReadAddress2,io_regWriteAddress,io_regWriteData,io_regReadData1,io_regReadData2); // @[riscvSingle.scala 684:11:@37.6]
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
          $fwrite(32'h80000002,"\n\n\n___________________________\n"); // @[riscvSingle.scala 687:11:@42.6]
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
          $fwrite(32'h80000002,"| rf(0) = "); // @[riscvSingle.scala 691:15:@50.6]
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
          $fwrite(32'h80000002,"%d\n",_T_43); // @[riscvSingle.scala 692:15:@55.6]
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
          $fwrite(32'h80000002,"| rf(1) = "); // @[riscvSingle.scala 691:15:@63.6]
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
          $fwrite(32'h80000002,"%d\n",_T_53); // @[riscvSingle.scala 692:15:@68.6]
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
          $fwrite(32'h80000002,"| rf(2) = "); // @[riscvSingle.scala 691:15:@76.6]
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
          $fwrite(32'h80000002,"%d\n",_T_63); // @[riscvSingle.scala 692:15:@81.6]
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
          $fwrite(32'h80000002,"| rf(3) = "); // @[riscvSingle.scala 691:15:@89.6]
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
          $fwrite(32'h80000002,"%d\n",_T_73); // @[riscvSingle.scala 692:15:@94.6]
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
          $fwrite(32'h80000002,"| rf(4) = "); // @[riscvSingle.scala 691:15:@102.6]
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
          $fwrite(32'h80000002,"%d\n",_T_83); // @[riscvSingle.scala 692:15:@107.6]
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
          $fwrite(32'h80000002,"| rf(5) = "); // @[riscvSingle.scala 691:15:@115.6]
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
          $fwrite(32'h80000002,"%d\n",_T_93); // @[riscvSingle.scala 692:15:@120.6]
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
          $fwrite(32'h80000002,"| rf(6) = "); // @[riscvSingle.scala 691:15:@128.6]
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
          $fwrite(32'h80000002,"%d\n",_T_103); // @[riscvSingle.scala 692:15:@133.6]
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
          $fwrite(32'h80000002,"| rf(7) = "); // @[riscvSingle.scala 691:15:@141.6]
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
          $fwrite(32'h80000002,"%d\n",_T_113); // @[riscvSingle.scala 692:15:@146.6]
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
          $fwrite(32'h80000002,"| rf(8) = "); // @[riscvSingle.scala 691:15:@154.6]
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
          $fwrite(32'h80000002,"%d\n",_T_123); // @[riscvSingle.scala 692:15:@159.6]
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
          $fwrite(32'h80000002,"| rf(9) = "); // @[riscvSingle.scala 691:15:@167.6]
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
          $fwrite(32'h80000002,"%d\n",_T_133); // @[riscvSingle.scala 692:15:@172.6]
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
          $fwrite(32'h80000002,"| rf(10) = "); // @[riscvSingle.scala 691:15:@180.6]
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
          $fwrite(32'h80000002,"%d\n",_T_143); // @[riscvSingle.scala 692:15:@185.6]
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
          $fwrite(32'h80000002,"| rf(11) = "); // @[riscvSingle.scala 691:15:@193.6]
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
          $fwrite(32'h80000002,"%d\n",_T_153); // @[riscvSingle.scala 692:15:@198.6]
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
          $fwrite(32'h80000002,"| rf(12) = "); // @[riscvSingle.scala 691:15:@206.6]
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
          $fwrite(32'h80000002,"%d\n",_T_163); // @[riscvSingle.scala 692:15:@211.6]
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
          $fwrite(32'h80000002,"| rf(13) = "); // @[riscvSingle.scala 691:15:@219.6]
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
          $fwrite(32'h80000002,"%d\n",_T_173); // @[riscvSingle.scala 692:15:@224.6]
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
          $fwrite(32'h80000002,"| rf(14) = "); // @[riscvSingle.scala 691:15:@232.6]
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
          $fwrite(32'h80000002,"%d\n",_T_183); // @[riscvSingle.scala 692:15:@237.6]
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
          $fwrite(32'h80000002,"| rf(15) = "); // @[riscvSingle.scala 691:15:@245.6]
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
          $fwrite(32'h80000002,"%d\n",_T_193); // @[riscvSingle.scala 692:15:@250.6]
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
          $fwrite(32'h80000002,"| rf(16) = "); // @[riscvSingle.scala 691:15:@258.6]
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
          $fwrite(32'h80000002,"%d\n",_T_203); // @[riscvSingle.scala 692:15:@263.6]
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
          $fwrite(32'h80000002,"| rf(17) = "); // @[riscvSingle.scala 691:15:@271.6]
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
          $fwrite(32'h80000002,"%d\n",_T_213); // @[riscvSingle.scala 692:15:@276.6]
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
          $fwrite(32'h80000002,"| rf(18) = "); // @[riscvSingle.scala 691:15:@284.6]
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
          $fwrite(32'h80000002,"%d\n",_T_223); // @[riscvSingle.scala 692:15:@289.6]
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
          $fwrite(32'h80000002,"| rf(19) = "); // @[riscvSingle.scala 691:15:@297.6]
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
          $fwrite(32'h80000002,"%d\n",_T_233); // @[riscvSingle.scala 692:15:@302.6]
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
          $fwrite(32'h80000002,"| rf(20) = "); // @[riscvSingle.scala 691:15:@310.6]
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
          $fwrite(32'h80000002,"%d\n",_T_243); // @[riscvSingle.scala 692:15:@315.6]
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
          $fwrite(32'h80000002,"| rf(21) = "); // @[riscvSingle.scala 691:15:@323.6]
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
          $fwrite(32'h80000002,"%d\n",_T_253); // @[riscvSingle.scala 692:15:@328.6]
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
          $fwrite(32'h80000002,"| rf(22) = "); // @[riscvSingle.scala 691:15:@336.6]
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
          $fwrite(32'h80000002,"%d\n",_T_263); // @[riscvSingle.scala 692:15:@341.6]
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
          $fwrite(32'h80000002,"| rf(23) = "); // @[riscvSingle.scala 691:15:@349.6]
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
          $fwrite(32'h80000002,"%d\n",_T_273); // @[riscvSingle.scala 692:15:@354.6]
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
          $fwrite(32'h80000002,"| rf(24) = "); // @[riscvSingle.scala 691:15:@362.6]
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
          $fwrite(32'h80000002,"%d\n",_T_283); // @[riscvSingle.scala 692:15:@367.6]
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
          $fwrite(32'h80000002,"| rf(25) = "); // @[riscvSingle.scala 691:15:@375.6]
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
          $fwrite(32'h80000002,"%d\n",_T_293); // @[riscvSingle.scala 692:15:@380.6]
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
          $fwrite(32'h80000002,"| rf(26) = "); // @[riscvSingle.scala 691:15:@388.6]
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
          $fwrite(32'h80000002,"%d\n",_T_303); // @[riscvSingle.scala 692:15:@393.6]
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
          $fwrite(32'h80000002,"| rf(27) = "); // @[riscvSingle.scala 691:15:@401.6]
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
          $fwrite(32'h80000002,"%d\n",_T_313); // @[riscvSingle.scala 692:15:@406.6]
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
          $fwrite(32'h80000002,"| rf(28) = "); // @[riscvSingle.scala 691:15:@414.6]
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
          $fwrite(32'h80000002,"%d\n",_T_323); // @[riscvSingle.scala 692:15:@419.6]
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
          $fwrite(32'h80000002,"| rf(29) = "); // @[riscvSingle.scala 691:15:@427.6]
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
          $fwrite(32'h80000002,"%d\n",_T_333); // @[riscvSingle.scala 692:15:@432.6]
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
          $fwrite(32'h80000002,"| rf(30) = "); // @[riscvSingle.scala 691:15:@440.6]
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
          $fwrite(32'h80000002,"%d\n",_T_343); // @[riscvSingle.scala 692:15:@445.6]
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
          $fwrite(32'h80000002,"| rf(31) = "); // @[riscvSingle.scala 691:15:@453.6]
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
          $fwrite(32'h80000002,"%d\n",_T_353); // @[riscvSingle.scala 692:15:@458.6]
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
          $fwrite(32'h80000002,"|___________________________\n"); // @[riscvSingle.scala 694:11:@463.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module alu( // @[:@466.2]
  input  [31:0] io_a, // @[:@469.4]
  input  [31:0] io_b, // @[:@469.4]
  input  [3:0]  io_aluControl, // @[:@469.4]
  output [31:0] io_out, // @[:@469.4]
  output        io_zeroFlag, // @[:@469.4]
  output        io_lessThanFlag, // @[:@469.4]
  output        io_greaterThanFlag // @[:@469.4]
);
  wire  _T_20; // @[riscvSingle.scala 806:25:@471.4]
  wire [31:0] _T_21; // @[riscvSingle.scala 807:24:@473.6]
  wire [31:0] _T_22; // @[riscvSingle.scala 807:24:@474.6]
  wire  _T_24; // @[riscvSingle.scala 808:31:@478.6]
  wire [31:0] _T_25; // @[riscvSingle.scala 809:24:@480.8]
  wire [31:0] _T_26; // @[riscvSingle.scala 809:24:@481.8]
  wire  _T_28; // @[riscvSingle.scala 810:31:@485.8]
  wire [32:0] _T_29; // @[riscvSingle.scala 811:24:@487.10]
  wire [31:0] _T_30; // @[riscvSingle.scala 811:24:@488.10]
  wire [31:0] _T_31; // @[riscvSingle.scala 811:24:@489.10]
  wire  _T_33; // @[riscvSingle.scala 812:31:@493.10]
  wire [11:0] _T_34; // @[riscvSingle.scala 813:31:@495.12]
  wire [4126:0] _GEN_12; // @[riscvSingle.scala 813:24:@496.12]
  wire [4126:0] _T_35; // @[riscvSingle.scala 813:24:@496.12]
  wire  _T_37; // @[riscvSingle.scala 814:31:@500.12]
  wire [31:0] _T_39; // @[riscvSingle.scala 815:24:@503.14]
  wire  _T_41; // @[riscvSingle.scala 816:30:@507.14]
  wire [31:0] _T_42; // @[riscvSingle.scala 817:19:@509.16]
  wire [31:0] _T_43; // @[riscvSingle.scala 817:33:@510.16]
  wire  _T_44; // @[riscvSingle.scala 817:26:@511.16]
  wire [1:0] _GEN_0; // @[riscvSingle.scala 817:40:@512.16]
  wire  _T_48; // @[riscvSingle.scala 822:31:@520.16]
  wire [31:0] _T_49; // @[riscvSingle.scala 823:24:@522.18]
  wire [31:0] _T_50; // @[riscvSingle.scala 823:24:@523.18]
  wire  _T_52; // @[riscvSingle.scala 824:31:@527.18]
  wire  _T_56; // @[riscvSingle.scala 828:30:@534.20]
  wire  _T_57; // @[riscvSingle.scala 829:19:@536.22]
  wire [1:0] _GEN_1; // @[riscvSingle.scala 829:26:@537.22]
  wire  _T_61; // @[riscvSingle.scala 836:30:@545.22]
  wire [32:0] _T_62; // @[riscvSingle.scala 837:24:@547.24]
  wire [31:0] _T_63; // @[riscvSingle.scala 837:24:@548.24]
  wire [31:0] _T_64; // @[riscvSingle.scala 837:24:@549.24]
  wire [31:0] _GEN_2; // @[riscvSingle.scala 836:39:@546.22]
  wire [31:0] _GEN_3; // @[riscvSingle.scala 828:39:@535.20]
  wire [31:0] _GEN_4; // @[riscvSingle.scala 824:40:@528.18]
  wire [31:0] _GEN_5; // @[riscvSingle.scala 822:40:@521.16]
  wire [31:0] _GEN_6; // @[riscvSingle.scala 816:38:@508.14]
  wire [31:0] _GEN_7; // @[riscvSingle.scala 814:40:@501.12]
  wire [4126:0] _GEN_8; // @[riscvSingle.scala 812:40:@494.10]
  wire [4126:0] _GEN_9; // @[riscvSingle.scala 810:40:@486.8]
  wire [4126:0] _GEN_10; // @[riscvSingle.scala 808:40:@479.6]
  wire [4126:0] _GEN_11; // @[riscvSingle.scala 806:34:@472.4]
  wire [31:0] _GEN_13; // @[riscvSingle.scala 807:16:@475.6 riscvSingle.scala 809:16:@482.8 riscvSingle.scala 811:16:@490.10 riscvSingle.scala 813:16:@497.12 riscvSingle.scala 815:16:@504.14 riscvSingle.scala 818:20:@513.18 riscvSingle.scala 820:20:@516.18 riscvSingle.scala 823:16:@524.18 riscvSingle.scala 825:16:@531.20 riscvSingle.scala 830:20:@538.24 riscvSingle.scala 832:20:@541.24 riscvSingle.scala 837:16:@550.24 riscvSingle.scala 839:16:@553.24]
  assign _T_20 = io_aluControl == 4'h0; // @[riscvSingle.scala 806:25:@471.4]
  assign _T_21 = $signed(io_a) & $signed(io_b); // @[riscvSingle.scala 807:24:@473.6]
  assign _T_22 = $signed(_T_21); // @[riscvSingle.scala 807:24:@474.6]
  assign _T_24 = io_aluControl == 4'h1; // @[riscvSingle.scala 808:31:@478.6]
  assign _T_25 = $signed(io_a) | $signed(io_b); // @[riscvSingle.scala 809:24:@480.8]
  assign _T_26 = $signed(_T_25); // @[riscvSingle.scala 809:24:@481.8]
  assign _T_28 = io_aluControl == 4'h2; // @[riscvSingle.scala 810:31:@485.8]
  assign _T_29 = $signed(io_a) + $signed(io_b); // @[riscvSingle.scala 811:24:@487.10]
  assign _T_30 = $signed(io_a) + $signed(io_b); // @[riscvSingle.scala 811:24:@488.10]
  assign _T_31 = $signed(_T_30); // @[riscvSingle.scala 811:24:@489.10]
  assign _T_33 = io_aluControl == 4'h3; // @[riscvSingle.scala 812:31:@493.10]
  assign _T_34 = io_b[11:0]; // @[riscvSingle.scala 813:31:@495.12]
  assign _GEN_12 = {{4095{io_a[31]}},io_a}; // @[riscvSingle.scala 813:24:@496.12]
  assign _T_35 = $signed(_GEN_12) << _T_34; // @[riscvSingle.scala 813:24:@496.12]
  assign _T_37 = io_aluControl == 4'h4; // @[riscvSingle.scala 814:31:@500.12]
  assign _T_39 = $signed(io_a) >>> _T_34; // @[riscvSingle.scala 815:24:@503.14]
  assign _T_41 = io_aluControl == 4'h5; // @[riscvSingle.scala 816:30:@507.14]
  assign _T_42 = $unsigned(io_a); // @[riscvSingle.scala 817:19:@509.16]
  assign _T_43 = $unsigned(io_b); // @[riscvSingle.scala 817:33:@510.16]
  assign _T_44 = _T_42 < _T_43; // @[riscvSingle.scala 817:26:@511.16]
  assign _GEN_0 = _T_44 ? $signed(2'sh1) : $signed(2'sh0); // @[riscvSingle.scala 817:40:@512.16]
  assign _T_48 = io_aluControl == 4'h6; // @[riscvSingle.scala 822:31:@520.16]
  assign _T_49 = $signed(io_a) ^ $signed(io_b); // @[riscvSingle.scala 823:24:@522.18]
  assign _T_50 = $signed(_T_49); // @[riscvSingle.scala 823:24:@523.18]
  assign _T_52 = io_aluControl == 4'h7; // @[riscvSingle.scala 824:31:@527.18]
  assign _T_56 = io_aluControl == 4'h9; // @[riscvSingle.scala 828:30:@534.20]
  assign _T_57 = $signed(io_a) < $signed(io_b); // @[riscvSingle.scala 829:19:@536.22]
  assign _GEN_1 = _T_57 ? $signed(2'sh1) : $signed(2'sh0); // @[riscvSingle.scala 829:26:@537.22]
  assign _T_61 = io_aluControl == 4'hc; // @[riscvSingle.scala 836:30:@545.22]
  assign _T_62 = $signed(io_a) - $signed(io_b); // @[riscvSingle.scala 837:24:@547.24]
  assign _T_63 = $signed(io_a) - $signed(io_b); // @[riscvSingle.scala 837:24:@548.24]
  assign _T_64 = $signed(_T_63); // @[riscvSingle.scala 837:24:@549.24]
  assign _GEN_2 = _T_61 ? $signed(_T_64) : $signed(32'sh0); // @[riscvSingle.scala 836:39:@546.22]
  assign _GEN_3 = _T_56 ? $signed({{30{_GEN_1[1]}},_GEN_1}) : $signed(_GEN_2); // @[riscvSingle.scala 828:39:@535.20]
  assign _GEN_4 = _T_52 ? $signed(_T_39) : $signed(_GEN_3); // @[riscvSingle.scala 824:40:@528.18]
  assign _GEN_5 = _T_48 ? $signed(_T_50) : $signed(_GEN_4); // @[riscvSingle.scala 822:40:@521.16]
  assign _GEN_6 = _T_41 ? $signed({{30{_GEN_0[1]}},_GEN_0}) : $signed(_GEN_5); // @[riscvSingle.scala 816:38:@508.14]
  assign _GEN_7 = _T_37 ? $signed(_T_39) : $signed(_GEN_6); // @[riscvSingle.scala 814:40:@501.12]
  assign _GEN_8 = _T_33 ? $signed(_T_35) : $signed({{4095{_GEN_7[31]}},_GEN_7}); // @[riscvSingle.scala 812:40:@494.10]
  assign _GEN_9 = _T_28 ? $signed({{4095{_T_31[31]}},_T_31}) : $signed(_GEN_8); // @[riscvSingle.scala 810:40:@486.8]
  assign _GEN_10 = _T_24 ? $signed({{4095{_T_26[31]}},_T_26}) : $signed(_GEN_9); // @[riscvSingle.scala 808:40:@479.6]
  assign _GEN_11 = _T_20 ? $signed({{4095{_T_22[31]}},_T_22}) : $signed(_GEN_10); // @[riscvSingle.scala 806:34:@472.4]
  assign _GEN_13 = _GEN_11[31:0]; // @[riscvSingle.scala 807:16:@475.6 riscvSingle.scala 809:16:@482.8 riscvSingle.scala 811:16:@490.10 riscvSingle.scala 813:16:@497.12 riscvSingle.scala 815:16:@504.14 riscvSingle.scala 818:20:@513.18 riscvSingle.scala 820:20:@516.18 riscvSingle.scala 823:16:@524.18 riscvSingle.scala 825:16:@531.20 riscvSingle.scala 830:20:@538.24 riscvSingle.scala 832:20:@541.24 riscvSingle.scala 837:16:@550.24 riscvSingle.scala 839:16:@553.24]
  assign io_out = $signed(_GEN_13); // @[riscvSingle.scala 807:16:@475.6 riscvSingle.scala 809:16:@482.8 riscvSingle.scala 811:16:@490.10 riscvSingle.scala 813:16:@497.12 riscvSingle.scala 815:16:@504.14 riscvSingle.scala 818:20:@513.18 riscvSingle.scala 820:20:@516.18 riscvSingle.scala 823:16:@524.18 riscvSingle.scala 825:16:@531.20 riscvSingle.scala 830:20:@538.24 riscvSingle.scala 832:20:@541.24 riscvSingle.scala 837:16:@550.24 riscvSingle.scala 839:16:@553.24]
  assign io_zeroFlag = $signed(_T_31) == $signed(32'sh0); // @[riscvSingle.scala 843:17:@560.4]
  assign io_lessThanFlag = $signed(io_a) < $signed(io_b); // @[riscvSingle.scala 844:21:@562.4]
  assign io_greaterThanFlag = $signed(io_a) > $signed(io_b); // @[riscvSingle.scala 845:24:@564.4]
endmodule
module extend( // @[:@566.2]
  input  [11:0] io_instr12, // @[:@569.4]
  input  [19:0] io_instr20, // @[:@569.4]
  input  [1:0]  io_immSrc, // @[:@569.4]
  output [31:0] io_extImm // @[:@569.4]
);
  wire  _T_14; // @[riscvSingle.scala 123:20:@571.4]
  wire [11:0] _T_15; // @[riscvSingle.scala 124:33:@573.6]
  wire  _T_17; // @[riscvSingle.scala 125:26:@577.6]
  wire [12:0] _T_19; // @[Cat.scala 30:58:@579.8]
  wire [12:0] _T_20; // @[riscvSingle.scala 126:50:@580.8]
  wire  _T_22; // @[riscvSingle.scala 127:26:@584.8]
  wire [20:0] _T_24; // @[Cat.scala 30:58:@586.10]
  wire [20:0] _T_25; // @[riscvSingle.scala 128:50:@587.10]
  wire [20:0] _GEN_0; // @[riscvSingle.scala 127:34:@585.8]
  wire [20:0] _GEN_1; // @[riscvSingle.scala 125:34:@578.6]
  wire [20:0] _GEN_2; // @[riscvSingle.scala 123:28:@572.4]
  assign _T_14 = io_immSrc == 2'h0; // @[riscvSingle.scala 123:20:@571.4]
  assign _T_15 = $signed(io_instr12); // @[riscvSingle.scala 124:33:@573.6]
  assign _T_17 = io_immSrc == 2'h1; // @[riscvSingle.scala 125:26:@577.6]
  assign _T_19 = {io_instr12,1'h0}; // @[Cat.scala 30:58:@579.8]
  assign _T_20 = $signed(_T_19); // @[riscvSingle.scala 126:50:@580.8]
  assign _T_22 = io_immSrc == 2'h2; // @[riscvSingle.scala 127:26:@584.8]
  assign _T_24 = {io_instr20,1'h0}; // @[Cat.scala 30:58:@586.10]
  assign _T_25 = $signed(_T_24); // @[riscvSingle.scala 128:50:@587.10]
  assign _GEN_0 = _T_22 ? $signed(_T_25) : $signed(21'sh0); // @[riscvSingle.scala 127:34:@585.8]
  assign _GEN_1 = _T_17 ? $signed({{8{_T_20[12]}},_T_20}) : $signed(_GEN_0); // @[riscvSingle.scala 125:34:@578.6]
  assign _GEN_2 = _T_14 ? $signed({{9{_T_15[11]}},_T_15}) : $signed(_GEN_1); // @[riscvSingle.scala 123:28:@572.4]
  assign io_extImm = {{11{_GEN_2[20]}},_GEN_2}; // @[riscvSingle.scala 124:19:@574.6 riscvSingle.scala 126:19:@581.8 riscvSingle.scala 128:19:@588.10 riscvSingle.scala 130:19:@591.10]
endmodule
module datapath( // @[:@622.2]
  input         clock, // @[:@623.4]
  input         reset, // @[:@624.4]
  input  [2:0]  io_regSrc, // @[:@625.4]
  input         io_regWriteEnable, // @[:@625.4]
  input  [1:0]  io_immSrc, // @[:@625.4]
  input         io_aluSrc, // @[:@625.4]
  input         io_pcSrc, // @[:@625.4]
  input  [3:0]  io_aluControl, // @[:@625.4]
  input         io_memToReg, // @[:@625.4]
  input  [31:0] io_instr, // @[:@625.4]
  input  [31:0] io_memReadData, // @[:@625.4]
  input  [1:0]  io_branchSrc, // @[:@625.4]
  output [31:0] io_pc, // @[:@625.4]
  output [31:0] io_memAddress, // @[:@625.4]
  output [31:0] io_memWriteData, // @[:@625.4]
  output        io_zeroFlag, // @[:@625.4]
  output        io_lessThanFlag, // @[:@625.4]
  output        io_greaterThanFlag // @[:@625.4]
);
  wire  rf_clock; // @[riscvSingle.scala 525:20:@627.4]
  wire  rf_reset; // @[riscvSingle.scala 525:20:@627.4]
  wire  rf_io_regWriteEnable; // @[riscvSingle.scala 525:20:@627.4]
  wire [4:0] rf_io_regWriteAddress; // @[riscvSingle.scala 525:20:@627.4]
  wire [31:0] rf_io_regWriteData; // @[riscvSingle.scala 525:20:@627.4]
  wire [4:0] rf_io_regReadAddress1; // @[riscvSingle.scala 525:20:@627.4]
  wire [4:0] rf_io_regReadAddress2; // @[riscvSingle.scala 525:20:@627.4]
  wire [31:0] rf_io_regReadData1; // @[riscvSingle.scala 525:20:@627.4]
  wire [31:0] rf_io_regReadData2; // @[riscvSingle.scala 525:20:@627.4]
  wire [31:0] alu_io_a; // @[riscvSingle.scala 527:21:@630.4]
  wire [31:0] alu_io_b; // @[riscvSingle.scala 527:21:@630.4]
  wire [3:0] alu_io_aluControl; // @[riscvSingle.scala 527:21:@630.4]
  wire [31:0] alu_io_out; // @[riscvSingle.scala 527:21:@630.4]
  wire  alu_io_zeroFlag; // @[riscvSingle.scala 527:21:@630.4]
  wire  alu_io_lessThanFlag; // @[riscvSingle.scala 527:21:@630.4]
  wire  alu_io_greaterThanFlag; // @[riscvSingle.scala 527:21:@630.4]
  wire [11:0] ext1_io_instr12; // @[riscvSingle.scala 529:22:@633.4]
  wire [19:0] ext1_io_instr20; // @[riscvSingle.scala 529:22:@633.4]
  wire [1:0] ext1_io_immSrc; // @[riscvSingle.scala 529:22:@633.4]
  wire [31:0] ext1_io_extImm; // @[riscvSingle.scala 529:22:@633.4]
  wire [11:0] ext2_io_instr12; // @[riscvSingle.scala 530:22:@636.4]
  wire [19:0] ext2_io_instr20; // @[riscvSingle.scala 530:22:@636.4]
  wire [1:0] ext2_io_immSrc; // @[riscvSingle.scala 530:22:@636.4]
  wire [31:0] ext2_io_extImm; // @[riscvSingle.scala 530:22:@636.4]
  wire  _T_47; // @[riscvSingle.scala 543:30:@649.4]
  wire  _T_48; // @[riscvSingle.scala 543:44:@650.4]
  wire [5:0] _T_49; // @[riscvSingle.scala 543:57:@651.4]
  wire [3:0] _T_50; // @[riscvSingle.scala 543:74:@652.4]
  wire [9:0] _T_51; // @[Cat.scala 30:58:@653.4]
  wire [1:0] _T_52; // @[Cat.scala 30:58:@654.4]
  wire [7:0] _T_55; // @[riscvSingle.scala 544:42:@658.4]
  wire  _T_56; // @[riscvSingle.scala 544:59:@659.4]
  wire [9:0] _T_57; // @[riscvSingle.scala 544:73:@660.4]
  wire [19:0] _T_60; // @[Cat.scala 30:58:@663.4]
  wire [19:0] _T_61; // @[riscvSingle.scala 545:28:@665.4]
  wire [31:0] _T_63; // @[Cat.scala 30:58:@666.4]
  wire [31:0] auiImm; // @[riscvSingle.scala 545:49:@667.4]
  wire  _T_66; // @[riscvSingle.scala 553:28:@677.4]
  wire  _T_68; // @[riscvSingle.scala 553:28:@678.4]
  wire [31:0] extImm; // @[riscvSingle.scala 553:18:@679.4]
  reg [31:0] pcReg; // @[riscvSingle.scala 557:25:@681.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_77; // @[riscvSingle.scala 562:22:@686.4]
  wire [31:0] pcPlus4; // @[riscvSingle.scala 562:22:@687.4]
  wire [31:0] _T_82; // @[riscvSingle.scala 564:40:@692.4]
  wire [31:0] branchExtImm; // @[riscvSingle.scala 535:28:@643.4 riscvSingle.scala 552:18:@676.4]
  wire [32:0] _T_83; // @[riscvSingle.scala 564:30:@693.4]
  wire [31:0] _T_84; // @[riscvSingle.scala 564:30:@694.4]
  wire [31:0] pcBranch; // @[riscvSingle.scala 564:30:@695.4]
  wire [31:0] _T_86; // @[riscvSingle.scala 565:31:@697.4]
  wire [31:0] pcRegBranch; // @[riscvSingle.scala 565:38:@698.4]
  wire  _T_89; // @[riscvSingle.scala 566:31:@700.4]
  wire  _T_90; // @[riscvSingle.scala 566:35:@701.4]
  wire  _T_92; // @[riscvSingle.scala 566:35:@702.4]
  wire  _T_93; // @[riscvSingle.scala 566:70:@703.4]
  wire  _T_94; // @[riscvSingle.scala 566:74:@704.4]
  wire  _T_96; // @[riscvSingle.scala 566:74:@705.4]
  wire [31:0] _T_97; // @[riscvSingle.scala 566:89:@706.4]
  wire [31:0] _T_98; // @[riscvSingle.scala 566:57:@707.4]
  wire [31:0] pcNext; // @[riscvSingle.scala 566:18:@708.4]
  wire [6:0] _T_100; // @[riscvSingle.scala 572:28:@712.4]
  wire [4:0] _T_101; // @[riscvSingle.scala 572:45:@713.4]
  wire [11:0] _T_102; // @[Cat.scala 30:58:@714.4]
  wire [11:0] _T_103; // @[riscvSingle.scala 572:54:@715.4]
  wire  _T_104; // @[riscvSingle.scala 573:40:@717.4]
  wire  _T_106; // @[riscvSingle.scala 573:40:@718.4]
  wire [31:0] memImm; // @[riscvSingle.scala 534:22:@642.4 riscvSingle.scala 572:12:@716.4]
  wire [31:0] _T_107; // @[riscvSingle.scala 573:27:@719.4]
  wire [32:0] _T_108; // @[riscvSingle.scala 573:70:@720.4]
  wire [31:0] _T_109; // @[riscvSingle.scala 573:70:@721.4]
  wire [31:0] _T_110; // @[riscvSingle.scala 573:70:@722.4]
  wire  _T_112; // @[riscvSingle.scala 576:37:@725.4]
  wire  _T_113; // @[riscvSingle.scala 576:41:@726.4]
  wire  _T_115; // @[riscvSingle.scala 576:41:@727.4]
  wire [4:0] _T_117; // @[riscvSingle.scala 576:67:@728.4]
  wire  _T_119; // @[riscvSingle.scala 577:37:@731.4]
  wire  _T_120; // @[riscvSingle.scala 577:41:@732.4]
  wire  _T_122; // @[riscvSingle.scala 577:41:@733.4]
  wire [4:0] _T_124; // @[riscvSingle.scala 577:71:@735.4]
  wire  _T_126; // @[riscvSingle.scala 578:34:@738.4]
  wire  _T_127; // @[riscvSingle.scala 578:38:@739.4]
  wire  _T_129; // @[riscvSingle.scala 578:38:@740.4]
  wire [31:0] _T_134; // @[riscvSingle.scala 578:63:@744.4]
  wire  _T_142; // @[riscvSingle.scala 603:31:@759.4]
  wire  _T_144; // @[riscvSingle.scala 603:31:@760.4]
  wire [11:0] jumpImm; // @[riscvSingle.scala 532:23:@640.4 riscvSingle.scala 544:13:@664.4]
  regfile rf ( // @[riscvSingle.scala 525:20:@627.4]
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
  alu alu ( // @[riscvSingle.scala 527:21:@630.4]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_aluControl(alu_io_aluControl),
    .io_out(alu_io_out),
    .io_zeroFlag(alu_io_zeroFlag),
    .io_lessThanFlag(alu_io_lessThanFlag),
    .io_greaterThanFlag(alu_io_greaterThanFlag)
  );
  extend ext1 ( // @[riscvSingle.scala 529:22:@633.4]
    .io_instr12(ext1_io_instr12),
    .io_instr20(ext1_io_instr20),
    .io_immSrc(ext1_io_immSrc),
    .io_extImm(ext1_io_extImm)
  );
  extend ext2 ( // @[riscvSingle.scala 530:22:@636.4]
    .io_instr12(ext2_io_instr12),
    .io_instr20(ext2_io_instr20),
    .io_immSrc(ext2_io_immSrc),
    .io_extImm(ext2_io_extImm)
  );
  assign _T_47 = io_instr[31]; // @[riscvSingle.scala 543:30:@649.4]
  assign _T_48 = io_instr[7]; // @[riscvSingle.scala 543:44:@650.4]
  assign _T_49 = io_instr[30:25]; // @[riscvSingle.scala 543:57:@651.4]
  assign _T_50 = io_instr[11:8]; // @[riscvSingle.scala 543:74:@652.4]
  assign _T_51 = {_T_49,_T_50}; // @[Cat.scala 30:58:@653.4]
  assign _T_52 = {_T_47,_T_48}; // @[Cat.scala 30:58:@654.4]
  assign _T_55 = io_instr[19:12]; // @[riscvSingle.scala 544:42:@658.4]
  assign _T_56 = io_instr[20]; // @[riscvSingle.scala 544:59:@659.4]
  assign _T_57 = io_instr[30:21]; // @[riscvSingle.scala 544:73:@660.4]
  assign _T_60 = {_T_47,_T_55,_T_56,_T_57}; // @[Cat.scala 30:58:@663.4]
  assign _T_61 = io_instr[31:12]; // @[riscvSingle.scala 545:28:@665.4]
  assign _T_63 = {_T_61,12'h0}; // @[Cat.scala 30:58:@666.4]
  assign auiImm = $signed(_T_63); // @[riscvSingle.scala 545:49:@667.4]
  assign _T_66 = ~ io_pcSrc; // @[riscvSingle.scala 553:28:@677.4]
  assign _T_68 = _T_66 == 1'h0; // @[riscvSingle.scala 553:28:@678.4]
  assign extImm = _T_68 ? $signed(auiImm) : $signed(ext2_io_extImm); // @[riscvSingle.scala 553:18:@679.4]
  assign _T_77 = pcReg + 32'h4; // @[riscvSingle.scala 562:22:@686.4]
  assign pcPlus4 = pcReg + 32'h4; // @[riscvSingle.scala 562:22:@687.4]
  assign _T_82 = $signed(pcPlus4); // @[riscvSingle.scala 564:40:@692.4]
  assign branchExtImm = ext1_io_extImm; // @[riscvSingle.scala 535:28:@643.4 riscvSingle.scala 552:18:@676.4]
  assign _T_83 = $signed(branchExtImm) + $signed(_T_82); // @[riscvSingle.scala 564:30:@693.4]
  assign _T_84 = $signed(branchExtImm) + $signed(_T_82); // @[riscvSingle.scala 564:30:@694.4]
  assign pcBranch = $signed(_T_84); // @[riscvSingle.scala 564:30:@695.4]
  assign _T_86 = $unsigned(alu_io_out); // @[riscvSingle.scala 565:31:@697.4]
  assign pcRegBranch = _T_86 & 32'hfffffffe; // @[riscvSingle.scala 565:38:@698.4]
  assign _T_89 = io_branchSrc[1]; // @[riscvSingle.scala 566:31:@700.4]
  assign _T_90 = ~ _T_89; // @[riscvSingle.scala 566:35:@701.4]
  assign _T_92 = _T_90 == 1'h0; // @[riscvSingle.scala 566:35:@702.4]
  assign _T_93 = io_branchSrc[0]; // @[riscvSingle.scala 566:70:@703.4]
  assign _T_94 = ~ _T_93; // @[riscvSingle.scala 566:74:@704.4]
  assign _T_96 = _T_94 == 1'h0; // @[riscvSingle.scala 566:74:@705.4]
  assign _T_97 = $unsigned(pcBranch); // @[riscvSingle.scala 566:89:@706.4]
  assign _T_98 = _T_96 ? _T_97 : pcPlus4; // @[riscvSingle.scala 566:57:@707.4]
  assign pcNext = _T_92 ? pcRegBranch : _T_98; // @[riscvSingle.scala 566:18:@708.4]
  assign _T_100 = io_instr[31:25]; // @[riscvSingle.scala 572:28:@712.4]
  assign _T_101 = io_instr[11:7]; // @[riscvSingle.scala 572:45:@713.4]
  assign _T_102 = {_T_100,_T_101}; // @[Cat.scala 30:58:@714.4]
  assign _T_103 = $signed(_T_102); // @[riscvSingle.scala 572:54:@715.4]
  assign _T_104 = ~ io_memToReg; // @[riscvSingle.scala 573:40:@717.4]
  assign _T_106 = _T_104 == 1'h0; // @[riscvSingle.scala 573:40:@718.4]
  assign memImm = {{20{_T_103[11]}},_T_103}; // @[riscvSingle.scala 534:22:@642.4 riscvSingle.scala 572:12:@716.4]
  assign _T_107 = _T_106 ? $signed(extImm) : $signed(memImm); // @[riscvSingle.scala 573:27:@719.4]
  assign _T_108 = $signed(_T_107) + $signed(rf_io_regReadData1); // @[riscvSingle.scala 573:70:@720.4]
  assign _T_109 = $signed(_T_107) + $signed(rf_io_regReadData1); // @[riscvSingle.scala 573:70:@721.4]
  assign _T_110 = $signed(_T_109); // @[riscvSingle.scala 573:70:@722.4]
  assign _T_112 = io_regSrc[0]; // @[riscvSingle.scala 576:37:@725.4]
  assign _T_113 = ~ _T_112; // @[riscvSingle.scala 576:41:@726.4]
  assign _T_115 = _T_113 == 1'h0; // @[riscvSingle.scala 576:41:@727.4]
  assign _T_117 = io_instr[19:15]; // @[riscvSingle.scala 576:67:@728.4]
  assign _T_119 = io_regSrc[1]; // @[riscvSingle.scala 577:37:@731.4]
  assign _T_120 = ~ _T_119; // @[riscvSingle.scala 577:41:@732.4]
  assign _T_122 = _T_120 == 1'h0; // @[riscvSingle.scala 577:41:@733.4]
  assign _T_124 = io_instr[24:20]; // @[riscvSingle.scala 577:71:@735.4]
  assign _T_126 = io_regSrc[2]; // @[riscvSingle.scala 578:34:@738.4]
  assign _T_127 = ~ _T_126; // @[riscvSingle.scala 578:38:@739.4]
  assign _T_129 = _T_127 == 1'h0; // @[riscvSingle.scala 578:38:@740.4]
  assign _T_134 = _T_106 ? $signed(io_memReadData) : $signed(alu_io_out); // @[riscvSingle.scala 578:63:@744.4]
  assign _T_142 = ~ io_aluSrc; // @[riscvSingle.scala 603:31:@759.4]
  assign _T_144 = _T_142 == 1'h0; // @[riscvSingle.scala 603:31:@760.4]
  assign jumpImm = _T_60[11:0]; // @[riscvSingle.scala 532:23:@640.4 riscvSingle.scala 544:13:@664.4]
  assign io_pc = pcReg; // @[riscvSingle.scala 568:11:@711.4]
  assign io_memAddress = $unsigned(_T_110); // @[riscvSingle.scala 573:19:@724.4]
  assign io_memWriteData = rf_io_regReadData2; // @[riscvSingle.scala 584:21:@753.4]
  assign io_zeroFlag = alu_io_zeroFlag; // @[riscvSingle.scala 605:17:@764.4]
  assign io_lessThanFlag = alu_io_lessThanFlag; // @[riscvSingle.scala 606:21:@765.4]
  assign io_greaterThanFlag = alu_io_greaterThanFlag; // @[riscvSingle.scala 607:24:@766.4]
  assign rf_clock = clock; // @[:@628.4]
  assign rf_reset = reset; // @[:@629.4]
  assign rf_io_regWriteEnable = io_regWriteEnable; // @[riscvSingle.scala 579:26:@747.4]
  assign rf_io_regWriteAddress = io_instr[11:7]; // @[riscvSingle.scala 582:27:@751.4]
  assign rf_io_regWriteData = _T_129 ? $signed(_T_82) : $signed(_T_134); // @[riscvSingle.scala 583:24:@752.4]
  assign rf_io_regReadAddress1 = _T_115 ? 5'h1f : _T_117; // @[riscvSingle.scala 580:27:@748.4]
  assign rf_io_regReadAddress2 = _T_122 ? _T_101 : _T_124; // @[riscvSingle.scala 581:27:@749.4]
  assign alu_io_a = _T_68 ? $signed(_T_82) : $signed(rf_io_regReadData1); // @[riscvSingle.scala 602:14:@758.4]
  assign alu_io_b = _T_144 ? $signed(extImm) : $signed(rf_io_regReadData2); // @[riscvSingle.scala 603:14:@762.4]
  assign alu_io_aluControl = io_aluControl; // @[riscvSingle.scala 604:23:@763.4]
  assign ext1_io_instr12 = {_T_52,_T_51}; // @[riscvSingle.scala 546:21:@669.4]
  assign ext1_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 547:21:@670.4]
  assign ext1_io_immSrc = io_immSrc; // @[riscvSingle.scala 548:20:@671.4]
  assign ext2_io_instr12 = io_instr[31:20]; // @[riscvSingle.scala 549:21:@673.4]
  assign ext2_io_instr20 = {{8'd0}, jumpImm}; // @[riscvSingle.scala 550:21:@674.4]
  assign ext2_io_immSrc = io_immSrc; // @[riscvSingle.scala 551:20:@675.4]
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
module decoder( // @[:@768.2]
  input  [6:0] io_opcode, // @[:@771.4]
  input  [6:0] io_funct7, // @[:@771.4]
  input  [2:0] io_funct3, // @[:@771.4]
  output [2:0] io_regSrc, // @[:@771.4]
  output       io_regWriteEnable, // @[:@771.4]
  output [1:0] io_immSrc, // @[:@771.4]
  output       io_aluSrc, // @[:@771.4]
  output       io_pcSrc, // @[:@771.4]
  output [3:0] io_aluControl, // @[:@771.4]
  output       io_memWriteEnable, // @[:@771.4]
  output       io_memToReg, // @[:@771.4]
  output [1:0] io_branchSrc, // @[:@771.4]
  input        io_zeroFlag, // @[:@771.4]
  input        io_lessThanFlag, // @[:@771.4]
  input        io_greaterThanFlag // @[:@771.4]
);
  wire  _T_36; // @[riscvSingle.scala 208:20:@773.4]
  wire  _T_46; // @[riscvSingle.scala 220:24:@783.6]
  wire  _T_48; // @[riscvSingle.scala 221:28:@785.8]
  wire  _T_51; // @[riscvSingle.scala 223:34:@790.10]
  wire  _T_54; // @[riscvSingle.scala 225:34:@795.12]
  wire  _T_57; // @[riscvSingle.scala 227:34:@800.14]
  wire  _T_60; // @[riscvSingle.scala 229:34:@805.16]
  wire  _T_63; // @[riscvSingle.scala 231:34:@810.18]
  wire  _T_66; // @[riscvSingle.scala 233:34:@815.20]
  wire  _T_69; // @[riscvSingle.scala 235:34:@820.22]
  wire [3:0] _GEN_0; // @[riscvSingle.scala 235:48:@821.22]
  wire [3:0] _GEN_1; // @[riscvSingle.scala 233:48:@816.20]
  wire [3:0] _GEN_2; // @[riscvSingle.scala 231:48:@811.18]
  wire [3:0] _GEN_3; // @[riscvSingle.scala 229:48:@806.16]
  wire [3:0] _GEN_4; // @[riscvSingle.scala 227:48:@801.14]
  wire [3:0] _GEN_5; // @[riscvSingle.scala 225:48:@796.12]
  wire [3:0] _GEN_6; // @[riscvSingle.scala 223:48:@791.10]
  wire [3:0] _GEN_7; // @[riscvSingle.scala 221:42:@786.8]
  wire  _T_73; // @[riscvSingle.scala 240:30:@829.8]
  wire [3:0] _GEN_8; // @[riscvSingle.scala 243:47:@837.12]
  wire [3:0] _GEN_9; // @[riscvSingle.scala 241:41:@832.10]
  wire  _T_82; // @[riscvSingle.scala 248:30:@845.10]
  wire [3:0] _GEN_10; // @[riscvSingle.scala 251:47:@853.14]
  wire [3:0] _GEN_11; // @[riscvSingle.scala 249:43:@848.12]
  wire [3:0] _GEN_12; // @[riscvSingle.scala 248:47:@846.10]
  wire [3:0] _GEN_13; // @[riscvSingle.scala 240:47:@830.8]
  wire [3:0] _GEN_14; // @[riscvSingle.scala 220:42:@784.6]
  wire  _T_92; // @[riscvSingle.scala 259:26:@865.6]
  wire  _T_103; // @[riscvSingle.scala 271:26:@878.8]
  wire [5:0] _T_112; // @[riscvSingle.scala 283:24:@888.10]
  wire  _T_114; // @[riscvSingle.scala 283:30:@889.10]
  wire [3:0] _GEN_15; // @[riscvSingle.scala 284:41:@892.12]
  wire [2:0] _GEN_17; // @[riscvSingle.scala 300:48:@926.22]
  wire [2:0] _GEN_18; // @[riscvSingle.scala 298:48:@921.20]
  wire [2:0] _GEN_19; // @[riscvSingle.scala 296:48:@916.18]
  wire [3:0] _GEN_20; // @[riscvSingle.scala 294:48:@911.16]
  wire [3:0] _GEN_21; // @[riscvSingle.scala 292:48:@906.14]
  wire [3:0] _GEN_22; // @[riscvSingle.scala 290:42:@901.12]
  wire [3:0] _GEN_23; // @[riscvSingle.scala 283:46:@890.10]
  wire  _T_142; // @[riscvSingle.scala 308:26:@940.10]
  wire  _T_153; // @[riscvSingle.scala 320:26:@953.12]
  wire  _T_164; // @[riscvSingle.scala 332:26:@966.14]
  wire  _T_177; // @[riscvSingle.scala 344:37:@978.16]
  wire  _T_182; // @[riscvSingle.scala 346:57:@984.18]
  wire  _T_183; // @[riscvSingle.scala 346:43:@985.18]
  wire  _T_189; // @[riscvSingle.scala 348:43:@992.20]
  wire  _T_195; // @[riscvSingle.scala 350:43:@999.22]
  wire  _T_201; // @[riscvSingle.scala 352:43:@1006.24]
  wire  _T_207; // @[riscvSingle.scala 354:43:@1013.26]
  wire  _GEN_25; // @[riscvSingle.scala 352:70:@1007.24]
  wire  _GEN_26; // @[riscvSingle.scala 350:73:@1000.22]
  wire  _GEN_27; // @[riscvSingle.scala 348:70:@993.20]
  wire  _GEN_28; // @[riscvSingle.scala 346:66:@986.18]
  wire  _GEN_29; // @[riscvSingle.scala 344:59:@979.16]
  wire  _T_211; // @[riscvSingle.scala 360:26:@1022.16]
  wire  _T_222; // @[riscvSingle.scala 372:26:@1035.18]
  wire  _T_233; // @[riscvSingle.scala 384:26:@1048.20]
  wire  _T_244; // @[riscvSingle.scala 396:26:@1061.22]
  wire  _GEN_33; // @[riscvSingle.scala 384:44:@1049.20]
  wire [2:0] _GEN_34; // @[riscvSingle.scala 372:44:@1036.18]
  wire  _GEN_36; // @[riscvSingle.scala 372:44:@1036.18]
  wire [1:0] _GEN_38; // @[riscvSingle.scala 372:44:@1036.18]
  wire [2:0] _GEN_39; // @[riscvSingle.scala 360:44:@1023.16]
  wire [1:0] _GEN_40; // @[riscvSingle.scala 360:44:@1023.16]
  wire  _GEN_41; // @[riscvSingle.scala 360:44:@1023.16]
  wire  _GEN_43; // @[riscvSingle.scala 360:44:@1023.16]
  wire [1:0] _GEN_44; // @[riscvSingle.scala 360:44:@1023.16]
  wire [1:0] _GEN_45; // @[riscvSingle.scala 360:44:@1023.16]
  wire [2:0] _GEN_46; // @[riscvSingle.scala 332:44:@967.14]
  wire [1:0] _GEN_47; // @[riscvSingle.scala 332:44:@967.14]
  wire  _GEN_48; // @[riscvSingle.scala 332:44:@967.14]
  wire  _GEN_50; // @[riscvSingle.scala 332:44:@967.14]
  wire [2:0] _GEN_51; // @[riscvSingle.scala 332:44:@967.14]
  wire [1:0] _GEN_52; // @[riscvSingle.scala 332:44:@967.14]
  wire [2:0] _GEN_53; // @[riscvSingle.scala 320:44:@954.12]
  wire [1:0] _GEN_54; // @[riscvSingle.scala 320:44:@954.12]
  wire  _GEN_55; // @[riscvSingle.scala 320:44:@954.12]
  wire  _GEN_57; // @[riscvSingle.scala 320:44:@954.12]
  wire [1:0] _GEN_59; // @[riscvSingle.scala 320:44:@954.12]
  wire [2:0] _GEN_60; // @[riscvSingle.scala 320:44:@954.12]
  wire [2:0] _GEN_61; // @[riscvSingle.scala 308:44:@941.10]
  wire [1:0] _GEN_62; // @[riscvSingle.scala 308:44:@941.10]
  wire  _GEN_63; // @[riscvSingle.scala 308:44:@941.10]
  wire  _GEN_66; // @[riscvSingle.scala 308:44:@941.10]
  wire  _GEN_67; // @[riscvSingle.scala 308:44:@941.10]
  wire [1:0] _GEN_68; // @[riscvSingle.scala 308:44:@941.10]
  wire [2:0] _GEN_69; // @[riscvSingle.scala 308:44:@941.10]
  wire [2:0] _GEN_70; // @[riscvSingle.scala 271:44:@879.8]
  wire [1:0] _GEN_71; // @[riscvSingle.scala 271:44:@879.8]
  wire  _GEN_72; // @[riscvSingle.scala 271:44:@879.8]
  wire  _GEN_74; // @[riscvSingle.scala 271:44:@879.8]
  wire  _GEN_75; // @[riscvSingle.scala 271:44:@879.8]
  wire  _GEN_76; // @[riscvSingle.scala 271:44:@879.8]
  wire [1:0] _GEN_77; // @[riscvSingle.scala 271:44:@879.8]
  wire [3:0] _GEN_78; // @[riscvSingle.scala 271:44:@879.8]
  wire [2:0] _GEN_79; // @[riscvSingle.scala 259:43:@866.6]
  wire [1:0] _GEN_80; // @[riscvSingle.scala 259:43:@866.6]
  wire  _GEN_81; // @[riscvSingle.scala 259:43:@866.6]
  wire  _GEN_83; // @[riscvSingle.scala 259:43:@866.6]
  wire  _GEN_84; // @[riscvSingle.scala 259:43:@866.6]
  wire  _GEN_85; // @[riscvSingle.scala 259:43:@866.6]
  wire [1:0] _GEN_86; // @[riscvSingle.scala 259:43:@866.6]
  wire [3:0] _GEN_87; // @[riscvSingle.scala 259:43:@866.6]
  assign _T_36 = io_opcode == 7'h33; // @[riscvSingle.scala 208:20:@773.4]
  assign _T_46 = io_funct7 == 7'h0; // @[riscvSingle.scala 220:24:@783.6]
  assign _T_48 = io_funct3 == 3'h0; // @[riscvSingle.scala 221:28:@785.8]
  assign _T_51 = io_funct3 == 3'h1; // @[riscvSingle.scala 223:34:@790.10]
  assign _T_54 = io_funct3 == 3'h2; // @[riscvSingle.scala 225:34:@795.12]
  assign _T_57 = io_funct3 == 3'h3; // @[riscvSingle.scala 227:34:@800.14]
  assign _T_60 = io_funct3 == 3'h4; // @[riscvSingle.scala 229:34:@805.16]
  assign _T_63 = io_funct3 == 3'h5; // @[riscvSingle.scala 231:34:@810.18]
  assign _T_66 = io_funct3 == 3'h6; // @[riscvSingle.scala 233:34:@815.20]
  assign _T_69 = io_funct3 == 3'h7; // @[riscvSingle.scala 235:34:@820.22]
  assign _GEN_0 = _T_69 ? 4'h0 : 4'hf; // @[riscvSingle.scala 235:48:@821.22]
  assign _GEN_1 = _T_66 ? 4'h1 : _GEN_0; // @[riscvSingle.scala 233:48:@816.20]
  assign _GEN_2 = _T_63 ? 4'h7 : _GEN_1; // @[riscvSingle.scala 231:48:@811.18]
  assign _GEN_3 = _T_60 ? 4'h6 : _GEN_2; // @[riscvSingle.scala 229:48:@806.16]
  assign _GEN_4 = _T_57 ? 4'h5 : _GEN_3; // @[riscvSingle.scala 227:48:@801.14]
  assign _GEN_5 = _T_54 ? 4'h9 : _GEN_4; // @[riscvSingle.scala 225:48:@796.12]
  assign _GEN_6 = _T_51 ? 4'h3 : _GEN_5; // @[riscvSingle.scala 223:48:@791.10]
  assign _GEN_7 = _T_48 ? 4'h2 : _GEN_6; // @[riscvSingle.scala 221:42:@786.8]
  assign _T_73 = io_funct7 == 7'h1; // @[riscvSingle.scala 240:30:@829.8]
  assign _GEN_8 = _T_60 ? 4'ha : 4'hf; // @[riscvSingle.scala 243:47:@837.12]
  assign _GEN_9 = _T_48 ? 4'h8 : _GEN_8; // @[riscvSingle.scala 241:41:@832.10]
  assign _T_82 = io_funct7 == 7'h20; // @[riscvSingle.scala 248:30:@845.10]
  assign _GEN_10 = _T_48 ? 4'hc : 4'hf; // @[riscvSingle.scala 251:47:@853.14]
  assign _GEN_11 = _T_63 ? 4'h4 : _GEN_10; // @[riscvSingle.scala 249:43:@848.12]
  assign _GEN_12 = _T_82 ? _GEN_11 : 4'hf; // @[riscvSingle.scala 248:47:@846.10]
  assign _GEN_13 = _T_73 ? _GEN_9 : _GEN_12; // @[riscvSingle.scala 240:47:@830.8]
  assign _GEN_14 = _T_46 ? _GEN_7 : _GEN_13; // @[riscvSingle.scala 220:42:@784.6]
  assign _T_92 = io_opcode == 7'h17; // @[riscvSingle.scala 259:26:@865.6]
  assign _T_103 = io_opcode == 7'h13; // @[riscvSingle.scala 271:26:@878.8]
  assign _T_112 = io_funct7[6:1]; // @[riscvSingle.scala 283:24:@888.10]
  assign _T_114 = _T_112 == 6'h10; // @[riscvSingle.scala 283:30:@889.10]
  assign _GEN_15 = _T_63 ? 4'h4 : 4'hf; // @[riscvSingle.scala 284:41:@892.12]
  assign _GEN_17 = _T_63 ? 3'h7 : {{2'd0}, _T_66}; // @[riscvSingle.scala 300:48:@926.22]
  assign _GEN_18 = _T_60 ? 3'h6 : _GEN_17; // @[riscvSingle.scala 298:48:@921.20]
  assign _GEN_19 = _T_57 ? 3'h5 : _GEN_18; // @[riscvSingle.scala 296:48:@916.18]
  assign _GEN_20 = _T_54 ? 4'h9 : {{1'd0}, _GEN_19}; // @[riscvSingle.scala 294:48:@911.16]
  assign _GEN_21 = _T_51 ? 4'h3 : _GEN_20; // @[riscvSingle.scala 292:48:@906.14]
  assign _GEN_22 = _T_48 ? 4'h2 : _GEN_21; // @[riscvSingle.scala 290:42:@901.12]
  assign _GEN_23 = _T_114 ? _GEN_15 : _GEN_22; // @[riscvSingle.scala 283:46:@890.10]
  assign _T_142 = io_opcode == 7'h3; // @[riscvSingle.scala 308:26:@940.10]
  assign _T_153 = io_opcode == 7'h23; // @[riscvSingle.scala 320:26:@953.12]
  assign _T_164 = io_opcode == 7'h63; // @[riscvSingle.scala 332:26:@966.14]
  assign _T_177 = _T_48 & io_zeroFlag; // @[riscvSingle.scala 344:37:@978.16]
  assign _T_182 = io_zeroFlag == 1'h0; // @[riscvSingle.scala 346:57:@984.18]
  assign _T_183 = _T_51 & _T_182; // @[riscvSingle.scala 346:43:@985.18]
  assign _T_189 = _T_60 & io_lessThanFlag; // @[riscvSingle.scala 348:43:@992.20]
  assign _T_195 = _T_63 & io_greaterThanFlag; // @[riscvSingle.scala 350:43:@999.22]
  assign _T_201 = _T_66 & io_lessThanFlag; // @[riscvSingle.scala 352:43:@1006.24]
  assign _T_207 = _T_69 & io_greaterThanFlag; // @[riscvSingle.scala 354:43:@1013.26]
  assign _GEN_25 = _T_201 ? 1'h1 : _T_207; // @[riscvSingle.scala 352:70:@1007.24]
  assign _GEN_26 = _T_195 ? 1'h1 : _GEN_25; // @[riscvSingle.scala 350:73:@1000.22]
  assign _GEN_27 = _T_189 ? 1'h1 : _GEN_26; // @[riscvSingle.scala 348:70:@993.20]
  assign _GEN_28 = _T_183 ? 1'h1 : _GEN_27; // @[riscvSingle.scala 346:66:@986.18]
  assign _GEN_29 = _T_177 ? 1'h1 : _GEN_28; // @[riscvSingle.scala 344:59:@979.16]
  assign _T_211 = io_opcode == 7'h6f; // @[riscvSingle.scala 360:26:@1022.16]
  assign _T_222 = io_opcode == 7'h67; // @[riscvSingle.scala 372:26:@1035.18]
  assign _T_233 = io_opcode == 7'h73; // @[riscvSingle.scala 384:26:@1048.20]
  assign _T_244 = io_opcode == 7'h53; // @[riscvSingle.scala 396:26:@1061.22]
  assign _GEN_33 = _T_233 ? 1'h0 : _T_244; // @[riscvSingle.scala 384:44:@1049.20]
  assign _GEN_34 = _T_222 ? 3'h4 : 3'h0; // @[riscvSingle.scala 372:44:@1036.18]
  assign _GEN_36 = _T_222 ? 1'h1 : _GEN_33; // @[riscvSingle.scala 372:44:@1036.18]
  assign _GEN_38 = _T_222 ? 2'h2 : 2'h0; // @[riscvSingle.scala 372:44:@1036.18]
  assign _GEN_39 = _T_211 ? 3'h4 : _GEN_34; // @[riscvSingle.scala 360:44:@1023.16]
  assign _GEN_40 = _T_211 ? 2'h2 : 2'h0; // @[riscvSingle.scala 360:44:@1023.16]
  assign _GEN_41 = _T_211 ? 1'h1 : _GEN_36; // @[riscvSingle.scala 360:44:@1023.16]
  assign _GEN_43 = _T_211 ? 1'h1 : _T_222; // @[riscvSingle.scala 360:44:@1023.16]
  assign _GEN_44 = _T_211 ? 2'h1 : _GEN_38; // @[riscvSingle.scala 360:44:@1023.16]
  assign _GEN_45 = _T_211 ? 2'h0 : _GEN_38; // @[riscvSingle.scala 360:44:@1023.16]
  assign _GEN_46 = _T_164 ? 3'h0 : _GEN_39; // @[riscvSingle.scala 332:44:@967.14]
  assign _GEN_47 = _T_164 ? 2'h1 : _GEN_40; // @[riscvSingle.scala 332:44:@967.14]
  assign _GEN_48 = _T_164 ? 1'h0 : _GEN_41; // @[riscvSingle.scala 332:44:@967.14]
  assign _GEN_50 = _T_164 ? 1'h0 : _GEN_43; // @[riscvSingle.scala 332:44:@967.14]
  assign _GEN_51 = _T_164 ? 3'h4 : {{1'd0}, _GEN_45}; // @[riscvSingle.scala 332:44:@967.14]
  assign _GEN_52 = _T_164 ? {{1'd0}, _GEN_29} : _GEN_44; // @[riscvSingle.scala 332:44:@967.14]
  assign _GEN_53 = _T_153 ? 3'h0 : _GEN_46; // @[riscvSingle.scala 320:44:@954.12]
  assign _GEN_54 = _T_153 ? 2'h0 : _GEN_47; // @[riscvSingle.scala 320:44:@954.12]
  assign _GEN_55 = _T_153 ? 1'h1 : _GEN_48; // @[riscvSingle.scala 320:44:@954.12]
  assign _GEN_57 = _T_153 ? 1'h0 : _GEN_50; // @[riscvSingle.scala 320:44:@954.12]
  assign _GEN_59 = _T_153 ? 2'h0 : _GEN_52; // @[riscvSingle.scala 320:44:@954.12]
  assign _GEN_60 = _T_153 ? 3'h0 : _GEN_51; // @[riscvSingle.scala 320:44:@954.12]
  assign _GEN_61 = _T_142 ? 3'h0 : _GEN_53; // @[riscvSingle.scala 308:44:@941.10]
  assign _GEN_62 = _T_142 ? 2'h0 : _GEN_54; // @[riscvSingle.scala 308:44:@941.10]
  assign _GEN_63 = _T_142 ? 1'h1 : _GEN_55; // @[riscvSingle.scala 308:44:@941.10]
  assign _GEN_66 = _T_142 ? 1'h1 : _GEN_57; // @[riscvSingle.scala 308:44:@941.10]
  assign _GEN_67 = _T_142 ? 1'h0 : _T_153; // @[riscvSingle.scala 308:44:@941.10]
  assign _GEN_68 = _T_142 ? 2'h0 : _GEN_59; // @[riscvSingle.scala 308:44:@941.10]
  assign _GEN_69 = _T_142 ? 3'h2 : _GEN_60; // @[riscvSingle.scala 308:44:@941.10]
  assign _GEN_70 = _T_103 ? 3'h0 : _GEN_61; // @[riscvSingle.scala 271:44:@879.8]
  assign _GEN_71 = _T_103 ? 2'h0 : _GEN_62; // @[riscvSingle.scala 271:44:@879.8]
  assign _GEN_72 = _T_103 ? 1'h1 : _GEN_63; // @[riscvSingle.scala 271:44:@879.8]
  assign _GEN_74 = _T_103 ? 1'h0 : _T_142; // @[riscvSingle.scala 271:44:@879.8]
  assign _GEN_75 = _T_103 ? 1'h1 : _GEN_66; // @[riscvSingle.scala 271:44:@879.8]
  assign _GEN_76 = _T_103 ? 1'h0 : _GEN_67; // @[riscvSingle.scala 271:44:@879.8]
  assign _GEN_77 = _T_103 ? 2'h0 : _GEN_68; // @[riscvSingle.scala 271:44:@879.8]
  assign _GEN_78 = _T_103 ? _GEN_23 : {{1'd0}, _GEN_69}; // @[riscvSingle.scala 271:44:@879.8]
  assign _GEN_79 = _T_92 ? 3'h0 : _GEN_70; // @[riscvSingle.scala 259:43:@866.6]
  assign _GEN_80 = _T_92 ? 2'h2 : _GEN_71; // @[riscvSingle.scala 259:43:@866.6]
  assign _GEN_81 = _T_92 ? 1'h1 : _GEN_72; // @[riscvSingle.scala 259:43:@866.6]
  assign _GEN_83 = _T_92 ? 1'h0 : _GEN_74; // @[riscvSingle.scala 259:43:@866.6]
  assign _GEN_84 = _T_92 ? 1'h1 : _GEN_75; // @[riscvSingle.scala 259:43:@866.6]
  assign _GEN_85 = _T_92 ? 1'h0 : _GEN_76; // @[riscvSingle.scala 259:43:@866.6]
  assign _GEN_86 = _T_92 ? 2'h0 : _GEN_77; // @[riscvSingle.scala 259:43:@866.6]
  assign _GEN_87 = _T_92 ? 4'h2 : _GEN_78; // @[riscvSingle.scala 259:43:@866.6]
  assign io_regSrc = _T_36 ? 3'h0 : _GEN_79; // @[riscvSingle.scala 209:19:@775.6 riscvSingle.scala 260:19:@867.8 riscvSingle.scala 272:19:@880.10 riscvSingle.scala 309:19:@942.12 riscvSingle.scala 321:19:@955.14 riscvSingle.scala 333:19:@968.16 riscvSingle.scala 361:19:@1024.18 riscvSingle.scala 373:19:@1037.20 riscvSingle.scala 385:19:@1050.22 riscvSingle.scala 397:19:@1063.24 riscvSingle.scala 422:19:@1074.24]
  assign io_regWriteEnable = _T_36 ? 1'h1 : _GEN_84; // @[riscvSingle.scala 214:27:@780.6 riscvSingle.scala 265:27:@872.8 riscvSingle.scala 277:27:@885.10 riscvSingle.scala 314:27:@947.12 riscvSingle.scala 326:27:@960.14 riscvSingle.scala 338:27:@973.16 riscvSingle.scala 366:27:@1029.18 riscvSingle.scala 378:27:@1042.20 riscvSingle.scala 390:27:@1055.22 riscvSingle.scala 402:27:@1068.24 riscvSingle.scala 427:27:@1079.24]
  assign io_immSrc = _T_36 ? 2'h0 : _GEN_80; // @[riscvSingle.scala 210:19:@776.6 riscvSingle.scala 261:19:@868.8 riscvSingle.scala 273:19:@881.10 riscvSingle.scala 310:19:@943.12 riscvSingle.scala 322:19:@956.14 riscvSingle.scala 334:19:@969.16 riscvSingle.scala 362:19:@1025.18 riscvSingle.scala 374:19:@1038.20 riscvSingle.scala 386:19:@1051.22 riscvSingle.scala 398:19:@1064.24 riscvSingle.scala 423:19:@1075.24]
  assign io_aluSrc = _T_36 ? 1'h0 : _GEN_81; // @[riscvSingle.scala 211:19:@777.6 riscvSingle.scala 262:19:@869.8 riscvSingle.scala 274:19:@882.10 riscvSingle.scala 311:19:@944.12 riscvSingle.scala 323:19:@957.14 riscvSingle.scala 335:19:@970.16 riscvSingle.scala 363:19:@1026.18 riscvSingle.scala 375:19:@1039.20 riscvSingle.scala 387:19:@1052.22 riscvSingle.scala 399:19:@1065.24 riscvSingle.scala 424:19:@1076.24]
  assign io_pcSrc = _T_36 ? 1'h0 : _T_92; // @[riscvSingle.scala 212:18:@778.6 riscvSingle.scala 263:18:@870.8 riscvSingle.scala 275:18:@883.10 riscvSingle.scala 312:18:@945.12 riscvSingle.scala 324:18:@958.14 riscvSingle.scala 336:18:@971.16 riscvSingle.scala 364:18:@1027.18 riscvSingle.scala 376:18:@1040.20 riscvSingle.scala 388:18:@1053.22 riscvSingle.scala 400:18:@1066.24 riscvSingle.scala 425:18:@1077.24]
  assign io_aluControl = _T_36 ? _GEN_14 : _GEN_87; // @[riscvSingle.scala 222:31:@787.10 riscvSingle.scala 224:31:@792.12 riscvSingle.scala 226:31:@797.14 riscvSingle.scala 228:31:@802.16 riscvSingle.scala 230:31:@807.18 riscvSingle.scala 232:31:@812.20 riscvSingle.scala 234:31:@817.22 riscvSingle.scala 236:31:@822.24 riscvSingle.scala 238:31:@825.24 riscvSingle.scala 242:31:@833.12 riscvSingle.scala 244:31:@838.14 riscvSingle.scala 246:31:@841.14 riscvSingle.scala 250:31:@849.14 riscvSingle.scala 252:31:@854.16 riscvSingle.scala 254:31:@857.16 riscvSingle.scala 257:27:@861.12 riscvSingle.scala 268:23:@875.8 riscvSingle.scala 285:31:@893.14 riscvSingle.scala 287:31:@896.14 riscvSingle.scala 291:31:@902.14 riscvSingle.scala 293:31:@907.16 riscvSingle.scala 295:31:@912.18 riscvSingle.scala 297:31:@917.20 riscvSingle.scala 299:31:@922.22 riscvSingle.scala 301:31:@927.24 riscvSingle.scala 303:31:@932.26 riscvSingle.scala 305:31:@935.26 riscvSingle.scala 317:23:@950.12 riscvSingle.scala 329:23:@963.14 riscvSingle.scala 340:23:@975.16 riscvSingle.scala 369:23:@1032.18 riscvSingle.scala 381:23:@1045.20 riscvSingle.scala 393:23:@1058.22 riscvSingle.scala 405:23:@1071.24 riscvSingle.scala 430:23:@1082.24]
  assign io_memWriteEnable = _T_36 ? 1'h0 : _GEN_85; // @[riscvSingle.scala 215:27:@781.6 riscvSingle.scala 266:27:@873.8 riscvSingle.scala 278:27:@886.10 riscvSingle.scala 315:27:@948.12 riscvSingle.scala 327:27:@961.14 riscvSingle.scala 339:27:@974.16 riscvSingle.scala 367:27:@1030.18 riscvSingle.scala 379:27:@1043.20 riscvSingle.scala 391:27:@1056.22 riscvSingle.scala 403:27:@1069.24 riscvSingle.scala 428:27:@1080.24]
  assign io_memToReg = _T_36 ? 1'h0 : _GEN_83; // @[riscvSingle.scala 213:21:@779.6 riscvSingle.scala 264:21:@871.8 riscvSingle.scala 276:21:@884.10 riscvSingle.scala 313:21:@946.12 riscvSingle.scala 325:21:@959.14 riscvSingle.scala 337:21:@972.16 riscvSingle.scala 365:21:@1028.18 riscvSingle.scala 377:21:@1041.20 riscvSingle.scala 389:21:@1054.22 riscvSingle.scala 401:21:@1067.24 riscvSingle.scala 426:21:@1078.24]
  assign io_branchSrc = _T_36 ? 2'h0 : _GEN_86; // @[riscvSingle.scala 216:22:@782.6 riscvSingle.scala 267:22:@874.8 riscvSingle.scala 279:22:@887.10 riscvSingle.scala 316:22:@949.12 riscvSingle.scala 328:22:@962.14 riscvSingle.scala 345:26:@980.18 riscvSingle.scala 347:26:@987.20 riscvSingle.scala 349:26:@994.22 riscvSingle.scala 351:26:@1001.24 riscvSingle.scala 353:26:@1008.26 riscvSingle.scala 355:26:@1015.28 riscvSingle.scala 357:26:@1018.28 riscvSingle.scala 368:22:@1031.18 riscvSingle.scala 380:22:@1044.20 riscvSingle.scala 392:22:@1057.22 riscvSingle.scala 404:22:@1070.24 riscvSingle.scala 429:22:@1081.24]
endmodule
module riscv( // @[:@1085.2]
  input         clock, // @[:@1086.4]
  input         reset, // @[:@1087.4]
  input  [31:0] io_instr, // @[:@1088.4]
  input  [31:0] io_memReadData, // @[:@1088.4]
  output [31:0] io_pc, // @[:@1088.4]
  output        io_memWriteEnable, // @[:@1088.4]
  output [31:0] io_memAddress, // @[:@1088.4]
  output [31:0] io_memWriteData // @[:@1088.4]
);
  wire  dp_clock; // @[riscvSingle.scala 58:20:@1090.4]
  wire  dp_reset; // @[riscvSingle.scala 58:20:@1090.4]
  wire [2:0] dp_io_regSrc; // @[riscvSingle.scala 58:20:@1090.4]
  wire  dp_io_regWriteEnable; // @[riscvSingle.scala 58:20:@1090.4]
  wire [1:0] dp_io_immSrc; // @[riscvSingle.scala 58:20:@1090.4]
  wire  dp_io_aluSrc; // @[riscvSingle.scala 58:20:@1090.4]
  wire  dp_io_pcSrc; // @[riscvSingle.scala 58:20:@1090.4]
  wire [3:0] dp_io_aluControl; // @[riscvSingle.scala 58:20:@1090.4]
  wire  dp_io_memToReg; // @[riscvSingle.scala 58:20:@1090.4]
  wire [31:0] dp_io_instr; // @[riscvSingle.scala 58:20:@1090.4]
  wire [31:0] dp_io_memReadData; // @[riscvSingle.scala 58:20:@1090.4]
  wire [1:0] dp_io_branchSrc; // @[riscvSingle.scala 58:20:@1090.4]
  wire [31:0] dp_io_pc; // @[riscvSingle.scala 58:20:@1090.4]
  wire [31:0] dp_io_memAddress; // @[riscvSingle.scala 58:20:@1090.4]
  wire [31:0] dp_io_memWriteData; // @[riscvSingle.scala 58:20:@1090.4]
  wire  dp_io_zeroFlag; // @[riscvSingle.scala 58:20:@1090.4]
  wire  dp_io_lessThanFlag; // @[riscvSingle.scala 58:20:@1090.4]
  wire  dp_io_greaterThanFlag; // @[riscvSingle.scala 58:20:@1090.4]
  wire [6:0] d_io_opcode; // @[riscvSingle.scala 59:19:@1093.4]
  wire [6:0] d_io_funct7; // @[riscvSingle.scala 59:19:@1093.4]
  wire [2:0] d_io_funct3; // @[riscvSingle.scala 59:19:@1093.4]
  wire [2:0] d_io_regSrc; // @[riscvSingle.scala 59:19:@1093.4]
  wire  d_io_regWriteEnable; // @[riscvSingle.scala 59:19:@1093.4]
  wire [1:0] d_io_immSrc; // @[riscvSingle.scala 59:19:@1093.4]
  wire  d_io_aluSrc; // @[riscvSingle.scala 59:19:@1093.4]
  wire  d_io_pcSrc; // @[riscvSingle.scala 59:19:@1093.4]
  wire [3:0] d_io_aluControl; // @[riscvSingle.scala 59:19:@1093.4]
  wire  d_io_memWriteEnable; // @[riscvSingle.scala 59:19:@1093.4]
  wire  d_io_memToReg; // @[riscvSingle.scala 59:19:@1093.4]
  wire [1:0] d_io_branchSrc; // @[riscvSingle.scala 59:19:@1093.4]
  wire  d_io_zeroFlag; // @[riscvSingle.scala 59:19:@1093.4]
  wire  d_io_lessThanFlag; // @[riscvSingle.scala 59:19:@1093.4]
  wire  d_io_greaterThanFlag; // @[riscvSingle.scala 59:19:@1093.4]
  datapath dp ( // @[riscvSingle.scala 58:20:@1090.4]
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
  decoder d ( // @[riscvSingle.scala 59:19:@1093.4]
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
  assign io_pc = dp_io_pc; // @[riscvSingle.scala 90:11:@1115.4]
  assign io_memWriteEnable = d_io_memWriteEnable; // @[riscvSingle.scala 91:23:@1116.4]
  assign io_memAddress = dp_io_memAddress; // @[riscvSingle.scala 92:19:@1117.4]
  assign io_memWriteData = dp_io_memWriteData; // @[riscvSingle.scala 93:21:@1118.4]
  assign dp_clock = clock; // @[:@1091.4]
  assign dp_reset = reset; // @[:@1092.4]
  assign dp_io_regSrc = d_io_regSrc; // @[riscvSingle.scala 77:18:@1105.4]
  assign dp_io_regWriteEnable = d_io_regWriteEnable; // @[riscvSingle.scala 78:26:@1106.4]
  assign dp_io_immSrc = d_io_immSrc; // @[riscvSingle.scala 79:18:@1107.4]
  assign dp_io_aluSrc = d_io_aluSrc; // @[riscvSingle.scala 80:18:@1108.4]
  assign dp_io_pcSrc = d_io_pcSrc; // @[riscvSingle.scala 81:17:@1109.4]
  assign dp_io_aluControl = d_io_aluControl; // @[riscvSingle.scala 82:22:@1110.4]
  assign dp_io_memToReg = d_io_memToReg; // @[riscvSingle.scala 83:20:@1111.4]
  assign dp_io_instr = io_instr; // @[riscvSingle.scala 84:17:@1112.4]
  assign dp_io_memReadData = io_memReadData; // @[riscvSingle.scala 85:23:@1113.4]
  assign dp_io_branchSrc = d_io_branchSrc; // @[riscvSingle.scala 86:21:@1114.4]
  assign d_io_opcode = io_instr[6:0]; // @[riscvSingle.scala 70:17:@1097.4]
  assign d_io_funct7 = io_instr[31:25]; // @[riscvSingle.scala 71:17:@1099.4]
  assign d_io_funct3 = io_instr[14:12]; // @[riscvSingle.scala 72:17:@1101.4]
  assign d_io_zeroFlag = dp_io_zeroFlag; // @[riscvSingle.scala 73:19:@1102.4]
  assign d_io_lessThanFlag = dp_io_lessThanFlag; // @[riscvSingle.scala 74:23:@1103.4]
  assign d_io_greaterThanFlag = dp_io_greaterThanFlag; // @[riscvSingle.scala 75:26:@1104.4]
endmodule
module imem( // @[:@1120.2]
  input         clock, // @[:@1121.4]
  input  [31:0] io_instAddress, // @[:@1123.4]
  output [31:0] io_inst // @[:@1123.4]
);
  reg [31:0] MEM [0:1023]; // @[riscvSingle.scala 1014:18:@1125.4]
  reg [31:0] _RAND_0;
  wire [31:0] MEM__T_12_data; // @[riscvSingle.scala 1014:18:@1125.4]
  wire [9:0] MEM__T_12_addr; // @[riscvSingle.scala 1014:18:@1125.4]
  assign MEM__T_12_addr = io_instAddress[9:0];
  assign MEM__T_12_data = MEM[MEM__T_12_addr]; // @[riscvSingle.scala 1014:18:@1125.4]
  assign io_inst = MEM__T_12_data; // @[riscvSingle.scala 1017:13:@1128.4]
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
module dmem( // @[:@1130.2]
  input         clock, // @[:@1131.4]
  input  [31:0] io_memAddress, // @[:@1133.4]
  input  [31:0] io_memWriteData, // @[:@1133.4]
  input         io_memWriteEnable, // @[:@1133.4]
  output [31:0] io_memReadData // @[:@1133.4]
);
  reg [31:0] mem [0:1023]; // @[riscvSingle.scala 1048:26:@1135.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_21_data; // @[riscvSingle.scala 1048:26:@1135.4]
  wire [9:0] mem__T_21_addr; // @[riscvSingle.scala 1048:26:@1135.4]
  wire [31:0] mem__T_19_data; // @[riscvSingle.scala 1048:26:@1135.4]
  wire [9:0] mem__T_19_addr; // @[riscvSingle.scala 1048:26:@1135.4]
  wire  mem__T_19_mask; // @[riscvSingle.scala 1048:26:@1135.4]
  wire  mem__T_19_en; // @[riscvSingle.scala 1048:26:@1135.4]
  wire  _T_15; // @[riscvSingle.scala 1050:28:@1136.4]
  wire [9:0] _T_18; // @[:@1139.6]
  wire  _GEN_3; // @[riscvSingle.scala 1050:33:@1138.4]
  reg [9:0] mem__T_21_addr_pipe_0;
  reg [31:0] _RAND_1;
  assign mem__T_21_addr = mem__T_21_addr_pipe_0;
  assign mem__T_21_data = mem[mem__T_21_addr]; // @[riscvSingle.scala 1048:26:@1135.4]
  assign mem__T_19_data = io_memWriteData;
  assign mem__T_19_addr = io_memAddress[9:0];
  assign mem__T_19_mask = 1'h1;
  assign mem__T_19_en = _T_15 == 1'h0;
  assign _T_15 = ~ io_memWriteEnable; // @[riscvSingle.scala 1050:28:@1136.4]
  assign _T_18 = io_memAddress[9:0]; // @[:@1139.6]
  assign _GEN_3 = 1'h1; // @[riscvSingle.scala 1050:33:@1138.4]
  assign io_memReadData = mem__T_21_data; // @[riscvSingle.scala 1054:20:@1145.4]
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
      mem[mem__T_19_addr] <= mem__T_19_data; // @[riscvSingle.scala 1048:26:@1135.4]
    end
    if (_GEN_3) begin
      mem__T_21_addr_pipe_0 <= _T_18;
    end
  end
endmodule
module top( // @[:@1147.2]
  input         clock, // @[:@1148.4]
  input         reset, // @[:@1149.4]
  output        io_valid, // @[:@1150.4]
  output [31:0] io_dmemOut, // @[:@1150.4]
  output [31:0] io_imemOut // @[:@1150.4]
);
  wire  r_clock; // @[riscvSingle.scala 1082:19:@1152.4]
  wire  r_reset; // @[riscvSingle.scala 1082:19:@1152.4]
  wire [31:0] r_io_instr; // @[riscvSingle.scala 1082:19:@1152.4]
  wire [31:0] r_io_memReadData; // @[riscvSingle.scala 1082:19:@1152.4]
  wire [31:0] r_io_pc; // @[riscvSingle.scala 1082:19:@1152.4]
  wire  r_io_memWriteEnable; // @[riscvSingle.scala 1082:19:@1152.4]
  wire [31:0] r_io_memAddress; // @[riscvSingle.scala 1082:19:@1152.4]
  wire [31:0] r_io_memWriteData; // @[riscvSingle.scala 1082:19:@1152.4]
  wire  im_clock; // @[riscvSingle.scala 1083:20:@1155.4]
  wire [31:0] im_io_instAddress; // @[riscvSingle.scala 1083:20:@1155.4]
  wire [31:0] im_io_inst; // @[riscvSingle.scala 1083:20:@1155.4]
  wire  dm_clock; // @[riscvSingle.scala 1084:20:@1158.4]
  wire [31:0] dm_io_memAddress; // @[riscvSingle.scala 1084:20:@1158.4]
  wire [31:0] dm_io_memWriteData; // @[riscvSingle.scala 1084:20:@1158.4]
  wire  dm_io_memWriteEnable; // @[riscvSingle.scala 1084:20:@1158.4]
  wire [31:0] dm_io_memReadData; // @[riscvSingle.scala 1084:20:@1158.4]
  wire [6:0] _T_13; // @[riscvSingle.scala 1107:31:@1170.4]
  wire  _T_15; // @[riscvSingle.scala 1107:38:@1171.4]
  riscv r ( // @[riscvSingle.scala 1082:19:@1152.4]
    .clock(r_clock),
    .reset(r_reset),
    .io_instr(r_io_instr),
    .io_memReadData(r_io_memReadData),
    .io_pc(r_io_pc),
    .io_memWriteEnable(r_io_memWriteEnable),
    .io_memAddress(r_io_memAddress),
    .io_memWriteData(r_io_memWriteData)
  );
  imem im ( // @[riscvSingle.scala 1083:20:@1155.4]
    .clock(im_clock),
    .io_instAddress(im_io_instAddress),
    .io_inst(im_io_inst)
  );
  dmem dm ( // @[riscvSingle.scala 1084:20:@1158.4]
    .clock(dm_clock),
    .io_memAddress(dm_io_memAddress),
    .io_memWriteData(dm_io_memWriteData),
    .io_memWriteEnable(dm_io_memWriteEnable),
    .io_memReadData(dm_io_memReadData)
  );
  assign _T_13 = im_io_inst[6:0]; // @[riscvSingle.scala 1107:31:@1170.4]
  assign _T_15 = _T_13 == 7'h73; // @[riscvSingle.scala 1107:38:@1171.4]
  assign io_valid = _T_15 ? 1'h0 : 1'h1; // @[riscvSingle.scala 1107:14:@1173.4]
  assign io_dmemOut = dm_io_memWriteData; // @[riscvSingle.scala 1105:16:@1168.4]
  assign io_imemOut = im_io_inst; // @[riscvSingle.scala 1106:16:@1169.4]
  assign r_clock = clock; // @[:@1153.4]
  assign r_reset = reset; // @[:@1154.4]
  assign r_io_instr = im_io_inst; // @[riscvSingle.scala 1104:16:@1167.4]
  assign r_io_memReadData = dm_io_memReadData; // @[riscvSingle.scala 1090:22:@1164.4]
  assign im_clock = clock; // @[:@1156.4]
  assign im_io_instAddress = r_io_pc / 32'h4; // @[riscvSingle.scala 1102:23:@1166.4]
  assign dm_clock = clock; // @[:@1159.4]
  assign dm_io_memAddress = r_io_memAddress; // @[riscvSingle.scala 1086:22:@1161.4]
  assign dm_io_memWriteData = r_io_memWriteData; // @[riscvSingle.scala 1087:24:@1162.4]
  assign dm_io_memWriteEnable = r_io_memWriteEnable; // @[riscvSingle.scala 1088:26:@1163.4]
endmodule
