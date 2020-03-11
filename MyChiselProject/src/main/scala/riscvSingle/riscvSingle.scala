package riscvSingle

import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}
import chisel3.util.experimental.loadMemoryFromFile

class top extends Module {
    val io = IO(new Bundle {
    })

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

    printf(p"Instruction pulled: ${Hexadecimal(instr_out)}\n")
    printf(p"PC pulled: $pc_pulled\n")
    printf(p"mem_in($mem_inW) -------- mem_out($mem_outW)\n")
    im.io.mem_addr := r.io.pc / 4.U
    r.io.instr := im.io.mem_out

    printf("\n\n---------NEXT INSTRUCTION---------\n")
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

    val d = Module(new decoder)
    val dp = Module(new datapath)
    
    val instW = Wire(UInt(32.W))
    val readDataW = Wire(UInt(32.W))
    readDataW := io.readData
    instW := io.instr
    printf("*********RISCV***********\n")
    printf(p"INSTRUCTION: ${Binary(instW)}\n")
    printf(p"readData: $readDataW\n")
    printf("******END RISCV**********\n\n")
    
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

class extend extends Module {
    val io = IO(new Bundle {
        val instr12 = Input(UInt(12.W))
        val instr20 = Input(UInt(20.W))
        val immSrc = Input(UInt(2.W))
        val extImm = Output(UInt(32.W))
    })

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

    val instr12W = Wire(UInt(12.W))
    val instr20W = Wire(UInt(20.W))
    val immsrcW = Wire(UInt(2.W))
    val extImmW = Wire(UInt(32.W))
    instr12W := io.instr12
    instr20W := io.instr20
    immsrcW := io.immSrc
    extImmW := io.extImm

    printf("*******EXTEND*******\n")
    printf(p"instr12: ${Binary(instr12W)}\n")
    printf(p"instr20: ${Binary(instr20W)}\n")
    printf(p"immsrcW: ${Binary(immsrcW)}\n")
    printf(p"extImmW: ${Binary(extImmW)}\n")
    printf("*******END EXTEND*******\n\n")
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
        val aluControl = Output(UInt(4.W))
        val memW = Output(UInt(1.W))
        val memToReg = Output(UInt(1.W))
        val branchSrc = Output(UInt(1.W))
        val zero = Input(UInt(1.W))
        val lt = Input(UInt(1.W))
        val gt = Input(UInt(1.W))
    })

    when(io.opcode === "b0110011".U) {
        io.regSrc := "b000".U
        io.immSrc := "b00".U
        io.aluSrc := 0.U
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
        }.otherwise {
            when(io.funct3 === "b000".U) {          //MUL
                io.aluControl := 8.U                
            }.otherwise {                           //SUB
                io.aluControl := 4.U                
            }
        }
    }.elsewhen (io.opcode === "b0010011".U) {
        io.regSrc := "b000".U
        io.immSrc := "b00".U
        io.aluSrc := 1.U
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
    }.elsewhen (io.opcode === "b0000011".U) {       // LOAD
        io.regSrc := "b000".U
        io.immSrc := "b00".U
        io.aluSrc := 1.U
        io.memToReg := 1.U
        io.regW := 1.U
        io.memW := 1.U
        io.branchSrc := 0.U
        io.aluControl := 0.U
    }.elsewhen (io.opcode === "b0100011".U) {       // STORE
        io.regSrc := "b000".U
        io.immSrc := "b00".U
        io.aluSrc := 1.U
        io.memToReg := 0.U
        io.regW := 0.U
        io.memW := 1.U
        io.branchSrc := 0.U
        io.aluControl := 0.U
    }.elsewhen (io.opcode === "b1100011".U) {
        io.regSrc := "b000".U
        io.immSrc := "b01".U
        io.aluSrc := 0.U
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

    }.elsewhen (io.opcode === "b1101111".U) {                   // JAL
        io.regSrc := "b100".U
        io.immSrc := "b10".U
        io.aluSrc := 1.U
        io.memToReg := 0.U
        io.regW := 1.U
        io.memW := 0.U
        io.branchSrc := 1.U
        io.aluControl := 0.U
    }.otherwise {                                               // NONE
        io.regSrc := "b000".U
        io.immSrc := "b00".U
        io.aluSrc := 0.U
        io.memToReg := 0.U
        io.regW := 0.U
        io.memW := 0.U
        io.branchSrc := 0.U
        io.aluControl := 0.U
    }
    
    val opcodeW = Wire(UInt(7.W))
    val branchSrcW = Wire(UInt(1.W))
    val funct3W = Wire(UInt(3.W))
    val zeroW = Wire(UInt(1.W))
    val ltW = Wire(UInt(1.W))
    val gtW = Wire(UInt(1.W))
    branchSrcW := io.branchSrc
    opcodeW := io.opcode
    funct3W := io.funct3
    zeroW := io.zero
    ltW := io.lt
    gtW := io.gt

    printf("**********DECODER************\n")
    printf(p"branchSrc: ${Binary(branchSrcW)}\n")
    printf(p"opcode: ${Binary(opcodeW)}\n")
    printf(p"funct3: ${Binary(funct3W)}\n")
    printf(p"zero: ${Binary(zeroW)}\n")
    printf(p"lt: ${Binary(ltW)}\n")
    printf(p"gt: ${Binary(gtW)}\n")
    printf("*******END DECODER***********\n\n")
}



