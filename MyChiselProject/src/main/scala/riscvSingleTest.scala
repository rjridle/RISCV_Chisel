package riscvSingle

import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}
import chisel3.util.experimental.loadMemoryFromFile

class top extends Module {
    val io = IO(new Bundle {
        val valid = Output(UInt(1.W))
    })
    
    //val topMessage = Wire(new MessageTop)
    val r = Module(new riscv)
    val im = Module(new imem)
    val dm = Module(new dmem)

    dm.io.memAddress := r.io.memAddress
    dm.io.memWriteData := r.io.memWriteData
    dm.io.memWriteEnable := r.io.memWriteEnable
    
    r.io.memReadData := dm.io.memReadData
    
    /*
    // print info
    topMessage.instr_pulled := im.io.inst
    topMessage.pc_pulled := r.io.pc / 4.U
    topMessage.memWriteData := r.io.memWriteData
    topMessage.memWriteEnable := r.io.memWriteEnable 
    topMessage.memAddress := r.io.memAddress
    topMessage.memReadData := dm.io.memReadData
    printf(p"$topMessage")
    */
    im.io.instAddress := r.io.pc / 4.U
    
    r.io.instr := im.io.inst
    
    io.valid := Mux(im.io.inst(6, 0) === "b1110011".U, 0.U, 1.U)
}

class riscvSingleTest(t: top) extends PeekPokeTester(t) {
    println("**********STARTING riscvSingleTest*******")
    var cycles = 1
    var validP = peek(t.io.valid)

    println(s"CYCLE: $cycles")
    while (validP == BigInt(1) && cycles < 100) {
        println(s"STARTING NEXT CYCLE: $cycles")
        println(s"valid = $validP")
        step(1)
        cycles += 1
        validP = peek(t.io.valid)
    }
    step(1)
    if (cycles > 98 ) {
        println(s"$cycles cycles were ran and end of program not reached. Exiting.")
        System.exit(0)
    }
    else {
        println(s"Program completed in $cycles cycles. Exiting.")
    }
}

object top extends App {
  iotesters.Driver.execute(args, () => new top) {
    t => new riscvSingleTest(t)
  }
    chisel3.Driver.execute(args, () => new top)
}