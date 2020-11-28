#!/bin/bash
echo "a=10 & b=20"
echo "-----------"
echo "equal to == "
a=10
b=20
if [ $a -eq $b ]
then
  echo "-eq working"
else
  echo "-eq else working"
fi
echo "------------------------------------------------"
echo "not equal !="
a=10
b=20
if [ $a -ne $b ]
then
  echo "-ne working"
fi
echo "------------------------------------------------"
echo "grater than >"
a=10
b=20
if [ $a -gt $b ]
then
  echo "working"
else
  echo "-gt else working"
fi
echo "------------------------------------------------"
ehco "less than <"
a=10
b=20
if [ $a -lt $b ]
then
  echo "-lt working"
fi
echo "------------------------------------------------"
echo "grater than equal to >="
a=10
b=20
if [ $a -ge $b ]
then
  echo "-ge working"
else
  echo "-ge else working"
fi
echo "------------------------------------------------"
echo "less than equal to <="
a=10
b=20
if [ $a -le $b ]
then
  echo "-le working"
fi
