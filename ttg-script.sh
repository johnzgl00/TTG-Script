#! /bin/bash


echo -e "Enter file/folder to send (with location if needed):"
read file
echo -e "Enter Ip-Address:"
read ip
echo -e "Enter port:"
read port
echo -e "Enter Username:"
read username
echo -e "Enter reciever location:"
read location

sudo scp -P "$port" "$file" "$username"@"$ip":"$location"
