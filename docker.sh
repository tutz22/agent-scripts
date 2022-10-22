#!/bin/bash

## Author: Tutu
##Date: oct 2022

echo "Starting Dockers installation this will take a few min..."
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce docker-ce-cli containerd.io

sudo systemctl status docker

sudo systemctl start docker
sudo systemctl enable docker

sudo systemctl status docker

echo "Well done, Docker successfully installed"
