#!/bin/bash
# a=10
# echo -e "Value of a is $a \n"
# a=10
# echo -e "Value of a is $a \\"
# a=10
# echo -e "Value of a is $a \b  abc"
# a=10
# echo -e "Value of a is $a \c"
# a=10
# echo -e "Value of a is $a \t abc "
# a=10
# echo -e "Value of a is $a \v abc "
# a=10
# echo -e "Value of a is $a \r abc "


#both mehtod are same.
ram_total=$(free -h | grep  Mem  | cut -d ":" -f 2 | cut -d " " -f -20)
echo $ram_total

ram=`free -h | grep  Mem  | cut -d ":" -f 2 | cut -d " " -f -20`
echo $ram
echo "-------------------------"
echo ${var:-"Variable is not set"}
echo "1 - Value of var is ${var}"
echo "-------------------------"
echo ${var:="Variable is not set"}
echo "2 - Value of var is ${var}"
echo "-------------------------"
unset var
echo ${var:+"This is default value"}
echo "3 - Value of var is $var"
var="Prefixvvv"
echo "-------------------------"
echo ${var:+"This is default value"}
echo "4 - Value of var is $var"
echo "-------------------------"
echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"
