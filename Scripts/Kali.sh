# Uninstall Docker-related packages
sudo apt remove -y docker.io docker-compose
sudo apt autoremove -y --purge
sudo apt-get autoclean -y

# Remove Docker group
sudo groupdel docker

# Add Docker repository and GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg

# Install Docker Engine
sudo apt install -y docker.io

# Add Docker Group so that you can run Docker commands without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Start and enable Docker service and verify the installation
sudo systemctl start docker
sudo systemctl enable docker
docker run hello-world
