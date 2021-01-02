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
export JNLP_PROTOCOL_OPTS=-Dorg.jenkinsci.remoting.engine.JnlpProtocol3.disabled=false


sudo docker run -e fullscriptname=${fullscriptname} -e B_SYSTEM_NAME=${B_SYSTEM_NAME}-slave --net bothamnet --ip 172.18.0.120 jenkins/jnlp-slave:3.29-1 -url http://172.18.0.101:8080 -workDir=/home/jenkins/agent SECRET my-agent

#sudo docker run --restart always -e fullscriptname=${fullscriptname} -e B_SYSTEM_NAME=${B_SYSTEM_NAME}-slave --net bothamnet --ip 172.18.0.120 jenkins/jnlp-slave:3.29-1
