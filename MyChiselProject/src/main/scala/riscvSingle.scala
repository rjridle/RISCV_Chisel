package riscvSingle

import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}
import chisel3.util.experimental.loadMemoryFromFile

class MessageTop extends Bundle {
  val instr_pulled = UInt(32.W)
  val pc_pulled = UInt(32.W)
  val memIn = UInt(32.W)
  val memOut = UInt(32.W)
  override def toPrintable: Printable = {
      p"\n\n\n___________________________\n" +
    p"|top Module:\n" +
    p"|  instr pulled: 0x${Hexadecimal(instr_pulled)}\n" +
    p"|  pc pulled   : b${Binary(pc_pulled)}\n" +
    p"|  mem in      : b${Binary(memIn)}\n" +
    p"|  mem out     : b${Binary(memOut)}\n" +
    p"|___________________________\n" 
  }
}

class top extends Module {
    val io = IO(new Bundle {
        val valid = Output(UInt(1.W))
    })
    
    val topMessage = Wire(new MessageTop)
    
    val r = Module(new riscv)
    
    val im = Module(new imem)
    
    val dm = Module(new dmem)
    
    val instr_out = Wire(UInt(32.W))
    val pc_pulled = Wire(UInt(32.W))
    val mem_inW = Wire(UInt(32.W))
    val mem_outW = Wire(UInt(32.W))
    
    instr_out := im.io.mem_out
    
    pc_pulled := r.io.pc / 4.U
    
    dm.io.mem_addr := r.io.aluResult
    
    dm.io.mem_in := r.io.writeData
    
    dm.io.enable := r.io.memWrite
    
    r.io.readData := dm.io.mem_out
    
    mem_outW := dm.io.mem_out
    
    mem_inW := r.io.writeData
    

    // print info
    topMessage.instr_pulled := instr_out
    
    topMessage.pc_pulled := pc_pulled
    
    topMessage.memIn := mem_inW
    
    topMessage.memOut := mem_outW
    
    printf(p"$topMessage")
    

    im.io.mem_addr := r.io.pc / 4.U
    
    r.io.instr := im.io.mem_out
    
    io.valid := Mux(instr_out(6, 0) === "b1110011".U, 0.U, 1.U)
}

class MessageRiscv extends Bundle {
  val instr = UInt(32.W)
  val readData = UInt(32.W)
  override def toPrintable: Printable = {
    p"___________________________\n" +
    p"|riscv Module:\n" +
    p"|  instr       : 0x${Hexadecimal(instr)}\n" +
    p"|  readData    : 0x${Hexadecimal(readData)}\n" +
    p"|___________________________\n"
  }
}

class riscv extends Module {
    val io = IO(new Bundle {
        val instr = Input(UInt(32.W))
        val readData = Input(UInt(32.W))
        val pc = Output(UInt(32.W))
        val memWrite = Output(UInt(1.W))
        val aluResult = Output(UInt(32.W))
        val writeData = Output(UInt(32.W))
        val memImmP = Output(UInt(32.W))
    })

    val riscvMessage = Wire(new MessageRiscv)

    val dp = Module(new datapath)
    val d = Module(new decoder)
    

    // print info
    riscvMessage.instr := io.instr
    riscvMessage.readData := io.readData
    printf(p"$riscvMessage")

    d.io.opcode := io.instr(6,0)
    d.io.funct7 := io.instr(31,25)
    d.io.funct3 := io.instr(14,12)
    d.io.rd := io.instr(11,7)
    d.io.zero := dp.io.zero
    d.io.lt := dp.io.lt
    d.io.gt := dp.io.gt
    
    dp.io.regSrc := d.io.regSrc
    dp.io.regWrite := d.io.regW
    dp.io.immSrc := d.io.immSrc
    dp.io.aluSrc := d.io.aluSrc
    dp.io.pcSrc := d.io.pcSrc
    dp.io.aluControl := d.io.aluControl
    dp.io.memToReg := d.io.memW
    dp.io.instr := io.instr
    dp.io.readData := io.readData
    dp.io.branchSrc := d.io.branchSrc
    
