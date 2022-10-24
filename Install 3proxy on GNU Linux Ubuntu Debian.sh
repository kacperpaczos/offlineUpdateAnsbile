#!/bin/bash

### INSTALL 3proxy ON LINUX
if ! command -v git &> /dev/null
then
    echo "======== GIT ERROR ======="
    echo "git could not be found"
    read -n1 -p "Do you want install it now? [y,n]" dojq 
    case $dojq in  
      y|Y) sudo apt-get install -y git 
           echo "======== GIT INSTALLED =======";; 
      n|N) printf "\nProgram stopped\n"
           exit ;;
      *) printf "\nProgram stopped\n"
         exit ;;
    esac
fi

if ! command -v make &> /dev/null
then
    echo "======== MAKE ERROR ======="
    echo "make could not be found"
    read -n1 -p "Do you want install it now? [y,n]" dojq 
    case $dojq in  
      y|Y) sudo apt-get install -y make 
           echo "======== MAKE INSTALLED =======";; 
      n|N) printf "\nProgram stopped\n"
           exit ;;
      *) printf "\nProgram stopped\n"
         exit ;;
    esac
fi
echo "======== CLONING https://github.com/z3apa3a/3proxy ======="
git clone https://github.com/z3apa3a/3proxy
echo "======== BUILDING https://github.com/z3apa3a/3proxy ======="
cd 3proxy
ln -s Makefile.Linux Makefile
make
echo "======== INSTALL https://github.com/z3apa3a/3proxy IN SYSTEM ======="
sudo make install
echo "======== COPY ./3proxy.cfg TO /usr/local/3proxy/conf/3proxy.cfg ======="
 cd ..
sudo cp ./3proxy.cfg /usr/local/3proxy/conf/3proxy.cfg
sudo systemctl daemon-reload
sudo systemctl restart 3proxy.service

