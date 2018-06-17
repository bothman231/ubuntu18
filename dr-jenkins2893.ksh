#!/bin/bash
sudo docker run -it -p 8080:8080 -p 50000:50000 -p 4431:4431 -v/home/steve/jenkins:/var/jenkins_home --net=bothamnet --ip=172.18.0.101 jenkins/jenkins:2.89.3
