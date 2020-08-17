package riscvSingle

import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}
import chisel3.util.experimental.loadMemoryFromFile
/*
class MessageTop extends Bundle {
  val instr_pulled = UInt(32.W)
  val pc_pulled = UInt(32.W)
  val memWriteEnable = UInt(1.W)
  val memWriteData = SInt(32.W)
  val memAddress = UInt(32.W)
  val memReadData = SInt(32.W)
  override def toPrintable: Printable = {
      p"\n\n\n___________________________\n" +
    p"|top Module:\n" +
    p"|  instr pulled       : 0x${Hexadecimal(instr_pulled)}\n" +
    p"|  pc pulled          : b${Binary(pc_pulled)}\n" +
    p"|  memWriteEnable     : b${Binary(memWriteEnable)}\n" +
    p"|  memWriteData       : 0x${Hexadecimal(memWriteData)}\n" +
    p"|  memAddress         : 0x${Hexadecimal(memAddress)}\n" +
    p"|  memReadData        : 0x${Hexadecimal(memReadData)}\n" +
    p"|___________________________\n" 
  }
}

class MessageRiscv extends Bundle {
  val instr = UInt(32.W)
  val memReadData = SInt(32.W)
  val memWriteEnable = UInt(1.W)
  val memAddress = UInt(32.W)
  val memWriteData = SInt(32.W)

  override def toPrintable: Printable = {
    p"___________________________\n" +
    p"|riscv Module:\n" +
    p"|  instr          : 0x${Hexadecimal(instr)}\n" +
    p"|  memWriteEnable : b${Binary(memWriteEnable)}\n" +
    p"|  memWriteData   : b${Binary(memWriteData)}\n" +
    p"|  memAddress     : b${Binary(memAddress)}\n" +
    p"|  memReadData    : 0x${Hexadecimal(memReadData)}\n" +
    p"|___________________________\n"
  }
}
*/
class riscv extends Module {
    val io = IO(new Bundle {
        val instr = Input(UInt(32.W))
        val memReadData = Input(SInt(32.W))
        val pc = Output(UInt(32.W))
        val memWriteEnable = Output(UInt(1.W))
        val memAddress = Output(UInt(32.W))
        val memWriteData = Output(SInt(32.W))
    })

    //val riscvMessage = Wire(new MessageRiscv)
    val dp = Module(new datapath)
    val d = Module(new decoder)

/*
    // print info
    riscvMessage.instr := io.instr
    riscvMessage.memReadData := io.memReadData
    riscvMessage.memWriteEnable := io.memWriteEnable
    riscvMessage.memWriteData := io.memWriteData
    riscvMessage.memAddress := io.memAddress
    printf(p"$riscvMessage")
*/
    d.io.opcode := io.instr(6,0)
    d.io.funct7 := io.instr(31,25)
    d.io.funct3 := io.instr(14,12)
    d.io.zeroFlag := dp.io.zeroFlag
    d.io.lessThanFlag := dp.io.lessThanFlag
    d.io.greaterThanFlag := dp.io.greaterThanFlag
    
    dp.io.regSrc := d.io.regSrc
    dp.io.regWriteEnable := d.io.regWriteEnable
    dp.io.immSrc := d.io.immSrc
    dp.io.aluSrc := d.io.aluSrc
    dp.io.pcSrc := d.io.pcSrc
    dp.io.aluControl := d.io.aluControl
    dp.io.memToReg := d.io.memToReg
    dp.io.instr := io.instr
    dp.io.memReadData := io.memReadData
    dp.io.branchSrc := d.io.branchSrc
    dp.io.fpuControl := d.io.fpuControl
    dp.io.fpuRegWriteEnable := d.io.fpuRegWriteEnable
    
    io.pc := dp.io.pc
    io.memWriteEnable := d.io.memWriteEnable
    io.memAddress := dp.io.memAddress
    io.memWriteData := dp.io.memWriteData
}
/*
class MessageExtend extends Bundle {
  val instr12 = UInt(12.W)
  val instr20 = UInt(20.W)
  val immsrc = UInt(2.W)
  val extImm = SInt(32.W)
  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|extend Module:\n" +
    p"|  instr12     : b${Binary(instr12)}\n" +
    p"|  instr20     : b${Binary(instr20)}\n" +
    p"|  immsrc      : b${Binary(immsrc)}\n" +
    p"|  extImm      : 0x${Hexadecimal(extImm)}\n" +
    p"|___________________________\n"
  }
}
*/

class extend extends Module {
    val io = IO(new Bundle {
        val instr12 = Input(UInt(12.W))
        val instr20 = Input(UInt(20.W))
        val immSrc = Input(UInt(2.W))
        val extImm = Output(SInt(32.W))
    })

    //val extendMessage = Wire(new MessageExtend)

    when(io.immSrc === 0.U){
        io.extImm := io.instr12.asSInt
    }.elsewhen(io.immSrc === 1.U){
        io.extImm := (Cat(io.instr12, 0.U(1.W))).asSInt
    }.elsewhen(io.immSrc === 2.U){
        io.extImm := (Cat(io.instr20, 0.U(1.W))).asSInt
    }.otherwise {
        io.extImm := 0.S
    }
/*
    extendMessage.instr12 := io.instr12
    extendMessage.instr20 := io.instr20
    extendMessage.immsrc := io.immSrc
    extendMessage.extImm := io.extImm
    printf(p"$extendMessage")
*/
}

