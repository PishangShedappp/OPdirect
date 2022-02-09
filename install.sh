#!/bin/bash

yellow="\e[1;33m"
normal="\e[0m"
bold="\e[1m"
red="\e[31m"

if (( "$EUID" != 0))
then
	echo -e "${red}${bold}Make sure you run this installation in root first${normal}"
	exit 0
else
	echo -e "${bold}Root detected, resuming installation${normal}"
fi

sleep 3s
clear
#> CURL
echo -e "${yellow}Installing curl...${normal}"
sudo apt-get install curl
#> Move to bin
sudo cp opdirect /usr/bin
#> WayBackUrls
echo -e "${yellow}Installing waybackurls...${normal}"
go install github.com/tomnomnom/waybackurls@latest
echo -e "${yellow}Installing qsreplace...${normal}"
go install github.com/tomnomnom/qsreplace@latest
echo -e "${yellow}Installing subfinder...${normal}"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
echo -e " "
echo -e "${yellow}Thanks for downloading this tool. If you found open redirect vuln with OPdirect tag me in twitter(link at github OPdirect repo).${normal}"
