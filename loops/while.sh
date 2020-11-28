#!/bin/bash
a=10
c=0
while [ $a -le $b ]
do
  echo $c
  ((a=a+1))
done



a=0
while [ "$a" -lt 10 ]    # this is loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  # this is loop2
   do
      echo -n "$b "
      b=`expr $b - 1`
   done
   echo
   a=`expr $a + 1`
done