/*
class MessageDecoder extends Bundle {
  val branchSrc = UInt(2.W)
  val opcode = UInt(7.W)
  val funct3 = UInt(3.W)
  val regSrc = UInt(1.W)
  val immSrc = UInt(2.W)
  val aluSrc = UInt(1.W)
  val pcSrc = UInt(1.W)
  val regWriteEnable = UInt(1.W)
  val aluControl = UInt(4.W)
  val memToReg = UInt(1.W)
  val memWriteEnable = UInt(1.W)
  val zeroFlag = UInt(1.W)
  val lessThanFlag = UInt(1.W)
  val greaterThanFlag = UInt(1.W)
  val fpuControl = UInt(2.W)
  val fpuRegWriteEnable = UInt(1.W)

  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|decoder Module:\n" +
    p"|  branchSrc          : b${Binary(branchSrc)}\n" +
    p"|  opcode             : b${Binary(opcode)}\n" +
    p"|  funct3             : b${Binary(funct3)}\n" +
    p"|  regSrc             : b${Binary(regSrc)}\n" +
    p"|  immSrc             : b${Binary(immSrc)}\n" +
    p"|  aluSrc             : b${Binary(aluSrc)}\n" +
    p"|  pcSrc              : b${Binary(pcSrc)}\n" +
    p"|  regWriteEnable     : b${Binary(regWriteEnable)}\n" +
    p"|  aluControl         : b${Binary(aluControl)}\n" +
    p"|  memToReg           : b${Binary(memToReg)}\n" +
    p"|  memWriteEnable     : b${Binary(memWriteEnable)}\n" +
    p"|  zeroFlag           : b${Binary(zeroFlag)}\n" +
    p"|  lessThanFlag       : b${Binary(lessThanFlag)}\n" +
    p"|  greaterThanFlag    : b${Binary(greaterThanFlag)}\n" +
    p"|  fpuControl         : b${Binary(fpuControl)}\n" +
    p"|  fpuRegWriteEnable  : b${Binary(fpuRegWriteEnable)}\n" +
    p"|___________________________\n"
  }
}
*/

class decoder extends Module {
    val io = IO(new Bundle {
        val opcode = Input(UInt(7.W))
        val funct7 = Input(UInt(7.W))
        val funct3 = Input(UInt(3.W))
        val regSrc = Output(UInt(3.W))
        val regWriteEnable = Output(UInt(1.W))
        val fpuRegWriteEnable = Output(UInt(1.W))
        val immSrc = Output(UInt(2.W))
        val aluSrc = Output(UInt(1.W))
        val pcSrc = Output(UInt(1.W))
        val aluControl = Output(UInt(4.W))
        val fpuControl = Output(UInt(2.W))
        val memWriteEnable = Output(UInt(1.W))
        val memToReg = Output(UInt(1.W))
        val branchSrc = Output(UInt(2.W))
        val zeroFlag = Input(UInt(1.W))
        val lessThanFlag = Input(UInt(1.W))
        val greaterThanFlag = Input(UInt(1.W))
    })


    //val decoderMessage = Wire(new MessageDecoder)

