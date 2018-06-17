#!/bin/bash
sudo docker run -it -p 8091:8081 -v/home/steve/nexus:/sonatype-work sonatype/nexus:oss
