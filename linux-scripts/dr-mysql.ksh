#!/bin/bash
################################################################
## Script for running mysql in a container
###
## SXB   10OCT18   Created
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

docker run --name mysql4 --net bothamnet --ip 172.18.0.111 -p 3306:3306 -v /home/steve/mysqldata:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=index123 -d mysql:8.0