    when(io.opcode === "b0110011".U) {
        io.regSrc := 0.U
        io.immSrc := 0.U
        io.aluSrc := 0.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regWriteEnable := 1.U
        io.memWriteEnable := 0.U
        io.branchSrc := 0.U
        io.fpuRegWriteEnable := 0.U
        io.fpuControl := 0.U

        when(io.funct7 === "b0000000".U) {
            when(io.funct3 === "b000".U) {          //ADD
                io.aluControl := 2.U
            }.elsewhen(io.funct3 === "b001".U) {    //SLL
                io.aluControl := 3.U
            }.elsewhen(io.funct3 === "b010".U) {    //SLT
                io.aluControl := 9.U
            }.elsewhen(io.funct3 === "b011".U) {    //SLTU
                io.aluControl := 5.U
            }.elsewhen(io.funct3 === "b100".U) {    //XOR
                io.aluControl := 6.U
            }.elsewhen(io.funct3 === "b101".U) {    //SRL
                io.aluControl := 7.U
            }.elsewhen(io.funct3 === "b110".U) {    //OR
                io.aluControl := 1.U
            }.elsewhen(io.funct3 === "b111".U) {    //AND
                io.aluControl := 0.U                
            }.otherwise {                           //NONE
                io.aluControl := 15.U
            }
        }.elsewhen(io.funct7 === "b0000001".U){
            when(io.funct3 === "b000".U){           //MUL
                io.aluControl := 8.U
            }.elsewhen(io.funct3 === "b100".U){     //DIV
                io.aluControl := 10.U
            }.otherwise {
                io.aluControl := 15.U               //NONE  
            }
        }.elsewhen(io.funct7 === "b0100000".U){
            when (io.funct3 === "b101".U) {         //SRA
                io.aluControl := 4.U
            }.elsewhen(io.funct3 === "b000".U){     //SUB
                io.aluControl := 12.U
            }.otherwise {
                io.aluControl := 15.U               //NONE
            }
        }.otherwise {
            io.aluControl := 15.U                   //NONE
        }
    }.elsewhen(io.opcode === "b0010111".U){         //AUIPC
        io.regSrc := 0.U
        io.immSrc := 2.U
        io.aluSrc := 1.U
        io.pcSrc := 1.U
        io.memToReg := 0.U
        io.regWriteEnable := 1.U
        io.memWriteEnable := 0.U
        io.branchSrc := 0.U
        io.aluControl := 2.U
        io.fpuRegWriteEnable := 0.U
        io.fpuControl := 0.U
    }.elsewhen(io.opcode === "b0010011".U) {
        io.regSrc := 0.U
        io.immSrc := 0.U
        io.aluSrc := 1.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regWriteEnable := 1.U
        io.memWriteEnable := 0.U
        io.branchSrc := 0.U
        io.fpuRegWriteEnable := 0.U
        io.fpuControl := 0.U

        when (io.funct7(6,1) === "b010000".U){
            when(io.funct3 === "b101".U){               //SRAI
                io.aluControl := 4.U
            }.otherwise {
                io.aluControl := 15.U
            }
        }.otherwise{
            when(io.funct3 === "b000".U) {              // ADDI
                io.aluControl := 2.U
            }.elsewhen(io.funct3 === "b001".U) {        // SLLI
                io.aluControl := 3.U
            }.elsewhen(io.funct3 === "b010".U) {        // SLTI
                io.aluControl := 9.U
            }.elsewhen(io.funct3 === "b011".U) {        // SLTIU
                io.aluControl := 5.U
            }.elsewhen(io.funct3 === "b100".U) {        // XORI
                io.aluControl := 6.U
            }.elsewhen(io.funct3 === "b101".U) {        // SRLI
                io.aluControl := 7.U
            }.elsewhen(io.funct3 === "b110".U) {        // ORI
                io.aluControl := 1.U
            }.otherwise {
                io.aluControl := 0.U                    // ANDI
            }
        }
    }.elsewhen(io.opcode === "b0000011".U) {       // LOAD
        io.regSrc := 0.U
        io.immSrc := 0.U
        io.aluSrc := 1.U
        io.pcSrc := 0.U
        io.memToReg := 1.U
        io.regWriteEnable := 1.U
        io.memWriteEnable := 0.U
        io.branchSrc := 0.U
        io.aluControl := 2.U
        io.fpuRegWriteEnable := 0.U
        io.fpuControl := 0.U
    }.elsewhen(io.opcode === "b0100011".U) {       // STORE
        io.regSrc := 0.U
        io.immSrc := 0.U
        io.aluSrc := 1.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regWriteEnable := 0.U
        io.memWriteEnable := 1.U
        io.branchSrc := 0.U
        io.aluControl := 0.U
        io.fpuRegWriteEnable := 0.U
        io.fpuControl := 0.U
    }.elsewhen(io.opcode === "b1100011".U) {
        io.regSrc := 0.U
        io.immSrc := 1.U
        io.aluSrc := 0.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regWriteEnable := 0.U
        io.memWriteEnable := 0.U
        io.aluControl := 4.U
        io.fpuRegWriteEnable := 0.U
        io.fpuControl := 0.U
        
        when(io.funct3 === "b000".U & io.zeroFlag === 1.U){         // BEQ
            io.branchSrc := 1.U
        }.elsewhen(io.funct3 === "b001".U & io.zeroFlag === 0.U) {  // BNE
            io.branchSrc := 1.U
        }.elsewhen(io.funct3 === "b100".U & io.lessThanFlag === 1.U) {    // BLT
            io.branchSrc := 1.U
        }.elsewhen(io.funct3 === "b101".U & io.greaterThanFlag === 1.U) {    // BGE
            io.branchSrc := 1.U
        }.elsewhen(io.funct3 === "b110".U & io.lessThanFlag === 1.U) {    // BLTU
            io.branchSrc := 1.U
        }.elsewhen(io.funct3 === "b111".U & io.greaterThanFlag === 1.U) {    // BGEU
            io.branchSrc := 1.U
        }.otherwise {                                           // NONE
            io.branchSrc := 0.U
        }

    }.elsewhen(io.opcode === "b1101111".U) {                   // JAL
        io.regSrc := 4.U
        io.immSrc := 2.U
        io.aluSrc := 1.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regWriteEnable := 1.U
        io.memWriteEnable := 0.U
        io.branchSrc := 1.U
        io.aluControl := 0.U
        io.fpuRegWriteEnable := 0.U
        io.fpuControl := 0.U
    }.elsewhen(io.opcode === "b1100111".U) {                    //JALR
        io.regSrc := 4.U
        io.immSrc := 0.U
        io.aluSrc := 1.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regWriteEnable := 1.U
        io.memWriteEnable := 0.U
        io.branchSrc := 2.U
        io.aluControl := 2.U
        io.fpuRegWriteEnable := 0.U
        io.fpuControl := 0.U
    }.elsewhen(io.opcode === "b1110011".U) {                   // ECALL
        io.regSrc := 0.U
        io.immSrc := 0.U
        io.aluSrc := 0.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regWriteEnable := 0.U
        io.memWriteEnable := 0.U
        io.branchSrc := 0.U
        io.aluControl := 0.U
        io.fpuRegWriteEnable := 0.U    
        io.fpuControl := 0.U
    }.elsewhen(io.opcode === "b1010011".U) {
        io.regSrc := 0.U
        io.immSrc := 0.U
        io.aluSrc := 1.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regWriteEnable := 0.U
        io.memWriteEnable := 0.U
        io.branchSrc := 0.U
        io.aluControl := 0.U

        when(io.funct7 === "b0000000".U) {                  //FADD.S
            io.fpuControl := 0.U
            io.fpuRegWriteEnable := 1.U
        }.elsewhen(io.funct7 === "b0000100".U) {            //FSUB.S 
            io.fpuControl := 1.U
            io.fpuRegWriteEnable := 1.U
        }.elsewhen(io.funct7 === "b0001000".U) {            //FMUL.S
            io.fpuControl := 2.U
            io.fpuRegWriteEnable := 1.U
        }.otherwise {                                       //FDIV.S
            io.fpuControl := 3.U
            io.fpuRegWriteEnable := 1.U
        }
    }.otherwise {                                               // NONE
        io.regSrc := 0.U
        io.immSrc := 0.U
        io.aluSrc := 0.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regWriteEnable := 0.U
        io.fpuRegWriteEnable := 0.U
        io.memWriteEnable := 0.U
        io.branchSrc := 0.U
        io.aluControl := 0.U
        io.fpuRegWriteEnable := 0.U
        io.fpuControl := 0.U
    }
/*    
    // print info
    decoderMessage.branchSrc := io.branchSrc
    decoderMessage.opcode := io.opcode
    decoderMessage.funct3 := io.funct3
    decoderMessage.regSrc := io.regSrc
    decoderMessage.immSrc := io.immSrc
    decoderMessage.aluSrc := io.aluSrc
    decoderMessage.pcSrc := io.pcSrc
    decoderMessage.regWriteEnable := io.regWriteEnable
    decoderMessage.memToReg := io.memToReg
    decoderMessage.memWriteEnable := io.memWriteEnable
    decoderMessage.aluControl := io.aluControl
    decoderMessage.zeroFlag := io.zeroFlag
    decoderMessage.lessThanFlag := io.lessThanFlag
    decoderMessage.greaterThanFlag := io.greaterThanFlag
    decoderMessage.fpuControl := io.fpuControl
    decoderMessage.fpuRegWriteEnable := io.fpuRegWriteEnable
    printf(p"$decoderMessage")
*/
}

