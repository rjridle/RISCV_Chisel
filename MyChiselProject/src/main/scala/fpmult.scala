package riscvSingle

import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class fpmult extends Module {
    val io = IO(new Bundle {
        val a = Input(UInt(32.W))
        val b = Input(UInt(32.W))
        val m = Output(UInt(32.W))
    })

    val exp_a = Wire(UInt(8.W))     //0111_1110 = 0x7E
    val exp_b = Wire(UInt(8.W))     //0111_1111 = 0x7F
    val mant_a = Wire(UInt(24.W))   //1111_0101_0000_0000_0000_0000 = 0xF50000
    val mant_b = Wire(UInt(24.W))   //1100_0000_0000_0000_0000_0000 = 0xC00000
    val exponent = Wire(UInt(8.W))  //0111_1111 = 0x7F
    val fract = Wire(UInt(23.W))    //1011_0111_1100_0000_0000_0000 = 0xB7C000
    val result = Wire(UInt(48.W))   //1011_0111_1100_0000_0000_0000
                                    //0000_0000_0000_0000_0000_0000  = 0xB7C000000000
                                    //Answer: 0011_1111_1011_0111_1100_0000_0000_0000 = 0x3fb7c000
    val fpmultMessage = Wire(new MessageFpmult)     

    exp_a := io.a(30, 23)
    mant_a := Cat(1.U, io.a(22, 0))
    exp_b := io.b(30, 23)
    mant_b := Cat(1.U, io.b(22, 0))
    result := mant_a * mant_b
    fract := Mux(result(47).andR, result(46,24), result(45,23))
    exponent := Mux(result(47).andR, ((exp_a + exp_b) - 126.U), ((exp_a + exp_b) - 127.U))
    io.m := Cat(0.U, exponent, fract)

    fpmultMessage.a := io.a
    fpmultMessage.b := io.b
    fpmultMessage.mant_a := mant_a
    fpmultMessage.mant_b := mant_b
    fpmultMessage.exp_a := exp_a
    fpmultMessage.exp_b := exp_b
    fpmultMessage.result := result
    fpmultMessage.exponent := exponent
    fpmultMessage.fract := fract
    fpmultMessage.m := io.m
    printf(p"$fpmultMessage")
}

class MessageFpmult extends Bundle {
    val a = UInt(32.W)
    val b = UInt(32.W)
    val mant_a = UInt(24.W)
    val mant_b = UInt(24.W)
    val exp_a = UInt(8.W)
    val exp_b = UInt(8.W)
    val result = UInt(48.W)
    val exponent = UInt(8.W)
    val fract = UInt(23.W)
    val m = UInt(32.W)

  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|fpmult Module:\n" +
    p"|  a          : 0x${Hexadecimal(a)}\n" +
    p"|  b          : 0x${Hexadecimal(b)}\n" +
    p"|  mant_a     : 0x${Hexadecimal(mant_a)}\n" +
    p"|  mant_b     : 0x${Hexadecimal(mant_b)}\n" +
    p"|  exp_a      : 0x${Hexadecimal(exp_a)}\n" +
    p"|  exp_b      : 0x${Hexadecimal(exp_b)}\n" +
    p"|  result     : 0x${Hexadecimal(result)}\n" +
    p"|  exponent   : 0x${Hexadecimal(exponent)}\n" +
    p"|  fract      : 0x${Hexadecimal(fract)}\n" +
    p"|  m          : 0x${Hexadecimal(m)}\n" +
    p"|___________________________\n"
  }
}

class fpmultTest(fp: fpmult) extends PeekPokeTester(fp) {
    poke(fp.io.a, "h3f750000".U)
    poke(fp.io.b, "h3fc00000".U)
    step(1)
    expect(fp.io.m, "h3fb7c000".U)
    step(1)

}


object fpmult extends App {
  iotesters.Driver.execute(args, () => new fpmult) {
    fp => new fpmultTest(fp)
  }

    chisel3.Driver.execute(args, () => new fpmult)
}