import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class printingExample extends Module {
 val io = IO(new Bundle{
    val a = Input(UInt(32.W))
    val b = Input(UInt(32.W))
    val out = Output(UInt(32.W))
 })
    val message = Wire(new testMessage)
    val and = Wire(UInt(32.W))
    and := io.a & io.b
    io.out := io.a + io.b

    message.and := and
    printf(p"$message")
}

class testMessage extends Bundle {
    val and = UInt(32.W)
    val a = UInt(32.W)
    val b = UInt(32.W)

    override def toPrintable: Printable = {
        p"and = 0x${Hexadecimal(and)}\n" +
        p"a = 0x${Hexadecimal(a)}\n" +
        p"b = 0x${Hexadecimal(b)}\n"
    }
}

class printingTest(pe: printingExample) extends PeekPokeTester(pe) {
    poke(pe.io.a, 8.U)
    poke(pe.io.b, 1.U)
    step(1);
    step(1);
    step(1);

    println("out = " + peek(pe.io.out))
}

object printingExample extends App {
  iotesters.Driver.execute(args, () => new printingExample) {
    pe => new printingTest(pe)
  }
    chisel3.Driver.execute(args, () => new printingExample)
}