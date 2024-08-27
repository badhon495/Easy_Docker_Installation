# Removing existing Docker packages
sudo zypper remove docker
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

# Installing Docker
sudo zypper refresh
sudo zypper update -y
sudo zypper install -y docker

# Add Docker Group so that you can run Docker commands without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Start and enable Docker service and verify the installation
sudo systemctl start docker
sudo systemctl enable docker
docker run hello-world