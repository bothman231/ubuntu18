#!/bin/bash
sudo docker run -it -p 8092:8081 -v/home/steve/nexus3:/sonatype-work --net=bothamnet --ip=172.18.0.103 sonatype/nexus3
