#!/bin/bash

yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
#sudo yum upgrade
sudo yum install jenkins java-11-openjdk-devel -y
sudo systemctl daemon-reload

sudo systemctl start jenkins
sudo systemctl status jenkins