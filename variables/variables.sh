#!/bin/bash

#Read & Write Variables

NAME="Pankaj"
VAR="karan"

echo $NAME
echo $VAR

#Read Only Variables

readonly var
var="pankaj"
echo $var

#Unset Variables
unset variable
variable="pankaj ali"
echo $variable
# cannot use the unset command to unset variables that are marked readonly.
