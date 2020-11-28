#!/bin/bash
echo "for = "
a="abc"
b="efg"
if [ $a = $b ]
then
  echo "true"
else
  echo "false"
fi
echo "-----------------------"
echo "for != "
a="abc"
b="efg"
if [ $a != $b ]
then
  echo "true"
else
  echo "false"
fi
echo "-----------------------"
echo "for -z "
echo "Checks if the given string operand size is zero"
a="abc"
if [ -z $a ]
then
  echo "true"
else
  echo "false"
fi
echo "-----------------------"
echo "for -n "
echo "Checks if the given string operand size is non-zero"
a="abc"
if [ -n $a ]
then
  echo "true"
else
  echo "false"
fi
echo "-----------------------"
echo "for str "
echo "Checks if str is not the empty string; if it is empty, then it returns false."
a="abc"
if [ $a ]
then
  echo "true"
else
  echo "false"
fi
echo "-----------------------"
