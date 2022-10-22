#!/bin/bash

    #Author : Tutu
    

## ---------- script that Install some packages in Linux -----------------

apk install finger -y
if [ $? -eq 0 ]

then 
echo "finger pacakge installed successfully!"
else
echo "Finger package did not install, double check and try again"
fi

apk install curl -y 
apk install zip -y 
apk install vim -y
apk install net-tools -y
apk install systat -y 

echo "Your installations are now completed"
sleep 4
echo "Have a lovely Day"

