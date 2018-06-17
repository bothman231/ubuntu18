#docker run --net bothamnet --ip 172.18.0.110 -it -p 77:3306 -e MYSQL_ROOT_PASSWORD=7layer -e MYSQL_USER=ssg -e MYSQL_PASSWORD=7layer -e MYSQL_DATABASE=ssg mysql:5.7
#
docker run --net bothamnet --ip 172.18.0.110 -p 77:3306 -e MYSQL_ROOT_PASSWORD=7layer -e MYSQL_USER=ssg -e MYSQL_PASSWORD=7layer -e MYSQL_DATABASE=ssg -v /home/steve/apigateway/mysql:/var/lib/mysql mysql:5.7
#

