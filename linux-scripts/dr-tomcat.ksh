#!/bin/bash
sudo docker run -it -p 8094:8080 --net=bothamnet --ip=172.18.0.104 -v/home/steve/tomcatdir/conf:/usr/local/tomcat/conf tomcat:8.0

# -v/home/steve/tomcat:/usr/local/tomcat/conf 