class datapath extends Module {
    val io = IO(new Bundle {
        val regSrc = Input(UInt(3.W))
        val regWrite = Input(UInt(1.W))
        val immSrc = Input(UInt(2.W))
        val aluSrc = Input(UInt(1.W))
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

    val ext1 = Module(new extend)
    val rf = Module(new regfile)
    val ext2 = Module(new extend)
    val alu = Module(new alu)

    val memImmStore = Wire(UInt(32.W))
    val memImm = Wire(UInt(32.W))
    val branchImm = Wire(UInt(32.W))
    val jumpImm = Wire(UInt(32.W))
    val branchExtImm = Wire(UInt(32.W))
    val extImm = Wire(UInt(32.W))
    val memToRegW = Wire(UInt(1.W))
    val readDataW = Wire(UInt(32.W))
    val aluOutW = Wire(UInt(32.W))
    val ra1 = Wire(UInt(5.W))
    val ra2 = Wire(UInt(5.W))
    val ra4 = Wire(UInt(32.W))
    val srcB = Wire(UInt(32.W))
    val result = Wire(UInt(32.W))

    //Branch Logic
    branchImm := Cat(io.instr(31), io.instr(7), io.instr(30,25), io.instr(11,8))
    jumpImm := Cat(io.instr(31), io.instr(19,12), io.instr(20), io.instr(30,21))
    ext1.io.instr12 := branchImm
    ext1.io.instr20 := jumpImm
    ext1.io.immSrc := io.immSrc
    ext2.io.instr12 := io.instr(31,20) 
    ext2.io.instr20 := jumpImm
    ext2.io.immSrc := io.immSrc
    branchExtImm := ext1.io.extImm
    extImm := ext2.io.extImm
    
    
    
    
    //print data
    memToRegW := io.memToReg
    readDataW := io.readData
    aluOutW := alu.io.out
    
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

    

    printf("**********DATAPATH**********\n")
    printf("****ALUD****\n")
    printf(p"mux[$memToRegW, readData($readDataW), alu.out($aluOutW)]\n")
    printf(p"Result: $result\n")
    printf("****PCD****\n")
    printf(p"pcNext: $pcNext\n")
    printf(p"branchExtImm: $branchExtImm\n")
    printf(p"pvBranch: $pcBranch\n")
    printf(p"pcPlus4: $pcPlus4\n")
    val branchSrcW = Wire(UInt(1.W))
    branchSrcW := io.branchSrc
    printf(p"branchSrc: $branchSrcW\n")
    printf("***regFile***\n")
    printf(p"ra4: $ra4\n")
    printf("********END DATAPATH*********\n\n")
    
    rf.io.we3 := io.regWrite
    rf.io.ra1 := ra1
    rf.io.ra2 := ra2
    rf.io.wa3 := io.instr(11,7)
    rf.io.wd3 := ra4
    rf.io.r31 := pcPlus8
    io.writeData := rf.io.rd2



    //ALU logic
    srcB := Mux(io.aluSrc.andR, extImm, rf.io.rd2)

    
    alu.io.a := rf.io.rd1
    alu.io.b := srcB
    alu.io.aluControl := io.aluControl
    alu.io.imm := io.aluSrc
    io.zero := alu.io.zero
    io.lt := alu.io.lt
    io.gt := alu.io.gt
    
    
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

    when(io.we3.andR && !(io.wa3 === 0.U)){
        rf(io.wa3) := io.wd3
    }.otherwise {
        rf(0.U) := 0.U
    }

    io.rd1 := Mux((io.ra1 === 31.U), rf(io.r31), rf(io.ra1))
    io.rd2 := Mux((io.ra2 === 31.U), rf(io.r31), rf(io.ra2))

    val wd3W = Wire(UInt(32.W))
    val wa3W = Wire(UInt(5.W))
    val rd1W = Wire(UInt(32.W))
    val rd2W = Wire(UInt(32.W))
    val ra1W = Wire(UInt(32.W))
    val ra2W = Wire(UInt(32.W))
    val we3W = Wire(UInt(1.W))

    wd3W := io.wd3
    we3W := io.we3
    wa3W := io.wa3
    rd1W := io.rd1
    rd2W := io.rd2
    ra1W := io.ra1
    ra2W := io.ra2


    printf("*********REGFILE*********\n")
    printf(p"writeSrc($we3W)? $wd3W --> rf($wa3W)\n")
    printf(p"rd1 = rf($ra1W) = ")
    printf(p"$rd1W\n")
    printf(p"rd2 = rf($ra2W) = ")
    printf(p"$rd2W\n")
    for(j <- 0 to 31){
        val regVal = Wire(UInt(32.W))
        regVal := rf(j.U)
        printf("rf(" + j + ") = ") 
        printf(p"$regVal\n")
    }
    printf("*******END REGFILE********\n\n")
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
    }.elsewhen(io.aluControl === "b1001".U) {
        when (sum(31).andR) {
            io.out := 1.U
        }.otherwise {
            io.out := 0.U
        }
    }.otherwise {
        io.out := 0.U
    }

    val aW = Wire(UInt(32.W))
    val bW = Wire(UInt(32.W))
    val outW = Wire(UInt(32.W))
    val sumW = Wire(UInt(32.W))
    val aluControlW = Wire(UInt(4.W))
    aluControlW := io.aluControl
    aW := io.a
    bW := io.b
    sumW := sum
    outW := io.out

    when(io.a - io.b === 0.U)
    {
        io.zero := 1.U
    }.otherwise{
        io.zero := 0.U
    }
    io.lt := (io.a < io.b)
    io.gt := (io.a > io.b)

    val zeroW = Wire(UInt(1.W))
    val ltW = Wire(UInt(1.W))
    val gtW = Wire(UInt(1.W))

    zeroW := io.zero
    ltW := io.lt
    gtW := io.gt

    printf("***********ALU**********\n")
    printf(p"a = $aW\n")
    printf(p"b = $bW\n")
    printf(p"sum = $sumW\n")
    printf(p"out = $outW\n")
    printf(p"aluControl = ${Binary(aluControlW)}\n")
    printf(p"zero = $zeroW\n")
    printf(p"lt = $ltW\n")
    printf(p"gt = $gtW\n")
    printf("********END ALU*********\n\n")
}


class imem extends Module {
    val io = IO(new Bundle {
        val mem_addr = Input(UInt(32.W))
        val mem_out = Output(UInt(32.W))
    })