/*
class MessageDatapath extends Bundle {
  val instr = UInt(32.W)
  val memToReg = UInt(1.W)
  val memReadData = SInt(32.W)
  val memImm = SInt(32.W)
  val aluOut = SInt(32.W)
  val pcNext = UInt(32.W)
  val branchExtImm = SInt(32.W)
  val extImm = SInt(32.W)
  val regReadData2 = SInt(32.W)
  val regWriteData = SInt(32.W)
  val memAddress = UInt(32.W)
  val auiImm = SInt(32.W)
  val pcBranch = SInt(32.W)
  val pcRegBranch = UInt(32.W)
  val pcPlus4 = UInt(32.W)
  val branchSrc = UInt(2.W)
  val regSrc = UInt(2.W)
  val memWriteData = SInt(32.W)

  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|datapath Module:\n" +
    p"|  inst            : 0x${Hexadecimal(instr)}\n" +
    p"|  memToReg        : b${Binary(memToReg)}\n" +
    p"|  memImm          : b${Binary(memImm)}\n" +
    p"|  memAddress      : 0x${Hexadecimal(memAddress)}\n" +
    p"|  memReadData     : 0x${Hexadecimal(memReadData)}\n" +
    p"|  memWriteData    : 0x${Hexadecimal(memWriteData)}\n" +
    p"|  aluOut          : 0x${Hexadecimal(aluOut)}\n" +
    p"|  pcNext          : 0x${Hexadecimal(pcNext)}\n" +
    p"|  branchExtImm    : 0x${Hexadecimal(branchExtImm)}\n" +
    p"|  extImm          : 0x${Hexadecimal(extImm)}\n" +
    p"|  regReadData2    : 0x${Hexadecimal(regReadData2)}\n" +
    p"|  regWriteData    : 0x${Hexadecimal(regWriteData)}\n" +
    p"|  regSrc          : 0x${Hexadecimal(regSrc)}\n" +
    p"|  pcBranch        : 0x${Hexadecimal(pcBranch)}\n" +
    p"|  pcRegBranch     : 0x${Hexadecimal(pcRegBranch)}\n" +
    p"|  pcPlus4         : 0x${Hexadecimal(pcPlus4)}\n" +
    p"|  branchSrc       : b${Binary(branchSrc)}\n" +
    p"|___________________________\n" 
  }
}
*/

