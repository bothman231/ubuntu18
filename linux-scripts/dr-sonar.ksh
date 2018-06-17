#!/bin/bash
sudo docker run -it -p 9000:9000 -p 9092:9092 --net bothamnet --ip 172.18.0.100 sonarqube:latest
