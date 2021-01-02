#!/bin/bash
sudo docker run -it -p 8080:8080 -p 50000:50000 -p 4431:4431 -v/home/steve/jenkins-2019:/var/jenkins_home jenkins/jenkins:latest

