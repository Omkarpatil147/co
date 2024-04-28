#!/bin/bash
echo "options"
echo "a = install docker"
echo "b = start docker service "
echo "c = build image"
echo "d = login into docker hub"
echo "e = add tag to image"
echo "f = push image into docker hub"
echo "g = delete available images from local machine"
echo "h = pull and run your own image from docker hub"
echo "i = list of images"
echo "ps = see containers list"
read choice
case $choice in
	a)sudo dnf install docker -y ;;
	b)sudo systemctl start docker;;
	c)sudo docker build -t omkar:01 .;;
	d)sudo docker login;;
	e)sudo docker tag omkar:01 omii147/lab:001;;
	f)sudo docker push omii147/lab:001 ;;
	g)sudo docker rmi -f omii147/lab:001 omkar:01;;
	h)sudo docker run omii147/lab:001;;
	i)sudo docker images;;
	ps)sudo docker ps -a;;
	*)echo "invalid input"
esac
 
