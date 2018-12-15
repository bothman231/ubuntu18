#!/bin/bash
################################################################
## Script for running wordpress in a container
###
## SXB   25OCT18   Created
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

docker run --net bothamnet --ip 172.18.0.115 --name wp -p 80:80 --link mysql4:mysql -d wordpress

