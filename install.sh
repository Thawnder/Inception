#!/bin/bash

if [ -d "~/inception_data" ]; then \
	echo "/inception_data directory already exists"; else \
	mkdir ~/inception_data; \
fi

if [ -d "~/inception_data/wordpress" ]; then \
	echo "/inception_data/wordpress already exists"; else \
	mkdir ~/inception_data/wordpress; \
fi

if [ -d "~/inception_data/mariadb" ]; then \
	echo "/inception_data/mariadb already exists"; else \
	mkdir ~/inception_data/mariadb; \
fi

# sudo apt-get update
# sudo apt-get upgrade -y
# sudo apt-get install make curl lsb-release ca-certificates apt-transport-https software-properties-common hostsed -y
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt-get update
# sudo apt-get install docker-ce -y
# sudo apt-get update
# sudo apt-get install docker-compose docker-compose-plugin -y
# sudo apt-get update