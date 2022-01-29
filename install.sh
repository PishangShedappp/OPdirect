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
echo -e "${yellow}Installing curl${normal}"
sudo apt-get install curl 2> /dev/null &> /dev/null
#> GO-LANG
echo -e "${yellow}Installing go-lang${normal}"
wget "https://golang.org/dl/go1.17.3.linux-amd64.tar.gz" 2> /dev/null &> /dev/null
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.3.linux-amd64.tar.gz 2> /dev/null &> /dev/null
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export GOPATH=$HOME/go'	>> ~/.bashrc			
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc
echo 'export PATH=$PATH:$HOME/go/bin'
source ~/.bashrc
#> Move to bin
sudo cp opdirect /usr/bin
#> WayBackUrls
echo -e "${yellow}Installing waybackurls...${normal}"
go install github.com/tomnomnom/waybackurls@latest
echo -e " "
echo -e "${yellow}Thanks for downloading this tool. If you found open redirect vuln with OPdirect tag me in twitter(link at github OPdirect repo).${normal}"
