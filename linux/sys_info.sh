#!/bin/bash

mkdir ~/research/
echo "System Information." >> ~/research/sys_info.txt
date >> ~/research/sys_info.txt
echo -e " " >> ~/research/sys_info.txt
uname >> ~/research/sys_info.txt
echo -e " " >> ~/research/sys_info.txt
hostname -i | awk '{print $2}' >> ~/research/sys_info.txt
echo -e " " >> ~/research/sys_info.txt
hostname >> ~/research/sys_info.txt
echo " " >> ~/research/sys_info.txt

ls -lah | find /* -perm 777 >> ~/research/sys_info.txt
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head >> ~/research/sys_info.txt
