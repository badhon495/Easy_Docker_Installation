#!/usr/bin/bash

# Uninstall Docker-related packages
packages="docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc"
sudo apt remove -y $packages docker-engine docker docker-ce docker-ce-cli docker-compose-plugin
sudo apt purge -y docker-engine docker docker.io docker-ce docker-compose-plugin
sudo apt autoremove -y --purge
sudo rm -rf /var/lib/docker /etc/docker /var/lib/containerd /etc/apparmor.d/docker /var/run/docker.sock
sudo rm -rf /usr/local/bin/docker-compose*

# Remove Docker group
sudo groupdel docker

# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo $VERSION_CODENAME) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

# Install Docker Engine:
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Add your user to the Docker group:
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Start and enable the Docker service:
sudo systemctl start docker
sudo systemctl enable docker

# Verify the installation:
docker run hello-world