    io.pc := dp.io.pc
    io.memWrite := d.io.memW
    io.aluResult := dp.io.dataAdd
    io.writeData := dp.io.writeData
    io.memImmP := dp.io.memImmP
}

class MessageExtend extends Bundle {
  val instr12 = UInt(12.W)
  val instr20 = UInt(20.W)
  val immsrc = UInt(2.W)
  val extImm = UInt(32.W)
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

class extend extends Module {
    val io = IO(new Bundle {
        val instr12 = Input(UInt(12.W))
        val instr20 = Input(UInt(20.W))
        val immSrc = Input(UInt(2.W))
        val extImm = Output(UInt(32.W))
    })

    val extendMessage = Wire(new MessageExtend)

    when(io.immSrc === 0.U){
        when(io.instr12(11) === 1.U){
            io.extImm := Cat("b11111111111111111111".U, io.instr12)
        }.otherwise {
            io.extImm := Cat("b00000000000000000000".U, io.instr12)
        }
    }.elsewhen(io.immSrc === 1.U){
        when(io.instr12(11) === 1.U){
            io.extImm := Cat("b1111111111111111111".U, io.instr12, "b0".U)
        }.otherwise{
            io.extImm := Cat("b0000000000000000000".U, io.instr12, "b0".U)
        }
    }.elsewhen(io.immSrc === 2.U){
        when(io.instr20(19) === 1.U){
            io.extImm := Cat("b11111111111".U, io.instr20, "b0".U)
        }.otherwise{
            io.extImm := Cat("b00000000000".U, io.instr20, "b0".U)
        }
    }.otherwise {
        io.extImm := 0.U
    }
    extendMessage.instr12 := io.instr12
    extendMessage.instr20 := io.instr20
    extendMessage.immsrc := io.immSrc
    extendMessage.extImm := io.extImm
    printf(p"$extendMessage")
}

class MessageDecoder extends Bundle {
  val branchSrc = UInt(1.W)
  val opcode = UInt(7.W)
  val funct3 = UInt(3.W)
  val regSrc = UInt(1.W)
  val immSrc = UInt(2.W)
  val aluSrc = UInt(1.W)
  val pcSrc = UInt(1.W)
  val aluControl = UInt(4.W)
  val memToReg = UInt(1.W)
  val zero = UInt(1.W)
  val lt = UInt(1.W)
  val gt = UInt(1.W)
  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|decoder Module:\n" +
    p"|  branchSrc   : b${Binary(branchSrc)}\n" +
    p"|  opcode      : b${Binary(opcode)}\n" +
    p"|  funct3      : b${Binary(funct3)}\n" +
    p"|  regSrc      : b${Binary(regSrc)}\n" +
    p"|  immSrc      : b${Binary(immSrc)}\n" +
    p"|  aluSrc      : b${Binary(aluSrc)}\n" +
    p"|  pcSrc       : b${Binary(pcSrc)}\n" +
    p"|  aluControl  : b${Binary(aluControl)}\n" +
    p"|  memToReg    : b${Binary(memToReg)}\n" +
    p"|  zero        : b${Binary(zero)}\n" +
    p"|  lt          : b${Binary(lt)}\n" +
    p"|  gt          : b${Binary(gt)}\n" +
    p"|___________________________\n"
  }
}

class decoder extends Module {
    val io = IO(new Bundle {
        val opcode = Input(UInt(7.W))
        val funct7 = Input(UInt(7.W))
        val funct3 = Input(UInt(3.W))
        val rd = Input(UInt(5.W))
        val regSrc = Output(UInt(3.W))
        val regW = Output(UInt(1.W))
        val immSrc = Output(UInt(2.W))
        val aluSrc = Output(UInt(1.W))
        val pcSrc = Output(UInt(1.W))
        val aluControl = Output(UInt(4.W))
        val memW = Output(UInt(1.W))
        val memToReg = Output(UInt(1.W))
        val branchSrc = Output(UInt(1.W))
        val zero = Input(UInt(1.W))
        val lt = Input(UInt(1.W))
        val gt = Input(UInt(1.W))
    })


