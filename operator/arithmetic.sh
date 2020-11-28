#!/bin/bash
val=`expr 2 + 2`
echo "Total value : "$val

a=10
b=20
echo  "Addition of a & b = "   `expr $a + $b`
echo  "Subtraction of a & b = "   `expr $a - $b`
echo  "Multiplication of a & b = "   `expr $a * $b`
echo  "Division of a & b = "   `expr $a / $b`
echo  "Modulus of a & b = "   `expr $a % $b`
echo "--------------------------------------------"
echo "Assignment operator"
c=10
d=$c
echo "assignment| c value" $c
echo "--------------------------------------------"
echo "Equality"
a=10
b=10
if [ $a == $b ]
then
  echo "equal"
else
  echo "not equal"
fi
