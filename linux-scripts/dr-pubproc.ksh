#!/bin/bash
################################################################
## Script for running pubproc in a container
###
## SXB   09OCT18   Created
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

# SPRING_DS_PASSWORD is set in the environment

sudo docker run -it -p 81:8096 --net bothamnet --ip 172.18.0.110 -e spring.datasource.url=jdbc:mysql://172.18.0.111/test -e spring.datasource.username=serviceacc -e spring.datasource.password=${SPRING_DS_PASSWORD} -e spring.datasource.driver-class-name=com.mysql.jdbc.Driver -v /home/steve/pubproc:/tmp/pubproc -e app.dir=/tmp/pubproc/ bothman231/pubproc:v8 
#sudo docker run -it bothman231/pubproc:v3 /bin/bash