class datapath extends Module {
    val io = IO(new Bundle {
        val regSrc = Input(UInt(3.W))
        val regWriteEnable = Input(UInt(1.W))
        val fpuRegWriteEnable = Input(UInt(1.W))
        val immSrc = Input(UInt(2.W))
        val aluSrc = Input(UInt(1.W))
        val pcSrc = Input(UInt(1.W))
        val aluControl = Input(UInt(4.W))
        val fpuControl = Input(UInt(2.W))
        val memToReg = Input(UInt(1.W))
        val instr = Input(UInt(32.W))
        val memReadData = Input(SInt(32.W))
        val branchSrc = Input(UInt(2.W))
        val pc = Output(UInt(32.W))
        val memAddress = Output(UInt(32.W))
        val memWriteData = Output(SInt(32.W))
        val zeroFlag = Output(UInt(1.W))
        val lessThanFlag = Output(UInt(1.W))
        val greaterThanFlag = Output(UInt(1.W))
    })

    //val datapathMessage = Wire(new MessageDatapath)
    val rf = Module(new regfile)
    val fpurf = Module(new fpuRegfile)
    val alu = Module(new alu)
    val fpu = Module(new fpu)
    val ext1 = Module(new extend)
    val ext2 = Module(new extend)
    val branchImm = Wire(UInt(12.W))
    val jumpImm = Wire(UInt(12.W))
    val auiImm = Wire(SInt(32.W))
    val memImm = Wire(SInt(32.W))
    val branchExtImm = Wire(SInt(32.W))
    val extImm = Wire(SInt(32.W))
    val pcRegBranch = Wire(UInt(32.W))
    val regWriteData = Wire(SInt(32.W))
    val regReadAddress1 = Wire(UInt(5.W))
    val regReadAddress2 = Wire(UInt(5.W))

    //Immediate Logic
    branchImm := Cat(io.instr(31), io.instr(7), io.instr(30,25), io.instr(11,8))
    jumpImm := Cat(io.instr(31), io.instr(19,12), io.instr(20), io.instr(30,21))
    auiImm := (Cat(io.instr(31,12), 0.U(12.W))).asSInt
    ext1.io.instr12 := branchImm
    ext1.io.instr20 := jumpImm
    ext1.io.immSrc := io.immSrc
    ext2.io.instr12 := io.instr(31,20) 
    ext2.io.instr20 := jumpImm
    ext2.io.immSrc := io.immSrc
    branchExtImm := ext1.io.extImm
    extImm := Mux(io.pcSrc.andR, auiImm, ext2.io.extImm)
    
    
    //PC logic
    val pcReg = RegInit (0.U(32.W))
    val pcNext = Wire(UInt(32.W))
    val pcBranch = Wire(SInt(32.W))
    val pcPlus8 = Wire(UInt(32.W))
    val pcPlus4 = Wire(UInt(32.W))
    pcPlus4 := pcReg + 4.U
    pcPlus8 := pcPlus4 + "b100".U
    pcBranch := branchExtImm + pcPlus4.asSInt
    pcRegBranch := alu.io.out.asUInt & "hFFFFFFFE".U
    pcNext := Mux(io.branchSrc(1).andR, pcRegBranch, Mux(io.branchSrc(0).andR, pcBranch.asUInt, pcPlus4))
    pcReg := pcNext
    io.pc := pcReg
    

    //Mem logic
    memImm := (Cat(io.instr(31,25), io.instr(11,7))).asSInt
    io.memAddress := ((Mux(io.memToReg.andR, extImm, memImm)).asSInt + rf.io.regReadData1).asUInt

    //regFile logic
    regReadAddress1 := Mux(io.regSrc(0).andR, "b11111".U, io.instr(19,15))
    regReadAddress2 := Mux(io.regSrc(1).andR, io.instr(11,7), io.instr(24,20))
    regWriteData := Mux(io.regSrc(2).andR, pcPlus4.asSInt, Mux(io.memToReg.andR, io.memReadData, alu.io.out))
    rf.io.regWriteEnable := io.regWriteEnable
    rf.io.regReadAddress1 := regReadAddress1
    rf.io.regReadAddress2 := regReadAddress2
    rf.io.regWriteAddress := io.instr(11,7)
    rf.io.regWriteData := regWriteData
    io.memWriteData := rf.io.regReadData2
     

    //FPU logic
    fpu.io.a := fpurf.io.fpuRegReadData1
    fpu.io.b := fpurf.io.fpuRegReadData2
    fpu.io.fpuControl := io.fpuControl
    
       
    //fpuRegFile logic
    fpurf.io.fpuRegWriteEnable := io.fpuRegWriteEnable
    fpurf.io.fpuRegWriteAddress := io.instr(11,7)
    fpurf.io.fpuRegWriteData := fpu.io.s.asSInt
    fpurf.io.fpuRegReadAddress1 := io.instr(19,15)
    fpurf.io.fpuRegReadAddress2 := io.instr(24,20)


