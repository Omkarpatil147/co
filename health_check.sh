#!/bin/bash
echo "options"
echo "a = install docker"
echo "b = start docker service "
echo "c = start postgres container"
echo "d = go inside container"
echo "now enetr into postgres container  and perform #pg_isready -U postgres command and exit from postgres container"
echo "e = create another container with health check "
echo "f = create another container for root  with health check "
echo "ps = see running conatiners"
read choice
case $choice in
	a)sudo dnf install docker -y ;;
	b)sudo systemctl start docker;;
	c)sudo docker container run --name pg -e POSTGRES_PASSWORD=Password -d postgres;;
	d)sudo docker container exec -it pg bash;;
	e)sudo docker container run --name pg2 -e POSTGRES_PASSWORD=Password --health-cmd="pg_isready -U postgres || exit 1" -d postgres;;
	f)sudo docker container run --name pg3 -e POSTGRES_PASSWORD=Password --health-cmd="pg_isready -U root || exit 1" -d postgres;;
	ps)sudo docker ps -a;;
	*)echo "invalid input"
esac
 
