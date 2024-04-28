#!/bin/bash
echo "options"
echo "a = install docker"
echo "b = start docker service "
echo "c = create hello-world docker conatiner"
echo "d = create centos docker container "
echo "e = create nginx docker container"
echo "f = stop container operation"
echo "g = start container operation"
echo "h = pause container operation"
echo "i = unpause container operation"
echo "j = kill container operation"
echo "k = remove container operation"
echo "ps = see running conatiners"
read choice
case $choice in
	a)sudo dnf install docker -y ;;
	b)sudo systemctl start docker;;
	c)sudo docker run --name hello hello-world;;
	d)sudo docker run --name centos -d centos;;
	e)sudo docker run --name nginx -p 1214:8080 -d nginx;;
	f)sudo docker stop nginx ;;
	g)sudo docker start nginx;;
	h)sudo docker pause nginx;;
	i)sudo docker unpause nginx;;
	j)sudo docker kill nginx;;
	k)sudo docker rm nginx centos hello;;
	ps)sudo docker ps -a;;
	*)echo "invalid input"
esac
 
