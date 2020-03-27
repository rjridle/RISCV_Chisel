#!/bin/bash

if [ "$#" -eq 2 ]
then
	projectFile=$1
	testFile=$2
	testFilePlaceholder='TESTFILE.X'
	echo "Project File: $projectFile"
	echo "Test File: $testFile"
	echo "Placeholder: $testFilePlaceholder"
	sed -i "s|${testFilePlaceholder}|${testFile}.x|1" src/main/scala/$projectFile.scala
        sbt "runMain $projectFile.top"  
	sed -i "s|${testFile}.x|${testFilePlaceholder}|1" src/main/scala/$projectFile.scala	
else
	echo "./runProject [name of project file] [name of test file]"
	echo "=>DO NOT ADD EXTENTIONS"
	echo "=> project file must be located somewhere in MyChiselProjects/src/main/scala/"
	echo "=> if project file is included in another directory then add the path"
	echo "=> starting from scala/"
	echo "=> test file must be located somewhere in MyChiselProjects/tests/:"
	echo "=> if test file is inside another directory then add the path"
	echo "=> starting from tests/"
fi

