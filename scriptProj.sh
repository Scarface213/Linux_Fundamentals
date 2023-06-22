#!/bin/bash

# Display my internal IP address
# Display my external IP address
# Display my default gateway IP address
# Display my Hard Disk status
# Display my top 5 Directories
# Display my CPU usage with 10secs refresh
echo 'Hello'

echo 'Your Kali Linux version is:'
lsb_release -a | grep Release

echo 'Your internal IP address is:'
ifconfig | grep broadcast | awk '{print $2}'

echo 'Your external IP address is:'
wget -qO - icanhazip.com

echo 'Your gateway IP address is:'
route | grep default | awk '{print $2}'

echo 'Your hard disk status:'
df -h / 

echo 'Your top 5 directories are:'
du -h | sort -rh | head -5

echo 'Your CPU usage is as such:'
top -d 10