    val decoderMessage = Wire(new MessageDecoder)

    when(io.opcode === "b0110011".U) {
        io.regSrc := "b000".U
        io.immSrc := "b00".U
        io.aluSrc := 0.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regW := 1.U
        io.memW := 0.U
        io.branchSrc := 0.U

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
            }.otherwise {                           //AND
                io.aluControl := 0.U                
            }
        }.elsewhen(io.funct7 === "b0000001".U){
            when(io.funct3 === "b000".U){           //MUL
                io.aluControl := 8.U
            }.elsewhen(io.funct3 === "b101".U){     //DIV
                io.aluControl := 10.U
            }.otherwise {
                io.aluControl := 0.U  
            }
        }.elsewhen(io.funct7 === "b0100000".U){
            io.aluControl := 4.U                    //SUB
        }.otherwise {
            io.aluControl := 0.U                    //NONE
        }
    }.elsewhen(io.opcode === "b0010111".U){       //AUIPC
        io.regSrc := "b000".U
        io.immSrc := "b11".U
        io.aluSrc := 1.U
        io.pcSrc := 1.U
        io.memToReg := 0.U
        io.regW := 1.U
        io.memW := 0.U
        io.branchSrc := 0.U
        io.aluControl := 2.U
    }.elsewhen(io.opcode === "b0010011".U) {
        io.regSrc := "b000".U
        io.immSrc := "b00".U
        io.aluSrc := 1.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regW := 1.U
        io.memW := 0.U
        io.branchSrc := 0.U

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
    }.elsewhen(io.opcode === "b0000011".U) {       // LOAD
        io.regSrc := "b000".U
        io.immSrc := "b00".U
        io.aluSrc := 1.U
        io.pcSrc := 0.U
        io.memToReg := 1.U
        io.regW := 1.U
        io.memW := 1.U
        io.branchSrc := 0.U
        io.aluControl := 0.U
    }.elsewhen(io.opcode === "b0100011".U) {       // STORE
        io.regSrc := "b000".U
        io.immSrc := "b00".U
        io.aluSrc := 1.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regW := 0.U
        io.memW := 1.U
        io.branchSrc := 0.U
        io.aluControl := 0.U
    }.elsewhen(io.opcode === "b1100011".U) {
        io.regSrc := "b000".U
        io.immSrc := "b01".U
        io.aluSrc := 0.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regW := 0.U
        io.memW := 0.U
        io.aluControl := 4.U
        
        when(io.funct3 === "b000".U & io.zero === 1.U){         // BEQ
            io.branchSrc := 1.U
        }.elsewhen(io.funct3 === "b001".U & io.zero === 0.U) {  // BNE
            io.branchSrc := 1.U
        }.elsewhen(io.funct3 === "b100".U & io.lt === 1.U) {    // BLT
            io.branchSrc := 1.U
        }.elsewhen(io.funct3 === "b101".U & io.gt === 1.U) {    // BGE
            io.branchSrc := 1.U
        }.elsewhen(io.funct3 === "b110".U & io.lt === 1.U) {    // BLTU
            io.branchSrc := 1.U
        }.elsewhen(io.funct3 === "b111".U & io.gt === 1.U) {    // BGEU
            io.branchSrc := 1.U
        }.otherwise {                                           // NONE
            io.branchSrc := 0.U
        }

    }.elsewhen(io.opcode === "b1101111".U) {                   // JAL
        io.regSrc := "b100".U
        io.immSrc := "b10".U
        io.aluSrc := 1.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regW := 1.U
        io.memW := 0.U
        io.branchSrc := 1.U
        io.aluControl := 0.U
    }.elsewhen(io.opcode === "b1110011".U) {                   // ECALL
        io.regSrc := "b000".U
        io.immSrc := "b00".U
        io.aluSrc := 0.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regW := 0.U
        io.memW := 0.U
        io.branchSrc := 0.U
        io.aluControl := 0.U    
    }.otherwise {                                               // NONE
        io.regSrc := "b000".U
        io.immSrc := "b00".U
        io.aluSrc := 0.U
        io.pcSrc := 0.U
        io.memToReg := 0.U
        io.regW := 0.U
        io.memW := 0.U
        io.branchSrc := 0.U
        io.aluControl := 0.U
    }
    
    // print info
    decoderMessage.branchSrc := io.branchSrc
    decoderMessage.opcode := io.opcode
    decoderMessage.funct3 := io.funct3
    decoderMessage.regSrc := io.regSrc
    decoderMessage.immSrc := io.immSrc
    decoderMessage.aluSrc := io.aluSrc
    decoderMessage.pcSrc := io.pcSrc
    decoderMessage.memToReg := io.memToReg
    decoderMessage.aluControl := io.aluControl
    decoderMessage.zero := io.zero
    decoderMessage.lt := io.lt
    decoderMessage.gt := io.gt
    printf(p"$decoderMessage")
}


