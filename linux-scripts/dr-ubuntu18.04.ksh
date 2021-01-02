#!/bin/bash
################################################################
## Script for running Ubuntu 18.04 in a container
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

sudo docker run --restart always -e fullscriptname=${fullscriptname} -e B_SYSTEM_NAME=${B_SYSTEM_NAME}-ubuntu1804 --net bothamnet --ip 172.18.0.110 ubuntu:18.04
#
#
# --restart always            Ensures the container will restart
#                             even if the host is restarted
#
# -e B_SYSTEM_NAME            Pass this env var from host to container
#                             Host vars are defined in /etc/environment#
# --net bothamnet             Associate with this internal network
#
# --ip                        Assign a static ip
#
