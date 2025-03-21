#!/bin/bash
make clean
make assembler 
make simulator

echo "ALL THESE SHOULD PASS:"
echo 
echo "SPEC TEST"
./assembler p3spec.as  p3spec.mc
./simulator p3spec.mc > p3out.txt
echo "simulator diff spec:"
diff p3out.txt p3out.correct | 
echo 

echo "test 2dAdd"
./assembler test2dAdd.as test2dAdd.mc
./simulator test2dAdd.mc > test2dAddOut.txt
echo "diff for test 2dAdd:"
diff test2dAddOut.txt test2dAddOut.correct
echo 

echo "test lwdependency"
./assembler lwdependency.as lwdependency.mc
./simulator lwdependency.mc > lwdependencyOut.txt
echo "diff for lwdependency:"
diff lwdependencyOut.txt lwdependencyOut.correct
echo 

echo "test lw dependency no haz"
./assembler lwdependencynohaz.as lwdependencynohaz.mc
./simulator lwdependencynohaz.mc > lwdependencynohazOut.txt
echo "diff for lw dependency no haz:"
diff lwdependencynohazOut.txt lwdependencynohazOut.correct
echo 


echo "test Loop"
./assembler testLoop.as testLoop.mc
./simulator testLoop.mc > testLoopOut.txt
echo "diff for test Loop:"
diff testLoopOut.txt testLoopOut.correct
echo 

echo "test LwALU"
./assembler testLwALU.as testLwALU.mc
./simulator testLwALU.mc > testLwALUOut.txt
echo "diff for test LwALU:"
diff testLwALUOut.txt testLwALUOut.correct
echo 

echo "test LwSwAdd"
./assembler testLwSwAdd.as testLwSwAdd.mc
./simulator testLwSwAdd.mc > testLwSwAddOut.txt
echo "diff for test LwSwAdd:"
diff testLwSwAddOut.txt testLwSwAddOut.correct
echo 

echo "test addCat"
./assembler testaddCat.as testaddCat.mc
./simulator testaddCat.mc > testaddCatOut.txt
echo "diff for test addCat:"
diff testaddCatOut.txt testaddCatOut.correct
echo 

echo "test doblsw"
./assembler testdoblsw.as testdoblsw.mc
./simulator testdoblsw.mc > testdoblswOut.txt
echo "diff for test doblsw:"
diff testdoblswOut.txt testdoblswOut.correct
echo 

echo "test lsl"
./assembler testlsl.as testlsl.mc
./simulator testlsl.mc > testlslOut.txt
echo "diff for test lsl:"
diff testlslOut.txt testlslOut.correct
echo 

echo "ALL TESTS COMPLETED."

echo

echo

echo


echo "this one should be diff:"
echo "Test from spec:"
./assembler testFromSpec.as testFromSpec.mc
./simulator testFromSpec.mc > testFromSpecOut.txt
echo "diff for Test from spec:"
diff testFromSpecOut.txt testFromSpecOut.correct
echo 

