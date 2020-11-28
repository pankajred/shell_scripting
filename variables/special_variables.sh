#!/bin/bash

#To get the Current Shell PID.
echo $$

#The filename of the current script.
echo $0

#The number of arguments supplied to a script.
echo $#

#The exit status of the last command executed.
echo $?

#The process number of the last background command.
echo $!
echo "--------------------------------------"

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"