    //ALU Logic
    alu.io.a := Mux(io.pcSrc.andR, pcPlus4.asSInt, rf.io.regReadData1)
    alu.io.b := Mux(io.aluSrc.andR, extImm, rf.io.regReadData2)
    alu.io.aluControl := io.aluControl
    io.zeroFlag := alu.io.zeroFlag
    io.lessThanFlag := alu.io.lessThanFlag
    io.greaterThanFlag := alu.io.greaterThanFlag
/*
    datapathMessage.instr := io.instr
    datapathMessage.memToReg := io.memToReg
    datapathMessage.memImm := memImm
    datapathMessage.memReadData := io.memReadData
    datapathMessage.aluOut := alu.io.out
    datapathMessage.pcNext := pcNext
    datapathMessage.branchExtImm := branchExtImm
    datapathMessage.extImm := extImm
    datapathMessage.regReadData2 := rf.io.regReadData2
    datapathMessage.memWriteData := io.memWriteData
    datapathMessage.memAddress := io.memAddress
    datapathMessage.auiImm := auiImm
    datapathMessage.pcBranch := pcBranch
    datapathMessage.pcRegBranch := pcRegBranch
    datapathMessage.pcPlus4 := pcPlus4
    datapathMessage.branchSrc := io.branchSrc
    datapathMessage.regWriteData := regWriteData
    datapathMessage.regSrc := io.regSrc
    printf(p"$datapathMessage")
*/
}

/*
class MessageRegFile extends Bundle {
  val regWriteEnable = UInt(1.W)
  val regReadAddress1 = UInt(5.W)
  val regReadAddress2 = UInt(5.W)
  val regWriteAddress = UInt(5.W)
  val regWriteData = SInt(32.W)
  val regReadData1 = SInt(32.W)
  val regReadData2 = SInt(32.W)

  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|regfile Module:\n" +
    p"|  regWriteEnable  : b${Binary(regWriteEnable)}\n" +
    p"|  regReadAddress1 : b${Binary(regReadAddress1)}\n" +
    p"|  regReadAddress2 : b${Binary(regReadAddress2)}\n" +
    p"|  regWriteAddress : b${Binary(regWriteAddress)}\n" +
    p"|  regWriteData    : 0x${Hexadecimal(regWriteData)}\n" +
    p"|  regReadData1    : 0x${Hexadecimal(regReadData1)}\n" +
    p"|  regReadData2    : 0x${Hexadecimal(regReadData2)}\n" +
    p"|___________________________\n"
  }
}
*/

class regfile extends Module {
    val io = IO(new Bundle {
        val regWriteEnable = Input(UInt(1.W))
        val regWriteAddress = Input(UInt(5.W))
        val regWriteData = Input(SInt(32.W))
        val regReadAddress1 = Input(UInt(5.W))
        val regReadAddress2 = Input(UInt(5.W))
        val regReadData1 = Output(SInt(32.W))
        val regReadData2 = Output(SInt(32.W))
    })

    val rf = Mem(32, SInt(32.W))
    //val regfileMessage = Wire(new MessageRegFile)

    when(io.regWriteEnable.andR && !(io.regWriteAddress === 0.U)){
        rf(io.regWriteAddress) := io.regWriteData
    }.otherwise {
        rf(0.U) := 0.S
    }

    io.regReadData1 := rf(io.regReadAddress1)
    io.regReadData2 := rf(io.regReadAddress2)

/*
    regfileMessage.regWriteData := io.regWriteData
    regfileMessage.regWriteEnable := io.regWriteEnable
    regfileMessage.regWriteAddress := io.regWriteAddress
    regfileMessage.regReadData1 := io.regReadData1
    regfileMessage.regReadData2 := io.regReadData2
    regfileMessage.regReadAddress1 := io.regReadAddress1
    regfileMessage.regReadAddress2 := io.regReadAddress2
    printf(p"$regfileMessage")


    printf("\n\n\n___________________________\n")
    for(j <- 0 to 31){
        val regVal = Wire(SInt(32.W))
        regVal := rf(j.U)
        printf("| rf(" + j + ") = ") 
        printf(p"$regVal\n")
    }
    printf("|___________________________\n")
*/
}

/*
class MessageFpuRegFile extends Bundle {
  val fpuRegWriteEnable = UInt(1.W)
  val fpuRegReadAddress1 = UInt(5.W)
  val fpuRegReadAddress2 = UInt(5.W)
  val fpuRegWriteAddress = UInt(5.W)
  val fpuRegWriteData = SInt(32.W)
  val fpuRegReadData1 = SInt(32.W)
  val fpuRegReadData2 = SInt(32.W)

  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|fpuRegfile Module:\n" +
    p"|  fpuRegWriteEnable  : b${Binary(fpuRegWriteEnable)}\n" +
    p"|  fpuRegReadAddress1 : b${Binary(fpuRegReadAddress1)}\n" +
    p"|  fpuRegReadAddress2 : b${Binary(fpuRegReadAddress2)}\n" +
    p"|  fpuRegWriteAddress : b${Binary(fpuRegWriteAddress)}\n" +
    p"|  fpuRegWriteData    : 0x${Hexadecimal(fpuRegWriteData)}\n" +
    p"|  fpuRegReadData1    : 0x${Hexadecimal(fpuRegReadData1)}\n" +
    p"|  fpuRegReadData2    : 0x${Hexadecimal(fpuRegReadData2)}\n" +
    p"|___________________________\n"
  }
}
*/

