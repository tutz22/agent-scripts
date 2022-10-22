#!/bin/bash

    #Author : Tutu
    #Date : Oct 2022

## ---------- script that Install some packages in Linux -----------------

apt install finger -y
if [ $? -eq 0 ]

then 
echo "finger pacakge installed successfully!"
else
echo "Finger package did not install, double check and try again"
fi

apt install curl -y 
apt install zip -y 
apt install vim -y
apt install net-tools -y
apt install systat -y 

echo "Packages successfully Installed"
sleep 4
echo "Have a lovely class"