class MessageDatapath extends Bundle {
  val instr = UInt(32.W)
  val memToReg = UInt(1.W)
  val readData = UInt(32.W)
  val aluOut = UInt(32.W)
  val result = UInt(32.W)
  val pcNext = UInt(32.W)
  val branchExtImm = UInt(32.W)
  val extImm = (UInt(32.W))
  val auiImm = (UInt(32.W))
  val pcBranch = UInt(32.W)
  val pcPlus4 = UInt(32.W)
  val branchSrc = UInt(1.W)
  val ra4 = UInt(32.W)

  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|datapath Module:\n" +
    p"|  inst            : 0x${Hexadecimal(instr)}\n" +
    p"|  memToReg        : b${Binary(memToReg)}\n" +
    p"|  readData        : 0x${Hexadecimal(readData)}\n" +
    p"|  aluOut          : 0x${Hexadecimal(aluOut)}\n" +
    p"|  result          : 0x${Hexadecimal(result)}\n" +
    p"|  pcNext          : 0x${Hexadecimal(pcNext)}\n" +
    p"|  branchExtImm    : 0x${Hexadecimal(branchExtImm)}\n" +
    p"|  extImm          : b${Hexadecimal(extImm)}\n" +
    p"|  pcBranch        : 0x${Hexadecimal(pcBranch)}\n" +
    p"|  pcPlus4         : 0x${Hexadecimal(pcPlus4)}\n" +
    p"|  branchSrc       : b${Binary(branchSrc)}\n" +
    p"|  ra4             : 0x${Hexadecimal(ra4)}\n" +
    p"|___________________________\n" 
  }
}

class datapath extends Module {
    val io = IO(new Bundle {
        val regSrc = Input(UInt(3.W))
        val regWrite = Input(UInt(1.W))
        val immSrc = Input(UInt(2.W))
        val aluSrc = Input(UInt(1.W))
        val pcSrc = Input(UInt(1.W))
        val aluControl = Input(UInt(4.W))
        val memToReg = Input(UInt(1.W))
        val instr = Input(UInt(32.W))
        val readData = Input(UInt(32.W))
        val branchSrc = Input(UInt(1.W))
        val pc = Output(UInt(32.W))
        val dataAdd = Output(UInt(32.W))
        val writeData = Output(UInt(32.W))
        val zero = Output(UInt(1.W))
        val lt = Output(UInt(1.W))
        val gt = Output(UInt(1.W))
        val memImmP = Output(UInt(32.W))
    })

