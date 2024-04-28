#!/bin/bash
echo "options"
echo "a = install docker on syetm"
echo "b = start docker service "
echo "c = pull jenkin image from docker hub"
echo "d = check which ports are exposed by container using inspect command #docker inspect image_id"
echo "e = run dockers jenkins image along with data port and control port"

read choice
case $choice in
	a)sudo dnf install docker -y ;;
	b)sudo systemctl start docker;;
	c)docker pull jenkins/jenkins;;
	d)sudo docker inspect jenkins/jenkins;;
	e)sudo docker run -p 1214:8080 -p 50000:50000 jenkins/jenkins;;
	*)echo "invalid input"
esac
 