class fpuRegfile extends Module {
    val io = IO(new Bundle {
        val fpuRegWriteEnable = Input(UInt(1.W))
        val fpuRegWriteAddress = Input(UInt(5.W))
        val fpuRegWriteData = Input(SInt(32.W))
        val fpuRegReadAddress1 = Input(UInt(5.W))
        val fpuRegReadAddress2 = Input(UInt(5.W))
        val fpuRegReadData1 = Output(SInt(32.W))
        val fpuRegReadData2 = Output(SInt(32.W))
    })

    val fpu_rf = Mem(32, SInt(32.W))
    //val fpuRegfileMessage = Wire(new MessageFpuRegFile)

    fpu_rf(0.U) := 1036831949.S
    
    when(io.fpuRegWriteEnable.andR && !(io.fpuRegWriteAddress === 0.U)){
        fpu_rf(io.fpuRegWriteAddress) := io.fpuRegWriteData
    }.otherwise {
        fpu_rf(0.U) := 1036831949.S
    }

    io.fpuRegReadData1 := fpu_rf(io.fpuRegReadAddress1)
    io.fpuRegReadData2 := fpu_rf(io.fpuRegReadAddress2)

/*
    fpuRegfileMessage.fpuRegWriteData := io.fpuRegWriteData
    fpuRegfileMessage.fpuRegWriteEnable := io.fpuRegWriteEnable
    fpuRegfileMessage.fpuRegWriteAddress := io.fpuRegWriteAddress
    fpuRegfileMessage.fpuRegReadData1 := io.fpuRegReadData1
    fpuRegfileMessage.fpuRegReadData2 := io.fpuRegReadData2
    fpuRegfileMessage.fpuRegReadAddress1 := io.fpuRegReadAddress1
    fpuRegfileMessage.fpuRegReadAddress2 := io.fpuRegReadAddress2
    printf(p"$fpuRegfileMessage")


    printf("\n\n\n___________________________\n")
    for(j <- 0 to 31){
        val regVal = Wire(SInt(32.W))
        regVal := fpu_rf(j.U)
        printf("| fpu_rf(" + j + ") = ") 
        printf(p"${Hexadecimal(regVal)}\n")
    }
    printf("|___________________________\n")
*/
}

/*
class MessageAlu extends Bundle {
  val a = SInt(32.W)
  val b = SInt(32.W)
  val out = SInt(32.W)
  val aluControl = UInt(4.W)
  val zeroFlag = UInt(1.W)
  val lessThanFlag = UInt(1.W)
  val greaterThanFlag = UInt(1.W)

  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|alu Module:\n" +
    p"|  a               : 0x${Hexadecimal(a)}\n" +
    p"|  b               : 0x${Hexadecimal(b)}\n" +
    p"|  out             : 0x${Hexadecimal(out)}\n" +
    p"|  aluControl      : b${Binary(aluControl)}\n" +
    p"|  zeroFlag        : b${Binary(zeroFlag)}\n" +
    p"|  lessThanFlag    : b${Binary(lessThanFlag)}\n" +
    p"|  greaterThanFlag : b${Binary(greaterThanFlag)}\n" +
    p"|___________________________\n"
  }
}
*/

class alu extends Module {
    val io = IO(new Bundle {
        val a = Input(SInt(32.W))
        val b = Input(SInt(32.W))
        val aluControl = Input(UInt(4.W))
        val out = Output(SInt(32.W))

        val zeroFlag = Output(Bool())
        val lessThanFlag = Output(Bool())
        val greaterThanFlag = Output(Bool())
    })

    //val aluMessage = Wire(new MessageAlu)

    when (io.aluControl === 0.U) {                      //AND, ANDI
        io.out := io.a & io.b
    }.elsewhen (io.aluControl === 1.U) {                //OR, ORI
        io.out := io.a | io.b
    }.elsewhen (io.aluControl === 2.U) {                //ADD, ADDI, AUIPC, JALR
        io.out := io.a + io.b                           
    }.elsewhen (io.aluControl === 3.U) {                //SLL, SLLI
        io.out := io.a << io.b(11,0)
    }.elsewhen (io.aluControl === 4.U) {                //SRA, SRAI
        io.out := io.a >> io.b(11,0)
    }.elsewhen(io.aluControl === 5.U){                  //SLTU, SLTIU
        when(io.a.asUInt < io.b.asUInt){
            io.out := 1.S
        }.otherwise{
            io.out := 0.S
        }
    }.elsewhen (io.aluControl === 6.U) {                //XOR, XORI
        io.out := io.a ^ io.b
    }.elsewhen (io.aluControl === 7.U) {                //SRL, SRLI
        io.out := io.a >> io.b(11,0)
    }.elsewhen(io.aluControl === 8.U) {                 //MUL, (not in RV32I)            //
        io.out := io.a * io.b
    }.elsewhen(io.aluControl === 9.U) {                  //SLT, SLTI
        when(io.a < io.b){
            io.out := 1.S
        }.otherwise{
            io.out := 0.S
        }
    }.elsewhen(io.aluControl === 10.U){                //DIV (not in RV32I)
        io.out := io.a / io.b
    }.elsewhen(io.aluControl === 12.U){                 //SUB
        io.out := io.a - io.b
    }.otherwise {
        io.out := 0.S
    }


