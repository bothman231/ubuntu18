#!/bin/bash
################################################################
## Script for running jenkins in a container
###
## SXB   17JUN18   Created
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

export TA_DB_URL="jdbc:sqlserver://192.168.1.222\\SQLEXPRESS:1433;DatabaseName=Accreditation"
#export TA_DB_URL="jdbc:sqlserver://192.168.1.230\\SQLEXPRESS:1433;DatabaseName=Accreditation"
export TA_DB_USER=sa
# TA_DB_PASSWORD is set in the environment
export TA_DB_DRIVER=com.microsoft.sqlserver.jdbc.SQLServerDriver

#sudo docker network create --subnet=172.18.0.0/16 bothamnet

sudo docker run --restart always -e TA_DB_URL=${TA_DB_URL} -e TA_DB_USER=${TA_DB_USER} -e TA_DB_PASSWORD=${TA_DB_PASSWORD} -e TA_DB_DRIVER=${TA_DB_DRIVER} -e fullscriptname=${fullscriptname} -e B_SYSTEM_NAME=${B_SYSTEM_NAME}-jenkins2019 -e JAVA_OPTS=-Duser.timezone=America/New_York -p 8080:8080 -p 50000:50000 --net bothamnet --ip 172.18.0.101 -v /home/steve/jenkins-2019:/var/jenkins_home jenkins/jenkins:latest
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