    val datapathMessage = Wire(new MessageDatapath)
    val ext1 = Module(new extend)
    val rf = Module(new regfile)
    val ext2 = Module(new extend)
    val alu = Module(new alu)
    val memImmStore = Wire(UInt(32.W))
    val memImm = Wire(UInt(32.W))
    val branchImm = Wire(UInt(12.W))
    val jumpImm = Wire(UInt(12.W))
    val auiImm = Wire(UInt(32.W))
    val branchExtImm = Wire(UInt(32.W))
    val extImm = Wire(UInt(32.W))
    val ra1 = Wire(UInt(5.W))
    val ra2 = Wire(UInt(5.W))
    val ra4 = Wire(UInt(32.W))
    val srcB = Wire(UInt(32.W))
    val result = Wire(UInt(32.W))

    //Branch Logic
    branchImm := Cat(io.instr(31), io.instr(7), io.instr(30,25), io.instr(11,8))
    jumpImm := Cat(io.instr(31), io.instr(19,12), io.instr(20), io.instr(30,21))
    auiImm := Cat(io.instr(31,12), "b0".asUInt(12.W))
    ext1.io.instr12 := branchImm
    ext1.io.instr20 := jumpImm
    ext1.io.immSrc := io.immSrc
    ext2.io.instr12 := io.instr(31,20) 
    ext2.io.instr20 := jumpImm
    ext2.io.immSrc := io.immSrc
    branchExtImm := ext1.io.extImm
    extImm := Mux(io.pcSrc.andR, auiImm, ext2.io.extImm)
    
    
    //PC logic
    val pcReg =  RegInit (0.U(32.W))
    val pcNext = Wire(UInt(32.W))
    val pcBranch = Wire(UInt(32.W))
    val pcPlus8 = Wire(UInt(32.W))
    val pcPlus4 = Wire(UInt(32.W))
    pcPlus4 := pcReg + "h4".U
    pcPlus8 := pcPlus4 + "b100".U
    pcBranch := branchExtImm + pcReg
    pcNext := Mux(io.branchSrc.andR, pcBranch, pcPlus4)
    pcReg := pcNext
    io.pc := pcReg
    

    //Mem logic
    memImmStore := Cat(io.instr(31,25), io.instr(11,7))
    memImm := Mux(io.memToReg.andR, extImm, memImmStore)
    io.memImmP := memImm
    io.dataAdd := rf.io.rd1 + memImm
    

    result := Mux(io.memToReg.andR, io.readData, alu.io.out)

    //regFile logic
    ra1 := Mux(io.regSrc(0).andR, "b11111".U, io.instr(19,15))
    ra2 := Mux(io.regSrc(1).andR, io.instr(11,7), io.instr(24,20))
    ra4 := Mux(io.regSrc(2).andR, pcPlus4, result)
    
    rf.io.we3 := io.regWrite
    rf.io.ra1 := ra1
    rf.io.ra2 := ra2
    rf.io.wa3 := io.instr(11,7)
    rf.io.wd3 := ra4
    rf.io.r31 := pcPlus8
    io.writeData := rf.io.rd2

    //ALU logic
    srcB := Mux(io.aluSrc.andR, extImm, rf.io.rd2)

    
    alu.io.a := Mux(io.pcSrc.andR, pcPlus4, rf.io.rd1)
    alu.io.b := srcB
    alu.io.aluControl := io.aluControl
    alu.io.imm := io.aluSrc
    io.zero := alu.io.zero
    io.lt := alu.io.lt
    io.gt := alu.io.gt

    datapathMessage.instr := io.instr
    datapathMessage.memToReg := io.memToReg
    datapathMessage.readData := io.readData
    datapathMessage.aluOut := alu.io.out
    datapathMessage.result := result
    datapathMessage.pcNext := pcNext
    datapathMessage.branchExtImm := branchExtImm
    datapathMessage.extImm := extImm
    datapathMessage.auiImm := auiImm
    datapathMessage.pcBranch := pcBranch
    datapathMessage.pcPlus4 := pcPlus4
    datapathMessage.branchSrc := io.branchSrc
    datapathMessage.ra4 := ra4
    printf(p"$datapathMessage")
        
}

