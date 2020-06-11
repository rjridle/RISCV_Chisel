package fpadd

import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class fpadd extends Module {
    val io = IO(new Bundle {
        val a = Input(UInt(32.W))
        val b = Input(UInt(32.W))
        val s = Output(UInt(32.W))
        val manta = Output(UInt(24.W))
        val mantb = Output(UInt(24.W))
        val expa = Output(UInt(8.W))
        val expb = Output(UInt(8.W))
        val shmant = Output(UInt(24.W))
        val shamt = Output(UInt(8.W))
        val shiftedval = Output(UInt(24.W))
        val addval = Output(UInt(24.W))
        val ovf = Output(UInt(1.W))
        val exponent = Output(UInt(8.W))
        val addresult = Output(UInt(25.W))
        val fract = Output(UInt(23.W))
    })
    val ad = Module(new addmant())
    val ex = Module(new expcomp())
    val sh = Module(new shiftmant())
    
    io.expa := io.a(30, 23)
    io.manta := Cat(1.U, io.a(22, 0))

    io.expb := io.b(30,23)
    io.mantb := Cat(1.U, io.b(22, 0))

    ex.io.expa := io.expa
    ex.io.expb := io.expb

    sh.io.alessb := ex.io.alessb
    sh.io.manta := io.manta
    sh.io.mantb := io.mantb
    sh.io.shamt := ex.io.shamt
    
    io.shiftedval := sh.io.shiftedval
    io.ovf := sh.io.ovf
    io.shamt := ex.io.shamt

    ad.io.alessb := ex.io.alessb
    ad.io.manta := io.manta
    ad.io.mantb := io.mantb
    ad.io.shmant := sh.io.shmant

    io.shmant := sh.io.shmant
    
    ad.io.exp_pre := ex.io.exponent
    
    io.exponent := ad.io.exponent
    io.addresult := ad.io.addresult
    io.addval := ad.io.addval
    
    io.fract := ad.io.fract

    io.s := Cat(0.U, ad.io.exponent, ad.io.fract)
    
}

class expcomp extends Module {
    val io = IO(new Bundle {
        val expa = Input(UInt(8.W))
        val expb = Input(UInt(8.W))
        val alessb = Output(Bool())
        val exponent = Output(UInt(8.W))
        val shamt = Output(UInt(8.W))
    })

    val aminusb = (io.expa - io.expb)
    val bminusa = (io.expb - io.expa)
    
    
    when(aminusb(7) === 1.U) {
        io.alessb := true.B
    }.otherwise {
        io.alessb := false.B
    }


    io.exponent := Mux(io.alessb, io.expb, io.expa)
    io.shamt := Mux(io.alessb, bminusa, aminusb)
}

class addmant extends Module {
    val io = IO(new Bundle {
        val alessb = Input(Bool())
        val manta = Input(UInt(24.W))
        val mantb = Input(UInt(24.W))
        val shmant = Input(UInt(24.W))
        val exp_pre = Input(UInt(8.W))
        val fract = Output(UInt(23.W))
        val exponent = Output(UInt(8.W))
        val addresult = Output(UInt(25.W))
        val addval = Output(UInt(25.W))
    })

    io.addval := Mux(io.alessb, io.mantb, io.manta)
    
    io.addresult := io.shmant + io.addval
    io.fract := Mux(io.addresult(24).asBool(), io.addresult(23, 1), io.addresult(22, 0))
    io.exponent := Mux(io.addresult(24).asBool(), (io.exp_pre + 1.U), io.exp_pre)

}

class shiftmant extends Module {
    val io = IO(new Bundle {
        val alessb = Input(Bool())
        val manta = Input(UInt(24.W))
        val mantb = Input(UInt(24.W))
        val shamt = Input(UInt(8.W))
        val shmant = Output(UInt(24.W))
        val ovf = Output(UInt(1.W))
        val shiftedval = Output(UInt(24.W))
    })

    io.shiftedval := Mux(io.alessb, (io.manta >> io.shamt), (io.mantb >> io.shamt))
    io.ovf := (io.shamt(7) | io.shamt(6) | io.shamt(5)) | (io.shamt(4) & io.shamt(3))
    
    io.shmant := Mux(io.ovf.asBool(), 0.U, io.shiftedval)

}

class fpaddTest(fp: fpadd) extends PeekPokeTester(fp) {
    poke(fp.io.a, 1071695004.U)
    poke(fp.io.b, 1066192077.U)
    step(1)

    println("a is: " + peek(fp.io.a).toInt.toBinaryString)
    println("b is: " + peek(fp.io.b).toInt.toBinaryString)
    println("expa is: " + peek(fp.io.expa).toInt.toBinaryString)
    println("expb is: " + peek(fp.io.expb).toInt.toBinaryString)
    println("manta is: " + peek(fp.io.manta).toInt.toBinaryString)
    println("mantb is: " + peek(fp.io.mantb).toInt.toBinaryString)
    println("shamt is: " + peek(fp.io.shamt).toInt.toBinaryString)
    println("shmant is: " + peek(fp.io.shmant).toInt.toBinaryString)
    println("ovf is: " + peek(fp.io.ovf).toInt.toBinaryString)
    println("shiftedval is: " + peek(fp.io.shiftedval).toInt.toBinaryString)
    println("addval is: " + peek(fp.io.addval).toInt.toBinaryString)
    println("exponent is: " + peek(fp.io.exponent).toInt.toBinaryString)
    println("fract is: " + peek(fp.io.fract).toInt.toBinaryString)
    println("addresult is: " + peek(fp.io.addresult).toInt.toBinaryString)
    println("Result is: " + peek(fp.io.s).toInt.toBinaryString)
}

class expcompTest(ex: expcomp) extends PeekPokeTester(ex){
    println("expa is: " + peek(ex.io.expa).toString)
    println("expb is: " + peek(ex.io.expb).toString)
}

object fpadd extends App {
  iotesters.Driver.execute(args, () => new fpadd) {
    fp => new fpaddTest(fp)
  }
}

object excomp extends App {
    iotesters.Driver.execute(args, () => new expcomp) {
    ex => new expcompTest(ex)
  }
}