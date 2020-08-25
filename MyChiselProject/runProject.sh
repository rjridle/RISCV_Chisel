#!/bin/bash

if [ "$#" -eq 1 ]
then
	testFile=$1
	testFilePlaceholder='TESTFILE.X'
	echo "Test File: $testFile"
	sed -i "s|${testFilePlaceholder}|${testFile}|1" src/main/scala/riscvSingle.scala
        sbt "runMain riscvSingle.top" 2>&1 > ${testFile}.res 
	sed -i "s|${testFile}.x|${testFilePlaceholder}|1" src/main/scala/riscvSingle.scala	
	cat ${testFile}.res
else
	echo "./runProject [test file]"
	echo "=> project file must be located somewhere in MyChiselProjects/src/main/scala/"
	echo "=> if project file is included in another directory then add the path"
	echo "=> starting from scala/"
	echo "=> test file must be located somewhere in MyChiselProjects/tests/:"
	echo "=> if test file is inside another directory then add the path"
	echo "=> starting from tests/"
fi