class MessageRegFile extends Bundle {
  val we3 = UInt(1.W)
  val ra1 = UInt(5.W)
  val ra2 = UInt(5.W)
  val wa3 = UInt(5.W)
  val wd3 = UInt(32.W)
  val r31 = UInt(32.W)
  val rd1 = UInt(32.W)
  val rd2 = UInt(32.W)

  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|regfile Module:\n" +
    p"|  we3 : b${Binary(we3)}\n" +
    p"|  ra1 : b${Binary(ra1)}\n" +
    p"|  ra2 : b${Binary(ra2)}\n" +
    p"|  wa3 : b${Binary(wa3)}\n" +
    p"|  wd3 : 0x${Hexadecimal(wd3)}\n" +
    p"|  r31 : 0x${Hexadecimal(r31)}\n" +
    p"|  rd1 : 0x${Hexadecimal(rd1)}\n" +
    p"|  rd2 : 0x${Hexadecimal(rd2)}\n" +
    p"|___________________________\n"
  }
}

class regfile extends Module {
    val io = IO(new Bundle {
        val we3 = Input(UInt(1.W))
        val ra1 = Input(UInt(5.W))
        val ra2 = Input(UInt(5.W))
        val wa3 = Input(UInt(5.W))
        val wd3 = Input(UInt(32.W))
        val r31 = Input(UInt(32.W))
        val rd1 = Output(UInt(32.W))
        val rd2 = Output(UInt(32.W))
    })

    val rf = Mem(32, UInt(32.W))
    val regfileMessage = Wire(new MessageRegFile)

    when(io.we3.andR && !(io.wa3 === 0.U)){
        rf(io.wa3) := io.wd3
    }.otherwise {
        rf(0.U) := 0.U
    }

    io.rd1 := Mux((io.ra1 === 31.U), rf(io.r31), rf(io.ra1))
    io.rd2 := Mux((io.ra2 === 31.U), rf(io.r31), rf(io.ra2))

    regfileMessage.wd3 := io.wd3
    regfileMessage.we3 := io.we3
    regfileMessage.wa3 := io.wa3
    regfileMessage.rd1 := io.rd1
    regfileMessage.rd2 := io.rd2
    regfileMessage.ra1 := io.ra1
    regfileMessage.ra2 := io.ra2
    regfileMessage.r31 := io.r31

    printf("\n\n\n___________________________\n")
    for(j <- 0 to 31){
        val regVal = Wire(UInt(32.W))
        regVal := rf(j.U)
        printf("| rf(" + j + ") = ") 
        printf(p"$regVal\n")
    }
    printf("|___________________________\n")
}

class MessageAlu extends Bundle {
  val a = UInt(32.W)
  val b = UInt(32.W)
  val sum = UInt(32.W)
  val out = UInt(32.W)
  val aluControl = UInt(4.W)
  val zero = UInt(1.W)
  val lt = UInt(1.W)
  val gt = UInt(1.W)

  override def toPrintable: Printable = {
    p"\n\n\n___________________________\n" +
    p"|alu Module:\n" +
    p"|  a           : 0x${Hexadecimal(a)}\n" +
    p"|  b           : 0x${Hexadecimal(b)}\n" +
    p"|  sum         : 0x${Hexadecimal(sum)}\n" +
    p"|  out         : 0x${Hexadecimal(out)}\n" +
    p"|  aluControl  : b${Binary(aluControl)}\n" +
    p"|  zero        : b${Binary(zero)}\n" +
    p"|  lt          : b${Binary(lt)}\n" +
    p"|  gt          : b${Binary(gt)}\n" +
    p"|___________________________\n"
  }
}

class alu extends Module {
    val io = IO(new Bundle {
        val a = Input(UInt(32.W))
        val b = Input(UInt(32.W))
        val aluControl = Input(UInt(4.W))
        val imm = Input(UInt(1.W))
        val out = Output(UInt(32.W))

        val zero = Output(Bool())
        val lt = Output(Bool())
        val gt = Output(Bool())
    })

