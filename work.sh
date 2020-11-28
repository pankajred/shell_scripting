#!/bin/bash
#hello
ram_total=$(free -h | grep  Mem  | cut -d ":" -f 2 | cut -d " " -f -20)
core=$(nproc)
ip=$(env | grep SSH_CLIENT | cut -d "=" -f 2 | cut -d " " -f 1)
if [ $ip == 10.0.15.108 ]
then
  echo "Welcome $ip"
  echo "System Configuration :- CPU Core $core | RAM Total & Used  $ram_total"
fi


#hello working
# Define your function here
Hello () {
  ram_total=$(free -h | grep  Mem  | cut -d ":" -f 2 | cut -d " " -f -20)
  core=$(nproc)
  ip=$(env | grep SSH_CLIENT | cut -d "=" -f 2 | cut -d " " -f 1)
  if [ $ip == 10.0.15.108 ]
  then
    echo "Welcome $ip"
    echo "System Configuration :- CPU Core $core | RAM Total & Used  $ram_total"
  fi
}

# Invoke your function
Hello



#ssh_dns
if [[ $1 == ?(-)+([0-9]) ]]
then
  ssh root@dev051.cricbuzz.cbt 'grep $1  /etc/hosts | cut -d " " -f 2-6'
else
  ssh root@dev051.cricbuzz.cbt 'grep $1 /etc/hosts | cut -d " " -f 1'
fi

#sshdns
dns=$(echo $1 | cut -b 1)
if [[ $dns == ?(-)+([0-9]) ]]
then
  ssh -o IdentitiesOnly=yes pankaj-bhagwani@localhost grep kserver1 /etc/hosts | cut -d " " -f 2-6
else
  ssh -o IdentitiesOnly=yes pankaj-bhagwani@localhost grep kserver1 /etc/hosts | cut -d " " -f 1
fi

#sshdns working
sshdns () {
  dns=$(echo $1 | cut -b 1)
  if [[ $dns == ?(-)+([0-9]) ]]
  then
    ssh -o IdentitiesOnly=yes pankaj-bhagwani@localhost grep -w $1 /etc/hosts | cut -d " " -f 2-6
  elif [[ $dns == [A-Z] ]]
  then
    ssh -o IdentitiesOnly=yes pankaj-bhagwani@localhost grep -w $1 /etc/hosts | cut -d " " -f 1
  else
    echo "Entry Does not exist in DSN"
fi
}

sshdns



#sshr wokring
sshr () {
var_a=$(echo $1 | cut -b 1-3)


if [[ $var_a == "stg" ]]
then
ssh root@$1.cricbuzz.stg
elif [[ $var_a == "dev" ]]; then
   ssh root@$1.cricbuzz.cbt
else
   ssh root@$1.cricbuzz.com
fi
}
sshr
#ssh_prv working

ssh root@$1.prv.com -p 22
