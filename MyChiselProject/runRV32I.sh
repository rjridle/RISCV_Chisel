#!/bin/bash

	testFile='RV32I_test.x'
	testFilePlaceholder='TESTFILE.X'
	echo "Test File: $testFile"
	sed -i "s|${testFilePlaceholder}|${testFile}|1" src/main/scala/riscvSingle.scala
        sbt "runMain riscvSingle.top" 2>&1 > ${testFile}.res 
	sed -i "s|${testFile}.x|${testFilePlaceholder}|1" src/main/scala/riscvSingle.scala	
	cat ${testFile}.res

