#!/bin/bash
################################################################
## Script for running sonarqube in a container
##
## SXB   17JUN18   Created
##
##
################################################################
sudo docker run --restart always -e B_SYSTEM_NAME=${B_SYSTEM_NAME}-sonar -e JAVA_OPTS=-Duser.timezone=America/New_York -p 9010:9000 -p 9020:9092 --net bothamnet --ip 172.18.0.100 sonarqube:lts