    val MEM = Mem(1024, UInt(32.W))
    loadMemoryFromFile(MEM, "/home/rjridle/chisel/RISCV_Chisel/single_cycle/risc-v-chisel/MyChiselProject/tests/beqTests/simpBeq.x")

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
    for (x <- 0 to 20){
        step(1)
    }
}

object top extends App {
  iotesters.Driver.execute(args, () => new top) {
    t => new riscvSingleTest(t)
  }


/*
class riscvSingleTest(rv: riscv) extends PeekPokeTester(rv) {
    poke(rv.io.instr, "h00100093".U)
    poke(rv.io.readData, 0.U)
    step(1)
    println("PC: " + peek(rv.io.pc))
    println("memWrite: " + peek(rv.io.memWrite))
    println("aluResult: " + peek(rv.io.aluResult))
    println("writeData: " + peek(rv.io.writeData))
    println("memImmP: " + peek(rv.io.memImmP))

    poke(rv.io.instr, "h00108113".U)
    poke(rv.io.readData, 0.U)
    step(1)
    println("PC: " + peek(rv.io.pc))
    println("memWrite: " + peek(rv.io.memWrite))
    println("aluResult: " + peek(rv.io.aluResult))
    println("writeData: " + peek(rv.io.writeData))
    println("memImmP: " + peek(rv.io.memImmP))

    poke(rv.io.instr, "h001101B3".U)
    poke(rv.io.readData, 0.U)
    step(1)
    println("PC: " + peek(rv.io.pc))
    println("memWrite: " + peek(rv.io.memWrite))
    println("aluResult: " + peek(rv.io.aluResult))
    println("writeData: " + peek(rv.io.writeData))
    println("memImmP: " + peek(rv.io.memImmP))

     poke(rv.io.instr, "h00218233".U)
    poke(rv.io.readData, 0.U)
    step(1)
    println("PC: " + peek(rv.io.pc))
    println("memWrite: " + peek(rv.io.memWrite))
    println("aluResult: " + peek(rv.io.aluResult))
    println("writeData: " + peek(rv.io.writeData))
    println("memImmP: " + peek(rv.io.memImmP))

     poke(rv.io.instr, "h003202B3".U)
    poke(rv.io.readData, 0.U)
    step(1)
    println("PC: " + peek(rv.io.pc))
    println("memWrite: " + peek(rv.io.memWrite))
    println("aluResult: " + peek(rv.io.aluResult))
    println("writeData: " + peek(rv.io.writeData))
    println("memImmP: " + peek(rv.io.memImmP))

     poke(rv.io.instr, "h01810313".U)
    poke(rv.io.readData, 0.U)
    step(1)
    println("PC: " + peek(rv.io.pc))
    println("memWrite: " + peek(rv.io.memWrite))
    println("aluResult: " + peek(rv.io.aluResult))
    println("writeData: " + peek(rv.io.writeData))
    println("memImmP: " + peek(rv.io.memImmP))
    step(1)
}

object riscv extends App {
  iotesters.Driver.execute(args, () => new riscv) {
    rv => new riscvSingleTest(rv)
  }
  */
}
