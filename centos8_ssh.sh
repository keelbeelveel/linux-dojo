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

echo -e "You can now log into the Centos8 using \\033[38;5;166mssh $bld_uname@centos8\\033[0m\nThis script is self deleting. Goodbye.\n "

rm -- $0;
