##Install in Amazon Ubuntu
#!/bin/bash
sudo apt update -y

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo mkdir -p /etc/apt/keyrings

sudo chmod a+r /etc/apt/keyrings/docker.gpg

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

#sudo rm -rf /var/lib/apt/lists/*
#sudo apt-get update

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

sudo apt update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#apt-cache policy docker-ce -y

#sudo apt install docker-ce -y
#sudo apt-get update
#sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# 
#sudo systemctl status docker

sudo chmod 777 /var/run/docker.sock
