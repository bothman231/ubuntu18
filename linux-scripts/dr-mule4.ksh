#!/bin/bash
################################################################
## Script for running mule 4 in a container
##
## SXB   02FEB19   Created
##
##
################################################################
#sudo docker run --restart always -v /home/steve/mule/apps:/opt/mule/apps -e B_SYSTEM_NAME=${B_SYSTEM_NAME}-mule4 -e JAVA_OPTS=-Duser.timezone=America/New_York -p 9088:8081 --net bothamnet --ip 172.18.0.107 vertigo/mule

sudo docker run --restart always -v /home/steve/mule/apps:/opt/mule/apps -v /home/steve/mule/logs:/opt/mule/logs -e B_SYSTEM_NAME=${B_SYSTEM_NAME}-mule4 -e JAVA_OPTS=-Duser.timezone=America/New_York -p 9088:8081 --net bothamnet --ip 172.18.0.107 vertigo/mule    


# No volume
#sudo docker run --restart always -e B_SYSTEM_NAME=${B_SYSTEM_NAME}-mule4 -e JAVA_OPTS=-Duser.timezone=America/New_York -p 9088:8081 --net bothamnet --ip 172.18.0.107 vertigo/mule

# connect to running instance

#sudo docker exec -it {id} /bin/bash 

