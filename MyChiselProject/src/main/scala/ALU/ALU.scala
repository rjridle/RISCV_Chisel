package ALU

import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class ALU extends Module {
    val io = IO(new Bundle {
        val a = Input(UInt(32.W))
        val b = Input(UInt(32.W))
        val op = Input(UInt(3.W))
        val out = Output(UInt(32.W))
    })

    when (io.op === 0.U) {
        io.out := io.a + io.b   //ADD
    }.elsewhen (io.op === 1.U) {
        io.out := io.a - io.b   //SUB
    }.elsewhen (io.op === 2.U) {
        io.out := io.a & io.b   //AND
    }.elsewhen (io.op === 3.U) {
        io.out := io.a | io.b   //OR
    }.elsewhen (io.op === 4.U) {
        io.out := io.a ^ io.b   //XOR
    }.otherwise {
        io.out := io.a
    }

    /*
    DOES NOT WORK
    switch (op) {
        is(0.U) {
            io.out := io.a + io.b   //ADD
        } is(1.U) {
            io.out := io.a - io.b   //SUB
        } is(2.U) {
            io.out := io.a & io.b   //AND
        } is(3.U) {
            io.out := io.a | io.b   //OR
        } is(4.U) {
            io.out := io.a ^ io.b   //XOR
        }
    }
    DOES NOT WORK
    */
 }

 class ALUTest(alu: ALU) extends PeekPokeTester(alu) {
    poke(alu.io.a, 17.U)
    poke(alu.io.b, 1.U)
    poke(alu.io.op, 2.U)
    step(1)

    println("The result: " + peek(alu.io.out))
}

object ALU extends App {
  iotesters.Driver.execute(args, () => new ALU) {
    alu => new ALUTest(alu)
  }
}