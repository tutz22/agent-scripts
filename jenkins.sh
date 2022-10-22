#!/bin/bash

## Author: Tutu
##Date: oct 2022

echo "Starting Jenkins installation this will take a few min..."

yum install java-11-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins
firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --reload

echo "Jenkins installed sucessfully, please get IP and type it on your browser"
