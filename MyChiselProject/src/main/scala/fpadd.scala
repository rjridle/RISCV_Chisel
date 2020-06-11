package riscvSingle

import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

/*
bit     name
-------------
31      sign 
30-23   exponent
22-0    mantissa

[sign] * (1 + [mantissa]) * 2^([exponent] - 127)

Ex:
0 10000011 00010010000000000000000

sign -> positive
exponent -> 128 + 2 + 1 = 131
mantisaa -> 1/16 + 1/128 = 9/128

= 1 * (1 + 9/128) * 2^(131 - 127)
= (137/128) * 2^4
= 2192/128
= 17.125

In the reverse

 int part     17.125     decimal part
2 % 17 = 1             0.125 * 2 = 0.25 | 0        
2 % 8 = 0              0.25 * 2 = 0.5   | 0  
2 % 4 = 0              0.5 * 2 = 1      | 1  (When ans is > 1, subtract 1)
2 % 2 = 0              0  (stop @ 0)
2 % 1 = 1
  0
(reads upwards)         (reads top to bottom)
               
               10001.001

Converting into standard format
(shift decimal over
 4 and add to exp)      1.0001001 * 2^4
                mantissa------^     ^---exponent

Original exponent = 4  ---> offset exponent = (4 + 127) = 131 = 10000011
*/

class fpadd extends Module {
    val io = IO(new Bundle {
        val a = Input(UInt(32.W))
        val b = Input(UInt(32.W))
        val mant_a = Output(UInt(24.W))
        val mant_b = Output(UInt(24.W))
        val exp_a = Output(UInt(8.W))
        val exp_b = Output(UInt(8.W))
        val exponent = Output(UInt(8.W))
        val fract = Output(UInt(23.W))
        val s = Output(UInt(32.W))
    })

    val shmant = Wire(UInt(24.W))
    val shamt = Wire(UInt(8.W))
    val shiftedval = Wire(UInt(24.W))
    val addval = Wire(UInt(24.W))
    val ovf = Wire(UInt(1.W))
    val exp_pre = Wire(UInt(8.W))
    val addresult = Wire(UInt(25.W))
    val fpaddMessage = Wire(new MessageFpadd) 
    
    //Getting exponents and mantissa
    io.exp_a := io.a(30, 23)
    io.mant_a := Cat(1.U, io.a(22, 0))
    io.exp_b := io.b(30,23)
    io.mant_b := Cat(1.U, io.b(22, 0))
    //*******************************

    //EXPCOMP
    val aminusb = io.exp_a - io.exp_b
    val bminusa = io.exp_b - io.exp_a
    val alessb = Wire(UInt(1.W))
    
    when(aminusb(7) === 1.U) {
        alessb := 1.U
    }.otherwise {
        alessb := 0.U
    }

    exp_pre := Mux(alessb.andR, io.exp_b, io.exp_a)
    shamt := Mux(alessb.andR, bminusa, aminusb)
    //***************************************************


    //SHIFTMANT
    shiftedval := Mux(alessb.andR, (io.mant_a >> shamt), (io.mant_b >> shamt))
    ovf := (shamt(7) | shamt(6) | shamt(5)) | (shamt(4) & shamt(3))
    shmant := Mux(ovf.andR, 0.U, shiftedval)
    //***************************************************************

    //ADDMANT
    addval := Mux(alessb.andR, io.mant_b, io.mant_a)
    addresult := shmant + addval
    io.fract := Mux(addresult(24).andR, addresult(23, 1), addresult(22, 0))
    io.exponent := Mux(addresult(24).andR, (exp_pre + 1.U), exp_pre)
    //*************************************************************************

    //Final result
    io.s := Cat(0.U, io.exponent, io.fract)

    fpaddMessage.a := io.a
    fpaddMessage.b := io.b
    fpaddMessage.mant_a := io.mant_a
    fpaddMessage.mant_b := io.mant_b
    fpaddMessage.exp_a := io.exp_a
    fpaddMessage.exp_b := io.exp_b
    fpaddMessage.aminusb := aminusb
    fpaddMessage.bminusa := bminusa
    fpaddMessage.alessb := alessb
    fpaddMessage.shmant := shmant
    fpaddMessage.shamt := shamt
    fpaddMessage.shiftedval := shiftedval
    fpaddMessage.addval := addval
    fpaddMessage.ovf := ovf
    fpaddMessage.exp_pre := exp_pre
    fpaddMessage.exponent := io.exponent
    fpaddMessage.addresult := addresult
    fpaddMessage.fract := io.fract
    fpaddMessage.s := io.s
    printf(p"$fpaddMessage")
}

class MessageFpadd extends Bundle {
    val a = UInt(32.W)
    val b = UInt(32.W)
    val mant_a = UInt(24.W)
    val mant_b = UInt(24.W)
    val exp_a = UInt(8.W)
    val exp_b = UInt(8.W)
    val aminusb = UInt(8.W)
    val bminusa = UInt(8.W)
    val alessb = UInt(1.W)
    val shmant = UInt(24.W)
    val shamt = UInt(8.W)
    val shiftedval = UInt(24.W)
    val addval = UInt(24.W)
    val ovf = UInt(1.W)
    val exp_pre = UInt(8.W)
    val exponent = UInt(8.W)
    val addresult = UInt(25.W)
    val fract = UInt(23.W)
    val s = UInt(32.W)

  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|fpadd Module:\n" +
    p"|  a          : b${Binary(a)}\n" +
    p"|  b          : b${Binary(b)}\n" +
    p"|  mant_a     : b${Binary(mant_a)}\n" +
    p"|  mant_b     : b${Binary(mant_b)}\n" +
    p"|  exp_a      : b${Binary(exp_a)}\n" +
    p"|  exp_b      : b${Binary(exp_b)}\n" +
    p"|  aminusb    : b${Binary(shmant)}\n" +
    p"|  bminusa    : b${Binary(shamt)}\n" +
    p"|  alessb     : b${Binary(shiftedval)}\n" +
    p"|  shmant     : b${Binary(shmant)}\n" +
    p"|  shamt      : b${Binary(shamt)}\n" +
    p"|  shiftedval : b${Binary(shiftedval)}\n" +
    p"|  addval     : b${Binary(addval)}\n" +
    p"|  ovf        : b${Binary(ovf)}\n" +
    p"|  exp_pre    : b${Binary(exp_pre)}\n" +
    p"|  exponent   : b${Binary(exponent)}\n" +
    p"|  addresult  : b${Binary(addresult)}\n" +
    p"|  fract      : b${Binary(fract)}\n" +
    p"|  s          : b${Binary(s)}\n" +
    p"|___________________________\n"
  }
}

class fpaddTest(fp: fpadd) extends PeekPokeTester(fp) {
    poke(fp.io.a, "b00111101110011001100110011001101".U)
    poke(fp.io.b, "b00111110010011001100110011001101".U)
    step(1)
    expect(fp.io.exp_a, "b01111011".U)
    expect(fp.io.mant_a, "b110011001100110011001101".U)
    expect(fp.io.exp_b, "b01111100".U)
    expect(fp.io.mant_b, "b110011001100110011001101".U)
    expect(fp.io.exponent, "b01111101".U)
    expect(fp.io.fract, "b00110011001100110011010".U)
    expect(fp.io.s, "b00111110100110011001100110011010".U)
    //fp.io.s = "b00111110100110011001100110011010"

}


object fpadd extends App {
  iotesters.Driver.execute(args, () => new fpadd) {
    fp => new fpaddTest(fp)
  }

    chisel3.Driver.execute(args, () => new fpadd)
}