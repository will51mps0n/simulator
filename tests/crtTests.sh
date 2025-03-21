#!/bin/bash
make clean
make assembler 
make simulator

echo "Updating correct outputs..."

echo "spec test:"
./assembler p3spec.as p3spec.mc
./simulator p3spec.mc > p3out.correct
echo "Updated p3out.correct"

echo "test 2dAdd"
./assembler test2dAdd.as test2dAdd.mc
./simulator test2dAdd.mc > test2dAddOut.correct
echo "Updated test2dAddOut.correct"

echo "test lwdependency"
./assembler lwdependency.as lwdependency.mc
./simulator lwdependency.mc > lwdependencyOut.correct
echo "Updated lwdependencyOut.correct"

echo "test lw dependency no haz"
./assembler lwdependencynohaz.as lwdependencynohaz.mc
./simulator lwdependencynohaz.mc > lwdependencynohazOut.correct
echo "Updated lwdependencynohazOut.correct"

echo "test FromSpec"
./assembler testFromSpec.as testFromSpec.mc
./simulator testFromSpec.mc > testFromSpecOut.correct
echo "Updated testFromSpecOut.correct"

echo "test Loop"
./assembler testLoop.as testLoop.mc
./simulator testLoop.mc > testLoopOut.correct
echo "Updated testLoopOut.correct"

echo "test LwALU"
./assembler testLwALU.as testLwALU.mc
./simulator testLwALU.mc > testLwALUOut.correct
echo "Updated testLwALUOut.correct"

echo "test LwSwAdd"
./assembler testLwSwAdd.as testLwSwAdd.mc
./simulator testLwSwAdd.mc > testLwSwAddOut.correct
echo "Updated testLwSwAddOut.correct"

echo "test addCat"
./assembler testaddCat.as testaddCat.mc
./simulator testaddCat.mc > testaddCatOut.correct
echo "Updated testaddCatOut.correct"

# Adding new tests based on your file list
echo "test doblsw"
./assembler testdoblsw.as testdoblsw.mc
./simulator testdoblsw.mc > testdoblswOut.correct
echo "Updated testdoblswOut.correct"

echo "test lsl"
./assembler testlsl.as testlsl.mc
./simulator testlsl.mc > testlslOut.correct
echo "Updated testlslOut.correct"

echo "test lsl"
./assembler testlsl.as testlsl.mc
./simulator testlsl.mc > testlslOut.correct
echo "Updated testlslOut.correct"



echo "All correct output files have been updated."