    val aluMessage = Wire(new MessageAlu)
    val sum = Wire(UInt(32.W))

    when(io.aluControl(3) === 1.U){
        sum := io.a + ~io.b + io.aluControl(3)
    }.otherwise {
        sum := io.a + io.b
    }
    
    when (io.aluControl === "b0000".U) {
        io.out := io.a & io.b
    }.elsewhen (io.aluControl === "b0001".U) {
        io.out := io.a | io.b
    }.elsewhen (io.aluControl === "b0010".U) {
        io.out := sum
    }.elsewhen (io.aluControl === "b0011".U) {
        when (io.imm.andR) {
            io.out := io.a << io.b(4, 0)
        }.otherwise {
            io.out := io.a << io.b(18,0)
        }
    }.elsewhen (io.aluControl === "b0100".U) {
        when (io.imm.andR) {
            io.out := io.a >> io.b(4, 0)
        }.otherwise {
            io.out := io.a >> io.b(18,0)
        }
    }.elsewhen (io.aluControl === "b0110".U) {
        io.out := io.a ^ io.b
    }.elsewhen (io.aluControl === "b0111".U) {
        when (io.imm.andR) {
            io.out := io.a >> io.b(4, 0)
        }.otherwise {
            io.out := io.a >> io.b(18,0)
        }
    }.elsewhen(io.aluControl === "b1000".U) {
        io.out := io.a * io.b
    }.elsewhen(io.aluControl === "b1010".U){
        io.out := io.a / io.b
    }.elsewhen(io.aluControl === "b1001".U) {
        when (sum(31).andR) {
            io.out := 1.U
        }.otherwise {
            io.out := 0.U
        }
    }.otherwise {
        io.out := 0.U
    }

    when(io.a - io.b === 0.U)
    {
        io.zero := 1.U
    }.otherwise{
        io.zero := 0.U
    }

    io.lt := (io.a < io.b)
    io.gt := (io.a > io.b)

    aluMessage.a := io.a
    aluMessage.b := io.b
    aluMessage.sum := sum
    aluMessage.out := io.out
    aluMessage.aluControl := io.aluControl
    aluMessage.zero := io.zero
    aluMessage.lt := io.lt
    aluMessage.gt := io.gt
    printf(p"$aluMessage")

}


class imem extends Module {
    val io = IO(new Bundle {
        val mem_addr = Input(UInt(32.W))
        val mem_out = Output(UInt(32.W))
    })

    val MEM = Mem(1024, UInt(32.W))
    loadMemoryFromFile(MEM, "tests/TESTFILE.X")

    io.mem_out := MEM(io.mem_addr)
}

class dmem extends Module {
    val io = IO(new Bundle {
        val mem_addr = Input(UInt(32.W))
        val mem_in = Input(UInt(32.W))
        val enable = Input(UInt(1.W))
        val mem_out = Output(UInt(32.W))
    })

    val mem = SyncReadMem(1024, UInt(32.W))
    mem.write(io.mem_addr, io.mem_in)
    io.mem_out := mem.read(io.mem_addr, io.enable.andR)
}

class riscvSingleTest(t: top) extends PeekPokeTester(t) {
    println("**********STARTING riscvSingleTest*******")
    var cycles = 1
    var validP = peek(t.io.valid)
    
    println(s"Starting valid = $validP")
    println(s"CYCLE: $cycles")
    while (peek(t.io.valid) == BigInt(1) && cycles < 100) {
        println(s"STARTING NEXT CYCLE: $cycles")
        validP = peek(t.io.valid)
        println(s"valid = $validP")
        step(1)
        cycles += 1
    }

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
    println("STARTING top OBJECT FUNCTION")
    chisel3.Driver.execute(args, () => new top)
}