    io.zeroFlag := Mux(io.a + io.b === 0.S, true.B, false.B)
    io.lessThanFlag := (io.a < io.b)
    io.greaterThanFlag := (io.a > io.b)

/*
    aluMessage.a := io.a
    aluMessage.b := io.b
    aluMessage.out := io.out
    aluMessage.aluControl := io.aluControl
    aluMessage.zeroFlag := io.zeroFlag
    aluMessage.lessThanFlag := io.lessThanFlag
    aluMessage.greaterThanFlag := io.greaterThanFlag
    printf(p"$aluMessage")
*/
}

/*
class MessageFpu extends Bundle {
    val a = SInt(32.W)
    val b = SInt(32.W)
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
    val result = UInt(48.W)
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
    p"|  result     : 0x${Hexadecimal(result)}\n" +
    p"|  exponent   : b${Binary(exponent)}\n" +
    p"|  fract      : b${Binary(fract)}\n" +
    p"|  s          : 0x${Hexadecimal(s)}\n" +
    p"|___________________________\n"
  }
}
*/

class fpu extends Module {
    val io = IO(new Bundle {
        val a = Input(SInt(32.W))
        val b = Input(SInt(32.W))
        val fpuControl = Input(UInt(2.W))
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
    val result = Wire(UInt(48.W))
    //val fpuMessage = Wire(new MessageFpu) 
    
    //Getting exponents and mantissa
    exp_a := io.a(30, 23)
    mant_a := Cat(1.U, io.a(22, 0))
    exp_b := io.b(30,23)
    mant_b := Cat(1.U, io.b(22, 0))
    //*******************************

    //Result for multiply
    result := mant_a * mant_b

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

    when(io.fpuControl === 0.U | io.fpuControl === 1.U){
        fract := Mux(addresult(24).andR, addresult(23, 1), addresult(22, 0))
        exponent := Mux(addresult(24).andR, (exp_pre + 1.U), exp_pre)
    }.elsewhen (io.fpuControl === 2.U | io.fpuControl === 3.U){
        fract := Mux(result(47).andR, result(46,24), result(45,23))
        exponent := Mux(result(47).andR, ((exp_a + exp_b) - 126.U), ((exp_a + exp_b) - 127.U))
    }.otherwise{
        fract := 0.U
        exponent := 0.U
    }
    //*************************************************************************

    //Final result
    io.s := Cat(0.U, exponent, fract)

/*
    fpuMessage.a := io.a
    fpuMessage.b := io.b
    fpuMessage.mant_a := mant_a
    fpuMessage.mant_b := mant_b
    fpuMessage.exp_a := exp_a
    fpuMessage.exp_b := exp_b
    fpuMessage.aminusb := aminusb
    fpuMessage.bminusa := bminusa
    fpuMessage.alessb := alessb
    fpuMessage.shmant := shmant
    fpuMessage.shamt := shamt
    fpuMessage.shiftedval := shiftedval
    fpuMessage.addval := addval
    fpuMessage.ovf := ovf
    fpuMessage.exp_pre := exp_pre
    fpuMessage.exponent := exponent
    fpuMessage.addresult := addresult
    fpuMessage.result := result
    fpuMessage.fract := fract
    fpuMessage.s := io.s
    printf(p"$fpuMessage")
*/
}

class imem extends Module {
    val io = IO(new Bundle {
        val instAddress = Input(UInt(32.W))
        val inst = Output(UInt(32.W))
    })

    val MEM = Mem(1024, UInt(32.W))
    loadMemoryFromFile(MEM, "tests/TESTFILE.X")

    io.inst := MEM(io.instAddress)
}

/*
class MessageDmem extends Bundle {
  val memAddress = UInt(32.W)
  val memWriteData = SInt(32.W)
  val memWriteEnable = UInt(32.W)
  val memReadData = SInt(32.W)

  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|dmem Module:\n" +
    p"|  memAddress      : 0x${Hexadecimal(memAddress)}\n" +
    p"|  memWriteData    : 0x${Hexadecimal(memWriteData)}\n" +
    p"|  memWriteEnable  : b${Binary(memWriteEnable)}\n" +
    p"|  memReadData     : 0x${Hexadecimal(memReadData)}\n" +
    p"|___________________________\n"
  }
}
*/

class dmem extends Module {
    val io = IO(new Bundle {
        val memAddress = Input(UInt(32.W))
        val memWriteData = Input(SInt(32.W))
        val memWriteEnable = Input(UInt(1.W))
        val memReadData = Output(SInt(32.W))
    })

    //val dmemMessage = Wire(new MessageDmem)
    val mem = SyncReadMem(1024, SInt(32.W))

    when(io.memWriteEnable.andR){
        mem.write(io.memAddress, io.memWriteData)
    }

    io.memReadData := mem(io.memAddress)

/*
    printf("\n\n\nMemory___________________________\n")
    for(j <- 0 to 31){
        val memVal = Wire(SInt(32.W))
        memVal := mem(j.U)
        printf("| mem(" + j + ") = ") 
        printf(p"$memVal\n")
    }
    printf("|________________________________\n")  

    dmemMessage.memAddress := io.memAddress
    dmemMessage.memWriteData := io.memWriteData
    dmemMessage.memWriteEnable := io.memWriteEnable
    dmemMessage.memReadData := io.memReadData
    printf(p"$dmemMessage")
*/
}

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
