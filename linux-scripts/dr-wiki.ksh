#!/bin/bash
################################################################
## Script for running jira in a container
###
## SXB   23SEP18   Created
##
##
################################################################

# Create a docker network for use later

echo "basename=`basename ${0}`"
scriptname=`basename ${0}`
echo "dirname=`dirname $0`"
echo "pwd=`pwd`"
echo $BASH_SOURCE
directory=$(cd `dirname $0` && pwd)

echo "directory="${directory}
fullscriptname=${directory}/${scriptname}
echo "fullscriptname="${fullscriptname}

#sudo docker network create --subnet=172.18.0.0/16 bothamnet

clear
echo "starting wiki on 8090"
echo "this is the confluence wiki server"

sudo docker run --restart always -e fullscriptname=${fullscriptname} -e B_SYSTEM_NAME=${B_SYSTEM_NAME}-wiki -e JAVA_OPTS=-Duser.timezone=America/New_York -v /home/steve/wiki:/var/atlassian/application-data/confluence -p 8090:8090 -p 8091:8091 --name="confwiki" -d --net bothamnet --ip 172.18.0.110 atlassian/confluence-server 


#-v /home/steve/jira2:/var/atlassian/jira 
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