class MessageRtype extends Bundle {
  val instr = UInt(32.W)
  val funct7 = UInt(7.W)
  val rs1 = UInt(5.W)
  val rs2 = UInt(5.W)
  val funct3 = UInt(3.W)
  val rd = UInt(5.W)
  val opcode = UInt(7.W)
  override def toPrintable: Printable = {
    p"R-Type (${Hexadecimal(instr)}):\n" +
    p"  funct7      : ${Binary(funct7)}\n" +
    p"  rs1         : ${Binary(rs1)}\n" +
    p"  rs2         : ${Binary(rs2)}\n" +
    p"  funct3      : ${Binary(funct3)}\n" +
    p"  rd          : ${Binary(rd)}\n" +
    p"  opcode      : ${Binary(opcode)}\n" 
  }
}

class MessageItype extends Bundle {
  val instr = UInt(32.W)
  val imm = UInt(12.W)
  val rs1 = UInt(5.W)
  val funct3 = UInt(3.W)
  val rd = UInt(5.W)
  val opcode = UInt(7.W)
  override def toPrintable: Printable = {
    p"I-Type (${Hexadecimal(instr)}):\n" +
    p"  imm[11:0]   : ${Binary(imm)}\n" +
    p"  rs1         : ${Binary(rs1)}\n" +
    p"  funct3      : ${Binary(funct3)}\n" +
    p"  rd          : ${Binary(rd)}\n" +
    p"  opcode      : ${Binary(opcode)}\n" 
  }
}

class MessageStype extends Bundle {
  val instr = UInt(32.W)
  val imm7 = UInt(7.W)
  val rs1 = UInt(5.W)
  val rs2 = UInt(5.W)
  val opcode = UInt(7.W)
  val imm5 = UInt(5.W)
  val funct3 = UInt(3.W)
  override def toPrintable: Printable = {
    p"S-Type (${Hexadecimal(instr)}):\n" +
    p"  imm[11:5]   : ${Binary(imm7)}\n" +
    p"  rs2         : ${Binary(rs2)}\n" +
    p"  rs1         : ${Binary(rs1)}\n" +
    p"  funct3      : ${Binary(funct3)}\n" +
    p"  imm[4:0]    : ${Binary(imm5)}\n" +
    p"  opcode      : ${Binary(opcode)}\n" 
  }
}

class MessageSBtype extends Bundle {
  val instr = UInt(32.W)
  val imm7 = UInt(12.W)
  val rs1 = UInt(5.W)
  val rs2 = UInt(5.W)
  val imm5 = UInt(5.W)
  val opcode = UInt(7.W)
  val funct3 = UInt(3.W)
  override def toPrintable: Printable = {
    p"SB-Type (${Hexadecimal(instr)}):\n" +
    p"  imm[12|10:5]: ${Binary(imm7)}\n" +
    p"  rs2         : ${Binary(rs2)}\n" +
    p"  rs1         : ${Binary(rs1)}\n" +
    p"  funct3      : ${Binary(funct3)}\n" +
    p"  imm[4:1|11] : ${Binary(imm5)}\n" +
    p"  opcode      : ${Binary(opcode)}\n" 
  }
}

class MessageUtype extends Bundle {
  val instr = UInt(32.W)
  val imm20 = UInt(20.W)
  val rd = UInt(5.W)
  val opcode = UInt(7.W)
  override def toPrintable: Printable = {
    p"U-Type (${Hexadecimal(instr)}):\n" +
    p"  imm[31:12]  : ${Binary(imm20)}\n" +
    p"  rd          : ${Binary(rd)}\n" +
    p"  opcode      : ${Binary(opcode)}\n" 
  }
}

class MessageUJtype extends Bundle {
  val instr = UInt(32.W)
  val imm20 = UInt(12.W)
  val rd = UInt(5.W)
  val opcode = UInt(7.W)
  override def toPrintable: Printable = {
    p"UJ-Type (${Hexadecimal(instr)}):\n" +
    p"  imm[20|10:1|11|19:12]   : ${Binary(imm20)}\n" +
    p"  rd                      : ${Binary(rd)}\n" +
    p"  opcode                  : ${Binary(opcode)}\n" 
  }
}
