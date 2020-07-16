#!/bin/bash

if [ "$#" -eq 1 ]
then
	testFile=$1
	testFilePlaceholder='TESTFILE.X'
	echo "Test File: $testFile"
	sed -i "s|${testFilePlaceholder}|${testFile}.x|1" src/main/scala/riscvSingle.scala
        sbt "runMain riscvSingle.top" 2>&1 > ${testFile}.res 
	sed -i "s|${testFile}.x|${testFilePlaceholder}|1" src/main/scala/riscvSingle.scala	
	vim ${testFile}.res
else
	echo "./runProject [name of test file]"
	echo "=>DO NOT ADD EXTENTIONS"
	echo "=> project file must be located somewhere in MyChiselProjects/src/main/scala/"
	echo "=> if project file is included in another directory then add the path"
	echo "=> starting from scala/"
	echo "=> test file must be located somewhere in MyChiselProjects/tests/:"
	echo "=> if test file is inside another directory then add the path"
	echo "=> starting from tests/"
fi

