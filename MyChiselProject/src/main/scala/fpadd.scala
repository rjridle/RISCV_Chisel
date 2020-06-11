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
        val s = Output(UInt(32.W))
    })
    val mant_a = Wire(UInt(24.W))
    val mant_b = Wire(UInt(24.W))
    val exp_a = Wire(UInt(8.W))
    val exp_b = Wire(UInt(8.W))
    val exponent = Wire(UInt(8.W))
    val fract = Wire(UInt(23.W))
    val shmant = Wire(UInt(25.W))
    val shamt = Wire(UInt(8.W))
    val shiftedval = Wire(UInt(25.W))
    val addval = Wire(UInt(25.W))
    val ovf = Wire(UInt(1.W))
    val exp_pre = Wire(UInt(8.W))
    val addresult = Wire(UInt(25.W))
    val fpaddMessage = Wire(new MessageFpadd) 
    
    //Getting exponents and mantissa
    exp_a := io.a(30, 23)
    mant_a := Cat(1.U, io.a(22, 0))
    exp_b := io.b(30,23)
    mant_b := Cat(1.U, io.b(22, 0))
    //*******************************

    //EXPCOMP
    val aminusb = exp_a - exp_b
    val bminusa = exp_b - exp_a
    val alessb = Wire(UInt(1.W))
    
    when(aminusb(7) === 1.U) {
        alessb := 1.U
    }.otherwise {
        alessb := 0.U
    }

    exp_pre := Mux(alessb.andR, exp_b, exp_a)
    shamt := Mux(alessb.andR, bminusa, aminusb)
    //***************************************************


    //SHIFTMANT
    shiftedval := Mux(alessb.andR, (mant_a >> shamt), (mant_b >> shamt))
    ovf := (shamt(7) | shamt(6) | shamt(5) | (shamt(4) & shamt(3)))
    shmant := Mux(ovf.andR, 0.U, shiftedval)
    //***************************************************************

    //ADDMANT
    addval := Mux(alessb.andR, mant_b, mant_a)
    addresult := shmant + addval
    fract := Mux(addresult(24).andR, addresult(23, 1), addresult(22, 0))
    exponent := Mux(addresult(24).andR, (exp_pre + 1.U), exp_pre)
    //*************************************************************************

    //Final result
    io.s := Cat(0.U, exponent, fract)

    fpaddMessage.a := io.a
    fpaddMessage.b := io.b
    fpaddMessage.mant_a := mant_a
    fpaddMessage.mant_b := mant_b
    fpaddMessage.exp_a := exp_a
    fpaddMessage.exp_b := exp_b
    fpaddMessage.aminusb := aminusb
    fpaddMessage.bminusa := bminusa
    fpaddMessage.alessb := alessb
    fpaddMessage.shmant := shmant
    fpaddMessage.shamt := shamt
    fpaddMessage.shiftedval := shiftedval
    fpaddMessage.addval := addval
    fpaddMessage.ovf := ovf
    fpaddMessage.exp_pre := exp_pre
    fpaddMessage.exponent := exponent
    fpaddMessage.addresult := addresult
    fpaddMessage.fract := fract
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
    p"|  a          : 0x${Hexadecimal(a)}\n" +
    p"|  b          : 0x${Hexadecimal(b)}\n" +
    p"|  mant_a     : b${Binary(mant_a)}\n" +
    p"|  mant_b     : b${Binary(mant_b)}\n" +
    p"|  exp_a      : b${Binary(exp_a)}\n" +
    p"|  exp_b      : b${Binary(exp_b)}\n" +
    p"|  aminusb    : b${Binary(shmant)}\n" +
    p"|  bminusa    : b${Binary(shamt)}\n" +
    p"|  alessb     : b${Binary(alessb)}\n" +
    p"|  exp_pre    : b${Binary(exp_pre)}\n" +
    p"|  shamt      : b${Binary(shamt)}\n" +
    p"|  shiftedval : b${Binary(shiftedval)}\n" +
    p"|  ovf        : b${Binary(ovf)}\n" +
    p"|  shmant     : 0x${Hexadecimal(shmant)}\n" +
    p"|  addval     : 0x${Hexadecimal(addval)}\n" +
    p"|  addresult  : 0x${Hexadecimal(addresult)}\n" +
    p"|  exponent   : b${Binary(exponent)}\n" +
    p"|  fract      : b${Binary(fract)}\n" +
    p"|  s          : 0x${Hexadecimal(s)}\n" +
    p"|___________________________\n"
  }
}

class fpaddTest(fp: fpadd) extends PeekPokeTester(fp) {
    poke(fp.io.a, "h3F750000".U)
    poke(fp.io.b, "h3FC00000".U)
    step(1)
    expect(fp.io.s, "h401d4000".U)
    step(1)

}


object fpadd extends App {
  iotesters.Driver.execute(args, () => new fpadd) {
    fp => new fpaddTest(fp)
  }

    chisel3.Driver.execute(args, () => new fpadd)
}