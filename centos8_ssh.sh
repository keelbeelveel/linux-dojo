#!/bin/bash
read -rp "Enter Centos8 Username: " bld_uname;
mkdir ~/.ssh 2> /dev/null;
if [ ! -f "~/.ssh/config" ]; then
    touch ~/.ssh./config;
fi
echo "Host centos8" >> ~/.ssh/config;
echo "User $bld_uname" >> ~/.ssh/config;
echo "HostName 68.36.137.232" >> ~/.ssh/config;

view ~/.ssh/config;

rm -- $0;
