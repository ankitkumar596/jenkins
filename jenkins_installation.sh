#!/bin/bash

sudo apt update &&  apt-get upgrade -y

# Installing maven
sudo apt install maven -y 

# Install java 
sudo apt install fontconfig openjdk-17-jre
java --version

# Adding key 
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
  
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
  
# installing jenkins
sudo apt-get update && apt-get install jenkins -y

# start jenkins server and enable
sudo systemctl start jenkins && sudo systemctl enable jenkins

