#! /bin/bash

blue='\033[1;34m'
bold='\033[1;37m'
NC='\033[0m'

echo -e "${blue} ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ ${NC}"
echo -e "${blue}▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌${NC}"
echo -e "${blue} ▀▀▀▀█░█▀▀▀▀  ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ${NC}"
echo -e "${blue}     ▐░▌          ▐░▌     ▐░▌          ${NC}"
echo -e "${blue}     ▐░▌          ▐░▌     ▐░▌ ▄▄▄▄▄▄▄▄ ${NC}"
echo -e "${blue}     ▐░▌          ▐░▌     ▐░▌▐░░░░░░░░▌${NC}"
echo -e "${blue}     ▐░▌          ▐░▌     ▐░▌ ▀▀▀▀▀▀█░▌${NC}"
echo -e "${blue}     ▐░▌          ▐░▌     ▐░▌       ▐░▌${NC}"
echo -e "${blue}     ▐░▌          ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌${NC}"
echo -e "${blue}     ▐░▌          ▐░▌     ▐░░░░░░░░░░░▌${NC}"
echo -e "${blue}      ▀            ▀       ▀▀▀▀▀▀▀▀▀▀▀ ${NC}"

echo -e "${bold}Enter file/folder to send (with location if needed):${NC}"
read file
echo -e "${bold}Enter Ip-Address:${NC}"
read ip
echo -e "${bold}Enter port:${NC}"
read port
echo -e "${bold}Enter Username:${NC}"
read username
echo -e "${bold}Enter reciever location:${NC}"
read location

sudo scp -P "$port" "$file" "$username"@"$ip":"$location"
