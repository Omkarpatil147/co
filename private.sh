#!/bin/bash
echo "options"
echo "a = install docker"
echo "b = start docker service "
echo "c = run dockers local private registry"
echo "d = pull centos image from dockerhub"
echo "e = tag centos image with with your dockers local private registry address"
echo "f = push the tagged image to your local private registry"
echo "g = delete  downloaded centos image from local machine"
echo "h = pull centos image from private registry"
echo "i = list of images"
echo "ps = list of  conatiners"
read choice
case $choice in
	a)sudo dnf install docker -y ;;
	b)sudo systemctl start docker;;
	c)sudo docker run -d -p 5000:5000 --name registry registry:2;;
	d)sudo docker pull centos;;
	e)sudo docker tag centos localhost:5000/centos;;
	f)sudo docker push localhost:5000/centos;;
	g)sudo docker rmi -f centos localhost:5000/centos;;
	h)sudo docker pull localhost:5000/centos;;
	i)sudo docker images;;
	ps)sudo docker ps -a;;
	*)echo "invalid input"
esac
 
