#!/bin/bash
################################################################
## Script for running jenkins in a container
###
## SXB   17JUN18   Created
##
##
################################################################

# Create a docker network for use later

sudo docker network create --subnet=172.18.0.0/16 bothamnet

sudo docker run --restart always -e B_SYSTEM_NAME=${B_SYSTEM_NAME}-jenkins -e JAVA_OPTS=-Duser.timezone=America/New_York -p 8080:8080 -p 50000:50000 --net bothamnet --ip 172.18.0.101 -v /home/steve/jenkins:/var/jenkins_home jenkins/jenkins:lts
#
#
# --restart always            Ensures the container will restart
#                             even if the host is restarted
#
# -e B_SYSTEM_NAME            Pass this env var from host to container
#                             Host vars are defined in /etc/environment#
# -e JAVA_OPTS=-D ..          Sets the date/time correctly in the
#                             container
#
# -p 8080:8080                Map host post to container port
#
# --net bothamnet             Associate with this internal network
#
# --ip                        Assign a static ip
#
# -v /home/steve/jenkins:/var/...
#                             Persist to host at this dir
#
# jenkins/jenkins:lts         Latest version from docker hub
