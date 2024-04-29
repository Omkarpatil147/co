echo "options:"
echo "o= set up repository "
echo "m= add official gpg key"
echo "k= add ky to repository"
echo "a= install docker engine"
echo "r= check docker status"
read choice 

case $choice in
	o) sudo apt install \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common -y;;
	m)curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - ;;
	k)sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable";;
	a)sudo apt install docker-ce docker-ce-cli containerd.io -y;;
r)systemctl status docker;;
	


	*) echo " invalidinput";;
esac




