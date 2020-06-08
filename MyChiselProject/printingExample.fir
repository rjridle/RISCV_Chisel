;buildInfoPackage: chisel3, version: 3.1.8, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-07-08 17:44:42.884, builtAtMillis: 1562607882884
circuit printingExample : 
  module printingExample : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<32>, flip b : UInt<32>, out : UInt<32>}
    
    wire message : {and : UInt<32>} @[printingExample.scala 11:23]
    wire and : UInt<32> @[printingExample.scala 12:19]
    node _T_13 = and(io.a, io.b) @[printingExample.scala 13:17]
    and <= _T_13 @[printingExample.scala 13:9]
    node _T_14 = add(io.a, io.b) @[printingExample.scala 14:20]
    node _T_15 = tail(_T_14, 1) @[printingExample.scala 14:20]
    io.out <= _T_15 @[printingExample.scala 14:12]
    message.and <= and @[printingExample.scala 16:17]
    node _T_16 = bits(reset, 0, 0) @[printingExample.scala 17:11]
    node _T_18 = eq(_T_16, UInt<1>("h00")) @[printingExample.scala 17:11]
    when _T_18 : @[printingExample.scala 17:11]
      printf(clock, UInt<1>(1), "and = 0x%x\n", message.and) @[printingExample.scala 17:11]
      skip @[printingExample.scala 17:11]
    
