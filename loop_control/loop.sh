#!/bin/bash

# a=10
#
# until [ $a -lt 10 ]
# do
#   echo $a
#   a=`expr $a - 1`
# done


a=0

while [ $a -lt 10 ]
do
   echo $a
   if [ $a -eq 5 ]
   then
      break
   fi
   a=`expr $a + 1`
done
