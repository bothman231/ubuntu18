#!/bin/bash
sudo docker run --restart always -e B_SYSTEM_NAME=${B_SYSTEM_NAME}-nexus -e JAVA_OPTS=-Duser.timezone=America/New_York -p 8092:8081 -v/home/steve/nexus3:/sonatype-work --net=bothamnet --ip=172.18.0.103 sonatype/nexus3
